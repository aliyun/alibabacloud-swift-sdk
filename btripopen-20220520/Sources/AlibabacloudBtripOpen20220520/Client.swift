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
        self._endpoint = try getEndpoint("btripopen", self._regionId ?? "", self._endpointRule ?? "", self._network ?? "", self._suffix ?? "", self._endpointMap ?? [:], self._endpoint ?? "")
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
    public func accessTokenWithOptions(_ request: AccessTokenRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> AccessTokenResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.appSecret)) {
            query["app_secret"] = request.appSecret ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "AccessToken",
            "version": "2022-05-20",
            "protocol": "HTTPS",
            "pathname": "/btrip-open-auth/v1/access-token/action/take",
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(AccessTokenResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func accessToken(_ request: AccessTokenRequest) async throws -> AccessTokenResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await accessTokenWithOptions(request as! AccessTokenRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func addDepartmentWithOptions(_ tmpReq: AddDepartmentRequest, _ headers: AddDepartmentHeaders, _ runtime: TeaUtils.RuntimeOptions) async throws -> AddDepartmentResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: AddDepartmentShrinkRequest = AddDepartmentShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        if (!TeaUtils.Client.isUnset(tmpReq.managerEmployeeIdList)) {
            request.managerEmployeeIdListShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.managerEmployeeIdList, "manager_employee_id_list", "json")
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.deptName)) {
            body["dept_name"] = request.deptName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.managerEmployeeIdListShrink)) {
            body["manager_employee_id_list"] = request.managerEmployeeIdListShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.outDeptId)) {
            body["out_dept_id"] = request.outDeptId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.outDeptPid)) {
            body["out_dept_pid"] = request.outDeptPid ?? "";
        }
        var realHeaders: [String: String] = [:]
        if (!TeaUtils.Client.isUnset(headers.commonHeaders)) {
            realHeaders = headers.commonHeaders ?? [:]
        }
        if (!TeaUtils.Client.isUnset(headers.xAcsBtripCorpToken)) {
            realHeaders["x-acs-btrip-corp-token"] = TeaUtils.Client.toJSONString(headers.xAcsBtripCorpToken);
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": realHeaders as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "AddDepartment",
            "version": "2022-05-20",
            "protocol": "HTTPS",
            "pathname": "/department/v2/add",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(AddDepartmentResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func addDepartment(_ request: AddDepartmentRequest) async throws -> AddDepartmentResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: AddDepartmentHeaders = AddDepartmentHeaders([:])
        return try await addDepartmentWithOptions(request as! AddDepartmentRequest, headers as! AddDepartmentHeaders, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func addEmployeeWithOptions(_ tmpReq: AddEmployeeRequest, _ headers: AddEmployeeHeaders, _ runtime: TeaUtils.RuntimeOptions) async throws -> AddEmployeeResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: AddEmployeeShrinkRequest = AddEmployeeShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        if (!TeaUtils.Client.isUnset(tmpReq.baseCityCodeList)) {
            request.baseCityCodeListShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.baseCityCodeList, "base_city_code_list", "json")
        }
        if (!TeaUtils.Client.isUnset(tmpReq.certList)) {
            request.certListShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.certList, "cert_list", "json")
        }
        if (!TeaUtils.Client.isUnset(tmpReq.customRoleCodeList)) {
            request.customRoleCodeListShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.customRoleCodeList, "custom_role_code_list", "json")
        }
        if (!TeaUtils.Client.isUnset(tmpReq.outDeptIdList)) {
            request.outDeptIdListShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.outDeptIdList, "out_dept_id_list", "json")
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.attribute)) {
            body["attribute"] = request.attribute ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.avatar)) {
            body["avatar"] = request.avatar ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.baseCityCodeListShrink)) {
            body["base_city_code_list"] = request.baseCityCodeListShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.birthday)) {
            body["birthday"] = request.birthday ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.certListShrink)) {
            body["cert_list"] = request.certListShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.customRoleCodeListShrink)) {
            body["custom_role_code_list"] = request.customRoleCodeListShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.email)) {
            body["email"] = request.email ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.gender)) {
            body["gender"] = request.gender ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.isAdmin)) {
            body["is_admin"] = request.isAdmin!;
        }
        if (!TeaUtils.Client.isUnset(request.isBoss)) {
            body["is_boss"] = request.isBoss!;
        }
        if (!TeaUtils.Client.isUnset(request.isDeptLeader)) {
            body["is_dept_leader"] = request.isDeptLeader!;
        }
        if (!TeaUtils.Client.isUnset(request.jobNo)) {
            body["job_no"] = request.jobNo ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.managerUserId)) {
            body["manager_user_id"] = request.managerUserId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.outDeptIdListShrink)) {
            body["out_dept_id_list"] = request.outDeptIdListShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.phone)) {
            body["phone"] = request.phone ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.positionLevel)) {
            body["position_level"] = request.positionLevel ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.realName)) {
            body["real_name"] = request.realName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.realNameEn)) {
            body["real_name_en"] = request.realNameEn ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.unionId)) {
            body["union_id"] = request.unionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.userId)) {
            body["user_id"] = request.userId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.userNick)) {
            body["user_nick"] = request.userNick ?? "";
        }
        var realHeaders: [String: String] = [:]
        if (!TeaUtils.Client.isUnset(headers.commonHeaders)) {
            realHeaders = headers.commonHeaders ?? [:]
        }
        if (!TeaUtils.Client.isUnset(headers.xAcsBtripCorpToken)) {
            realHeaders["x-acs-btrip-corp-token"] = TeaUtils.Client.toJSONString(headers.xAcsBtripCorpToken);
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": realHeaders as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "AddEmployee",
            "version": "2022-05-20",
            "protocol": "HTTPS",
            "pathname": "/employee/v2/add",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(AddEmployeeResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func addEmployee(_ request: AddEmployeeRequest) async throws -> AddEmployeeResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: AddEmployeeHeaders = AddEmployeeHeaders([:])
        return try await addEmployeeWithOptions(request as! AddEmployeeRequest, headers as! AddEmployeeHeaders, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func addEmployeesToCustomRoleWithOptions(_ tmpReq: AddEmployeesToCustomRoleRequest, _ headers: AddEmployeesToCustomRoleHeaders, _ runtime: TeaUtils.RuntimeOptions) async throws -> AddEmployeesToCustomRoleResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: AddEmployeesToCustomRoleShrinkRequest = AddEmployeesToCustomRoleShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        if (!TeaUtils.Client.isUnset(tmpReq.userIdList)) {
            request.userIdListShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.userIdList, "user_id_list", "json")
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.roleId)) {
            body["role_id"] = request.roleId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.userIdListShrink)) {
            body["user_id_list"] = request.userIdListShrink ?? "";
        }
        var realHeaders: [String: String] = [:]
        if (!TeaUtils.Client.isUnset(headers.commonHeaders)) {
            realHeaders = headers.commonHeaders ?? [:]
        }
        if (!TeaUtils.Client.isUnset(headers.xAcsBtripCorpToken)) {
            realHeaders["x-acs-btrip-corp-token"] = TeaUtils.Client.toJSONString(headers.xAcsBtripCorpToken);
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": realHeaders as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "AddEmployeesToCustomRole",
            "version": "2022-05-20",
            "protocol": "HTTPS",
            "pathname": "/role/v1/customRoleEmployees/add",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(AddEmployeesToCustomRoleResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func addEmployeesToCustomRole(_ request: AddEmployeesToCustomRoleRequest) async throws -> AddEmployeesToCustomRoleResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: AddEmployeesToCustomRoleHeaders = AddEmployeesToCustomRoleHeaders([:])
        return try await addEmployeesToCustomRoleWithOptions(request as! AddEmployeesToCustomRoleRequest, headers as! AddEmployeesToCustomRoleHeaders, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func addInvoiceEntityWithOptions(_ tmpReq: AddInvoiceEntityRequest, _ headers: AddInvoiceEntityHeaders, _ runtime: TeaUtils.RuntimeOptions) async throws -> AddInvoiceEntityResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: AddInvoiceEntityShrinkRequest = AddInvoiceEntityShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        if (!TeaUtils.Client.isUnset(tmpReq.entities)) {
            request.entitiesShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.entities, "entities", "json")
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.entitiesShrink)) {
            body["entities"] = request.entitiesShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.thirdPartId)) {
            body["third_part_id"] = request.thirdPartId ?? "";
        }
        var realHeaders: [String: String] = [:]
        if (!TeaUtils.Client.isUnset(headers.commonHeaders)) {
            realHeaders = headers.commonHeaders ?? [:]
        }
        if (!TeaUtils.Client.isUnset(headers.xAcsBtripCorpToken)) {
            realHeaders["x-acs-btrip-corp-token"] = TeaUtils.Client.toJSONString(headers.xAcsBtripCorpToken);
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": realHeaders as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "AddInvoiceEntity",
            "version": "2022-05-20",
            "protocol": "HTTPS",
            "pathname": "/invoice/v1/entities",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(AddInvoiceEntityResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func addInvoiceEntity(_ request: AddInvoiceEntityRequest) async throws -> AddInvoiceEntityResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: AddInvoiceEntityHeaders = AddInvoiceEntityHeaders([:])
        return try await addInvoiceEntityWithOptions(request as! AddInvoiceEntityRequest, headers as! AddInvoiceEntityHeaders, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func addressGetWithOptions(_ request: AddressGetRequest, _ headers: AddressGetHeaders, _ runtime: TeaUtils.RuntimeOptions) async throws -> AddressGetResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.actionType)) {
            query["action_type"] = request.actionType!;
        }
        if (!TeaUtils.Client.isUnset(request.arrCityCode)) {
            query["arr_city_code"] = request.arrCityCode ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.arrCityName)) {
            query["arr_city_name"] = request.arrCityName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.carScenesCode)) {
            query["car_scenes_code"] = request.carScenesCode ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.depCityCode)) {
            query["dep_city_code"] = request.depCityCode ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.depCityName)) {
            query["dep_city_name"] = request.depCityName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.depDate)) {
            query["dep_date"] = request.depDate ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.itineraryId)) {
            query["itinerary_id"] = request.itineraryId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.middlePage)) {
            query["middle_page"] = request.middlePage!;
        }
        if (!TeaUtils.Client.isUnset(request.orderId)) {
            query["order_Id"] = request.orderId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.phone)) {
            query["phone"] = request.phone ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.subCorpId)) {
            query["sub_corp_id"] = request.subCorpId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.taobaoCallbackUrl)) {
            query["taobao_callback_url"] = request.taobaoCallbackUrl ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.thirdpartApplyId)) {
            query["thirdpart_apply_id"] = request.thirdpartApplyId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.travelerId)) {
            query["traveler_id"] = request.travelerId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.type)) {
            query["type"] = request.type!;
        }
        if (!TeaUtils.Client.isUnset(request.useBookingProxy)) {
            query["use_booking_proxy"] = request.useBookingProxy!;
        }
        if (!TeaUtils.Client.isUnset(request.userId)) {
            query["user_id"] = request.userId ?? "";
        }
        var realHeaders: [String: String] = [:]
        if (!TeaUtils.Client.isUnset(headers.commonHeaders)) {
            realHeaders = headers.commonHeaders ?? [:]
        }
        if (!TeaUtils.Client.isUnset(headers.xAcsBtripSoCorpToken)) {
            realHeaders["x-acs-btrip-so-corp-token"] = TeaUtils.Client.toJSONString(headers.xAcsBtripSoCorpToken);
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": realHeaders as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "AddressGet",
            "version": "2022-05-20",
            "protocol": "HTTPS",
            "pathname": "/open/v1/address",
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(AddressGetResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func addressGet(_ request: AddressGetRequest) async throws -> AddressGetResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: AddressGetHeaders = AddressGetHeaders([:])
        return try await addressGetWithOptions(request as! AddressGetRequest, headers as! AddressGetHeaders, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func airportSearchWithOptions(_ request: AirportSearchRequest, _ headers: AirportSearchHeaders, _ runtime: TeaUtils.RuntimeOptions) async throws -> AirportSearchResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.keyword)) {
            query["keyword"] = request.keyword ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.type)) {
            query["type"] = request.type!;
        }
        var realHeaders: [String: String] = [:]
        if (!TeaUtils.Client.isUnset(headers.commonHeaders)) {
            realHeaders = headers.commonHeaders ?? [:]
        }
        if (!TeaUtils.Client.isUnset(headers.xAcsBtripSoCorpToken)) {
            realHeaders["x-acs-btrip-so-corp-token"] = TeaUtils.Client.toJSONString(headers.xAcsBtripSoCorpToken);
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": realHeaders as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "AirportSearch",
            "version": "2022-05-20",
            "protocol": "HTTPS",
            "pathname": "/city/v1/airport",
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(AirportSearchResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func airportSearch(_ request: AirportSearchRequest) async throws -> AirportSearchResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: AirportSearchHeaders = AirportSearchHeaders([:])
        return try await airportSearchWithOptions(request as! AirportSearchRequest, headers as! AirportSearchHeaders, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func allBaseCityInfoQueryWithOptions(_ headers: AllBaseCityInfoQueryHeaders, _ runtime: TeaUtils.RuntimeOptions) async throws -> AllBaseCityInfoQueryResponse {
        var realHeaders: [String: String] = [:]
        if (!TeaUtils.Client.isUnset(headers.commonHeaders)) {
            realHeaders = headers.commonHeaders ?? [:]
        }
        if (!TeaUtils.Client.isUnset(headers.xAcsBtripAccessToken)) {
            realHeaders["x-acs-btrip-access-token"] = TeaUtils.Client.toJSONString(headers.xAcsBtripAccessToken);
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": realHeaders as! [String: String]
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "AllBaseCityInfoQuery",
            "version": "2022-05-20",
            "protocol": "HTTPS",
            "pathname": "/city/v1/code",
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(AllBaseCityInfoQueryResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func allBaseCityInfoQuery() async throws -> AllBaseCityInfoQueryResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: AllBaseCityInfoQueryHeaders = AllBaseCityInfoQueryHeaders([:])
        return try await allBaseCityInfoQueryWithOptions(headers as! AllBaseCityInfoQueryHeaders, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func applyAddWithOptions(_ tmpReq: ApplyAddRequest, _ headers: ApplyAddHeaders, _ runtime: TeaUtils.RuntimeOptions) async throws -> ApplyAddResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: ApplyAddShrinkRequest = ApplyAddShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        if (!TeaUtils.Client.isUnset(tmpReq.carRule)) {
            request.carRuleShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.carRule, "car_rule", "json")
        }
        if (!TeaUtils.Client.isUnset(tmpReq.defaultStandard)) {
            request.defaultStandardShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.defaultStandard, "default_standard", "json")
        }
        if (!TeaUtils.Client.isUnset(tmpReq.externalTravelerList)) {
            request.externalTravelerListShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.externalTravelerList, "external_traveler_list", "json")
        }
        if (!TeaUtils.Client.isUnset(tmpReq.externalTravelerStandard)) {
            request.externalTravelerStandardShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.externalTravelerStandard, "external_traveler_standard", "json")
        }
        if (!TeaUtils.Client.isUnset(tmpReq.hotelShare)) {
            request.hotelShareShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.hotelShare, "hotel_share", "json")
        }
        if (!TeaUtils.Client.isUnset(tmpReq.itineraryList)) {
            request.itineraryListShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.itineraryList, "itinerary_list", "json")
        }
        if (!TeaUtils.Client.isUnset(tmpReq.itinerarySetList)) {
            request.itinerarySetListShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.itinerarySetList, "itinerary_set_list", "json")
        }
        if (!TeaUtils.Client.isUnset(tmpReq.travelerList)) {
            request.travelerListShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.travelerList, "traveler_list", "json")
        }
        if (!TeaUtils.Client.isUnset(tmpReq.travelerStandard)) {
            request.travelerStandardShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.travelerStandard, "traveler_standard", "json")
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.budget)) {
            body["budget"] = request.budget!;
        }
        if (!TeaUtils.Client.isUnset(request.budgetMerge)) {
            body["budget_merge"] = request.budgetMerge!;
        }
        if (!TeaUtils.Client.isUnset(request.carRuleShrink)) {
            body["car_rule"] = request.carRuleShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.corpName)) {
            body["corp_name"] = request.corpName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.defaultStandardShrink)) {
            body["default_standard"] = request.defaultStandardShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.departId)) {
            body["depart_id"] = request.departId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.departName)) {
            body["depart_name"] = request.departName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.extendField)) {
            body["extend_field"] = request.extendField ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.externalTravelerListShrink)) {
            body["external_traveler_list"] = request.externalTravelerListShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.externalTravelerStandardShrink)) {
            body["external_traveler_standard"] = request.externalTravelerStandardShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.flightBudget)) {
            body["flight_budget"] = request.flightBudget!;
        }
        if (!TeaUtils.Client.isUnset(request.hotelBudget)) {
            body["hotel_budget"] = request.hotelBudget!;
        }
        if (!TeaUtils.Client.isUnset(request.hotelShareShrink)) {
            body["hotel_share"] = request.hotelShareShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.internationalFlightCabins)) {
            body["international_flight_cabins"] = request.internationalFlightCabins ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.intlFlightBudget)) {
            body["intl_flight_budget"] = request.intlFlightBudget!;
        }
        if (!TeaUtils.Client.isUnset(request.intlHotelBudget)) {
            body["intl_hotel_budget"] = request.intlHotelBudget!;
        }
        if (!TeaUtils.Client.isUnset(request.itineraryListShrink)) {
            body["itinerary_list"] = request.itineraryListShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.itineraryRule)) {
            body["itinerary_rule"] = request.itineraryRule!;
        }
        if (!TeaUtils.Client.isUnset(request.itinerarySetListShrink)) {
            body["itinerary_set_list"] = request.itinerarySetListShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.limitTraveler)) {
            body["limit_traveler"] = request.limitTraveler!;
        }
        if (!TeaUtils.Client.isUnset(request.paymentDepartmentId)) {
            body["payment_department_id"] = request.paymentDepartmentId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.paymentDepartmentName)) {
            body["payment_department_name"] = request.paymentDepartmentName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.status)) {
            body["status"] = request.status!;
        }
        if (!TeaUtils.Client.isUnset(request.subCorpId)) {
            body["sub_corp_id"] = request.subCorpId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.thirdpartApplyId)) {
            body["thirdpart_apply_id"] = request.thirdpartApplyId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.thirdpartBusinessId)) {
            body["thirdpart_business_id"] = request.thirdpartBusinessId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.thirdpartDepartId)) {
            body["thirdpart_depart_id"] = request.thirdpartDepartId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.togetherBookRule)) {
            body["together_book_rule"] = request.togetherBookRule!;
        }
        if (!TeaUtils.Client.isUnset(request.trainBudget)) {
            body["train_budget"] = request.trainBudget!;
        }
        if (!TeaUtils.Client.isUnset(request.travelerListShrink)) {
            body["traveler_list"] = request.travelerListShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.travelerStandardShrink)) {
            body["traveler_standard"] = request.travelerStandardShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.tripCause)) {
            body["trip_cause"] = request.tripCause ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.tripDay)) {
            body["trip_day"] = request.tripDay!;
        }
        if (!TeaUtils.Client.isUnset(request.tripTitle)) {
            body["trip_title"] = request.tripTitle ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.type)) {
            body["type"] = request.type!;
        }
        if (!TeaUtils.Client.isUnset(request.unionNo)) {
            body["union_no"] = request.unionNo ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.userId)) {
            body["user_id"] = request.userId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.userName)) {
            body["user_name"] = request.userName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.vehicleBudget)) {
            body["vehicle_budget"] = request.vehicleBudget!;
        }
        var realHeaders: [String: String] = [:]
        if (!TeaUtils.Client.isUnset(headers.commonHeaders)) {
            realHeaders = headers.commonHeaders ?? [:]
        }
        if (!TeaUtils.Client.isUnset(headers.xAcsBtripSoCorpToken)) {
            realHeaders["x-acs-btrip-so-corp-token"] = TeaUtils.Client.toJSONString(headers.xAcsBtripSoCorpToken);
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": realHeaders as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ApplyAdd",
            "version": "2022-05-20",
            "protocol": "HTTPS",
            "pathname": "/apply/v1/biz-trip",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ApplyAddResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func applyAdd(_ request: ApplyAddRequest) async throws -> ApplyAddResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: ApplyAddHeaders = ApplyAddHeaders([:])
        return try await applyAddWithOptions(request as! ApplyAddRequest, headers as! ApplyAddHeaders, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func applyApproveWithOptions(_ request: ApplyApproveRequest, _ headers: ApplyApproveHeaders, _ runtime: TeaUtils.RuntimeOptions) async throws -> ApplyApproveResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.applyId)) {
            body["apply_id"] = request.applyId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.note)) {
            body["note"] = request.note ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.operateTime)) {
            body["operate_time"] = request.operateTime ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.status)) {
            body["status"] = request.status!;
        }
        if (!TeaUtils.Client.isUnset(request.subCorpId)) {
            body["sub_corp_id"] = request.subCorpId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.userId)) {
            body["user_id"] = request.userId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.userName)) {
            body["user_name"] = request.userName ?? "";
        }
        var realHeaders: [String: String] = [:]
        if (!TeaUtils.Client.isUnset(headers.commonHeaders)) {
            realHeaders = headers.commonHeaders ?? [:]
        }
        if (!TeaUtils.Client.isUnset(headers.xAcsBtripSoCorpToken)) {
            realHeaders["x-acs-btrip-so-corp-token"] = TeaUtils.Client.toJSONString(headers.xAcsBtripSoCorpToken);
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": realHeaders as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ApplyApprove",
            "version": "2022-05-20",
            "protocol": "HTTPS",
            "pathname": "/apply/v1/biz-trip/action/approve",
            "method": "PUT",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ApplyApproveResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func applyApprove(_ request: ApplyApproveRequest) async throws -> ApplyApproveResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: ApplyApproveHeaders = ApplyApproveHeaders([:])
        return try await applyApproveWithOptions(request as! ApplyApproveRequest, headers as! ApplyApproveHeaders, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func applyExternalNodeStatusUpdateWithOptions(_ tmpReq: ApplyExternalNodeStatusUpdateRequest, _ headers: ApplyExternalNodeStatusUpdateHeaders, _ runtime: TeaUtils.RuntimeOptions) async throws -> ApplyExternalNodeStatusUpdateResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: ApplyExternalNodeStatusUpdateShrinkRequest = ApplyExternalNodeStatusUpdateShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        if (!TeaUtils.Client.isUnset(tmpReq.operationRecords)) {
            request.operationRecordsShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.operationRecords, "operation_records", "json")
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.nodeId)) {
            body["node_id"] = request.nodeId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.operationRecordsShrink)) {
            body["operation_records"] = request.operationRecordsShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.processActionResult)) {
            body["process_action_result"] = request.processActionResult ?? "";
        }
        var realHeaders: [String: String] = [:]
        if (!TeaUtils.Client.isUnset(headers.commonHeaders)) {
            realHeaders = headers.commonHeaders ?? [:]
        }
        if (!TeaUtils.Client.isUnset(headers.xAcsBtripCorpToken)) {
            realHeaders["x-acs-btrip-corp-token"] = TeaUtils.Client.toJSONString(headers.xAcsBtripCorpToken);
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": realHeaders as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ApplyExternalNodeStatusUpdate",
            "version": "2022-05-20",
            "protocol": "HTTPS",
            "pathname": "/apply/v1/external-nodes/action/status-update",
            "method": "PUT",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ApplyExternalNodeStatusUpdateResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func applyExternalNodeStatusUpdate(_ request: ApplyExternalNodeStatusUpdateRequest) async throws -> ApplyExternalNodeStatusUpdateResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: ApplyExternalNodeStatusUpdateHeaders = ApplyExternalNodeStatusUpdateHeaders([:])
        return try await applyExternalNodeStatusUpdateWithOptions(request as! ApplyExternalNodeStatusUpdateRequest, headers as! ApplyExternalNodeStatusUpdateHeaders, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func applyInvoiceTaskWithOptions(_ tmpReq: ApplyInvoiceTaskRequest, _ headers: ApplyInvoiceTaskHeaders, _ runtime: TeaUtils.RuntimeOptions) async throws -> ApplyInvoiceTaskResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: ApplyInvoiceTaskShrinkRequest = ApplyInvoiceTaskShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        if (!TeaUtils.Client.isUnset(tmpReq.invoiceTaskList)) {
            request.invoiceTaskListShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.invoiceTaskList, "invoice_task_list", "json")
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.billDate)) {
            body["bill_date"] = request.billDate ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.invoiceTaskListShrink)) {
            body["invoice_task_list"] = request.invoiceTaskListShrink ?? "";
        }
        var realHeaders: [String: String] = [:]
        if (!TeaUtils.Client.isUnset(headers.commonHeaders)) {
            realHeaders = headers.commonHeaders ?? [:]
        }
        if (!TeaUtils.Client.isUnset(headers.xAcsBtripSoCorpToken)) {
            realHeaders["x-acs-btrip-so-corp-token"] = TeaUtils.Client.toJSONString(headers.xAcsBtripSoCorpToken);
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": realHeaders as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ApplyInvoiceTask",
            "version": "2022-05-20",
            "protocol": "HTTPS",
            "pathname": "/invoice/v1/apply-invoice-task",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ApplyInvoiceTaskResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func applyInvoiceTask(_ request: ApplyInvoiceTaskRequest) async throws -> ApplyInvoiceTaskResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: ApplyInvoiceTaskHeaders = ApplyInvoiceTaskHeaders([:])
        return try await applyInvoiceTaskWithOptions(request as! ApplyInvoiceTaskRequest, headers as! ApplyInvoiceTaskHeaders, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func applyListQueryWithOptions(_ request: ApplyListQueryRequest, _ headers: ApplyListQueryHeaders, _ runtime: TeaUtils.RuntimeOptions) async throws -> ApplyListQueryResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.allApply)) {
            query["all_apply"] = request.allApply!;
        }
        if (!TeaUtils.Client.isUnset(request.departId)) {
            query["depart_id"] = request.departId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.endTime)) {
            query["end_time"] = request.endTime ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.gmtModified)) {
            query["gmt_modified"] = request.gmtModified ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.onlyShangLvApply)) {
            query["only_shang_lv_apply"] = request.onlyShangLvApply!;
        }
        if (!TeaUtils.Client.isUnset(request.page)) {
            query["page"] = request.page!;
        }
        if (!TeaUtils.Client.isUnset(request.pageSize)) {
            query["page_size"] = request.pageSize!;
        }
        if (!TeaUtils.Client.isUnset(request.startTime)) {
            query["start_time"] = request.startTime ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.subCorpId)) {
            query["sub_corp_id"] = request.subCorpId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.type)) {
            query["type"] = request.type!;
        }
        if (!TeaUtils.Client.isUnset(request.unionNo)) {
            query["union_no"] = request.unionNo ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.userId)) {
            query["user_id"] = request.userId ?? "";
        }
        var realHeaders: [String: String] = [:]
        if (!TeaUtils.Client.isUnset(headers.commonHeaders)) {
            realHeaders = headers.commonHeaders ?? [:]
        }
        if (!TeaUtils.Client.isUnset(headers.xAcsBtripSoCorpToken)) {
            realHeaders["x-acs-btrip-so-corp-token"] = TeaUtils.Client.toJSONString(headers.xAcsBtripSoCorpToken);
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": realHeaders as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ApplyListQuery",
            "version": "2022-05-20",
            "protocol": "HTTPS",
            "pathname": "/apply/v1/biz-trips",
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ApplyListQueryResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func applyListQuery(_ request: ApplyListQueryRequest) async throws -> ApplyListQueryResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: ApplyListQueryHeaders = ApplyListQueryHeaders([:])
        return try await applyListQueryWithOptions(request as! ApplyListQueryRequest, headers as! ApplyListQueryHeaders, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func applyModifyWithOptions(_ tmpReq: ApplyModifyRequest, _ headers: ApplyModifyHeaders, _ runtime: TeaUtils.RuntimeOptions) async throws -> ApplyModifyResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: ApplyModifyShrinkRequest = ApplyModifyShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        if (!TeaUtils.Client.isUnset(tmpReq.carRule)) {
            request.carRuleShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.carRule, "car_rule", "json")
        }
        if (!TeaUtils.Client.isUnset(tmpReq.defaultStandard)) {
            request.defaultStandardShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.defaultStandard, "default_standard", "json")
        }
        if (!TeaUtils.Client.isUnset(tmpReq.externalTravelerList)) {
            request.externalTravelerListShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.externalTravelerList, "external_traveler_list", "json")
        }
        if (!TeaUtils.Client.isUnset(tmpReq.externalTravelerStandard)) {
            request.externalTravelerStandardShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.externalTravelerStandard, "external_traveler_standard", "json")
        }
        if (!TeaUtils.Client.isUnset(tmpReq.hotelShare)) {
            request.hotelShareShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.hotelShare, "hotel_share", "json")
        }
        if (!TeaUtils.Client.isUnset(tmpReq.itineraryList)) {
            request.itineraryListShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.itineraryList, "itinerary_list", "json")
        }
        if (!TeaUtils.Client.isUnset(tmpReq.itinerarySetList)) {
            request.itinerarySetListShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.itinerarySetList, "itinerary_set_list", "json")
        }
        if (!TeaUtils.Client.isUnset(tmpReq.travelerList)) {
            request.travelerListShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.travelerList, "traveler_list", "json")
        }
        if (!TeaUtils.Client.isUnset(tmpReq.travelerStandard)) {
            request.travelerStandardShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.travelerStandard, "traveler_standard", "json")
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.budget)) {
            body["budget"] = request.budget!;
        }
        if (!TeaUtils.Client.isUnset(request.budgetMerge)) {
            body["budget_merge"] = request.budgetMerge!;
        }
        if (!TeaUtils.Client.isUnset(request.carRuleShrink)) {
            body["car_rule"] = request.carRuleShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.corpName)) {
            body["corp_name"] = request.corpName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.defaultStandardShrink)) {
            body["default_standard"] = request.defaultStandardShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.departId)) {
            body["depart_id"] = request.departId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.departName)) {
            body["depart_name"] = request.departName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.extendField)) {
            body["extend_field"] = request.extendField ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.externalTravelerListShrink)) {
            body["external_traveler_list"] = request.externalTravelerListShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.externalTravelerStandardShrink)) {
            body["external_traveler_standard"] = request.externalTravelerStandardShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.flightBudget)) {
            body["flight_budget"] = request.flightBudget!;
        }
        if (!TeaUtils.Client.isUnset(request.hotelBudget)) {
            body["hotel_budget"] = request.hotelBudget!;
        }
        if (!TeaUtils.Client.isUnset(request.hotelShareShrink)) {
            body["hotel_share"] = request.hotelShareShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.intlFlightBudget)) {
            body["intl_flight_budget"] = request.intlFlightBudget!;
        }
        if (!TeaUtils.Client.isUnset(request.intlHotelBudget)) {
            body["intl_hotel_budget"] = request.intlHotelBudget!;
        }
        if (!TeaUtils.Client.isUnset(request.itineraryListShrink)) {
            body["itinerary_list"] = request.itineraryListShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.itineraryRule)) {
            body["itinerary_rule"] = request.itineraryRule!;
        }
        if (!TeaUtils.Client.isUnset(request.itinerarySetListShrink)) {
            body["itinerary_set_list"] = request.itinerarySetListShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.limitTraveler)) {
            body["limit_traveler"] = request.limitTraveler!;
        }
        if (!TeaUtils.Client.isUnset(request.paymentDepartmentId)) {
            body["payment_department_id"] = request.paymentDepartmentId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.paymentDepartmentName)) {
            body["payment_department_name"] = request.paymentDepartmentName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.status)) {
            body["status"] = request.status!;
        }
        if (!TeaUtils.Client.isUnset(request.subCorpId)) {
            body["sub_corp_id"] = request.subCorpId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.thirdpartApplyId)) {
            body["thirdpart_apply_id"] = request.thirdpartApplyId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.thirdpartBusinessId)) {
            body["thirdpart_business_id"] = request.thirdpartBusinessId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.thirdpartDepartId)) {
            body["thirdpart_depart_id"] = request.thirdpartDepartId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.togetherBookRule)) {
            body["together_book_rule"] = request.togetherBookRule!;
        }
        if (!TeaUtils.Client.isUnset(request.trainBudget)) {
            body["train_budget"] = request.trainBudget!;
        }
        if (!TeaUtils.Client.isUnset(request.travelerListShrink)) {
            body["traveler_list"] = request.travelerListShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.travelerStandardShrink)) {
            body["traveler_standard"] = request.travelerStandardShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.tripCause)) {
            body["trip_cause"] = request.tripCause ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.tripDay)) {
            body["trip_day"] = request.tripDay!;
        }
        if (!TeaUtils.Client.isUnset(request.tripTitle)) {
            body["trip_title"] = request.tripTitle ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.unionNo)) {
            body["union_no"] = request.unionNo ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.userId)) {
            body["user_id"] = request.userId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.userName)) {
            body["user_name"] = request.userName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.vehicleBudget)) {
            body["vehicle_budget"] = request.vehicleBudget!;
        }
        var realHeaders: [String: String] = [:]
        if (!TeaUtils.Client.isUnset(headers.commonHeaders)) {
            realHeaders = headers.commonHeaders ?? [:]
        }
        if (!TeaUtils.Client.isUnset(headers.xAcsBtripSoCorpToken)) {
            realHeaders["x-acs-btrip-so-corp-token"] = TeaUtils.Client.toJSONString(headers.xAcsBtripSoCorpToken);
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": realHeaders as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ApplyModify",
            "version": "2022-05-20",
            "protocol": "HTTPS",
            "pathname": "/apply/v1/biz-trip",
            "method": "PUT",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ApplyModifyResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func applyModify(_ request: ApplyModifyRequest) async throws -> ApplyModifyResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: ApplyModifyHeaders = ApplyModifyHeaders([:])
        return try await applyModifyWithOptions(request as! ApplyModifyRequest, headers as! ApplyModifyHeaders, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func applyQueryWithOptions(_ request: ApplyQueryRequest, _ headers: ApplyQueryHeaders, _ runtime: TeaUtils.RuntimeOptions) async throws -> ApplyQueryResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.applyId)) {
            query["apply_id"] = request.applyId!;
        }
        if (!TeaUtils.Client.isUnset(request.applyShowId)) {
            query["apply_show_id"] = request.applyShowId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.subCorpId)) {
            query["sub_corp_id"] = request.subCorpId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.thirdpartApplyId)) {
            query["thirdpart_apply_id"] = request.thirdpartApplyId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.type)) {
            query["type"] = request.type!;
        }
        var realHeaders: [String: String] = [:]
        if (!TeaUtils.Client.isUnset(headers.commonHeaders)) {
            realHeaders = headers.commonHeaders ?? [:]
        }
        if (!TeaUtils.Client.isUnset(headers.xAcsBtripSoCorpToken)) {
            realHeaders["x-acs-btrip-so-corp-token"] = TeaUtils.Client.toJSONString(headers.xAcsBtripSoCorpToken);
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": realHeaders as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ApplyQuery",
            "version": "2022-05-20",
            "protocol": "HTTPS",
            "pathname": "/apply/v1/biz-trip",
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ApplyQueryResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func applyQuery(_ request: ApplyQueryRequest) async throws -> ApplyQueryResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: ApplyQueryHeaders = ApplyQueryHeaders([:])
        return try await applyQueryWithOptions(request as! ApplyQueryRequest, headers as! ApplyQueryHeaders, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func applyTripTaskExecuteWithOptions(_ request: ApplyTripTaskExecuteRequest, _ headers: ApplyTripTaskExecuteHeaders, _ runtime: TeaUtils.RuntimeOptions) async throws -> ApplyTripTaskExecuteResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.actionFrom)) {
            body["action_from"] = request.actionFrom ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.comment)) {
            body["comment"] = request.comment ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.taskAction)) {
            body["task_action"] = request.taskAction ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.taskId)) {
            body["task_id"] = request.taskId!;
        }
        if (!TeaUtils.Client.isUnset(request.userId)) {
            body["user_id"] = request.userId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.userName)) {
            body["user_name"] = request.userName ?? "";
        }
        var realHeaders: [String: String] = [:]
        if (!TeaUtils.Client.isUnset(headers.commonHeaders)) {
            realHeaders = headers.commonHeaders ?? [:]
        }
        if (!TeaUtils.Client.isUnset(headers.xAcsBtripSoCorpToken)) {
            realHeaders["x-acs-btrip-so-corp-token"] = TeaUtils.Client.toJSONString(headers.xAcsBtripSoCorpToken);
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": realHeaders as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ApplyTripTaskExecute",
            "version": "2022-05-20",
            "protocol": "HTTPS",
            "pathname": "/apply/v1/trip-task/action/execute",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ApplyTripTaskExecuteResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func applyTripTaskExecute(_ request: ApplyTripTaskExecuteRequest) async throws -> ApplyTripTaskExecuteResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: ApplyTripTaskExecuteHeaders = ApplyTripTaskExecuteHeaders([:])
        return try await applyTripTaskExecuteWithOptions(request as! ApplyTripTaskExecuteRequest, headers as! ApplyTripTaskExecuteHeaders, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func baseCityInfoSearchWithOptions(_ request: BaseCityInfoSearchRequest, _ headers: BaseCityInfoSearchHeaders, _ runtime: TeaUtils.RuntimeOptions) async throws -> BaseCityInfoSearchResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.keyword)) {
            query["keyword"] = request.keyword ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.region)) {
            query["region"] = request.region ?? "";
        }
        var realHeaders: [String: String] = [:]
        if (!TeaUtils.Client.isUnset(headers.commonHeaders)) {
            realHeaders = headers.commonHeaders ?? [:]
        }
        if (!TeaUtils.Client.isUnset(headers.xAcsBtripAccessToken)) {
            realHeaders["x-acs-btrip-access-token"] = TeaUtils.Client.toJSONString(headers.xAcsBtripAccessToken);
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": realHeaders as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "BaseCityInfoSearch",
            "version": "2022-05-20",
            "protocol": "HTTPS",
            "pathname": "/city/v1/cities/action/search",
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(BaseCityInfoSearchResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func baseCityInfoSearch(_ request: BaseCityInfoSearchRequest) async throws -> BaseCityInfoSearchResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: BaseCityInfoSearchHeaders = BaseCityInfoSearchHeaders([:])
        return try await baseCityInfoSearchWithOptions(request as! BaseCityInfoSearchRequest, headers as! BaseCityInfoSearchHeaders, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func btripBillInfoAdjustWithOptions(_ request: BtripBillInfoAdjustRequest, _ headers: BtripBillInfoAdjustHeaders, _ runtime: TeaUtils.RuntimeOptions) async throws -> BtripBillInfoAdjustResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.primaryId)) {
            body["primary_id"] = request.primaryId!;
        }
        if (!TeaUtils.Client.isUnset(request.thirdPartCostCenterId)) {
            body["third_part_cost_center_id"] = request.thirdPartCostCenterId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.thirdPartDepartmentId)) {
            body["third_part_department_id"] = request.thirdPartDepartmentId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.thirdPartInvoiceId)) {
            body["third_part_invoice_id"] = request.thirdPartInvoiceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.thirdPartProjectId)) {
            body["third_part_project_id"] = request.thirdPartProjectId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.userId)) {
            body["user_id"] = request.userId ?? "";
        }
        var realHeaders: [String: String] = [:]
        if (!TeaUtils.Client.isUnset(headers.commonHeaders)) {
            realHeaders = headers.commonHeaders ?? [:]
        }
        if (!TeaUtils.Client.isUnset(headers.xAcsBtripCorpToken)) {
            realHeaders["x-acs-btrip-corp-token"] = TeaUtils.Client.toJSONString(headers.xAcsBtripCorpToken);
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": realHeaders as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "BtripBillInfoAdjust",
            "version": "2022-05-20",
            "protocol": "HTTPS",
            "pathname": "/bill/v1/info/action/adjust",
            "method": "PUT",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(BtripBillInfoAdjustResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func btripBillInfoAdjust(_ request: BtripBillInfoAdjustRequest) async throws -> BtripBillInfoAdjustResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: BtripBillInfoAdjustHeaders = BtripBillInfoAdjustHeaders([:])
        return try await btripBillInfoAdjustWithOptions(request as! BtripBillInfoAdjustRequest, headers as! BtripBillInfoAdjustHeaders, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func carApplyAddWithOptions(_ tmpReq: CarApplyAddRequest, _ headers: CarApplyAddHeaders, _ runtime: TeaUtils.RuntimeOptions) async throws -> CarApplyAddResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: CarApplyAddShrinkRequest = CarApplyAddShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        if (!TeaUtils.Client.isUnset(tmpReq.travelerStandard)) {
            request.travelerStandardShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.travelerStandard, "traveler_standard", "json")
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.cause)) {
            body["cause"] = request.cause ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.city)) {
            body["city"] = request.city ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.cityCodeSet)) {
            body["city_code_set"] = request.cityCodeSet ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.date)) {
            body["date"] = request.date ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.finishedDate)) {
            body["finished_date"] = request.finishedDate ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.projectCode)) {
            body["project_code"] = request.projectCode ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.projectName)) {
            body["project_name"] = request.projectName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.status)) {
            body["status"] = request.status!;
        }
        if (!TeaUtils.Client.isUnset(request.thirdPartApplyId)) {
            body["third_part_apply_id"] = request.thirdPartApplyId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.thirdPartCostCenterId)) {
            body["third_part_cost_center_id"] = request.thirdPartCostCenterId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.thirdPartInvoiceId)) {
            body["third_part_invoice_id"] = request.thirdPartInvoiceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.timesTotal)) {
            body["times_total"] = request.timesTotal!;
        }
        if (!TeaUtils.Client.isUnset(request.timesType)) {
            body["times_type"] = request.timesType!;
        }
        if (!TeaUtils.Client.isUnset(request.timesUsed)) {
            body["times_used"] = request.timesUsed!;
        }
        if (!TeaUtils.Client.isUnset(request.title)) {
            body["title"] = request.title ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.travelerStandardShrink)) {
            body["traveler_standard"] = request.travelerStandardShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.userId)) {
            body["user_id"] = request.userId ?? "";
        }
        var realHeaders: [String: String] = [:]
        if (!TeaUtils.Client.isUnset(headers.commonHeaders)) {
            realHeaders = headers.commonHeaders ?? [:]
        }
        if (!TeaUtils.Client.isUnset(headers.xAcsBtripSoCorpToken)) {
            realHeaders["x-acs-btrip-so-corp-token"] = TeaUtils.Client.toJSONString(headers.xAcsBtripSoCorpToken);
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": realHeaders as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CarApplyAdd",
            "version": "2022-05-20",
            "protocol": "HTTPS",
            "pathname": "/apply/v1/car",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CarApplyAddResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func carApplyAdd(_ request: CarApplyAddRequest) async throws -> CarApplyAddResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: CarApplyAddHeaders = CarApplyAddHeaders([:])
        return try await carApplyAddWithOptions(request as! CarApplyAddRequest, headers as! CarApplyAddHeaders, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func carApplyModifyWithOptions(_ request: CarApplyModifyRequest, _ headers: CarApplyModifyHeaders, _ runtime: TeaUtils.RuntimeOptions) async throws -> CarApplyModifyResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.operateTime)) {
            body["operate_time"] = request.operateTime ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.remark)) {
            body["remark"] = request.remark ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.status)) {
            body["status"] = request.status!;
        }
        if (!TeaUtils.Client.isUnset(request.thirdPartApplyId)) {
            body["third_part_apply_id"] = request.thirdPartApplyId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.userId)) {
            body["user_id"] = request.userId ?? "";
        }
        var realHeaders: [String: String] = [:]
        if (!TeaUtils.Client.isUnset(headers.commonHeaders)) {
            realHeaders = headers.commonHeaders ?? [:]
        }
        if (!TeaUtils.Client.isUnset(headers.xAcsBtripSoCorpToken)) {
            realHeaders["x-acs-btrip-so-corp-token"] = TeaUtils.Client.toJSONString(headers.xAcsBtripSoCorpToken);
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": realHeaders as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CarApplyModify",
            "version": "2022-05-20",
            "protocol": "HTTPS",
            "pathname": "/apply/v1/car",
            "method": "PUT",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CarApplyModifyResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func carApplyModify(_ request: CarApplyModifyRequest) async throws -> CarApplyModifyResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: CarApplyModifyHeaders = CarApplyModifyHeaders([:])
        return try await carApplyModifyWithOptions(request as! CarApplyModifyRequest, headers as! CarApplyModifyHeaders, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func carApplyQueryWithOptions(_ request: CarApplyQueryRequest, _ headers: CarApplyQueryHeaders, _ runtime: TeaUtils.RuntimeOptions) async throws -> CarApplyQueryResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.createdEndAt)) {
            query["created_end_at"] = request.createdEndAt ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.createdStartAt)) {
            query["created_start_at"] = request.createdStartAt ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.pageNumber)) {
            query["page_number"] = request.pageNumber!;
        }
        if (!TeaUtils.Client.isUnset(request.pageSize)) {
            query["page_size"] = request.pageSize!;
        }
        if (!TeaUtils.Client.isUnset(request.thirdPartApplyId)) {
            query["third_part_apply_id"] = request.thirdPartApplyId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.userId)) {
            query["user_id"] = request.userId ?? "";
        }
        var realHeaders: [String: String] = [:]
        if (!TeaUtils.Client.isUnset(headers.commonHeaders)) {
            realHeaders = headers.commonHeaders ?? [:]
        }
        if (!TeaUtils.Client.isUnset(headers.xAcsBtripSoCorpToken)) {
            realHeaders["x-acs-btrip-so-corp-token"] = TeaUtils.Client.toJSONString(headers.xAcsBtripSoCorpToken);
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": realHeaders as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CarApplyQuery",
            "version": "2022-05-20",
            "protocol": "HTTPS",
            "pathname": "/apply/v1/car",
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CarApplyQueryResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func carApplyQuery(_ request: CarApplyQueryRequest) async throws -> CarApplyQueryResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: CarApplyQueryHeaders = CarApplyQueryHeaders([:])
        return try await carApplyQueryWithOptions(request as! CarApplyQueryRequest, headers as! CarApplyQueryHeaders, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func carBillSettlementQueryWithOptions(_ request: CarBillSettlementQueryRequest, _ headers: CarBillSettlementQueryHeaders, _ runtime: TeaUtils.RuntimeOptions) async throws -> CarBillSettlementQueryResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.pageNo)) {
            query["page_no"] = request.pageNo!;
        }
        if (!TeaUtils.Client.isUnset(request.pageSize)) {
            query["page_size"] = request.pageSize!;
        }
        if (!TeaUtils.Client.isUnset(request.periodEnd)) {
            query["period_end"] = request.periodEnd ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.periodStart)) {
            query["period_start"] = request.periodStart ?? "";
        }
        var realHeaders: [String: String] = [:]
        if (!TeaUtils.Client.isUnset(headers.commonHeaders)) {
            realHeaders = headers.commonHeaders ?? [:]
        }
        if (!TeaUtils.Client.isUnset(headers.xAcsBtripSoCorpToken)) {
            realHeaders["x-acs-btrip-so-corp-token"] = TeaUtils.Client.toJSONString(headers.xAcsBtripSoCorpToken);
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": realHeaders as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CarBillSettlementQuery",
            "version": "2022-05-20",
            "protocol": "HTTPS",
            "pathname": "/car/v1/bill-settlement",
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CarBillSettlementQueryResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func carBillSettlementQuery(_ request: CarBillSettlementQueryRequest) async throws -> CarBillSettlementQueryResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: CarBillSettlementQueryHeaders = CarBillSettlementQueryHeaders([:])
        return try await carBillSettlementQueryWithOptions(request as! CarBillSettlementQueryRequest, headers as! CarBillSettlementQueryHeaders, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func carOrderListQueryWithOptions(_ request: CarOrderListQueryRequest, _ headers: CarOrderListQueryHeaders, _ runtime: TeaUtils.RuntimeOptions) async throws -> CarOrderListQueryResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.allApply)) {
            query["all_apply"] = request.allApply!;
        }
        if (!TeaUtils.Client.isUnset(request.applyId)) {
            query["apply_id"] = request.applyId!;
        }
        if (!TeaUtils.Client.isUnset(request.departId)) {
            query["depart_id"] = request.departId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.endTime)) {
            query["end_time"] = request.endTime ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.page)) {
            query["page"] = request.page!;
        }
        if (!TeaUtils.Client.isUnset(request.pageSize)) {
            query["page_size"] = request.pageSize!;
        }
        if (!TeaUtils.Client.isUnset(request.startTime)) {
            query["start_time"] = request.startTime ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.thirdpartApplyId)) {
            query["thirdpart_apply_id"] = request.thirdpartApplyId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.updateEndTime)) {
            query["update_end_time"] = request.updateEndTime ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.updateStartTime)) {
            query["update_start_time"] = request.updateStartTime ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.userId)) {
            query["user_id"] = request.userId ?? "";
        }
        var realHeaders: [String: String] = [:]
        if (!TeaUtils.Client.isUnset(headers.commonHeaders)) {
            realHeaders = headers.commonHeaders ?? [:]
        }
        if (!TeaUtils.Client.isUnset(headers.xAcsBtripSoCorpToken)) {
            realHeaders["x-acs-btrip-so-corp-token"] = TeaUtils.Client.toJSONString(headers.xAcsBtripSoCorpToken);
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": realHeaders as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CarOrderListQuery",
            "version": "2022-05-20",
            "protocol": "HTTPS",
            "pathname": "/car/v1/order-list",
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CarOrderListQueryResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func carOrderListQuery(_ request: CarOrderListQueryRequest) async throws -> CarOrderListQueryResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: CarOrderListQueryHeaders = CarOrderListQueryHeaders([:])
        return try await carOrderListQueryWithOptions(request as! CarOrderListQueryRequest, headers as! CarOrderListQueryHeaders, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func carOrderQueryWithOptions(_ request: CarOrderQueryRequest, _ headers: CarOrderQueryHeaders, _ runtime: TeaUtils.RuntimeOptions) async throws -> CarOrderQueryResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.orderId)) {
            query["order_id"] = request.orderId!;
        }
        if (!TeaUtils.Client.isUnset(request.subOrderId)) {
            query["sub_order_id"] = request.subOrderId!;
        }
        var realHeaders: [String: String] = [:]
        if (!TeaUtils.Client.isUnset(headers.commonHeaders)) {
            realHeaders = headers.commonHeaders ?? [:]
        }
        if (!TeaUtils.Client.isUnset(headers.xAcsBtripSoCorpToken)) {
            realHeaders["x-acs-btrip-so-corp-token"] = TeaUtils.Client.toJSONString(headers.xAcsBtripSoCorpToken);
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": realHeaders as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CarOrderQuery",
            "version": "2022-05-20",
            "protocol": "HTTPS",
            "pathname": "/car/v1/order",
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CarOrderQueryResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func carOrderQuery(_ request: CarOrderQueryRequest) async throws -> CarOrderQueryResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: CarOrderQueryHeaders = CarOrderQueryHeaders([:])
        return try await carOrderQueryWithOptions(request as! CarOrderQueryRequest, headers as! CarOrderQueryHeaders, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func carSceneQueryWithOptions(_ headers: CarSceneQueryHeaders, _ runtime: TeaUtils.RuntimeOptions) async throws -> CarSceneQueryResponse {
        var realHeaders: [String: String] = [:]
        if (!TeaUtils.Client.isUnset(headers.commonHeaders)) {
            realHeaders = headers.commonHeaders ?? [:]
        }
        if (!TeaUtils.Client.isUnset(headers.xAcsBtripCorpToken)) {
            realHeaders["x-acs-btrip-corp-token"] = TeaUtils.Client.toJSONString(headers.xAcsBtripCorpToken);
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": realHeaders as! [String: String]
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CarSceneQuery",
            "version": "2022-05-20",
            "protocol": "HTTPS",
            "pathname": "/car/v1/scenes",
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CarSceneQueryResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func carSceneQuery() async throws -> CarSceneQueryResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: CarSceneQueryHeaders = CarSceneQueryHeaders([:])
        return try await carSceneQueryWithOptions(headers as! CarSceneQueryHeaders, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func channelCorpCreateWithOptions(_ request: ChannelCorpCreateRequest, _ headers: ChannelCorpCreateHeaders, _ runtime: TeaUtils.RuntimeOptions) async throws -> ChannelCorpCreateResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.administratorName)) {
            body["administrator_name"] = request.administratorName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.administratorPhone)) {
            body["administrator_phone"] = request.administratorPhone ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.city)) {
            body["city"] = request.city ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.corpName)) {
            body["corp_name"] = request.corpName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.province)) {
            body["province"] = request.province ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.scope)) {
            body["scope"] = request.scope!;
        }
        if (!TeaUtils.Client.isUnset(request.thirdCorpId)) {
            body["third_corp_id"] = request.thirdCorpId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.userId)) {
            body["user_id"] = request.userId ?? "";
        }
        var realHeaders: [String: String] = [:]
        if (!TeaUtils.Client.isUnset(headers.commonHeaders)) {
            realHeaders = headers.commonHeaders ?? [:]
        }
        if (!TeaUtils.Client.isUnset(headers.xAcsBtripCorpToken)) {
            realHeaders["x-acs-btrip-corp-token"] = TeaUtils.Client.toJSONString(headers.xAcsBtripCorpToken);
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": realHeaders as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ChannelCorpCreate",
            "version": "2022-05-20",
            "protocol": "HTTPS",
            "pathname": "/corp/v1/channelCorps",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ChannelCorpCreateResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func channelCorpCreate(_ request: ChannelCorpCreateRequest) async throws -> ChannelCorpCreateResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: ChannelCorpCreateHeaders = ChannelCorpCreateHeaders([:])
        return try await channelCorpCreateWithOptions(request as! ChannelCorpCreateRequest, headers as! ChannelCorpCreateHeaders, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func citySearchWithOptions(_ request: CitySearchRequest, _ headers: CitySearchHeaders, _ runtime: TeaUtils.RuntimeOptions) async throws -> CitySearchResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.keyword)) {
            query["keyword"] = request.keyword ?? "";
        }
        var realHeaders: [String: String] = [:]
        if (!TeaUtils.Client.isUnset(headers.commonHeaders)) {
            realHeaders = headers.commonHeaders ?? [:]
        }
        if (!TeaUtils.Client.isUnset(headers.xAcsBtripSoCorpToken)) {
            realHeaders["x-acs-btrip-so-corp-token"] = TeaUtils.Client.toJSONString(headers.xAcsBtripSoCorpToken);
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": realHeaders as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CitySearch",
            "version": "2022-05-20",
            "protocol": "HTTPS",
            "pathname": "/city/v1/city",
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CitySearchResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func citySearch(_ request: CitySearchRequest) async throws -> CitySearchResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: CitySearchHeaders = CitySearchHeaders([:])
        return try await citySearchWithOptions(request as! CitySearchRequest, headers as! CitySearchHeaders, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func commonApplyQueryWithOptions(_ request: CommonApplyQueryRequest, _ headers: CommonApplyQueryHeaders, _ runtime: TeaUtils.RuntimeOptions) async throws -> CommonApplyQueryResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.applyId)) {
            query["apply_id"] = request.applyId!;
        }
        if (!TeaUtils.Client.isUnset(request.bizCategory)) {
            query["biz_category"] = request.bizCategory!;
        }
        if (!TeaUtils.Client.isUnset(request.businessInstanceId)) {
            query["business_instance_id"] = request.businessInstanceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.userId)) {
            query["user_id"] = request.userId ?? "";
        }
        var realHeaders: [String: String] = [:]
        if (!TeaUtils.Client.isUnset(headers.commonHeaders)) {
            realHeaders = headers.commonHeaders ?? [:]
        }
        if (!TeaUtils.Client.isUnset(headers.xAcsBtripSoCorpToken)) {
            realHeaders["x-acs-btrip-so-corp-token"] = TeaUtils.Client.toJSONString(headers.xAcsBtripSoCorpToken);
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": realHeaders as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CommonApplyQuery",
            "version": "2022-05-20",
            "protocol": "HTTPS",
            "pathname": "/apply/v1/common",
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CommonApplyQueryResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func commonApplyQuery(_ request: CommonApplyQueryRequest) async throws -> CommonApplyQueryResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: CommonApplyQueryHeaders = CommonApplyQueryHeaders([:])
        return try await commonApplyQueryWithOptions(request as! CommonApplyQueryRequest, headers as! CommonApplyQueryHeaders, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func commonApplySyncWithOptions(_ request: CommonApplySyncRequest, _ headers: CommonApplySyncHeaders, _ runtime: TeaUtils.RuntimeOptions) async throws -> CommonApplySyncResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.applyId)) {
            query["apply_id"] = request.applyId!;
        }
        if (!TeaUtils.Client.isUnset(request.bizCategory)) {
            query["biz_category"] = request.bizCategory!;
        }
        if (!TeaUtils.Client.isUnset(request.remark)) {
            query["remark"] = request.remark ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.status)) {
            query["status"] = request.status!;
        }
        if (!TeaUtils.Client.isUnset(request.thirdpartyFlowId)) {
            query["thirdparty_flow_id"] = request.thirdpartyFlowId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.userId)) {
            query["user_id"] = request.userId ?? "";
        }
        var realHeaders: [String: String] = [:]
        if (!TeaUtils.Client.isUnset(headers.commonHeaders)) {
            realHeaders = headers.commonHeaders ?? [:]
        }
        if (!TeaUtils.Client.isUnset(headers.xAcsBtripSoCorpToken)) {
            realHeaders["x-acs-btrip-so-corp-token"] = TeaUtils.Client.toJSONString(headers.xAcsBtripSoCorpToken);
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": realHeaders as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CommonApplySync",
            "version": "2022-05-20",
            "protocol": "HTTPS",
            "pathname": "/apply/v1/syn-common",
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CommonApplySyncResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func commonApplySync(_ request: CommonApplySyncRequest) async throws -> CommonApplySyncResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: CommonApplySyncHeaders = CommonApplySyncHeaders([:])
        return try await commonApplySyncWithOptions(request as! CommonApplySyncRequest, headers as! CommonApplySyncHeaders, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func cooperatorFlightBillSettlementQueryWithOptions(_ request: CooperatorFlightBillSettlementQueryRequest, _ headers: CooperatorFlightBillSettlementQueryHeaders, _ runtime: TeaUtils.RuntimeOptions) async throws -> CooperatorFlightBillSettlementQueryResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.cooperatorId)) {
            query["cooperator_id"] = request.cooperatorId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.pageNo)) {
            query["page_no"] = request.pageNo!;
        }
        if (!TeaUtils.Client.isUnset(request.pageSize)) {
            query["page_size"] = request.pageSize!;
        }
        if (!TeaUtils.Client.isUnset(request.periodEnd)) {
            query["period_end"] = request.periodEnd ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.periodStart)) {
            query["period_start"] = request.periodStart ?? "";
        }
        var realHeaders: [String: String] = [:]
        if (!TeaUtils.Client.isUnset(headers.commonHeaders)) {
            realHeaders = headers.commonHeaders ?? [:]
        }
        if (!TeaUtils.Client.isUnset(headers.xAcsBtripCorpToken)) {
            realHeaders["x-acs-btrip-corp-token"] = TeaUtils.Client.toJSONString(headers.xAcsBtripCorpToken);
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": realHeaders as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CooperatorFlightBillSettlementQuery",
            "version": "2022-05-20",
            "protocol": "HTTPS",
            "pathname": "/cooperator-flight/v1/bill-settlement",
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CooperatorFlightBillSettlementQueryResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func cooperatorFlightBillSettlementQuery(_ request: CooperatorFlightBillSettlementQueryRequest) async throws -> CooperatorFlightBillSettlementQueryResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: CooperatorFlightBillSettlementQueryHeaders = CooperatorFlightBillSettlementQueryHeaders([:])
        return try await cooperatorFlightBillSettlementQueryWithOptions(request as! CooperatorFlightBillSettlementQueryRequest, headers as! CooperatorFlightBillSettlementQueryHeaders, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func cooperatorHotelBillSettlementQueryWithOptions(_ request: CooperatorHotelBillSettlementQueryRequest, _ headers: CooperatorHotelBillSettlementQueryHeaders, _ runtime: TeaUtils.RuntimeOptions) async throws -> CooperatorHotelBillSettlementQueryResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.cooperatorId)) {
            query["cooperator_id"] = request.cooperatorId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.pageNo)) {
            query["page_no"] = request.pageNo!;
        }
        if (!TeaUtils.Client.isUnset(request.pageSize)) {
            query["page_size"] = request.pageSize!;
        }
        if (!TeaUtils.Client.isUnset(request.periodEnd)) {
            query["period_end"] = request.periodEnd ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.periodStart)) {
            query["period_start"] = request.periodStart ?? "";
        }
        var realHeaders: [String: String] = [:]
        if (!TeaUtils.Client.isUnset(headers.commonHeaders)) {
            realHeaders = headers.commonHeaders ?? [:]
        }
        if (!TeaUtils.Client.isUnset(headers.xAcsBtripCorpToken)) {
            realHeaders["x-acs-btrip-corp-token"] = TeaUtils.Client.toJSONString(headers.xAcsBtripCorpToken);
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": realHeaders as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CooperatorHotelBillSettlementQuery",
            "version": "2022-05-20",
            "protocol": "HTTPS",
            "pathname": "/cooperator-hotel/v1/bill-settlement",
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CooperatorHotelBillSettlementQueryResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func cooperatorHotelBillSettlementQuery(_ request: CooperatorHotelBillSettlementQueryRequest) async throws -> CooperatorHotelBillSettlementQueryResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: CooperatorHotelBillSettlementQueryHeaders = CooperatorHotelBillSettlementQueryHeaders([:])
        return try await cooperatorHotelBillSettlementQueryWithOptions(request as! CooperatorHotelBillSettlementQueryRequest, headers as! CooperatorHotelBillSettlementQueryHeaders, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func cooperatorHotelEventPushWithOptions(_ request: CooperatorHotelEventPushRequest, _ headers: CooperatorHotelEventPushHeaders, _ runtime: TeaUtils.RuntimeOptions) async throws -> CooperatorHotelEventPushResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.changeOrderStatus)) {
            body["change_order_status"] = request.changeOrderStatus!;
        }
        if (!TeaUtils.Client.isUnset(request.changeOrderStatusDesc)) {
            body["change_order_status_desc"] = request.changeOrderStatusDesc ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.cooperatorOrderId)) {
            body["cooperator_order_id"] = request.cooperatorOrderId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.event)) {
            body["event"] = request.event ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.eventDesc)) {
            body["event_desc"] = request.eventDesc ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.eventTime)) {
            body["event_time"] = request.eventTime ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.orderId)) {
            body["order_id"] = request.orderId ?? "";
        }
        var realHeaders: [String: String] = [:]
        if (!TeaUtils.Client.isUnset(headers.commonHeaders)) {
            realHeaders = headers.commonHeaders ?? [:]
        }
        if (!TeaUtils.Client.isUnset(headers.xAcsBtripCorpToken)) {
            realHeaders["x-acs-btrip-corp-token"] = TeaUtils.Client.toJSONString(headers.xAcsBtripCorpToken);
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": realHeaders as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CooperatorHotelEventPush",
            "version": "2022-05-20",
            "protocol": "HTTPS",
            "pathname": "/coop-hotel/v1/orders/events",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CooperatorHotelEventPushResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func cooperatorHotelEventPush(_ request: CooperatorHotelEventPushRequest) async throws -> CooperatorHotelEventPushResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: CooperatorHotelEventPushHeaders = CooperatorHotelEventPushHeaders([:])
        return try await cooperatorHotelEventPushWithOptions(request as! CooperatorHotelEventPushRequest, headers as! CooperatorHotelEventPushHeaders, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func cooperatorSyncPayStatusWithOptions(_ request: CooperatorSyncPayStatusRequest, _ headers: CooperatorSyncPayStatusHeaders, _ runtime: TeaUtils.RuntimeOptions) async throws -> CooperatorSyncPayStatusResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.cooperatorOrderId)) {
            body["cooperator_order_id"] = request.cooperatorOrderId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.cooperatorPayNo)) {
            body["cooperator_pay_no"] = request.cooperatorPayNo ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.orderId)) {
            body["order_id"] = request.orderId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.payStatus)) {
            body["pay_status"] = request.payStatus ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.payTime)) {
            body["pay_time"] = request.payTime!;
        }
        var realHeaders: [String: String] = [:]
        if (!TeaUtils.Client.isUnset(headers.commonHeaders)) {
            realHeaders = headers.commonHeaders ?? [:]
        }
        if (!TeaUtils.Client.isUnset(headers.xAcsBtripCorpToken)) {
            realHeaders["x-acs-btrip-corp-token"] = TeaUtils.Client.toJSONString(headers.xAcsBtripCorpToken);
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": realHeaders as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CooperatorSyncPayStatus",
            "version": "2022-05-20",
            "protocol": "HTTPS",
            "pathname": "/coop-pay/v1/cashiers/status",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CooperatorSyncPayStatusResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func cooperatorSyncPayStatus(_ request: CooperatorSyncPayStatusRequest) async throws -> CooperatorSyncPayStatusResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: CooperatorSyncPayStatusHeaders = CooperatorSyncPayStatusHeaders([:])
        return try await cooperatorSyncPayStatusWithOptions(request as! CooperatorSyncPayStatusRequest, headers as! CooperatorSyncPayStatusHeaders, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func corpAuthLinkInfoQueryWithOptions(_ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> CorpAuthLinkInfoQueryResponse {
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String]
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CorpAuthLinkInfoQuery",
            "version": "2022-05-20",
            "protocol": "HTTPS",
            "pathname": "/corp-authority-link/v1/info",
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CorpAuthLinkInfoQueryResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func corpAuthLinkInfoQuery() async throws -> CorpAuthLinkInfoQueryResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await corpAuthLinkInfoQueryWithOptions(headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func corpTokenWithOptions(_ request: CorpTokenRequest, _ headers: CorpTokenHeaders, _ runtime: TeaUtils.RuntimeOptions) async throws -> CorpTokenResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.appSecret)) {
            query["app_secret"] = request.appSecret ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.corpId)) {
            query["corp_id"] = request.corpId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.type)) {
            query["type"] = request.type!;
        }
        var realHeaders: [String: String] = [:]
        if (!TeaUtils.Client.isUnset(headers.commonHeaders)) {
            realHeaders = headers.commonHeaders ?? [:]
        }
        if (!TeaUtils.Client.isUnset(headers.xAcsBtripAccessToken)) {
            realHeaders["x-acs-btrip-access-token"] = TeaUtils.Client.toJSONString(headers.xAcsBtripAccessToken);
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": realHeaders as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CorpToken",
            "version": "2022-05-20",
            "protocol": "HTTPS",
            "pathname": "/btrip-open-auth/v1/corp-token/action/take",
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CorpTokenResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func corpToken(_ request: CorpTokenRequest) async throws -> CorpTokenResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: CorpTokenHeaders = CorpTokenHeaders([:])
        return try await corpTokenWithOptions(request as! CorpTokenRequest, headers as! CorpTokenHeaders, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func costCenterDeleteWithOptions(_ request: CostCenterDeleteRequest, _ headers: CostCenterDeleteHeaders, _ runtime: TeaUtils.RuntimeOptions) async throws -> CostCenterDeleteResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.thirdpartId)) {
            query["thirdpart_id"] = request.thirdpartId ?? "";
        }
        var realHeaders: [String: String] = [:]
        if (!TeaUtils.Client.isUnset(headers.commonHeaders)) {
            realHeaders = headers.commonHeaders ?? [:]
        }
        if (!TeaUtils.Client.isUnset(headers.xAcsBtripSoCorpToken)) {
            realHeaders["x-acs-btrip-so-corp-token"] = TeaUtils.Client.toJSONString(headers.xAcsBtripSoCorpToken);
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": realHeaders as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CostCenterDelete",
            "version": "2022-05-20",
            "protocol": "HTTPS",
            "pathname": "/costcenter/v1/delete-costcenter",
            "method": "DELETE",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CostCenterDeleteResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func costCenterDelete(_ request: CostCenterDeleteRequest) async throws -> CostCenterDeleteResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: CostCenterDeleteHeaders = CostCenterDeleteHeaders([:])
        return try await costCenterDeleteWithOptions(request as! CostCenterDeleteRequest, headers as! CostCenterDeleteHeaders, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func costCenterModifyWithOptions(_ request: CostCenterModifyRequest, _ headers: CostCenterModifyHeaders, _ runtime: TeaUtils.RuntimeOptions) async throws -> CostCenterModifyResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.alipayNo)) {
            body["alipay_no"] = request.alipayNo ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.disable)) {
            body["disable"] = request.disable!;
        }
        if (!TeaUtils.Client.isUnset(request.number)) {
            body["number"] = request.number ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.scope)) {
            body["scope"] = request.scope!;
        }
        if (!TeaUtils.Client.isUnset(request.thirdpartId)) {
            body["thirdpart_id"] = request.thirdpartId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.title)) {
            body["title"] = request.title ?? "";
        }
        var realHeaders: [String: String] = [:]
        if (!TeaUtils.Client.isUnset(headers.commonHeaders)) {
            realHeaders = headers.commonHeaders ?? [:]
        }
        if (!TeaUtils.Client.isUnset(headers.xAcsBtripSoCorpToken)) {
            realHeaders["x-acs-btrip-so-corp-token"] = TeaUtils.Client.toJSONString(headers.xAcsBtripSoCorpToken);
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": realHeaders as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CostCenterModify",
            "version": "2022-05-20",
            "protocol": "HTTPS",
            "pathname": "/costcenter/v1/modify-costcenter",
            "method": "PUT",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CostCenterModifyResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func costCenterModify(_ request: CostCenterModifyRequest) async throws -> CostCenterModifyResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: CostCenterModifyHeaders = CostCenterModifyHeaders([:])
        return try await costCenterModifyWithOptions(request as! CostCenterModifyRequest, headers as! CostCenterModifyHeaders, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func costCenterQueryWithOptions(_ request: CostCenterQueryRequest, _ headers: CostCenterQueryHeaders, _ runtime: TeaUtils.RuntimeOptions) async throws -> CostCenterQueryResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.disable)) {
            query["disable"] = request.disable!;
        }
        if (!TeaUtils.Client.isUnset(request.needOrgEntity)) {
            query["need_org_entity"] = request.needOrgEntity!;
        }
        if (!TeaUtils.Client.isUnset(request.thirdpartId)) {
            query["thirdpart_id"] = request.thirdpartId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.title)) {
            query["title"] = request.title ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.userId)) {
            query["user_id"] = request.userId ?? "";
        }
        var realHeaders: [String: String] = [:]
        if (!TeaUtils.Client.isUnset(headers.commonHeaders)) {
            realHeaders = headers.commonHeaders ?? [:]
        }
        if (!TeaUtils.Client.isUnset(headers.xAcsBtripSoCorpToken)) {
            realHeaders["x-acs-btrip-so-corp-token"] = TeaUtils.Client.toJSONString(headers.xAcsBtripSoCorpToken);
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": realHeaders as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CostCenterQuery",
            "version": "2022-05-20",
            "protocol": "HTTPS",
            "pathname": "/costcenter/v1/costcenter",
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CostCenterQueryResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func costCenterQuery(_ request: CostCenterQueryRequest) async throws -> CostCenterQueryResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: CostCenterQueryHeaders = CostCenterQueryHeaders([:])
        return try await costCenterQueryWithOptions(request as! CostCenterQueryRequest, headers as! CostCenterQueryHeaders, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func costCenterSaveWithOptions(_ request: CostCenterSaveRequest, _ headers: CostCenterSaveHeaders, _ runtime: TeaUtils.RuntimeOptions) async throws -> CostCenterSaveResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.alipayNo)) {
            body["alipay_no"] = request.alipayNo ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.disable)) {
            body["disable"] = request.disable!;
        }
        if (!TeaUtils.Client.isUnset(request.number)) {
            body["number"] = request.number ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.scope)) {
            body["scope"] = request.scope!;
        }
        if (!TeaUtils.Client.isUnset(request.thirdpartId)) {
            body["thirdpart_id"] = request.thirdpartId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.title)) {
            body["title"] = request.title ?? "";
        }
        var realHeaders: [String: String] = [:]
        if (!TeaUtils.Client.isUnset(headers.commonHeaders)) {
            realHeaders = headers.commonHeaders ?? [:]
        }
        if (!TeaUtils.Client.isUnset(headers.xAcsBtripSoCorpToken)) {
            realHeaders["x-acs-btrip-so-corp-token"] = TeaUtils.Client.toJSONString(headers.xAcsBtripSoCorpToken);
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": realHeaders as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CostCenterSave",
            "version": "2022-05-20",
            "protocol": "HTTPS",
            "pathname": "/costcenter/v1/save-costcenter",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CostCenterSaveResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func costCenterSave(_ request: CostCenterSaveRequest) async throws -> CostCenterSaveResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: CostCenterSaveHeaders = CostCenterSaveHeaders([:])
        return try await costCenterSaveWithOptions(request as! CostCenterSaveRequest, headers as! CostCenterSaveHeaders, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createCustomRoleWithOptions(_ request: CreateCustomRoleRequest, _ headers: CreateCustomRoleHeaders, _ runtime: TeaUtils.RuntimeOptions) async throws -> CreateCustomRoleResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.roleId)) {
            body["role_id"] = request.roleId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.roleName)) {
            body["role_name"] = request.roleName ?? "";
        }
        var realHeaders: [String: String] = [:]
        if (!TeaUtils.Client.isUnset(headers.commonHeaders)) {
            realHeaders = headers.commonHeaders ?? [:]
        }
        if (!TeaUtils.Client.isUnset(headers.xAcsBtripCorpToken)) {
            realHeaders["x-acs-btrip-corp-token"] = TeaUtils.Client.toJSONString(headers.xAcsBtripCorpToken);
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": realHeaders as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CreateCustomRole",
            "version": "2022-05-20",
            "protocol": "HTTPS",
            "pathname": "/role/v1/customRoles/create",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CreateCustomRoleResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createCustomRole(_ request: CreateCustomRoleRequest) async throws -> CreateCustomRoleResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: CreateCustomRoleHeaders = CreateCustomRoleHeaders([:])
        return try await createCustomRoleWithOptions(request as! CreateCustomRoleRequest, headers as! CreateCustomRoleHeaders, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createSubCorpWithOptions(_ request: CreateSubCorpRequest, _ headers: CreateSubCorpHeaders, _ runtime: TeaUtils.RuntimeOptions) async throws -> CreateSubCorpResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.outerCorpId)) {
            body["outer_corp_id"] = request.outerCorpId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.outerCorpName)) {
            body["outer_corp_name"] = request.outerCorpName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.userId)) {
            body["user_id"] = request.userId ?? "";
        }
        var realHeaders: [String: String] = [:]
        if (!TeaUtils.Client.isUnset(headers.commonHeaders)) {
            realHeaders = headers.commonHeaders ?? [:]
        }
        if (!TeaUtils.Client.isUnset(headers.xAcsBtripCorpToken)) {
            realHeaders["x-acs-btrip-corp-token"] = TeaUtils.Client.toJSONString(headers.xAcsBtripCorpToken);
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": realHeaders as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CreateSubCorp",
            "version": "2022-05-20",
            "protocol": "HTTPS",
            "pathname": "/sub_corps/v1/corps",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CreateSubCorpResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createSubCorp(_ request: CreateSubCorpRequest) async throws -> CreateSubCorpResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: CreateSubCorpHeaders = CreateSubCorpHeaders([:])
        return try await createSubCorpWithOptions(request as! CreateSubCorpRequest, headers as! CreateSubCorpHeaders, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteCustomRoleWithOptions(_ request: DeleteCustomRoleRequest, _ headers: DeleteCustomRoleHeaders, _ runtime: TeaUtils.RuntimeOptions) async throws -> DeleteCustomRoleResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.roleId)) {
            body["role_id"] = request.roleId ?? "";
        }
        var realHeaders: [String: String] = [:]
        if (!TeaUtils.Client.isUnset(headers.commonHeaders)) {
            realHeaders = headers.commonHeaders ?? [:]
        }
        if (!TeaUtils.Client.isUnset(headers.xAcsBtripCorpToken)) {
            realHeaders["x-acs-btrip-corp-token"] = TeaUtils.Client.toJSONString(headers.xAcsBtripCorpToken);
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": realHeaders as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DeleteCustomRole",
            "version": "2022-05-20",
            "protocol": "HTTPS",
            "pathname": "/role/v1/customRoles/delete",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DeleteCustomRoleResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteCustomRole(_ request: DeleteCustomRoleRequest) async throws -> DeleteCustomRoleResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: DeleteCustomRoleHeaders = DeleteCustomRoleHeaders([:])
        return try await deleteCustomRoleWithOptions(request as! DeleteCustomRoleRequest, headers as! DeleteCustomRoleHeaders, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteDepartmentWithOptions(_ request: DeleteDepartmentRequest, _ headers: DeleteDepartmentHeaders, _ runtime: TeaUtils.RuntimeOptions) async throws -> DeleteDepartmentResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.outDeptId)) {
            body["out_dept_id"] = request.outDeptId ?? "";
        }
        var realHeaders: [String: String] = [:]
        if (!TeaUtils.Client.isUnset(headers.commonHeaders)) {
            realHeaders = headers.commonHeaders ?? [:]
        }
        if (!TeaUtils.Client.isUnset(headers.xAcsBtripCorpToken)) {
            realHeaders["x-acs-btrip-corp-token"] = TeaUtils.Client.toJSONString(headers.xAcsBtripCorpToken);
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": realHeaders as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DeleteDepartment",
            "version": "2022-05-20",
            "protocol": "HTTPS",
            "pathname": "/department/v2/delete",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DeleteDepartmentResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteDepartment(_ request: DeleteDepartmentRequest) async throws -> DeleteDepartmentResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: DeleteDepartmentHeaders = DeleteDepartmentHeaders([:])
        return try await deleteDepartmentWithOptions(request as! DeleteDepartmentRequest, headers as! DeleteDepartmentHeaders, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteEmployeesFromCustomRoleWithOptions(_ tmpReq: DeleteEmployeesFromCustomRoleRequest, _ headers: DeleteEmployeesFromCustomRoleHeaders, _ runtime: TeaUtils.RuntimeOptions) async throws -> DeleteEmployeesFromCustomRoleResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: DeleteEmployeesFromCustomRoleShrinkRequest = DeleteEmployeesFromCustomRoleShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        if (!TeaUtils.Client.isUnset(tmpReq.userIdList)) {
            request.userIdListShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.userIdList, "user_id_list", "json")
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.roleId)) {
            body["role_id"] = request.roleId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.userIdListShrink)) {
            body["user_id_list"] = request.userIdListShrink ?? "";
        }
        var realHeaders: [String: String] = [:]
        if (!TeaUtils.Client.isUnset(headers.commonHeaders)) {
            realHeaders = headers.commonHeaders ?? [:]
        }
        if (!TeaUtils.Client.isUnset(headers.xAcsBtripCorpToken)) {
            realHeaders["x-acs-btrip-corp-token"] = TeaUtils.Client.toJSONString(headers.xAcsBtripCorpToken);
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": realHeaders as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DeleteEmployeesFromCustomRole",
            "version": "2022-05-20",
            "protocol": "HTTPS",
            "pathname": "/role/v1/customRoleEmployees/delete",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DeleteEmployeesFromCustomRoleResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteEmployeesFromCustomRole(_ request: DeleteEmployeesFromCustomRoleRequest) async throws -> DeleteEmployeesFromCustomRoleResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: DeleteEmployeesFromCustomRoleHeaders = DeleteEmployeesFromCustomRoleHeaders([:])
        return try await deleteEmployeesFromCustomRoleWithOptions(request as! DeleteEmployeesFromCustomRoleRequest, headers as! DeleteEmployeesFromCustomRoleHeaders, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteInvoiceEntityWithOptions(_ tmpReq: DeleteInvoiceEntityRequest, _ headers: DeleteInvoiceEntityHeaders, _ runtime: TeaUtils.RuntimeOptions) async throws -> DeleteInvoiceEntityResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: DeleteInvoiceEntityShrinkRequest = DeleteInvoiceEntityShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        if (!TeaUtils.Client.isUnset(tmpReq.entities)) {
            request.entitiesShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.entities, "entities", "json")
        }
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.delAll)) {
            query["del_all"] = request.delAll!;
        }
        if (!TeaUtils.Client.isUnset(request.entitiesShrink)) {
            query["entities"] = request.entitiesShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.thirdPartId)) {
            query["third_part_id"] = request.thirdPartId ?? "";
        }
        var realHeaders: [String: String] = [:]
        if (!TeaUtils.Client.isUnset(headers.commonHeaders)) {
            realHeaders = headers.commonHeaders ?? [:]
        }
        if (!TeaUtils.Client.isUnset(headers.xAcsBtripCorpToken)) {
            realHeaders["x-acs-btrip-corp-token"] = TeaUtils.Client.toJSONString(headers.xAcsBtripCorpToken);
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": realHeaders as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DeleteInvoiceEntity",
            "version": "2022-05-20",
            "protocol": "HTTPS",
            "pathname": "/invoice/v1/entities",
            "method": "DELETE",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DeleteInvoiceEntityResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteInvoiceEntity(_ request: DeleteInvoiceEntityRequest) async throws -> DeleteInvoiceEntityResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: DeleteInvoiceEntityHeaders = DeleteInvoiceEntityHeaders([:])
        return try await deleteInvoiceEntityWithOptions(request as! DeleteInvoiceEntityRequest, headers as! DeleteInvoiceEntityHeaders, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func departmentSaveWithOptions(_ tmpReq: DepartmentSaveRequest, _ headers: DepartmentSaveHeaders, _ runtime: TeaUtils.RuntimeOptions) async throws -> DepartmentSaveResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: DepartmentSaveShrinkRequest = DepartmentSaveShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        if (!TeaUtils.Client.isUnset(tmpReq.departList)) {
            request.departListShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.departList, "depart_list", "json")
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.departListShrink)) {
            body["depart_list"] = request.departListShrink ?? "";
        }
        var realHeaders: [String: String] = [:]
        if (!TeaUtils.Client.isUnset(headers.commonHeaders)) {
            realHeaders = headers.commonHeaders ?? [:]
        }
        if (!TeaUtils.Client.isUnset(headers.xAcsBtripSoCorpToken)) {
            realHeaders["x-acs-btrip-so-corp-token"] = TeaUtils.Client.toJSONString(headers.xAcsBtripSoCorpToken);
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": realHeaders as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DepartmentSave",
            "version": "2022-05-20",
            "protocol": "HTTPS",
            "pathname": "/department/v1/department",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DepartmentSaveResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func departmentSave(_ request: DepartmentSaveRequest) async throws -> DepartmentSaveResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: DepartmentSaveHeaders = DepartmentSaveHeaders([:])
        return try await departmentSaveWithOptions(request as! DepartmentSaveRequest, headers as! DepartmentSaveHeaders, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func electronicItineraryBatchApplyWithOptions(_ tmpReq: ElectronicItineraryBatchApplyRequest, _ headers: ElectronicItineraryBatchApplyHeaders, _ runtime: TeaUtils.RuntimeOptions) async throws -> ElectronicItineraryBatchApplyResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: ElectronicItineraryBatchApplyShrinkRequest = ElectronicItineraryBatchApplyShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        if (!TeaUtils.Client.isUnset(tmpReq.applyItineraryList)) {
            request.applyItineraryListShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.applyItineraryList, "apply_itinerary_list", "json")
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.applyItineraryListShrink)) {
            body["apply_itinerary_list"] = request.applyItineraryListShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.canReprint)) {
            body["can_reprint"] = request.canReprint!;
        }
        var realHeaders: [String: String] = [:]
        if (!TeaUtils.Client.isUnset(headers.commonHeaders)) {
            realHeaders = headers.commonHeaders ?? [:]
        }
        if (!TeaUtils.Client.isUnset(headers.xAcsBtripSoCorpToken)) {
            realHeaders["x-acs-btrip-so-corp-token"] = TeaUtils.Client.toJSONString(headers.xAcsBtripSoCorpToken);
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": realHeaders as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ElectronicItineraryBatchApply",
            "version": "2022-05-20",
            "protocol": "HTTPS",
            "pathname": "/invoice/v1/apply-itinerary-batch-task",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ElectronicItineraryBatchApplyResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func electronicItineraryBatchApply(_ request: ElectronicItineraryBatchApplyRequest) async throws -> ElectronicItineraryBatchApplyResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: ElectronicItineraryBatchApplyHeaders = ElectronicItineraryBatchApplyHeaders([:])
        return try await electronicItineraryBatchApplyWithOptions(request as! ElectronicItineraryBatchApplyRequest, headers as! ElectronicItineraryBatchApplyHeaders, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func electronicItineraryGetApplyResultWithOptions(_ request: ElectronicItineraryGetApplyResultRequest, _ headers: ElectronicItineraryGetApplyResultHeaders, _ runtime: TeaUtils.RuntimeOptions) async throws -> ElectronicItineraryGetApplyResultResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.batchApplyNo)) {
            query["batch_apply_no"] = request.batchApplyNo ?? "";
        }
        var realHeaders: [String: String] = [:]
        if (!TeaUtils.Client.isUnset(headers.commonHeaders)) {
            realHeaders = headers.commonHeaders ?? [:]
        }
        if (!TeaUtils.Client.isUnset(headers.xAcsBtripSoCorpToken)) {
            realHeaders["x-acs-btrip-so-corp-token"] = TeaUtils.Client.toJSONString(headers.xAcsBtripSoCorpToken);
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": realHeaders as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ElectronicItineraryGetApplyResult",
            "version": "2022-05-20",
            "protocol": "HTTPS",
            "pathname": "/invoice/v1/get-itinerary-batch-task",
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ElectronicItineraryGetApplyResultResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func electronicItineraryGetApplyResult(_ request: ElectronicItineraryGetApplyResultRequest) async throws -> ElectronicItineraryGetApplyResultResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: ElectronicItineraryGetApplyResultHeaders = ElectronicItineraryGetApplyResultHeaders([:])
        return try await electronicItineraryGetApplyResultWithOptions(request as! ElectronicItineraryGetApplyResultRequest, headers as! ElectronicItineraryGetApplyResultHeaders, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func entityAddWithOptions(_ tmpReq: EntityAddRequest, _ headers: EntityAddHeaders, _ runtime: TeaUtils.RuntimeOptions) async throws -> EntityAddResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: EntityAddShrinkRequest = EntityAddShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        if (!TeaUtils.Client.isUnset(tmpReq.entityDOList)) {
            request.entityDOListShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.entityDOList, "entity_d_o_list", "json")
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.entityDOListShrink)) {
            body["entity_d_o_list"] = request.entityDOListShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.thirdpartId)) {
            body["thirdpart_id"] = request.thirdpartId ?? "";
        }
        var realHeaders: [String: String] = [:]
        if (!TeaUtils.Client.isUnset(headers.commonHeaders)) {
            realHeaders = headers.commonHeaders ?? [:]
        }
        if (!TeaUtils.Client.isUnset(headers.xAcsBtripSoCorpToken)) {
            realHeaders["x-acs-btrip-so-corp-token"] = TeaUtils.Client.toJSONString(headers.xAcsBtripSoCorpToken);
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": realHeaders as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "EntityAdd",
            "version": "2022-05-20",
            "protocol": "HTTPS",
            "pathname": "/costcenter/v1/add-entity",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(EntityAddResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func entityAdd(_ request: EntityAddRequest) async throws -> EntityAddResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: EntityAddHeaders = EntityAddHeaders([:])
        return try await entityAddWithOptions(request as! EntityAddRequest, headers as! EntityAddHeaders, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func entityDeleteWithOptions(_ tmpReq: EntityDeleteRequest, _ headers: EntityDeleteHeaders, _ runtime: TeaUtils.RuntimeOptions) async throws -> EntityDeleteResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: EntityDeleteShrinkRequest = EntityDeleteShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        if (!TeaUtils.Client.isUnset(tmpReq.entityDOList)) {
            request.entityDOListShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.entityDOList, "entity_d_o_list", "json")
        }
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.delAll)) {
            query["del_all"] = request.delAll!;
        }
        if (!TeaUtils.Client.isUnset(request.thirdpartId)) {
            query["thirdpart_id"] = request.thirdpartId ?? "";
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.entityDOListShrink)) {
            body["entity_d_o_list"] = request.entityDOListShrink ?? "";
        }
        var realHeaders: [String: String] = [:]
        if (!TeaUtils.Client.isUnset(headers.commonHeaders)) {
            realHeaders = headers.commonHeaders ?? [:]
        }
        if (!TeaUtils.Client.isUnset(headers.xAcsBtripSoCorpToken)) {
            realHeaders["x-acs-btrip-so-corp-token"] = TeaUtils.Client.toJSONString(headers.xAcsBtripSoCorpToken);
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": realHeaders as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query),
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "EntityDelete",
            "version": "2022-05-20",
            "protocol": "HTTPS",
            "pathname": "/costcenter/v1/entity/action/delete",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(EntityDeleteResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func entityDelete(_ request: EntityDeleteRequest) async throws -> EntityDeleteResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: EntityDeleteHeaders = EntityDeleteHeaders([:])
        return try await entityDeleteWithOptions(request as! EntityDeleteRequest, headers as! EntityDeleteHeaders, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func entitySetWithOptions(_ tmpReq: EntitySetRequest, _ headers: EntitySetHeaders, _ runtime: TeaUtils.RuntimeOptions) async throws -> EntitySetResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: EntitySetShrinkRequest = EntitySetShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        if (!TeaUtils.Client.isUnset(tmpReq.entityDOList)) {
            request.entityDOListShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.entityDOList, "entity_d_o_list", "json")
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.entityDOListShrink)) {
            body["entity_d_o_list"] = request.entityDOListShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.thirdpartId)) {
            body["thirdpart_id"] = request.thirdpartId ?? "";
        }
        var realHeaders: [String: String] = [:]
        if (!TeaUtils.Client.isUnset(headers.commonHeaders)) {
            realHeaders = headers.commonHeaders ?? [:]
        }
        if (!TeaUtils.Client.isUnset(headers.xAcsBtripSoCorpToken)) {
            realHeaders["x-acs-btrip-so-corp-token"] = TeaUtils.Client.toJSONString(headers.xAcsBtripSoCorpToken);
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": realHeaders as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "EntitySet",
            "version": "2022-05-20",
            "protocol": "HTTPS",
            "pathname": "/costcenter/v1/set-entity",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(EntitySetResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func entitySet(_ request: EntitySetRequest) async throws -> EntitySetResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: EntitySetHeaders = EntitySetHeaders([:])
        return try await entitySetWithOptions(request as! EntitySetRequest, headers as! EntitySetHeaders, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func estimatedPriceQueryWithOptions(_ request: EstimatedPriceQueryRequest, _ headers: EstimatedPriceQueryHeaders, _ runtime: TeaUtils.RuntimeOptions) async throws -> EstimatedPriceQueryResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.arrCity)) {
            query["arr_city"] = request.arrCity ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.category)) {
            query["category"] = request.category ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.depCity)) {
            query["dep_city"] = request.depCity ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.endTime)) {
            query["end_time"] = request.endTime!;
        }
        if (!TeaUtils.Client.isUnset(request.itineraryId)) {
            query["itinerary_id"] = request.itineraryId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.startTime)) {
            query["start_time"] = request.startTime!;
        }
        if (!TeaUtils.Client.isUnset(request.subCorpId)) {
            query["sub_corp_id"] = request.subCorpId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.userId)) {
            query["user_id"] = request.userId ?? "";
        }
        var realHeaders: [String: String] = [:]
        if (!TeaUtils.Client.isUnset(headers.commonHeaders)) {
            realHeaders = headers.commonHeaders ?? [:]
        }
        if (!TeaUtils.Client.isUnset(headers.xAcsBtripSoCorpToken)) {
            realHeaders["x-acs-btrip-so-corp-token"] = TeaUtils.Client.toJSONString(headers.xAcsBtripSoCorpToken);
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": realHeaders as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "EstimatedPriceQuery",
            "version": "2022-05-20",
            "protocol": "HTTPS",
            "pathname": "/costcenter/v1/estimated-price",
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(EstimatedPriceQueryResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func estimatedPriceQuery(_ request: EstimatedPriceQueryRequest) async throws -> EstimatedPriceQueryResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: EstimatedPriceQueryHeaders = EstimatedPriceQueryHeaders([:])
        return try await estimatedPriceQueryWithOptions(request as! EstimatedPriceQueryRequest, headers as! EstimatedPriceQueryHeaders, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func exceedApplySyncWithOptions(_ request: ExceedApplySyncRequest, _ headers: ExceedApplySyncHeaders, _ runtime: TeaUtils.RuntimeOptions) async throws -> ExceedApplySyncResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.applyId)) {
            query["apply_id"] = request.applyId!;
        }
        if (!TeaUtils.Client.isUnset(request.bizCategory)) {
            query["biz_category"] = request.bizCategory!;
        }
        if (!TeaUtils.Client.isUnset(request.remark)) {
            query["remark"] = request.remark ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.status)) {
            query["status"] = request.status!;
        }
        if (!TeaUtils.Client.isUnset(request.thirdpartyFlowId)) {
            query["thirdparty_flow_id"] = request.thirdpartyFlowId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.userId)) {
            query["user_id"] = request.userId ?? "";
        }
        var realHeaders: [String: String] = [:]
        if (!TeaUtils.Client.isUnset(headers.commonHeaders)) {
            realHeaders = headers.commonHeaders ?? [:]
        }
        if (!TeaUtils.Client.isUnset(headers.xAcsBtripSoCorpToken)) {
            realHeaders["x-acs-btrip-so-corp-token"] = TeaUtils.Client.toJSONString(headers.xAcsBtripSoCorpToken);
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": realHeaders as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ExceedApplySync",
            "version": "2022-05-20",
            "protocol": "HTTPS",
            "pathname": "/apply/v1/syn-exceed",
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ExceedApplySyncResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func exceedApplySync(_ request: ExceedApplySyncRequest) async throws -> ExceedApplySyncResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: ExceedApplySyncHeaders = ExceedApplySyncHeaders([:])
        return try await exceedApplySyncWithOptions(request as! ExceedApplySyncRequest, headers as! ExceedApplySyncHeaders, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func externalUserAddWithOptions(_ tmpReq: ExternalUserAddRequest, _ headers: ExternalUserAddHeaders, _ runtime: TeaUtils.RuntimeOptions) async throws -> ExternalUserAddResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: ExternalUserAddShrinkRequest = ExternalUserAddShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        if (!TeaUtils.Client.isUnset(tmpReq.certRequestList)) {
            request.certRequestListShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.certRequestList, "cert_request_list", "json")
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.birthday)) {
            body["birthday"] = request.birthday ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.certRequestListShrink)) {
            body["cert_request_list"] = request.certRequestListShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.email)) {
            body["email"] = request.email ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.externalUserId)) {
            body["external_user_id"] = request.externalUserId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.phone)) {
            body["phone"] = request.phone ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.realName)) {
            body["real_name"] = request.realName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.realNameEn)) {
            body["real_name_en"] = request.realNameEn ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.userType)) {
            body["user_type"] = request.userType!;
        }
        var realHeaders: [String: String] = [:]
        if (!TeaUtils.Client.isUnset(headers.commonHeaders)) {
            realHeaders = headers.commonHeaders ?? [:]
        }
        if (!TeaUtils.Client.isUnset(headers.xAcsBtripCorpToken)) {
            realHeaders["x-acs-btrip-corp-token"] = TeaUtils.Client.toJSONString(headers.xAcsBtripCorpToken);
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": realHeaders as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ExternalUserAdd",
            "version": "2022-05-20",
            "protocol": "HTTPS",
            "pathname": "/user/v1/externalUsers",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ExternalUserAddResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func externalUserAdd(_ request: ExternalUserAddRequest) async throws -> ExternalUserAddResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: ExternalUserAddHeaders = ExternalUserAddHeaders([:])
        return try await externalUserAddWithOptions(request as! ExternalUserAddRequest, headers as! ExternalUserAddHeaders, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func externalUserDeleteWithOptions(_ externalUserId: String, _ headers: ExternalUserDeleteHeaders, _ runtime: TeaUtils.RuntimeOptions) async throws -> ExternalUserDeleteResponse {
        var realHeaders: [String: String] = [:]
        if (!TeaUtils.Client.isUnset(headers.commonHeaders)) {
            realHeaders = headers.commonHeaders ?? [:]
        }
        if (!TeaUtils.Client.isUnset(headers.xAcsBtripCorpToken)) {
            realHeaders["x-acs-btrip-corp-token"] = TeaUtils.Client.toJSONString(headers.xAcsBtripCorpToken);
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": realHeaders as! [String: String]
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ExternalUserDelete",
            "version": "2022-05-20",
            "protocol": "HTTPS",
            "pathname": "/user/v1/externalUsers/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(externalUserId)),
            "method": "DELETE",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ExternalUserDeleteResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func externalUserDelete(_ externalUserId: String) async throws -> ExternalUserDeleteResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: ExternalUserDeleteHeaders = ExternalUserDeleteHeaders([:])
        return try await externalUserDeleteWithOptions(externalUserId as! String, headers as! ExternalUserDeleteHeaders, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func externalUserQueryWithOptions(_ externalUserId: String, _ headers: ExternalUserQueryHeaders, _ runtime: TeaUtils.RuntimeOptions) async throws -> ExternalUserQueryResponse {
        var realHeaders: [String: String] = [:]
        if (!TeaUtils.Client.isUnset(headers.commonHeaders)) {
            realHeaders = headers.commonHeaders ?? [:]
        }
        if (!TeaUtils.Client.isUnset(headers.xAcsBtripCorpToken)) {
            realHeaders["x-acs-btrip-corp-token"] = TeaUtils.Client.toJSONString(headers.xAcsBtripCorpToken);
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": realHeaders as! [String: String]
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ExternalUserQuery",
            "version": "2022-05-20",
            "protocol": "HTTPS",
            "pathname": "/user/v1/externalUsers/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(externalUserId)),
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ExternalUserQueryResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func externalUserQuery(_ externalUserId: String) async throws -> ExternalUserQueryResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: ExternalUserQueryHeaders = ExternalUserQueryHeaders([:])
        return try await externalUserQueryWithOptions(externalUserId as! String, headers as! ExternalUserQueryHeaders, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func externalUserUpdateWithOptions(_ externalUserId: String, _ tmpReq: ExternalUserUpdateRequest, _ headers: ExternalUserUpdateHeaders, _ runtime: TeaUtils.RuntimeOptions) async throws -> ExternalUserUpdateResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: ExternalUserUpdateShrinkRequest = ExternalUserUpdateShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        if (!TeaUtils.Client.isUnset(tmpReq.certRequestList)) {
            request.certRequestListShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.certRequestList, "cert_request_list", "json")
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.birthday)) {
            body["birthday"] = request.birthday ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.certRequestListShrink)) {
            body["cert_request_list"] = request.certRequestListShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.email)) {
            body["email"] = request.email ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.phone)) {
            body["phone"] = request.phone ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.realName)) {
            body["real_name"] = request.realName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.realNameEn)) {
            body["real_name_en"] = request.realNameEn ?? "";
        }
        var realHeaders: [String: String] = [:]
        if (!TeaUtils.Client.isUnset(headers.commonHeaders)) {
            realHeaders = headers.commonHeaders ?? [:]
        }
        if (!TeaUtils.Client.isUnset(headers.xAcsBtripCorpToken)) {
            realHeaders["x-acs-btrip-corp-token"] = TeaUtils.Client.toJSONString(headers.xAcsBtripCorpToken);
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": realHeaders as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ExternalUserUpdate",
            "version": "2022-05-20",
            "protocol": "HTTPS",
            "pathname": "/user/v1/externalUsers/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(externalUserId)),
            "method": "PUT",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ExternalUserUpdateResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func externalUserUpdate(_ externalUserId: String, _ request: ExternalUserUpdateRequest) async throws -> ExternalUserUpdateResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: ExternalUserUpdateHeaders = ExternalUserUpdateHeaders([:])
        return try await externalUserUpdateWithOptions(externalUserId as! String, request as! ExternalUserUpdateRequest, headers as! ExternalUserUpdateHeaders, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func flightBillSettlementQueryWithOptions(_ request: FlightBillSettlementQueryRequest, _ headers: FlightBillSettlementQueryHeaders, _ runtime: TeaUtils.RuntimeOptions) async throws -> FlightBillSettlementQueryResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.pageNo)) {
            query["page_no"] = request.pageNo!;
        }
        if (!TeaUtils.Client.isUnset(request.pageSize)) {
            query["page_size"] = request.pageSize!;
        }
        if (!TeaUtils.Client.isUnset(request.periodEnd)) {
            query["period_end"] = request.periodEnd ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.periodStart)) {
            query["period_start"] = request.periodStart ?? "";
        }
        var realHeaders: [String: String] = [:]
        if (!TeaUtils.Client.isUnset(headers.commonHeaders)) {
            realHeaders = headers.commonHeaders ?? [:]
        }
        if (!TeaUtils.Client.isUnset(headers.xAcsBtripSoCorpToken)) {
            realHeaders["x-acs-btrip-so-corp-token"] = TeaUtils.Client.toJSONString(headers.xAcsBtripSoCorpToken);
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": realHeaders as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "FlightBillSettlementQuery",
            "version": "2022-05-20",
            "protocol": "HTTPS",
            "pathname": "/flight/v1/bill-settlement",
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(FlightBillSettlementQueryResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func flightBillSettlementQuery(_ request: FlightBillSettlementQueryRequest) async throws -> FlightBillSettlementQueryResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: FlightBillSettlementQueryHeaders = FlightBillSettlementQueryHeaders([:])
        return try await flightBillSettlementQueryWithOptions(request as! FlightBillSettlementQueryRequest, headers as! FlightBillSettlementQueryHeaders, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func flightCancelOrderWithOptions(_ request: FlightCancelOrderRequest, _ headers: FlightCancelOrderHeaders, _ runtime: TeaUtils.RuntimeOptions) async throws -> FlightCancelOrderResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.disOrderId)) {
            query["dis_order_id"] = request.disOrderId ?? "";
        }
        var realHeaders: [String: String] = [:]
        if (!TeaUtils.Client.isUnset(headers.commonHeaders)) {
            realHeaders = headers.commonHeaders ?? [:]
        }
        if (!TeaUtils.Client.isUnset(headers.xAcsBtripCorpToken)) {
            realHeaders["x-acs-btrip-corp-token"] = TeaUtils.Client.toJSONString(headers.xAcsBtripCorpToken);
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": realHeaders as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "FlightCancelOrder",
            "version": "2022-05-20",
            "protocol": "HTTPS",
            "pathname": "/dtb-flight/v1/order/action/cancel",
            "method": "DELETE",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(FlightCancelOrderResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func flightCancelOrder(_ request: FlightCancelOrderRequest) async throws -> FlightCancelOrderResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: FlightCancelOrderHeaders = FlightCancelOrderHeaders([:])
        return try await flightCancelOrderWithOptions(request as! FlightCancelOrderRequest, headers as! FlightCancelOrderHeaders, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func flightCancelOrderV2WithOptions(_ request: FlightCancelOrderV2Request, _ headers: FlightCancelOrderV2Headers, _ runtime: TeaUtils.RuntimeOptions) async throws -> FlightCancelOrderV2Response {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.isvName)) {
            query["isv_name"] = request.isvName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.orderId)) {
            query["order_id"] = request.orderId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.outOrderId)) {
            query["out_order_id"] = request.outOrderId ?? "";
        }
        var realHeaders: [String: String] = [:]
        if (!TeaUtils.Client.isUnset(headers.commonHeaders)) {
            realHeaders = headers.commonHeaders ?? [:]
        }
        if (!TeaUtils.Client.isUnset(headers.xAcsBtripCorpToken)) {
            realHeaders["x-acs-btrip-corp-token"] = TeaUtils.Client.toJSONString(headers.xAcsBtripCorpToken);
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": realHeaders as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "FlightCancelOrderV2",
            "version": "2022-05-20",
            "protocol": "HTTPS",
            "pathname": "/dtb-flight/v2/order/action/cancel",
            "method": "DELETE",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(FlightCancelOrderV2Response(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func flightCancelOrderV2(_ request: FlightCancelOrderV2Request) async throws -> FlightCancelOrderV2Response {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: FlightCancelOrderV2Headers = FlightCancelOrderV2Headers([:])
        return try await flightCancelOrderV2WithOptions(request as! FlightCancelOrderV2Request, headers as! FlightCancelOrderV2Headers, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func flightCreateOrderWithOptions(_ tmpReq: FlightCreateOrderRequest, _ headers: FlightCreateOrderHeaders, _ runtime: TeaUtils.RuntimeOptions) async throws -> FlightCreateOrderResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: FlightCreateOrderShrinkRequest = FlightCreateOrderShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        if (!TeaUtils.Client.isUnset(tmpReq.contactInfo)) {
            request.contactInfoShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.contactInfo, "contact_info", "json")
        }
        if (!TeaUtils.Client.isUnset(tmpReq.orderAttr)) {
            request.orderAttrShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.orderAttr, "order_attr", "json")
        }
        if (!TeaUtils.Client.isUnset(tmpReq.travelerInfoList)) {
            request.travelerInfoListShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.travelerInfoList, "traveler_info_list", "json")
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.arrAirportCode)) {
            body["arr_airport_code"] = request.arrAirportCode ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.arrCityCode)) {
            body["arr_city_code"] = request.arrCityCode ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.autoPay)) {
            body["auto_pay"] = request.autoPay!;
        }
        if (!TeaUtils.Client.isUnset(request.buyerName)) {
            body["buyer_name"] = request.buyerName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.buyerUniqueKey)) {
            body["buyer_unique_key"] = request.buyerUniqueKey ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.contactInfoShrink)) {
            body["contact_info"] = request.contactInfoShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.depAirportCode)) {
            body["dep_airport_code"] = request.depAirportCode ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.depCityCode)) {
            body["dep_city_code"] = request.depCityCode ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.depDate)) {
            body["dep_date"] = request.depDate ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.disOrderId)) {
            body["dis_order_id"] = request.disOrderId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.orderAttrShrink)) {
            body["order_attr"] = request.orderAttrShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.orderParams)) {
            body["order_params"] = request.orderParams ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.otaItemId)) {
            body["ota_item_id"] = request.otaItemId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.price)) {
            body["price"] = request.price!;
        }
        if (!TeaUtils.Client.isUnset(request.receiptAddress)) {
            body["receipt_address"] = request.receiptAddress ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.receiptTarget)) {
            body["receipt_target"] = request.receiptTarget!;
        }
        if (!TeaUtils.Client.isUnset(request.receiptTitle)) {
            body["receipt_title"] = request.receiptTitle ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.travelerInfoListShrink)) {
            body["traveler_info_list"] = request.travelerInfoListShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.tripType)) {
            body["trip_type"] = request.tripType!;
        }
        var realHeaders: [String: String] = [:]
        if (!TeaUtils.Client.isUnset(headers.commonHeaders)) {
            realHeaders = headers.commonHeaders ?? [:]
        }
        if (!TeaUtils.Client.isUnset(headers.xAcsBtripCorpToken)) {
            realHeaders["x-acs-btrip-corp-token"] = TeaUtils.Client.toJSONString(headers.xAcsBtripCorpToken);
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": realHeaders as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "FlightCreateOrder",
            "version": "2022-05-20",
            "protocol": "HTTPS",
            "pathname": "/dtb-flight/v1/order/action/create",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(FlightCreateOrderResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func flightCreateOrder(_ request: FlightCreateOrderRequest) async throws -> FlightCreateOrderResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: FlightCreateOrderHeaders = FlightCreateOrderHeaders([:])
        return try await flightCreateOrderWithOptions(request as! FlightCreateOrderRequest, headers as! FlightCreateOrderHeaders, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func flightCreateOrderV2WithOptions(_ tmpReq: FlightCreateOrderV2Request, _ headers: FlightCreateOrderV2Headers, _ runtime: TeaUtils.RuntimeOptions) async throws -> FlightCreateOrderV2Response {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: FlightCreateOrderV2ShrinkRequest = FlightCreateOrderV2ShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        if (!TeaUtils.Client.isUnset(tmpReq.contactInfo)) {
            request.contactInfoShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.contactInfo, "contact_info", "json")
        }
        if (!TeaUtils.Client.isUnset(tmpReq.travelers)) {
            request.travelersShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.travelers, "travelers", "json")
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.asyncCreateOrderKey)) {
            body["async_create_order_key"] = request.asyncCreateOrderKey ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.asyncCreateOrderMode)) {
            body["async_create_order_mode"] = request.asyncCreateOrderMode!;
        }
        if (!TeaUtils.Client.isUnset(request.btripUserId)) {
            body["btrip_user_id"] = request.btripUserId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.buyerName)) {
            body["buyer_name"] = request.buyerName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.contactInfoShrink)) {
            body["contact_info"] = request.contactInfoShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.isvName)) {
            body["isv_name"] = request.isvName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.otaItemId)) {
            body["ota_item_id"] = request.otaItemId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.outOrderId)) {
            body["out_order_id"] = request.outOrderId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.totalPriceCent)) {
            body["total_price_cent"] = request.totalPriceCent!;
        }
        if (!TeaUtils.Client.isUnset(request.travelersShrink)) {
            body["travelers"] = request.travelersShrink ?? "";
        }
        var realHeaders: [String: String] = [:]
        if (!TeaUtils.Client.isUnset(headers.commonHeaders)) {
            realHeaders = headers.commonHeaders ?? [:]
        }
        if (!TeaUtils.Client.isUnset(headers.xAcsBtripCorpToken)) {
            realHeaders["x-acs-btrip-corp-token"] = TeaUtils.Client.toJSONString(headers.xAcsBtripCorpToken);
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": realHeaders as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "FlightCreateOrderV2",
            "version": "2022-05-20",
            "protocol": "HTTPS",
            "pathname": "/dtb-flight/v2/order/action/create",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(FlightCreateOrderV2Response(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func flightCreateOrderV2(_ request: FlightCreateOrderV2Request) async throws -> FlightCreateOrderV2Response {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: FlightCreateOrderV2Headers = FlightCreateOrderV2Headers([:])
        return try await flightCreateOrderV2WithOptions(request as! FlightCreateOrderV2Request, headers as! FlightCreateOrderV2Headers, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func flightExceedApplyQueryWithOptions(_ request: FlightExceedApplyQueryRequest, _ headers: FlightExceedApplyQueryHeaders, _ runtime: TeaUtils.RuntimeOptions) async throws -> FlightExceedApplyQueryResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.applyId)) {
            query["apply_id"] = request.applyId!;
        }
        if (!TeaUtils.Client.isUnset(request.businessInstanceId)) {
            query["business_instance_id"] = request.businessInstanceId ?? "";
        }
        var realHeaders: [String: String] = [:]
        if (!TeaUtils.Client.isUnset(headers.commonHeaders)) {
            realHeaders = headers.commonHeaders ?? [:]
        }
        if (!TeaUtils.Client.isUnset(headers.xAcsBtripSoCorpToken)) {
            realHeaders["x-acs-btrip-so-corp-token"] = TeaUtils.Client.toJSONString(headers.xAcsBtripSoCorpToken);
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": realHeaders as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "FlightExceedApplyQuery",
            "version": "2022-05-20",
            "protocol": "HTTPS",
            "pathname": "/apply/v1/flight-exceed",
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(FlightExceedApplyQueryResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func flightExceedApplyQuery(_ request: FlightExceedApplyQueryRequest) async throws -> FlightExceedApplyQueryResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: FlightExceedApplyQueryHeaders = FlightExceedApplyQueryHeaders([:])
        return try await flightExceedApplyQueryWithOptions(request as! FlightExceedApplyQueryRequest, headers as! FlightExceedApplyQueryHeaders, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func flightItineraryScanQueryWithOptions(_ request: FlightItineraryScanQueryRequest, _ headers: FlightItineraryScanQueryHeaders, _ runtime: TeaUtils.RuntimeOptions) async throws -> FlightItineraryScanQueryResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.billDate)) {
            query["bill_date"] = request.billDate ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.billId)) {
            query["bill_id"] = request.billId!;
        }
        if (!TeaUtils.Client.isUnset(request.invoiceSubTaskId)) {
            query["invoice_sub_task_id"] = request.invoiceSubTaskId!;
        }
        if (!TeaUtils.Client.isUnset(request.itineraryNum)) {
            query["itinerary_num"] = request.itineraryNum ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.pageNo)) {
            query["page_no"] = request.pageNo!;
        }
        if (!TeaUtils.Client.isUnset(request.pageSize)) {
            query["page_size"] = request.pageSize!;
        }
        if (!TeaUtils.Client.isUnset(request.ticketNo)) {
            query["ticket_no"] = request.ticketNo ?? "";
        }
        var realHeaders: [String: String] = [:]
        if (!TeaUtils.Client.isUnset(headers.commonHeaders)) {
            realHeaders = headers.commonHeaders ?? [:]
        }
        if (!TeaUtils.Client.isUnset(headers.xAcsBtripSoCorpToken)) {
            realHeaders["x-acs-btrip-so-corp-token"] = TeaUtils.Client.toJSONString(headers.xAcsBtripSoCorpToken);
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": realHeaders as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "FlightItineraryScanQuery",
            "version": "2022-05-20",
            "protocol": "HTTPS",
            "pathname": "/scan/v1/flight-itinerary",
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(FlightItineraryScanQueryResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func flightItineraryScanQuery(_ request: FlightItineraryScanQueryRequest) async throws -> FlightItineraryScanQueryResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: FlightItineraryScanQueryHeaders = FlightItineraryScanQueryHeaders([:])
        return try await flightItineraryScanQueryWithOptions(request as! FlightItineraryScanQueryRequest, headers as! FlightItineraryScanQueryHeaders, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func flightListingSearchWithOptions(_ request: FlightListingSearchRequest, _ headers: FlightListingSearchHeaders, _ runtime: TeaUtils.RuntimeOptions) async throws -> FlightListingSearchResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.airlineCode)) {
            query["airline_code"] = request.airlineCode ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.arrCityCode)) {
            query["arr_city_code"] = request.arrCityCode ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.cabinClass)) {
            query["cabin_class"] = request.cabinClass ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.depCityCode)) {
            query["dep_city_code"] = request.depCityCode ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.depDate)) {
            query["dep_date"] = request.depDate ?? "";
        }
        var realHeaders: [String: String] = [:]
        if (!TeaUtils.Client.isUnset(headers.commonHeaders)) {
            realHeaders = headers.commonHeaders ?? [:]
        }
        if (!TeaUtils.Client.isUnset(headers.xAcsBtripCorpToken)) {
            realHeaders["x-acs-btrip-corp-token"] = TeaUtils.Client.toJSONString(headers.xAcsBtripCorpToken);
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": realHeaders as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "FlightListingSearch",
            "version": "2022-05-20",
            "protocol": "HTTPS",
            "pathname": "/dtb-flight/v1/flight/action/listing-search",
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(FlightListingSearchResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func flightListingSearch(_ request: FlightListingSearchRequest) async throws -> FlightListingSearchResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: FlightListingSearchHeaders = FlightListingSearchHeaders([:])
        return try await flightListingSearchWithOptions(request as! FlightListingSearchRequest, headers as! FlightListingSearchHeaders, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func flightListingSearchV2WithOptions(_ tmpReq: FlightListingSearchV2Request, _ headers: FlightListingSearchV2Headers, _ runtime: TeaUtils.RuntimeOptions) async throws -> FlightListingSearchV2Response {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: FlightListingSearchV2ShrinkRequest = FlightListingSearchV2ShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        if (!TeaUtils.Client.isUnset(tmpReq.cabinTypeList)) {
            request.cabinTypeListShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.cabinTypeList, "cabin_type_list", "json")
        }
        if (!TeaUtils.Client.isUnset(tmpReq.searchJourneys)) {
            request.searchJourneysShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.searchJourneys, "search_journeys", "json")
        }
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.airlineCode)) {
            query["airline_code"] = request.airlineCode ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.cabinTypeListShrink)) {
            query["cabin_type_list"] = request.cabinTypeListShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.directOnly)) {
            query["direct_only"] = request.directOnly!;
        }
        if (!TeaUtils.Client.isUnset(request.isvName)) {
            query["isv_name"] = request.isvName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.needMultiClassPrice)) {
            query["need_multi_class_price"] = request.needMultiClassPrice!;
        }
        if (!TeaUtils.Client.isUnset(request.needQueryServiceFee)) {
            query["need_query_service_fee"] = request.needQueryServiceFee!;
        }
        if (!TeaUtils.Client.isUnset(request.needShareFlight)) {
            query["need_share_flight"] = request.needShareFlight!;
        }
        if (!TeaUtils.Client.isUnset(request.needYCBestPrice)) {
            query["need_y_c_best_price"] = request.needYCBestPrice!;
        }
        if (!TeaUtils.Client.isUnset(request.searchJourneysShrink)) {
            query["search_journeys"] = request.searchJourneysShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.searchMode)) {
            query["search_mode"] = request.searchMode!;
        }
        if (!TeaUtils.Client.isUnset(request.tripType)) {
            query["trip_type"] = request.tripType!;
        }
        var realHeaders: [String: String] = [:]
        if (!TeaUtils.Client.isUnset(headers.commonHeaders)) {
            realHeaders = headers.commonHeaders ?? [:]
        }
        if (!TeaUtils.Client.isUnset(headers.xAcsBtripCorpToken)) {
            realHeaders["x-acs-btrip-corp-token"] = TeaUtils.Client.toJSONString(headers.xAcsBtripCorpToken);
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": realHeaders as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "FlightListingSearchV2",
            "version": "2022-05-20",
            "protocol": "HTTPS",
            "pathname": "/dtb-flight/v2/flight/action/listing-search",
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(FlightListingSearchV2Response(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func flightListingSearchV2(_ request: FlightListingSearchV2Request) async throws -> FlightListingSearchV2Response {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: FlightListingSearchV2Headers = FlightListingSearchV2Headers([:])
        return try await flightListingSearchV2WithOptions(request as! FlightListingSearchV2Request, headers as! FlightListingSearchV2Headers, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func flightModifyApplyV2WithOptions(_ tmpReq: FlightModifyApplyV2Request, _ headers: FlightModifyApplyV2Headers, _ runtime: TeaUtils.RuntimeOptions) async throws -> FlightModifyApplyV2Response {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: FlightModifyApplyV2ShrinkRequest = FlightModifyApplyV2ShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        if (!TeaUtils.Client.isUnset(tmpReq.passengerSegmentRelations)) {
            request.passengerSegmentRelationsShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.passengerSegmentRelations, "passenger_segment_relations", "json")
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.cacheKey)) {
            body["cache_key"] = request.cacheKey ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.contactPhone)) {
            body["contact_phone"] = request.contactPhone ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.isvName)) {
            body["isv_name"] = request.isvName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.itemId)) {
            body["item_id"] = request.itemId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.orderId)) {
            body["order_id"] = request.orderId!;
        }
        if (!TeaUtils.Client.isUnset(request.outOrderId)) {
            body["out_order_id"] = request.outOrderId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.outSubOrderId)) {
            body["out_sub_order_id"] = request.outSubOrderId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.passengerSegmentRelationsShrink)) {
            body["passenger_segment_relations"] = request.passengerSegmentRelationsShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.reason)) {
            body["reason"] = request.reason ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.sessionId)) {
            body["session_id"] = request.sessionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.voluntary)) {
            body["voluntary"] = request.voluntary!;
        }
        var realHeaders: [String: String] = [:]
        if (!TeaUtils.Client.isUnset(headers.commonHeaders)) {
            realHeaders = headers.commonHeaders ?? [:]
        }
        if (!TeaUtils.Client.isUnset(headers.xAcsBtripCorpToken)) {
            realHeaders["x-acs-btrip-corp-token"] = TeaUtils.Client.toJSONString(headers.xAcsBtripCorpToken);
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": realHeaders as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "FlightModifyApplyV2",
            "version": "2022-05-20",
            "protocol": "HTTPS",
            "pathname": "/dtb-flight/v2/modify/action/apply",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(FlightModifyApplyV2Response(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func flightModifyApplyV2(_ request: FlightModifyApplyV2Request) async throws -> FlightModifyApplyV2Response {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: FlightModifyApplyV2Headers = FlightModifyApplyV2Headers([:])
        return try await flightModifyApplyV2WithOptions(request as! FlightModifyApplyV2Request, headers as! FlightModifyApplyV2Headers, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func flightModifyCancelV2WithOptions(_ request: FlightModifyCancelV2Request, _ headers: FlightModifyCancelV2Headers, _ runtime: TeaUtils.RuntimeOptions) async throws -> FlightModifyCancelV2Response {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.isvName)) {
            query["isv_name"] = request.isvName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.orderId)) {
            query["order_id"] = request.orderId!;
        }
        if (!TeaUtils.Client.isUnset(request.outOrderId)) {
            query["out_order_id"] = request.outOrderId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.outSubOrderId)) {
            query["out_sub_order_id"] = request.outSubOrderId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.subOrderId)) {
            query["sub_order_id"] = request.subOrderId!;
        }
        var realHeaders: [String: String] = [:]
        if (!TeaUtils.Client.isUnset(headers.commonHeaders)) {
            realHeaders = headers.commonHeaders ?? [:]
        }
        if (!TeaUtils.Client.isUnset(headers.xAcsBtripCorpToken)) {
            realHeaders["x-acs-btrip-corp-token"] = TeaUtils.Client.toJSONString(headers.xAcsBtripCorpToken);
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": realHeaders as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "FlightModifyCancelV2",
            "version": "2022-05-20",
            "protocol": "HTTPS",
            "pathname": "/dtb-flight/v2/modify/action/cancel",
            "method": "DELETE",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(FlightModifyCancelV2Response(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func flightModifyCancelV2(_ request: FlightModifyCancelV2Request) async throws -> FlightModifyCancelV2Response {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: FlightModifyCancelV2Headers = FlightModifyCancelV2Headers([:])
        return try await flightModifyCancelV2WithOptions(request as! FlightModifyCancelV2Request, headers as! FlightModifyCancelV2Headers, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func flightModifyListingSearchV2WithOptions(_ tmpReq: FlightModifyListingSearchV2Request, _ headers: FlightModifyListingSearchV2Headers, _ runtime: TeaUtils.RuntimeOptions) async throws -> FlightModifyListingSearchV2Response {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: FlightModifyListingSearchV2ShrinkRequest = FlightModifyListingSearchV2ShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        if (!TeaUtils.Client.isUnset(tmpReq.cabinClass)) {
            request.cabinClassShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.cabinClass, "cabin_class", "json")
        }
        if (!TeaUtils.Client.isUnset(tmpReq.depDate)) {
            request.depDateShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.depDate, "dep_date", "json")
        }
        if (!TeaUtils.Client.isUnset(tmpReq.passengerSegmentRelations)) {
            request.passengerSegmentRelationsShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.passengerSegmentRelations, "passenger_segment_relations", "json")
        }
        if (!TeaUtils.Client.isUnset(tmpReq.selectedSegments)) {
            request.selectedSegmentsShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.selectedSegments, "selected_segments", "json")
        }
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.cabinClassShrink)) {
            query["cabin_class"] = request.cabinClassShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.depDateShrink)) {
            query["dep_date"] = request.depDateShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.interfaceCallerIsSupportRetry)) {
            query["interface_caller_is_support_retry"] = request.interfaceCallerIsSupportRetry!;
        }
        if (!TeaUtils.Client.isUnset(request.isvName)) {
            query["isv_name"] = request.isvName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.orderId)) {
            query["order_id"] = request.orderId!;
        }
        if (!TeaUtils.Client.isUnset(request.outOrderId)) {
            query["out_order_id"] = request.outOrderId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.passengerSegmentRelationsShrink)) {
            query["passenger_segment_relations"] = request.passengerSegmentRelationsShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.searchMode)) {
            query["search_mode"] = request.searchMode!;
        }
        if (!TeaUtils.Client.isUnset(request.searchRetryToken)) {
            query["search_retry_token"] = request.searchRetryToken ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.selectedSegmentsShrink)) {
            query["selected_segments"] = request.selectedSegmentsShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.sessionId)) {
            query["session_id"] = request.sessionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.voluntary)) {
            query["voluntary"] = request.voluntary!;
        }
        var realHeaders: [String: String] = [:]
        if (!TeaUtils.Client.isUnset(headers.commonHeaders)) {
            realHeaders = headers.commonHeaders ?? [:]
        }
        if (!TeaUtils.Client.isUnset(headers.xAcsBtripCorpToken)) {
            realHeaders["x-acs-btrip-corp-token"] = TeaUtils.Client.toJSONString(headers.xAcsBtripCorpToken);
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": realHeaders as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "FlightModifyListingSearchV2",
            "version": "2022-05-20",
            "protocol": "HTTPS",
            "pathname": "/dtb-flight/v2/modify/action/listing-search",
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(FlightModifyListingSearchV2Response(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func flightModifyListingSearchV2(_ request: FlightModifyListingSearchV2Request) async throws -> FlightModifyListingSearchV2Response {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: FlightModifyListingSearchV2Headers = FlightModifyListingSearchV2Headers([:])
        return try await flightModifyListingSearchV2WithOptions(request as! FlightModifyListingSearchV2Request, headers as! FlightModifyListingSearchV2Headers, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func flightModifyOrderDetailV2WithOptions(_ request: FlightModifyOrderDetailV2Request, _ headers: FlightModifyOrderDetailV2Headers, _ runtime: TeaUtils.RuntimeOptions) async throws -> FlightModifyOrderDetailV2Response {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.isvName)) {
            query["isv_name"] = request.isvName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.modifyApplyId)) {
            query["modify_apply_id"] = request.modifyApplyId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.needQueryServiceFee)) {
            query["need_query_service_fee"] = request.needQueryServiceFee!;
        }
        if (!TeaUtils.Client.isUnset(request.orderId)) {
            query["order_id"] = request.orderId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.outModifyApplyId)) {
            query["out_modify_apply_id"] = request.outModifyApplyId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.outOrderId)) {
            query["out_order_id"] = request.outOrderId ?? "";
        }
        var realHeaders: [String: String] = [:]
        if (!TeaUtils.Client.isUnset(headers.commonHeaders)) {
            realHeaders = headers.commonHeaders ?? [:]
        }
        if (!TeaUtils.Client.isUnset(headers.xAcsBtripCorpToken)) {
            realHeaders["x-acs-btrip-corp-token"] = TeaUtils.Client.toJSONString(headers.xAcsBtripCorpToken);
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": realHeaders as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "FlightModifyOrderDetailV2",
            "version": "2022-05-20",
            "protocol": "HTTPS",
            "pathname": "/dtb-flight/v2/modify/action/detail",
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(FlightModifyOrderDetailV2Response(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func flightModifyOrderDetailV2(_ request: FlightModifyOrderDetailV2Request) async throws -> FlightModifyOrderDetailV2Response {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: FlightModifyOrderDetailV2Headers = FlightModifyOrderDetailV2Headers([:])
        return try await flightModifyOrderDetailV2WithOptions(request as! FlightModifyOrderDetailV2Request, headers as! FlightModifyOrderDetailV2Headers, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func flightModifyOtaSearchV2WithOptions(_ tmpReq: FlightModifyOtaSearchV2Request, _ headers: FlightModifyOtaSearchV2Headers, _ runtime: TeaUtils.RuntimeOptions) async throws -> FlightModifyOtaSearchV2Response {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: FlightModifyOtaSearchV2ShrinkRequest = FlightModifyOtaSearchV2ShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        if (!TeaUtils.Client.isUnset(tmpReq.cabinClass)) {
            request.cabinClassShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.cabinClass, "cabin_class", "json")
        }
        if (!TeaUtils.Client.isUnset(tmpReq.depDate)) {
            request.depDateShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.depDate, "dep_date", "json")
        }
        if (!TeaUtils.Client.isUnset(tmpReq.passengerSegmentRelations)) {
            request.passengerSegmentRelationsShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.passengerSegmentRelations, "passenger_segment_relations", "json")
        }
        if (!TeaUtils.Client.isUnset(tmpReq.selectedSegments)) {
            request.selectedSegmentsShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.selectedSegments, "selected_segments", "json")
        }
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.cabinClassShrink)) {
            query["cabin_class"] = request.cabinClassShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.depDateShrink)) {
            query["dep_date"] = request.depDateShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.isvName)) {
            query["isv_name"] = request.isvName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.orderId)) {
            query["order_id"] = request.orderId!;
        }
        if (!TeaUtils.Client.isUnset(request.outOrderId)) {
            query["out_order_id"] = request.outOrderId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.passengerSegmentRelationsShrink)) {
            query["passenger_segment_relations"] = request.passengerSegmentRelationsShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.selectedSegmentsShrink)) {
            query["selected_segments"] = request.selectedSegmentsShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.sessionId)) {
            query["session_id"] = request.sessionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.voluntary)) {
            query["voluntary"] = request.voluntary!;
        }
        var realHeaders: [String: String] = [:]
        if (!TeaUtils.Client.isUnset(headers.commonHeaders)) {
            realHeaders = headers.commonHeaders ?? [:]
        }
        if (!TeaUtils.Client.isUnset(headers.xAcsBtripCorpToken)) {
            realHeaders["x-acs-btrip-corp-token"] = TeaUtils.Client.toJSONString(headers.xAcsBtripCorpToken);
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": realHeaders as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "FlightModifyOtaSearchV2",
            "version": "2022-05-20",
            "protocol": "HTTPS",
            "pathname": "/dtb-flight/v2/modify/action/ota-search",
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(FlightModifyOtaSearchV2Response(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func flightModifyOtaSearchV2(_ request: FlightModifyOtaSearchV2Request) async throws -> FlightModifyOtaSearchV2Response {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: FlightModifyOtaSearchV2Headers = FlightModifyOtaSearchV2Headers([:])
        return try await flightModifyOtaSearchV2WithOptions(request as! FlightModifyOtaSearchV2Request, headers as! FlightModifyOtaSearchV2Headers, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func flightModifyPayV2WithOptions(_ tmpReq: FlightModifyPayV2Request, _ headers: FlightModifyPayV2Headers, _ runtime: TeaUtils.RuntimeOptions) async throws -> FlightModifyPayV2Response {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: FlightModifyPayV2ShrinkRequest = FlightModifyPayV2ShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        if (!TeaUtils.Client.isUnset(tmpReq.extParams)) {
            request.extParamsShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.extParams, "ext_params", "json")
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.extParamsShrink)) {
            body["ext_params"] = request.extParamsShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.isvName)) {
            body["isv_name"] = request.isvName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.modifyPayAmount)) {
            body["modify_pay_amount"] = request.modifyPayAmount!;
        }
        if (!TeaUtils.Client.isUnset(request.orderId)) {
            body["order_id"] = request.orderId!;
        }
        if (!TeaUtils.Client.isUnset(request.outOrderId)) {
            body["out_order_id"] = request.outOrderId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.outSubOrderId)) {
            body["out_sub_order_id"] = request.outSubOrderId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.subOrderId)) {
            body["sub_order_id"] = request.subOrderId!;
        }
        var realHeaders: [String: String] = [:]
        if (!TeaUtils.Client.isUnset(headers.commonHeaders)) {
            realHeaders = headers.commonHeaders ?? [:]
        }
        if (!TeaUtils.Client.isUnset(headers.xAcsBtripCorpToken)) {
            realHeaders["x-acs-btrip-corp-token"] = TeaUtils.Client.toJSONString(headers.xAcsBtripCorpToken);
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": realHeaders as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "FlightModifyPayV2",
            "version": "2022-05-20",
            "protocol": "HTTPS",
            "pathname": "/dtb-flight/v2/modify/action/pay",
            "method": "PUT",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(FlightModifyPayV2Response(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func flightModifyPayV2(_ request: FlightModifyPayV2Request) async throws -> FlightModifyPayV2Response {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: FlightModifyPayV2Headers = FlightModifyPayV2Headers([:])
        return try await flightModifyPayV2WithOptions(request as! FlightModifyPayV2Request, headers as! FlightModifyPayV2Headers, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func flightOrderDetailInfoWithOptions(_ request: FlightOrderDetailInfoRequest, _ headers: FlightOrderDetailInfoHeaders, _ runtime: TeaUtils.RuntimeOptions) async throws -> FlightOrderDetailInfoResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.disOrderId)) {
            query["dis_order_id"] = request.disOrderId ?? "";
        }
        var realHeaders: [String: String] = [:]
        if (!TeaUtils.Client.isUnset(headers.commonHeaders)) {
            realHeaders = headers.commonHeaders ?? [:]
        }
        if (!TeaUtils.Client.isUnset(headers.xAcsBtripCorpToken)) {
            realHeaders["x-acs-btrip-corp-token"] = TeaUtils.Client.toJSONString(headers.xAcsBtripCorpToken);
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": realHeaders as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "FlightOrderDetailInfo",
            "version": "2022-05-20",
            "protocol": "HTTPS",
            "pathname": "/dtb-flight/v1/order/action/detail",
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(FlightOrderDetailInfoResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func flightOrderDetailInfo(_ request: FlightOrderDetailInfoRequest) async throws -> FlightOrderDetailInfoResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: FlightOrderDetailInfoHeaders = FlightOrderDetailInfoHeaders([:])
        return try await flightOrderDetailInfoWithOptions(request as! FlightOrderDetailInfoRequest, headers as! FlightOrderDetailInfoHeaders, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func flightOrderDetailV2WithOptions(_ request: FlightOrderDetailV2Request, _ headers: FlightOrderDetailV2Headers, _ runtime: TeaUtils.RuntimeOptions) async throws -> FlightOrderDetailV2Response {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.isvName)) {
            query["isv_name"] = request.isvName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.orderId)) {
            query["order_id"] = request.orderId!;
        }
        if (!TeaUtils.Client.isUnset(request.outOrderId)) {
            query["out_order_id"] = request.outOrderId ?? "";
        }
        var realHeaders: [String: String] = [:]
        if (!TeaUtils.Client.isUnset(headers.commonHeaders)) {
            realHeaders = headers.commonHeaders ?? [:]
        }
        if (!TeaUtils.Client.isUnset(headers.xAcsBtripCorpToken)) {
            realHeaders["x-acs-btrip-corp-token"] = TeaUtils.Client.toJSONString(headers.xAcsBtripCorpToken);
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": realHeaders as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "FlightOrderDetailV2",
            "version": "2022-05-20",
            "protocol": "HTTPS",
            "pathname": "/dtb-flight/v2/order/action/detail",
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(FlightOrderDetailV2Response(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func flightOrderDetailV2(_ request: FlightOrderDetailV2Request) async throws -> FlightOrderDetailV2Response {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: FlightOrderDetailV2Headers = FlightOrderDetailV2Headers([:])
        return try await flightOrderDetailV2WithOptions(request as! FlightOrderDetailV2Request, headers as! FlightOrderDetailV2Headers, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func flightOrderListQueryWithOptions(_ request: FlightOrderListQueryRequest, _ headers: FlightOrderListQueryHeaders, _ runtime: TeaUtils.RuntimeOptions) async throws -> FlightOrderListQueryResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.allApply)) {
            query["all_apply"] = request.allApply!;
        }
        if (!TeaUtils.Client.isUnset(request.applyId)) {
            query["apply_id"] = request.applyId!;
        }
        if (!TeaUtils.Client.isUnset(request.departId)) {
            query["depart_id"] = request.departId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.endTime)) {
            query["end_time"] = request.endTime ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.page)) {
            query["page"] = request.page!;
        }
        if (!TeaUtils.Client.isUnset(request.pageSize)) {
            query["page_size"] = request.pageSize!;
        }
        if (!TeaUtils.Client.isUnset(request.startTime)) {
            query["start_time"] = request.startTime ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.thirdpartApplyId)) {
            query["thirdpart_apply_id"] = request.thirdpartApplyId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.updateEndTime)) {
            query["update_end_time"] = request.updateEndTime ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.updateStartTime)) {
            query["update_start_time"] = request.updateStartTime ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.userId)) {
            query["user_id"] = request.userId ?? "";
        }
        var realHeaders: [String: String] = [:]
        if (!TeaUtils.Client.isUnset(headers.commonHeaders)) {
            realHeaders = headers.commonHeaders ?? [:]
        }
        if (!TeaUtils.Client.isUnset(headers.xAcsBtripSoCorpToken)) {
            realHeaders["x-acs-btrip-so-corp-token"] = TeaUtils.Client.toJSONString(headers.xAcsBtripSoCorpToken);
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": realHeaders as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "FlightOrderListQuery",
            "version": "2022-05-20",
            "protocol": "HTTPS",
            "pathname": "/flight/v1/order-list",
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(FlightOrderListQueryResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func flightOrderListQuery(_ request: FlightOrderListQueryRequest) async throws -> FlightOrderListQueryResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: FlightOrderListQueryHeaders = FlightOrderListQueryHeaders([:])
        return try await flightOrderListQueryWithOptions(request as! FlightOrderListQueryRequest, headers as! FlightOrderListQueryHeaders, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func flightOrderListQueryV2WithOptions(_ tmpReq: FlightOrderListQueryV2Request, _ headers: FlightOrderListQueryV2Headers, _ runtime: TeaUtils.RuntimeOptions) async throws -> FlightOrderListQueryV2Response {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: FlightOrderListQueryV2ShrinkRequest = FlightOrderListQueryV2ShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        if (!TeaUtils.Client.isUnset(tmpReq.approveId)) {
            request.approveIdShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.approveId, "approve_id", "json")
        }
        if (!TeaUtils.Client.isUnset(tmpReq.bookerId)) {
            request.bookerIdShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.bookerId, "booker_id", "json")
        }
        if (!TeaUtils.Client.isUnset(tmpReq.departId)) {
            request.departIdShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.departId, "depart_id", "json")
        }
        if (!TeaUtils.Client.isUnset(tmpReq.supplier)) {
            request.supplierShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.supplier, "supplier", "json")
        }
        if (!TeaUtils.Client.isUnset(tmpReq.thirdpartApproveId)) {
            request.thirdpartApproveIdShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.thirdpartApproveId, "thirdpart_approve_id", "json")
        }
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.approveIdShrink)) {
            query["approve_id"] = request.approveIdShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.bookerIdShrink)) {
            query["booker_id"] = request.bookerIdShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.departIdShrink)) {
            query["depart_id"] = request.departIdShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.endDate)) {
            query["end_date"] = request.endDate ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.pageSize)) {
            query["page_Size"] = request.pageSize!;
        }
        if (!TeaUtils.Client.isUnset(request.scrollId)) {
            query["scroll_id"] = request.scrollId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.startDate)) {
            query["start_date"] = request.startDate ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.supplierShrink)) {
            query["supplier"] = request.supplierShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.thirdpartApproveIdShrink)) {
            query["thirdpart_approve_id"] = request.thirdpartApproveIdShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.updateEndDate)) {
            query["update_end_date"] = request.updateEndDate ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.updateStartDate)) {
            query["update_start_date"] = request.updateStartDate ?? "";
        }
        var realHeaders: [String: String] = [:]
        if (!TeaUtils.Client.isUnset(headers.commonHeaders)) {
            realHeaders = headers.commonHeaders ?? [:]
        }
        if (!TeaUtils.Client.isUnset(headers.xAcsBtripCorpToken)) {
            realHeaders["x-acs-btrip-corp-token"] = TeaUtils.Client.toJSONString(headers.xAcsBtripCorpToken);
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": realHeaders as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "FlightOrderListQueryV2",
            "version": "2022-05-20",
            "protocol": "HTTPS",
            "pathname": "/open/v2/Flight-order-list-query",
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(FlightOrderListQueryV2Response(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func flightOrderListQueryV2(_ request: FlightOrderListQueryV2Request) async throws -> FlightOrderListQueryV2Response {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: FlightOrderListQueryV2Headers = FlightOrderListQueryV2Headers([:])
        return try await flightOrderListQueryV2WithOptions(request as! FlightOrderListQueryV2Request, headers as! FlightOrderListQueryV2Headers, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func flightOrderQueryWithOptions(_ request: FlightOrderQueryRequest, _ headers: FlightOrderQueryHeaders, _ runtime: TeaUtils.RuntimeOptions) async throws -> FlightOrderQueryResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.orderId)) {
            query["order_id"] = request.orderId!;
        }
        if (!TeaUtils.Client.isUnset(request.userId)) {
            query["user_id"] = request.userId ?? "";
        }
        var realHeaders: [String: String] = [:]
        if (!TeaUtils.Client.isUnset(headers.commonHeaders)) {
            realHeaders = headers.commonHeaders ?? [:]
        }
        if (!TeaUtils.Client.isUnset(headers.xAcsBtripSoCorpToken)) {
            realHeaders["x-acs-btrip-so-corp-token"] = TeaUtils.Client.toJSONString(headers.xAcsBtripSoCorpToken);
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": realHeaders as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "FlightOrderQuery",
            "version": "2022-05-20",
            "protocol": "HTTPS",
            "pathname": "/flight/v1/order",
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(FlightOrderQueryResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func flightOrderQuery(_ request: FlightOrderQueryRequest) async throws -> FlightOrderQueryResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: FlightOrderQueryHeaders = FlightOrderQueryHeaders([:])
        return try await flightOrderQueryWithOptions(request as! FlightOrderQueryRequest, headers as! FlightOrderQueryHeaders, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func flightOtaItemDetailWithOptions(_ request: FlightOtaItemDetailRequest, _ headers: FlightOtaItemDetailHeaders, _ runtime: TeaUtils.RuntimeOptions) async throws -> FlightOtaItemDetailResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.isvName)) {
            query["isv_name"] = request.isvName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.otaItemId)) {
            query["ota_item_id"] = request.otaItemId ?? "";
        }
        var realHeaders: [String: String] = [:]
        if (!TeaUtils.Client.isUnset(headers.commonHeaders)) {
            realHeaders = headers.commonHeaders ?? [:]
        }
        if (!TeaUtils.Client.isUnset(headers.xAcsBtripCorpToken)) {
            realHeaders["x-acs-btrip-corp-token"] = TeaUtils.Client.toJSONString(headers.xAcsBtripCorpToken);
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": realHeaders as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "FlightOtaItemDetail",
            "version": "2022-05-20",
            "protocol": "HTTPS",
            "pathname": "/dtb-flight/v1/flight/action/ota-item-detail",
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(FlightOtaItemDetailResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func flightOtaItemDetail(_ request: FlightOtaItemDetailRequest) async throws -> FlightOtaItemDetailResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: FlightOtaItemDetailHeaders = FlightOtaItemDetailHeaders([:])
        return try await flightOtaItemDetailWithOptions(request as! FlightOtaItemDetailRequest, headers as! FlightOtaItemDetailHeaders, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func flightOtaSearchWithOptions(_ request: FlightOtaSearchRequest, _ headers: FlightOtaSearchHeaders, _ runtime: TeaUtils.RuntimeOptions) async throws -> FlightOtaSearchResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.airlineCode)) {
            query["airline_code"] = request.airlineCode ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.arrCityCode)) {
            query["arr_city_code"] = request.arrCityCode ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.cabinClass)) {
            query["cabin_class"] = request.cabinClass ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.carrierFlightNo)) {
            query["carrier_flight_no"] = request.carrierFlightNo ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.depCityCode)) {
            query["dep_city_code"] = request.depCityCode ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.depDate)) {
            query["dep_date"] = request.depDate ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.flightNo)) {
            query["flight_no"] = request.flightNo ?? "";
        }
        var realHeaders: [String: String] = [:]
        if (!TeaUtils.Client.isUnset(headers.commonHeaders)) {
            realHeaders = headers.commonHeaders ?? [:]
        }
        if (!TeaUtils.Client.isUnset(headers.xAcsBtripCorpToken)) {
            realHeaders["x-acs-btrip-corp-token"] = TeaUtils.Client.toJSONString(headers.xAcsBtripCorpToken);
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": realHeaders as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "FlightOtaSearch",
            "version": "2022-05-20",
            "protocol": "HTTPS",
            "pathname": "/dtb-flight/v1/flight/action/ota-search",
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(FlightOtaSearchResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func flightOtaSearch(_ request: FlightOtaSearchRequest) async throws -> FlightOtaSearchResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: FlightOtaSearchHeaders = FlightOtaSearchHeaders([:])
        return try await flightOtaSearchWithOptions(request as! FlightOtaSearchRequest, headers as! FlightOtaSearchHeaders, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func flightOtaSearchV2WithOptions(_ tmpReq: FlightOtaSearchV2Request, _ headers: FlightOtaSearchV2Headers, _ runtime: TeaUtils.RuntimeOptions) async throws -> FlightOtaSearchV2Response {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: FlightOtaSearchV2ShrinkRequest = FlightOtaSearchV2ShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        if (!TeaUtils.Client.isUnset(tmpReq.cabinTypeList)) {
            request.cabinTypeListShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.cabinTypeList, "cabin_type_list", "json")
        }
        if (!TeaUtils.Client.isUnset(tmpReq.searchJourneys)) {
            request.searchJourneysShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.searchJourneys, "search_journeys", "json")
        }
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.cabinTypeListShrink)) {
            query["cabin_type_list"] = request.cabinTypeListShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.directOnly)) {
            query["direct_only"] = request.directOnly!;
        }
        if (!TeaUtils.Client.isUnset(request.isvName)) {
            query["isv_name"] = request.isvName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.needShareFlight)) {
            query["need_share_flight"] = request.needShareFlight!;
        }
        if (!TeaUtils.Client.isUnset(request.searchJourneysShrink)) {
            query["search_journeys"] = request.searchJourneysShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.searchMode)) {
            query["search_mode"] = request.searchMode!;
        }
        if (!TeaUtils.Client.isUnset(request.tripType)) {
            query["trip_type"] = request.tripType!;
        }
        var realHeaders: [String: String] = [:]
        if (!TeaUtils.Client.isUnset(headers.commonHeaders)) {
            realHeaders = headers.commonHeaders ?? [:]
        }
        if (!TeaUtils.Client.isUnset(headers.xAcsBtripCorpToken)) {
            realHeaders["x-acs-btrip-corp-token"] = TeaUtils.Client.toJSONString(headers.xAcsBtripCorpToken);
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": realHeaders as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "FlightOtaSearchV2",
            "version": "2022-05-20",
            "protocol": "HTTPS",
            "pathname": "/dtb-flight/v2/flight/action/ota-search",
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(FlightOtaSearchV2Response(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func flightOtaSearchV2(_ request: FlightOtaSearchV2Request) async throws -> FlightOtaSearchV2Response {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: FlightOtaSearchV2Headers = FlightOtaSearchV2Headers([:])
        return try await flightOtaSearchV2WithOptions(request as! FlightOtaSearchV2Request, headers as! FlightOtaSearchV2Headers, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func flightPayOrderWithOptions(_ tmpReq: FlightPayOrderRequest, _ headers: FlightPayOrderHeaders, _ runtime: TeaUtils.RuntimeOptions) async throws -> FlightPayOrderResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: FlightPayOrderShrinkRequest = FlightPayOrderShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        if (!TeaUtils.Client.isUnset(tmpReq.extra)) {
            request.extraShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.extra, "extra", "json")
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.corpPayPrice)) {
            body["corp_pay_price"] = request.corpPayPrice!;
        }
        if (!TeaUtils.Client.isUnset(request.disOrderId)) {
            body["dis_order_id"] = request.disOrderId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.extraShrink)) {
            body["extra"] = request.extraShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.personalPayPrice)) {
            body["personal_pay_price"] = request.personalPayPrice!;
        }
        if (!TeaUtils.Client.isUnset(request.totalPayPrice)) {
            body["total_pay_price"] = request.totalPayPrice!;
        }
        var realHeaders: [String: String] = [:]
        if (!TeaUtils.Client.isUnset(headers.commonHeaders)) {
            realHeaders = headers.commonHeaders ?? [:]
        }
        if (!TeaUtils.Client.isUnset(headers.xAcsBtripCorpToken)) {
            realHeaders["x-acs-btrip-corp-token"] = TeaUtils.Client.toJSONString(headers.xAcsBtripCorpToken);
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": realHeaders as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "FlightPayOrder",
            "version": "2022-05-20",
            "protocol": "HTTPS",
            "pathname": "/dtb-flight/v1/order/action/pay",
            "method": "PUT",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(FlightPayOrderResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func flightPayOrder(_ request: FlightPayOrderRequest) async throws -> FlightPayOrderResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: FlightPayOrderHeaders = FlightPayOrderHeaders([:])
        return try await flightPayOrderWithOptions(request as! FlightPayOrderRequest, headers as! FlightPayOrderHeaders, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func flightPayOrderV2WithOptions(_ request: FlightPayOrderV2Request, _ headers: FlightPayOrderV2Headers, _ runtime: TeaUtils.RuntimeOptions) async throws -> FlightPayOrderV2Response {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.isvName)) {
            body["isv_name"] = request.isvName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.orderId)) {
            body["order_id"] = request.orderId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.outOrderId)) {
            body["out_order_id"] = request.outOrderId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.totalPrice)) {
            body["total_price"] = request.totalPrice!;
        }
        if (!TeaUtils.Client.isUnset(request.totalServiceFeePrice)) {
            body["total_service_fee_price"] = request.totalServiceFeePrice!;
        }
        var realHeaders: [String: String] = [:]
        if (!TeaUtils.Client.isUnset(headers.commonHeaders)) {
            realHeaders = headers.commonHeaders ?? [:]
        }
        if (!TeaUtils.Client.isUnset(headers.xAcsBtripCorpToken)) {
            realHeaders["x-acs-btrip-corp-token"] = TeaUtils.Client.toJSONString(headers.xAcsBtripCorpToken);
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": realHeaders as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "FlightPayOrderV2",
            "version": "2022-05-20",
            "protocol": "HTTPS",
            "pathname": "/dtb-flight/v2/order/action/pay",
            "method": "PUT",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(FlightPayOrderV2Response(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func flightPayOrderV2(_ request: FlightPayOrderV2Request) async throws -> FlightPayOrderV2Response {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: FlightPayOrderV2Headers = FlightPayOrderV2Headers([:])
        return try await flightPayOrderV2WithOptions(request as! FlightPayOrderV2Request, headers as! FlightPayOrderV2Headers, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func flightRefundApplyWithOptions(_ tmpReq: FlightRefundApplyRequest, _ headers: FlightRefundApplyHeaders, _ runtime: TeaUtils.RuntimeOptions) async throws -> FlightRefundApplyResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: FlightRefundApplyShrinkRequest = FlightRefundApplyShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        if (!TeaUtils.Client.isUnset(tmpReq.extra)) {
            request.extraShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.extra, "extra", "json")
        }
        if (!TeaUtils.Client.isUnset(tmpReq.passengerSegmentInfoList)) {
            request.passengerSegmentInfoListShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.passengerSegmentInfoList, "passenger_segment_info_list", "json")
        }
        if (!TeaUtils.Client.isUnset(tmpReq.refundVoucherInfo)) {
            request.refundVoucherInfoShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.refundVoucherInfo, "refund_voucher_info", "json")
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.corpRefundPrice)) {
            body["corp_refund_price"] = request.corpRefundPrice!;
        }
        if (!TeaUtils.Client.isUnset(request.disOrderId)) {
            body["dis_order_id"] = request.disOrderId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.disSubOrderId)) {
            body["dis_sub_order_id"] = request.disSubOrderId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.displayRefundMoney)) {
            body["display_refund_money"] = request.displayRefundMoney ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.extraShrink)) {
            body["extra"] = request.extraShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.isVoluntary)) {
            body["is_voluntary"] = request.isVoluntary!;
        }
        if (!TeaUtils.Client.isUnset(request.itemUnitIds)) {
            body["item_unit_ids"] = request.itemUnitIds ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.passengerSegmentInfoListShrink)) {
            body["passenger_segment_info_list"] = request.passengerSegmentInfoListShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.personalRefundPrice)) {
            body["personal_refund_price"] = request.personalRefundPrice!;
        }
        if (!TeaUtils.Client.isUnset(request.reasonDetail)) {
            body["reason_detail"] = request.reasonDetail ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.reasonType)) {
            body["reason_type"] = request.reasonType!;
        }
        if (!TeaUtils.Client.isUnset(request.refundVoucherInfoShrink)) {
            body["refund_voucher_info"] = request.refundVoucherInfoShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.sessionId)) {
            body["session_id"] = request.sessionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.totalRefundPrice)) {
            body["total_refund_price"] = request.totalRefundPrice!;
        }
        var realHeaders: [String: String] = [:]
        if (!TeaUtils.Client.isUnset(headers.commonHeaders)) {
            realHeaders = headers.commonHeaders ?? [:]
        }
        if (!TeaUtils.Client.isUnset(headers.xAcsBtripCorpToken)) {
            realHeaders["x-acs-btrip-corp-token"] = TeaUtils.Client.toJSONString(headers.xAcsBtripCorpToken);
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": realHeaders as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "FlightRefundApply",
            "version": "2022-05-20",
            "protocol": "HTTPS",
            "pathname": "/dtb-flight/v1/refund/action/apply",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(FlightRefundApplyResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func flightRefundApply(_ request: FlightRefundApplyRequest) async throws -> FlightRefundApplyResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: FlightRefundApplyHeaders = FlightRefundApplyHeaders([:])
        return try await flightRefundApplyWithOptions(request as! FlightRefundApplyRequest, headers as! FlightRefundApplyHeaders, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func flightRefundApplyV2WithOptions(_ tmpReq: FlightRefundApplyV2Request, _ headers: FlightRefundApplyV2Headers, _ runtime: TeaUtils.RuntimeOptions) async throws -> FlightRefundApplyV2Response {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: FlightRefundApplyV2ShrinkRequest = FlightRefundApplyV2ShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        if (!TeaUtils.Client.isUnset(tmpReq.passengerSegmentRelations)) {
            request.passengerSegmentRelationsShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.passengerSegmentRelations, "passenger_segment_relations", "json")
        }
        if (!TeaUtils.Client.isUnset(tmpReq.ticketNos)) {
            request.ticketNosShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.ticketNos, "ticket_nos", "json")
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.isvName)) {
            body["isv_name"] = request.isvName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.orderId)) {
            body["order_id"] = request.orderId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.outOrderId)) {
            body["out_order_id"] = request.outOrderId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.outSubOrderId)) {
            body["out_sub_order_id"] = request.outSubOrderId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.passengerSegmentRelationsShrink)) {
            body["passenger_segment_relations"] = request.passengerSegmentRelationsShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.preCalType)) {
            body["pre_cal_type"] = request.preCalType!;
        }
        if (!TeaUtils.Client.isUnset(request.refundReason)) {
            body["refund_reason"] = request.refundReason ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.refundReasonType)) {
            body["refund_reason_type"] = request.refundReasonType!;
        }
        if (!TeaUtils.Client.isUnset(request.ticketNosShrink)) {
            body["ticket_nos"] = request.ticketNosShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.totalRefundPrice)) {
            body["total_refund_price"] = request.totalRefundPrice!;
        }
        if (!TeaUtils.Client.isUnset(request.uploadPictUrls)) {
            body["upload_pict_urls"] = request.uploadPictUrls ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.voluntary)) {
            body["voluntary"] = request.voluntary!;
        }
        var realHeaders: [String: String] = [:]
        if (!TeaUtils.Client.isUnset(headers.commonHeaders)) {
            realHeaders = headers.commonHeaders ?? [:]
        }
        if (!TeaUtils.Client.isUnset(headers.xAcsBtripCorpToken)) {
            realHeaders["x-acs-btrip-corp-token"] = TeaUtils.Client.toJSONString(headers.xAcsBtripCorpToken);
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": realHeaders as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "FlightRefundApplyV2",
            "version": "2022-05-20",
            "protocol": "HTTPS",
            "pathname": "/dtb-flight/v2/refund/action/apply",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(FlightRefundApplyV2Response(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func flightRefundApplyV2(_ request: FlightRefundApplyV2Request) async throws -> FlightRefundApplyV2Response {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: FlightRefundApplyV2Headers = FlightRefundApplyV2Headers([:])
        return try await flightRefundApplyV2WithOptions(request as! FlightRefundApplyV2Request, headers as! FlightRefundApplyV2Headers, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func flightRefundDetailWithOptions(_ request: FlightRefundDetailRequest, _ headers: FlightRefundDetailHeaders, _ runtime: TeaUtils.RuntimeOptions) async throws -> FlightRefundDetailResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.disOrderId)) {
            query["dis_order_id"] = request.disOrderId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.disSubOrderId)) {
            query["dis_sub_order_id"] = request.disSubOrderId ?? "";
        }
        var realHeaders: [String: String] = [:]
        if (!TeaUtils.Client.isUnset(headers.commonHeaders)) {
            realHeaders = headers.commonHeaders ?? [:]
        }
        if (!TeaUtils.Client.isUnset(headers.xAcsBtripCorpToken)) {
            realHeaders["x-acs-btrip-corp-token"] = TeaUtils.Client.toJSONString(headers.xAcsBtripCorpToken);
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": realHeaders as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "FlightRefundDetail",
            "version": "2022-05-20",
            "protocol": "HTTPS",
            "pathname": "/dtb-flight/v1/refund/action/detail",
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(FlightRefundDetailResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func flightRefundDetail(_ request: FlightRefundDetailRequest) async throws -> FlightRefundDetailResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: FlightRefundDetailHeaders = FlightRefundDetailHeaders([:])
        return try await flightRefundDetailWithOptions(request as! FlightRefundDetailRequest, headers as! FlightRefundDetailHeaders, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func flightRefundDetailV2WithOptions(_ request: FlightRefundDetailV2Request, _ headers: FlightRefundDetailV2Headers, _ runtime: TeaUtils.RuntimeOptions) async throws -> FlightRefundDetailV2Response {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.isvName)) {
            query["isv_name"] = request.isvName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.orderId)) {
            query["order_id"] = request.orderId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.outOrderId)) {
            query["out_order_id"] = request.outOrderId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.outRefundApplyId)) {
            query["out_refund_apply_id"] = request.outRefundApplyId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.refundApplyId)) {
            query["refund_apply_id"] = request.refundApplyId ?? "";
        }
        var realHeaders: [String: String] = [:]
        if (!TeaUtils.Client.isUnset(headers.commonHeaders)) {
            realHeaders = headers.commonHeaders ?? [:]
        }
        if (!TeaUtils.Client.isUnset(headers.xAcsBtripCorpToken)) {
            realHeaders["x-acs-btrip-corp-token"] = TeaUtils.Client.toJSONString(headers.xAcsBtripCorpToken);
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": realHeaders as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "FlightRefundDetailV2",
            "version": "2022-05-20",
            "protocol": "HTTPS",
            "pathname": "/dtb-flight/v2/refund/action/detail",
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(FlightRefundDetailV2Response(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func flightRefundDetailV2(_ request: FlightRefundDetailV2Request) async throws -> FlightRefundDetailV2Response {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: FlightRefundDetailV2Headers = FlightRefundDetailV2Headers([:])
        return try await flightRefundDetailV2WithOptions(request as! FlightRefundDetailV2Request, headers as! FlightRefundDetailV2Headers, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func flightRefundPreCalWithOptions(_ tmpReq: FlightRefundPreCalRequest, _ headers: FlightRefundPreCalHeaders, _ runtime: TeaUtils.RuntimeOptions) async throws -> FlightRefundPreCalResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: FlightRefundPreCalShrinkRequest = FlightRefundPreCalShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        if (!TeaUtils.Client.isUnset(tmpReq.passengerSegmentInfoList)) {
            request.passengerSegmentInfoListShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.passengerSegmentInfoList, "passenger_segment_info_list", "json")
        }
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.disOrderId)) {
            query["dis_order_id"] = request.disOrderId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.isVoluntary)) {
            query["is_voluntary"] = request.isVoluntary ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.passengerSegmentInfoListShrink)) {
            query["passenger_segment_info_list"] = request.passengerSegmentInfoListShrink ?? "";
        }
        var realHeaders: [String: String] = [:]
        if (!TeaUtils.Client.isUnset(headers.commonHeaders)) {
            realHeaders = headers.commonHeaders ?? [:]
        }
        if (!TeaUtils.Client.isUnset(headers.xAcsBtripCorpToken)) {
            realHeaders["x-acs-btrip-corp-token"] = TeaUtils.Client.toJSONString(headers.xAcsBtripCorpToken);
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": realHeaders as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "FlightRefundPreCal",
            "version": "2022-05-20",
            "protocol": "HTTPS",
            "pathname": "/dtb-flight/v1/refund/action/pre-cal",
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(FlightRefundPreCalResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func flightRefundPreCal(_ request: FlightRefundPreCalRequest) async throws -> FlightRefundPreCalResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: FlightRefundPreCalHeaders = FlightRefundPreCalHeaders([:])
        return try await flightRefundPreCalWithOptions(request as! FlightRefundPreCalRequest, headers as! FlightRefundPreCalHeaders, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func flightRefundPreCalV2WithOptions(_ tmpReq: FlightRefundPreCalV2Request, _ headers: FlightRefundPreCalV2Headers, _ runtime: TeaUtils.RuntimeOptions) async throws -> FlightRefundPreCalV2Response {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: FlightRefundPreCalV2ShrinkRequest = FlightRefundPreCalV2ShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        if (!TeaUtils.Client.isUnset(tmpReq.passengerSegmentRelations)) {
            request.passengerSegmentRelationsShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.passengerSegmentRelations, "passenger_segment_relations", "json")
        }
        if (!TeaUtils.Client.isUnset(tmpReq.ticketNos)) {
            request.ticketNosShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.ticketNos, "ticket_nos", "json")
        }
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.isvName)) {
            query["isv_name"] = request.isvName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.orderId)) {
            query["order_id"] = request.orderId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.outOrderId)) {
            query["out_order_id"] = request.outOrderId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.passengerSegmentRelationsShrink)) {
            query["passenger_segment_relations"] = request.passengerSegmentRelationsShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.preCalType)) {
            query["pre_cal_type"] = request.preCalType!;
        }
        if (!TeaUtils.Client.isUnset(request.ticketNosShrink)) {
            query["ticket_nos"] = request.ticketNosShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.voluntary)) {
            query["voluntary"] = request.voluntary!;
        }
        var realHeaders: [String: String] = [:]
        if (!TeaUtils.Client.isUnset(headers.commonHeaders)) {
            realHeaders = headers.commonHeaders ?? [:]
        }
        if (!TeaUtils.Client.isUnset(headers.xAcsBtripCorpToken)) {
            realHeaders["x-acs-btrip-corp-token"] = TeaUtils.Client.toJSONString(headers.xAcsBtripCorpToken);
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": realHeaders as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "FlightRefundPreCalV2",
            "version": "2022-05-20",
            "protocol": "HTTPS",
            "pathname": "/dtb-flight/v2/refund/action/pre-cal",
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(FlightRefundPreCalV2Response(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func flightRefundPreCalV2(_ request: FlightRefundPreCalV2Request) async throws -> FlightRefundPreCalV2Response {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: FlightRefundPreCalV2Headers = FlightRefundPreCalV2Headers([:])
        return try await flightRefundPreCalV2WithOptions(request as! FlightRefundPreCalV2Request, headers as! FlightRefundPreCalV2Headers, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func flightSearchListWithOptions(_ request: FlightSearchListRequest, _ headers: FlightSearchListHeaders, _ runtime: TeaUtils.RuntimeOptions) async throws -> FlightSearchListResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.airlineCode)) {
            query["airline_code"] = request.airlineCode ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.arrCityCode)) {
            query["arr_city_code"] = request.arrCityCode ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.arrCityName)) {
            query["arr_city_name"] = request.arrCityName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.arrDate)) {
            query["arr_date"] = request.arrDate ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.cabinClass)) {
            query["cabin_class"] = request.cabinClass ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.depCityCode)) {
            query["dep_city_code"] = request.depCityCode ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.depCityName)) {
            query["dep_city_name"] = request.depCityName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.depDate)) {
            query["dep_date"] = request.depDate ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.flightNo)) {
            query["flight_no"] = request.flightNo ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.needMultiClassPrice)) {
            query["need_multi_class_price"] = request.needMultiClassPrice!;
        }
        if (!TeaUtils.Client.isUnset(request.transferCityCode)) {
            query["transfer_city_code"] = request.transferCityCode ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.transferFlightNo)) {
            query["transfer_flight_no"] = request.transferFlightNo ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.transferLeaveDate)) {
            query["transfer_leave_date"] = request.transferLeaveDate ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.tripType)) {
            query["trip_type"] = request.tripType ?? "";
        }
        var realHeaders: [String: String] = [:]
        if (!TeaUtils.Client.isUnset(headers.commonHeaders)) {
            realHeaders = headers.commonHeaders ?? [:]
        }
        if (!TeaUtils.Client.isUnset(headers.xAcsBtripCorpToken)) {
            realHeaders["x-acs-btrip-corp-token"] = TeaUtils.Client.toJSONString(headers.xAcsBtripCorpToken);
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": realHeaders as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "FlightSearchList",
            "version": "2022-05-20",
            "protocol": "HTTPS",
            "pathname": "/huge/dtb-flight/v1/flight/action/search-list",
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(FlightSearchListResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func flightSearchList(_ request: FlightSearchListRequest) async throws -> FlightSearchListResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: FlightSearchListHeaders = FlightSearchListHeaders([:])
        return try await flightSearchListWithOptions(request as! FlightSearchListRequest, headers as! FlightSearchListHeaders, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func groupCorpTokenWithOptions(_ request: GroupCorpTokenRequest, _ headers: GroupCorpTokenHeaders, _ runtime: TeaUtils.RuntimeOptions) async throws -> GroupCorpTokenResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.appSecret)) {
            query["app_secret"] = request.appSecret ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.corpId)) {
            query["corp_id"] = request.corpId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.subCorpId)) {
            query["sub_corp_id"] = request.subCorpId ?? "";
        }
        var realHeaders: [String: String] = [:]
        if (!TeaUtils.Client.isUnset(headers.commonHeaders)) {
            realHeaders = headers.commonHeaders ?? [:]
        }
        if (!TeaUtils.Client.isUnset(headers.xAcsBtripAccessToken)) {
            realHeaders["x-acs-btrip-access-token"] = TeaUtils.Client.toJSONString(headers.xAcsBtripAccessToken);
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": realHeaders as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GroupCorpToken",
            "version": "2022-05-20",
            "protocol": "HTTPS",
            "pathname": "/btrip-open-auth/v1/group-corp-token/action/take",
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GroupCorpTokenResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func groupCorpToken(_ request: GroupCorpTokenRequest) async throws -> GroupCorpTokenResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: GroupCorpTokenHeaders = GroupCorpTokenHeaders([:])
        return try await groupCorpTokenWithOptions(request as! GroupCorpTokenRequest, headers as! GroupCorpTokenHeaders, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func groupDepartSaveWithOptions(_ tmpReq: GroupDepartSaveRequest, _ headers: GroupDepartSaveHeaders, _ runtime: TeaUtils.RuntimeOptions) async throws -> GroupDepartSaveResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: GroupDepartSaveShrinkRequest = GroupDepartSaveShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        if (!TeaUtils.Client.isUnset(tmpReq.subCorpIdList)) {
            request.subCorpIdListShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.subCorpIdList, "sub_corp_id_list", "json")
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.deptName)) {
            body["dept_name"] = request.deptName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.managerIds)) {
            body["manager_ids"] = request.managerIds ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.outerDeptId)) {
            body["outer_dept_id"] = request.outerDeptId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.outerDeptPid)) {
            body["outer_dept_pid"] = request.outerDeptPid ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.status)) {
            body["status"] = request.status!;
        }
        if (!TeaUtils.Client.isUnset(request.subCorpIdListShrink)) {
            body["sub_corp_id_list"] = request.subCorpIdListShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.syncGroup)) {
            body["sync_group"] = request.syncGroup!;
        }
        var realHeaders: [String: String] = [:]
        if (!TeaUtils.Client.isUnset(headers.commonHeaders)) {
            realHeaders = headers.commonHeaders ?? [:]
        }
        if (!TeaUtils.Client.isUnset(headers.xAcsBtripCorpToken)) {
            realHeaders["x-acs-btrip-corp-token"] = TeaUtils.Client.toJSONString(headers.xAcsBtripCorpToken);
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": realHeaders as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GroupDepartSave",
            "version": "2022-05-20",
            "protocol": "HTTPS",
            "pathname": "/sub_corps/v1/departs",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GroupDepartSaveResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func groupDepartSave(_ request: GroupDepartSaveRequest) async throws -> GroupDepartSaveResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: GroupDepartSaveHeaders = GroupDepartSaveHeaders([:])
        return try await groupDepartSaveWithOptions(request as! GroupDepartSaveRequest, headers as! GroupDepartSaveHeaders, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func groupUserSaveWithOptions(_ tmpReq: GroupUserSaveRequest, _ headers: GroupUserSaveHeaders, _ runtime: TeaUtils.RuntimeOptions) async throws -> GroupUserSaveResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: GroupUserSaveShrinkRequest = GroupUserSaveShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        if (!TeaUtils.Client.isUnset(tmpReq.certList)) {
            request.certListShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.certList, "cert_list", "json")
        }
        if (!TeaUtils.Client.isUnset(tmpReq.subCorpIdList)) {
            request.subCorpIdListShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.subCorpIdList, "sub_corp_id_list", "json")
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.baseCityCode)) {
            body["base_city_code"] = request.baseCityCode ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.birthday)) {
            body["birthday"] = request.birthday ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.certListShrink)) {
            body["cert_list"] = request.certListShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.gender)) {
            body["gender"] = request.gender ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.jobNo)) {
            body["job_no"] = request.jobNo ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.phone)) {
            body["phone"] = request.phone ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.realNameEn)) {
            body["real_name_en"] = request.realNameEn ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.subCorpIdListShrink)) {
            body["sub_corp_id_list"] = request.subCorpIdListShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.userId)) {
            body["user_id"] = request.userId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.userName)) {
            body["user_name"] = request.userName ?? "";
        }
        var realHeaders: [String: String] = [:]
        if (!TeaUtils.Client.isUnset(headers.commonHeaders)) {
            realHeaders = headers.commonHeaders ?? [:]
        }
        if (!TeaUtils.Client.isUnset(headers.xAcsBtripCorpToken)) {
            realHeaders["x-acs-btrip-corp-token"] = TeaUtils.Client.toJSONString(headers.xAcsBtripCorpToken);
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": realHeaders as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GroupUserSave",
            "version": "2022-05-20",
            "protocol": "HTTPS",
            "pathname": "/sub_corps/v1/users",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GroupUserSaveResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func groupUserSave(_ request: GroupUserSaveRequest) async throws -> GroupUserSaveResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: GroupUserSaveHeaders = GroupUserSaveHeaders([:])
        return try await groupUserSaveWithOptions(request as! GroupUserSaveRequest, headers as! GroupUserSaveHeaders, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func hotelAskingPriceWithOptions(_ tmpReq: HotelAskingPriceRequest, _ headers: HotelAskingPriceHeaders, _ runtime: TeaUtils.RuntimeOptions) async throws -> HotelAskingPriceResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: HotelAskingPriceShrinkRequest = HotelAskingPriceShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        if (!TeaUtils.Client.isUnset(tmpReq.shids)) {
            request.shidsShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.shids, "shids", "json")
        }
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.adultNum)) {
            query["adult_num"] = request.adultNum ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.btripUserId)) {
            query["btrip_user_id"] = request.btripUserId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.checkInDate)) {
            query["check_in_date"] = request.checkInDate ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.checkOutDate)) {
            query["check_out_date"] = request.checkOutDate ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.cityCode)) {
            query["city_code"] = request.cityCode ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.cityName)) {
            query["city_name"] = request.cityName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.dir)) {
            query["dir"] = request.dir!;
        }
        if (!TeaUtils.Client.isUnset(request.hotelStar)) {
            query["hotel_star"] = request.hotelStar ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.isProtocol)) {
            query["is_protocol"] = request.isProtocol!;
        }
        if (!TeaUtils.Client.isUnset(request.paymentType)) {
            query["payment_type"] = request.paymentType!;
        }
        if (!TeaUtils.Client.isUnset(request.shidsShrink)) {
            query["shids"] = request.shidsShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.sortCode)) {
            query["sort_code"] = request.sortCode!;
        }
        var realHeaders: [String: String] = [:]
        if (!TeaUtils.Client.isUnset(headers.commonHeaders)) {
            realHeaders = headers.commonHeaders ?? [:]
        }
        if (!TeaUtils.Client.isUnset(headers.xAcsBtripCorpToken)) {
            realHeaders["x-acs-btrip-corp-token"] = TeaUtils.Client.toJSONString(headers.xAcsBtripCorpToken);
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": realHeaders as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "HotelAskingPrice",
            "version": "2022-05-20",
            "protocol": "HTTPS",
            "pathname": "/dtb-hotel/v1/hotels/action/asking-price",
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(HotelAskingPriceResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func hotelAskingPrice(_ request: HotelAskingPriceRequest) async throws -> HotelAskingPriceResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: HotelAskingPriceHeaders = HotelAskingPriceHeaders([:])
        return try await hotelAskingPriceWithOptions(request as! HotelAskingPriceRequest, headers as! HotelAskingPriceHeaders, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func hotelBillSettlementQueryWithOptions(_ request: HotelBillSettlementQueryRequest, _ headers: HotelBillSettlementQueryHeaders, _ runtime: TeaUtils.RuntimeOptions) async throws -> HotelBillSettlementQueryResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.pageNo)) {
            query["page_no"] = request.pageNo!;
        }
        if (!TeaUtils.Client.isUnset(request.pageSize)) {
            query["page_size"] = request.pageSize!;
        }
        if (!TeaUtils.Client.isUnset(request.periodEnd)) {
            query["period_end"] = request.periodEnd ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.periodStart)) {
            query["period_start"] = request.periodStart ?? "";
        }
        var realHeaders: [String: String] = [:]
        if (!TeaUtils.Client.isUnset(headers.commonHeaders)) {
            realHeaders = headers.commonHeaders ?? [:]
        }
        if (!TeaUtils.Client.isUnset(headers.xAcsBtripSoCorpToken)) {
            realHeaders["x-acs-btrip-so-corp-token"] = TeaUtils.Client.toJSONString(headers.xAcsBtripSoCorpToken);
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": realHeaders as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "HotelBillSettlementQuery",
            "version": "2022-05-20",
            "protocol": "HTTPS",
            "pathname": "/hotel/v1/bill-settlement",
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(HotelBillSettlementQueryResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func hotelBillSettlementQuery(_ request: HotelBillSettlementQueryRequest) async throws -> HotelBillSettlementQueryResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: HotelBillSettlementQueryHeaders = HotelBillSettlementQueryHeaders([:])
        return try await hotelBillSettlementQueryWithOptions(request as! HotelBillSettlementQueryRequest, headers as! HotelBillSettlementQueryHeaders, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func hotelCityCodeListWithOptions(_ request: HotelCityCodeListRequest, _ headers: HotelCityCodeListHeaders, _ runtime: TeaUtils.RuntimeOptions) async throws -> HotelCityCodeListResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.countryCode)) {
            query["country_code"] = request.countryCode ?? "";
        }
        var realHeaders: [String: String] = [:]
        if (!TeaUtils.Client.isUnset(headers.commonHeaders)) {
            realHeaders = headers.commonHeaders ?? [:]
        }
        if (!TeaUtils.Client.isUnset(headers.xAcsBtripCorpToken)) {
            realHeaders["x-acs-btrip-corp-token"] = TeaUtils.Client.toJSONString(headers.xAcsBtripCorpToken);
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": realHeaders as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "HotelCityCodeList",
            "version": "2022-05-20",
            "protocol": "HTTPS",
            "pathname": "/dtb-hotel/v1/city-codes/action/search",
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(HotelCityCodeListResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func hotelCityCodeList(_ request: HotelCityCodeListRequest) async throws -> HotelCityCodeListResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: HotelCityCodeListHeaders = HotelCityCodeListHeaders([:])
        return try await hotelCityCodeListWithOptions(request as! HotelCityCodeListRequest, headers as! HotelCityCodeListHeaders, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func hotelExceedApplyQueryWithOptions(_ request: HotelExceedApplyQueryRequest, _ headers: HotelExceedApplyQueryHeaders, _ runtime: TeaUtils.RuntimeOptions) async throws -> HotelExceedApplyQueryResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.applyId)) {
            query["apply_id"] = request.applyId!;
        }
        if (!TeaUtils.Client.isUnset(request.businessInstanceId)) {
            query["business_instance_id"] = request.businessInstanceId ?? "";
        }
        var realHeaders: [String: String] = [:]
        if (!TeaUtils.Client.isUnset(headers.commonHeaders)) {
            realHeaders = headers.commonHeaders ?? [:]
        }
        if (!TeaUtils.Client.isUnset(headers.xAcsBtripSoCorpToken)) {
            realHeaders["x-acs-btrip-so-corp-token"] = TeaUtils.Client.toJSONString(headers.xAcsBtripSoCorpToken);
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": realHeaders as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "HotelExceedApplyQuery",
            "version": "2022-05-20",
            "protocol": "HTTPS",
            "pathname": "/apply/v1/hotel-exceed",
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(HotelExceedApplyQueryResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func hotelExceedApplyQuery(_ request: HotelExceedApplyQueryRequest) async throws -> HotelExceedApplyQueryResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: HotelExceedApplyQueryHeaders = HotelExceedApplyQueryHeaders([:])
        return try await hotelExceedApplyQueryWithOptions(request as! HotelExceedApplyQueryRequest, headers as! HotelExceedApplyQueryHeaders, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func hotelGoodsQueryWithOptions(_ request: HotelGoodsQueryRequest, _ headers: HotelGoodsQueryHeaders, _ runtime: TeaUtils.RuntimeOptions) async throws -> HotelGoodsQueryResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.adultNum)) {
            query["adult_num"] = request.adultNum ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.agreementPrice)) {
            query["agreement_price"] = request.agreementPrice!;
        }
        if (!TeaUtils.Client.isUnset(request.beginDate)) {
            query["begin_date"] = request.beginDate ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.breakfastIncluded)) {
            query["breakfast_included"] = request.breakfastIncluded!;
        }
        if (!TeaUtils.Client.isUnset(request.btripUserId)) {
            query["btrip_user_id"] = request.btripUserId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.cityCode)) {
            query["city_code"] = request.cityCode ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.endDate)) {
            query["end_date"] = request.endDate ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.hotelId)) {
            query["hotel_id"] = request.hotelId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.payOverType)) {
            query["pay_over_type"] = request.payOverType!;
        }
        if (!TeaUtils.Client.isUnset(request.paymentType)) {
            query["payment_type"] = request.paymentType!;
        }
        if (!TeaUtils.Client.isUnset(request.specialInvoice)) {
            query["special_invoice"] = request.specialInvoice!;
        }
        if (!TeaUtils.Client.isUnset(request.superMan)) {
            query["super_man"] = request.superMan!;
        }
        var realHeaders: [String: String] = [:]
        if (!TeaUtils.Client.isUnset(headers.commonHeaders)) {
            realHeaders = headers.commonHeaders ?? [:]
        }
        if (!TeaUtils.Client.isUnset(headers.xAcsBtripCorpToken)) {
            realHeaders["x-acs-btrip-corp-token"] = TeaUtils.Client.toJSONString(headers.xAcsBtripCorpToken);
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": realHeaders as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "HotelGoodsQuery",
            "version": "2022-05-20",
            "protocol": "HTTPS",
            "pathname": "/dtb-hotel/v1/hotel-goods",
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(HotelGoodsQueryResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func hotelGoodsQuery(_ request: HotelGoodsQueryRequest) async throws -> HotelGoodsQueryResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: HotelGoodsQueryHeaders = HotelGoodsQueryHeaders([:])
        return try await hotelGoodsQueryWithOptions(request as! HotelGoodsQueryRequest, headers as! HotelGoodsQueryHeaders, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func hotelIndexInfoWithOptions(_ request: HotelIndexInfoRequest, _ headers: HotelIndexInfoHeaders, _ runtime: TeaUtils.RuntimeOptions) async throws -> HotelIndexInfoResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.cityCode)) {
            query["city_code"] = request.cityCode ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.hotelStatus)) {
            query["hotel_status"] = request.hotelStatus!;
        }
        if (!TeaUtils.Client.isUnset(request.pageSize)) {
            query["page_size"] = request.pageSize!;
        }
        if (!TeaUtils.Client.isUnset(request.pageToken)) {
            query["page_token"] = request.pageToken ?? "";
        }
        var realHeaders: [String: String] = [:]
        if (!TeaUtils.Client.isUnset(headers.commonHeaders)) {
            realHeaders = headers.commonHeaders ?? [:]
        }
        if (!TeaUtils.Client.isUnset(headers.xAcsBtripCorpToken)) {
            realHeaders["x-acs-btrip-corp-token"] = TeaUtils.Client.toJSONString(headers.xAcsBtripCorpToken);
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": realHeaders as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "HotelIndexInfo",
            "version": "2022-05-20",
            "protocol": "HTTPS",
            "pathname": "/dtb-hotel/v1/index-infos",
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(HotelIndexInfoResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func hotelIndexInfo(_ request: HotelIndexInfoRequest) async throws -> HotelIndexInfoResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: HotelIndexInfoHeaders = HotelIndexInfoHeaders([:])
        return try await hotelIndexInfoWithOptions(request as! HotelIndexInfoRequest, headers as! HotelIndexInfoHeaders, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func hotelOrderCancelWithOptions(_ request: HotelOrderCancelRequest, _ headers: HotelOrderCancelHeaders, _ runtime: TeaUtils.RuntimeOptions) async throws -> HotelOrderCancelResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.btripOrderId)) {
            query["btrip_order_id"] = request.btripOrderId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.disOrderId)) {
            query["dis_order_id"] = request.disOrderId ?? "";
        }
        var realHeaders: [String: String] = [:]
        if (!TeaUtils.Client.isUnset(headers.commonHeaders)) {
            realHeaders = headers.commonHeaders ?? [:]
        }
        if (!TeaUtils.Client.isUnset(headers.xAcsBtripCorpToken)) {
            realHeaders["x-acs-btrip-corp-token"] = TeaUtils.Client.toJSONString(headers.xAcsBtripCorpToken);
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": realHeaders as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "HotelOrderCancel",
            "version": "2022-05-20",
            "protocol": "HTTPS",
            "pathname": "/dtb-hotel/v1/orders/action/cancel",
            "method": "DELETE",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(HotelOrderCancelResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func hotelOrderCancel(_ request: HotelOrderCancelRequest) async throws -> HotelOrderCancelResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: HotelOrderCancelHeaders = HotelOrderCancelHeaders([:])
        return try await hotelOrderCancelWithOptions(request as! HotelOrderCancelRequest, headers as! HotelOrderCancelHeaders, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func hotelOrderChangeApplyWithOptions(_ tmpReq: HotelOrderChangeApplyRequest, _ headers: HotelOrderChangeApplyHeaders, _ runtime: TeaUtils.RuntimeOptions) async throws -> HotelOrderChangeApplyResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: HotelOrderChangeApplyShrinkRequest = HotelOrderChangeApplyShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        if (!TeaUtils.Client.isUnset(tmpReq.roomInfoList)) {
            request.roomInfoListShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.roomInfoList, "room_info_list", "json")
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.btripUserId)) {
            body["btrip_user_id"] = request.btripUserId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.disOrderId)) {
            body["dis_order_id"] = request.disOrderId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.reason)) {
            body["reason"] = request.reason ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.roomInfoListShrink)) {
            body["room_info_list"] = request.roomInfoListShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.saleOrderId)) {
            body["sale_order_id"] = request.saleOrderId ?? "";
        }
        var realHeaders: [String: String] = [:]
        if (!TeaUtils.Client.isUnset(headers.commonHeaders)) {
            realHeaders = headers.commonHeaders ?? [:]
        }
        if (!TeaUtils.Client.isUnset(headers.xAcsBtripCorpToken)) {
            realHeaders["x-acs-btrip-corp-token"] = TeaUtils.Client.toJSONString(headers.xAcsBtripCorpToken);
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": realHeaders as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "HotelOrderChangeApply",
            "version": "2022-05-20",
            "protocol": "HTTPS",
            "pathname": "/dtb-hotel/v1/orders/action/change/apply",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(HotelOrderChangeApplyResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func hotelOrderChangeApply(_ request: HotelOrderChangeApplyRequest) async throws -> HotelOrderChangeApplyResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: HotelOrderChangeApplyHeaders = HotelOrderChangeApplyHeaders([:])
        return try await hotelOrderChangeApplyWithOptions(request as! HotelOrderChangeApplyRequest, headers as! HotelOrderChangeApplyHeaders, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func hotelOrderChangeDetailWithOptions(_ request: HotelOrderChangeDetailRequest, _ headers: HotelOrderChangeDetailHeaders, _ runtime: TeaUtils.RuntimeOptions) async throws -> HotelOrderChangeDetailResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.btripUserId)) {
            body["btrip_user_id"] = request.btripUserId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.changeOrderId)) {
            body["change_order_id"] = request.changeOrderId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.disOrderId)) {
            body["dis_order_id"] = request.disOrderId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.saleOrderId)) {
            body["sale_order_id"] = request.saleOrderId ?? "";
        }
        var realHeaders: [String: String] = [:]
        if (!TeaUtils.Client.isUnset(headers.commonHeaders)) {
            realHeaders = headers.commonHeaders ?? [:]
        }
        if (!TeaUtils.Client.isUnset(headers.xAcsBtripCorpToken)) {
            realHeaders["x-acs-btrip-corp-token"] = TeaUtils.Client.toJSONString(headers.xAcsBtripCorpToken);
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": realHeaders as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "HotelOrderChangeDetail",
            "version": "2022-05-20",
            "protocol": "HTTPS",
            "pathname": "/dtb-hotel/v1/orders/action/change/detail",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(HotelOrderChangeDetailResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func hotelOrderChangeDetail(_ request: HotelOrderChangeDetailRequest) async throws -> HotelOrderChangeDetailResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: HotelOrderChangeDetailHeaders = HotelOrderChangeDetailHeaders([:])
        return try await hotelOrderChangeDetailWithOptions(request as! HotelOrderChangeDetailRequest, headers as! HotelOrderChangeDetailHeaders, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func hotelOrderCreateWithOptions(_ tmpReq: HotelOrderCreateRequest, _ headers: HotelOrderCreateHeaders, _ runtime: TeaUtils.RuntimeOptions) async throws -> HotelOrderCreateResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: HotelOrderCreateShrinkRequest = HotelOrderCreateShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        if (!TeaUtils.Client.isUnset(tmpReq.invoiceInfo)) {
            request.invoiceInfoShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.invoiceInfo, "invoice_info", "json")
        }
        if (!TeaUtils.Client.isUnset(tmpReq.occupantInfoList)) {
            request.occupantInfoListShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.occupantInfoList, "occupant_info_list", "json")
        }
        if (!TeaUtils.Client.isUnset(tmpReq.promotionInfo)) {
            request.promotionInfoShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.promotionInfo, "promotion_info", "json")
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.btripUserId)) {
            body["btrip_user_id"] = request.btripUserId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.checkIn)) {
            body["check_in"] = request.checkIn ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.checkOut)) {
            body["check_out"] = request.checkOut ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.contractEmail)) {
            body["contract_email"] = request.contractEmail ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.contractName)) {
            body["contract_name"] = request.contractName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.contractPhone)) {
            body["contract_phone"] = request.contractPhone ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.corpPayPrice)) {
            body["corp_pay_price"] = request.corpPayPrice!;
        }
        if (!TeaUtils.Client.isUnset(request.disOrderId)) {
            body["dis_order_id"] = request.disOrderId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.extra)) {
            body["extra"] = request.extra ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.invoiceInfoShrink)) {
            body["invoice_info"] = request.invoiceInfoShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.itemId)) {
            body["item_id"] = request.itemId!;
        }
        if (!TeaUtils.Client.isUnset(request.itineraryNo)) {
            body["itinerary_no"] = request.itineraryNo ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.occupantInfoListShrink)) {
            body["occupant_info_list"] = request.occupantInfoListShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.personPayPrice)) {
            body["person_pay_price"] = request.personPayPrice!;
        }
        if (!TeaUtils.Client.isUnset(request.promotionInfoShrink)) {
            body["promotion_info"] = request.promotionInfoShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.ratePlanId)) {
            body["rate_plan_id"] = request.ratePlanId!;
        }
        if (!TeaUtils.Client.isUnset(request.roomId)) {
            body["room_id"] = request.roomId!;
        }
        if (!TeaUtils.Client.isUnset(request.roomNum)) {
            body["room_num"] = request.roomNum!;
        }
        if (!TeaUtils.Client.isUnset(request.sellerId)) {
            body["seller_id"] = request.sellerId!;
        }
        if (!TeaUtils.Client.isUnset(request.shid)) {
            body["shid"] = request.shid!;
        }
        if (!TeaUtils.Client.isUnset(request.totalOrderPrice)) {
            body["total_order_price"] = request.totalOrderPrice!;
        }
        if (!TeaUtils.Client.isUnset(request.validateResKey)) {
            body["validate_res_key"] = request.validateResKey ?? "";
        }
        var realHeaders: [String: String] = [:]
        if (!TeaUtils.Client.isUnset(headers.commonHeaders)) {
            realHeaders = headers.commonHeaders ?? [:]
        }
        if (!TeaUtils.Client.isUnset(headers.xAcsBtripCorpToken)) {
            realHeaders["x-acs-btrip-corp-token"] = TeaUtils.Client.toJSONString(headers.xAcsBtripCorpToken);
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": realHeaders as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "HotelOrderCreate",
            "version": "2022-05-20",
            "protocol": "HTTPS",
            "pathname": "/dtb-hotel/v1/orders/action/create",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(HotelOrderCreateResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func hotelOrderCreate(_ request: HotelOrderCreateRequest) async throws -> HotelOrderCreateResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: HotelOrderCreateHeaders = HotelOrderCreateHeaders([:])
        return try await hotelOrderCreateWithOptions(request as! HotelOrderCreateRequest, headers as! HotelOrderCreateHeaders, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func hotelOrderDetailInfoWithOptions(_ request: HotelOrderDetailInfoRequest, _ headers: HotelOrderDetailInfoHeaders, _ runtime: TeaUtils.RuntimeOptions) async throws -> HotelOrderDetailInfoResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.btripOrderId)) {
            query["btrip_order_id"] = request.btripOrderId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.disOrderId)) {
            query["dis_order_id"] = request.disOrderId ?? "";
        }
        var realHeaders: [String: String] = [:]
        if (!TeaUtils.Client.isUnset(headers.commonHeaders)) {
            realHeaders = headers.commonHeaders ?? [:]
        }
        if (!TeaUtils.Client.isUnset(headers.xAcsBtripCorpToken)) {
            realHeaders["x-acs-btrip-corp-token"] = TeaUtils.Client.toJSONString(headers.xAcsBtripCorpToken);
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": realHeaders as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "HotelOrderDetailInfo",
            "version": "2022-05-20",
            "protocol": "HTTPS",
            "pathname": "/dtb-hotel/v1/orders/action/detail",
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(HotelOrderDetailInfoResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func hotelOrderDetailInfo(_ request: HotelOrderDetailInfoRequest) async throws -> HotelOrderDetailInfoResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: HotelOrderDetailInfoHeaders = HotelOrderDetailInfoHeaders([:])
        return try await hotelOrderDetailInfoWithOptions(request as! HotelOrderDetailInfoRequest, headers as! HotelOrderDetailInfoHeaders, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func hotelOrderInfoQueryWithOptions(_ orderId: String, _ headers: HotelOrderInfoQueryHeaders, _ runtime: TeaUtils.RuntimeOptions) async throws -> HotelOrderInfoQueryResponse {
        var realHeaders: [String: String] = [:]
        if (!TeaUtils.Client.isUnset(headers.commonHeaders)) {
            realHeaders = headers.commonHeaders ?? [:]
        }
        if (!TeaUtils.Client.isUnset(headers.xAcsBtripCorpToken)) {
            realHeaders["x-acs-btrip-corp-token"] = TeaUtils.Client.toJSONString(headers.xAcsBtripCorpToken);
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": realHeaders as! [String: String]
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "HotelOrderInfoQuery",
            "version": "2022-05-20",
            "protocol": "HTTPS",
            "pathname": "/order/v1/hotelOrders/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(orderId)),
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(HotelOrderInfoQueryResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func hotelOrderInfoQuery(_ orderId: String) async throws -> HotelOrderInfoQueryResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: HotelOrderInfoQueryHeaders = HotelOrderInfoQueryHeaders([:])
        return try await hotelOrderInfoQueryWithOptions(orderId as! String, headers as! HotelOrderInfoQueryHeaders, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func hotelOrderListQueryWithOptions(_ request: HotelOrderListQueryRequest, _ headers: HotelOrderListQueryHeaders, _ runtime: TeaUtils.RuntimeOptions) async throws -> HotelOrderListQueryResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.allApply)) {
            query["all_apply"] = request.allApply!;
        }
        if (!TeaUtils.Client.isUnset(request.applyId)) {
            query["apply_id"] = request.applyId!;
        }
        if (!TeaUtils.Client.isUnset(request.category)) {
            query["category"] = request.category!;
        }
        if (!TeaUtils.Client.isUnset(request.departId)) {
            query["depart_id"] = request.departId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.endTime)) {
            query["end_time"] = request.endTime ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.page)) {
            query["page"] = request.page!;
        }
        if (!TeaUtils.Client.isUnset(request.pageSize)) {
            query["page_size"] = request.pageSize!;
        }
        if (!TeaUtils.Client.isUnset(request.startTime)) {
            query["start_time"] = request.startTime ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.thirdpartApplyId)) {
            query["thirdpart_apply_id"] = request.thirdpartApplyId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.updateEndTime)) {
            query["update_end_time"] = request.updateEndTime ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.updateStartTime)) {
            query["update_start_time"] = request.updateStartTime ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.userId)) {
            query["user_id"] = request.userId ?? "";
        }
        var realHeaders: [String: String] = [:]
        if (!TeaUtils.Client.isUnset(headers.commonHeaders)) {
            realHeaders = headers.commonHeaders ?? [:]
        }
        if (!TeaUtils.Client.isUnset(headers.xAcsBtripSoCorpToken)) {
            realHeaders["x-acs-btrip-so-corp-token"] = TeaUtils.Client.toJSONString(headers.xAcsBtripSoCorpToken);
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": realHeaders as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "HotelOrderListQuery",
            "version": "2022-05-20",
            "protocol": "HTTPS",
            "pathname": "/hotel/v1/order-list",
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(HotelOrderListQueryResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func hotelOrderListQuery(_ request: HotelOrderListQueryRequest) async throws -> HotelOrderListQueryResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: HotelOrderListQueryHeaders = HotelOrderListQueryHeaders([:])
        return try await hotelOrderListQueryWithOptions(request as! HotelOrderListQueryRequest, headers as! HotelOrderListQueryHeaders, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func hotelOrderPayWithOptions(_ request: HotelOrderPayRequest, _ headers: HotelOrderPayHeaders, _ runtime: TeaUtils.RuntimeOptions) async throws -> HotelOrderPayResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.btripOrderId)) {
            body["btrip_order_id"] = request.btripOrderId!;
        }
        if (!TeaUtils.Client.isUnset(request.btripUserId)) {
            body["btrip_user_id"] = request.btripUserId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.companyPayFee)) {
            body["company_pay_fee"] = request.companyPayFee!;
        }
        if (!TeaUtils.Client.isUnset(request.personPayFee)) {
            body["person_pay_fee"] = request.personPayFee!;
        }
        if (!TeaUtils.Client.isUnset(request.thirdPayAccount)) {
            body["third_pay_account"] = request.thirdPayAccount ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.thirdTradeNo)) {
            body["third_trade_no"] = request.thirdTradeNo ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.totalPrice)) {
            body["total_price"] = request.totalPrice!;
        }
        var realHeaders: [String: String] = [:]
        if (!TeaUtils.Client.isUnset(headers.commonHeaders)) {
            realHeaders = headers.commonHeaders ?? [:]
        }
        if (!TeaUtils.Client.isUnset(headers.xAcsBtripCorpToken)) {
            realHeaders["x-acs-btrip-corp-token"] = TeaUtils.Client.toJSONString(headers.xAcsBtripCorpToken);
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": realHeaders as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "HotelOrderPay",
            "version": "2022-05-20",
            "protocol": "HTTPS",
            "pathname": "/dtb-hotel/v1/orders/action/pay",
            "method": "PUT",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(HotelOrderPayResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func hotelOrderPay(_ request: HotelOrderPayRequest) async throws -> HotelOrderPayResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: HotelOrderPayHeaders = HotelOrderPayHeaders([:])
        return try await hotelOrderPayWithOptions(request as! HotelOrderPayRequest, headers as! HotelOrderPayHeaders, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func hotelOrderPreValidateWithOptions(_ tmpReq: HotelOrderPreValidateRequest, _ headers: HotelOrderPreValidateHeaders, _ runtime: TeaUtils.RuntimeOptions) async throws -> HotelOrderPreValidateResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: HotelOrderPreValidateShrinkRequest = HotelOrderPreValidateShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        if (!TeaUtils.Client.isUnset(tmpReq.dailyList)) {
            request.dailyListShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.dailyList, "daily_list", "json")
        }
        if (!TeaUtils.Client.isUnset(tmpReq.occupantInfoList)) {
            request.occupantInfoListShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.occupantInfoList, "occupant_info_list", "json")
        }
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.btripUserId)) {
            query["btrip_user_id"] = request.btripUserId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.checkIn)) {
            query["check_in"] = request.checkIn ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.checkOut)) {
            query["check_out"] = request.checkOut ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.dailyListShrink)) {
            query["daily_list"] = request.dailyListShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.itemId)) {
            query["item_id"] = request.itemId!;
        }
        if (!TeaUtils.Client.isUnset(request.numberOfAdultsPerRoom)) {
            query["number_of_adults_per_room"] = request.numberOfAdultsPerRoom!;
        }
        if (!TeaUtils.Client.isUnset(request.occupantInfoListShrink)) {
            query["occupant_info_list"] = request.occupantInfoListShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.ratePlanId)) {
            query["rate_plan_id"] = request.ratePlanId!;
        }
        if (!TeaUtils.Client.isUnset(request.roomId)) {
            query["room_id"] = request.roomId!;
        }
        if (!TeaUtils.Client.isUnset(request.roomNum)) {
            query["room_num"] = request.roomNum!;
        }
        if (!TeaUtils.Client.isUnset(request.searchRoomPrice)) {
            query["search_room_price"] = request.searchRoomPrice!;
        }
        if (!TeaUtils.Client.isUnset(request.sellerId)) {
            query["seller_id"] = request.sellerId!;
        }
        if (!TeaUtils.Client.isUnset(request.shid)) {
            query["shid"] = request.shid!;
        }
        var realHeaders: [String: String] = [:]
        if (!TeaUtils.Client.isUnset(headers.commonHeaders)) {
            realHeaders = headers.commonHeaders ?? [:]
        }
        if (!TeaUtils.Client.isUnset(headers.xAcsBtripCorpToken)) {
            realHeaders["x-acs-btrip-corp-token"] = TeaUtils.Client.toJSONString(headers.xAcsBtripCorpToken);
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": realHeaders as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "HotelOrderPreValidate",
            "version": "2022-05-20",
            "protocol": "HTTPS",
            "pathname": "/dtb-hotel/v1/orders/action/pre-validate",
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(HotelOrderPreValidateResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func hotelOrderPreValidate(_ request: HotelOrderPreValidateRequest) async throws -> HotelOrderPreValidateResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: HotelOrderPreValidateHeaders = HotelOrderPreValidateHeaders([:])
        return try await hotelOrderPreValidateWithOptions(request as! HotelOrderPreValidateRequest, headers as! HotelOrderPreValidateHeaders, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func hotelOrderQueryWithOptions(_ request: HotelOrderQueryRequest, _ headers: HotelOrderQueryHeaders, _ runtime: TeaUtils.RuntimeOptions) async throws -> HotelOrderQueryResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.orderId)) {
            query["order_id"] = request.orderId!;
        }
        var realHeaders: [String: String] = [:]
        if (!TeaUtils.Client.isUnset(headers.commonHeaders)) {
            realHeaders = headers.commonHeaders ?? [:]
        }
        if (!TeaUtils.Client.isUnset(headers.xAcsBtripSoCorpToken)) {
            realHeaders["x-acs-btrip-so-corp-token"] = TeaUtils.Client.toJSONString(headers.xAcsBtripSoCorpToken);
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": realHeaders as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "HotelOrderQuery",
            "version": "2022-05-20",
            "protocol": "HTTPS",
            "pathname": "/hotel/v1/order",
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(HotelOrderQueryResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func hotelOrderQuery(_ request: HotelOrderQueryRequest) async throws -> HotelOrderQueryResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: HotelOrderQueryHeaders = HotelOrderQueryHeaders([:])
        return try await hotelOrderQueryWithOptions(request as! HotelOrderQueryRequest, headers as! HotelOrderQueryHeaders, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func hotelPricePullWithOptions(_ tmpReq: HotelPricePullRequest, _ headers: HotelPricePullHeaders, _ runtime: TeaUtils.RuntimeOptions) async throws -> HotelPricePullResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: HotelPricePullShrinkRequest = HotelPricePullShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        if (!TeaUtils.Client.isUnset(tmpReq.hotelIds)) {
            request.hotelIdsShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.hotelIds, "hotel_ids", "json")
        }
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.btripUserId)) {
            query["btrip_user_id"] = request.btripUserId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.checkIn)) {
            query["check_in"] = request.checkIn ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.checkOut)) {
            query["check_out"] = request.checkOut ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.cityCode)) {
            query["city_code"] = request.cityCode!;
        }
        if (!TeaUtils.Client.isUnset(request.hotelIdsShrink)) {
            query["hotel_ids"] = request.hotelIdsShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.paymentType)) {
            query["payment_type"] = request.paymentType!;
        }
        var realHeaders: [String: String] = [:]
        if (!TeaUtils.Client.isUnset(headers.commonHeaders)) {
            realHeaders = headers.commonHeaders ?? [:]
        }
        if (!TeaUtils.Client.isUnset(headers.xAcsBtripCorpToken)) {
            realHeaders["x-acs-btrip-corp-token"] = TeaUtils.Client.toJSONString(headers.xAcsBtripCorpToken);
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": realHeaders as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "HotelPricePull",
            "version": "2022-05-20",
            "protocol": "HTTPS",
            "pathname": "/dtb-hotel/v1/prices/action/pull",
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(HotelPricePullResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func hotelPricePull(_ request: HotelPricePullRequest) async throws -> HotelPricePullResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: HotelPricePullHeaders = HotelPricePullHeaders([:])
        return try await hotelPricePullWithOptions(request as! HotelPricePullRequest, headers as! HotelPricePullHeaders, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func hotelRoomInfoWithOptions(_ tmpReq: HotelRoomInfoRequest, _ headers: HotelRoomInfoHeaders, _ runtime: TeaUtils.RuntimeOptions) async throws -> HotelRoomInfoResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: HotelRoomInfoShrinkRequest = HotelRoomInfoShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        if (!TeaUtils.Client.isUnset(tmpReq.roomIds)) {
            request.roomIdsShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.roomIds, "room_ids", "json")
        }
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.roomIdsShrink)) {
            query["room_ids"] = request.roomIdsShrink ?? "";
        }
        var realHeaders: [String: String] = [:]
        if (!TeaUtils.Client.isUnset(headers.commonHeaders)) {
            realHeaders = headers.commonHeaders ?? [:]
        }
        if (!TeaUtils.Client.isUnset(headers.xAcsBtripCorpToken)) {
            realHeaders["x-acs-btrip-corp-token"] = TeaUtils.Client.toJSONString(headers.xAcsBtripCorpToken);
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": realHeaders as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "HotelRoomInfo",
            "version": "2022-05-20",
            "protocol": "HTTPS",
            "pathname": "/dtb-hotel/v1/room-infos",
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(HotelRoomInfoResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func hotelRoomInfo(_ request: HotelRoomInfoRequest) async throws -> HotelRoomInfoResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: HotelRoomInfoHeaders = HotelRoomInfoHeaders([:])
        return try await hotelRoomInfoWithOptions(request as! HotelRoomInfoRequest, headers as! HotelRoomInfoHeaders, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func hotelSearchWithOptions(_ tmpReq: HotelSearchRequest, _ headers: HotelSearchHeaders, _ runtime: TeaUtils.RuntimeOptions) async throws -> HotelSearchResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: HotelSearchShrinkRequest = HotelSearchShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        if (!TeaUtils.Client.isUnset(tmpReq.brandCode)) {
            request.brandCodeShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.brandCode, "brand_code", "json")
        }
        if (!TeaUtils.Client.isUnset(tmpReq.shids)) {
            request.shidsShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.shids, "shids", "json")
        }
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.adultNum)) {
            query["adult_num"] = request.adultNum ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.brandCodeShrink)) {
            query["brand_code"] = request.brandCodeShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.btripUserId)) {
            query["btrip_user_id"] = request.btripUserId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.checkInDate)) {
            query["check_in_date"] = request.checkInDate ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.checkOutDate)) {
            query["check_out_date"] = request.checkOutDate ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.cityCode)) {
            query["city_code"] = request.cityCode ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.dir)) {
            query["dir"] = request.dir!;
        }
        if (!TeaUtils.Client.isUnset(request.distance)) {
            query["distance"] = request.distance!;
        }
        if (!TeaUtils.Client.isUnset(request.districtCode)) {
            query["district_code"] = request.districtCode ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.hotelStar)) {
            query["hotel_star"] = request.hotelStar ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.isProtocol)) {
            query["is_protocol"] = request.isProtocol!;
        }
        if (!TeaUtils.Client.isUnset(request.keyWords)) {
            query["key_words"] = request.keyWords ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.location)) {
            query["location"] = request.location ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.maxPrice)) {
            query["max_price"] = request.maxPrice!;
        }
        if (!TeaUtils.Client.isUnset(request.minPrice)) {
            query["min_price"] = request.minPrice!;
        }
        if (!TeaUtils.Client.isUnset(request.pageNo)) {
            query["page_no"] = request.pageNo!;
        }
        if (!TeaUtils.Client.isUnset(request.pageSize)) {
            query["page_size"] = request.pageSize!;
        }
        if (!TeaUtils.Client.isUnset(request.payOverType)) {
            query["pay_over_type"] = request.payOverType!;
        }
        if (!TeaUtils.Client.isUnset(request.paymentType)) {
            query["payment_type"] = request.paymentType!;
        }
        if (!TeaUtils.Client.isUnset(request.shidsShrink)) {
            query["shids"] = request.shidsShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.sortCode)) {
            query["sort_code"] = request.sortCode!;
        }
        if (!TeaUtils.Client.isUnset(request.superMan)) {
            query["super_man"] = request.superMan!;
        }
        var realHeaders: [String: String] = [:]
        if (!TeaUtils.Client.isUnset(headers.commonHeaders)) {
            realHeaders = headers.commonHeaders ?? [:]
        }
        if (!TeaUtils.Client.isUnset(headers.xAcsBtripCorpToken)) {
            realHeaders["x-acs-btrip-corp-token"] = TeaUtils.Client.toJSONString(headers.xAcsBtripCorpToken);
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": realHeaders as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "HotelSearch",
            "version": "2022-05-20",
            "protocol": "HTTPS",
            "pathname": "/dtb-hotel/v1/hotels/action/search",
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(HotelSearchResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func hotelSearch(_ request: HotelSearchRequest) async throws -> HotelSearchResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: HotelSearchHeaders = HotelSearchHeaders([:])
        return try await hotelSearchWithOptions(request as! HotelSearchRequest, headers as! HotelSearchHeaders, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func hotelStaticInfoWithOptions(_ tmpReq: HotelStaticInfoRequest, _ headers: HotelStaticInfoHeaders, _ runtime: TeaUtils.RuntimeOptions) async throws -> HotelStaticInfoResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: HotelStaticInfoShrinkRequest = HotelStaticInfoShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        if (!TeaUtils.Client.isUnset(tmpReq.hotelIds)) {
            request.hotelIdsShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.hotelIds, "hotel_ids", "json")
        }
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.hotelIdsShrink)) {
            query["hotel_ids"] = request.hotelIdsShrink ?? "";
        }
        var realHeaders: [String: String] = [:]
        if (!TeaUtils.Client.isUnset(headers.commonHeaders)) {
            realHeaders = headers.commonHeaders ?? [:]
        }
        if (!TeaUtils.Client.isUnset(headers.xAcsBtripCorpToken)) {
            realHeaders["x-acs-btrip-corp-token"] = TeaUtils.Client.toJSONString(headers.xAcsBtripCorpToken);
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": realHeaders as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "HotelStaticInfo",
            "version": "2022-05-20",
            "protocol": "HTTPS",
            "pathname": "/dtb-hotel/v1/static-infos",
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(HotelStaticInfoResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func hotelStaticInfo(_ request: HotelStaticInfoRequest) async throws -> HotelStaticInfoResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: HotelStaticInfoHeaders = HotelStaticInfoHeaders([:])
        return try await hotelStaticInfoWithOptions(request as! HotelStaticInfoRequest, headers as! HotelStaticInfoHeaders, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func hotelSuggestV2WithOptions(_ request: HotelSuggestV2Request, _ headers: HotelSuggestV2Headers, _ runtime: TeaUtils.RuntimeOptions) async throws -> HotelSuggestV2Response {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.btripUserId)) {
            query["btrip_user_id"] = request.btripUserId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.checkIn)) {
            query["check_in"] = request.checkIn ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.checkOut)) {
            query["check_out"] = request.checkOut ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.cityCode)) {
            query["city_code"] = request.cityCode ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.keyword)) {
            query["keyword"] = request.keyword ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.searchType)) {
            query["search_type"] = request.searchType!;
        }
        var realHeaders: [String: String] = [:]
        if (!TeaUtils.Client.isUnset(headers.commonHeaders)) {
            realHeaders = headers.commonHeaders ?? [:]
        }
        if (!TeaUtils.Client.isUnset(headers.xAcsBtripCorpToken)) {
            realHeaders["x-acs-btrip-corp-token"] = TeaUtils.Client.toJSONString(headers.xAcsBtripCorpToken);
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": realHeaders as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "HotelSuggestV2",
            "version": "2022-05-20",
            "protocol": "HTTPS",
            "pathname": "/dtb-hotel/v2/suggest-infos",
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(HotelSuggestV2Response(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func hotelSuggestV2(_ request: HotelSuggestV2Request) async throws -> HotelSuggestV2Response {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: HotelSuggestV2Headers = HotelSuggestV2Headers([:])
        return try await hotelSuggestV2WithOptions(request as! HotelSuggestV2Request, headers as! HotelSuggestV2Headers, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func iFlightOrderDetailQueryWithOptions(_ request: IFlightOrderDetailQueryRequest, _ headers: IFlightOrderDetailQueryHeaders, _ runtime: TeaUtils.RuntimeOptions) async throws -> IFlightOrderDetailQueryResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.orderId)) {
            query["order_id"] = request.orderId!;
        }
        var realHeaders: [String: String] = [:]
        if (!TeaUtils.Client.isUnset(headers.commonHeaders)) {
            realHeaders = headers.commonHeaders ?? [:]
        }
        if (!TeaUtils.Client.isUnset(headers.xAcsBtripCorpToken)) {
            realHeaders["x-acs-btrip-corp-token"] = TeaUtils.Client.toJSONString(headers.xAcsBtripCorpToken);
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": realHeaders as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "IFlightOrderDetailQuery",
            "version": "2022-05-20",
            "protocol": "HTTPS",
            "pathname": "/open/v1/intlFlight-order-detail-query",
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(IFlightOrderDetailQueryResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func iFlightOrderDetailQuery(_ request: IFlightOrderDetailQueryRequest) async throws -> IFlightOrderDetailQueryResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: IFlightOrderDetailQueryHeaders = IFlightOrderDetailQueryHeaders([:])
        return try await iFlightOrderDetailQueryWithOptions(request as! IFlightOrderDetailQueryRequest, headers as! IFlightOrderDetailQueryHeaders, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func iFlightOrderListQueryWithOptions(_ tmpReq: IFlightOrderListQueryRequest, _ headers: IFlightOrderListQueryHeaders, _ runtime: TeaUtils.RuntimeOptions) async throws -> IFlightOrderListQueryResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: IFlightOrderListQueryShrinkRequest = IFlightOrderListQueryShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        if (!TeaUtils.Client.isUnset(tmpReq.applyIdList)) {
            request.applyIdListShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.applyIdList, "apply_id_list", "json")
        }
        if (!TeaUtils.Client.isUnset(tmpReq.bookTypeList)) {
            request.bookTypeListShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.bookTypeList, "book_type_list", "json")
        }
        if (!TeaUtils.Client.isUnset(tmpReq.bookerId)) {
            request.bookerIdShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.bookerId, "booker_id", "json")
        }
        if (!TeaUtils.Client.isUnset(tmpReq.thirdPartApplyIdList)) {
            request.thirdPartApplyIdListShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.thirdPartApplyIdList, "third_part_apply_id_list", "json")
        }
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.applyIdListShrink)) {
            query["apply_id_list"] = request.applyIdListShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.bookTypeListShrink)) {
            query["book_type_list"] = request.bookTypeListShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.bookerIdShrink)) {
            query["booker_id"] = request.bookerIdShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.endDate)) {
            query["end_date"] = request.endDate ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.pageSize)) {
            query["page_size"] = request.pageSize!;
        }
        if (!TeaUtils.Client.isUnset(request.scrollId)) {
            query["scroll_id"] = request.scrollId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.startDate)) {
            query["start_date"] = request.startDate ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.thirdPartApplyIdListShrink)) {
            query["third_part_apply_id_list"] = request.thirdPartApplyIdListShrink ?? "";
        }
        var realHeaders: [String: String] = [:]
        if (!TeaUtils.Client.isUnset(headers.commonHeaders)) {
            realHeaders = headers.commonHeaders ?? [:]
        }
        if (!TeaUtils.Client.isUnset(headers.xAcsBtripCorpToken)) {
            realHeaders["x-acs-btrip-corp-token"] = TeaUtils.Client.toJSONString(headers.xAcsBtripCorpToken);
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": realHeaders as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "IFlightOrderListQuery",
            "version": "2022-05-20",
            "protocol": "HTTPS",
            "pathname": "/open/v1/intlFlight-order-list-query",
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(IFlightOrderListQueryResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func iFlightOrderListQuery(_ request: IFlightOrderListQueryRequest) async throws -> IFlightOrderListQueryResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: IFlightOrderListQueryHeaders = IFlightOrderListQueryHeaders([:])
        return try await iFlightOrderListQueryWithOptions(request as! IFlightOrderListQueryRequest, headers as! IFlightOrderListQueryHeaders, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func ieFlightBillSettlementQueryWithOptions(_ request: IeFlightBillSettlementQueryRequest, _ headers: IeFlightBillSettlementQueryHeaders, _ runtime: TeaUtils.RuntimeOptions) async throws -> IeFlightBillSettlementQueryResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.pageNo)) {
            query["page_no"] = request.pageNo!;
        }
        if (!TeaUtils.Client.isUnset(request.pageSize)) {
            query["page_size"] = request.pageSize!;
        }
        if (!TeaUtils.Client.isUnset(request.periodEnd)) {
            query["period_end"] = request.periodEnd ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.periodStart)) {
            query["period_start"] = request.periodStart ?? "";
        }
        var realHeaders: [String: String] = [:]
        if (!TeaUtils.Client.isUnset(headers.commonHeaders)) {
            realHeaders = headers.commonHeaders ?? [:]
        }
        if (!TeaUtils.Client.isUnset(headers.xAcsBtripSoCorpToken)) {
            realHeaders["x-acs-btrip-so-corp-token"] = TeaUtils.Client.toJSONString(headers.xAcsBtripSoCorpToken);
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": realHeaders as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "IeFlightBillSettlementQuery",
            "version": "2022-05-20",
            "protocol": "HTTPS",
            "pathname": "/ie-flight/v1/bill-settlement",
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(IeFlightBillSettlementQueryResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func ieFlightBillSettlementQuery(_ request: IeFlightBillSettlementQueryRequest) async throws -> IeFlightBillSettlementQueryResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: IeFlightBillSettlementQueryHeaders = IeFlightBillSettlementQueryHeaders([:])
        return try await ieFlightBillSettlementQueryWithOptions(request as! IeFlightBillSettlementQueryRequest, headers as! IeFlightBillSettlementQueryHeaders, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func ieHotelBillSettlementQueryWithOptions(_ request: IeHotelBillSettlementQueryRequest, _ headers: IeHotelBillSettlementQueryHeaders, _ runtime: TeaUtils.RuntimeOptions) async throws -> IeHotelBillSettlementQueryResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.category)) {
            query["category"] = request.category!;
        }
        if (!TeaUtils.Client.isUnset(request.pageNo)) {
            query["page_no"] = request.pageNo!;
        }
        if (!TeaUtils.Client.isUnset(request.pageSize)) {
            query["page_size"] = request.pageSize!;
        }
        if (!TeaUtils.Client.isUnset(request.periodEnd)) {
            query["period_end"] = request.periodEnd ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.periodStart)) {
            query["period_start"] = request.periodStart ?? "";
        }
        var realHeaders: [String: String] = [:]
        if (!TeaUtils.Client.isUnset(headers.commonHeaders)) {
            realHeaders = headers.commonHeaders ?? [:]
        }
        if (!TeaUtils.Client.isUnset(headers.xAcsBtripSoCorpToken)) {
            realHeaders["x-acs-btrip-so-corp-token"] = TeaUtils.Client.toJSONString(headers.xAcsBtripSoCorpToken);
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": realHeaders as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "IeHotelBillSettlementQuery",
            "version": "2022-05-20",
            "protocol": "HTTPS",
            "pathname": "/ie-hotel/v1/bill-settlement",
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(IeHotelBillSettlementQueryResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func ieHotelBillSettlementQuery(_ request: IeHotelBillSettlementQueryRequest) async throws -> IeHotelBillSettlementQueryResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: IeHotelBillSettlementQueryHeaders = IeHotelBillSettlementQueryHeaders([:])
        return try await ieHotelBillSettlementQueryWithOptions(request as! IeHotelBillSettlementQueryRequest, headers as! IeHotelBillSettlementQueryHeaders, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func insInvoiceScanQueryWithOptions(_ request: InsInvoiceScanQueryRequest, _ headers: InsInvoiceScanQueryHeaders, _ runtime: TeaUtils.RuntimeOptions) async throws -> InsInvoiceScanQueryResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.billDate)) {
            query["bill_date"] = request.billDate ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.billId)) {
            query["bill_id"] = request.billId!;
        }
        if (!TeaUtils.Client.isUnset(request.invoiceSubTaskId)) {
            query["invoice_sub_task_id"] = request.invoiceSubTaskId!;
        }
        if (!TeaUtils.Client.isUnset(request.pageNo)) {
            query["page_no"] = request.pageNo!;
        }
        if (!TeaUtils.Client.isUnset(request.pageSize)) {
            query["page_size"] = request.pageSize!;
        }
        var realHeaders: [String: String] = [:]
        if (!TeaUtils.Client.isUnset(headers.commonHeaders)) {
            realHeaders = headers.commonHeaders ?? [:]
        }
        if (!TeaUtils.Client.isUnset(headers.xAcsBtripSoCorpToken)) {
            realHeaders["x-acs-btrip-so-corp-token"] = TeaUtils.Client.toJSONString(headers.xAcsBtripSoCorpToken);
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": realHeaders as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "InsInvoiceScanQuery",
            "version": "2022-05-20",
            "protocol": "HTTPS",
            "pathname": "/scan/v1/ins-invoice",
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(InsInvoiceScanQueryResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func insInvoiceScanQuery(_ request: InsInvoiceScanQueryRequest) async throws -> InsInvoiceScanQueryResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: InsInvoiceScanQueryHeaders = InsInvoiceScanQueryHeaders([:])
        return try await insInvoiceScanQueryWithOptions(request as! InsInvoiceScanQueryRequest, headers as! InsInvoiceScanQueryHeaders, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func insureOrderApplyWithOptions(_ request: InsureOrderApplyRequest, _ headers: InsureOrderApplyHeaders, _ runtime: TeaUtils.RuntimeOptions) async throws -> InsureOrderApplyResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.btripUserId)) {
            body["btrip_user_id"] = request.btripUserId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.buyerName)) {
            body["buyer_name"] = request.buyerName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.insOrderId)) {
            body["ins_order_id"] = request.insOrderId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.isvName)) {
            body["isv_name"] = request.isvName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.outOrderId)) {
            body["out_order_id"] = request.outOrderId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.outSubOrderId)) {
            body["out_sub_order_id"] = request.outSubOrderId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.supplierCode)) {
            body["supplier_code"] = request.supplierCode ?? "";
        }
        var realHeaders: [String: String] = [:]
        if (!TeaUtils.Client.isUnset(headers.commonHeaders)) {
            realHeaders = headers.commonHeaders ?? [:]
        }
        if (!TeaUtils.Client.isUnset(headers.xAcsBtripCorpToken)) {
            realHeaders["x-acs-btrip-corp-token"] = TeaUtils.Client.toJSONString(headers.xAcsBtripCorpToken);
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": realHeaders as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "InsureOrderApply",
            "version": "2022-05-20",
            "protocol": "HTTPS",
            "pathname": "/dtb-flight/v1/insurances/action/apply",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(InsureOrderApplyResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func insureOrderApply(_ request: InsureOrderApplyRequest) async throws -> InsureOrderApplyResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: InsureOrderApplyHeaders = InsureOrderApplyHeaders([:])
        return try await insureOrderApplyWithOptions(request as! InsureOrderApplyRequest, headers as! InsureOrderApplyHeaders, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func insureOrderCancelWithOptions(_ insOrderId: String, _ request: InsureOrderCancelRequest, _ headers: InsureOrderCancelHeaders, _ runtime: TeaUtils.RuntimeOptions) async throws -> InsureOrderCancelResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.btripUserId)) {
            query["btrip_user_id"] = request.btripUserId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.buyerName)) {
            query["buyer_name"] = request.buyerName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.isvName)) {
            query["isv_name"] = request.isvName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.supplierCode)) {
            query["supplier_code"] = request.supplierCode ?? "";
        }
        var realHeaders: [String: String] = [:]
        if (!TeaUtils.Client.isUnset(headers.commonHeaders)) {
            realHeaders = headers.commonHeaders ?? [:]
        }
        if (!TeaUtils.Client.isUnset(headers.xAcsBtripCorpToken)) {
            realHeaders["x-acs-btrip-corp-token"] = TeaUtils.Client.toJSONString(headers.xAcsBtripCorpToken);
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": realHeaders as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "InsureOrderCancel",
            "version": "2022-05-20",
            "protocol": "HTTPS",
            "pathname": "/dtb-flight/v1/insurances/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(insOrderId)) + "/action/cancel",
            "method": "DELETE",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(InsureOrderCancelResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func insureOrderCancel(_ insOrderId: String, _ request: InsureOrderCancelRequest) async throws -> InsureOrderCancelResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: InsureOrderCancelHeaders = InsureOrderCancelHeaders([:])
        return try await insureOrderCancelWithOptions(insOrderId as! String, request as! InsureOrderCancelRequest, headers as! InsureOrderCancelHeaders, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func insureOrderCreateWithOptions(_ tmpReq: InsureOrderCreateRequest, _ headers: InsureOrderCreateHeaders, _ runtime: TeaUtils.RuntimeOptions) async throws -> InsureOrderCreateResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: InsureOrderCreateShrinkRequest = InsureOrderCreateShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        if (!TeaUtils.Client.isUnset(tmpReq.applicant)) {
            request.applicantShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.applicant, "applicant", "json")
        }
        if (!TeaUtils.Client.isUnset(tmpReq.insPersonAndSegmentList)) {
            request.insPersonAndSegmentListShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.insPersonAndSegmentList, "ins_person_and_segment_list", "json")
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.applicantShrink)) {
            body["applicant"] = request.applicantShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.btripUserId)) {
            body["btrip_user_id"] = request.btripUserId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.buyerName)) {
            body["buyer_name"] = request.buyerName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.insPersonAndSegmentListShrink)) {
            body["ins_person_and_segment_list"] = request.insPersonAndSegmentListShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.isvName)) {
            body["isv_name"] = request.isvName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.outInsOrderId)) {
            body["out_ins_order_id"] = request.outInsOrderId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.outOrderId)) {
            body["out_order_id"] = request.outOrderId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.outSubOrderId)) {
            body["out_sub_order_id"] = request.outSubOrderId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.supplierCode)) {
            body["supplier_code"] = request.supplierCode ?? "";
        }
        var realHeaders: [String: String] = [:]
        if (!TeaUtils.Client.isUnset(headers.commonHeaders)) {
            realHeaders = headers.commonHeaders ?? [:]
        }
        if (!TeaUtils.Client.isUnset(headers.xAcsBtripCorpToken)) {
            realHeaders["x-acs-btrip-corp-token"] = TeaUtils.Client.toJSONString(headers.xAcsBtripCorpToken);
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": realHeaders as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "InsureOrderCreate",
            "version": "2022-05-20",
            "protocol": "HTTPS",
            "pathname": "/dtb-flight/v1/insurances/action/create",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(InsureOrderCreateResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func insureOrderCreate(_ request: InsureOrderCreateRequest) async throws -> InsureOrderCreateResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: InsureOrderCreateHeaders = InsureOrderCreateHeaders([:])
        return try await insureOrderCreateWithOptions(request as! InsureOrderCreateRequest, headers as! InsureOrderCreateHeaders, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func insureOrderDetailWithOptions(_ request: InsureOrderDetailRequest, _ headers: InsureOrderDetailHeaders, _ runtime: TeaUtils.RuntimeOptions) async throws -> InsureOrderDetailResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.btripUserId)) {
            query["btrip_user_id"] = request.btripUserId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.buyerName)) {
            query["buyer_name"] = request.buyerName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.insOrderId)) {
            query["ins_order_id"] = request.insOrderId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.isvName)) {
            query["isv_name"] = request.isvName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.supplierCode)) {
            query["supplier_code"] = request.supplierCode ?? "";
        }
        var realHeaders: [String: String] = [:]
        if (!TeaUtils.Client.isUnset(headers.commonHeaders)) {
            realHeaders = headers.commonHeaders ?? [:]
        }
        if (!TeaUtils.Client.isUnset(headers.xAcsBtripCorpToken)) {
            realHeaders["x-acs-btrip-corp-token"] = TeaUtils.Client.toJSONString(headers.xAcsBtripCorpToken);
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": realHeaders as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "InsureOrderDetail",
            "version": "2022-05-20",
            "protocol": "HTTPS",
            "pathname": "/dtb-flight/v1/insurances/action/detail",
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(InsureOrderDetailResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func insureOrderDetail(_ request: InsureOrderDetailRequest) async throws -> InsureOrderDetailResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: InsureOrderDetailHeaders = InsureOrderDetailHeaders([:])
        return try await insureOrderDetailWithOptions(request as! InsureOrderDetailRequest, headers as! InsureOrderDetailHeaders, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func insureOrderPayWithOptions(_ insOrderId: String, _ request: InsureOrderPayRequest, _ headers: InsureOrderPayHeaders, _ runtime: TeaUtils.RuntimeOptions) async throws -> InsureOrderPayResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.btripUserId)) {
            body["btrip_user_id"] = request.btripUserId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.buyerName)) {
            body["buyer_name"] = request.buyerName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.isvName)) {
            body["isv_name"] = request.isvName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.outOrderId)) {
            body["out_order_id"] = request.outOrderId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.outSubOrderId)) {
            body["out_sub_order_id"] = request.outSubOrderId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.paymentAmount)) {
            body["payment_amount"] = request.paymentAmount!;
        }
        if (!TeaUtils.Client.isUnset(request.supplierCode)) {
            body["supplier_code"] = request.supplierCode ?? "";
        }
        var realHeaders: [String: String] = [:]
        if (!TeaUtils.Client.isUnset(headers.commonHeaders)) {
            realHeaders = headers.commonHeaders ?? [:]
        }
        if (!TeaUtils.Client.isUnset(headers.xAcsBtripCorpToken)) {
            realHeaders["x-acs-btrip-corp-token"] = TeaUtils.Client.toJSONString(headers.xAcsBtripCorpToken);
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": realHeaders as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "InsureOrderPay",
            "version": "2022-05-20",
            "protocol": "HTTPS",
            "pathname": "/dtb-flight/v1/insurances/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(insOrderId)) + "/action/pay",
            "method": "PUT",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(InsureOrderPayResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func insureOrderPay(_ insOrderId: String, _ request: InsureOrderPayRequest) async throws -> InsureOrderPayResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: InsureOrderPayHeaders = InsureOrderPayHeaders([:])
        return try await insureOrderPayWithOptions(insOrderId as! String, request as! InsureOrderPayRequest, headers as! InsureOrderPayHeaders, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func insureOrderRefundWithOptions(_ insOrderId: String, _ tmpReq: InsureOrderRefundRequest, _ headers: InsureOrderRefundHeaders, _ runtime: TeaUtils.RuntimeOptions) async throws -> InsureOrderRefundResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: InsureOrderRefundShrinkRequest = InsureOrderRefundShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        if (!TeaUtils.Client.isUnset(tmpReq.policyNoList)) {
            request.policyNoListShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.policyNoList, "policy_no_list", "json")
        }
        if (!TeaUtils.Client.isUnset(tmpReq.subInsOrderIds)) {
            request.subInsOrderIdsShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.subInsOrderIds, "sub_ins_order_ids", "json")
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.btripUserId)) {
            body["btrip_user_id"] = request.btripUserId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.buyerName)) {
            body["buyer_name"] = request.buyerName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.isvName)) {
            body["isv_name"] = request.isvName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.outApplyId)) {
            body["out_apply_id"] = request.outApplyId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.policyNoListShrink)) {
            body["policy_no_list"] = request.policyNoListShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.subInsOrderIdsShrink)) {
            body["sub_ins_order_ids"] = request.subInsOrderIdsShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.supplierCode)) {
            body["supplier_code"] = request.supplierCode ?? "";
        }
        var realHeaders: [String: String] = [:]
        if (!TeaUtils.Client.isUnset(headers.commonHeaders)) {
            realHeaders = headers.commonHeaders ?? [:]
        }
        if (!TeaUtils.Client.isUnset(headers.xAcsBtripCorpToken)) {
            realHeaders["x-acs-btrip-corp-token"] = TeaUtils.Client.toJSONString(headers.xAcsBtripCorpToken);
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": realHeaders as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "InsureOrderRefund",
            "version": "2022-05-20",
            "protocol": "HTTPS",
            "pathname": "/dtb-flight/v1/insurances/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(insOrderId)) + "/action/refund",
            "method": "PUT",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(InsureOrderRefundResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func insureOrderRefund(_ insOrderId: String, _ request: InsureOrderRefundRequest) async throws -> InsureOrderRefundResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: InsureOrderRefundHeaders = InsureOrderRefundHeaders([:])
        return try await insureOrderRefundWithOptions(insOrderId as! String, request as! InsureOrderRefundRequest, headers as! InsureOrderRefundHeaders, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func insureOrderUrlDetailWithOptions(_ insOrderId: String, _ headers: InsureOrderUrlDetailHeaders, _ runtime: TeaUtils.RuntimeOptions) async throws -> InsureOrderUrlDetailResponse {
        var realHeaders: [String: String] = [:]
        if (!TeaUtils.Client.isUnset(headers.commonHeaders)) {
            realHeaders = headers.commonHeaders ?? [:]
        }
        if (!TeaUtils.Client.isUnset(headers.xAcsBtripCorpToken)) {
            realHeaders["x-acs-btrip-corp-token"] = TeaUtils.Client.toJSONString(headers.xAcsBtripCorpToken);
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": realHeaders as! [String: String]
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "InsureOrderUrlDetail",
            "version": "2022-05-20",
            "protocol": "HTTPS",
            "pathname": "/dtb-flight/v1/insurances/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(insOrderId)),
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(InsureOrderUrlDetailResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func insureOrderUrlDetail(_ insOrderId: String) async throws -> InsureOrderUrlDetailResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: InsureOrderUrlDetailHeaders = InsureOrderUrlDetailHeaders([:])
        return try await insureOrderUrlDetailWithOptions(insOrderId as! String, headers as! InsureOrderUrlDetailHeaders, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func insureRefundDetailWithOptions(_ request: InsureRefundDetailRequest, _ headers: InsureRefundDetailHeaders, _ runtime: TeaUtils.RuntimeOptions) async throws -> InsureRefundDetailResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.applyId)) {
            query["apply_id"] = request.applyId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.btripUserId)) {
            query["btrip_user_id"] = request.btripUserId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.buyerName)) {
            query["buyer_name"] = request.buyerName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.insOrderId)) {
            query["ins_order_id"] = request.insOrderId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.isvName)) {
            query["isv_name"] = request.isvName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.outApplyId)) {
            query["out_apply_id"] = request.outApplyId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.supplierCode)) {
            query["supplier_code"] = request.supplierCode ?? "";
        }
        var realHeaders: [String: String] = [:]
        if (!TeaUtils.Client.isUnset(headers.commonHeaders)) {
            realHeaders = headers.commonHeaders ?? [:]
        }
        if (!TeaUtils.Client.isUnset(headers.xAcsBtripCorpToken)) {
            realHeaders["x-acs-btrip-corp-token"] = TeaUtils.Client.toJSONString(headers.xAcsBtripCorpToken);
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": realHeaders as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "InsureRefundDetail",
            "version": "2022-05-20",
            "protocol": "HTTPS",
            "pathname": "/dtb-flight/v1/insurances/action/refund-detail",
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(InsureRefundDetailResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func insureRefundDetail(_ request: InsureRefundDetailRequest) async throws -> InsureRefundDetailResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: InsureRefundDetailHeaders = InsureRefundDetailHeaders([:])
        return try await insureRefundDetailWithOptions(request as! InsureRefundDetailRequest, headers as! InsureRefundDetailHeaders, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func intlFlightCreateOrderWithOptions(_ tmpReq: IntlFlightCreateOrderRequest, _ headers: IntlFlightCreateOrderHeaders, _ runtime: TeaUtils.RuntimeOptions) async throws -> IntlFlightCreateOrderResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: IntlFlightCreateOrderShrinkRequest = IntlFlightCreateOrderShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        if (!TeaUtils.Client.isUnset(tmpReq.contactInfo)) {
            request.contactInfoShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.contactInfo, "contact_info", "json")
        }
        if (!TeaUtils.Client.isUnset(tmpReq.costCenter)) {
            request.costCenterShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.costCenter, "cost_center", "json")
        }
        if (!TeaUtils.Client.isUnset(tmpReq.extraInfo)) {
            request.extraInfoShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.extraInfo, "extra_info", "json")
        }
        if (!TeaUtils.Client.isUnset(tmpReq.passengerList)) {
            request.passengerListShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.passengerList, "passenger_list", "json")
        }
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.asyncCreateOrderKey)) {
            query["async_create_order_key"] = request.asyncCreateOrderKey ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.asyncCreateOrderMode)) {
            query["async_create_order_mode"] = request.asyncCreateOrderMode!;
        }
        if (!TeaUtils.Client.isUnset(request.contactInfoShrink)) {
            query["contact_info"] = request.contactInfoShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.costCenterShrink)) {
            query["cost_center"] = request.costCenterShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.extraInfoShrink)) {
            query["extra_info"] = request.extraInfoShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.isvName)) {
            query["isv_name"] = request.isvName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.language)) {
            query["language"] = request.language ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.otaItemId)) {
            query["ota_item_id"] = request.otaItemId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.outOrderId)) {
            query["out_order_id"] = request.outOrderId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.passengerListShrink)) {
            query["passenger_list"] = request.passengerListShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.renderKey)) {
            query["render_key"] = request.renderKey ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.totalPriceCent)) {
            query["total_price_cent"] = request.totalPriceCent!;
        }
        if (!TeaUtils.Client.isUnset(request.userId)) {
            query["user_id"] = request.userId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.userName)) {
            query["user_name"] = request.userName ?? "";
        }
        var realHeaders: [String: String] = [:]
        if (!TeaUtils.Client.isUnset(headers.commonHeaders)) {
            realHeaders = headers.commonHeaders ?? [:]
        }
        if (!TeaUtils.Client.isUnset(headers.xAcsBtripCorpToken)) {
            realHeaders["x-acs-btrip-corp-token"] = TeaUtils.Client.toJSONString(headers.xAcsBtripCorpToken);
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": realHeaders as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "IntlFlightCreateOrder",
            "version": "2022-05-20",
            "protocol": "HTTPS",
            "pathname": "/intl-flight/v1/order/action/create",
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(IntlFlightCreateOrderResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func intlFlightCreateOrder(_ request: IntlFlightCreateOrderRequest) async throws -> IntlFlightCreateOrderResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: IntlFlightCreateOrderHeaders = IntlFlightCreateOrderHeaders([:])
        return try await intlFlightCreateOrderWithOptions(request as! IntlFlightCreateOrderRequest, headers as! IntlFlightCreateOrderHeaders, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func intlFlightInventoryPriceCheckWithOptions(_ tmpReq: IntlFlightInventoryPriceCheckRequest, _ headers: IntlFlightInventoryPriceCheckHeaders, _ runtime: TeaUtils.RuntimeOptions) async throws -> IntlFlightInventoryPriceCheckResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: IntlFlightInventoryPriceCheckShrinkRequest = IntlFlightInventoryPriceCheckShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        if (!TeaUtils.Client.isUnset(tmpReq.passengerList)) {
            request.passengerListShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.passengerList, "passenger_list", "json")
        }
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.isvName)) {
            query["isv_name"] = request.isvName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.language)) {
            query["language"] = request.language ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.orderPrice)) {
            query["order_price"] = request.orderPrice!;
        }
        if (!TeaUtils.Client.isUnset(request.otaItemId)) {
            query["ota_item_id"] = request.otaItemId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.passengerListShrink)) {
            query["passenger_list"] = request.passengerListShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.userId)) {
            query["user_id"] = request.userId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.userName)) {
            query["user_name"] = request.userName ?? "";
        }
        var realHeaders: [String: String] = [:]
        if (!TeaUtils.Client.isUnset(headers.commonHeaders)) {
            realHeaders = headers.commonHeaders ?? [:]
        }
        if (!TeaUtils.Client.isUnset(headers.xAcsBtripCorpToken)) {
            realHeaders["x-acs-btrip-corp-token"] = TeaUtils.Client.toJSONString(headers.xAcsBtripCorpToken);
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": realHeaders as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "IntlFlightInventoryPriceCheck",
            "version": "2022-05-20",
            "protocol": "HTTPS",
            "pathname": "/intl-flight/v1/flights/action/inventory-price-check",
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(IntlFlightInventoryPriceCheckResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func intlFlightInventoryPriceCheck(_ request: IntlFlightInventoryPriceCheckRequest) async throws -> IntlFlightInventoryPriceCheckResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: IntlFlightInventoryPriceCheckHeaders = IntlFlightInventoryPriceCheckHeaders([:])
        return try await intlFlightInventoryPriceCheckWithOptions(request as! IntlFlightInventoryPriceCheckRequest, headers as! IntlFlightInventoryPriceCheckHeaders, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func intlFlightListingSearchWithOptions(_ tmpReq: IntlFlightListingSearchRequest, _ headers: IntlFlightListingSearchHeaders, _ runtime: TeaUtils.RuntimeOptions) async throws -> IntlFlightListingSearchResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: IntlFlightListingSearchShrinkRequest = IntlFlightListingSearchShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        if (!TeaUtils.Client.isUnset(tmpReq.searchJourneys)) {
            request.searchJourneysShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.searchJourneys, "search_journeys", "json")
        }
        if (!TeaUtils.Client.isUnset(tmpReq.searchPassengerList)) {
            request.searchPassengerListShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.searchPassengerList, "search_passenger_list", "json")
        }
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.btripUserId)) {
            query["btrip_user_id"] = request.btripUserId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.buyerName)) {
            query["buyer_name"] = request.buyerName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.cabinType)) {
            query["cabin_type"] = request.cabinType!;
        }
        if (!TeaUtils.Client.isUnset(request.directOnly)) {
            query["direct_only"] = request.directOnly!;
        }
        if (!TeaUtils.Client.isUnset(request.isvName)) {
            query["isv_name"] = request.isvName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.language)) {
            query["language"] = request.language ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.needShareFlight)) {
            query["need_share_flight"] = request.needShareFlight!;
        }
        if (!TeaUtils.Client.isUnset(request.outWheelSearch)) {
            query["out_wheel_search"] = request.outWheelSearch!;
        }
        if (!TeaUtils.Client.isUnset(request.queryRecordId)) {
            query["query_record_id"] = request.queryRecordId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.searchJourneysShrink)) {
            query["search_journeys"] = request.searchJourneysShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.searchMode)) {
            query["search_mode"] = request.searchMode!;
        }
        if (!TeaUtils.Client.isUnset(request.searchPassengerListShrink)) {
            query["search_passenger_list"] = request.searchPassengerListShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.supplierCode)) {
            query["supplier_code"] = request.supplierCode ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.token)) {
            query["token"] = request.token ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.tripType)) {
            query["trip_type"] = request.tripType!;
        }
        var realHeaders: [String: String] = [:]
        if (!TeaUtils.Client.isUnset(headers.commonHeaders)) {
            realHeaders = headers.commonHeaders ?? [:]
        }
        if (!TeaUtils.Client.isUnset(headers.xAcsBtripCorpToken)) {
            realHeaders["x-acs-btrip-corp-token"] = TeaUtils.Client.toJSONString(headers.xAcsBtripCorpToken);
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": realHeaders as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "IntlFlightListingSearch",
            "version": "2022-05-20",
            "protocol": "HTTPS",
            "pathname": "/intl-flight/v1/flights/action/listing-search",
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(IntlFlightListingSearchResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func intlFlightListingSearch(_ request: IntlFlightListingSearchRequest) async throws -> IntlFlightListingSearchResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: IntlFlightListingSearchHeaders = IntlFlightListingSearchHeaders([:])
        return try await intlFlightListingSearchWithOptions(request as! IntlFlightListingSearchRequest, headers as! IntlFlightListingSearchHeaders, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func intlFlightOrderCancelWithOptions(_ request: IntlFlightOrderCancelRequest, _ headers: IntlFlightOrderCancelHeaders, _ runtime: TeaUtils.RuntimeOptions) async throws -> IntlFlightOrderCancelResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.isvName)) {
            query["isv_name"] = request.isvName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.memo)) {
            query["memo"] = request.memo ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.orderId)) {
            query["order_id"] = request.orderId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.outOrderId)) {
            query["out_order_id"] = request.outOrderId ?? "";
        }
        var realHeaders: [String: String] = [:]
        if (!TeaUtils.Client.isUnset(headers.commonHeaders)) {
            realHeaders = headers.commonHeaders ?? [:]
        }
        if (!TeaUtils.Client.isUnset(headers.xAcsBtripCorpToken)) {
            realHeaders["x-acs-btrip-corp-token"] = TeaUtils.Client.toJSONString(headers.xAcsBtripCorpToken);
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": realHeaders as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "IntlFlightOrderCancel",
            "version": "2022-05-20",
            "protocol": "HTTPS",
            "pathname": "/intl-flight/v1/order/action/cancel",
            "method": "DELETE",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(IntlFlightOrderCancelResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func intlFlightOrderCancel(_ request: IntlFlightOrderCancelRequest) async throws -> IntlFlightOrderCancelResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: IntlFlightOrderCancelHeaders = IntlFlightOrderCancelHeaders([:])
        return try await intlFlightOrderCancelWithOptions(request as! IntlFlightOrderCancelRequest, headers as! IntlFlightOrderCancelHeaders, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func intlFlightOrderDetailWithOptions(_ request: IntlFlightOrderDetailRequest, _ headers: IntlFlightOrderDetailHeaders, _ runtime: TeaUtils.RuntimeOptions) async throws -> IntlFlightOrderDetailResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.isvName)) {
            query["isv_name"] = request.isvName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.orderId)) {
            query["order_id"] = request.orderId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.outOrderId)) {
            query["out_order_id"] = request.outOrderId ?? "";
        }
        var realHeaders: [String: String] = [:]
        if (!TeaUtils.Client.isUnset(headers.commonHeaders)) {
            realHeaders = headers.commonHeaders ?? [:]
        }
        if (!TeaUtils.Client.isUnset(headers.xAcsBtripCorpToken)) {
            realHeaders["x-acs-btrip-corp-token"] = TeaUtils.Client.toJSONString(headers.xAcsBtripCorpToken);
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": realHeaders as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "IntlFlightOrderDetail",
            "version": "2022-05-20",
            "protocol": "HTTPS",
            "pathname": "/intl-flight/v1/order/action/detail",
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(IntlFlightOrderDetailResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func intlFlightOrderDetail(_ request: IntlFlightOrderDetailRequest) async throws -> IntlFlightOrderDetailResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: IntlFlightOrderDetailHeaders = IntlFlightOrderDetailHeaders([:])
        return try await intlFlightOrderDetailWithOptions(request as! IntlFlightOrderDetailRequest, headers as! IntlFlightOrderDetailHeaders, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func intlFlightOrderPayWithOptions(_ tmpReq: IntlFlightOrderPayRequest, _ headers: IntlFlightOrderPayHeaders, _ runtime: TeaUtils.RuntimeOptions) async throws -> IntlFlightOrderPayResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: IntlFlightOrderPayShrinkRequest = IntlFlightOrderPayShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        if (!TeaUtils.Client.isUnset(tmpReq.extParams)) {
            request.extParamsShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.extParams, "ext_params", "json")
        }
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.extParamsShrink)) {
            query["ext_params"] = request.extParamsShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.isvName)) {
            query["isv_name"] = request.isvName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.orderId)) {
            query["order_id"] = request.orderId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.outOrderId)) {
            query["out_order_id"] = request.outOrderId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.totalPrice)) {
            query["total_price"] = request.totalPrice!;
        }
        var realHeaders: [String: String] = [:]
        if (!TeaUtils.Client.isUnset(headers.commonHeaders)) {
            realHeaders = headers.commonHeaders ?? [:]
        }
        if (!TeaUtils.Client.isUnset(headers.xAcsBtripCorpToken)) {
            realHeaders["x-acs-btrip-corp-token"] = TeaUtils.Client.toJSONString(headers.xAcsBtripCorpToken);
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": realHeaders as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "IntlFlightOrderPay",
            "version": "2022-05-20",
            "protocol": "HTTPS",
            "pathname": "/intl-flight/v1/order/action/pay",
            "method": "PUT",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(IntlFlightOrderPayResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func intlFlightOrderPay(_ request: IntlFlightOrderPayRequest) async throws -> IntlFlightOrderPayResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: IntlFlightOrderPayHeaders = IntlFlightOrderPayHeaders([:])
        return try await intlFlightOrderPayWithOptions(request as! IntlFlightOrderPayRequest, headers as! IntlFlightOrderPayHeaders, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func intlFlightOrderPayCheckWithOptions(_ request: IntlFlightOrderPayCheckRequest, _ headers: IntlFlightOrderPayCheckHeaders, _ runtime: TeaUtils.RuntimeOptions) async throws -> IntlFlightOrderPayCheckResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.isvName)) {
            query["isv_name"] = request.isvName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.orderId)) {
            query["order_id"] = request.orderId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.outOrderId)) {
            query["out_order_id"] = request.outOrderId ?? "";
        }
        var realHeaders: [String: String] = [:]
        if (!TeaUtils.Client.isUnset(headers.commonHeaders)) {
            realHeaders = headers.commonHeaders ?? [:]
        }
        if (!TeaUtils.Client.isUnset(headers.xAcsBtripCorpToken)) {
            realHeaders["x-acs-btrip-corp-token"] = TeaUtils.Client.toJSONString(headers.xAcsBtripCorpToken);
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": realHeaders as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "IntlFlightOrderPayCheck",
            "version": "2022-05-20",
            "protocol": "HTTPS",
            "pathname": "/intl-flight/v1/order/action/pay-check",
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(IntlFlightOrderPayCheckResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func intlFlightOrderPayCheck(_ request: IntlFlightOrderPayCheckRequest) async throws -> IntlFlightOrderPayCheckResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: IntlFlightOrderPayCheckHeaders = IntlFlightOrderPayCheckHeaders([:])
        return try await intlFlightOrderPayCheckWithOptions(request as! IntlFlightOrderPayCheckRequest, headers as! IntlFlightOrderPayCheckHeaders, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func intlFlightOtaItemDetailWithOptions(_ otaItemId: String, _ request: IntlFlightOtaItemDetailRequest, _ headers: IntlFlightOtaItemDetailHeaders, _ runtime: TeaUtils.RuntimeOptions) async throws -> IntlFlightOtaItemDetailResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.btripUserId)) {
            query["btrip_user_id"] = request.btripUserId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.buyerName)) {
            query["buyer_name"] = request.buyerName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.isvName)) {
            query["isv_name"] = request.isvName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.language)) {
            query["language"] = request.language ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.supplierCode)) {
            query["supplier_code"] = request.supplierCode ?? "";
        }
        var realHeaders: [String: String] = [:]
        if (!TeaUtils.Client.isUnset(headers.commonHeaders)) {
            realHeaders = headers.commonHeaders ?? [:]
        }
        if (!TeaUtils.Client.isUnset(headers.xAcsBtripCorpToken)) {
            realHeaders["x-acs-btrip-corp-token"] = TeaUtils.Client.toJSONString(headers.xAcsBtripCorpToken);
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": realHeaders as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "IntlFlightOtaItemDetail",
            "version": "2022-05-20",
            "protocol": "HTTPS",
            "pathname": "/intl-flight/v1/items/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(otaItemId)) + "/action/ota-get",
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(IntlFlightOtaItemDetailResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func intlFlightOtaItemDetail(_ otaItemId: String, _ request: IntlFlightOtaItemDetailRequest) async throws -> IntlFlightOtaItemDetailResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: IntlFlightOtaItemDetailHeaders = IntlFlightOtaItemDetailHeaders([:])
        return try await intlFlightOtaItemDetailWithOptions(otaItemId as! String, request as! IntlFlightOtaItemDetailRequest, headers as! IntlFlightOtaItemDetailHeaders, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func intlFlightOtaSearchWithOptions(_ tmpReq: IntlFlightOtaSearchRequest, _ headers: IntlFlightOtaSearchHeaders, _ runtime: TeaUtils.RuntimeOptions) async throws -> IntlFlightOtaSearchResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: IntlFlightOtaSearchShrinkRequest = IntlFlightOtaSearchShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        if (!TeaUtils.Client.isUnset(tmpReq.searchJourneys)) {
            request.searchJourneysShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.searchJourneys, "search_journeys", "json")
        }
        if (!TeaUtils.Client.isUnset(tmpReq.searchPassengerList)) {
            request.searchPassengerListShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.searchPassengerList, "search_passenger_list", "json")
        }
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.btripUserId)) {
            query["btrip_user_id"] = request.btripUserId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.buyerName)) {
            query["buyer_name"] = request.buyerName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.cabinType)) {
            query["cabin_type"] = request.cabinType!;
        }
        if (!TeaUtils.Client.isUnset(request.directOnly)) {
            query["direct_only"] = request.directOnly!;
        }
        if (!TeaUtils.Client.isUnset(request.isvName)) {
            query["isv_name"] = request.isvName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.language)) {
            query["language"] = request.language ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.needShareFlight)) {
            query["need_share_flight"] = request.needShareFlight!;
        }
        if (!TeaUtils.Client.isUnset(request.searchJourneysShrink)) {
            query["search_journeys"] = request.searchJourneysShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.searchPassengerListShrink)) {
            query["search_passenger_list"] = request.searchPassengerListShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.supplierCode)) {
            query["supplier_code"] = request.supplierCode ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.tripType)) {
            query["trip_type"] = request.tripType!;
        }
        var realHeaders: [String: String] = [:]
        if (!TeaUtils.Client.isUnset(headers.commonHeaders)) {
            realHeaders = headers.commonHeaders ?? [:]
        }
        if (!TeaUtils.Client.isUnset(headers.xAcsBtripCorpToken)) {
            realHeaders["x-acs-btrip-corp-token"] = TeaUtils.Client.toJSONString(headers.xAcsBtripCorpToken);
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": realHeaders as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "IntlFlightOtaSearch",
            "version": "2022-05-20",
            "protocol": "HTTPS",
            "pathname": "/intl-flight/v1/flights/action/ota-search",
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(IntlFlightOtaSearchResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func intlFlightOtaSearch(_ request: IntlFlightOtaSearchRequest) async throws -> IntlFlightOtaSearchResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: IntlFlightOtaSearchHeaders = IntlFlightOtaSearchHeaders([:])
        return try await intlFlightOtaSearchWithOptions(request as! IntlFlightOtaSearchRequest, headers as! IntlFlightOtaSearchHeaders, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func intlFlightSegmentAvailableCertWithOptions(_ otaItemId: String, _ request: IntlFlightSegmentAvailableCertRequest, _ headers: IntlFlightSegmentAvailableCertHeaders, _ runtime: TeaUtils.RuntimeOptions) async throws -> IntlFlightSegmentAvailableCertResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.isvName)) {
            query["isv_name"] = request.isvName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.language)) {
            query["language"] = request.language ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.userId)) {
            query["user_id"] = request.userId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.userName)) {
            query["user_name"] = request.userName ?? "";
        }
        var realHeaders: [String: String] = [:]
        if (!TeaUtils.Client.isUnset(headers.commonHeaders)) {
            realHeaders = headers.commonHeaders ?? [:]
        }
        if (!TeaUtils.Client.isUnset(headers.xAcsBtripCorpToken)) {
            realHeaders["x-acs-btrip-corp-token"] = TeaUtils.Client.toJSONString(headers.xAcsBtripCorpToken);
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": realHeaders as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "IntlFlightSegmentAvailableCert",
            "version": "2022-05-20",
            "protocol": "HTTPS",
            "pathname": "/intl-flight/v1/items/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(otaItemId)) + "/action/segment-available-cert",
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(IntlFlightSegmentAvailableCertResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func intlFlightSegmentAvailableCert(_ otaItemId: String, _ request: IntlFlightSegmentAvailableCertRequest) async throws -> IntlFlightSegmentAvailableCertResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: IntlFlightSegmentAvailableCertHeaders = IntlFlightSegmentAvailableCertHeaders([:])
        return try await intlFlightSegmentAvailableCertWithOptions(otaItemId as! String, request as! IntlFlightSegmentAvailableCertRequest, headers as! IntlFlightSegmentAvailableCertHeaders, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func invoiceAddWithOptions(_ request: InvoiceAddRequest, _ headers: InvoiceAddHeaders, _ runtime: TeaUtils.RuntimeOptions) async throws -> InvoiceAddResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.address)) {
            body["address"] = request.address ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.bankName)) {
            body["bank_name"] = request.bankName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.bankNo)) {
            body["bank_no"] = request.bankNo ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.taxNo)) {
            body["tax_no"] = request.taxNo ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.tel)) {
            body["tel"] = request.tel ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.thirdPartId)) {
            body["third_part_id"] = request.thirdPartId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.title)) {
            body["title"] = request.title ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.type)) {
            body["type"] = request.type!;
        }
        if (!TeaUtils.Client.isUnset(request.unitType)) {
            body["unit_type"] = request.unitType!;
        }
        var realHeaders: [String: String] = [:]
        if (!TeaUtils.Client.isUnset(headers.commonHeaders)) {
            realHeaders = headers.commonHeaders ?? [:]
        }
        if (!TeaUtils.Client.isUnset(headers.xAcsBtripSoCorpToken)) {
            realHeaders["x-acs-btrip-so-corp-token"] = TeaUtils.Client.toJSONString(headers.xAcsBtripSoCorpToken);
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": realHeaders as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "InvoiceAdd",
            "version": "2022-05-20",
            "protocol": "HTTPS",
            "pathname": "/invoice/v1/add-invoice",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(InvoiceAddResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func invoiceAdd(_ request: InvoiceAddRequest) async throws -> InvoiceAddResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: InvoiceAddHeaders = InvoiceAddHeaders([:])
        return try await invoiceAddWithOptions(request as! InvoiceAddRequest, headers as! InvoiceAddHeaders, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func invoiceDeleteWithOptions(_ request: InvoiceDeleteRequest, _ headers: InvoiceDeleteHeaders, _ runtime: TeaUtils.RuntimeOptions) async throws -> InvoiceDeleteResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.thirdPartId)) {
            query["third_part_id"] = request.thirdPartId ?? "";
        }
        var realHeaders: [String: String] = [:]
        if (!TeaUtils.Client.isUnset(headers.commonHeaders)) {
            realHeaders = headers.commonHeaders ?? [:]
        }
        if (!TeaUtils.Client.isUnset(headers.xAcsBtripSoCorpToken)) {
            realHeaders["x-acs-btrip-so-corp-token"] = TeaUtils.Client.toJSONString(headers.xAcsBtripSoCorpToken);
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": realHeaders as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "InvoiceDelete",
            "version": "2022-05-20",
            "protocol": "HTTPS",
            "pathname": "/invoice/v1/invoice",
            "method": "DELETE",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(InvoiceDeleteResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func invoiceDelete(_ request: InvoiceDeleteRequest) async throws -> InvoiceDeleteResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: InvoiceDeleteHeaders = InvoiceDeleteHeaders([:])
        return try await invoiceDeleteWithOptions(request as! InvoiceDeleteRequest, headers as! InvoiceDeleteHeaders, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func invoiceModifyWithOptions(_ request: InvoiceModifyRequest, _ headers: InvoiceModifyHeaders, _ runtime: TeaUtils.RuntimeOptions) async throws -> InvoiceModifyResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.address)) {
            body["address"] = request.address ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.bankName)) {
            body["bank_name"] = request.bankName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.bankNo)) {
            body["bank_no"] = request.bankNo ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.taxNo)) {
            body["tax_no"] = request.taxNo ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.tel)) {
            body["tel"] = request.tel ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.thirdPartId)) {
            body["third_part_id"] = request.thirdPartId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.title)) {
            body["title"] = request.title ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.type)) {
            body["type"] = request.type!;
        }
        if (!TeaUtils.Client.isUnset(request.unitType)) {
            body["unit_type"] = request.unitType!;
        }
        var realHeaders: [String: String] = [:]
        if (!TeaUtils.Client.isUnset(headers.commonHeaders)) {
            realHeaders = headers.commonHeaders ?? [:]
        }
        if (!TeaUtils.Client.isUnset(headers.xAcsBtripSoCorpToken)) {
            realHeaders["x-acs-btrip-so-corp-token"] = TeaUtils.Client.toJSONString(headers.xAcsBtripSoCorpToken);
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": realHeaders as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "InvoiceModify",
            "version": "2022-05-20",
            "protocol": "HTTPS",
            "pathname": "/invoice/v1/invoice",
            "method": "PUT",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(InvoiceModifyResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func invoiceModify(_ request: InvoiceModifyRequest) async throws -> InvoiceModifyResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: InvoiceModifyHeaders = InvoiceModifyHeaders([:])
        return try await invoiceModifyWithOptions(request as! InvoiceModifyRequest, headers as! InvoiceModifyHeaders, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func invoiceRuleAddWithOptions(_ tmpReq: InvoiceRuleAddRequest, _ headers: InvoiceRuleAddHeaders, _ runtime: TeaUtils.RuntimeOptions) async throws -> InvoiceRuleAddResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: InvoiceRuleAddShrinkRequest = InvoiceRuleAddShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        if (!TeaUtils.Client.isUnset(tmpReq.entities)) {
            request.entitiesShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.entities, "entities", "json")
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.entitiesShrink)) {
            body["entities"] = request.entitiesShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.thirdPartId)) {
            body["third_part_id"] = request.thirdPartId ?? "";
        }
        var realHeaders: [String: String] = [:]
        if (!TeaUtils.Client.isUnset(headers.commonHeaders)) {
            realHeaders = headers.commonHeaders ?? [:]
        }
        if (!TeaUtils.Client.isUnset(headers.xAcsBtripCorpToken)) {
            realHeaders["x-acs-btrip-corp-token"] = TeaUtils.Client.toJSONString(headers.xAcsBtripCorpToken);
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": realHeaders as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "InvoiceRuleAdd",
            "version": "2022-05-20",
            "protocol": "HTTPS",
            "pathname": "/invoice/v1/invoice-rule",
            "method": "PUT",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(InvoiceRuleAddResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func invoiceRuleAdd(_ request: InvoiceRuleAddRequest) async throws -> InvoiceRuleAddResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: InvoiceRuleAddHeaders = InvoiceRuleAddHeaders([:])
        return try await invoiceRuleAddWithOptions(request as! InvoiceRuleAddRequest, headers as! InvoiceRuleAddHeaders, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func invoiceRuleDeleteWithOptions(_ tmpReq: InvoiceRuleDeleteRequest, _ headers: InvoiceRuleDeleteHeaders, _ runtime: TeaUtils.RuntimeOptions) async throws -> InvoiceRuleDeleteResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: InvoiceRuleDeleteShrinkRequest = InvoiceRuleDeleteShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        if (!TeaUtils.Client.isUnset(tmpReq.entities)) {
            request.entitiesShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.entities, "entities", "json")
        }
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.delAll)) {
            query["del_all"] = request.delAll!;
        }
        if (!TeaUtils.Client.isUnset(request.entitiesShrink)) {
            query["entities"] = request.entitiesShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.thirdPartId)) {
            query["third_part_id"] = request.thirdPartId ?? "";
        }
        var realHeaders: [String: String] = [:]
        if (!TeaUtils.Client.isUnset(headers.commonHeaders)) {
            realHeaders = headers.commonHeaders ?? [:]
        }
        if (!TeaUtils.Client.isUnset(headers.xAcsBtripCorpToken)) {
            realHeaders["x-acs-btrip-corp-token"] = TeaUtils.Client.toJSONString(headers.xAcsBtripCorpToken);
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": realHeaders as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "InvoiceRuleDelete",
            "version": "2022-05-20",
            "protocol": "HTTPS",
            "pathname": "/invoice/v1/invoice-rule",
            "method": "DELETE",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(InvoiceRuleDeleteResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func invoiceRuleDelete(_ request: InvoiceRuleDeleteRequest) async throws -> InvoiceRuleDeleteResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: InvoiceRuleDeleteHeaders = InvoiceRuleDeleteHeaders([:])
        return try await invoiceRuleDeleteWithOptions(request as! InvoiceRuleDeleteRequest, headers as! InvoiceRuleDeleteHeaders, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func invoiceRuleSaveWithOptions(_ tmpReq: InvoiceRuleSaveRequest, _ headers: InvoiceRuleSaveHeaders, _ runtime: TeaUtils.RuntimeOptions) async throws -> InvoiceRuleSaveResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: InvoiceRuleSaveShrinkRequest = InvoiceRuleSaveShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        if (!TeaUtils.Client.isUnset(tmpReq.entities)) {
            request.entitiesShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.entities, "entities", "json")
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.allEmploye)) {
            body["all_employe"] = request.allEmploye!;
        }
        if (!TeaUtils.Client.isUnset(request.entitiesShrink)) {
            body["entities"] = request.entitiesShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.scope)) {
            body["scope"] = request.scope!;
        }
        if (!TeaUtils.Client.isUnset(request.thirdPartId)) {
            body["third_part_id"] = request.thirdPartId ?? "";
        }
        var realHeaders: [String: String] = [:]
        if (!TeaUtils.Client.isUnset(headers.commonHeaders)) {
            realHeaders = headers.commonHeaders ?? [:]
        }
        if (!TeaUtils.Client.isUnset(headers.xAcsBtripSoCorpToken)) {
            realHeaders["x-acs-btrip-so-corp-token"] = TeaUtils.Client.toJSONString(headers.xAcsBtripSoCorpToken);
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": realHeaders as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "InvoiceRuleSave",
            "version": "2022-05-20",
            "protocol": "HTTPS",
            "pathname": "/invoice/v1/invoice-rule",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(InvoiceRuleSaveResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func invoiceRuleSave(_ request: InvoiceRuleSaveRequest) async throws -> InvoiceRuleSaveResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: InvoiceRuleSaveHeaders = InvoiceRuleSaveHeaders([:])
        return try await invoiceRuleSaveWithOptions(request as! InvoiceRuleSaveRequest, headers as! InvoiceRuleSaveHeaders, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func invoiceSearchWithOptions(_ request: InvoiceSearchRequest, _ headers: InvoiceSearchHeaders, _ runtime: TeaUtils.RuntimeOptions) async throws -> InvoiceSearchResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.thirdPartId)) {
            query["third_part_id"] = request.thirdPartId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.title)) {
            query["title"] = request.title ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.userId)) {
            query["user_id"] = request.userId ?? "";
        }
        var realHeaders: [String: String] = [:]
        if (!TeaUtils.Client.isUnset(headers.commonHeaders)) {
            realHeaders = headers.commonHeaders ?? [:]
        }
        if (!TeaUtils.Client.isUnset(headers.xAcsBtripSoCorpToken)) {
            realHeaders["x-acs-btrip-so-corp-token"] = TeaUtils.Client.toJSONString(headers.xAcsBtripSoCorpToken);
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": realHeaders as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "InvoiceSearch",
            "version": "2022-05-20",
            "protocol": "HTTPS",
            "pathname": "/invoice/v1/invoice",
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(InvoiceSearchResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func invoiceSearch(_ request: InvoiceSearchRequest) async throws -> InvoiceSearchResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: InvoiceSearchHeaders = InvoiceSearchHeaders([:])
        return try await invoiceSearchWithOptions(request as! InvoiceSearchRequest, headers as! InvoiceSearchHeaders, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func isvRuleSaveWithOptions(_ tmpReq: IsvRuleSaveRequest, _ headers: IsvRuleSaveHeaders, _ runtime: TeaUtils.RuntimeOptions) async throws -> IsvRuleSaveResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: IsvRuleSaveShrinkRequest = IsvRuleSaveShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        if (!TeaUtils.Client.isUnset(tmpReq.bookuserList)) {
            request.bookuserListShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.bookuserList, "bookuser_list", "json")
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.applyNeed)) {
            body["apply_need"] = request.applyNeed!;
        }
        if (!TeaUtils.Client.isUnset(request.bookType)) {
            body["book_type"] = request.bookType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.bookuserListShrink)) {
            body["bookuser_list"] = request.bookuserListShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.ruleNeed)) {
            body["rule_need"] = request.ruleNeed!;
        }
        if (!TeaUtils.Client.isUnset(request.status)) {
            body["status"] = request.status!;
        }
        if (!TeaUtils.Client.isUnset(request.userId)) {
            body["user_id"] = request.userId ?? "";
        }
        var realHeaders: [String: String] = [:]
        if (!TeaUtils.Client.isUnset(headers.commonHeaders)) {
            realHeaders = headers.commonHeaders ?? [:]
        }
        if (!TeaUtils.Client.isUnset(headers.xAcsBtripSoCorpToken)) {
            realHeaders["x-acs-btrip-so-corp-token"] = TeaUtils.Client.toJSONString(headers.xAcsBtripSoCorpToken);
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": realHeaders as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "IsvRuleSave",
            "version": "2022-05-20",
            "protocol": "HTTPS",
            "pathname": "/user/v1/rule",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(IsvRuleSaveResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func isvRuleSave(_ request: IsvRuleSaveRequest) async throws -> IsvRuleSaveResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: IsvRuleSaveHeaders = IsvRuleSaveHeaders([:])
        return try await isvRuleSaveWithOptions(request as! IsvRuleSaveRequest, headers as! IsvRuleSaveHeaders, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func isvUserSaveWithOptions(_ tmpReq: IsvUserSaveRequest, _ headers: IsvUserSaveHeaders, _ runtime: TeaUtils.RuntimeOptions) async throws -> IsvUserSaveResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: IsvUserSaveShrinkRequest = IsvUserSaveShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        if (!TeaUtils.Client.isUnset(tmpReq.userList)) {
            request.userListShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.userList, "user_list", "json")
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.userListShrink)) {
            body["user_list"] = request.userListShrink ?? "";
        }
        var realHeaders: [String: String] = [:]
        if (!TeaUtils.Client.isUnset(headers.commonHeaders)) {
            realHeaders = headers.commonHeaders ?? [:]
        }
        if (!TeaUtils.Client.isUnset(headers.xAcsBtripSoCorpToken)) {
            realHeaders["x-acs-btrip-so-corp-token"] = TeaUtils.Client.toJSONString(headers.xAcsBtripSoCorpToken);
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": realHeaders as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "IsvUserSave",
            "version": "2022-05-20",
            "protocol": "HTTPS",
            "pathname": "/isvuser/v1/isvuser",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(IsvUserSaveResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func isvUserSave(_ request: IsvUserSaveRequest) async throws -> IsvUserSaveResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: IsvUserSaveHeaders = IsvUserSaveHeaders([:])
        return try await isvUserSaveWithOptions(request as! IsvUserSaveRequest, headers as! IsvUserSaveHeaders, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func mealBillSettlementQueryWithOptions(_ request: MealBillSettlementQueryRequest, _ headers: MealBillSettlementQueryHeaders, _ runtime: TeaUtils.RuntimeOptions) async throws -> MealBillSettlementQueryResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.pageNo)) {
            query["page_no"] = request.pageNo!;
        }
        if (!TeaUtils.Client.isUnset(request.pageSize)) {
            query["page_size"] = request.pageSize!;
        }
        if (!TeaUtils.Client.isUnset(request.periodEnd)) {
            query["period_end"] = request.periodEnd ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.periodStart)) {
            query["period_start"] = request.periodStart ?? "";
        }
        var realHeaders: [String: String] = [:]
        if (!TeaUtils.Client.isUnset(headers.commonHeaders)) {
            realHeaders = headers.commonHeaders ?? [:]
        }
        if (!TeaUtils.Client.isUnset(headers.xAcsBtripSoCorpToken)) {
            realHeaders["x-acs-btrip-so-corp-token"] = TeaUtils.Client.toJSONString(headers.xAcsBtripSoCorpToken);
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": realHeaders as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "MealBillSettlementQuery",
            "version": "2022-05-20",
            "protocol": "HTTPS",
            "pathname": "/meal/v1/bill-settlement",
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(MealBillSettlementQueryResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func mealBillSettlementQuery(_ request: MealBillSettlementQueryRequest) async throws -> MealBillSettlementQueryResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: MealBillSettlementQueryHeaders = MealBillSettlementQueryHeaders([:])
        return try await mealBillSettlementQueryWithOptions(request as! MealBillSettlementQueryRequest, headers as! MealBillSettlementQueryHeaders, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func mealOrderDetailQueryWithOptions(_ orderId: String, _ request: MealOrderDetailQueryRequest, _ headers: MealOrderDetailQueryHeaders, _ runtime: TeaUtils.RuntimeOptions) async throws -> MealOrderDetailQueryResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.userId)) {
            query["user_id"] = request.userId ?? "";
        }
        var realHeaders: [String: String] = [:]
        if (!TeaUtils.Client.isUnset(headers.commonHeaders)) {
            realHeaders = headers.commonHeaders ?? [:]
        }
        if (!TeaUtils.Client.isUnset(headers.xAcsBtripCorpToken)) {
            realHeaders["x-acs-btrip-corp-token"] = TeaUtils.Client.toJSONString(headers.xAcsBtripCorpToken);
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": realHeaders as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "MealOrderDetailQuery",
            "version": "2022-05-20",
            "protocol": "HTTPS",
            "pathname": "/meal/v1/orders/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(orderId)),
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(MealOrderDetailQueryResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func mealOrderDetailQuery(_ orderId: String, _ request: MealOrderDetailQueryRequest) async throws -> MealOrderDetailQueryResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: MealOrderDetailQueryHeaders = MealOrderDetailQueryHeaders([:])
        return try await mealOrderDetailQueryWithOptions(orderId as! String, request as! MealOrderDetailQueryRequest, headers as! MealOrderDetailQueryHeaders, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func mealOrderListQueryWithOptions(_ request: MealOrderListQueryRequest, _ headers: MealOrderListQueryHeaders, _ runtime: TeaUtils.RuntimeOptions) async throws -> MealOrderListQueryResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.userId)) {
            query["user_id"] = request.userId ?? "";
        }
        var realHeaders: [String: String] = [:]
        if (!TeaUtils.Client.isUnset(headers.commonHeaders)) {
            realHeaders = headers.commonHeaders ?? [:]
        }
        if (!TeaUtils.Client.isUnset(headers.xAcsBtripCorpToken)) {
            realHeaders["x-acs-btrip-corp-token"] = TeaUtils.Client.toJSONString(headers.xAcsBtripCorpToken);
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": realHeaders as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "MealOrderListQuery",
            "version": "2022-05-20",
            "protocol": "HTTPS",
            "pathname": "/meal/v1/orders",
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(MealOrderListQueryResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func mealOrderListQuery(_ request: MealOrderListQueryRequest) async throws -> MealOrderListQueryResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: MealOrderListQueryHeaders = MealOrderListQueryHeaders([:])
        return try await mealOrderListQueryWithOptions(request as! MealOrderListQueryRequest, headers as! MealOrderListQueryHeaders, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func monthBillConfirmWithOptions(_ request: MonthBillConfirmRequest, _ headers: MonthBillConfirmHeaders, _ runtime: TeaUtils.RuntimeOptions) async throws -> MonthBillConfirmResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.mailBillDate)) {
            body["mail_bill_date"] = request.mailBillDate!;
        }
        if (!TeaUtils.Client.isUnset(request.userId)) {
            body["user_id"] = request.userId ?? "";
        }
        var realHeaders: [String: String] = [:]
        if (!TeaUtils.Client.isUnset(headers.commonHeaders)) {
            realHeaders = headers.commonHeaders ?? [:]
        }
        if (!TeaUtils.Client.isUnset(headers.xAcsBtripCorpToken)) {
            realHeaders["x-acs-btrip-corp-token"] = TeaUtils.Client.toJSONString(headers.xAcsBtripCorpToken);
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": realHeaders as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "MonthBillConfirm",
            "version": "2022-05-20",
            "protocol": "HTTPS",
            "pathname": "/bill/v1/status/action/confirm",
            "method": "PUT",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(MonthBillConfirmResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func monthBillConfirm(_ request: MonthBillConfirmRequest) async throws -> MonthBillConfirmResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: MonthBillConfirmHeaders = MonthBillConfirmHeaders([:])
        return try await monthBillConfirmWithOptions(request as! MonthBillConfirmRequest, headers as! MonthBillConfirmHeaders, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func monthBillGetWithOptions(_ request: MonthBillGetRequest, _ headers: MonthBillGetHeaders, _ runtime: TeaUtils.RuntimeOptions) async throws -> MonthBillGetResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.billMonth)) {
            query["bill_month"] = request.billMonth ?? "";
        }
        var realHeaders: [String: String] = [:]
        if (!TeaUtils.Client.isUnset(headers.commonHeaders)) {
            realHeaders = headers.commonHeaders ?? [:]
        }
        if (!TeaUtils.Client.isUnset(headers.xAcsBtripSoCorpToken)) {
            realHeaders["x-acs-btrip-so-corp-token"] = TeaUtils.Client.toJSONString(headers.xAcsBtripSoCorpToken);
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": realHeaders as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "MonthBillGet",
            "version": "2022-05-20",
            "protocol": "HTTPS",
            "pathname": "/open/v1/month-bill",
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(MonthBillGetResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func monthBillGet(_ request: MonthBillGetRequest) async throws -> MonthBillGetResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: MonthBillGetHeaders = MonthBillGetHeaders([:])
        return try await monthBillGetWithOptions(request as! MonthBillGetRequest, headers as! MonthBillGetHeaders, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func projectAddWithOptions(_ request: ProjectAddRequest, _ headers: ProjectAddHeaders, _ runtime: TeaUtils.RuntimeOptions) async throws -> ProjectAddResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.code)) {
            body["code"] = request.code ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.projectName)) {
            body["project_name"] = request.projectName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.thirdPartCostCenterId)) {
            body["third_part_cost_center_id"] = request.thirdPartCostCenterId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.thirdPartId)) {
            body["third_part_id"] = request.thirdPartId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.thirdPartInvoiceId)) {
            body["third_part_invoice_id"] = request.thirdPartInvoiceId ?? "";
        }
        var realHeaders: [String: String] = [:]
        if (!TeaUtils.Client.isUnset(headers.commonHeaders)) {
            realHeaders = headers.commonHeaders ?? [:]
        }
        if (!TeaUtils.Client.isUnset(headers.xAcsBtripSoCorpToken)) {
            realHeaders["x-acs-btrip-so-corp-token"] = TeaUtils.Client.toJSONString(headers.xAcsBtripSoCorpToken);
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": realHeaders as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ProjectAdd",
            "version": "2022-05-20",
            "protocol": "HTTPS",
            "pathname": "/cost/v1/project",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ProjectAddResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func projectAdd(_ request: ProjectAddRequest) async throws -> ProjectAddResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: ProjectAddHeaders = ProjectAddHeaders([:])
        return try await projectAddWithOptions(request as! ProjectAddRequest, headers as! ProjectAddHeaders, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func projectDeleteWithOptions(_ request: ProjectDeleteRequest, _ headers: ProjectDeleteHeaders, _ runtime: TeaUtils.RuntimeOptions) async throws -> ProjectDeleteResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.thirdPartId)) {
            query["third_part_id"] = request.thirdPartId ?? "";
        }
        var realHeaders: [String: String] = [:]
        if (!TeaUtils.Client.isUnset(headers.commonHeaders)) {
            realHeaders = headers.commonHeaders ?? [:]
        }
        if (!TeaUtils.Client.isUnset(headers.xAcsBtripSoCorpToken)) {
            realHeaders["x-acs-btrip-so-corp-token"] = TeaUtils.Client.toJSONString(headers.xAcsBtripSoCorpToken);
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": realHeaders as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ProjectDelete",
            "version": "2022-05-20",
            "protocol": "HTTPS",
            "pathname": "/cost/v1/project",
            "method": "DELETE",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ProjectDeleteResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func projectDelete(_ request: ProjectDeleteRequest) async throws -> ProjectDeleteResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: ProjectDeleteHeaders = ProjectDeleteHeaders([:])
        return try await projectDeleteWithOptions(request as! ProjectDeleteRequest, headers as! ProjectDeleteHeaders, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func projectModifyWithOptions(_ request: ProjectModifyRequest, _ headers: ProjectModifyHeaders, _ runtime: TeaUtils.RuntimeOptions) async throws -> ProjectModifyResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.code)) {
            body["code"] = request.code ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.projectName)) {
            body["project_name"] = request.projectName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.thirdPartCostCenterId)) {
            body["third_part_cost_center_id"] = request.thirdPartCostCenterId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.thirdPartId)) {
            body["third_part_id"] = request.thirdPartId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.thirdPartInvoiceId)) {
            body["third_part_invoice_id"] = request.thirdPartInvoiceId ?? "";
        }
        var realHeaders: [String: String] = [:]
        if (!TeaUtils.Client.isUnset(headers.commonHeaders)) {
            realHeaders = headers.commonHeaders ?? [:]
        }
        if (!TeaUtils.Client.isUnset(headers.xAcsBtripSoCorpToken)) {
            realHeaders["x-acs-btrip-so-corp-token"] = TeaUtils.Client.toJSONString(headers.xAcsBtripSoCorpToken);
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": realHeaders as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ProjectModify",
            "version": "2022-05-20",
            "protocol": "HTTPS",
            "pathname": "/cost/v1/project",
            "method": "PUT",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ProjectModifyResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func projectModify(_ request: ProjectModifyRequest) async throws -> ProjectModifyResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: ProjectModifyHeaders = ProjectModifyHeaders([:])
        return try await projectModifyWithOptions(request as! ProjectModifyRequest, headers as! ProjectModifyHeaders, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func queryEmployeeDetailWithOptions(_ request: QueryEmployeeDetailRequest, _ headers: QueryEmployeeDetailHeaders, _ runtime: TeaUtils.RuntimeOptions) async throws -> QueryEmployeeDetailResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.outEmployeeId)) {
            query["out_employee_id"] = request.outEmployeeId ?? "";
        }
        var realHeaders: [String: String] = [:]
        if (!TeaUtils.Client.isUnset(headers.commonHeaders)) {
            realHeaders = headers.commonHeaders ?? [:]
        }
        if (!TeaUtils.Client.isUnset(headers.xAcsBtripCorpToken)) {
            realHeaders["x-acs-btrip-corp-token"] = TeaUtils.Client.toJSONString(headers.xAcsBtripCorpToken);
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": realHeaders as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "QueryEmployeeDetail",
            "version": "2022-05-20",
            "protocol": "HTTPS",
            "pathname": "/user/v1/employeeDetail",
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(QueryEmployeeDetailResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func queryEmployeeDetail(_ request: QueryEmployeeDetailRequest) async throws -> QueryEmployeeDetailResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: QueryEmployeeDetailHeaders = QueryEmployeeDetailHeaders([:])
        return try await queryEmployeeDetailWithOptions(request as! QueryEmployeeDetailRequest, headers as! QueryEmployeeDetailHeaders, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func queryGroupCorpListWithOptions(_ request: QueryGroupCorpListRequest, _ headers: QueryGroupCorpListHeaders, _ runtime: TeaUtils.RuntimeOptions) async throws -> QueryGroupCorpListResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.userId)) {
            body["user_id"] = request.userId ?? "";
        }
        var realHeaders: [String: String] = [:]
        if (!TeaUtils.Client.isUnset(headers.commonHeaders)) {
            realHeaders = headers.commonHeaders ?? [:]
        }
        if (!TeaUtils.Client.isUnset(headers.xAcsBtripCorpToken)) {
            realHeaders["x-acs-btrip-corp-token"] = TeaUtils.Client.toJSONString(headers.xAcsBtripCorpToken);
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": realHeaders as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "QueryGroupCorpList",
            "version": "2022-05-20",
            "protocol": "HTTPS",
            "pathname": "/sub_corps/v1/corps/action/corpList",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(QueryGroupCorpListResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func queryGroupCorpList(_ request: QueryGroupCorpListRequest) async throws -> QueryGroupCorpListResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: QueryGroupCorpListHeaders = QueryGroupCorpListHeaders([:])
        return try await queryGroupCorpListWithOptions(request as! QueryGroupCorpListRequest, headers as! QueryGroupCorpListHeaders, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func queryReimbursementOrderWithOptions(_ request: QueryReimbursementOrderRequest, _ headers: QueryReimbursementOrderHeaders, _ runtime: TeaUtils.RuntimeOptions) async throws -> QueryReimbursementOrderResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.reimbOrderNo)) {
            query["reimb_order_no"] = request.reimbOrderNo ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.subCorpId)) {
            query["sub_corp_id"] = request.subCorpId ?? "";
        }
        var realHeaders: [String: String] = [:]
        if (!TeaUtils.Client.isUnset(headers.commonHeaders)) {
            realHeaders = headers.commonHeaders ?? [:]
        }
        if (!TeaUtils.Client.isUnset(headers.xAcsBtripCorpToken)) {
            realHeaders["x-acs-btrip-corp-token"] = TeaUtils.Client.toJSONString(headers.xAcsBtripCorpToken);
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": realHeaders as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "QueryReimbursementOrder",
            "version": "2022-05-20",
            "protocol": "HTTPS",
            "pathname": "/reimbursement/v1/order",
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(QueryReimbursementOrderResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func queryReimbursementOrder(_ request: QueryReimbursementOrderRequest) async throws -> QueryReimbursementOrderResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: QueryReimbursementOrderHeaders = QueryReimbursementOrderHeaders([:])
        return try await queryReimbursementOrderWithOptions(request as! QueryReimbursementOrderRequest, headers as! QueryReimbursementOrderHeaders, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func syncSingleUserWithOptions(_ tmpReq: SyncSingleUserRequest, _ headers: SyncSingleUserHeaders, _ runtime: TeaUtils.RuntimeOptions) async throws -> SyncSingleUserResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: SyncSingleUserShrinkRequest = SyncSingleUserShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        if (!TeaUtils.Client.isUnset(tmpReq.thirdDepartIdList)) {
            request.thirdDepartIdListShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.thirdDepartIdList, "third_depart_id_list", "json")
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.email)) {
            body["email"] = request.email ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.jobNo)) {
            body["job_no"] = request.jobNo ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.leaveStatus)) {
            body["leave_status"] = request.leaveStatus!;
        }
        if (!TeaUtils.Client.isUnset(request.managerUserId)) {
            body["manager_user_id"] = request.managerUserId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.phone)) {
            body["phone"] = request.phone ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.position)) {
            body["position"] = request.position ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.positionLevel)) {
            body["position_level"] = request.positionLevel ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.realNameEn)) {
            body["real_name_en"] = request.realNameEn ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.thirdDepartIdListShrink)) {
            body["third_depart_id_list"] = request.thirdDepartIdListShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.userId)) {
            body["user_id"] = request.userId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.userName)) {
            body["user_name"] = request.userName ?? "";
        }
        var realHeaders: [String: String] = [:]
        if (!TeaUtils.Client.isUnset(headers.commonHeaders)) {
            realHeaders = headers.commonHeaders ?? [:]
        }
        if (!TeaUtils.Client.isUnset(headers.xAcsBtripSoCorpToken)) {
            realHeaders["x-acs-btrip-so-corp-token"] = TeaUtils.Client.toJSONString(headers.xAcsBtripSoCorpToken);
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": realHeaders as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "SyncSingleUser",
            "version": "2022-05-20",
            "protocol": "HTTPS",
            "pathname": "/user/v1/single-user/action/sync",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(SyncSingleUserResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func syncSingleUser(_ request: SyncSingleUserRequest) async throws -> SyncSingleUserResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: SyncSingleUserHeaders = SyncSingleUserHeaders([:])
        return try await syncSingleUserWithOptions(request as! SyncSingleUserRequest, headers as! SyncSingleUserHeaders, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func syncThirdUserMappingWithOptions(_ request: SyncThirdUserMappingRequest, _ headers: SyncThirdUserMappingHeaders, _ runtime: TeaUtils.RuntimeOptions) async throws -> SyncThirdUserMappingResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.status)) {
            body["status"] = request.status!;
        }
        if (!TeaUtils.Client.isUnset(request.thirdChannelType)) {
            body["third_channel_type"] = request.thirdChannelType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.thirdUserId)) {
            body["third_user_id"] = request.thirdUserId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.userId)) {
            body["user_id"] = request.userId ?? "";
        }
        var realHeaders: [String: String] = [:]
        if (!TeaUtils.Client.isUnset(headers.commonHeaders)) {
            realHeaders = headers.commonHeaders ?? [:]
        }
        if (!TeaUtils.Client.isUnset(headers.xAcsBtripCorpToken)) {
            realHeaders["x-acs-btrip-corp-token"] = TeaUtils.Client.toJSONString(headers.xAcsBtripCorpToken);
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": realHeaders as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "SyncThirdUserMapping",
            "version": "2022-05-20",
            "protocol": "HTTPS",
            "pathname": "/user/v1/third-users/action/mapping",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(SyncThirdUserMappingResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func syncThirdUserMapping(_ request: SyncThirdUserMappingRequest) async throws -> SyncThirdUserMappingResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: SyncThirdUserMappingHeaders = SyncThirdUserMappingHeaders([:])
        return try await syncThirdUserMappingWithOptions(request as! SyncThirdUserMappingRequest, headers as! SyncThirdUserMappingHeaders, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func tBAccountInfoQueryWithOptions(_ userId: String, _ headers: TBAccountInfoQueryHeaders, _ runtime: TeaUtils.RuntimeOptions) async throws -> TBAccountInfoQueryResponse {
        var realHeaders: [String: String] = [:]
        if (!TeaUtils.Client.isUnset(headers.commonHeaders)) {
            realHeaders = headers.commonHeaders ?? [:]
        }
        if (!TeaUtils.Client.isUnset(headers.xAcsBtripCorpToken)) {
            realHeaders["x-acs-btrip-corp-token"] = TeaUtils.Client.toJSONString(headers.xAcsBtripCorpToken);
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": realHeaders as! [String: String]
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "TBAccountInfoQuery",
            "version": "2022-05-20",
            "protocol": "HTTPS",
            "pathname": "/account/v1/tb-accounts/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(userId)),
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(TBAccountInfoQueryResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func tBAccountInfoQuery(_ userId: String) async throws -> TBAccountInfoQueryResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: TBAccountInfoQueryHeaders = TBAccountInfoQueryHeaders([:])
        return try await tBAccountInfoQueryWithOptions(userId as! String, headers as! TBAccountInfoQueryHeaders, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func tBAccountUnbindWithOptions(_ userId: String, _ headers: TBAccountUnbindHeaders, _ runtime: TeaUtils.RuntimeOptions) async throws -> TBAccountUnbindResponse {
        var realHeaders: [String: String] = [:]
        if (!TeaUtils.Client.isUnset(headers.commonHeaders)) {
            realHeaders = headers.commonHeaders ?? [:]
        }
        if (!TeaUtils.Client.isUnset(headers.xAcsBtripCorpToken)) {
            realHeaders["x-acs-btrip-corp-token"] = TeaUtils.Client.toJSONString(headers.xAcsBtripCorpToken);
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": realHeaders as! [String: String]
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "TBAccountUnbind",
            "version": "2022-05-20",
            "protocol": "HTTPS",
            "pathname": "/account/v1/tb-accounts/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(userId)) + "/action/unbind",
            "method": "PATCH",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(TBAccountUnbindResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func tBAccountUnbind(_ userId: String) async throws -> TBAccountUnbindResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: TBAccountUnbindHeaders = TBAccountUnbindHeaders([:])
        return try await tBAccountUnbindWithOptions(userId as! String, headers as! TBAccountUnbindHeaders, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func ticketChangingApplyWithOptions(_ tmpReq: TicketChangingApplyRequest, _ headers: TicketChangingApplyHeaders, _ runtime: TeaUtils.RuntimeOptions) async throws -> TicketChangingApplyResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: TicketChangingApplyShrinkRequest = TicketChangingApplyShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        if (!TeaUtils.Client.isUnset(tmpReq.modifyFlightInfoList)) {
            request.modifyFlightInfoListShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.modifyFlightInfoList, "modify_flight_info_list", "json")
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.disOrderId)) {
            body["dis_order_id"] = request.disOrderId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.disSubOrderId)) {
            body["dis_sub_order_id"] = request.disSubOrderId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.isVoluntary)) {
            body["is_voluntary"] = request.isVoluntary!;
        }
        if (!TeaUtils.Client.isUnset(request.modifyFlightInfoListShrink)) {
            body["modify_flight_info_list"] = request.modifyFlightInfoListShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.otaItemId)) {
            body["ota_item_id"] = request.otaItemId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.reason)) {
            body["reason"] = request.reason ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.sessionId)) {
            body["session_id"] = request.sessionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.whetherRetry)) {
            body["whether_retry"] = request.whetherRetry!;
        }
        var realHeaders: [String: String] = [:]
        if (!TeaUtils.Client.isUnset(headers.commonHeaders)) {
            realHeaders = headers.commonHeaders ?? [:]
        }
        if (!TeaUtils.Client.isUnset(headers.xAcsBtripCorpToken)) {
            realHeaders["x-acs-btrip-corp-token"] = TeaUtils.Client.toJSONString(headers.xAcsBtripCorpToken);
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": realHeaders as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "TicketChangingApply",
            "version": "2022-05-20",
            "protocol": "HTTPS",
            "pathname": "/dtb-flight/v1/ticket-changing/action/apply",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(TicketChangingApplyResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func ticketChangingApply(_ request: TicketChangingApplyRequest) async throws -> TicketChangingApplyResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: TicketChangingApplyHeaders = TicketChangingApplyHeaders([:])
        return try await ticketChangingApplyWithOptions(request as! TicketChangingApplyRequest, headers as! TicketChangingApplyHeaders, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func ticketChangingCancelWithOptions(_ request: TicketChangingCancelRequest, _ headers: TicketChangingCancelHeaders, _ runtime: TeaUtils.RuntimeOptions) async throws -> TicketChangingCancelResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.disOrderId)) {
            query["dis_order_id"] = request.disOrderId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.disSubOrderId)) {
            query["dis_sub_order_id"] = request.disSubOrderId ?? "";
        }
        var realHeaders: [String: String] = [:]
        if (!TeaUtils.Client.isUnset(headers.commonHeaders)) {
            realHeaders = headers.commonHeaders ?? [:]
        }
        if (!TeaUtils.Client.isUnset(headers.xAcsBtripCorpToken)) {
            realHeaders["x-acs-btrip-corp-token"] = TeaUtils.Client.toJSONString(headers.xAcsBtripCorpToken);
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": realHeaders as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "TicketChangingCancel",
            "version": "2022-05-20",
            "protocol": "HTTPS",
            "pathname": "/dtb-flight/v1/ticket-changing/action/cancel",
            "method": "DELETE",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(TicketChangingCancelResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func ticketChangingCancel(_ request: TicketChangingCancelRequest) async throws -> TicketChangingCancelResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: TicketChangingCancelHeaders = TicketChangingCancelHeaders([:])
        return try await ticketChangingCancelWithOptions(request as! TicketChangingCancelRequest, headers as! TicketChangingCancelHeaders, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func ticketChangingDetailWithOptions(_ request: TicketChangingDetailRequest, _ headers: TicketChangingDetailHeaders, _ runtime: TeaUtils.RuntimeOptions) async throws -> TicketChangingDetailResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.disOrderId)) {
            query["dis_order_id"] = request.disOrderId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.disSubOrderId)) {
            query["dis_sub_order_id"] = request.disSubOrderId ?? "";
        }
        var realHeaders: [String: String] = [:]
        if (!TeaUtils.Client.isUnset(headers.commonHeaders)) {
            realHeaders = headers.commonHeaders ?? [:]
        }
        if (!TeaUtils.Client.isUnset(headers.xAcsBtripCorpToken)) {
            realHeaders["x-acs-btrip-corp-token"] = TeaUtils.Client.toJSONString(headers.xAcsBtripCorpToken);
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": realHeaders as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "TicketChangingDetail",
            "version": "2022-05-20",
            "protocol": "HTTPS",
            "pathname": "/dtb-flight/v1/ticket-changing/action/detail",
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(TicketChangingDetailResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func ticketChangingDetail(_ request: TicketChangingDetailRequest) async throws -> TicketChangingDetailResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: TicketChangingDetailHeaders = TicketChangingDetailHeaders([:])
        return try await ticketChangingDetailWithOptions(request as! TicketChangingDetailRequest, headers as! TicketChangingDetailHeaders, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func ticketChangingEnquiryWithOptions(_ request: TicketChangingEnquiryRequest, _ headers: TicketChangingEnquiryHeaders, _ runtime: TeaUtils.RuntimeOptions) async throws -> TicketChangingEnquiryResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.arrCity)) {
            query["arr_city"] = request.arrCity ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.depCity)) {
            query["dep_city"] = request.depCity ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.disOrderId)) {
            query["dis_order_id"] = request.disOrderId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.isVoluntary)) {
            query["is_voluntary"] = request.isVoluntary!;
        }
        if (!TeaUtils.Client.isUnset(request.modifyDepartDate)) {
            query["modify_depart_date"] = request.modifyDepartDate ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.modifyFlightNo)) {
            query["modify_flight_no"] = request.modifyFlightNo ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.sessionId)) {
            query["session_id"] = request.sessionId ?? "";
        }
        var realHeaders: [String: String] = [:]
        if (!TeaUtils.Client.isUnset(headers.commonHeaders)) {
            realHeaders = headers.commonHeaders ?? [:]
        }
        if (!TeaUtils.Client.isUnset(headers.xAcsBtripCorpToken)) {
            realHeaders["x-acs-btrip-corp-token"] = TeaUtils.Client.toJSONString(headers.xAcsBtripCorpToken);
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": realHeaders as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "TicketChangingEnquiry",
            "version": "2022-05-20",
            "protocol": "HTTPS",
            "pathname": "/dtb-flight/v1/ticket-changing/action/enquiry",
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(TicketChangingEnquiryResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func ticketChangingEnquiry(_ request: TicketChangingEnquiryRequest) async throws -> TicketChangingEnquiryResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: TicketChangingEnquiryHeaders = TicketChangingEnquiryHeaders([:])
        return try await ticketChangingEnquiryWithOptions(request as! TicketChangingEnquiryRequest, headers as! TicketChangingEnquiryHeaders, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func ticketChangingFlightListWithOptions(_ tmpReq: TicketChangingFlightListRequest, _ headers: TicketChangingFlightListHeaders, _ runtime: TeaUtils.RuntimeOptions) async throws -> TicketChangingFlightListResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: TicketChangingFlightListShrinkRequest = TicketChangingFlightListShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        if (!TeaUtils.Client.isUnset(tmpReq.travelerInfoList)) {
            request.travelerInfoListShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.travelerInfoList, "traveler_info_list", "json")
        }
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.arrCity)) {
            query["arr_city"] = request.arrCity ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.depCity)) {
            query["dep_city"] = request.depCity ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.depDate)) {
            query["dep_date"] = request.depDate ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.disOrderId)) {
            query["dis_order_id"] = request.disOrderId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.isVoluntary)) {
            query["is_voluntary"] = request.isVoluntary!;
        }
        if (!TeaUtils.Client.isUnset(request.travelerInfoListShrink)) {
            query["traveler_info_list"] = request.travelerInfoListShrink ?? "";
        }
        var realHeaders: [String: String] = [:]
        if (!TeaUtils.Client.isUnset(headers.commonHeaders)) {
            realHeaders = headers.commonHeaders ?? [:]
        }
        if (!TeaUtils.Client.isUnset(headers.xAcsBtripCorpToken)) {
            realHeaders["x-acs-btrip-corp-token"] = TeaUtils.Client.toJSONString(headers.xAcsBtripCorpToken);
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": realHeaders as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "TicketChangingFlightList",
            "version": "2022-05-20",
            "protocol": "HTTPS",
            "pathname": "/huge/dtb-flight/v1/ticket-changing-flight/action/list",
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(TicketChangingFlightListResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func ticketChangingFlightList(_ request: TicketChangingFlightListRequest) async throws -> TicketChangingFlightListResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: TicketChangingFlightListHeaders = TicketChangingFlightListHeaders([:])
        return try await ticketChangingFlightListWithOptions(request as! TicketChangingFlightListRequest, headers as! TicketChangingFlightListHeaders, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func ticketChangingPayWithOptions(_ tmpReq: TicketChangingPayRequest, _ headers: TicketChangingPayHeaders, _ runtime: TeaUtils.RuntimeOptions) async throws -> TicketChangingPayResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: TicketChangingPayShrinkRequest = TicketChangingPayShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        if (!TeaUtils.Client.isUnset(tmpReq.extra)) {
            request.extraShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.extra, "extra", "json")
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.corpPayPrice)) {
            body["corp_pay_price"] = request.corpPayPrice!;
        }
        if (!TeaUtils.Client.isUnset(request.disOrderId)) {
            body["dis_order_id"] = request.disOrderId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.disSubOrderId)) {
            body["dis_sub_order_id"] = request.disSubOrderId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.extraShrink)) {
            body["extra"] = request.extraShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.personalPayPrice)) {
            body["personal_pay_price"] = request.personalPayPrice!;
        }
        if (!TeaUtils.Client.isUnset(request.totalPayPrice)) {
            body["total_pay_price"] = request.totalPayPrice!;
        }
        var realHeaders: [String: String] = [:]
        if (!TeaUtils.Client.isUnset(headers.commonHeaders)) {
            realHeaders = headers.commonHeaders ?? [:]
        }
        if (!TeaUtils.Client.isUnset(headers.xAcsBtripCorpToken)) {
            realHeaders["x-acs-btrip-corp-token"] = TeaUtils.Client.toJSONString(headers.xAcsBtripCorpToken);
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": realHeaders as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "TicketChangingPay",
            "version": "2022-05-20",
            "protocol": "HTTPS",
            "pathname": "/dtb-flight/v1/ticket-changing/action/pay",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(TicketChangingPayResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func ticketChangingPay(_ request: TicketChangingPayRequest) async throws -> TicketChangingPayResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: TicketChangingPayHeaders = TicketChangingPayHeaders([:])
        return try await ticketChangingPayWithOptions(request as! TicketChangingPayRequest, headers as! TicketChangingPayHeaders, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func trainApplyChangeWithOptions(_ tmpReq: TrainApplyChangeRequest, _ headers: TrainApplyChangeHeaders, _ runtime: TeaUtils.RuntimeOptions) async throws -> TrainApplyChangeResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: TrainApplyChangeShrinkRequest = TrainApplyChangeShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        if (!TeaUtils.Client.isUnset(tmpReq.changeTrainInfoS)) {
            request.changeTrainInfoSShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.changeTrainInfoS, "change_train_info_s", "json")
        }
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.changeTrainInfoSShrink)) {
            query["change_train_info_s"] = request.changeTrainInfoSShrink ?? "";
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.acceptNoSeat)) {
            body["accept_no_seat"] = request.acceptNoSeat ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.forceMatch)) {
            body["force_match"] = request.forceMatch ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.isPayNow)) {
            body["is_pay_now"] = request.isPayNow!;
        }
        if (!TeaUtils.Client.isUnset(request.orderId)) {
            body["order_id"] = request.orderId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.outChangeApplyId)) {
            body["out_change_apply_id"] = request.outChangeApplyId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.outOrderId)) {
            body["out_order_id"] = request.outOrderId ?? "";
        }
        var realHeaders: [String: String] = [:]
        if (!TeaUtils.Client.isUnset(headers.commonHeaders)) {
            realHeaders = headers.commonHeaders ?? [:]
        }
        if (!TeaUtils.Client.isUnset(headers.xAcsBtripCorpToken)) {
            realHeaders["x-acs-btrip-corp-token"] = TeaUtils.Client.toJSONString(headers.xAcsBtripCorpToken);
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": realHeaders as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query),
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "TrainApplyChange",
            "version": "2022-05-20",
            "protocol": "HTTPS",
            "pathname": "/train/v1/change/apply",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(TrainApplyChangeResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func trainApplyChange(_ request: TrainApplyChangeRequest) async throws -> TrainApplyChangeResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: TrainApplyChangeHeaders = TrainApplyChangeHeaders([:])
        return try await trainApplyChangeWithOptions(request as! TrainApplyChangeRequest, headers as! TrainApplyChangeHeaders, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func trainApplyRefundWithOptions(_ tmpReq: TrainApplyRefundRequest, _ headers: TrainApplyRefundHeaders, _ runtime: TeaUtils.RuntimeOptions) async throws -> TrainApplyRefundResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: TrainApplyRefundShrinkRequest = TrainApplyRefundShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        if (!TeaUtils.Client.isUnset(tmpReq.refundTrainInfos)) {
            request.refundTrainInfosShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.refundTrainInfos, "refund_train_infos", "json")
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.orderId)) {
            body["order_id"] = request.orderId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.outOrderId)) {
            body["out_order_id"] = request.outOrderId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.outRefundId)) {
            body["out_refund_id"] = request.outRefundId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.refundTrainInfosShrink)) {
            body["refund_train_infos"] = request.refundTrainInfosShrink ?? "";
        }
        var realHeaders: [String: String] = [:]
        if (!TeaUtils.Client.isUnset(headers.commonHeaders)) {
            realHeaders = headers.commonHeaders ?? [:]
        }
        if (!TeaUtils.Client.isUnset(headers.xAcsBtripCorpToken)) {
            realHeaders["x-acs-btrip-corp-token"] = TeaUtils.Client.toJSONString(headers.xAcsBtripCorpToken);
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": realHeaders as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "TrainApplyRefund",
            "version": "2022-05-20",
            "protocol": "HTTPS",
            "pathname": "/train/v1/refund/apply",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(TrainApplyRefundResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func trainApplyRefund(_ request: TrainApplyRefundRequest) async throws -> TrainApplyRefundResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: TrainApplyRefundHeaders = TrainApplyRefundHeaders([:])
        return try await trainApplyRefundWithOptions(request as! TrainApplyRefundRequest, headers as! TrainApplyRefundHeaders, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func trainBillSettlementQueryWithOptions(_ request: TrainBillSettlementQueryRequest, _ headers: TrainBillSettlementQueryHeaders, _ runtime: TeaUtils.RuntimeOptions) async throws -> TrainBillSettlementQueryResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.pageNo)) {
            query["page_no"] = request.pageNo!;
        }
        if (!TeaUtils.Client.isUnset(request.pageSize)) {
            query["page_size"] = request.pageSize!;
        }
        if (!TeaUtils.Client.isUnset(request.periodEnd)) {
            query["period_end"] = request.periodEnd ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.periodStart)) {
            query["period_start"] = request.periodStart ?? "";
        }
        var realHeaders: [String: String] = [:]
        if (!TeaUtils.Client.isUnset(headers.commonHeaders)) {
            realHeaders = headers.commonHeaders ?? [:]
        }
        if (!TeaUtils.Client.isUnset(headers.xAcsBtripSoCorpToken)) {
            realHeaders["x-acs-btrip-so-corp-token"] = TeaUtils.Client.toJSONString(headers.xAcsBtripSoCorpToken);
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": realHeaders as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "TrainBillSettlementQuery",
            "version": "2022-05-20",
            "protocol": "HTTPS",
            "pathname": "/train/v1/bill-settlement",
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(TrainBillSettlementQueryResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func trainBillSettlementQuery(_ request: TrainBillSettlementQueryRequest) async throws -> TrainBillSettlementQueryResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: TrainBillSettlementQueryHeaders = TrainBillSettlementQueryHeaders([:])
        return try await trainBillSettlementQueryWithOptions(request as! TrainBillSettlementQueryRequest, headers as! TrainBillSettlementQueryHeaders, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func trainExceedApplyQueryWithOptions(_ request: TrainExceedApplyQueryRequest, _ headers: TrainExceedApplyQueryHeaders, _ runtime: TeaUtils.RuntimeOptions) async throws -> TrainExceedApplyQueryResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.applyId)) {
            query["apply_id"] = request.applyId!;
        }
        if (!TeaUtils.Client.isUnset(request.businessInstanceId)) {
            query["business_instance_id"] = request.businessInstanceId ?? "";
        }
        var realHeaders: [String: String] = [:]
        if (!TeaUtils.Client.isUnset(headers.commonHeaders)) {
            realHeaders = headers.commonHeaders ?? [:]
        }
        if (!TeaUtils.Client.isUnset(headers.xAcsBtripSoCorpToken)) {
            realHeaders["x-acs-btrip-so-corp-token"] = TeaUtils.Client.toJSONString(headers.xAcsBtripSoCorpToken);
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": realHeaders as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "TrainExceedApplyQuery",
            "version": "2022-05-20",
            "protocol": "HTTPS",
            "pathname": "/apply/v1/train-exceed",
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(TrainExceedApplyQueryResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func trainExceedApplyQuery(_ request: TrainExceedApplyQueryRequest) async throws -> TrainExceedApplyQueryResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: TrainExceedApplyQueryHeaders = TrainExceedApplyQueryHeaders([:])
        return try await trainExceedApplyQueryWithOptions(request as! TrainExceedApplyQueryRequest, headers as! TrainExceedApplyQueryHeaders, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func trainFeeCalculateChangeWithOptions(_ tmpReq: TrainFeeCalculateChangeRequest, _ headers: TrainFeeCalculateChangeHeaders, _ runtime: TeaUtils.RuntimeOptions) async throws -> TrainFeeCalculateChangeResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: TrainFeeCalculateChangeShrinkRequest = TrainFeeCalculateChangeShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        if (!TeaUtils.Client.isUnset(tmpReq.changeTrainDetails)) {
            request.changeTrainDetailsShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.changeTrainDetails, "change_train_details", "json")
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.changeTrainDetailsShrink)) {
            body["change_train_details"] = request.changeTrainDetailsShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.distributeOrderId)) {
            body["distribute_order_id"] = request.distributeOrderId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.orderId)) {
            body["order_id"] = request.orderId ?? "";
        }
        var realHeaders: [String: String] = [:]
        if (!TeaUtils.Client.isUnset(headers.commonHeaders)) {
            realHeaders = headers.commonHeaders ?? [:]
        }
        if (!TeaUtils.Client.isUnset(headers.xAcsBtripCorpToken)) {
            realHeaders["x-acs-btrip-corp-token"] = TeaUtils.Client.toJSONString(headers.xAcsBtripCorpToken);
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": realHeaders as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "TrainFeeCalculateChange",
            "version": "2022-05-20",
            "protocol": "HTTPS",
            "pathname": "/train/v1/change/fee",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(TrainFeeCalculateChangeResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func trainFeeCalculateChange(_ request: TrainFeeCalculateChangeRequest) async throws -> TrainFeeCalculateChangeResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: TrainFeeCalculateChangeHeaders = TrainFeeCalculateChangeHeaders([:])
        return try await trainFeeCalculateChangeWithOptions(request as! TrainFeeCalculateChangeRequest, headers as! TrainFeeCalculateChangeHeaders, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func trainFeeCalculateRefundWithOptions(_ tmpReq: TrainFeeCalculateRefundRequest, _ headers: TrainFeeCalculateRefundHeaders, _ runtime: TeaUtils.RuntimeOptions) async throws -> TrainFeeCalculateRefundResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: TrainFeeCalculateRefundShrinkRequest = TrainFeeCalculateRefundShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        if (!TeaUtils.Client.isUnset(tmpReq.refundTrainInfos)) {
            request.refundTrainInfosShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.refundTrainInfos, "refund_train_infos", "json")
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.distributeOrderId)) {
            body["distribute_order_id"] = request.distributeOrderId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.orderId)) {
            body["order_id"] = request.orderId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.refundTrainInfosShrink)) {
            body["refund_train_infos"] = request.refundTrainInfosShrink ?? "";
        }
        var realHeaders: [String: String] = [:]
        if (!TeaUtils.Client.isUnset(headers.commonHeaders)) {
            realHeaders = headers.commonHeaders ?? [:]
        }
        if (!TeaUtils.Client.isUnset(headers.xAcsBtripCorpToken)) {
            realHeaders["x-acs-btrip-corp-token"] = TeaUtils.Client.toJSONString(headers.xAcsBtripCorpToken);
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": realHeaders as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "TrainFeeCalculateRefund",
            "version": "2022-05-20",
            "protocol": "HTTPS",
            "pathname": "/train/v1/refund/fee",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(TrainFeeCalculateRefundResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func trainFeeCalculateRefund(_ request: TrainFeeCalculateRefundRequest) async throws -> TrainFeeCalculateRefundResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: TrainFeeCalculateRefundHeaders = TrainFeeCalculateRefundHeaders([:])
        return try await trainFeeCalculateRefundWithOptions(request as! TrainFeeCalculateRefundRequest, headers as! TrainFeeCalculateRefundHeaders, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func trainNoInfoSearchWithOptions(_ request: TrainNoInfoSearchRequest, _ headers: TrainNoInfoSearchHeaders, _ runtime: TeaUtils.RuntimeOptions) async throws -> TrainNoInfoSearchResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.arrLocation)) {
            body["arr_location"] = request.arrLocation ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.depDate)) {
            body["dep_date"] = request.depDate ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.depLocation)) {
            body["dep_location"] = request.depLocation ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.lineKey)) {
            body["line_key"] = request.lineKey ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.middleDate)) {
            body["middle_date"] = request.middleDate ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.middleStation)) {
            body["middle_station"] = request.middleStation ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.orderId)) {
            body["order_id"] = request.orderId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.trainNo)) {
            body["train_no"] = request.trainNo ?? "";
        }
        var realHeaders: [String: String] = [:]
        if (!TeaUtils.Client.isUnset(headers.commonHeaders)) {
            realHeaders = headers.commonHeaders ?? [:]
        }
        if (!TeaUtils.Client.isUnset(headers.xAcsBtripCorpToken)) {
            realHeaders["x-acs-btrip-corp-token"] = TeaUtils.Client.toJSONString(headers.xAcsBtripCorpToken);
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": realHeaders as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "TrainNoInfoSearch",
            "version": "2022-05-20",
            "protocol": "HTTPS",
            "pathname": "/train/v1/search/info",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(TrainNoInfoSearchResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func trainNoInfoSearch(_ request: TrainNoInfoSearchRequest) async throws -> TrainNoInfoSearchResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: TrainNoInfoSearchHeaders = TrainNoInfoSearchHeaders([:])
        return try await trainNoInfoSearchWithOptions(request as! TrainNoInfoSearchRequest, headers as! TrainNoInfoSearchHeaders, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func trainNoListSearchWithOptions(_ tmpReq: TrainNoListSearchRequest, _ headers: TrainNoListSearchHeaders, _ runtime: TeaUtils.RuntimeOptions) async throws -> TrainNoListSearchResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: TrainNoListSearchShrinkRequest = TrainNoListSearchShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        if (!TeaUtils.Client.isUnset(tmpReq.option)) {
            request.optionShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.option, "option", "json")
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.arrLocation)) {
            body["arr_location"] = request.arrLocation ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.depDate)) {
            body["dep_date"] = request.depDate ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.depLocation)) {
            body["dep_location"] = request.depLocation ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.optionShrink)) {
            body["option"] = request.optionShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.orderId)) {
            body["order_id"] = request.orderId ?? "";
        }
        var realHeaders: [String: String] = [:]
        if (!TeaUtils.Client.isUnset(headers.commonHeaders)) {
            realHeaders = headers.commonHeaders ?? [:]
        }
        if (!TeaUtils.Client.isUnset(headers.xAcsBtripCorpToken)) {
            realHeaders["x-acs-btrip-corp-token"] = TeaUtils.Client.toJSONString(headers.xAcsBtripCorpToken);
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": realHeaders as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "TrainNoListSearch",
            "version": "2022-05-20",
            "protocol": "HTTPS",
            "pathname": "/train/v1/search/list",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(TrainNoListSearchResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func trainNoListSearch(_ request: TrainNoListSearchRequest) async throws -> TrainNoListSearchResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: TrainNoListSearchHeaders = TrainNoListSearchHeaders([:])
        return try await trainNoListSearchWithOptions(request as! TrainNoListSearchRequest, headers as! TrainNoListSearchHeaders, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func trainOrderCancelWithOptions(_ request: TrainOrderCancelRequest, _ headers: TrainOrderCancelHeaders, _ runtime: TeaUtils.RuntimeOptions) async throws -> TrainOrderCancelResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.changeOrderId)) {
            body["change_order_id"] = request.changeOrderId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.orderId)) {
            body["order_id"] = request.orderId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.outChangeOrderId)) {
            body["out_change_order_id"] = request.outChangeOrderId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.outOrderId)) {
            body["out_order_id"] = request.outOrderId ?? "";
        }
        var realHeaders: [String: String] = [:]
        if (!TeaUtils.Client.isUnset(headers.commonHeaders)) {
            realHeaders = headers.commonHeaders ?? [:]
        }
        if (!TeaUtils.Client.isUnset(headers.xAcsBtripCorpToken)) {
            realHeaders["x-acs-btrip-corp-token"] = TeaUtils.Client.toJSONString(headers.xAcsBtripCorpToken);
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": realHeaders as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "TrainOrderCancel",
            "version": "2022-05-20",
            "protocol": "HTTPS",
            "pathname": "/train/v1/order/cancel",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(TrainOrderCancelResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func trainOrderCancel(_ request: TrainOrderCancelRequest) async throws -> TrainOrderCancelResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: TrainOrderCancelHeaders = TrainOrderCancelHeaders([:])
        return try await trainOrderCancelWithOptions(request as! TrainOrderCancelRequest, headers as! TrainOrderCancelHeaders, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func trainOrderChangeConfirmWithOptions(_ request: TrainOrderChangeConfirmRequest, _ headers: TrainOrderChangeConfirmHeaders, _ runtime: TeaUtils.RuntimeOptions) async throws -> TrainOrderChangeConfirmResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.changeApplyId)) {
            body["change_apply_id"] = request.changeApplyId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.changeSettleAmount)) {
            body["change_settle_amount"] = request.changeSettleAmount!;
        }
        if (!TeaUtils.Client.isUnset(request.orderId)) {
            body["order_id"] = request.orderId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.outChangeApplyId)) {
            body["out_change_apply_id"] = request.outChangeApplyId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.outOrderId)) {
            body["out_order_id"] = request.outOrderId ?? "";
        }
        var realHeaders: [String: String] = [:]
        if (!TeaUtils.Client.isUnset(headers.commonHeaders)) {
            realHeaders = headers.commonHeaders ?? [:]
        }
        if (!TeaUtils.Client.isUnset(headers.xAcsBtripCorpToken)) {
            realHeaders["x-acs-btrip-corp-token"] = TeaUtils.Client.toJSONString(headers.xAcsBtripCorpToken);
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": realHeaders as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "TrainOrderChangeConfirm",
            "version": "2022-05-20",
            "protocol": "HTTPS",
            "pathname": "/train/v1/change/confirm",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(TrainOrderChangeConfirmResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func trainOrderChangeConfirm(_ request: TrainOrderChangeConfirmRequest) async throws -> TrainOrderChangeConfirmResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: TrainOrderChangeConfirmHeaders = TrainOrderChangeConfirmHeaders([:])
        return try await trainOrderChangeConfirmWithOptions(request as! TrainOrderChangeConfirmRequest, headers as! TrainOrderChangeConfirmHeaders, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func trainOrderCreateWithOptions(_ tmpReq: TrainOrderCreateRequest, _ headers: TrainOrderCreateHeaders, _ runtime: TeaUtils.RuntimeOptions) async throws -> TrainOrderCreateResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: TrainOrderCreateShrinkRequest = TrainOrderCreateShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        if (!TeaUtils.Client.isUnset(tmpReq.bookTrainInfos)) {
            request.bookTrainInfosShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.bookTrainInfos, "book_train_infos", "json")
        }
        if (!TeaUtils.Client.isUnset(tmpReq.businessInfo)) {
            request.businessInfoShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.businessInfo, "business_info", "json")
        }
        if (!TeaUtils.Client.isUnset(tmpReq.contactInfo)) {
            request.contactInfoShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.contactInfo, "contact_info", "json")
        }
        if (!TeaUtils.Client.isUnset(tmpReq.passengerOpenInfoS)) {
            request.passengerOpenInfoSShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.passengerOpenInfoS, "passenger_open_info_s", "json")
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.acceptNoSeat)) {
            body["accept_no_seat"] = request.acceptNoSeat ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.bookTrainInfosShrink)) {
            body["book_train_infos"] = request.bookTrainInfosShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.btripUserId)) {
            body["btrip_user_id"] = request.btripUserId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.btripUserName)) {
            body["btrip_user_name"] = request.btripUserName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.businessInfoShrink)) {
            body["business_info"] = request.businessInfoShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.contactInfoShrink)) {
            body["contact_info"] = request.contactInfoShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.forceMatch)) {
            body["force_match"] = request.forceMatch ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.isPayNow)) {
            body["is_pay_now"] = request.isPayNow!;
        }
        if (!TeaUtils.Client.isUnset(request.outOrderId)) {
            body["out_order_id"] = request.outOrderId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.passengerOpenInfoSShrink)) {
            body["passenger_open_info_s"] = request.passengerOpenInfoSShrink ?? "";
        }
        var realHeaders: [String: String] = [:]
        if (!TeaUtils.Client.isUnset(headers.commonHeaders)) {
            realHeaders = headers.commonHeaders ?? [:]
        }
        if (!TeaUtils.Client.isUnset(headers.xAcsBtripCorpToken)) {
            realHeaders["x-acs-btrip-corp-token"] = TeaUtils.Client.toJSONString(headers.xAcsBtripCorpToken);
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": realHeaders as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "TrainOrderCreate",
            "version": "2022-05-20",
            "protocol": "HTTPS",
            "pathname": "/train/v1/order/create",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(TrainOrderCreateResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func trainOrderCreate(_ request: TrainOrderCreateRequest) async throws -> TrainOrderCreateResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: TrainOrderCreateHeaders = TrainOrderCreateHeaders([:])
        return try await trainOrderCreateWithOptions(request as! TrainOrderCreateRequest, headers as! TrainOrderCreateHeaders, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func trainOrderDetailQueryWithOptions(_ request: TrainOrderDetailQueryRequest, _ headers: TrainOrderDetailQueryHeaders, _ runtime: TeaUtils.RuntimeOptions) async throws -> TrainOrderDetailQueryResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.orderId)) {
            body["order_id"] = request.orderId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.outOrderId)) {
            body["out_order_id"] = request.outOrderId ?? "";
        }
        var realHeaders: [String: String] = [:]
        if (!TeaUtils.Client.isUnset(headers.commonHeaders)) {
            realHeaders = headers.commonHeaders ?? [:]
        }
        if (!TeaUtils.Client.isUnset(headers.xAcsBtripCorpToken)) {
            realHeaders["x-acs-btrip-corp-token"] = TeaUtils.Client.toJSONString(headers.xAcsBtripCorpToken);
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": realHeaders as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "TrainOrderDetailQuery",
            "version": "2022-05-20",
            "protocol": "HTTPS",
            "pathname": "/train/v1/order/query",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(TrainOrderDetailQueryResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func trainOrderDetailQuery(_ request: TrainOrderDetailQueryRequest) async throws -> TrainOrderDetailQueryResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: TrainOrderDetailQueryHeaders = TrainOrderDetailQueryHeaders([:])
        return try await trainOrderDetailQueryWithOptions(request as! TrainOrderDetailQueryRequest, headers as! TrainOrderDetailQueryHeaders, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func trainOrderListQueryWithOptions(_ request: TrainOrderListQueryRequest, _ headers: TrainOrderListQueryHeaders, _ runtime: TeaUtils.RuntimeOptions) async throws -> TrainOrderListQueryResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.allApply)) {
            query["all_apply"] = request.allApply!;
        }
        if (!TeaUtils.Client.isUnset(request.applyId)) {
            query["apply_id"] = request.applyId!;
        }
        if (!TeaUtils.Client.isUnset(request.departId)) {
            query["depart_id"] = request.departId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.endTime)) {
            query["end_time"] = request.endTime ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.page)) {
            query["page"] = request.page!;
        }
        if (!TeaUtils.Client.isUnset(request.pageSize)) {
            query["page_size"] = request.pageSize!;
        }
        if (!TeaUtils.Client.isUnset(request.startTime)) {
            query["start_time"] = request.startTime ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.thirdpartApplyId)) {
            query["thirdpart_apply_id"] = request.thirdpartApplyId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.updateEndTime)) {
            query["update_end_time"] = request.updateEndTime ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.updateStartTime)) {
            query["update_start_time"] = request.updateStartTime ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.userId)) {
            query["user_id"] = request.userId ?? "";
        }
        var realHeaders: [String: String] = [:]
        if (!TeaUtils.Client.isUnset(headers.commonHeaders)) {
            realHeaders = headers.commonHeaders ?? [:]
        }
        if (!TeaUtils.Client.isUnset(headers.xAcsBtripSoCorpToken)) {
            realHeaders["x-acs-btrip-so-corp-token"] = TeaUtils.Client.toJSONString(headers.xAcsBtripSoCorpToken);
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": realHeaders as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "TrainOrderListQuery",
            "version": "2022-05-20",
            "protocol": "HTTPS",
            "pathname": "/train/v1/order-list",
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(TrainOrderListQueryResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func trainOrderListQuery(_ request: TrainOrderListQueryRequest) async throws -> TrainOrderListQueryResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: TrainOrderListQueryHeaders = TrainOrderListQueryHeaders([:])
        return try await trainOrderListQueryWithOptions(request as! TrainOrderListQueryRequest, headers as! TrainOrderListQueryHeaders, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func trainOrderPayWithOptions(_ request: TrainOrderPayRequest, _ headers: TrainOrderPayHeaders, _ runtime: TeaUtils.RuntimeOptions) async throws -> TrainOrderPayResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.orderId)) {
            body["order_id"] = request.orderId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.outOrderId)) {
            body["out_order_id"] = request.outOrderId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.payAmount)) {
            body["pay_amount"] = request.payAmount!;
        }
        var realHeaders: [String: String] = [:]
        if (!TeaUtils.Client.isUnset(headers.commonHeaders)) {
            realHeaders = headers.commonHeaders ?? [:]
        }
        if (!TeaUtils.Client.isUnset(headers.xAcsBtripCorpToken)) {
            realHeaders["x-acs-btrip-corp-token"] = TeaUtils.Client.toJSONString(headers.xAcsBtripCorpToken);
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": realHeaders as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "TrainOrderPay",
            "version": "2022-05-20",
            "protocol": "HTTPS",
            "pathname": "/train/v1/order/pay",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(TrainOrderPayResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func trainOrderPay(_ request: TrainOrderPayRequest) async throws -> TrainOrderPayResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: TrainOrderPayHeaders = TrainOrderPayHeaders([:])
        return try await trainOrderPayWithOptions(request as! TrainOrderPayRequest, headers as! TrainOrderPayHeaders, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func trainOrderQueryWithOptions(_ request: TrainOrderQueryRequest, _ headers: TrainOrderQueryHeaders, _ runtime: TeaUtils.RuntimeOptions) async throws -> TrainOrderQueryResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.orderId)) {
            query["order_id"] = request.orderId!;
        }
        if (!TeaUtils.Client.isUnset(request.userId)) {
            query["user_id"] = request.userId ?? "";
        }
        var realHeaders: [String: String] = [:]
        if (!TeaUtils.Client.isUnset(headers.commonHeaders)) {
            realHeaders = headers.commonHeaders ?? [:]
        }
        if (!TeaUtils.Client.isUnset(headers.xAcsBtripSoCorpToken)) {
            realHeaders["x-acs-btrip-so-corp-token"] = TeaUtils.Client.toJSONString(headers.xAcsBtripSoCorpToken);
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": realHeaders as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "TrainOrderQuery",
            "version": "2022-05-20",
            "protocol": "HTTPS",
            "pathname": "/train/v1/order",
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(TrainOrderQueryResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func trainOrderQuery(_ request: TrainOrderQueryRequest) async throws -> TrainOrderQueryResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: TrainOrderQueryHeaders = TrainOrderQueryHeaders([:])
        return try await trainOrderQueryWithOptions(request as! TrainOrderQueryRequest, headers as! TrainOrderQueryHeaders, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func trainOrderQueryV2WithOptions(_ request: TrainOrderQueryV2Request, _ headers: TrainOrderQueryV2Headers, _ runtime: TeaUtils.RuntimeOptions) async throws -> TrainOrderQueryV2Response {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.orderId)) {
            query["order_id"] = request.orderId!;
        }
        if (!TeaUtils.Client.isUnset(request.userId)) {
            query["user_id"] = request.userId ?? "";
        }
        var realHeaders: [String: String] = [:]
        if (!TeaUtils.Client.isUnset(headers.commonHeaders)) {
            realHeaders = headers.commonHeaders ?? [:]
        }
        if (!TeaUtils.Client.isUnset(headers.xAcsBtripCorpToken)) {
            realHeaders["x-acs-btrip-corp-token"] = TeaUtils.Client.toJSONString(headers.xAcsBtripCorpToken);
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": realHeaders as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "TrainOrderQueryV2",
            "version": "2022-05-20",
            "protocol": "HTTPS",
            "pathname": "/train/v2/order",
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(TrainOrderQueryV2Response(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func trainOrderQueryV2(_ request: TrainOrderQueryV2Request) async throws -> TrainOrderQueryV2Response {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: TrainOrderQueryV2Headers = TrainOrderQueryV2Headers([:])
        return try await trainOrderQueryV2WithOptions(request as! TrainOrderQueryV2Request, headers as! TrainOrderQueryV2Headers, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func trainStationSearchWithOptions(_ request: TrainStationSearchRequest, _ headers: TrainStationSearchHeaders, _ runtime: TeaUtils.RuntimeOptions) async throws -> TrainStationSearchResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.keyword)) {
            query["keyword"] = request.keyword ?? "";
        }
        var realHeaders: [String: String] = [:]
        if (!TeaUtils.Client.isUnset(headers.commonHeaders)) {
            realHeaders = headers.commonHeaders ?? [:]
        }
        if (!TeaUtils.Client.isUnset(headers.xAcsBtripSoCorpToken)) {
            realHeaders["x-acs-btrip-so-corp-token"] = TeaUtils.Client.toJSONString(headers.xAcsBtripSoCorpToken);
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": realHeaders as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "TrainStationSearch",
            "version": "2022-05-20",
            "protocol": "HTTPS",
            "pathname": "/city/v1/train",
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(TrainStationSearchResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func trainStationSearch(_ request: TrainStationSearchRequest) async throws -> TrainStationSearchResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: TrainStationSearchHeaders = TrainStationSearchHeaders([:])
        return try await trainStationSearchWithOptions(request as! TrainStationSearchRequest, headers as! TrainStationSearchHeaders, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func trainStopoverSearchWithOptions(_ request: TrainStopoverSearchRequest, _ headers: TrainStopoverSearchHeaders, _ runtime: TeaUtils.RuntimeOptions) async throws -> TrainStopoverSearchResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.arrStation)) {
            body["arr_station"] = request.arrStation ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.depStation)) {
            body["dep_station"] = request.depStation ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.trainDate)) {
            body["train_date"] = request.trainDate ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.trainNo)) {
            body["train_no"] = request.trainNo ?? "";
        }
        var realHeaders: [String: String] = [:]
        if (!TeaUtils.Client.isUnset(headers.commonHeaders)) {
            realHeaders = headers.commonHeaders ?? [:]
        }
        if (!TeaUtils.Client.isUnset(headers.xAcsBtripCorpToken)) {
            realHeaders["x-acs-btrip-corp-token"] = TeaUtils.Client.toJSONString(headers.xAcsBtripCorpToken);
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": realHeaders as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "TrainStopoverSearch",
            "version": "2022-05-20",
            "protocol": "HTTPS",
            "pathname": "/train/v1/search/stopover",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(TrainStopoverSearchResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func trainStopoverSearch(_ request: TrainStopoverSearchRequest) async throws -> TrainStopoverSearchResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: TrainStopoverSearchHeaders = TrainStopoverSearchHeaders([:])
        return try await trainStopoverSearchWithOptions(request as! TrainStopoverSearchRequest, headers as! TrainStopoverSearchHeaders, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func trainTicketScanQueryWithOptions(_ request: TrainTicketScanQueryRequest, _ headers: TrainTicketScanQueryHeaders, _ runtime: TeaUtils.RuntimeOptions) async throws -> TrainTicketScanQueryResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.billDate)) {
            query["bill_date"] = request.billDate ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.billId)) {
            query["bill_id"] = request.billId!;
        }
        if (!TeaUtils.Client.isUnset(request.invoiceSubTaskId)) {
            query["invoice_sub_task_id"] = request.invoiceSubTaskId!;
        }
        if (!TeaUtils.Client.isUnset(request.pageNo)) {
            query["page_no"] = request.pageNo!;
        }
        if (!TeaUtils.Client.isUnset(request.pageSize)) {
            query["page_size"] = request.pageSize!;
        }
        if (!TeaUtils.Client.isUnset(request.serialNumber)) {
            query["serial_number"] = request.serialNumber ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.ticketNo)) {
            query["ticket_no"] = request.ticketNo ?? "";
        }
        var realHeaders: [String: String] = [:]
        if (!TeaUtils.Client.isUnset(headers.commonHeaders)) {
            realHeaders = headers.commonHeaders ?? [:]
        }
        if (!TeaUtils.Client.isUnset(headers.xAcsBtripSoCorpToken)) {
            realHeaders["x-acs-btrip-so-corp-token"] = TeaUtils.Client.toJSONString(headers.xAcsBtripSoCorpToken);
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": realHeaders as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "TrainTicketScanQuery",
            "version": "2022-05-20",
            "protocol": "HTTPS",
            "pathname": "/scan/v1/train-ticket",
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(TrainTicketScanQueryResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func trainTicketScanQuery(_ request: TrainTicketScanQueryRequest) async throws -> TrainTicketScanQueryResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: TrainTicketScanQueryHeaders = TrainTicketScanQueryHeaders([:])
        return try await trainTicketScanQueryWithOptions(request as! TrainTicketScanQueryRequest, headers as! TrainTicketScanQueryHeaders, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func travelStandardListQueryWithOptions(_ request: TravelStandardListQueryRequest, _ headers: TravelStandardListQueryHeaders, _ runtime: TeaUtils.RuntimeOptions) async throws -> TravelStandardListQueryResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.fromGroup)) {
            query["from_group"] = request.fromGroup!;
        }
        if (!TeaUtils.Client.isUnset(request.pageNo)) {
            query["page_no"] = request.pageNo!;
        }
        if (!TeaUtils.Client.isUnset(request.pageSize)) {
            query["page_size"] = request.pageSize!;
        }
        if (!TeaUtils.Client.isUnset(request.ruleName)) {
            query["rule_name"] = request.ruleName ?? "";
        }
        var realHeaders: [String: String] = [:]
        if (!TeaUtils.Client.isUnset(headers.commonHeaders)) {
            realHeaders = headers.commonHeaders ?? [:]
        }
        if (!TeaUtils.Client.isUnset(headers.xAcsBtripCorpToken)) {
            realHeaders["x-acs-btrip-corp-token"] = TeaUtils.Client.toJSONString(headers.xAcsBtripCorpToken);
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": realHeaders as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "TravelStandardListQuery",
            "version": "2022-05-20",
            "protocol": "HTTPS",
            "pathname": "/travel-manage/v1/standards/list",
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(TravelStandardListQueryResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func travelStandardListQuery(_ request: TravelStandardListQueryRequest) async throws -> TravelStandardListQueryResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: TravelStandardListQueryHeaders = TravelStandardListQueryHeaders([:])
        return try await travelStandardListQueryWithOptions(request as! TravelStandardListQueryRequest, headers as! TravelStandardListQueryHeaders, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func travelStandardQueryWithOptions(_ tmpReq: TravelStandardQueryRequest, _ headers: TravelStandardQueryHeaders, _ runtime: TeaUtils.RuntimeOptions) async throws -> TravelStandardQueryResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: TravelStandardQueryShrinkRequest = TravelStandardQueryShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        if (!TeaUtils.Client.isUnset(tmpReq.serviceTypeList)) {
            request.serviceTypeListShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.serviceTypeList, "service_type_list", "json")
        }
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.fromGroup)) {
            query["from_group"] = request.fromGroup!;
        }
        if (!TeaUtils.Client.isUnset(request.ruleCode)) {
            query["rule_code"] = request.ruleCode!;
        }
        if (!TeaUtils.Client.isUnset(request.serviceTypeListShrink)) {
            query["service_type_list"] = request.serviceTypeListShrink ?? "";
        }
        var realHeaders: [String: String] = [:]
        if (!TeaUtils.Client.isUnset(headers.commonHeaders)) {
            realHeaders = headers.commonHeaders ?? [:]
        }
        if (!TeaUtils.Client.isUnset(headers.xAcsBtripCorpToken)) {
            realHeaders["x-acs-btrip-corp-token"] = TeaUtils.Client.toJSONString(headers.xAcsBtripCorpToken);
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": realHeaders as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "TravelStandardQuery",
            "version": "2022-05-20",
            "protocol": "HTTPS",
            "pathname": "/travel-manage/v1/standards/detail",
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(TravelStandardQueryResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func travelStandardQuery(_ request: TravelStandardQueryRequest) async throws -> TravelStandardQueryResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: TravelStandardQueryHeaders = TravelStandardQueryHeaders([:])
        return try await travelStandardQueryWithOptions(request as! TravelStandardQueryRequest, headers as! TravelStandardQueryHeaders, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func tripBusinessInstanceQueryWithOptions(_ request: TripBusinessInstanceQueryRequest, _ headers: TripBusinessInstanceQueryHeaders, _ runtime: TeaUtils.RuntimeOptions) async throws -> TripBusinessInstanceQueryResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.businessInstanceId)) {
            query["business_instance_id"] = request.businessInstanceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.thirdBusinessId)) {
            query["third_business_id"] = request.thirdBusinessId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.userId)) {
            query["user_id"] = request.userId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.userName)) {
            query["user_name"] = request.userName ?? "";
        }
        var realHeaders: [String: String] = [:]
        if (!TeaUtils.Client.isUnset(headers.commonHeaders)) {
            realHeaders = headers.commonHeaders ?? [:]
        }
        if (!TeaUtils.Client.isUnset(headers.xAcsBtripSoCorpToken)) {
            realHeaders["x-acs-btrip-so-corp-token"] = TeaUtils.Client.toJSONString(headers.xAcsBtripSoCorpToken);
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": realHeaders as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "TripBusinessInstanceQuery",
            "version": "2022-05-20",
            "protocol": "HTTPS",
            "pathname": "/apply/v1/business",
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(TripBusinessInstanceQueryResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func tripBusinessInstanceQuery(_ request: TripBusinessInstanceQueryRequest) async throws -> TripBusinessInstanceQueryResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: TripBusinessInstanceQueryHeaders = TripBusinessInstanceQueryHeaders([:])
        return try await tripBusinessInstanceQueryWithOptions(request as! TripBusinessInstanceQueryRequest, headers as! TripBusinessInstanceQueryHeaders, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func tripCCInfoQueryWithOptions(_ request: TripCCInfoQueryRequest, _ headers: TripCCInfoQueryHeaders, _ runtime: TeaUtils.RuntimeOptions) async throws -> TripCCInfoQueryResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.businessInstanceId)) {
            query["business_instance_id"] = request.businessInstanceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.nodeId)) {
            query["node_id"] = request.nodeId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.thirdBusinessId)) {
            query["third_business_id"] = request.thirdBusinessId ?? "";
        }
        var realHeaders: [String: String] = [:]
        if (!TeaUtils.Client.isUnset(headers.commonHeaders)) {
            realHeaders = headers.commonHeaders ?? [:]
        }
        if (!TeaUtils.Client.isUnset(headers.xAcsBtripCorpToken)) {
            realHeaders["x-acs-btrip-corp-token"] = TeaUtils.Client.toJSONString(headers.xAcsBtripCorpToken);
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": realHeaders as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "TripCCInfoQuery",
            "version": "2022-05-20",
            "protocol": "HTTPS",
            "pathname": "/apply/v1/cc",
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(TripCCInfoQueryResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func tripCCInfoQuery(_ request: TripCCInfoQueryRequest) async throws -> TripCCInfoQueryResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: TripCCInfoQueryHeaders = TripCCInfoQueryHeaders([:])
        return try await tripCCInfoQueryWithOptions(request as! TripCCInfoQueryRequest, headers as! TripCCInfoQueryHeaders, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func tripTaskQueryWithOptions(_ request: TripTaskQueryRequest, _ headers: TripTaskQueryHeaders, _ runtime: TeaUtils.RuntimeOptions) async throws -> TripTaskQueryResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.businessInstanceId)) {
            query["business_instance_id"] = request.businessInstanceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.thirdBusinessId)) {
            query["third_business_id"] = request.thirdBusinessId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.userId)) {
            query["user_id"] = request.userId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.userName)) {
            query["user_name"] = request.userName ?? "";
        }
        var realHeaders: [String: String] = [:]
        if (!TeaUtils.Client.isUnset(headers.commonHeaders)) {
            realHeaders = headers.commonHeaders ?? [:]
        }
        if (!TeaUtils.Client.isUnset(headers.xAcsBtripCorpToken)) {
            realHeaders["x-acs-btrip-corp-token"] = TeaUtils.Client.toJSONString(headers.xAcsBtripCorpToken);
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": realHeaders as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "TripTaskQuery",
            "version": "2022-05-20",
            "protocol": "HTTPS",
            "pathname": "/apply/v1/tasks",
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(TripTaskQueryResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func tripTaskQuery(_ request: TripTaskQueryRequest) async throws -> TripTaskQueryResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: TripTaskQueryHeaders = TripTaskQueryHeaders([:])
        return try await tripTaskQueryWithOptions(request as! TripTaskQueryRequest, headers as! TripTaskQueryHeaders, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateCustomRoleWithOptions(_ request: UpdateCustomRoleRequest, _ headers: UpdateCustomRoleHeaders, _ runtime: TeaUtils.RuntimeOptions) async throws -> UpdateCustomRoleResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.roleId)) {
            body["role_id"] = request.roleId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.roleName)) {
            body["role_name"] = request.roleName ?? "";
        }
        var realHeaders: [String: String] = [:]
        if (!TeaUtils.Client.isUnset(headers.commonHeaders)) {
            realHeaders = headers.commonHeaders ?? [:]
        }
        if (!TeaUtils.Client.isUnset(headers.xAcsBtripCorpToken)) {
            realHeaders["x-acs-btrip-corp-token"] = TeaUtils.Client.toJSONString(headers.xAcsBtripCorpToken);
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": realHeaders as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "UpdateCustomRole",
            "version": "2022-05-20",
            "protocol": "HTTPS",
            "pathname": "/role/v1/customRoles/update",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(UpdateCustomRoleResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateCustomRole(_ request: UpdateCustomRoleRequest) async throws -> UpdateCustomRoleResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: UpdateCustomRoleHeaders = UpdateCustomRoleHeaders([:])
        return try await updateCustomRoleWithOptions(request as! UpdateCustomRoleRequest, headers as! UpdateCustomRoleHeaders, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateDepartmentWithOptions(_ tmpReq: UpdateDepartmentRequest, _ headers: UpdateDepartmentHeaders, _ runtime: TeaUtils.RuntimeOptions) async throws -> UpdateDepartmentResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: UpdateDepartmentShrinkRequest = UpdateDepartmentShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        if (!TeaUtils.Client.isUnset(tmpReq.managerEmployeeIdList)) {
            request.managerEmployeeIdListShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.managerEmployeeIdList, "manager_employee_id_list", "json")
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.deptName)) {
            body["dept_name"] = request.deptName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.managerEmployeeIdListShrink)) {
            body["manager_employee_id_list"] = request.managerEmployeeIdListShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.outDeptId)) {
            body["out_dept_id"] = request.outDeptId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.outDeptPid)) {
            body["out_dept_pid"] = request.outDeptPid ?? "";
        }
        var realHeaders: [String: String] = [:]
        if (!TeaUtils.Client.isUnset(headers.commonHeaders)) {
            realHeaders = headers.commonHeaders ?? [:]
        }
        if (!TeaUtils.Client.isUnset(headers.xAcsBtripCorpToken)) {
            realHeaders["x-acs-btrip-corp-token"] = TeaUtils.Client.toJSONString(headers.xAcsBtripCorpToken);
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": realHeaders as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "UpdateDepartment",
            "version": "2022-05-20",
            "protocol": "HTTPS",
            "pathname": "/department/v2/update",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(UpdateDepartmentResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateDepartment(_ request: UpdateDepartmentRequest) async throws -> UpdateDepartmentResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: UpdateDepartmentHeaders = UpdateDepartmentHeaders([:])
        return try await updateDepartmentWithOptions(request as! UpdateDepartmentRequest, headers as! UpdateDepartmentHeaders, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateEmployeeWithOptions(_ tmpReq: UpdateEmployeeRequest, _ headers: UpdateEmployeeHeaders, _ runtime: TeaUtils.RuntimeOptions) async throws -> UpdateEmployeeResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: UpdateEmployeeShrinkRequest = UpdateEmployeeShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        if (!TeaUtils.Client.isUnset(tmpReq.baseCityCodeList)) {
            request.baseCityCodeListShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.baseCityCodeList, "base_city_code_list", "json")
        }
        if (!TeaUtils.Client.isUnset(tmpReq.certList)) {
            request.certListShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.certList, "cert_list", "json")
        }
        if (!TeaUtils.Client.isUnset(tmpReq.customRoleCodeList)) {
            request.customRoleCodeListShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.customRoleCodeList, "custom_role_code_list", "json")
        }
        if (!TeaUtils.Client.isUnset(tmpReq.outDeptIdList)) {
            request.outDeptIdListShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.outDeptIdList, "out_dept_id_list", "json")
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.attribute)) {
            body["attribute"] = request.attribute ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.avatar)) {
            body["avatar"] = request.avatar ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.baseCityCodeListShrink)) {
            body["base_city_code_list"] = request.baseCityCodeListShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.birthday)) {
            body["birthday"] = request.birthday ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.certListShrink)) {
            body["cert_list"] = request.certListShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.customRoleCodeListShrink)) {
            body["custom_role_code_list"] = request.customRoleCodeListShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.email)) {
            body["email"] = request.email ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.gender)) {
            body["gender"] = request.gender ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.isAdmin)) {
            body["is_admin"] = request.isAdmin!;
        }
        if (!TeaUtils.Client.isUnset(request.isBoss)) {
            body["is_boss"] = request.isBoss!;
        }
        if (!TeaUtils.Client.isUnset(request.isDeptLeader)) {
            body["is_dept_leader"] = request.isDeptLeader!;
        }
        if (!TeaUtils.Client.isUnset(request.jobNo)) {
            body["job_no"] = request.jobNo ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.managerUserId)) {
            body["manager_user_id"] = request.managerUserId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.outDeptIdListShrink)) {
            body["out_dept_id_list"] = request.outDeptIdListShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.phone)) {
            body["phone"] = request.phone ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.positionLevel)) {
            body["position_level"] = request.positionLevel ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.realName)) {
            body["real_name"] = request.realName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.realNameEn)) {
            body["real_name_en"] = request.realNameEn ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.userId)) {
            body["user_id"] = request.userId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.userNick)) {
            body["user_nick"] = request.userNick ?? "";
        }
        var realHeaders: [String: String] = [:]
        if (!TeaUtils.Client.isUnset(headers.commonHeaders)) {
            realHeaders = headers.commonHeaders ?? [:]
        }
        if (!TeaUtils.Client.isUnset(headers.xAcsBtripCorpToken)) {
            realHeaders["x-acs-btrip-corp-token"] = TeaUtils.Client.toJSONString(headers.xAcsBtripCorpToken);
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": realHeaders as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "UpdateEmployee",
            "version": "2022-05-20",
            "protocol": "HTTPS",
            "pathname": "/employee/v2/update",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(UpdateEmployeeResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateEmployee(_ request: UpdateEmployeeRequest) async throws -> UpdateEmployeeResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: UpdateEmployeeHeaders = UpdateEmployeeHeaders([:])
        return try await updateEmployeeWithOptions(request as! UpdateEmployeeRequest, headers as! UpdateEmployeeHeaders, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateEmployeeLeaveStatusWithOptions(_ request: UpdateEmployeeLeaveStatusRequest, _ headers: UpdateEmployeeLeaveStatusHeaders, _ runtime: TeaUtils.RuntimeOptions) async throws -> UpdateEmployeeLeaveStatusResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.isLeave)) {
            body["is_leave"] = request.isLeave!;
        }
        if (!TeaUtils.Client.isUnset(request.userId)) {
            body["user_id"] = request.userId ?? "";
        }
        var realHeaders: [String: String] = [:]
        if (!TeaUtils.Client.isUnset(headers.commonHeaders)) {
            realHeaders = headers.commonHeaders ?? [:]
        }
        if (!TeaUtils.Client.isUnset(headers.xAcsBtripCorpToken)) {
            realHeaders["x-acs-btrip-corp-token"] = TeaUtils.Client.toJSONString(headers.xAcsBtripCorpToken);
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": realHeaders as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "UpdateEmployeeLeaveStatus",
            "version": "2022-05-20",
            "protocol": "HTTPS",
            "pathname": "/employee/v2/updateLeaveStatus",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(UpdateEmployeeLeaveStatusResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateEmployeeLeaveStatus(_ request: UpdateEmployeeLeaveStatusRequest) async throws -> UpdateEmployeeLeaveStatusResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: UpdateEmployeeLeaveStatusHeaders = UpdateEmployeeLeaveStatusHeaders([:])
        return try await updateEmployeeLeaveStatusWithOptions(request as! UpdateEmployeeLeaveStatusRequest, headers as! UpdateEmployeeLeaveStatusHeaders, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func userQueryWithOptions(_ request: UserQueryRequest, _ headers: UserQueryHeaders, _ runtime: TeaUtils.RuntimeOptions) async throws -> UserQueryResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.modifiedTimeGreaterOrEqualThan)) {
            query["modified_time_greater_or_equal_than"] = request.modifiedTimeGreaterOrEqualThan ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.pageSize)) {
            query["page_size"] = request.pageSize!;
        }
        if (!TeaUtils.Client.isUnset(request.pageToken)) {
            query["page_token"] = request.pageToken ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.thirdPartJobNo)) {
            query["third_part_job_no"] = request.thirdPartJobNo ?? "";
        }
        var realHeaders: [String: String] = [:]
        if (!TeaUtils.Client.isUnset(headers.commonHeaders)) {
            realHeaders = headers.commonHeaders ?? [:]
        }
        if (!TeaUtils.Client.isUnset(headers.xAcsBtripSoCorpToken)) {
            realHeaders["x-acs-btrip-so-corp-token"] = TeaUtils.Client.toJSONString(headers.xAcsBtripSoCorpToken);
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": realHeaders as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "UserQuery",
            "version": "2022-05-20",
            "protocol": "HTTPS",
            "pathname": "/user/v1/user",
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(UserQueryResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func userQuery(_ request: UserQueryRequest) async throws -> UserQueryResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: UserQueryHeaders = UserQueryHeaders([:])
        return try await userQueryWithOptions(request as! UserQueryRequest, headers as! UserQueryHeaders, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func vatInvoiceScanQueryWithOptions(_ request: VatInvoiceScanQueryRequest, _ headers: VatInvoiceScanQueryHeaders, _ runtime: TeaUtils.RuntimeOptions) async throws -> VatInvoiceScanQueryResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.billDate)) {
            query["bill_date"] = request.billDate ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.billId)) {
            query["bill_id"] = request.billId!;
        }
        if (!TeaUtils.Client.isUnset(request.invoiceSubTaskId)) {
            query["invoice_sub_task_id"] = request.invoiceSubTaskId!;
        }
        if (!TeaUtils.Client.isUnset(request.pageNo)) {
            query["page_no"] = request.pageNo!;
        }
        if (!TeaUtils.Client.isUnset(request.pageSize)) {
            query["page_size"] = request.pageSize!;
        }
        var realHeaders: [String: String] = [:]
        if (!TeaUtils.Client.isUnset(headers.commonHeaders)) {
            realHeaders = headers.commonHeaders ?? [:]
        }
        if (!TeaUtils.Client.isUnset(headers.xAcsBtripSoCorpToken)) {
            realHeaders["x-acs-btrip-so-corp-token"] = TeaUtils.Client.toJSONString(headers.xAcsBtripSoCorpToken);
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": realHeaders as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "VatInvoiceScanQuery",
            "version": "2022-05-20",
            "protocol": "HTTPS",
            "pathname": "/scan/v1/vat-invoice",
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(VatInvoiceScanQueryResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func vatInvoiceScanQuery(_ request: VatInvoiceScanQueryRequest) async throws -> VatInvoiceScanQueryResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: VatInvoiceScanQueryHeaders = VatInvoiceScanQueryHeaders([:])
        return try await vatInvoiceScanQueryWithOptions(request as! VatInvoiceScanQueryRequest, headers as! VatInvoiceScanQueryHeaders, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func waitApplyInvoiceTaskDetailQueryWithOptions(_ request: WaitApplyInvoiceTaskDetailQueryRequest, _ headers: WaitApplyInvoiceTaskDetailQueryHeaders, _ runtime: TeaUtils.RuntimeOptions) async throws -> WaitApplyInvoiceTaskDetailQueryResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.billDate)) {
            query["bill_date"] = request.billDate ?? "";
        }
        var realHeaders: [String: String] = [:]
        if (!TeaUtils.Client.isUnset(headers.commonHeaders)) {
            realHeaders = headers.commonHeaders ?? [:]
        }
        if (!TeaUtils.Client.isUnset(headers.xAcsBtripSoCorpToken)) {
            realHeaders["x-acs-btrip-so-corp-token"] = TeaUtils.Client.toJSONString(headers.xAcsBtripSoCorpToken);
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": realHeaders as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "WaitApplyInvoiceTaskDetailQuery",
            "version": "2022-05-20",
            "protocol": "HTTPS",
            "pathname": "/invoice/v1/wait-apply-task",
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(WaitApplyInvoiceTaskDetailQueryResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func waitApplyInvoiceTaskDetailQuery(_ request: WaitApplyInvoiceTaskDetailQueryRequest) async throws -> WaitApplyInvoiceTaskDetailQueryResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: WaitApplyInvoiceTaskDetailQueryHeaders = WaitApplyInvoiceTaskDetailQueryHeaders([:])
        return try await waitApplyInvoiceTaskDetailQueryWithOptions(request as! WaitApplyInvoiceTaskDetailQueryRequest, headers as! WaitApplyInvoiceTaskDetailQueryHeaders, runtime as! TeaUtils.RuntimeOptions)
    }
}
