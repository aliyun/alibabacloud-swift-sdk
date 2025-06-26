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
        self._endpointMap = [
            "ap-southeast-1": "oms.ap-southeast-1.aliyuncs.com",
            "cn-hangzhou": "pre-oms.cn-hangzhou.aliyuncs.com"
        ]
        try checkConfig(config as! AlibabacloudOpenApi.Config)
        self._endpoint = try getEndpoint("oms", self._regionId ?? "", self._endpointRule ?? "", self._network ?? "", self._suffix ?? "", self._endpointMap ?? [:], self._endpoint ?? "")
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
    public func deleteDomainPartWithOptions(_ request: DeleteDomainPartRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DeleteDomainPartResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.dataType)) {
            query["DataType"] = request.dataType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.domainCode)) {
            query["DomainCode"] = request.domainCode ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.part)) {
            query["Part"] = request.part ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DeleteDomainPart",
            "version": "2016-06-15",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DeleteDomainPartResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteDomainPart(_ request: DeleteDomainPartRequest) async throws -> DeleteDomainPartResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await deleteDomainPartWithOptions(request as! DeleteDomainPartRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteDomainPartByProxyWithOptions(_ request: DeleteDomainPartByProxyRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DeleteDomainPartByProxyResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.dataType)) {
            query["DataType"] = request.dataType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.domainCode)) {
            query["DomainCode"] = request.domainCode ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.part)) {
            query["Part"] = request.part ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DeleteDomainPartByProxy",
            "version": "2016-06-15",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DeleteDomainPartByProxyResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteDomainPartByProxy(_ request: DeleteDomainPartByProxyRequest) async throws -> DeleteDomainPartByProxyResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await deleteDomainPartByProxyWithOptions(request as! DeleteDomainPartByProxyRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteMeasureDataWithOptions(_ request: DeleteMeasureDataRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DeleteMeasureDataResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.apiType)) {
            query["ApiType"] = request.apiType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.compressed)) {
            query["Compressed"] = request.compressed!;
        }
        if (!TeaUtils.Client.isUnset(request.data)) {
            query["Data"] = request.data ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.dataType)) {
            query["DataType"] = request.dataType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.domainCode)) {
            query["DomainCode"] = request.domainCode ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.filter)) {
            query["Filter"] = request.filter ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DeleteMeasureData",
            "version": "2016-06-15",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DeleteMeasureDataResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteMeasureData(_ request: DeleteMeasureDataRequest) async throws -> DeleteMeasureDataResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await deleteMeasureDataWithOptions(request as! DeleteMeasureDataRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getDomainPartWithOptions(_ request: GetDomainPartRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> GetDomainPartResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: String] = AlibabaCloudOpenApiUtil.Client.query(TeaUtils.Client.toMap(request))
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetDomainPart",
            "version": "2016-06-15",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "GET",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetDomainPartResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getDomainPart(_ request: GetDomainPartRequest) async throws -> GetDomainPartResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await getDomainPartWithOptions(request as! GetDomainPartRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getDomainPartByProxyWithOptions(_ request: GetDomainPartByProxyRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> GetDomainPartByProxyResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.compressEnable)) {
            query["CompressEnable"] = request.compressEnable!;
        }
        if (!TeaUtils.Client.isUnset(request.dataType)) {
            query["DataType"] = request.dataType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.domainCode)) {
            query["DomainCode"] = request.domainCode ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.part)) {
            query["Part"] = request.part ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetDomainPartByProxy",
            "version": "2016-06-15",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetDomainPartByProxyResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getDomainPartByProxy(_ request: GetDomainPartByProxyRequest) async throws -> GetDomainPartByProxyResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await getDomainPartByProxyWithOptions(request as! GetDomainPartByProxyRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getIncrementMeasureDataByProxyWithOptions(_ request: GetIncrementMeasureDataByProxyRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> GetIncrementMeasureDataByProxyResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: String] = AlibabaCloudOpenApiUtil.Client.query(TeaUtils.Client.toMap(request))
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetIncrementMeasureDataByProxy",
            "version": "2016-06-15",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "GET",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetIncrementMeasureDataByProxyResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getIncrementMeasureDataByProxy(_ request: GetIncrementMeasureDataByProxyRequest) async throws -> GetIncrementMeasureDataByProxyResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await getIncrementMeasureDataByProxyWithOptions(request as! GetIncrementMeasureDataByProxyRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getMeasureDataWithOptions(_ request: GetMeasureDataRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> GetMeasureDataResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.apiType)) {
            query["ApiType"] = request.apiType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.compressEnable)) {
            query["CompressEnable"] = request.compressEnable!;
        }
        if (!TeaUtils.Client.isUnset(request.dataType)) {
            query["DataType"] = request.dataType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.domainCode)) {
            query["DomainCode"] = request.domainCode ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.filter)) {
            query["Filter"] = request.filter ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.maxResult)) {
            query["MaxResult"] = request.maxResult!;
        }
        if (!TeaUtils.Client.isUnset(request.nextToken)) {
            query["NextToken"] = request.nextToken ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.queryField)) {
            query["QueryField"] = request.queryField ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetMeasureData",
            "version": "2016-06-15",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetMeasureDataResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getMeasureData(_ request: GetMeasureDataRequest) async throws -> GetMeasureDataResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await getMeasureDataWithOptions(request as! GetMeasureDataRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getReadyFlagWithOptions(_ request: GetReadyFlagRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> GetReadyFlagResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: String] = AlibabaCloudOpenApiUtil.Client.query(TeaUtils.Client.toMap(request))
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetReadyFlag",
            "version": "2016-06-15",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "GET",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetReadyFlagResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getReadyFlag(_ request: GetReadyFlagRequest) async throws -> GetReadyFlagResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await getReadyFlagWithOptions(request as! GetReadyFlagRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getReadyFlagByProxyWithOptions(_ request: GetReadyFlagByProxyRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> GetReadyFlagByProxyResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.apiType)) {
            query["ApiType"] = request.apiType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.compressEnable)) {
            query["CompressEnable"] = request.compressEnable!;
        }
        if (!TeaUtils.Client.isUnset(request.dataType)) {
            query["DataType"] = request.dataType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.domainCode)) {
            query["DomainCode"] = request.domainCode ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.filter)) {
            query["Filter"] = request.filter ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.maxResult)) {
            query["MaxResult"] = request.maxResult!;
        }
        if (!TeaUtils.Client.isUnset(request.nextToken)) {
            query["NextToken"] = request.nextToken ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetReadyFlagByProxy",
            "version": "2016-06-15",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetReadyFlagByProxyResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getReadyFlagByProxy(_ request: GetReadyFlagByProxyRequest) async throws -> GetReadyFlagByProxyResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await getReadyFlagByProxyWithOptions(request as! GetReadyFlagByProxyRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func putDomainPartWithOptions(_ request: PutDomainPartRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> PutDomainPartResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.compressed)) {
            query["Compressed"] = request.compressed!;
        }
        if (!TeaUtils.Client.isUnset(request.data)) {
            query["Data"] = request.data ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.dataType)) {
            query["DataType"] = request.dataType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.domainCode)) {
            query["DomainCode"] = request.domainCode ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "PutDomainPart",
            "version": "2016-06-15",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(PutDomainPartResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func putDomainPart(_ request: PutDomainPartRequest) async throws -> PutDomainPartResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await putDomainPartWithOptions(request as! PutDomainPartRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func putDomainPartByProxyWithOptions(_ request: PutDomainPartByProxyRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> PutDomainPartByProxyResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.compressed)) {
            query["Compressed"] = request.compressed!;
        }
        if (!TeaUtils.Client.isUnset(request.data)) {
            query["Data"] = request.data ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.dataType)) {
            query["DataType"] = request.dataType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.domainCode)) {
            query["DomainCode"] = request.domainCode ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "PutDomainPartByProxy",
            "version": "2016-06-15",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(PutDomainPartByProxyResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func putDomainPartByProxy(_ request: PutDomainPartByProxyRequest) async throws -> PutDomainPartByProxyResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await putDomainPartByProxyWithOptions(request as! PutDomainPartByProxyRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func putMeasureDataWithOptions(_ request: PutMeasureDataRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> PutMeasureDataResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.apiType)) {
            query["ApiType"] = request.apiType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.compressed)) {
            query["Compressed"] = request.compressed!;
        }
        if (!TeaUtils.Client.isUnset(request.data)) {
            query["Data"] = request.data ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.dataType)) {
            query["DataType"] = request.dataType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.domainCode)) {
            query["DomainCode"] = request.domainCode ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.filter)) {
            query["Filter"] = request.filter ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.sourceRequestId)) {
            query["SourceRequestId"] = request.sourceRequestId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "PutMeasureData",
            "version": "2016-06-15",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(PutMeasureDataResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func putMeasureData(_ request: PutMeasureDataRequest) async throws -> PutMeasureDataResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await putMeasureDataWithOptions(request as! PutMeasureDataRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func putMeasureDataByProxyWithOptions(_ request: PutMeasureDataByProxyRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> PutMeasureDataByProxyResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.apiType)) {
            query["ApiType"] = request.apiType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.compressed)) {
            query["Compressed"] = request.compressed!;
        }
        if (!TeaUtils.Client.isUnset(request.data)) {
            query["Data"] = request.data ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.dataType)) {
            query["DataType"] = request.dataType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.domainCode)) {
            query["DomainCode"] = request.domainCode ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.filter)) {
            query["Filter"] = request.filter ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "PutMeasureDataByProxy",
            "version": "2016-06-15",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(PutMeasureDataByProxyResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func putMeasureDataByProxy(_ request: PutMeasureDataByProxyRequest) async throws -> PutMeasureDataByProxyResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await putMeasureDataByProxyWithOptions(request as! PutMeasureDataByProxyRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func putReadyFlagWithOptions(_ request: PutReadyFlagRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> PutReadyFlagResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.apiType)) {
            query["ApiType"] = request.apiType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.compressed)) {
            query["Compressed"] = request.compressed!;
        }
        if (!TeaUtils.Client.isUnset(request.data)) {
            query["Data"] = request.data ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.dataType)) {
            query["DataType"] = request.dataType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.domainCode)) {
            query["DomainCode"] = request.domainCode ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.sourceRequestId)) {
            query["SourceRequestId"] = request.sourceRequestId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "PutReadyFlag",
            "version": "2016-06-15",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(PutReadyFlagResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func putReadyFlag(_ request: PutReadyFlagRequest) async throws -> PutReadyFlagResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await putReadyFlagWithOptions(request as! PutReadyFlagRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func putReadyFlagByProxyWithOptions(_ request: PutReadyFlagByProxyRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> PutReadyFlagByProxyResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.apiType)) {
            query["ApiType"] = request.apiType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.compressed)) {
            query["Compressed"] = request.compressed!;
        }
        if (!TeaUtils.Client.isUnset(request.data)) {
            query["Data"] = request.data ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.dataType)) {
            query["DataType"] = request.dataType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.domainCode)) {
            query["DomainCode"] = request.domainCode ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "PutReadyFlagByProxy",
            "version": "2016-06-15",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(PutReadyFlagByProxyResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func putReadyFlagByProxy(_ request: PutReadyFlagByProxyRequest) async throws -> PutReadyFlagByProxyResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await putReadyFlagByProxyWithOptions(request as! PutReadyFlagByProxyRequest, runtime as! TeaUtils.RuntimeOptions)
    }
}
