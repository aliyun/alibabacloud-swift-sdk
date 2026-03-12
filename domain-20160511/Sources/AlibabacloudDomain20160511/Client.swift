import Foundation
import Tea
import TeaUtils
import AlibabacloudOpenApi
import AlibabaCloudOpenApiUtil
import AlibabacloudEndpointUtil

open class Client : AlibabacloudOpenApi.Client {
    public override init(_ config: AlibabacloudOpenApi.Config) throws {
        try super.init(config)
        self._endpointRule = "central"
        try checkConfig(config as! AlibabacloudOpenApi.Config)
        self._endpoint = try getEndpoint("domain", self._regionId ?? "", self._endpointRule ?? "", self._network ?? "", self._suffix ?? "", self._endpointMap ?? [:], self._endpoint ?? "")
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
    public func checkDomainWithOptions(_ request: CheckDomainRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> CheckDomainResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.domainName)) {
            query["DomainName"] = request.domainName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.lang)) {
            query["Lang"] = request.lang ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.userClientIp)) {
            query["UserClientIp"] = request.userClientIp ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CheckDomain",
            "version": "2016-05-11",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CheckDomainResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func checkDomain(_ request: CheckDomainRequest) async throws -> CheckDomainResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await checkDomainWithOptions(request as! CheckDomainRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteContactTemplateWithOptions(_ request: DeleteContactTemplateRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DeleteContactTemplateResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.contactTemplateId)) {
            query["ContactTemplateId"] = request.contactTemplateId!;
        }
        if (!TeaUtils.Client.isUnset(request.lang)) {
            query["Lang"] = request.lang ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.userClientIp)) {
            query["UserClientIp"] = request.userClientIp ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DeleteContactTemplate",
            "version": "2016-05-11",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DeleteContactTemplateResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteContactTemplate(_ request: DeleteContactTemplateRequest) async throws -> DeleteContactTemplateResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await deleteContactTemplateWithOptions(request as! DeleteContactTemplateRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func queryBatchTaskDetailListWithOptions(_ request: QueryBatchTaskDetailListRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> QueryBatchTaskDetailListResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.domainName)) {
            query["DomainName"] = request.domainName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.lang)) {
            query["Lang"] = request.lang ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.pageNum)) {
            query["PageNum"] = request.pageNum!;
        }
        if (!TeaUtils.Client.isUnset(request.pageSize)) {
            query["PageSize"] = request.pageSize!;
        }
        if (!TeaUtils.Client.isUnset(request.saleId)) {
            query["SaleId"] = request.saleId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.taskNo)) {
            query["TaskNo"] = request.taskNo ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.taskStatus)) {
            query["TaskStatus"] = request.taskStatus!;
        }
        if (!TeaUtils.Client.isUnset(request.userClientIp)) {
            query["UserClientIp"] = request.userClientIp ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "QueryBatchTaskDetailList",
            "version": "2016-05-11",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(QueryBatchTaskDetailListResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func queryBatchTaskDetailList(_ request: QueryBatchTaskDetailListRequest) async throws -> QueryBatchTaskDetailListResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await queryBatchTaskDetailListWithOptions(request as! QueryBatchTaskDetailListRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func queryBatchTaskListWithOptions(_ request: QueryBatchTaskListRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> QueryBatchTaskListResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.beginCreateTime)) {
            query["BeginCreateTime"] = request.beginCreateTime ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.endCreateTime)) {
            query["EndCreateTime"] = request.endCreateTime ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.lang)) {
            query["Lang"] = request.lang ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.pageNum)) {
            query["PageNum"] = request.pageNum!;
        }
        if (!TeaUtils.Client.isUnset(request.pageSize)) {
            query["PageSize"] = request.pageSize!;
        }
        if (!TeaUtils.Client.isUnset(request.userClientIp)) {
            query["UserClientIp"] = request.userClientIp ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "QueryBatchTaskList",
            "version": "2016-05-11",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(QueryBatchTaskListResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func queryBatchTaskList(_ request: QueryBatchTaskListRequest) async throws -> QueryBatchTaskListResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await queryBatchTaskListWithOptions(request as! QueryBatchTaskListRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func queryContactWithOptions(_ request: QueryContactRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> QueryContactResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.contactType)) {
            query["ContactType"] = request.contactType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.domainName)) {
            query["DomainName"] = request.domainName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.lang)) {
            query["Lang"] = request.lang ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.userClientIp)) {
            query["UserClientIp"] = request.userClientIp ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "QueryContact",
            "version": "2016-05-11",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(QueryContactResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func queryContact(_ request: QueryContactRequest) async throws -> QueryContactResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await queryContactWithOptions(request as! QueryContactRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func queryContactTemplateWithOptions(_ request: QueryContactTemplateRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> QueryContactTemplateResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.auditStatus)) {
            query["AuditStatus"] = request.auditStatus ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.CCompany)) {
            query["CCompany"] = request.CCompany ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.contactTemplateId)) {
            query["ContactTemplateId"] = request.contactTemplateId!;
        }
        if (!TeaUtils.Client.isUnset(request.defaultTemplate)) {
            query["DefaultTemplate"] = request.defaultTemplate!;
        }
        if (!TeaUtils.Client.isUnset(request.ECompany)) {
            query["ECompany"] = request.ECompany ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.lang)) {
            query["Lang"] = request.lang ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.pageNum)) {
            query["PageNum"] = request.pageNum!;
        }
        if (!TeaUtils.Client.isUnset(request.pageSize)) {
            query["PageSize"] = request.pageSize!;
        }
        if (!TeaUtils.Client.isUnset(request.regType)) {
            query["RegType"] = request.regType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.userClientIp)) {
            query["UserClientIp"] = request.userClientIp ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "QueryContactTemplate",
            "version": "2016-05-11",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(QueryContactTemplateResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func queryContactTemplate(_ request: QueryContactTemplateRequest) async throws -> QueryContactTemplateResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await queryContactTemplateWithOptions(request as! QueryContactTemplateRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func queryDomainBySaleIdWithOptions(_ request: QueryDomainBySaleIdRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> QueryDomainBySaleIdResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.lang)) {
            query["Lang"] = request.lang ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.saleId)) {
            query["SaleId"] = request.saleId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.userClientIp)) {
            query["UserClientIp"] = request.userClientIp ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "QueryDomainBySaleId",
            "version": "2016-05-11",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(QueryDomainBySaleIdResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func queryDomainBySaleId(_ request: QueryDomainBySaleIdRequest) async throws -> QueryDomainBySaleIdResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await queryDomainBySaleIdWithOptions(request as! QueryDomainBySaleIdRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func queryDomainListWithOptions(_ request: QueryDomainListRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> QueryDomainListResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.deadEndDate)) {
            query["DeadEndDate"] = request.deadEndDate!;
        }
        if (!TeaUtils.Client.isUnset(request.deadStartDate)) {
            query["DeadStartDate"] = request.deadStartDate!;
        }
        if (!TeaUtils.Client.isUnset(request.domainName)) {
            query["DomainName"] = request.domainName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.domainType)) {
            query["DomainType"] = request.domainType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.endDate)) {
            query["EndDate"] = request.endDate ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.groupId)) {
            query["GroupId"] = request.groupId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.lang)) {
            query["Lang"] = request.lang ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.orderByType)) {
            query["OrderByType"] = request.orderByType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.orderKeyType)) {
            query["OrderKeyType"] = request.orderKeyType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.pageNum)) {
            query["PageNum"] = request.pageNum!;
        }
        if (!TeaUtils.Client.isUnset(request.pageSize)) {
            query["PageSize"] = request.pageSize!;
        }
        if (!TeaUtils.Client.isUnset(request.productDomainType)) {
            query["ProductDomainType"] = request.productDomainType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.queryType)) {
            query["QueryType"] = request.queryType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.regEndDate)) {
            query["RegEndDate"] = request.regEndDate!;
        }
        if (!TeaUtils.Client.isUnset(request.regStartDate)) {
            query["RegStartDate"] = request.regStartDate!;
        }
        if (!TeaUtils.Client.isUnset(request.startDate)) {
            query["StartDate"] = request.startDate ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.userClientIp)) {
            query["UserClientIp"] = request.userClientIp ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "QueryDomainList",
            "version": "2016-05-11",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(QueryDomainListResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func queryDomainList(_ request: QueryDomainListRequest) async throws -> QueryDomainListResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await queryDomainListWithOptions(request as! QueryDomainListRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func queryFailReasonListWithOptions(_ request: QueryFailReasonListRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> QueryFailReasonListResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.contactTemplateId)) {
            query["ContactTemplateId"] = request.contactTemplateId!;
        }
        if (!TeaUtils.Client.isUnset(request.domainName)) {
            query["DomainName"] = request.domainName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.lang)) {
            query["Lang"] = request.lang ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.saleId)) {
            query["SaleId"] = request.saleId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.userClientIp)) {
            query["UserClientIp"] = request.userClientIp ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "QueryFailReasonList",
            "version": "2016-05-11",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(QueryFailReasonListResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func queryFailReasonList(_ request: QueryFailReasonListRequest) async throws -> QueryFailReasonListResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await queryFailReasonListWithOptions(request as! QueryFailReasonListRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func saveContactTemplateWithOptions(_ request: SaveContactTemplateRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> SaveContactTemplateResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.CCity)) {
            query["CCity"] = request.CCity ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.CCompany)) {
            query["CCompany"] = request.CCompany ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.CCountry)) {
            query["CCountry"] = request.CCountry ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.CName)) {
            query["CName"] = request.CName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.CProvince)) {
            query["CProvince"] = request.CProvince ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.CVenu)) {
            query["CVenu"] = request.CVenu ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.contactTemplateId)) {
            query["ContactTemplateId"] = request.contactTemplateId!;
        }
        if (!TeaUtils.Client.isUnset(request.defaultTemplate)) {
            query["DefaultTemplate"] = request.defaultTemplate!;
        }
        if (!TeaUtils.Client.isUnset(request.ECity)) {
            query["ECity"] = request.ECity ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.ECompany)) {
            query["ECompany"] = request.ECompany ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.EName)) {
            query["EName"] = request.EName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.EProvince)) {
            query["EProvince"] = request.EProvince ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.EVenu)) {
            query["EVenu"] = request.EVenu ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.email)) {
            query["Email"] = request.email ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.lang)) {
            query["Lang"] = request.lang ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.postalCode)) {
            query["PostalCode"] = request.postalCode ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.regType)) {
            query["RegType"] = request.regType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.telArea)) {
            query["TelArea"] = request.telArea ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.telExt)) {
            query["TelExt"] = request.telExt ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.telMain)) {
            query["TelMain"] = request.telMain ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.userClientIp)) {
            query["UserClientIp"] = request.userClientIp ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "SaveContactTemplate",
            "version": "2016-05-11",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(SaveContactTemplateResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func saveContactTemplate(_ request: SaveContactTemplateRequest) async throws -> SaveContactTemplateResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await saveContactTemplateWithOptions(request as! SaveContactTemplateRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func saveContactTemplateCredentialWithOptions(_ request: SaveContactTemplateCredentialRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> SaveContactTemplateCredentialResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.contactTemplateId)) {
            query["ContactTemplateId"] = request.contactTemplateId!;
        }
        if (!TeaUtils.Client.isUnset(request.credential)) {
            query["Credential"] = request.credential ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.credentialNo)) {
            query["CredentialNo"] = request.credentialNo ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.lang)) {
            query["Lang"] = request.lang ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.userClientIp)) {
            query["UserClientIp"] = request.userClientIp ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "SaveContactTemplateCredential",
            "version": "2016-05-11",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(SaveContactTemplateCredentialResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func saveContactTemplateCredential(_ request: SaveContactTemplateCredentialRequest) async throws -> SaveContactTemplateCredentialResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await saveContactTemplateCredentialWithOptions(request as! SaveContactTemplateCredentialRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func saveTaskForModifyingDomainDnsWithOptions(_ request: SaveTaskForModifyingDomainDnsRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> SaveTaskForModifyingDomainDnsResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.aliyunDns)) {
            query["AliyunDns"] = request.aliyunDns!;
        }
        if (!TeaUtils.Client.isUnset(request.dnsList)) {
            query["DnsList"] = request.dnsList ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.domainName)) {
            query["DomainName"] = request.domainName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.lang)) {
            query["Lang"] = request.lang ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.saleId)) {
            query["SaleId"] = request.saleId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.userClientIp)) {
            query["UserClientIp"] = request.userClientIp ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "SaveTaskForModifyingDomainDns",
            "version": "2016-05-11",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(SaveTaskForModifyingDomainDnsResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func saveTaskForModifyingDomainDns(_ request: SaveTaskForModifyingDomainDnsRequest) async throws -> SaveTaskForModifyingDomainDnsResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await saveTaskForModifyingDomainDnsWithOptions(request as! SaveTaskForModifyingDomainDnsRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func saveTaskForSubmittingDomainNameCredentialWithOptions(_ request: SaveTaskForSubmittingDomainNameCredentialRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> SaveTaskForSubmittingDomainNameCredentialResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.credential)) {
            query["Credential"] = request.credential ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.credentialNo)) {
            query["CredentialNo"] = request.credentialNo ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.credentialType)) {
            query["CredentialType"] = request.credentialType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.domainName)) {
            query["DomainName"] = request.domainName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.lang)) {
            query["Lang"] = request.lang ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.saleId)) {
            query["SaleId"] = request.saleId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.userClientIp)) {
            query["UserClientIp"] = request.userClientIp ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "SaveTaskForSubmittingDomainNameCredential",
            "version": "2016-05-11",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(SaveTaskForSubmittingDomainNameCredentialResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func saveTaskForSubmittingDomainNameCredential(_ request: SaveTaskForSubmittingDomainNameCredentialRequest) async throws -> SaveTaskForSubmittingDomainNameCredentialResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await saveTaskForSubmittingDomainNameCredentialWithOptions(request as! SaveTaskForSubmittingDomainNameCredentialRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func saveTaskForSubmittingDomainNameCredentialByTemplateIdWithOptions(_ request: SaveTaskForSubmittingDomainNameCredentialByTemplateIdRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> SaveTaskForSubmittingDomainNameCredentialByTemplateIdResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.contactTemplateId)) {
            query["ContactTemplateId"] = request.contactTemplateId!;
        }
        if (!TeaUtils.Client.isUnset(request.domainName)) {
            query["DomainName"] = request.domainName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.lang)) {
            query["Lang"] = request.lang ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.saleId)) {
            query["SaleId"] = request.saleId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.userClientIp)) {
            query["UserClientIp"] = request.userClientIp ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "SaveTaskForSubmittingDomainNameCredentialByTemplateId",
            "version": "2016-05-11",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(SaveTaskForSubmittingDomainNameCredentialByTemplateIdResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func saveTaskForSubmittingDomainNameCredentialByTemplateId(_ request: SaveTaskForSubmittingDomainNameCredentialByTemplateIdRequest) async throws -> SaveTaskForSubmittingDomainNameCredentialByTemplateIdResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await saveTaskForSubmittingDomainNameCredentialByTemplateIdWithOptions(request as! SaveTaskForSubmittingDomainNameCredentialByTemplateIdRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func saveTaskForUpdatingContactByTempateIdWithOptions(_ request: SaveTaskForUpdatingContactByTempateIdRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> SaveTaskForUpdatingContactByTempateIdResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.addTransferLock)) {
            query["AddTransferLock"] = request.addTransferLock!;
        }
        if (!TeaUtils.Client.isUnset(request.contactTemplateId)) {
            query["ContactTemplateId"] = request.contactTemplateId!;
        }
        if (!TeaUtils.Client.isUnset(request.contactType)) {
            query["ContactType"] = request.contactType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.domainName)) {
            query["DomainName"] = request.domainName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.lang)) {
            query["Lang"] = request.lang ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.saleId)) {
            query["SaleId"] = request.saleId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.userClientIp)) {
            query["UserClientIp"] = request.userClientIp ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "SaveTaskForUpdatingContactByTempateId",
            "version": "2016-05-11",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(SaveTaskForUpdatingContactByTempateIdResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func saveTaskForUpdatingContactByTempateId(_ request: SaveTaskForUpdatingContactByTempateIdRequest) async throws -> SaveTaskForUpdatingContactByTempateIdResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await saveTaskForUpdatingContactByTempateIdWithOptions(request as! SaveTaskForUpdatingContactByTempateIdRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func saveTaskForUpdatingContactByTemplateIdWithOptions(_ request: SaveTaskForUpdatingContactByTemplateIdRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> SaveTaskForUpdatingContactByTemplateIdResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.addTransferLock)) {
            query["AddTransferLock"] = request.addTransferLock!;
        }
        if (!TeaUtils.Client.isUnset(request.contactTemplateId)) {
            query["ContactTemplateId"] = request.contactTemplateId!;
        }
        if (!TeaUtils.Client.isUnset(request.contactType)) {
            query["ContactType"] = request.contactType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.domainName)) {
            query["DomainName"] = request.domainName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.lang)) {
            query["Lang"] = request.lang ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.saleId)) {
            query["SaleId"] = request.saleId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.userClientIp)) {
            query["UserClientIp"] = request.userClientIp ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "SaveTaskForUpdatingContactByTemplateId",
            "version": "2016-05-11",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(SaveTaskForUpdatingContactByTemplateIdResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func saveTaskForUpdatingContactByTemplateId(_ request: SaveTaskForUpdatingContactByTemplateIdRequest) async throws -> SaveTaskForUpdatingContactByTemplateIdResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await saveTaskForUpdatingContactByTemplateIdWithOptions(request as! SaveTaskForUpdatingContactByTemplateIdRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func whoisProtectionWithOptions(_ request: WhoisProtectionRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> WhoisProtectionResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.dataContent)) {
            query["DataContent"] = request.dataContent ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.dataSource)) {
            query["DataSource"] = request.dataSource!;
        }
        if (!TeaUtils.Client.isUnset(request.lang)) {
            query["Lang"] = request.lang ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.userClientIp)) {
            query["UserClientIp"] = request.userClientIp ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.whoisProtect)) {
            query["WhoisProtect"] = request.whoisProtect!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "WhoisProtection",
            "version": "2016-05-11",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(WhoisProtectionResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func whoisProtection(_ request: WhoisProtectionRequest) async throws -> WhoisProtectionResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await whoisProtectionWithOptions(request as! WhoisProtectionRequest, runtime as! TeaUtils.RuntimeOptions)
    }
}
