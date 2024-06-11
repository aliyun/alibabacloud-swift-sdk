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
        self._endpoint = try getEndpoint("beian", self._regionId ?? "", self._endpointRule ?? "", self._network ?? "", self._suffix ?? "", self._endpointMap ?? [:], self._endpoint ?? "")
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
    public func deleteUnbeianIpCheckTypeWithOptions(_ request: DeleteUnbeianIpCheckTypeRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DeleteUnbeianIpCheckTypeResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.caller)) {
            query["Caller"] = request.caller ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.checkType)) {
            query["CheckType"] = request.checkType!;
        }
        if (!TeaUtils.Client.isUnset(request.ip)) {
            query["Ip"] = request.ip ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.remark)) {
            query["Remark"] = request.remark ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DeleteUnbeianIpCheckType",
            "version": "2016-08-10",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DeleteUnbeianIpCheckTypeResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteUnbeianIpCheckType(_ request: DeleteUnbeianIpCheckTypeRequest) async throws -> DeleteUnbeianIpCheckTypeResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await deleteUnbeianIpCheckTypeWithOptions(request as! DeleteUnbeianIpCheckTypeRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getMainDomainWithOptions(_ request: GetMainDomainRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> GetMainDomainResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.domain)) {
            query["Domain"] = request.domain ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetMainDomain",
            "version": "2016-08-10",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetMainDomainResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getMainDomain(_ request: GetMainDomainRequest) async throws -> GetMainDomainResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await getMainDomainWithOptions(request as! GetMainDomainRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func insertUnbeianIpCheckTypeWithOptions(_ request: InsertUnbeianIpCheckTypeRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> InsertUnbeianIpCheckTypeResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.caller)) {
            query["Caller"] = request.caller ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.checkType)) {
            query["CheckType"] = request.checkType!;
        }
        if (!TeaUtils.Client.isUnset(request.ip)) {
            query["Ip"] = request.ip ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.remark)) {
            query["Remark"] = request.remark ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "InsertUnbeianIpCheckType",
            "version": "2016-08-10",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(InsertUnbeianIpCheckTypeResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func insertUnbeianIpCheckType(_ request: InsertUnbeianIpCheckTypeRequest) async throws -> InsertUnbeianIpCheckTypeResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await insertUnbeianIpCheckTypeWithOptions(request as! InsertUnbeianIpCheckTypeRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listUnbeianIpCheckTypeWithOptions(_ request: ListUnbeianIpCheckTypeRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ListUnbeianIpCheckTypeResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.caller)) {
            query["Caller"] = request.caller ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.checkType)) {
            query["CheckType"] = request.checkType!;
        }
        if (!TeaUtils.Client.isUnset(request.ip)) {
            query["Ip"] = request.ip ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.limit)) {
            query["Limit"] = request.limit!;
        }
        if (!TeaUtils.Client.isUnset(request.page)) {
            query["Page"] = request.page!;
        }
        if (!TeaUtils.Client.isUnset(request.remark)) {
            query["Remark"] = request.remark ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListUnbeianIpCheckType",
            "version": "2016-08-10",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListUnbeianIpCheckTypeResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listUnbeianIpCheckType(_ request: ListUnbeianIpCheckTypeRequest) async throws -> ListUnbeianIpCheckTypeResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await listUnbeianIpCheckTypeWithOptions(request as! ListUnbeianIpCheckTypeRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func manageAccessorDomainWithOptions(_ request: ManageAccessorDomainRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ManageAccessorDomainResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.caller)) {
            query["Caller"] = request.caller ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.domain)) {
            query["Domain"] = request.domain ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.operation)) {
            query["Operation"] = request.operation ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ManageAccessorDomain",
            "version": "2016-08-10",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ManageAccessorDomainResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func manageAccessorDomain(_ request: ManageAccessorDomainRequest) async throws -> ManageAccessorDomainResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await manageAccessorDomainWithOptions(request as! ManageAccessorDomainRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func manageAccessorDomainWhiteListWithOptions(_ request: ManageAccessorDomainWhiteListRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ManageAccessorDomainWhiteListResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.caller)) {
            query["Caller"] = request.caller ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.domains)) {
            query["Domains"] = request.domains ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.endTime)) {
            query["EndTime"] = request.endTime ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.operation)) {
            query["Operation"] = request.operation ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.remark)) {
            query["Remark"] = request.remark ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.startTime)) {
            query["StartTime"] = request.startTime ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ManageAccessorDomainWhiteList",
            "version": "2016-08-10",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ManageAccessorDomainWhiteListResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func manageAccessorDomainWhiteList(_ request: ManageAccessorDomainWhiteListRequest) async throws -> ManageAccessorDomainWhiteListResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await manageAccessorDomainWhiteListWithOptions(request as! ManageAccessorDomainWhiteListRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func manageAccessorIpWithOptions(_ request: ManageAccessorIpRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ManageAccessorIpResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.caller)) {
            query["Caller"] = request.caller ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.ip)) {
            query["Ip"] = request.ip ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.ipVersion)) {
            query["IpVersion"] = request.ipVersion!;
        }
        if (!TeaUtils.Client.isUnset(request.operation)) {
            query["Operation"] = request.operation ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.remark)) {
            query["Remark"] = request.remark ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ManageAccessorIp",
            "version": "2016-08-10",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ManageAccessorIpResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func manageAccessorIp(_ request: ManageAccessorIpRequest) async throws -> ManageAccessorIpResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await manageAccessorIpWithOptions(request as! ManageAccessorIpRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func queryAccessorDomainWithOptions(_ request: QueryAccessorDomainRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> QueryAccessorDomainResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.caller)) {
            query["Caller"] = request.caller ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.domain)) {
            query["Domain"] = request.domain ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "QueryAccessorDomain",
            "version": "2016-08-10",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(QueryAccessorDomainResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func queryAccessorDomain(_ request: QueryAccessorDomainRequest) async throws -> QueryAccessorDomainResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await queryAccessorDomainWithOptions(request as! QueryAccessorDomainRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func queryAccessorDomainListWithOptions(_ request: QueryAccessorDomainListRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> QueryAccessorDomainListResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.caller)) {
            query["Caller"] = request.caller ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.domain)) {
            query["Domain"] = request.domain ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.pageNo)) {
            query["PageNo"] = request.pageNo!;
        }
        if (!TeaUtils.Client.isUnset(request.pageSize)) {
            query["PageSize"] = request.pageSize!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "QueryAccessorDomainList",
            "version": "2016-08-10",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(QueryAccessorDomainListResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func queryAccessorDomainList(_ request: QueryAccessorDomainListRequest) async throws -> QueryAccessorDomainListResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await queryAccessorDomainListWithOptions(request as! QueryAccessorDomainListRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func queryAccessorDomainStatusWithOptions(_ request: QueryAccessorDomainStatusRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> QueryAccessorDomainStatusResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.caller)) {
            query["Caller"] = request.caller ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.domain)) {
            query["Domain"] = request.domain ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "QueryAccessorDomainStatus",
            "version": "2016-08-10",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(QueryAccessorDomainStatusResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func queryAccessorDomainStatus(_ request: QueryAccessorDomainStatusRequest) async throws -> QueryAccessorDomainStatusResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await queryAccessorDomainStatusWithOptions(request as! QueryAccessorDomainStatusRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func queryAccessorDomainWhiteListWithOptions(_ request: QueryAccessorDomainWhiteListRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> QueryAccessorDomainWhiteListResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.caller)) {
            query["Caller"] = request.caller ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.domain)) {
            query["Domain"] = request.domain ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "QueryAccessorDomainWhiteList",
            "version": "2016-08-10",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(QueryAccessorDomainWhiteListResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func queryAccessorDomainWhiteList(_ request: QueryAccessorDomainWhiteListRequest) async throws -> QueryAccessorDomainWhiteListResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await queryAccessorDomainWhiteListWithOptions(request as! QueryAccessorDomainWhiteListRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func queryAccessorDomainsStatusWithOptions(_ request: QueryAccessorDomainsStatusRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> QueryAccessorDomainsStatusResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.caller)) {
            query["Caller"] = request.caller ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.domains)) {
            query["Domains"] = request.domains ?? [];
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "QueryAccessorDomainsStatus",
            "version": "2016-08-10",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(QueryAccessorDomainsStatusResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func queryAccessorDomainsStatus(_ request: QueryAccessorDomainsStatusRequest) async throws -> QueryAccessorDomainsStatusResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await queryAccessorDomainsStatusWithOptions(request as! QueryAccessorDomainsStatusRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func queryAccessorIpWithOptions(_ request: QueryAccessorIpRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> QueryAccessorIpResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.caller)) {
            query["Caller"] = request.caller ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.ip)) {
            query["Ip"] = request.ip ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "QueryAccessorIp",
            "version": "2016-08-10",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(QueryAccessorIpResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func queryAccessorIp(_ request: QueryAccessorIpRequest) async throws -> QueryAccessorIpResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await queryAccessorIpWithOptions(request as! QueryAccessorIpRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func submitAccessorFullDomainsOssListWithOptions(_ request: SubmitAccessorFullDomainsOssListRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> SubmitAccessorFullDomainsOssListResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.caller)) {
            query["Caller"] = request.caller ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.ossList)) {
            query["OssList"] = request.ossList ?? [];
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "SubmitAccessorFullDomainsOssList",
            "version": "2016-08-10",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(SubmitAccessorFullDomainsOssListResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func submitAccessorFullDomainsOssList(_ request: SubmitAccessorFullDomainsOssListRequest) async throws -> SubmitAccessorFullDomainsOssListResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await submitAccessorFullDomainsOssListWithOptions(request as! SubmitAccessorFullDomainsOssListRequest, runtime as! TeaUtils.RuntimeOptions)
    }
}
