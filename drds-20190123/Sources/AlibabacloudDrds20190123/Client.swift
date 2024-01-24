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
            "ap-northeast-1": "drds.ap-southeast-1.aliyuncs.com",
            "ap-northeast-2-pop": "drds.ap-southeast-1.aliyuncs.com",
            "ap-south-1": "drds.ap-southeast-1.aliyuncs.com",
            "ap-southeast-2": "drds.ap-southeast-1.aliyuncs.com",
            "ap-southeast-3": "drds.ap-southeast-1.aliyuncs.com",
            "ap-southeast-5": "drds.ap-southeast-1.aliyuncs.com",
            "cn-beijing-finance-1": "drds.aliyuncs.com",
            "cn-beijing-finance-pop": "drds.aliyuncs.com",
            "cn-beijing-gov-1": "drds.aliyuncs.com",
            "cn-beijing-nu16-b01": "drds.aliyuncs.com",
            "cn-chengdu": "drds.aliyuncs.com",
            "cn-edge-1": "drds.aliyuncs.com",
            "cn-fujian": "drds.aliyuncs.com",
            "cn-haidian-cm12-c01": "drds.aliyuncs.com",
            "cn-hangzhou-bj-b01": "drds.aliyuncs.com",
            "cn-hangzhou-finance": "drds.aliyuncs.com",
            "cn-hangzhou-internal-prod-1": "drds.aliyuncs.com",
            "cn-hangzhou-internal-test-1": "drds.aliyuncs.com",
            "cn-hangzhou-internal-test-2": "drds.aliyuncs.com",
            "cn-hangzhou-internal-test-3": "drds.aliyuncs.com",
            "cn-hangzhou-test-306": "drds.aliyuncs.com",
            "cn-hongkong-finance-pop": "drds.aliyuncs.com",
            "cn-qingdao-nebula": "drds.aliyuncs.com",
            "cn-shanghai-et15-b01": "drds.aliyuncs.com",
            "cn-shanghai-et2-b01": "drds.aliyuncs.com",
            "cn-shanghai-inner": "drds.aliyuncs.com",
            "cn-shanghai-internal-test-1": "drds.aliyuncs.com",
            "cn-shenzhen-inner": "drds.aliyuncs.com",
            "cn-shenzhen-st4-d01": "drds.aliyuncs.com",
            "cn-shenzhen-su18-b01": "drds.aliyuncs.com",
            "cn-wuhan": "drds.aliyuncs.com",
            "cn-yushanfang": "drds.aliyuncs.com",
            "cn-zhangbei-na61-b01": "drds.aliyuncs.com",
            "cn-zhangjiakou-na62-a01": "drds.aliyuncs.com",
            "cn-zhengzhou-nebula-1": "drds.aliyuncs.com",
            "eu-central-1": "drds.ap-southeast-1.aliyuncs.com",
            "eu-west-1": "drds.ap-southeast-1.aliyuncs.com",
            "eu-west-1-oxs": "drds.ap-southeast-1.aliyuncs.com",
            "me-east-1": "drds.ap-southeast-1.aliyuncs.com",
            "rus-west-1-pop": "drds.ap-southeast-1.aliyuncs.com",
            "us-west-1": "drds.ap-southeast-1.aliyuncs.com"
        ]
        try checkConfig(config as! AlibabacloudOpenApi.Config)
        self._endpoint = try getEndpoint("drds", self._regionId ?? "", self._endpointRule ?? "", self._network ?? "", self._suffix ?? "", self._endpointMap ?? [:], self._endpoint ?? "")
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
    public func changeAccountPasswordWithOptions(_ request: ChangeAccountPasswordRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ChangeAccountPasswordResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.accountName)) {
            query["AccountName"] = request.accountName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.drdsInstanceId)) {
            query["DrdsInstanceId"] = request.drdsInstanceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.password)) {
            query["Password"] = request.password ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ChangeAccountPassword",
            "version": "2019-01-23",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ChangeAccountPasswordResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func changeAccountPassword(_ request: ChangeAccountPasswordRequest) async throws -> ChangeAccountPasswordResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await changeAccountPasswordWithOptions(request as! ChangeAccountPasswordRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func changeInstanceAzoneWithOptions(_ request: ChangeInstanceAzoneRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ChangeInstanceAzoneResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.changeVSwitch)) {
            query["ChangeVSwitch"] = request.changeVSwitch!;
        }
        if (!TeaUtils.Client.isUnset(request.drdsInstanceId)) {
            query["DrdsInstanceId"] = request.drdsInstanceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.drdsRegionId)) {
            query["DrdsRegionId"] = request.drdsRegionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.newVSwitch)) {
            query["NewVSwitch"] = request.newVSwitch ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.originAzoneId)) {
            query["OriginAzoneId"] = request.originAzoneId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.targetAzoneId)) {
            query["TargetAzoneId"] = request.targetAzoneId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ChangeInstanceAzone",
            "version": "2019-01-23",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ChangeInstanceAzoneResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func changeInstanceAzone(_ request: ChangeInstanceAzoneRequest) async throws -> ChangeInstanceAzoneResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await changeInstanceAzoneWithOptions(request as! ChangeInstanceAzoneRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func checkDrdsDbNameWithOptions(_ request: CheckDrdsDbNameRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> CheckDrdsDbNameResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.dbName)) {
            query["DbName"] = request.dbName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.drdsInstanceId)) {
            query["DrdsInstanceId"] = request.drdsInstanceId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CheckDrdsDbName",
            "version": "2019-01-23",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CheckDrdsDbNameResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func checkDrdsDbName(_ request: CheckDrdsDbNameRequest) async throws -> CheckDrdsDbNameResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await checkDrdsDbNameWithOptions(request as! CheckDrdsDbNameRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func checkExpandStatusWithOptions(_ request: CheckExpandStatusRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> CheckExpandStatusResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.dbName)) {
            query["DbName"] = request.dbName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.drdsInstanceId)) {
            query["DrdsInstanceId"] = request.drdsInstanceId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CheckExpandStatus",
            "version": "2019-01-23",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CheckExpandStatusResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func checkExpandStatus(_ request: CheckExpandStatusRequest) async throws -> CheckExpandStatusResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await checkExpandStatusWithOptions(request as! CheckExpandStatusRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func checkSqlAuditEnableStatusWithOptions(_ request: CheckSqlAuditEnableStatusRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> CheckSqlAuditEnableStatusResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.dbName)) {
            query["DbName"] = request.dbName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.drdsInstanceId)) {
            query["DrdsInstanceId"] = request.drdsInstanceId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CheckSqlAuditEnableStatus",
            "version": "2019-01-23",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CheckSqlAuditEnableStatusResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func checkSqlAuditEnableStatus(_ request: CheckSqlAuditEnableStatusRequest) async throws -> CheckSqlAuditEnableStatusResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await checkSqlAuditEnableStatusWithOptions(request as! CheckSqlAuditEnableStatusRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createDrdsDBWithOptions(_ request: CreateDrdsDBRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> CreateDrdsDBResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.accountName)) {
            query["AccountName"] = request.accountName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.dbInstType)) {
            query["DbInstType"] = request.dbInstType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.dbInstanceIsCreating)) {
            query["DbInstanceIsCreating"] = request.dbInstanceIsCreating!;
        }
        if (!TeaUtils.Client.isUnset(request.dbName)) {
            query["DbName"] = request.dbName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.drdsInstanceId)) {
            query["DrdsInstanceId"] = request.drdsInstanceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.encode)) {
            query["Encode"] = request.encode ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.instDbName)) {
            query["InstDbName"] = request.instDbName ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.password)) {
            query["Password"] = request.password ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.rdsInstance)) {
            query["RdsInstance"] = request.rdsInstance ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.rdsSuperAccount)) {
            query["RdsSuperAccount"] = request.rdsSuperAccount ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.type)) {
            query["Type"] = request.type ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CreateDrdsDB",
            "version": "2019-01-23",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CreateDrdsDBResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createDrdsDB(_ request: CreateDrdsDBRequest) async throws -> CreateDrdsDBResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await createDrdsDBWithOptions(request as! CreateDrdsDBRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createDrdsInstanceWithOptions(_ request: CreateDrdsInstanceRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> CreateDrdsInstanceResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.clientToken)) {
            query["ClientToken"] = request.clientToken ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.description_)) {
            query["Description"] = request.description_ ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.duration)) {
            query["Duration"] = request.duration!;
        }
        if (!TeaUtils.Client.isUnset(request.instanceSeries)) {
            query["InstanceSeries"] = request.instanceSeries ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.isAutoRenew)) {
            query["IsAutoRenew"] = request.isAutoRenew!;
        }
        if (!TeaUtils.Client.isUnset(request.masterInstId)) {
            query["MasterInstId"] = request.masterInstId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.mySQLVersion)) {
            query["MySQLVersion"] = request.mySQLVersion!;
        }
        if (!TeaUtils.Client.isUnset(request.payType)) {
            query["PayType"] = request.payType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.pricingCycle)) {
            query["PricingCycle"] = request.pricingCycle ?? "";
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
        if (!TeaUtils.Client.isUnset(request.specification)) {
            query["Specification"] = request.specification ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.type)) {
            query["Type"] = request.type ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.vpcId)) {
            query["VpcId"] = request.vpcId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.vswitchId)) {
            query["VswitchId"] = request.vswitchId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.zoneId)) {
            query["ZoneId"] = request.zoneId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.isHa)) {
            query["isHa"] = request.isHa!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CreateDrdsInstance",
            "version": "2019-01-23",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CreateDrdsInstanceResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createDrdsInstance(_ request: CreateDrdsInstanceRequest) async throws -> CreateDrdsInstanceResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await createDrdsInstanceWithOptions(request as! CreateDrdsInstanceRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createInstanceAccountWithOptions(_ request: CreateInstanceAccountRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> CreateInstanceAccountResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.accountName)) {
            query["AccountName"] = request.accountName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.dbPrivilege)) {
            query["DbPrivilege"] = request.dbPrivilege ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.drdsInstanceId)) {
            query["DrdsInstanceId"] = request.drdsInstanceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.password)) {
            query["Password"] = request.password ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CreateInstanceAccount",
            "version": "2019-01-23",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CreateInstanceAccountResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createInstanceAccount(_ request: CreateInstanceAccountRequest) async throws -> CreateInstanceAccountResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await createInstanceAccountWithOptions(request as! CreateInstanceAccountRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createInstanceInternetAddressWithOptions(_ request: CreateInstanceInternetAddressRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> CreateInstanceInternetAddressResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.drdsInstanceId)) {
            query["DrdsInstanceId"] = request.drdsInstanceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CreateInstanceInternetAddress",
            "version": "2019-01-23",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CreateInstanceInternetAddressResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createInstanceInternetAddress(_ request: CreateInstanceInternetAddressRequest) async throws -> CreateInstanceInternetAddressResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await createInstanceInternetAddressWithOptions(request as! CreateInstanceInternetAddressRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createOrderForRdsWithOptions(_ request: CreateOrderForRdsRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> CreateOrderForRdsResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.params)) {
            query["Params"] = request.params ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CreateOrderForRds",
            "version": "2019-01-23",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CreateOrderForRdsResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createOrderForRds(_ request: CreateOrderForRdsRequest) async throws -> CreateOrderForRdsResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await createOrderForRdsWithOptions(request as! CreateOrderForRdsRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createShardTaskWithOptions(_ request: CreateShardTaskRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> CreateShardTaskResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.dbName)) {
            query["DbName"] = request.dbName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.drdsInstanceId)) {
            query["DrdsInstanceId"] = request.drdsInstanceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.sourceTableName)) {
            query["SourceTableName"] = request.sourceTableName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.targetTableName)) {
            query["TargetTableName"] = request.targetTableName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.taskType)) {
            query["TaskType"] = request.taskType ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CreateShardTask",
            "version": "2019-01-23",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CreateShardTaskResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createShardTask(_ request: CreateShardTaskRequest) async throws -> CreateShardTaskResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await createShardTaskWithOptions(request as! CreateShardTaskRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeBackMenuWithOptions(_ request: DescribeBackMenuRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribeBackMenuResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.drdsInstanceId)) {
            query["DrdsInstanceId"] = request.drdsInstanceId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DescribeBackMenu",
            "version": "2019-01-23",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribeBackMenuResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeBackMenu(_ request: DescribeBackMenuRequest) async throws -> DescribeBackMenuResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await describeBackMenuWithOptions(request as! DescribeBackMenuRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeBackupDbsWithOptions(_ request: DescribeBackupDbsRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribeBackupDbsResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.backupId)) {
            query["BackupId"] = request.backupId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.drdsInstanceId)) {
            query["DrdsInstanceId"] = request.drdsInstanceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.preferredRestoreTime)) {
            query["PreferredRestoreTime"] = request.preferredRestoreTime ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DescribeBackupDbs",
            "version": "2019-01-23",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribeBackupDbsResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeBackupDbs(_ request: DescribeBackupDbsRequest) async throws -> DescribeBackupDbsResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await describeBackupDbsWithOptions(request as! DescribeBackupDbsRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeBackupLocalWithOptions(_ request: DescribeBackupLocalRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribeBackupLocalResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.drdsInstanceId)) {
            query["DrdsInstanceId"] = request.drdsInstanceId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DescribeBackupLocal",
            "version": "2019-01-23",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribeBackupLocalResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeBackupLocal(_ request: DescribeBackupLocalRequest) async throws -> DescribeBackupLocalResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await describeBackupLocalWithOptions(request as! DescribeBackupLocalRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeBackupPolicyWithOptions(_ request: DescribeBackupPolicyRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribeBackupPolicyResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.drdsInstanceId)) {
            query["DrdsInstanceId"] = request.drdsInstanceId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DescribeBackupPolicy",
            "version": "2019-01-23",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribeBackupPolicyResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeBackupPolicy(_ request: DescribeBackupPolicyRequest) async throws -> DescribeBackupPolicyResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await describeBackupPolicyWithOptions(request as! DescribeBackupPolicyRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeBackupSetsWithOptions(_ request: DescribeBackupSetsRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribeBackupSetsResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.drdsInstanceId)) {
            query["DrdsInstanceId"] = request.drdsInstanceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.endTime)) {
            query["EndTime"] = request.endTime ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.startTime)) {
            query["StartTime"] = request.startTime ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DescribeBackupSets",
            "version": "2019-01-23",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribeBackupSetsResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeBackupSets(_ request: DescribeBackupSetsRequest) async throws -> DescribeBackupSetsResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await describeBackupSetsWithOptions(request as! DescribeBackupSetsRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeBackupTimesWithOptions(_ request: DescribeBackupTimesRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribeBackupTimesResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.drdsInstanceId)) {
            query["DrdsInstanceId"] = request.drdsInstanceId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DescribeBackupTimes",
            "version": "2019-01-23",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribeBackupTimesResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeBackupTimes(_ request: DescribeBackupTimesRequest) async throws -> DescribeBackupTimesResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await describeBackupTimesWithOptions(request as! DescribeBackupTimesRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeBroadcastTablesWithOptions(_ request: DescribeBroadcastTablesRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribeBroadcastTablesResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.currentPage)) {
            query["CurrentPage"] = request.currentPage!;
        }
        if (!TeaUtils.Client.isUnset(request.dbName)) {
            query["DbName"] = request.dbName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.drdsInstanceId)) {
            query["DrdsInstanceId"] = request.drdsInstanceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.pageSize)) {
            query["PageSize"] = request.pageSize!;
        }
        if (!TeaUtils.Client.isUnset(request.query)) {
            query["Query"] = request.query ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DescribeBroadcastTables",
            "version": "2019-01-23",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribeBroadcastTablesResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeBroadcastTables(_ request: DescribeBroadcastTablesRequest) async throws -> DescribeBroadcastTablesResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await describeBroadcastTablesWithOptions(request as! DescribeBroadcastTablesRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeDbInstanceDbsWithOptions(_ request: DescribeDbInstanceDbsRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribeDbInstanceDbsResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.accountName)) {
            query["AccountName"] = request.accountName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.dbInstType)) {
            query["DbInstType"] = request.dbInstType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.dbInstanceId)) {
            query["DbInstanceId"] = request.dbInstanceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.drdsInstanceId)) {
            query["DrdsInstanceId"] = request.drdsInstanceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.password)) {
            query["Password"] = request.password ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DescribeDbInstanceDbs",
            "version": "2019-01-23",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribeDbInstanceDbsResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeDbInstanceDbs(_ request: DescribeDbInstanceDbsRequest) async throws -> DescribeDbInstanceDbsResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await describeDbInstanceDbsWithOptions(request as! DescribeDbInstanceDbsRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeDbInstancesWithOptions(_ request: DescribeDbInstancesRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribeDbInstancesResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.dbInstType)) {
            query["DbInstType"] = request.dbInstType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.drdsInstanceId)) {
            query["DrdsInstanceId"] = request.drdsInstanceId ?? "";
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
        if (!TeaUtils.Client.isUnset(request.search)) {
            query["Search"] = request.search ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DescribeDbInstances",
            "version": "2019-01-23",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribeDbInstancesResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeDbInstances(_ request: DescribeDbInstancesRequest) async throws -> DescribeDbInstancesResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await describeDbInstancesWithOptions(request as! DescribeDbInstancesRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeDrdsDBWithOptions(_ request: DescribeDrdsDBRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribeDrdsDBResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.dbName)) {
            query["DbName"] = request.dbName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.drdsInstanceId)) {
            query["DrdsInstanceId"] = request.drdsInstanceId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DescribeDrdsDB",
            "version": "2019-01-23",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribeDrdsDBResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeDrdsDB(_ request: DescribeDrdsDBRequest) async throws -> DescribeDrdsDBResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await describeDrdsDBWithOptions(request as! DescribeDrdsDBRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeDrdsDBClusterWithOptions(_ request: DescribeDrdsDBClusterRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribeDrdsDBClusterResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.dbInstanceId)) {
            query["DbInstanceId"] = request.dbInstanceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.dbName)) {
            query["DbName"] = request.dbName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.drdsInstanceId)) {
            query["DrdsInstanceId"] = request.drdsInstanceId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DescribeDrdsDBCluster",
            "version": "2019-01-23",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribeDrdsDBClusterResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeDrdsDBCluster(_ request: DescribeDrdsDBClusterRequest) async throws -> DescribeDrdsDBClusterResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await describeDrdsDBClusterWithOptions(request as! DescribeDrdsDBClusterRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeDrdsDBIpWhiteListWithOptions(_ request: DescribeDrdsDBIpWhiteListRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribeDrdsDBIpWhiteListResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.dbName)) {
            query["DbName"] = request.dbName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.drdsInstanceId)) {
            query["DrdsInstanceId"] = request.drdsInstanceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.groupName)) {
            query["GroupName"] = request.groupName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DescribeDrdsDBIpWhiteList",
            "version": "2019-01-23",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribeDrdsDBIpWhiteListResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeDrdsDBIpWhiteList(_ request: DescribeDrdsDBIpWhiteListRequest) async throws -> DescribeDrdsDBIpWhiteListResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await describeDrdsDBIpWhiteListWithOptions(request as! DescribeDrdsDBIpWhiteListRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeDrdsDBsWithOptions(_ request: DescribeDrdsDBsRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribeDrdsDBsResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.drdsInstanceId)) {
            query["DrdsInstanceId"] = request.drdsInstanceId ?? "";
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
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DescribeDrdsDBs",
            "version": "2019-01-23",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribeDrdsDBsResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeDrdsDBs(_ request: DescribeDrdsDBsRequest) async throws -> DescribeDrdsDBsResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await describeDrdsDBsWithOptions(request as! DescribeDrdsDBsRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeDrdsDbInstanceWithOptions(_ request: DescribeDrdsDbInstanceRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribeDrdsDbInstanceResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.dbInstanceId)) {
            query["DbInstanceId"] = request.dbInstanceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.dbName)) {
            query["DbName"] = request.dbName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.drdsInstanceId)) {
            query["DrdsInstanceId"] = request.drdsInstanceId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DescribeDrdsDbInstance",
            "version": "2019-01-23",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribeDrdsDbInstanceResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeDrdsDbInstance(_ request: DescribeDrdsDbInstanceRequest) async throws -> DescribeDrdsDbInstanceResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await describeDrdsDbInstanceWithOptions(request as! DescribeDrdsDbInstanceRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeDrdsDbInstancesWithOptions(_ request: DescribeDrdsDbInstancesRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribeDrdsDbInstancesResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.dbName)) {
            query["DbName"] = request.dbName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.drdsInstanceId)) {
            query["DrdsInstanceId"] = request.drdsInstanceId ?? "";
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
            "action": "DescribeDrdsDbInstances",
            "version": "2019-01-23",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribeDrdsDbInstancesResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeDrdsDbInstances(_ request: DescribeDrdsDbInstancesRequest) async throws -> DescribeDrdsDbInstancesResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await describeDrdsDbInstancesWithOptions(request as! DescribeDrdsDbInstancesRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeDrdsDbRdsNameListWithOptions(_ request: DescribeDrdsDbRdsNameListRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribeDrdsDbRdsNameListResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.dbName)) {
            query["DbName"] = request.dbName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.drdsInstanceId)) {
            query["DrdsInstanceId"] = request.drdsInstanceId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DescribeDrdsDbRdsNameList",
            "version": "2019-01-23",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribeDrdsDbRdsNameListResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeDrdsDbRdsNameList(_ request: DescribeDrdsDbRdsNameListRequest) async throws -> DescribeDrdsDbRdsNameListResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await describeDrdsDbRdsNameListWithOptions(request as! DescribeDrdsDbRdsNameListRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeDrdsInstanceWithOptions(_ request: DescribeDrdsInstanceRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribeDrdsInstanceResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.drdsInstanceId)) {
            query["DrdsInstanceId"] = request.drdsInstanceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DescribeDrdsInstance",
            "version": "2019-01-23",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribeDrdsInstanceResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeDrdsInstance(_ request: DescribeDrdsInstanceRequest) async throws -> DescribeDrdsInstanceResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await describeDrdsInstanceWithOptions(request as! DescribeDrdsInstanceRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeDrdsInstanceDbMonitorWithOptions(_ request: DescribeDrdsInstanceDbMonitorRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribeDrdsInstanceDbMonitorResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.dbName)) {
            query["DbName"] = request.dbName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.drdsInstanceId)) {
            query["DrdsInstanceId"] = request.drdsInstanceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.endTime)) {
            query["EndTime"] = request.endTime!;
        }
        if (!TeaUtils.Client.isUnset(request.key)) {
            query["Key"] = request.key ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.startTime)) {
            query["StartTime"] = request.startTime!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DescribeDrdsInstanceDbMonitor",
            "version": "2019-01-23",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribeDrdsInstanceDbMonitorResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeDrdsInstanceDbMonitor(_ request: DescribeDrdsInstanceDbMonitorRequest) async throws -> DescribeDrdsInstanceDbMonitorResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await describeDrdsInstanceDbMonitorWithOptions(request as! DescribeDrdsInstanceDbMonitorRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeDrdsInstanceLevelTasksWithOptions(_ request: DescribeDrdsInstanceLevelTasksRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribeDrdsInstanceLevelTasksResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.drdsInstanceId)) {
            query["DrdsInstanceId"] = request.drdsInstanceId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DescribeDrdsInstanceLevelTasks",
            "version": "2019-01-23",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribeDrdsInstanceLevelTasksResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeDrdsInstanceLevelTasks(_ request: DescribeDrdsInstanceLevelTasksRequest) async throws -> DescribeDrdsInstanceLevelTasksResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await describeDrdsInstanceLevelTasksWithOptions(request as! DescribeDrdsInstanceLevelTasksRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeDrdsInstanceMonitorWithOptions(_ request: DescribeDrdsInstanceMonitorRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribeDrdsInstanceMonitorResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.drdsInstanceId)) {
            query["DrdsInstanceId"] = request.drdsInstanceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.endTime)) {
            query["EndTime"] = request.endTime!;
        }
        if (!TeaUtils.Client.isUnset(request.key)) {
            query["Key"] = request.key ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.periodMultiple)) {
            query["PeriodMultiple"] = request.periodMultiple!;
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.startTime)) {
            query["StartTime"] = request.startTime!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DescribeDrdsInstanceMonitor",
            "version": "2019-01-23",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribeDrdsInstanceMonitorResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeDrdsInstanceMonitor(_ request: DescribeDrdsInstanceMonitorRequest) async throws -> DescribeDrdsInstanceMonitorResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await describeDrdsInstanceMonitorWithOptions(request as! DescribeDrdsInstanceMonitorRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeDrdsInstanceVersionWithOptions(_ request: DescribeDrdsInstanceVersionRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribeDrdsInstanceVersionResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.drdsInstanceId)) {
            query["DrdsInstanceId"] = request.drdsInstanceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DescribeDrdsInstanceVersion",
            "version": "2019-01-23",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribeDrdsInstanceVersionResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeDrdsInstanceVersion(_ request: DescribeDrdsInstanceVersionRequest) async throws -> DescribeDrdsInstanceVersionResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await describeDrdsInstanceVersionWithOptions(request as! DescribeDrdsInstanceVersionRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeDrdsInstancesWithOptions(_ request: DescribeDrdsInstancesRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribeDrdsInstancesResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.description_)) {
            query["Description"] = request.description_ ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.expired)) {
            query["Expired"] = request.expired!;
        }
        if (!TeaUtils.Client.isUnset(request.mix)) {
            query["Mix"] = request.mix!;
        }
        if (!TeaUtils.Client.isUnset(request.pageNumber)) {
            query["PageNumber"] = request.pageNumber!;
        }
        if (!TeaUtils.Client.isUnset(request.pageSize)) {
            query["PageSize"] = request.pageSize!;
        }
        if (!TeaUtils.Client.isUnset(request.productVersion)) {
            query["ProductVersion"] = request.productVersion ?? "";
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
        if (!TeaUtils.Client.isUnset(request.type)) {
            query["Type"] = request.type ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DescribeDrdsInstances",
            "version": "2019-01-23",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribeDrdsInstancesResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeDrdsInstances(_ request: DescribeDrdsInstancesRequest) async throws -> DescribeDrdsInstancesResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await describeDrdsInstancesWithOptions(request as! DescribeDrdsInstancesRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeDrdsParamsWithOptions(_ request: DescribeDrdsParamsRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribeDrdsParamsResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.dbName)) {
            query["DbName"] = request.dbName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.drdsInstanceId)) {
            query["DrdsInstanceId"] = request.drdsInstanceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.paramLevel)) {
            query["ParamLevel"] = request.paramLevel ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DescribeDrdsParams",
            "version": "2019-01-23",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribeDrdsParamsResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeDrdsParams(_ request: DescribeDrdsParamsRequest) async throws -> DescribeDrdsParamsResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await describeDrdsParamsWithOptions(request as! DescribeDrdsParamsRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeDrdsRdsInstancesWithOptions(_ request: DescribeDrdsRdsInstancesRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribeDrdsRdsInstancesResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.drdsInstanceId)) {
            query["DrdsInstanceId"] = request.drdsInstanceId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DescribeDrdsRdsInstances",
            "version": "2019-01-23",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribeDrdsRdsInstancesResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeDrdsRdsInstances(_ request: DescribeDrdsRdsInstancesRequest) async throws -> DescribeDrdsRdsInstancesResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await describeDrdsRdsInstancesWithOptions(request as! DescribeDrdsRdsInstancesRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeDrdsShardingDbsWithOptions(_ request: DescribeDrdsShardingDbsRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribeDrdsShardingDbsResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.dbName)) {
            query["DbName"] = request.dbName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.dbNamePattern)) {
            query["DbNamePattern"] = request.dbNamePattern ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.drdsInstanceId)) {
            query["DrdsInstanceId"] = request.drdsInstanceId ?? "";
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
            "action": "DescribeDrdsShardingDbs",
            "version": "2019-01-23",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribeDrdsShardingDbsResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeDrdsShardingDbs(_ request: DescribeDrdsShardingDbsRequest) async throws -> DescribeDrdsShardingDbsResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await describeDrdsShardingDbsWithOptions(request as! DescribeDrdsShardingDbsRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeDrdsSlowSqlsWithOptions(_ request: DescribeDrdsSlowSqlsRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribeDrdsSlowSqlsResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.dbName)) {
            query["DbName"] = request.dbName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.drdsInstanceId)) {
            query["DrdsInstanceId"] = request.drdsInstanceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.endTime)) {
            query["EndTime"] = request.endTime!;
        }
        if (!TeaUtils.Client.isUnset(request.exeTime)) {
            query["ExeTime"] = request.exeTime!;
        }
        if (!TeaUtils.Client.isUnset(request.pageNumber)) {
            query["PageNumber"] = request.pageNumber!;
        }
        if (!TeaUtils.Client.isUnset(request.pageSize)) {
            query["PageSize"] = request.pageSize!;
        }
        if (!TeaUtils.Client.isUnset(request.startTime)) {
            query["StartTime"] = request.startTime!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DescribeDrdsSlowSqls",
            "version": "2019-01-23",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribeDrdsSlowSqlsResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeDrdsSlowSqls(_ request: DescribeDrdsSlowSqlsRequest) async throws -> DescribeDrdsSlowSqlsResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await describeDrdsSlowSqlsWithOptions(request as! DescribeDrdsSlowSqlsRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeDrdsSqlAuditStatusWithOptions(_ request: DescribeDrdsSqlAuditStatusRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribeDrdsSqlAuditStatusResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.drdsInstanceId)) {
            query["DrdsInstanceId"] = request.drdsInstanceId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DescribeDrdsSqlAuditStatus",
            "version": "2019-01-23",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribeDrdsSqlAuditStatusResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeDrdsSqlAuditStatus(_ request: DescribeDrdsSqlAuditStatusRequest) async throws -> DescribeDrdsSqlAuditStatusResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await describeDrdsSqlAuditStatusWithOptions(request as! DescribeDrdsSqlAuditStatusRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeDrdsTasksWithOptions(_ request: DescribeDrdsTasksRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribeDrdsTasksResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.dbName)) {
            query["DbName"] = request.dbName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.drdsInstanceId)) {
            query["DrdsInstanceId"] = request.drdsInstanceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.taskType)) {
            query["TaskType"] = request.taskType ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DescribeDrdsTasks",
            "version": "2019-01-23",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribeDrdsTasksResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeDrdsTasks(_ request: DescribeDrdsTasksRequest) async throws -> DescribeDrdsTasksResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await describeDrdsTasksWithOptions(request as! DescribeDrdsTasksRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeExpandLogicTableInfoListWithOptions(_ request: DescribeExpandLogicTableInfoListRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribeExpandLogicTableInfoListResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.dbName)) {
            query["DbName"] = request.dbName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.drdsInstanceId)) {
            query["DrdsInstanceId"] = request.drdsInstanceId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DescribeExpandLogicTableInfoList",
            "version": "2019-01-23",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribeExpandLogicTableInfoListResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeExpandLogicTableInfoList(_ request: DescribeExpandLogicTableInfoListRequest) async throws -> DescribeExpandLogicTableInfoListResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await describeExpandLogicTableInfoListWithOptions(request as! DescribeExpandLogicTableInfoListRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeHotDbListWithOptions(_ request: DescribeHotDbListRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribeHotDbListResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.dbName)) {
            query["DbName"] = request.dbName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.drdsInstanceId)) {
            query["DrdsInstanceId"] = request.drdsInstanceId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DescribeHotDbList",
            "version": "2019-01-23",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribeHotDbListResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeHotDbList(_ request: DescribeHotDbListRequest) async throws -> DescribeHotDbListResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await describeHotDbListWithOptions(request as! DescribeHotDbListRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeInstDbLogInfoWithOptions(_ request: DescribeInstDbLogInfoRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribeInstDbLogInfoResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.dbName)) {
            query["DbName"] = request.dbName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.drdsInstanceId)) {
            query["DrdsInstanceId"] = request.drdsInstanceId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DescribeInstDbLogInfo",
            "version": "2019-01-23",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribeInstDbLogInfoResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeInstDbLogInfo(_ request: DescribeInstDbLogInfoRequest) async throws -> DescribeInstDbLogInfoResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await describeInstDbLogInfoWithOptions(request as! DescribeInstDbLogInfoRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeInstDbSlsInfoWithOptions(_ request: DescribeInstDbSlsInfoRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribeInstDbSlsInfoResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.dbName)) {
            query["DbName"] = request.dbName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.drdsInstanceId)) {
            query["DrdsInstanceId"] = request.drdsInstanceId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DescribeInstDbSlsInfo",
            "version": "2019-01-23",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribeInstDbSlsInfoResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeInstDbSlsInfo(_ request: DescribeInstDbSlsInfoRequest) async throws -> DescribeInstDbSlsInfoResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await describeInstDbSlsInfoWithOptions(request as! DescribeInstDbSlsInfoRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeInstanceAccountsWithOptions(_ request: DescribeInstanceAccountsRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribeInstanceAccountsResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.drdsInstanceId)) {
            query["DrdsInstanceId"] = request.drdsInstanceId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DescribeInstanceAccounts",
            "version": "2019-01-23",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribeInstanceAccountsResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeInstanceAccounts(_ request: DescribeInstanceAccountsRequest) async throws -> DescribeInstanceAccountsResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await describeInstanceAccountsWithOptions(request as! DescribeInstanceAccountsRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeInstanceSwitchAzoneWithOptions(_ request: DescribeInstanceSwitchAzoneRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribeInstanceSwitchAzoneResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.drdsInstanceId)) {
            query["DrdsInstanceId"] = request.drdsInstanceId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DescribeInstanceSwitchAzone",
            "version": "2019-01-23",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribeInstanceSwitchAzoneResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeInstanceSwitchAzone(_ request: DescribeInstanceSwitchAzoneRequest) async throws -> DescribeInstanceSwitchAzoneResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await describeInstanceSwitchAzoneWithOptions(request as! DescribeInstanceSwitchAzoneRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeInstanceSwitchNetworkWithOptions(_ request: DescribeInstanceSwitchNetworkRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribeInstanceSwitchNetworkResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.drdsInstanceId)) {
            query["DrdsInstanceId"] = request.drdsInstanceId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DescribeInstanceSwitchNetwork",
            "version": "2019-01-23",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribeInstanceSwitchNetworkResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeInstanceSwitchNetwork(_ request: DescribeInstanceSwitchNetworkRequest) async throws -> DescribeInstanceSwitchNetworkResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await describeInstanceSwitchNetworkWithOptions(request as! DescribeInstanceSwitchNetworkRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describePreCheckResultWithOptions(_ request: DescribePreCheckResultRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribePreCheckResultResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.drdsInstanceId)) {
            query["DrdsInstanceId"] = request.drdsInstanceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.taskId)) {
            query["TaskId"] = request.taskId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DescribePreCheckResult",
            "version": "2019-01-23",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribePreCheckResultResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describePreCheckResult(_ request: DescribePreCheckResultRequest) async throws -> DescribePreCheckResultResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await describePreCheckResultWithOptions(request as! DescribePreCheckResultRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeRDSPerformanceWithOptions(_ request: DescribeRDSPerformanceRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribeRDSPerformanceResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.dbInstType)) {
            query["DbInstType"] = request.dbInstType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.drdsInstanceId)) {
            query["DrdsInstanceId"] = request.drdsInstanceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.endTime)) {
            query["EndTime"] = request.endTime!;
        }
        if (!TeaUtils.Client.isUnset(request.keys)) {
            query["Keys"] = request.keys ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.rdsInstanceId)) {
            query["RdsInstanceId"] = request.rdsInstanceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.startTime)) {
            query["StartTime"] = request.startTime!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DescribeRDSPerformance",
            "version": "2019-01-23",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribeRDSPerformanceResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeRDSPerformance(_ request: DescribeRDSPerformanceRequest) async throws -> DescribeRDSPerformanceResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await describeRDSPerformanceWithOptions(request as! DescribeRDSPerformanceRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeRdsCommodityWithOptions(_ request: DescribeRdsCommodityRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribeRdsCommodityResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.commodityCode)) {
            query["CommodityCode"] = request.commodityCode ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.drdsInstanceId)) {
            query["DrdsInstanceId"] = request.drdsInstanceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.orderType)) {
            query["OrderType"] = request.orderType ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DescribeRdsCommodity",
            "version": "2019-01-23",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribeRdsCommodityResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeRdsCommodity(_ request: DescribeRdsCommodityRequest) async throws -> DescribeRdsCommodityResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await describeRdsCommodityWithOptions(request as! DescribeRdsCommodityRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeRdsPerformanceSummaryWithOptions(_ request: DescribeRdsPerformanceSummaryRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribeRdsPerformanceSummaryResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.drdsInstanceId)) {
            query["DrdsInstanceId"] = request.drdsInstanceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.rdsInstanceId)) {
            query["RdsInstanceId"] = request.rdsInstanceId ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DescribeRdsPerformanceSummary",
            "version": "2019-01-23",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribeRdsPerformanceSummaryResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeRdsPerformanceSummary(_ request: DescribeRdsPerformanceSummaryRequest) async throws -> DescribeRdsPerformanceSummaryResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await describeRdsPerformanceSummaryWithOptions(request as! DescribeRdsPerformanceSummaryRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeRdsSuperAccountInstancesWithOptions(_ request: DescribeRdsSuperAccountInstancesRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribeRdsSuperAccountInstancesResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.dbInstType)) {
            query["DbInstType"] = request.dbInstType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.drdsInstanceId)) {
            query["DrdsInstanceId"] = request.drdsInstanceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.rdsInstance)) {
            query["RdsInstance"] = request.rdsInstance ?? [];
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DescribeRdsSuperAccountInstances",
            "version": "2019-01-23",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribeRdsSuperAccountInstancesResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeRdsSuperAccountInstances(_ request: DescribeRdsSuperAccountInstancesRequest) async throws -> DescribeRdsSuperAccountInstancesResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await describeRdsSuperAccountInstancesWithOptions(request as! DescribeRdsSuperAccountInstancesRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeRecycleBinStatusWithOptions(_ request: DescribeRecycleBinStatusRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribeRecycleBinStatusResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.dbName)) {
            query["DbName"] = request.dbName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.drdsInstanceId)) {
            query["DrdsInstanceId"] = request.drdsInstanceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DescribeRecycleBinStatus",
            "version": "2019-01-23",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribeRecycleBinStatusResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeRecycleBinStatus(_ request: DescribeRecycleBinStatusRequest) async throws -> DescribeRecycleBinStatusResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await describeRecycleBinStatusWithOptions(request as! DescribeRecycleBinStatusRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeRecycleBinTablesWithOptions(_ request: DescribeRecycleBinTablesRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribeRecycleBinTablesResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.dbName)) {
            query["DbName"] = request.dbName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.drdsInstanceId)) {
            query["DrdsInstanceId"] = request.drdsInstanceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DescribeRecycleBinTables",
            "version": "2019-01-23",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribeRecycleBinTablesResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeRecycleBinTables(_ request: DescribeRecycleBinTablesRequest) async throws -> DescribeRecycleBinTablesResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await describeRecycleBinTablesWithOptions(request as! DescribeRecycleBinTablesRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeRestoreOrderWithOptions(_ request: DescribeRestoreOrderRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribeRestoreOrderResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.backupDbNames)) {
            query["BackupDbNames"] = request.backupDbNames ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.backupId)) {
            query["BackupId"] = request.backupId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.backupLevel)) {
            query["BackupLevel"] = request.backupLevel ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.backupMode)) {
            query["BackupMode"] = request.backupMode ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.drdsInstanceId)) {
            query["DrdsInstanceId"] = request.drdsInstanceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.preferredBackupTime)) {
            query["PreferredBackupTime"] = request.preferredBackupTime ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DescribeRestoreOrder",
            "version": "2019-01-23",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribeRestoreOrderResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeRestoreOrder(_ request: DescribeRestoreOrderRequest) async throws -> DescribeRestoreOrderResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await describeRestoreOrderWithOptions(request as! DescribeRestoreOrderRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeShardTaskInfoWithOptions(_ request: DescribeShardTaskInfoRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribeShardTaskInfoResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.dbName)) {
            query["DbName"] = request.dbName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.drdsInstanceId)) {
            query["DrdsInstanceId"] = request.drdsInstanceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.sourceTableName)) {
            query["SourceTableName"] = request.sourceTableName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.targetTableName)) {
            query["TargetTableName"] = request.targetTableName ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DescribeShardTaskInfo",
            "version": "2019-01-23",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribeShardTaskInfoResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeShardTaskInfo(_ request: DescribeShardTaskInfoRequest) async throws -> DescribeShardTaskInfoResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await describeShardTaskInfoWithOptions(request as! DescribeShardTaskInfoRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeSqlFlashbakTaskWithOptions(_ request: DescribeSqlFlashbakTaskRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribeSqlFlashbakTaskResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.drdsInstanceId)) {
            query["DrdsInstanceId"] = request.drdsInstanceId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DescribeSqlFlashbakTask",
            "version": "2019-01-23",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribeSqlFlashbakTaskResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeSqlFlashbakTask(_ request: DescribeSqlFlashbakTaskRequest) async throws -> DescribeSqlFlashbakTaskResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await describeSqlFlashbakTaskWithOptions(request as! DescribeSqlFlashbakTaskRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeTableWithOptions(_ request: DescribeTableRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribeTableResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.dbName)) {
            query["DbName"] = request.dbName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.drdsInstanceId)) {
            query["DrdsInstanceId"] = request.drdsInstanceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.tableName)) {
            query["TableName"] = request.tableName ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DescribeTable",
            "version": "2019-01-23",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribeTableResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeTable(_ request: DescribeTableRequest) async throws -> DescribeTableResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await describeTableWithOptions(request as! DescribeTableRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeTableListByTypeWithOptions(_ request: DescribeTableListByTypeRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribeTableListByTypeResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.currentPage)) {
            query["CurrentPage"] = request.currentPage!;
        }
        if (!TeaUtils.Client.isUnset(request.dbName)) {
            query["DbName"] = request.dbName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.drdsInstanceId)) {
            query["DrdsInstanceId"] = request.drdsInstanceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.pageSize)) {
            query["PageSize"] = request.pageSize!;
        }
        if (!TeaUtils.Client.isUnset(request.query)) {
            query["Query"] = request.query ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.tableType)) {
            query["TableType"] = request.tableType ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DescribeTableListByType",
            "version": "2019-01-23",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribeTableListByTypeResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeTableListByType(_ request: DescribeTableListByTypeRequest) async throws -> DescribeTableListByTypeResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await describeTableListByTypeWithOptions(request as! DescribeTableListByTypeRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeTablesWithOptions(_ request: DescribeTablesRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribeTablesResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.currentPage)) {
            query["CurrentPage"] = request.currentPage!;
        }
        if (!TeaUtils.Client.isUnset(request.dbName)) {
            query["DbName"] = request.dbName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.drdsInstanceId)) {
            query["DrdsInstanceId"] = request.drdsInstanceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.pageSize)) {
            query["PageSize"] = request.pageSize!;
        }
        if (!TeaUtils.Client.isUnset(request.query)) {
            query["Query"] = request.query ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DescribeTables",
            "version": "2019-01-23",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribeTablesResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeTables(_ request: DescribeTablesRequest) async throws -> DescribeTablesResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await describeTablesWithOptions(request as! DescribeTablesRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func disableSqlAuditWithOptions(_ request: DisableSqlAuditRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DisableSqlAuditResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.dbName)) {
            query["DbName"] = request.dbName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.drdsInstanceId)) {
            query["DrdsInstanceId"] = request.drdsInstanceId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DisableSqlAudit",
            "version": "2019-01-23",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DisableSqlAuditResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func disableSqlAudit(_ request: DisableSqlAuditRequest) async throws -> DisableSqlAuditResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await disableSqlAuditWithOptions(request as! DisableSqlAuditRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func enableInstanceIpv6AddressWithOptions(_ request: EnableInstanceIpv6AddressRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> EnableInstanceIpv6AddressResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.drdsInstanceId)) {
            query["DrdsInstanceId"] = request.drdsInstanceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "EnableInstanceIpv6Address",
            "version": "2019-01-23",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(EnableInstanceIpv6AddressResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func enableInstanceIpv6Address(_ request: EnableInstanceIpv6AddressRequest) async throws -> EnableInstanceIpv6AddressResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await enableInstanceIpv6AddressWithOptions(request as! EnableInstanceIpv6AddressRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func enableSqlAuditWithOptions(_ request: EnableSqlAuditRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> EnableSqlAuditResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.dbName)) {
            query["DbName"] = request.dbName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.drdsInstanceId)) {
            query["DrdsInstanceId"] = request.drdsInstanceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.isRecall)) {
            query["IsRecall"] = request.isRecall!;
        }
        if (!TeaUtils.Client.isUnset(request.recallEndTimestamp)) {
            query["RecallEndTimestamp"] = request.recallEndTimestamp ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.recallStartTimestamp)) {
            query["RecallStartTimestamp"] = request.recallStartTimestamp ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "EnableSqlAudit",
            "version": "2019-01-23",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(EnableSqlAuditResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func enableSqlAudit(_ request: EnableSqlAuditRequest) async throws -> EnableSqlAuditResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await enableSqlAuditWithOptions(request as! EnableSqlAuditRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func enableSqlFlashbackMatchSwitchWithOptions(_ request: EnableSqlFlashbackMatchSwitchRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> EnableSqlFlashbackMatchSwitchResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.dbName)) {
            query["DbName"] = request.dbName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.drdsInstanceId)) {
            query["DrdsInstanceId"] = request.drdsInstanceId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "EnableSqlFlashbackMatchSwitch",
            "version": "2019-01-23",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(EnableSqlFlashbackMatchSwitchResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func enableSqlFlashbackMatchSwitch(_ request: EnableSqlFlashbackMatchSwitchRequest) async throws -> EnableSqlFlashbackMatchSwitchResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await enableSqlFlashbackMatchSwitchWithOptions(request as! EnableSqlFlashbackMatchSwitchRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func flashbackRecycleBinTableWithOptions(_ request: FlashbackRecycleBinTableRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> FlashbackRecycleBinTableResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.dbName)) {
            query["DbName"] = request.dbName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.drdsInstanceId)) {
            query["DrdsInstanceId"] = request.drdsInstanceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.tableName)) {
            query["TableName"] = request.tableName ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "FlashbackRecycleBinTable",
            "version": "2019-01-23",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(FlashbackRecycleBinTableResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func flashbackRecycleBinTable(_ request: FlashbackRecycleBinTableRequest) async throws -> FlashbackRecycleBinTableResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await flashbackRecycleBinTableWithOptions(request as! FlashbackRecycleBinTableRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getDrdsDbRdsRelationInfoWithOptions(_ request: GetDrdsDbRdsRelationInfoRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> GetDrdsDbRdsRelationInfoResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.dbName)) {
            query["DbName"] = request.dbName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.drdsInstanceId)) {
            query["DrdsInstanceId"] = request.drdsInstanceId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetDrdsDbRdsRelationInfo",
            "version": "2019-01-23",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetDrdsDbRdsRelationInfoResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getDrdsDbRdsRelationInfo(_ request: GetDrdsDbRdsRelationInfoRequest) async throws -> GetDrdsDbRdsRelationInfoResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await getDrdsDbRdsRelationInfoWithOptions(request as! GetDrdsDbRdsRelationInfoRequest, runtime as! TeaUtils.RuntimeOptions)
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
            "version": "2019-01-23",
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
    public func managePrivateRdsWithOptions(_ request: ManagePrivateRdsRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ManagePrivateRdsResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.DBInstanceId)) {
            query["DBInstanceId"] = request.DBInstanceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.drdsInstanceId)) {
            query["DrdsInstanceId"] = request.drdsInstanceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.params)) {
            query["Params"] = request.params ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.rdsAction)) {
            query["RdsAction"] = request.rdsAction ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ManagePrivateRds",
            "version": "2019-01-23",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ManagePrivateRdsResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func managePrivateRds(_ request: ManagePrivateRdsRequest) async throws -> ManagePrivateRdsResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await managePrivateRdsWithOptions(request as! ManagePrivateRdsRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func modifyAccountDescriptionWithOptions(_ request: ModifyAccountDescriptionRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ModifyAccountDescriptionResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.accountName)) {
            query["AccountName"] = request.accountName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.description_)) {
            query["Description"] = request.description_ ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.drdsInstanceId)) {
            query["DrdsInstanceId"] = request.drdsInstanceId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ModifyAccountDescription",
            "version": "2019-01-23",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ModifyAccountDescriptionResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func modifyAccountDescription(_ request: ModifyAccountDescriptionRequest) async throws -> ModifyAccountDescriptionResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await modifyAccountDescriptionWithOptions(request as! ModifyAccountDescriptionRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func modifyAccountPrivilegeWithOptions(_ request: ModifyAccountPrivilegeRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ModifyAccountPrivilegeResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.accountName)) {
            query["AccountName"] = request.accountName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.dbPrivilege)) {
            query["DbPrivilege"] = request.dbPrivilege ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.drdsInstanceId)) {
            query["DrdsInstanceId"] = request.drdsInstanceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ModifyAccountPrivilege",
            "version": "2019-01-23",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ModifyAccountPrivilegeResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func modifyAccountPrivilege(_ request: ModifyAccountPrivilegeRequest) async throws -> ModifyAccountPrivilegeResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await modifyAccountPrivilegeWithOptions(request as! ModifyAccountPrivilegeRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func modifyDrdsInstanceDescriptionWithOptions(_ request: ModifyDrdsInstanceDescriptionRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ModifyDrdsInstanceDescriptionResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.description_)) {
            query["Description"] = request.description_ ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.drdsInstanceId)) {
            query["DrdsInstanceId"] = request.drdsInstanceId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ModifyDrdsInstanceDescription",
            "version": "2019-01-23",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ModifyDrdsInstanceDescriptionResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func modifyDrdsInstanceDescription(_ request: ModifyDrdsInstanceDescriptionRequest) async throws -> ModifyDrdsInstanceDescriptionResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await modifyDrdsInstanceDescriptionWithOptions(request as! ModifyDrdsInstanceDescriptionRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func modifyDrdsIpWhiteListWithOptions(_ request: ModifyDrdsIpWhiteListRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ModifyDrdsIpWhiteListResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.dbName)) {
            query["DbName"] = request.dbName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.drdsInstanceId)) {
            query["DrdsInstanceId"] = request.drdsInstanceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.groupAttribute)) {
            query["GroupAttribute"] = request.groupAttribute ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.groupName)) {
            query["GroupName"] = request.groupName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.ipWhiteList)) {
            query["IpWhiteList"] = request.ipWhiteList ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.mode)) {
            query["Mode"] = request.mode!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ModifyDrdsIpWhiteList",
            "version": "2019-01-23",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ModifyDrdsIpWhiteListResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func modifyDrdsIpWhiteList(_ request: ModifyDrdsIpWhiteListRequest) async throws -> ModifyDrdsIpWhiteListResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await modifyDrdsIpWhiteListWithOptions(request as! ModifyDrdsIpWhiteListRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func modifyPolarDbReadWeightWithOptions(_ request: ModifyPolarDbReadWeightRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ModifyPolarDbReadWeightResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.dbInstanceId)) {
            query["DbInstanceId"] = request.dbInstanceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.dbName)) {
            query["DbName"] = request.dbName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.dbNodeIds)) {
            query["DbNodeIds"] = request.dbNodeIds ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.drdsInstanceId)) {
            query["DrdsInstanceId"] = request.drdsInstanceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.weights)) {
            query["Weights"] = request.weights ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ModifyPolarDbReadWeight",
            "version": "2019-01-23",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ModifyPolarDbReadWeightResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func modifyPolarDbReadWeight(_ request: ModifyPolarDbReadWeightRequest) async throws -> ModifyPolarDbReadWeightResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await modifyPolarDbReadWeightWithOptions(request as! ModifyPolarDbReadWeightRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func modifyRdsReadWeightWithOptions(_ request: ModifyRdsReadWeightRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ModifyRdsReadWeightResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.dbName)) {
            query["DbName"] = request.dbName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.drdsInstanceId)) {
            query["DrdsInstanceId"] = request.drdsInstanceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.instanceNames)) {
            query["InstanceNames"] = request.instanceNames ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.weights)) {
            query["Weights"] = request.weights ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ModifyRdsReadWeight",
            "version": "2019-01-23",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ModifyRdsReadWeightResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func modifyRdsReadWeight(_ request: ModifyRdsReadWeightRequest) async throws -> ModifyRdsReadWeightResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await modifyRdsReadWeightWithOptions(request as! ModifyRdsReadWeightRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func putStartBackupWithOptions(_ request: PutStartBackupRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> PutStartBackupResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.backupDbNames)) {
            query["BackupDbNames"] = request.backupDbNames ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.backupLevel)) {
            query["BackupLevel"] = request.backupLevel ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.backupMode)) {
            query["BackupMode"] = request.backupMode ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.drdsInstanceId)) {
            query["DrdsInstanceId"] = request.drdsInstanceId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "PutStartBackup",
            "version": "2019-01-23",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(PutStartBackupResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func putStartBackup(_ request: PutStartBackupRequest) async throws -> PutStartBackupResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await putStartBackupWithOptions(request as! PutStartBackupRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func refreshDrdsAtomUrlWithOptions(_ request: RefreshDrdsAtomUrlRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> RefreshDrdsAtomUrlResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.dbName)) {
            query["DbName"] = request.dbName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.drdsInstanceId)) {
            query["DrdsInstanceId"] = request.drdsInstanceId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "RefreshDrdsAtomUrl",
            "version": "2019-01-23",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(RefreshDrdsAtomUrlResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func refreshDrdsAtomUrl(_ request: RefreshDrdsAtomUrlRequest) async throws -> RefreshDrdsAtomUrlResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await refreshDrdsAtomUrlWithOptions(request as! RefreshDrdsAtomUrlRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func releaseInstanceInternetAddressWithOptions(_ request: ReleaseInstanceInternetAddressRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ReleaseInstanceInternetAddressResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.drdsInstanceId)) {
            query["DrdsInstanceId"] = request.drdsInstanceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ReleaseInstanceInternetAddress",
            "version": "2019-01-23",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ReleaseInstanceInternetAddressResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func releaseInstanceInternetAddress(_ request: ReleaseInstanceInternetAddressRequest) async throws -> ReleaseInstanceInternetAddressResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await releaseInstanceInternetAddressWithOptions(request as! ReleaseInstanceInternetAddressRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func removeBackupsSetWithOptions(_ request: RemoveBackupsSetRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> RemoveBackupsSetResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.backupId)) {
            query["BackupId"] = request.backupId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.drdsInstanceId)) {
            query["DrdsInstanceId"] = request.drdsInstanceId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "RemoveBackupsSet",
            "version": "2019-01-23",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(RemoveBackupsSetResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func removeBackupsSet(_ request: RemoveBackupsSetRequest) async throws -> RemoveBackupsSetResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await removeBackupsSetWithOptions(request as! RemoveBackupsSetRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func removeDrdsDbWithOptions(_ request: RemoveDrdsDbRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> RemoveDrdsDbResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.dbName)) {
            query["DbName"] = request.dbName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.drdsInstanceId)) {
            query["DrdsInstanceId"] = request.drdsInstanceId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "RemoveDrdsDb",
            "version": "2019-01-23",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(RemoveDrdsDbResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func removeDrdsDb(_ request: RemoveDrdsDbRequest) async throws -> RemoveDrdsDbResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await removeDrdsDbWithOptions(request as! RemoveDrdsDbRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func removeDrdsDbFailedRecordWithOptions(_ request: RemoveDrdsDbFailedRecordRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> RemoveDrdsDbFailedRecordResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.dbName)) {
            query["DbName"] = request.dbName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.drdsInstanceId)) {
            query["DrdsInstanceId"] = request.drdsInstanceId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "RemoveDrdsDbFailedRecord",
            "version": "2019-01-23",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(RemoveDrdsDbFailedRecordResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func removeDrdsDbFailedRecord(_ request: RemoveDrdsDbFailedRecordRequest) async throws -> RemoveDrdsDbFailedRecordResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await removeDrdsDbFailedRecordWithOptions(request as! RemoveDrdsDbFailedRecordRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func removeDrdsInstanceWithOptions(_ request: RemoveDrdsInstanceRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> RemoveDrdsInstanceResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.drdsInstanceId)) {
            query["DrdsInstanceId"] = request.drdsInstanceId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "RemoveDrdsInstance",
            "version": "2019-01-23",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(RemoveDrdsInstanceResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func removeDrdsInstance(_ request: RemoveDrdsInstanceRequest) async throws -> RemoveDrdsInstanceResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await removeDrdsInstanceWithOptions(request as! RemoveDrdsInstanceRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func removeInstanceAccountWithOptions(_ request: RemoveInstanceAccountRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> RemoveInstanceAccountResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.accountName)) {
            query["AccountName"] = request.accountName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.drdsInstanceId)) {
            query["DrdsInstanceId"] = request.drdsInstanceId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "RemoveInstanceAccount",
            "version": "2019-01-23",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(RemoveInstanceAccountResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func removeInstanceAccount(_ request: RemoveInstanceAccountRequest) async throws -> RemoveInstanceAccountResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await removeInstanceAccountWithOptions(request as! RemoveInstanceAccountRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func removeRecycleBinTableWithOptions(_ request: RemoveRecycleBinTableRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> RemoveRecycleBinTableResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.dbName)) {
            query["DbName"] = request.dbName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.drdsInstanceId)) {
            query["DrdsInstanceId"] = request.drdsInstanceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.tableName)) {
            query["TableName"] = request.tableName ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "RemoveRecycleBinTable",
            "version": "2019-01-23",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(RemoveRecycleBinTableResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func removeRecycleBinTable(_ request: RemoveRecycleBinTableRequest) async throws -> RemoveRecycleBinTableResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await removeRecycleBinTableWithOptions(request as! RemoveRecycleBinTableRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func restartDrdsInstanceWithOptions(_ request: RestartDrdsInstanceRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> RestartDrdsInstanceResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.drdsInstanceId)) {
            query["DrdsInstanceId"] = request.drdsInstanceId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "RestartDrdsInstance",
            "version": "2019-01-23",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(RestartDrdsInstanceResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func restartDrdsInstance(_ request: RestartDrdsInstanceRequest) async throws -> RestartDrdsInstanceResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await restartDrdsInstanceWithOptions(request as! RestartDrdsInstanceRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func rollbackInstanceVersionWithOptions(_ request: RollbackInstanceVersionRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> RollbackInstanceVersionResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.drdsInstanceId)) {
            query["DrdsInstanceId"] = request.drdsInstanceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "RollbackInstanceVersion",
            "version": "2019-01-23",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(RollbackInstanceVersionResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func rollbackInstanceVersion(_ request: RollbackInstanceVersionRequest) async throws -> RollbackInstanceVersionResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await rollbackInstanceVersionWithOptions(request as! RollbackInstanceVersionRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func setBackupLocalWithOptions(_ request: SetBackupLocalRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> SetBackupLocalResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.drdsInstanceId)) {
            query["DrdsInstanceId"] = request.drdsInstanceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.highSpaceUsageProtection)) {
            query["HighSpaceUsageProtection"] = request.highSpaceUsageProtection ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.localLogRetentionHours)) {
            query["LocalLogRetentionHours"] = request.localLogRetentionHours ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.localLogRetentionSpace)) {
            query["LocalLogRetentionSpace"] = request.localLogRetentionSpace ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "SetBackupLocal",
            "version": "2019-01-23",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(SetBackupLocalResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func setBackupLocal(_ request: SetBackupLocalRequest) async throws -> SetBackupLocalResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await setBackupLocalWithOptions(request as! SetBackupLocalRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func setBackupPolicyWithOptions(_ request: SetBackupPolicyRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> SetBackupPolicyResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.backupDbNames)) {
            query["BackupDbNames"] = request.backupDbNames ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.backupLevel)) {
            query["BackupLevel"] = request.backupLevel ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.backupLog)) {
            query["BackupLog"] = request.backupLog ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.backupMode)) {
            query["BackupMode"] = request.backupMode ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.dataBackupRetentionPeriod)) {
            query["DataBackupRetentionPeriod"] = request.dataBackupRetentionPeriod ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.drdsInstanceId)) {
            query["DrdsInstanceId"] = request.drdsInstanceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.logBackupRetentionPeriod)) {
            query["LogBackupRetentionPeriod"] = request.logBackupRetentionPeriod ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.preferredBackupEndTime)) {
            query["PreferredBackupEndTime"] = request.preferredBackupEndTime ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.preferredBackupPeriod)) {
            query["PreferredBackupPeriod"] = request.preferredBackupPeriod ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.preferredBackupStartTime)) {
            query["PreferredBackupStartTime"] = request.preferredBackupStartTime ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "SetBackupPolicy",
            "version": "2019-01-23",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(SetBackupPolicyResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func setBackupPolicy(_ request: SetBackupPolicyRequest) async throws -> SetBackupPolicyResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await setBackupPolicyWithOptions(request as! SetBackupPolicyRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func setupBroadcastTablesWithOptions(_ request: SetupBroadcastTablesRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> SetupBroadcastTablesResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.active)) {
            query["Active"] = request.active!;
        }
        if (!TeaUtils.Client.isUnset(request.dbName)) {
            query["DbName"] = request.dbName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.drdsInstanceId)) {
            query["DrdsInstanceId"] = request.drdsInstanceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.tableName)) {
            query["TableName"] = request.tableName ?? [];
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "SetupBroadcastTables",
            "version": "2019-01-23",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(SetupBroadcastTablesResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func setupBroadcastTables(_ request: SetupBroadcastTablesRequest) async throws -> SetupBroadcastTablesResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await setupBroadcastTablesWithOptions(request as! SetupBroadcastTablesRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func setupDrdsParamsWithOptions(_ request: SetupDrdsParamsRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> SetupDrdsParamsResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.data)) {
            query["Data"] = request.data ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.drdsInstanceId)) {
            query["DrdsInstanceId"] = request.drdsInstanceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.paramLevel)) {
            query["ParamLevel"] = request.paramLevel ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "SetupDrdsParams",
            "version": "2019-01-23",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(SetupDrdsParamsResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func setupDrdsParams(_ request: SetupDrdsParamsRequest) async throws -> SetupDrdsParamsResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await setupDrdsParamsWithOptions(request as! SetupDrdsParamsRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func setupRecycleBinStatusWithOptions(_ request: SetupRecycleBinStatusRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> SetupRecycleBinStatusResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.dbName)) {
            query["DbName"] = request.dbName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.drdsInstanceId)) {
            query["DrdsInstanceId"] = request.drdsInstanceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.statusAction)) {
            query["StatusAction"] = request.statusAction ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "SetupRecycleBinStatus",
            "version": "2019-01-23",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(SetupRecycleBinStatusResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func setupRecycleBinStatus(_ request: SetupRecycleBinStatusRequest) async throws -> SetupRecycleBinStatusResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await setupRecycleBinStatusWithOptions(request as! SetupRecycleBinStatusRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func setupTableWithOptions(_ request: SetupTableRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> SetupTableResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.allowFullTableScan)) {
            query["AllowFullTableScan"] = request.allowFullTableScan!;
        }
        if (!TeaUtils.Client.isUnset(request.dbName)) {
            query["DbName"] = request.dbName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.drdsInstanceId)) {
            query["DrdsInstanceId"] = request.drdsInstanceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.tableName)) {
            query["TableName"] = request.tableName ?? [];
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "SetupTable",
            "version": "2019-01-23",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(SetupTableResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func setupTable(_ request: SetupTableRequest) async throws -> SetupTableResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await setupTableWithOptions(request as! SetupTableRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func startRestoreWithOptions(_ request: StartRestoreRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> StartRestoreResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.backupDbNames)) {
            query["BackupDbNames"] = request.backupDbNames ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.backupId)) {
            query["BackupId"] = request.backupId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.backupLevel)) {
            query["BackupLevel"] = request.backupLevel ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.backupMode)) {
            query["BackupMode"] = request.backupMode ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.drdsInstanceId)) {
            query["DrdsInstanceId"] = request.drdsInstanceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.preferredBackupTime)) {
            query["PreferredBackupTime"] = request.preferredBackupTime ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "StartRestore",
            "version": "2019-01-23",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(StartRestoreResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func startRestore(_ request: StartRestoreRequest) async throws -> StartRestoreResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await startRestoreWithOptions(request as! StartRestoreRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func submitCleanTaskWithOptions(_ request: SubmitCleanTaskRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> SubmitCleanTaskResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.dbName)) {
            query["DbName"] = request.dbName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.drdsInstanceId)) {
            query["DrdsInstanceId"] = request.drdsInstanceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.expandType)) {
            query["ExpandType"] = request.expandType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.jobId)) {
            query["JobId"] = request.jobId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.parentJobId)) {
            query["ParentJobId"] = request.parentJobId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "SubmitCleanTask",
            "version": "2019-01-23",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(SubmitCleanTaskResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func submitCleanTask(_ request: SubmitCleanTaskRequest) async throws -> SubmitCleanTaskResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await submitCleanTaskWithOptions(request as! SubmitCleanTaskRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func submitHotExpandPreCheckTaskWithOptions(_ request: SubmitHotExpandPreCheckTaskRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> SubmitHotExpandPreCheckTaskResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.dbInstType)) {
            query["DbInstType"] = request.dbInstType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.dbName)) {
            query["DbName"] = request.dbName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.drdsInstanceId)) {
            query["DrdsInstanceId"] = request.drdsInstanceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.tableList)) {
            query["TableList"] = request.tableList ?? [];
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "SubmitHotExpandPreCheckTask",
            "version": "2019-01-23",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(SubmitHotExpandPreCheckTaskResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func submitHotExpandPreCheckTask(_ request: SubmitHotExpandPreCheckTaskRequest) async throws -> SubmitHotExpandPreCheckTaskResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await submitHotExpandPreCheckTaskWithOptions(request as! SubmitHotExpandPreCheckTaskRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func submitHotExpandTaskWithOptions(_ request: SubmitHotExpandTaskRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> SubmitHotExpandTaskResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.dbName)) {
            query["DbName"] = request.dbName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.drdsInstanceId)) {
            query["DrdsInstanceId"] = request.drdsInstanceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.extendedMapping)) {
            query["ExtendedMapping"] = request.extendedMapping ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.instanceDbMapping)) {
            query["InstanceDbMapping"] = request.instanceDbMapping ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.mapping)) {
            query["Mapping"] = request.mapping ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.supperAccountMapping)) {
            query["SupperAccountMapping"] = request.supperAccountMapping ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.taskDesc)) {
            query["TaskDesc"] = request.taskDesc ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.taskName)) {
            query["TaskName"] = request.taskName ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "SubmitHotExpandTask",
            "version": "2019-01-23",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(SubmitHotExpandTaskResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func submitHotExpandTask(_ request: SubmitHotExpandTaskRequest) async throws -> SubmitHotExpandTaskResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await submitHotExpandTaskWithOptions(request as! SubmitHotExpandTaskRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func submitSmoothExpandPreCheckWithOptions(_ request: SubmitSmoothExpandPreCheckRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> SubmitSmoothExpandPreCheckResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.dbInstType)) {
            query["DbInstType"] = request.dbInstType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.dbName)) {
            query["DbName"] = request.dbName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.drdsInstanceId)) {
            query["DrdsInstanceId"] = request.drdsInstanceId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "SubmitSmoothExpandPreCheck",
            "version": "2019-01-23",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(SubmitSmoothExpandPreCheckResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func submitSmoothExpandPreCheck(_ request: SubmitSmoothExpandPreCheckRequest) async throws -> SubmitSmoothExpandPreCheckResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await submitSmoothExpandPreCheckWithOptions(request as! SubmitSmoothExpandPreCheckRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func submitSmoothExpandPreCheckTaskWithOptions(_ request: SubmitSmoothExpandPreCheckTaskRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> SubmitSmoothExpandPreCheckTaskResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.dbName)) {
            query["DbName"] = request.dbName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.drdsInstanceId)) {
            query["DrdsInstanceId"] = request.drdsInstanceId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "SubmitSmoothExpandPreCheckTask",
            "version": "2019-01-23",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(SubmitSmoothExpandPreCheckTaskResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func submitSmoothExpandPreCheckTask(_ request: SubmitSmoothExpandPreCheckTaskRequest) async throws -> SubmitSmoothExpandPreCheckTaskResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await submitSmoothExpandPreCheckTaskWithOptions(request as! SubmitSmoothExpandPreCheckTaskRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func submitSqlFlashbackTaskWithOptions(_ request: SubmitSqlFlashbackTaskRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> SubmitSqlFlashbackTaskResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.dbName)) {
            query["DbName"] = request.dbName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.drdsInstanceId)) {
            query["DrdsInstanceId"] = request.drdsInstanceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.endTime)) {
            query["EndTime"] = request.endTime ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.recallRestoreType)) {
            query["RecallRestoreType"] = request.recallRestoreType!;
        }
        if (!TeaUtils.Client.isUnset(request.recallType)) {
            query["RecallType"] = request.recallType!;
        }
        if (!TeaUtils.Client.isUnset(request.sqlPk)) {
            query["SqlPk"] = request.sqlPk ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.sqlType)) {
            query["SqlType"] = request.sqlType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.startTime)) {
            query["StartTime"] = request.startTime ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.tableName)) {
            query["TableName"] = request.tableName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.traceId)) {
            query["TraceId"] = request.traceId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "SubmitSqlFlashbackTask",
            "version": "2019-01-23",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(SubmitSqlFlashbackTaskResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func submitSqlFlashbackTask(_ request: SubmitSqlFlashbackTaskRequest) async throws -> SubmitSqlFlashbackTaskResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await submitSqlFlashbackTaskWithOptions(request as! SubmitSqlFlashbackTaskRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func switchGlobalBroadcastTypeWithOptions(_ request: SwitchGlobalBroadcastTypeRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> SwitchGlobalBroadcastTypeResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.dbName)) {
            query["DbName"] = request.dbName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.drdsInstanceId)) {
            query["DrdsInstanceId"] = request.drdsInstanceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "SwitchGlobalBroadcastType",
            "version": "2019-01-23",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(SwitchGlobalBroadcastTypeResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func switchGlobalBroadcastType(_ request: SwitchGlobalBroadcastTypeRequest) async throws -> SwitchGlobalBroadcastTypeResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await switchGlobalBroadcastTypeWithOptions(request as! SwitchGlobalBroadcastTypeRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func tagResourcesWithOptions(_ request: TagResourcesRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> TagResourcesResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
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
            "version": "2019-01-23",
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
    public func untagResourcesWithOptions(_ request: UntagResourcesRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> UntagResourcesResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.all)) {
            query["All"] = request.all!;
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
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
            "version": "2019-01-23",
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
    public func updateInstanceNetworkWithOptions(_ request: UpdateInstanceNetworkRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> UpdateInstanceNetworkResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.classicExpiredDays)) {
            query["ClassicExpiredDays"] = request.classicExpiredDays!;
        }
        if (!TeaUtils.Client.isUnset(request.drdsInstanceId)) {
            query["DrdsInstanceId"] = request.drdsInstanceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.retainClassic)) {
            query["RetainClassic"] = request.retainClassic!;
        }
        if (!TeaUtils.Client.isUnset(request.srcInstanceNetworkType)) {
            query["SrcInstanceNetworkType"] = request.srcInstanceNetworkType ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "UpdateInstanceNetwork",
            "version": "2019-01-23",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(UpdateInstanceNetworkResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateInstanceNetwork(_ request: UpdateInstanceNetworkRequest) async throws -> UpdateInstanceNetworkResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await updateInstanceNetworkWithOptions(request as! UpdateInstanceNetworkRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updatePrivateRdsClassWithOptions(_ request: UpdatePrivateRdsClassRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> UpdatePrivateRdsClassResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.autoUseCoupon)) {
            query["AutoUseCoupon"] = request.autoUseCoupon!;
        }
        if (!TeaUtils.Client.isUnset(request.DBInstanceId)) {
            query["DBInstanceId"] = request.DBInstanceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.drdsInstanceId)) {
            query["DrdsInstanceId"] = request.drdsInstanceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.prePayDuration)) {
            query["PrePayDuration"] = request.prePayDuration!;
        }
        if (!TeaUtils.Client.isUnset(request.rdsClass)) {
            query["RdsClass"] = request.rdsClass ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.storage)) {
            query["Storage"] = request.storage ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "UpdatePrivateRdsClass",
            "version": "2019-01-23",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(UpdatePrivateRdsClassResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updatePrivateRdsClass(_ request: UpdatePrivateRdsClassRequest) async throws -> UpdatePrivateRdsClassResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await updatePrivateRdsClassWithOptions(request as! UpdatePrivateRdsClassRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateResourceGroupAttributeWithOptions(_ request: UpdateResourceGroupAttributeRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> UpdateResourceGroupAttributeResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.drdsInstanceId)) {
            query["DrdsInstanceId"] = request.drdsInstanceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.newResourceGroupId)) {
            query["NewResourceGroupId"] = request.newResourceGroupId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "UpdateResourceGroupAttribute",
            "version": "2019-01-23",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(UpdateResourceGroupAttributeResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateResourceGroupAttribute(_ request: UpdateResourceGroupAttributeRequest) async throws -> UpdateResourceGroupAttributeResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await updateResourceGroupAttributeWithOptions(request as! UpdateResourceGroupAttributeRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func upgradeHiStoreInstanceWithOptions(_ request: UpgradeHiStoreInstanceRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> UpgradeHiStoreInstanceResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.drdsInstanceId)) {
            query["DrdsInstanceId"] = request.drdsInstanceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.historeInstanceId)) {
            query["HistoreInstanceId"] = request.historeInstanceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "UpgradeHiStoreInstance",
            "version": "2019-01-23",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(UpgradeHiStoreInstanceResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func upgradeHiStoreInstance(_ request: UpgradeHiStoreInstanceRequest) async throws -> UpgradeHiStoreInstanceResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await upgradeHiStoreInstanceWithOptions(request as! UpgradeHiStoreInstanceRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func upgradeInstanceVersionWithOptions(_ request: UpgradeInstanceVersionRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> UpgradeInstanceVersionResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.drdsInstanceId)) {
            query["DrdsInstanceId"] = request.drdsInstanceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.rpm)) {
            query["Rpm"] = request.rpm ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "UpgradeInstanceVersion",
            "version": "2019-01-23",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(UpgradeInstanceVersionResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func upgradeInstanceVersion(_ request: UpgradeInstanceVersionRequest) async throws -> UpgradeInstanceVersionResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await upgradeInstanceVersionWithOptions(request as! UpgradeInstanceVersionRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func validateShardTaskWithOptions(_ request: ValidateShardTaskRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ValidateShardTaskResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.dbName)) {
            query["DbName"] = request.dbName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.drdsInstanceId)) {
            query["DrdsInstanceId"] = request.drdsInstanceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.sourceTableName)) {
            query["SourceTableName"] = request.sourceTableName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.targetTableName)) {
            query["TargetTableName"] = request.targetTableName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.taskType)) {
            query["TaskType"] = request.taskType ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ValidateShardTask",
            "version": "2019-01-23",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ValidateShardTaskResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func validateShardTask(_ request: ValidateShardTaskRequest) async throws -> ValidateShardTaskResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await validateShardTaskWithOptions(request as! ValidateShardTaskRequest, runtime as! TeaUtils.RuntimeOptions)
    }
}
