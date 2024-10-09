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
        self._endpoint = try getEndpoint("marketing_event", self._regionId ?? "", self._endpointRule ?? "", self._network ?? "", self._suffix ?? "", self._endpointMap ?? [:], self._endpoint ?? "")
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
    public func addSumRecordFlowPopWithOptions(_ request: AddSumRecordFlowPopRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> AddSumRecordFlowPopResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.activityId)) {
            query["ActivityId"] = request.activityId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.code)) {
            query["Code"] = request.code ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.conferenceName)) {
            query["ConferenceName"] = request.conferenceName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.deviceId)) {
            query["DeviceId"] = request.deviceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.entryName)) {
            query["EntryName"] = request.entryName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.idcard)) {
            query["Idcard"] = request.idcard ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.signTime)) {
            query["SignTime"] = request.signTime ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.type)) {
            query["Type"] = request.type!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "AddSumRecordFlowPop",
            "version": "2021-01-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(AddSumRecordFlowPopResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func addSumRecordFlowPop(_ request: AddSumRecordFlowPopRequest) async throws -> AddSumRecordFlowPopResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await addSumRecordFlowPopWithOptions(request as! AddSumRecordFlowPopRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func bindExhibitorRfidPopWithOptions(_ request: BindExhibitorRfidPopRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> BindExhibitorRfidPopResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.activityId)) {
            query["ActivityId"] = request.activityId!;
        }
        if (!TeaUtils.Client.isUnset(request.deviceId)) {
            query["DeviceId"] = request.deviceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.gmtCreate)) {
            query["GmtCreate"] = request.gmtCreate ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.gmtModified)) {
            query["GmtModified"] = request.gmtModified ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.guestTicketRecordId)) {
            query["GuestTicketRecordId"] = request.guestTicketRecordId!;
        }
        if (!TeaUtils.Client.isUnset(request.id)) {
            query["Id"] = request.id!;
        }
        if (!TeaUtils.Client.isUnset(request.rfid)) {
            query["Rfid"] = request.rfid ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.ticketCode)) {
            query["TicketCode"] = request.ticketCode ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "BindExhibitorRfidPop",
            "version": "2021-01-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(BindExhibitorRfidPopResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func bindExhibitorRfidPop(_ request: BindExhibitorRfidPopRequest) async throws -> BindExhibitorRfidPopResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await bindExhibitorRfidPopWithOptions(request as! BindExhibitorRfidPopRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func bindGuestRfidPopWithOptions(_ request: BindGuestRfidPopRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> BindGuestRfidPopResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.activityId)) {
            query["ActivityId"] = request.activityId!;
        }
        if (!TeaUtils.Client.isUnset(request.deviceId)) {
            query["DeviceId"] = request.deviceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.gmtCreate)) {
            query["GmtCreate"] = request.gmtCreate ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.gmtModified)) {
            query["GmtModified"] = request.gmtModified ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.guestTicketRecordId)) {
            query["GuestTicketRecordId"] = request.guestTicketRecordId!;
        }
        if (!TeaUtils.Client.isUnset(request.id)) {
            query["Id"] = request.id!;
        }
        if (!TeaUtils.Client.isUnset(request.rfid)) {
            query["Rfid"] = request.rfid ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.ticketCode)) {
            query["TicketCode"] = request.ticketCode ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "BindGuestRfidPop",
            "version": "2021-01-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(BindGuestRfidPopResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func bindGuestRfidPop(_ request: BindGuestRfidPopRequest) async throws -> BindGuestRfidPopResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await bindGuestRfidPopWithOptions(request as! BindGuestRfidPopRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func checkNFCBindPopWithOptions(_ request: CheckNFCBindPopRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> CheckNFCBindPopResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.activityId)) {
            query["ActivityId"] = request.activityId!;
        }
        if (!TeaUtils.Client.isUnset(request.nfcId)) {
            query["NfcId"] = request.nfcId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CheckNFCBindPop",
            "version": "2021-01-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CheckNFCBindPopResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func checkNFCBindPop(_ request: CheckNFCBindPopRequest) async throws -> CheckNFCBindPopResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await checkNFCBindPopWithOptions(request as! CheckNFCBindPopRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func findGuestCredentialsRecordWithOptions(_ request: FindGuestCredentialsRecordRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> FindGuestCredentialsRecordResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.activityId)) {
            query["ActivityId"] = request.activityId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.dateTimeString)) {
            query["DateTimeString"] = request.dateTimeString ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.endDateTime)) {
            query["EndDateTime"] = request.endDateTime ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.startDateTime)) {
            query["StartDateTime"] = request.startDateTime ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "FindGuestCredentialsRecord",
            "version": "2021-01-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(FindGuestCredentialsRecordResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func findGuestCredentialsRecord(_ request: FindGuestCredentialsRecordRequest) async throws -> FindGuestCredentialsRecordResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await findGuestCredentialsRecordWithOptions(request as! FindGuestCredentialsRecordRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func findGuestTicketRecordWithOptions(_ request: FindGuestTicketRecordRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> FindGuestTicketRecordResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.activityId)) {
            query["ActivityId"] = request.activityId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.dateTimeString)) {
            query["DateTimeString"] = request.dateTimeString ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.endDateTime)) {
            query["EndDateTime"] = request.endDateTime ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.startDateTime)) {
            query["StartDateTime"] = request.startDateTime ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "FindGuestTicketRecord",
            "version": "2021-01-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(FindGuestTicketRecordResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func findGuestTicketRecord(_ request: FindGuestTicketRecordRequest) async throws -> FindGuestTicketRecordResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await findGuestTicketRecordWithOptions(request as! FindGuestTicketRecordRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func queryAllActivityInfoWithOptions(_ request: QueryAllActivityInfoRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> QueryAllActivityInfoResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: String] = AlibabaCloudOpenApiUtil.Client.query(TeaUtils.Client.toMap(request))
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "QueryAllActivityInfo",
            "version": "2021-01-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "GET",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(QueryAllActivityInfoResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func queryAllActivityInfo(_ request: QueryAllActivityInfoRequest) async throws -> QueryAllActivityInfoResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await queryAllActivityInfoWithOptions(request as! QueryAllActivityInfoRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func queryOrderSessionListPopWithOptions(_ request: QueryOrderSessionListPopRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> QueryOrderSessionListPopResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.activityId)) {
            query["ActivityId"] = request.activityId!;
        }
        if (!TeaUtils.Client.isUnset(request.nfcId)) {
            query["NfcId"] = request.nfcId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "QueryOrderSessionListPop",
            "version": "2021-01-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(QueryOrderSessionListPopResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func queryOrderSessionListPop(_ request: QueryOrderSessionListPopRequest) async throws -> QueryOrderSessionListPopResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await queryOrderSessionListPopWithOptions(request as! QueryOrderSessionListPopRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func querySessionByActivityIdPopWithOptions(_ request: QuerySessionByActivityIdPopRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> QuerySessionByActivityIdPopResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.activityId)) {
            query["ActivityId"] = request.activityId!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "QuerySessionByActivityIdPop",
            "version": "2021-01-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(QuerySessionByActivityIdPopResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func querySessionByActivityIdPop(_ request: QuerySessionByActivityIdPopRequest) async throws -> QuerySessionByActivityIdPopResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await querySessionByActivityIdPopWithOptions(request as! QuerySessionByActivityIdPopRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func querySessionListPopWithOptions(_ request: QuerySessionListPopRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> QuerySessionListPopResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.activityId)) {
            query["ActivityId"] = request.activityId!;
        }
        if (!TeaUtils.Client.isUnset(request.nfcId)) {
            query["NfcId"] = request.nfcId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "QuerySessionListPop",
            "version": "2021-01-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(QuerySessionListPopResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func querySessionListPop(_ request: QuerySessionListPopRequest) async throws -> QuerySessionListPopResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await querySessionListPopWithOptions(request as! QuerySessionListPopRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func querySignInRecordPopWithOptions(_ request: QuerySignInRecordPopRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> QuerySignInRecordPopResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.activityId)) {
            query["ActivityId"] = request.activityId!;
        }
        if (!TeaUtils.Client.isUnset(request.endTime)) {
            query["EndTime"] = request.endTime ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.pageNum)) {
            query["PageNum"] = request.pageNum!;
        }
        if (!TeaUtils.Client.isUnset(request.pageSize)) {
            query["PageSize"] = request.pageSize!;
        }
        if (!TeaUtils.Client.isUnset(request.startTime)) {
            query["StartTime"] = request.startTime ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "QuerySignInRecordPop",
            "version": "2021-01-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(QuerySignInRecordPopResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func querySignInRecordPop(_ request: QuerySignInRecordPopRequest) async throws -> QuerySignInRecordPopResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await querySignInRecordPopWithOptions(request as! QuerySignInRecordPopRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func querySingleActivityInfoWithOptions(_ request: QuerySingleActivityInfoRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> QuerySingleActivityInfoResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: String] = AlibabaCloudOpenApiUtil.Client.query(TeaUtils.Client.toMap(request))
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "QuerySingleActivityInfo",
            "version": "2021-01-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "GET",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(QuerySingleActivityInfoResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func querySingleActivityInfo(_ request: QuerySingleActivityInfoRequest) async throws -> QuerySingleActivityInfoResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await querySingleActivityInfoWithOptions(request as! QuerySingleActivityInfoRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func syncSignInInfoWithOptions(_ request: SyncSignInInfoRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> SyncSignInInfoResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: String] = AlibabaCloudOpenApiUtil.Client.query(TeaUtils.Client.toMap(request))
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "SyncSignInInfo",
            "version": "2021-01-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "GET",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(SyncSignInInfoResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func syncSignInInfo(_ request: SyncSignInInfoRequest) async throws -> SyncSignInInfoResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await syncSignInInfoWithOptions(request as! SyncSignInInfoRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func ticketOrCredentialsSignInPopWithOptions(_ request: TicketOrCredentialsSignInPopRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> TicketOrCredentialsSignInPopResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.activityId)) {
            query["ActivityId"] = request.activityId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.code)) {
            query["Code"] = request.code ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.conferenceName)) {
            query["ConferenceName"] = request.conferenceName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.deviceId)) {
            query["DeviceId"] = request.deviceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.entryName)) {
            query["EntryName"] = request.entryName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.idcard)) {
            query["Idcard"] = request.idcard ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.signTime)) {
            query["SignTime"] = request.signTime ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.type)) {
            query["Type"] = request.type!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "TicketOrCredentialsSignInPop",
            "version": "2021-01-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(TicketOrCredentialsSignInPopResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func ticketOrCredentialsSignInPop(_ request: TicketOrCredentialsSignInPopRequest) async throws -> TicketOrCredentialsSignInPopResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await ticketOrCredentialsSignInPopWithOptions(request as! TicketOrCredentialsSignInPopRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateCredentialsStatusPopWithOptions(_ request: UpdateCredentialsStatusPopRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> UpdateCredentialsStatusPopResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.code)) {
            query["Code"] = request.code ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.proxyRecipientName)) {
            query["ProxyRecipientName"] = request.proxyRecipientName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.proxyRecipientPhoneNumber)) {
            query["ProxyRecipientPhoneNumber"] = request.proxyRecipientPhoneNumber ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.receiptLocation)) {
            query["ReceiptLocation"] = request.receiptLocation ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.time)) {
            query["Time"] = request.time ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "UpdateCredentialsStatusPop",
            "version": "2021-01-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(UpdateCredentialsStatusPopResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateCredentialsStatusPop(_ request: UpdateCredentialsStatusPopRequest) async throws -> UpdateCredentialsStatusPopResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await updateCredentialsStatusPopWithOptions(request as! UpdateCredentialsStatusPopRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateTicketRecordByticketCodePopWithOptions(_ request: UpdateTicketRecordByticketCodePopRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> UpdateTicketRecordByticketCodePopResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.agendaId)) {
            query["AgendaId"] = request.agendaId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.code)) {
            query["Code"] = request.code ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.event)) {
            query["Event"] = request.event ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.sceneId)) {
            query["SceneId"] = request.sceneId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.time)) {
            query["Time"] = request.time ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "UpdateTicketRecordByticketCodePop",
            "version": "2021-01-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(UpdateTicketRecordByticketCodePopResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateTicketRecordByticketCodePop(_ request: UpdateTicketRecordByticketCodePopRequest) async throws -> UpdateTicketRecordByticketCodePopResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await updateTicketRecordByticketCodePopWithOptions(request as! UpdateTicketRecordByticketCodePopRequest, runtime as! TeaUtils.RuntimeOptions)
    }
}
