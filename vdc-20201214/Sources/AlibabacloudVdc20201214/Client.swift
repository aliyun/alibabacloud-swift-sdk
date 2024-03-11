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
        self._endpoint = try getEndpoint("vdc", self._regionId ?? "", self._endpointRule ?? "", self._network ?? "", self._suffix ?? "", self._endpointMap ?? [:], self._endpoint ?? "")
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
    public func describeAppConfigWithOptions(_ request: DescribeAppConfigRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribeAppConfigResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.appId)) {
            query["AppId"] = request.appId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DescribeAppConfig",
            "version": "2020-12-14",
            "protocol": "HTTPS",
            "pathname": "/api/config/describeAppConfig",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribeAppConfigResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeAppConfig(_ request: DescribeAppConfigRequest) async throws -> DescribeAppConfigResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await describeAppConfigWithOptions(request as! DescribeAppConfigRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeCallWithOptions(_ request: DescribeCallRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribeCallResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.appId)) {
            query["AppId"] = request.appId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.channelId)) {
            query["ChannelId"] = request.channelId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.createdTs)) {
            query["CreatedTs"] = request.createdTs!;
        }
        if (!TeaUtils.Client.isUnset(request.destroyedTs)) {
            query["DestroyedTs"] = request.destroyedTs!;
        }
        if (!TeaUtils.Client.isUnset(request.extDataType)) {
            query["ExtDataType"] = request.extDataType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.queryExpInfo)) {
            query["QueryExpInfo"] = request.queryExpInfo!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DescribeCall",
            "version": "2020-12-14",
            "protocol": "HTTPS",
            "pathname": "/api/call/describeCall",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribeCallResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeCall(_ request: DescribeCallRequest) async throws -> DescribeCallResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await describeCallWithOptions(request as! DescribeCallRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeCallInfoWithOptions(_ request: DescribeCallInfoRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribeCallInfoResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.appId)) {
            query["AppId"] = request.appId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.channelId)) {
            query["ChannelId"] = request.channelId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.createdTs)) {
            query["CreatedTs"] = request.createdTs!;
        }
        if (!TeaUtils.Client.isUnset(request.destroyedTs)) {
            query["DestroyedTs"] = request.destroyedTs!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DescribeCallInfo",
            "version": "2020-12-14",
            "protocol": "HTTPS",
            "pathname": "/api/call/describeCallInfo",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribeCallInfoResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeCallInfo(_ request: DescribeCallInfoRequest) async throws -> DescribeCallInfoResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await describeCallInfoWithOptions(request as! DescribeCallInfoRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeCallListWithOptions(_ request: DescribeCallListRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribeCallListResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.appId)) {
            query["AppId"] = request.appId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.callStatus)) {
            query["CallStatus"] = request.callStatus ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.channelId)) {
            query["ChannelId"] = request.channelId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.endTs)) {
            query["EndTs"] = request.endTs!;
        }
        if (!TeaUtils.Client.isUnset(request.orderBy)) {
            query["OrderBy"] = request.orderBy ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.pageNo)) {
            query["PageNo"] = request.pageNo!;
        }
        if (!TeaUtils.Client.isUnset(request.pageSize)) {
            query["PageSize"] = request.pageSize!;
        }
        if (!TeaUtils.Client.isUnset(request.queryMode)) {
            query["QueryMode"] = request.queryMode ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.startTs)) {
            query["StartTs"] = request.startTs!;
        }
        if (!TeaUtils.Client.isUnset(request.userId)) {
            query["UserId"] = request.userId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DescribeCallList",
            "version": "2020-12-14",
            "protocol": "HTTPS",
            "pathname": "/api/call/describeCallList",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribeCallListResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeCallList(_ request: DescribeCallListRequest) async throws -> DescribeCallListResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await describeCallListWithOptions(request as! DescribeCallListRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeCallUserExpWithOptions(_ request: DescribeCallUserExpRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribeCallUserExpResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.appId)) {
            query["AppId"] = request.appId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.channelId)) {
            query["ChannelId"] = request.channelId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.createdTs)) {
            query["CreatedTs"] = request.createdTs!;
        }
        if (!TeaUtils.Client.isUnset(request.destroyedTs)) {
            query["DestroyedTs"] = request.destroyedTs!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DescribeCallUserExp",
            "version": "2020-12-14",
            "protocol": "HTTPS",
            "pathname": "/api/call/describeCallUserExp",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribeCallUserExpResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeCallUserExp(_ request: DescribeCallUserExpRequest) async throws -> DescribeCallUserExpResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await describeCallUserExpWithOptions(request as! DescribeCallUserExpRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeCallUserListWithOptions(_ request: DescribeCallUserListRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribeCallUserListResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.appId)) {
            query["AppId"] = request.appId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.channelId)) {
            query["ChannelId"] = request.channelId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.createdTs)) {
            query["CreatedTs"] = request.createdTs!;
        }
        if (!TeaUtils.Client.isUnset(request.destroyedTs)) {
            query["DestroyedTs"] = request.destroyedTs!;
        }
        if (!TeaUtils.Client.isUnset(request.extDataType)) {
            query["ExtDataType"] = request.extDataType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.pageNo)) {
            query["PageNo"] = request.pageNo!;
        }
        if (!TeaUtils.Client.isUnset(request.pageSize)) {
            query["PageSize"] = request.pageSize!;
        }
        if (!TeaUtils.Client.isUnset(request.queryExpInfo)) {
            query["QueryExpInfo"] = request.queryExpInfo!;
        }
        if (!TeaUtils.Client.isUnset(request.roleType)) {
            query["RoleType"] = request.roleType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.userId)) {
            query["UserId"] = request.userId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DescribeCallUserList",
            "version": "2020-12-14",
            "protocol": "HTTPS",
            "pathname": "/api/call/describeCallUserList",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribeCallUserListResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeCallUserList(_ request: DescribeCallUserListRequest) async throws -> DescribeCallUserListResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await describeCallUserListWithOptions(request as! DescribeCallUserListRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeChannelAreaDistributionStatDataWithOptions(_ request: DescribeChannelAreaDistributionStatDataRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribeChannelAreaDistributionStatDataResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.appId)) {
            query["AppId"] = request.appId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.channelId)) {
            query["ChannelId"] = request.channelId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.createdTs)) {
            query["CreatedTs"] = request.createdTs!;
        }
        if (!TeaUtils.Client.isUnset(request.destroyedTs)) {
            query["DestroyedTs"] = request.destroyedTs!;
        }
        if (!TeaUtils.Client.isUnset(request.parentArea)) {
            query["ParentArea"] = request.parentArea ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DescribeChannelAreaDistributionStatData",
            "version": "2020-12-14",
            "protocol": "HTTPS",
            "pathname": "/api/channel/describeChannelAreaDistributionStatData",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribeChannelAreaDistributionStatDataResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeChannelAreaDistributionStatData(_ request: DescribeChannelAreaDistributionStatDataRequest) async throws -> DescribeChannelAreaDistributionStatDataResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await describeChannelAreaDistributionStatDataWithOptions(request as! DescribeChannelAreaDistributionStatDataRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeChannelDistributionStatDataWithOptions(_ request: DescribeChannelDistributionStatDataRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribeChannelDistributionStatDataResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.appId)) {
            query["AppId"] = request.appId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.channelId)) {
            query["ChannelId"] = request.channelId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.createdTs)) {
            query["CreatedTs"] = request.createdTs!;
        }
        if (!TeaUtils.Client.isUnset(request.destroyedTs)) {
            query["DestroyedTs"] = request.destroyedTs!;
        }
        if (!TeaUtils.Client.isUnset(request.statDim)) {
            query["StatDim"] = request.statDim ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DescribeChannelDistributionStatData",
            "version": "2020-12-14",
            "protocol": "HTTPS",
            "pathname": "/api/channel/describeChannelDistributionStatData",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribeChannelDistributionStatDataResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeChannelDistributionStatData(_ request: DescribeChannelDistributionStatDataRequest) async throws -> DescribeChannelDistributionStatDataResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await describeChannelDistributionStatDataWithOptions(request as! DescribeChannelDistributionStatDataRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeChannelJoinInfoWithOptions(_ request: DescribeChannelJoinInfoRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribeChannelJoinInfoResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.appId)) {
            query["AppId"] = request.appId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.channelId)) {
            query["ChannelId"] = request.channelId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.createdTs)) {
            query["CreatedTs"] = request.createdTs!;
        }
        if (!TeaUtils.Client.isUnset(request.destroyedTs)) {
            query["DestroyedTs"] = request.destroyedTs!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DescribeChannelJoinInfo",
            "version": "2020-12-14",
            "protocol": "HTTPS",
            "pathname": "/api/channel/describeChannelJoinInfo",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribeChannelJoinInfoResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeChannelJoinInfo(_ request: DescribeChannelJoinInfoRequest) async throws -> DescribeChannelJoinInfoResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await describeChannelJoinInfoWithOptions(request as! DescribeChannelJoinInfoRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeChannelOverallDataWithOptions(_ request: DescribeChannelOverallDataRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribeChannelOverallDataResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.appId)) {
            query["AppId"] = request.appId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.channelId)) {
            query["ChannelId"] = request.channelId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.createdTs)) {
            query["CreatedTs"] = request.createdTs!;
        }
        if (!TeaUtils.Client.isUnset(request.destroyedTs)) {
            query["DestroyedTs"] = request.destroyedTs!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DescribeChannelOverallData",
            "version": "2020-12-14",
            "protocol": "HTTPS",
            "pathname": "/api/channel/describeChannelOverallData",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribeChannelOverallDataResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeChannelOverallData(_ request: DescribeChannelOverallDataRequest) async throws -> DescribeChannelOverallDataResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await describeChannelOverallDataWithOptions(request as! DescribeChannelOverallDataRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeChannelTopPubUserListWithOptions(_ request: DescribeChannelTopPubUserListRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribeChannelTopPubUserListResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.appId)) {
            query["AppId"] = request.appId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.channelId)) {
            query["ChannelId"] = request.channelId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.createdTs)) {
            query["CreatedTs"] = request.createdTs!;
        }
        if (!TeaUtils.Client.isUnset(request.destroyedTs)) {
            query["DestroyedTs"] = request.destroyedTs!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DescribeChannelTopPubUserList",
            "version": "2020-12-14",
            "protocol": "HTTPS",
            "pathname": "/api/channel/describeChannelTopPubUserList",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribeChannelTopPubUserListResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeChannelTopPubUserList(_ request: DescribeChannelTopPubUserListRequest) async throws -> DescribeChannelTopPubUserListResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await describeChannelTopPubUserListWithOptions(request as! DescribeChannelTopPubUserListRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeChannelUserMetricsWithOptions(_ request: DescribeChannelUserMetricsRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribeChannelUserMetricsResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.appId)) {
            query["AppId"] = request.appId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.channelId)) {
            query["ChannelId"] = request.channelId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.createdTs)) {
            query["CreatedTs"] = request.createdTs!;
        }
        if (!TeaUtils.Client.isUnset(request.destroyedTs)) {
            query["DestroyedTs"] = request.destroyedTs!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DescribeChannelUserMetrics",
            "version": "2020-12-14",
            "protocol": "HTTPS",
            "pathname": "/api/channel/describeChannelUserMetrics",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribeChannelUserMetricsResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeChannelUserMetrics(_ request: DescribeChannelUserMetricsRequest) async throws -> DescribeChannelUserMetricsResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await describeChannelUserMetricsWithOptions(request as! DescribeChannelUserMetricsRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeEndPointEventListWithOptions(_ request: DescribeEndPointEventListRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribeEndPointEventListResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.appId)) {
            query["AppId"] = request.appId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.channelId)) {
            query["ChannelId"] = request.channelId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.createdTs)) {
            query["CreatedTs"] = request.createdTs!;
        }
        if (!TeaUtils.Client.isUnset(request.destroyedTs)) {
            query["DestroyedTs"] = request.destroyedTs!;
        }
        if (!TeaUtils.Client.isUnset(request.userIdList)) {
            query["UserIdList"] = request.userIdList ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DescribeEndPointEventList",
            "version": "2020-12-14",
            "protocol": "HTTPS",
            "pathname": "/api/call/describeEndPointEventList",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribeEndPointEventListResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeEndPointEventList(_ request: DescribeEndPointEventListRequest) async throws -> DescribeEndPointEventListResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await describeEndPointEventListWithOptions(request as! DescribeEndPointEventListRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeEndPointMetricDataWithOptions(_ request: DescribeEndPointMetricDataRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribeEndPointMetricDataResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.appId)) {
            query["AppId"] = request.appId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.channelId)) {
            query["ChannelId"] = request.channelId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.createdTs)) {
            query["CreatedTs"] = request.createdTs!;
        }
        if (!TeaUtils.Client.isUnset(request.destroyedTs)) {
            query["DestroyedTs"] = request.destroyedTs!;
        }
        if (!TeaUtils.Client.isUnset(request.metrics)) {
            query["Metrics"] = request.metrics ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.pubCallIdList)) {
            query["PubCallIdList"] = request.pubCallIdList ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.pubUserId)) {
            query["PubUserId"] = request.pubUserId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.subUserId)) {
            query["SubUserId"] = request.subUserId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DescribeEndPointMetricData",
            "version": "2020-12-14",
            "protocol": "HTTPS",
            "pathname": "/api/call/describeEndPointMetricData",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribeEndPointMetricDataResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeEndPointMetricData(_ request: DescribeEndPointMetricDataRequest) async throws -> DescribeEndPointMetricDataResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await describeEndPointMetricDataWithOptions(request as! DescribeEndPointMetricDataRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeFaultDiagnosisFactorDistributionStatWithOptions(_ request: DescribeFaultDiagnosisFactorDistributionStatRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribeFaultDiagnosisFactorDistributionStatResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.appId)) {
            query["AppId"] = request.appId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.endTs)) {
            query["EndTs"] = request.endTs!;
        }
        if (!TeaUtils.Client.isUnset(request.startTs)) {
            query["StartTs"] = request.startTs!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DescribeFaultDiagnosisFactorDistributionStat",
            "version": "2020-12-14",
            "protocol": "HTTPS",
            "pathname": "/api/diagnosis/describeFaultDiagnosisFactorDistributionStat",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribeFaultDiagnosisFactorDistributionStatResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeFaultDiagnosisFactorDistributionStat(_ request: DescribeFaultDiagnosisFactorDistributionStatRequest) async throws -> DescribeFaultDiagnosisFactorDistributionStatResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await describeFaultDiagnosisFactorDistributionStatWithOptions(request as! DescribeFaultDiagnosisFactorDistributionStatRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeFaultDiagnosisOverallDataWithOptions(_ request: DescribeFaultDiagnosisOverallDataRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribeFaultDiagnosisOverallDataResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.appId)) {
            query["AppId"] = request.appId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.endTs)) {
            query["EndTs"] = request.endTs!;
        }
        if (!TeaUtils.Client.isUnset(request.startTs)) {
            query["StartTs"] = request.startTs!;
        }
        if (!TeaUtils.Client.isUnset(request.statDim)) {
            query["StatDim"] = request.statDim ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DescribeFaultDiagnosisOverallData",
            "version": "2020-12-14",
            "protocol": "HTTPS",
            "pathname": "/api/diagnosis/describeFaultDiagnosisOverallData",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribeFaultDiagnosisOverallDataResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeFaultDiagnosisOverallData(_ request: DescribeFaultDiagnosisOverallDataRequest) async throws -> DescribeFaultDiagnosisOverallDataResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await describeFaultDiagnosisOverallDataWithOptions(request as! DescribeFaultDiagnosisOverallDataRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeFaultDiagnosisUserDetailWithOptions(_ request: DescribeFaultDiagnosisUserDetailRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribeFaultDiagnosisUserDetailResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.appId)) {
            query["AppId"] = request.appId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.channelId)) {
            query["ChannelId"] = request.channelId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.createdTs)) {
            query["CreatedTs"] = request.createdTs!;
        }
        if (!TeaUtils.Client.isUnset(request.faultType)) {
            query["FaultType"] = request.faultType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.queryCallUserInfo)) {
            query["QueryCallUserInfo"] = request.queryCallUserInfo!;
        }
        if (!TeaUtils.Client.isUnset(request.userId)) {
            query["UserId"] = request.userId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DescribeFaultDiagnosisUserDetail",
            "version": "2020-12-14",
            "protocol": "HTTPS",
            "pathname": "/api/diagnosis/describeFaultDiagnosisUserDetail",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribeFaultDiagnosisUserDetailResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeFaultDiagnosisUserDetail(_ request: DescribeFaultDiagnosisUserDetailRequest) async throws -> DescribeFaultDiagnosisUserDetailResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await describeFaultDiagnosisUserDetailWithOptions(request as! DescribeFaultDiagnosisUserDetailRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeFaultDiagnosisUserListWithOptions(_ request: DescribeFaultDiagnosisUserListRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribeFaultDiagnosisUserListResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.appId)) {
            query["AppId"] = request.appId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.channelId)) {
            query["ChannelId"] = request.channelId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.endTs)) {
            query["EndTs"] = request.endTs!;
        }
        if (!TeaUtils.Client.isUnset(request.faultTypes)) {
            query["FaultTypes"] = request.faultTypes ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.pageNo)) {
            query["PageNo"] = request.pageNo!;
        }
        if (!TeaUtils.Client.isUnset(request.pageSize)) {
            query["PageSize"] = request.pageSize!;
        }
        if (!TeaUtils.Client.isUnset(request.startTs)) {
            query["StartTs"] = request.startTs!;
        }
        if (!TeaUtils.Client.isUnset(request.userId)) {
            query["UserId"] = request.userId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DescribeFaultDiagnosisUserList",
            "version": "2020-12-14",
            "protocol": "HTTPS",
            "pathname": "/api/diagnosis/describeFaultDiagnosisUserList",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribeFaultDiagnosisUserListResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeFaultDiagnosisUserList(_ request: DescribeFaultDiagnosisUserListRequest) async throws -> DescribeFaultDiagnosisUserListResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await describeFaultDiagnosisUserListWithOptions(request as! DescribeFaultDiagnosisUserListRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeIceDurPeriodByDaySubTypeWithOptions(_ request: DescribeIceDurPeriodByDaySubTypeRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribeIceDurPeriodByDaySubTypeResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.endTs)) {
            query["EndTs"] = request.endTs!;
        }
        if (!TeaUtils.Client.isUnset(request.jobType)) {
            query["JobType"] = request.jobType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.startTs)) {
            query["StartTs"] = request.startTs!;
        }
        if (!TeaUtils.Client.isUnset(request.timeZone)) {
            query["TimeZone"] = request.timeZone ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DescribeIceDurPeriodByDaySubType",
            "version": "2020-12-14",
            "protocol": "HTTPS",
            "pathname": "/api/ice/describeIceDurPeriodByDaySubType",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribeIceDurPeriodByDaySubTypeResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeIceDurPeriodByDaySubType(_ request: DescribeIceDurPeriodByDaySubTypeRequest) async throws -> DescribeIceDurPeriodByDaySubTypeResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await describeIceDurPeriodByDaySubTypeWithOptions(request as! DescribeIceDurPeriodByDaySubTypeRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeIceDurSummaryOverviewWithOptions(_ request: DescribeIceDurSummaryOverviewRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribeIceDurSummaryOverviewResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.curTs)) {
            query["CurTs"] = request.curTs!;
        }
        if (!TeaUtils.Client.isUnset(request.timeZone)) {
            query["TimeZone"] = request.timeZone ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DescribeIceDurSummaryOverview",
            "version": "2020-12-14",
            "protocol": "HTTPS",
            "pathname": "/api/ice/describeIceDurSummaryOverview",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribeIceDurSummaryOverviewResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeIceDurSummaryOverview(_ request: DescribeIceDurSummaryOverviewRequest) async throws -> DescribeIceDurSummaryOverviewResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await describeIceDurSummaryOverviewWithOptions(request as! DescribeIceDurSummaryOverviewRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describePubUserListBySubUserWithOptions(_ request: DescribePubUserListBySubUserRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribePubUserListBySubUserResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.appId)) {
            query["AppId"] = request.appId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.channelId)) {
            query["ChannelId"] = request.channelId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.createdTs)) {
            query["CreatedTs"] = request.createdTs!;
        }
        if (!TeaUtils.Client.isUnset(request.destroyedTs)) {
            query["DestroyedTs"] = request.destroyedTs!;
        }
        if (!TeaUtils.Client.isUnset(request.subUserId)) {
            query["SubUserId"] = request.subUserId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DescribePubUserListBySubUser",
            "version": "2020-12-14",
            "protocol": "HTTPS",
            "pathname": "/api/call/describePubUserListBySubUser",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribePubUserListBySubUserResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describePubUserListBySubUser(_ request: DescribePubUserListBySubUserRequest) async throws -> DescribePubUserListBySubUserResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await describePubUserListBySubUserWithOptions(request as! DescribePubUserListBySubUserRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeQoeMetricDataWithOptions(_ request: DescribeQoeMetricDataRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribeQoeMetricDataResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.appId)) {
            query["AppId"] = request.appId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.channelId)) {
            query["ChannelId"] = request.channelId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.createdTs)) {
            query["CreatedTs"] = request.createdTs!;
        }
        if (!TeaUtils.Client.isUnset(request.destroyedTs)) {
            query["DestroyedTs"] = request.destroyedTs!;
        }
        if (!TeaUtils.Client.isUnset(request.userId)) {
            query["UserId"] = request.userId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DescribeQoeMetricData",
            "version": "2020-12-14",
            "protocol": "HTTPS",
            "pathname": "/api/call/describeQoeMetricData",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribeQoeMetricDataResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeQoeMetricData(_ request: DescribeQoeMetricDataRequest) async throws -> DescribeQoeMetricDataResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await describeQoeMetricDataWithOptions(request as! DescribeQoeMetricDataRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeQualityAreaDistributionStatDataWithOptions(_ request: DescribeQualityAreaDistributionStatDataRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribeQualityAreaDistributionStatDataResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.appId)) {
            query["AppId"] = request.appId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.endDate)) {
            query["EndDate"] = request.endDate!;
        }
        if (!TeaUtils.Client.isUnset(request.parentArea)) {
            query["ParentArea"] = request.parentArea ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.startDate)) {
            query["StartDate"] = request.startDate!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DescribeQualityAreaDistributionStatData",
            "version": "2020-12-14",
            "protocol": "HTTPS",
            "pathname": "/api/quality/describeQualityAreaDistributionStatData",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribeQualityAreaDistributionStatDataResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeQualityAreaDistributionStatData(_ request: DescribeQualityAreaDistributionStatDataRequest) async throws -> DescribeQualityAreaDistributionStatDataResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await describeQualityAreaDistributionStatDataWithOptions(request as! DescribeQualityAreaDistributionStatDataRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeQualityDistributionStatDataWithOptions(_ request: DescribeQualityDistributionStatDataRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribeQualityDistributionStatDataResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.appId)) {
            query["AppId"] = request.appId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.endDate)) {
            query["EndDate"] = request.endDate!;
        }
        if (!TeaUtils.Client.isUnset(request.startDate)) {
            query["StartDate"] = request.startDate!;
        }
        if (!TeaUtils.Client.isUnset(request.statDim)) {
            query["StatDim"] = request.statDim ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DescribeQualityDistributionStatData",
            "version": "2020-12-14",
            "protocol": "HTTPS",
            "pathname": "/api/quality/describeQualityDistributionStatData",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribeQualityDistributionStatDataResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeQualityDistributionStatData(_ request: DescribeQualityDistributionStatDataRequest) async throws -> DescribeQualityDistributionStatDataResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await describeQualityDistributionStatDataWithOptions(request as! DescribeQualityDistributionStatDataRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeQualityOsSdkVersionDistributionStatDataWithOptions(_ request: DescribeQualityOsSdkVersionDistributionStatDataRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribeQualityOsSdkVersionDistributionStatDataResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.appId)) {
            query["AppId"] = request.appId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.endDate)) {
            query["EndDate"] = request.endDate!;
        }
        if (!TeaUtils.Client.isUnset(request.startDate)) {
            query["StartDate"] = request.startDate!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DescribeQualityOsSdkVersionDistributionStatData",
            "version": "2020-12-14",
            "protocol": "HTTPS",
            "pathname": "/api/quality/describeQualityOsSdkVersionDistributionStatData",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribeQualityOsSdkVersionDistributionStatDataResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeQualityOsSdkVersionDistributionStatData(_ request: DescribeQualityOsSdkVersionDistributionStatDataRequest) async throws -> DescribeQualityOsSdkVersionDistributionStatDataResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await describeQualityOsSdkVersionDistributionStatDataWithOptions(request as! DescribeQualityOsSdkVersionDistributionStatDataRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeQualityOverallDataWithOptions(_ request: DescribeQualityOverallDataRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribeQualityOverallDataResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.appId)) {
            query["AppId"] = request.appId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.endDate)) {
            query["EndDate"] = request.endDate!;
        }
        if (!TeaUtils.Client.isUnset(request.startDate)) {
            query["StartDate"] = request.startDate!;
        }
        if (!TeaUtils.Client.isUnset(request.types)) {
            query["Types"] = request.types ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DescribeQualityOverallData",
            "version": "2020-12-14",
            "protocol": "HTTPS",
            "pathname": "/api/quality/describeQualityOverallData",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribeQualityOverallDataResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeQualityOverallData(_ request: DescribeQualityOverallDataRequest) async throws -> DescribeQualityOverallDataResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await describeQualityOverallDataWithOptions(request as! DescribeQualityOverallDataRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeUsageAreaDistributionStatDataWithOptions(_ request: DescribeUsageAreaDistributionStatDataRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribeUsageAreaDistributionStatDataResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.appId)) {
            query["AppId"] = request.appId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.endDate)) {
            query["EndDate"] = request.endDate ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.parentArea)) {
            query["ParentArea"] = request.parentArea ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.startDate)) {
            query["StartDate"] = request.startDate ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DescribeUsageAreaDistributionStatData",
            "version": "2020-12-14",
            "protocol": "HTTPS",
            "pathname": "/api/usage/describeUsageAreaDistributionStatData",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribeUsageAreaDistributionStatDataResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeUsageAreaDistributionStatData(_ request: DescribeUsageAreaDistributionStatDataRequest) async throws -> DescribeUsageAreaDistributionStatDataResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await describeUsageAreaDistributionStatDataWithOptions(request as! DescribeUsageAreaDistributionStatDataRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeUsageDistributionStatDataWithOptions(_ request: DescribeUsageDistributionStatDataRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribeUsageDistributionStatDataResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.appId)) {
            query["AppId"] = request.appId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.endDate)) {
            query["EndDate"] = request.endDate!;
        }
        if (!TeaUtils.Client.isUnset(request.startDate)) {
            query["StartDate"] = request.startDate!;
        }
        if (!TeaUtils.Client.isUnset(request.statDim)) {
            query["StatDim"] = request.statDim ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DescribeUsageDistributionStatData",
            "version": "2020-12-14",
            "protocol": "HTTPS",
            "pathname": "/api/usage/describeUsageDistributionStatData",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribeUsageDistributionStatDataResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeUsageDistributionStatData(_ request: DescribeUsageDistributionStatDataRequest) async throws -> DescribeUsageDistributionStatDataResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await describeUsageDistributionStatDataWithOptions(request as! DescribeUsageDistributionStatDataRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeUsageOsSdkVersionDistributionStatDataWithOptions(_ request: DescribeUsageOsSdkVersionDistributionStatDataRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribeUsageOsSdkVersionDistributionStatDataResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.appId)) {
            query["AppId"] = request.appId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.endDate)) {
            query["EndDate"] = request.endDate!;
        }
        if (!TeaUtils.Client.isUnset(request.startDate)) {
            query["StartDate"] = request.startDate!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DescribeUsageOsSdkVersionDistributionStatData",
            "version": "2020-12-14",
            "protocol": "HTTPS",
            "pathname": "/api/usage/describeUsageOsSdkVersionDistributionStatData",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribeUsageOsSdkVersionDistributionStatDataResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeUsageOsSdkVersionDistributionStatData(_ request: DescribeUsageOsSdkVersionDistributionStatDataRequest) async throws -> DescribeUsageOsSdkVersionDistributionStatDataResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await describeUsageOsSdkVersionDistributionStatDataWithOptions(request as! DescribeUsageOsSdkVersionDistributionStatDataRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeUsageOverallDataWithOptions(_ request: DescribeUsageOverallDataRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribeUsageOverallDataResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.appId)) {
            query["AppId"] = request.appId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.endDate)) {
            query["EndDate"] = request.endDate!;
        }
        if (!TeaUtils.Client.isUnset(request.startDate)) {
            query["StartDate"] = request.startDate!;
        }
        if (!TeaUtils.Client.isUnset(request.types)) {
            query["Types"] = request.types ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DescribeUsageOverallData",
            "version": "2020-12-14",
            "protocol": "HTTPS",
            "pathname": "/api/usage/describeUsageOverallData",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribeUsageOverallDataResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeUsageOverallData(_ request: DescribeUsageOverallDataRequest) async throws -> DescribeUsageOverallDataResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await describeUsageOverallDataWithOptions(request as! DescribeUsageOverallDataRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }
}
