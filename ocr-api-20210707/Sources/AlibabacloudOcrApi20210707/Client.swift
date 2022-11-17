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
        self._endpoint = try getEndpoint("ocr-api", self._regionId ?? "", self._endpointRule ?? "", self._network ?? "", self._suffix ?? "", self._endpointMap ?? [:], self._endpoint ?? "")
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
    public func recognizeAdvancedWithOptions(_ request: RecognizeAdvancedRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> RecognizeAdvancedResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.needRotate)) {
            query["NeedRotate"] = request.needRotate!;
        }
        if (!TeaUtils.Client.isUnset(request.needSortPage)) {
            query["NeedSortPage"] = request.needSortPage!;
        }
        if (!TeaUtils.Client.isUnset(request.noStamp)) {
            query["NoStamp"] = request.noStamp!;
        }
        if (!TeaUtils.Client.isUnset(request.outputCharInfo)) {
            query["OutputCharInfo"] = request.outputCharInfo!;
        }
        if (!TeaUtils.Client.isUnset(request.outputFigure)) {
            query["OutputFigure"] = request.outputFigure!;
        }
        if (!TeaUtils.Client.isUnset(request.outputTable)) {
            query["OutputTable"] = request.outputTable!;
        }
        if (!TeaUtils.Client.isUnset(request.paragraph)) {
            query["Paragraph"] = request.paragraph!;
        }
        if (!TeaUtils.Client.isUnset(request.row)) {
            query["Row"] = request.row!;
        }
        if (!TeaUtils.Client.isUnset(request.url)) {
            query["Url"] = request.url ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query),
            "body": request.body!,
            "stream": request.body!
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "RecognizeAdvanced",
            "version": "2021-07-07",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(RecognizeAdvancedResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func recognizeAdvanced(_ request: RecognizeAdvancedRequest) async throws -> RecognizeAdvancedResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await recognizeAdvancedWithOptions(request as! RecognizeAdvancedRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func recognizeAirItineraryWithOptions(_ request: RecognizeAirItineraryRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> RecognizeAirItineraryResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.url)) {
            query["Url"] = request.url ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query),
            "body": request.body!,
            "stream": request.body!
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "RecognizeAirItinerary",
            "version": "2021-07-07",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(RecognizeAirItineraryResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func recognizeAirItinerary(_ request: RecognizeAirItineraryRequest) async throws -> RecognizeAirItineraryResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await recognizeAirItineraryWithOptions(request as! RecognizeAirItineraryRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func recognizeBankAcceptanceWithOptions(_ request: RecognizeBankAcceptanceRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> RecognizeBankAcceptanceResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.url)) {
            query["Url"] = request.url ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query),
            "body": request.body!,
            "stream": request.body!
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "RecognizeBankAcceptance",
            "version": "2021-07-07",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(RecognizeBankAcceptanceResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func recognizeBankAcceptance(_ request: RecognizeBankAcceptanceRequest) async throws -> RecognizeBankAcceptanceResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await recognizeBankAcceptanceWithOptions(request as! RecognizeBankAcceptanceRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func recognizeBankAccountLicenseWithOptions(_ request: RecognizeBankAccountLicenseRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> RecognizeBankAccountLicenseResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.url)) {
            query["Url"] = request.url ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query),
            "body": request.body!,
            "stream": request.body!
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "RecognizeBankAccountLicense",
            "version": "2021-07-07",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(RecognizeBankAccountLicenseResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func recognizeBankAccountLicense(_ request: RecognizeBankAccountLicenseRequest) async throws -> RecognizeBankAccountLicenseResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await recognizeBankAccountLicenseWithOptions(request as! RecognizeBankAccountLicenseRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func recognizeBankCardWithOptions(_ request: RecognizeBankCardRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> RecognizeBankCardResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.url)) {
            query["Url"] = request.url ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query),
            "body": request.body!,
            "stream": request.body!
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "RecognizeBankCard",
            "version": "2021-07-07",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(RecognizeBankCardResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func recognizeBankCard(_ request: RecognizeBankCardRequest) async throws -> RecognizeBankCardResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await recognizeBankCardWithOptions(request as! RecognizeBankCardRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func recognizeBasicWithOptions(_ request: RecognizeBasicRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> RecognizeBasicResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.url)) {
            query["Url"] = request.url ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query),
            "body": request.body!,
            "stream": request.body!
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "RecognizeBasic",
            "version": "2021-07-07",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(RecognizeBasicResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func recognizeBasic(_ request: RecognizeBasicRequest) async throws -> RecognizeBasicResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await recognizeBasicWithOptions(request as! RecognizeBasicRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func recognizeBirthCertificationWithOptions(_ request: RecognizeBirthCertificationRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> RecognizeBirthCertificationResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.url)) {
            query["Url"] = request.url ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query),
            "body": request.body!,
            "stream": request.body!
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "RecognizeBirthCertification",
            "version": "2021-07-07",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(RecognizeBirthCertificationResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func recognizeBirthCertification(_ request: RecognizeBirthCertificationRequest) async throws -> RecognizeBirthCertificationResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await recognizeBirthCertificationWithOptions(request as! RecognizeBirthCertificationRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func recognizeBusShipTicketWithOptions(_ request: RecognizeBusShipTicketRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> RecognizeBusShipTicketResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.url)) {
            query["Url"] = request.url ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query),
            "body": request.body!,
            "stream": request.body!
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "RecognizeBusShipTicket",
            "version": "2021-07-07",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(RecognizeBusShipTicketResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func recognizeBusShipTicket(_ request: RecognizeBusShipTicketRequest) async throws -> RecognizeBusShipTicketResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await recognizeBusShipTicketWithOptions(request as! RecognizeBusShipTicketRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func recognizeBusinessLicenseWithOptions(_ request: RecognizeBusinessLicenseRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> RecognizeBusinessLicenseResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.url)) {
            query["Url"] = request.url ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query),
            "body": request.body!,
            "stream": request.body!
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "RecognizeBusinessLicense",
            "version": "2021-07-07",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(RecognizeBusinessLicenseResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func recognizeBusinessLicense(_ request: RecognizeBusinessLicenseRequest) async throws -> RecognizeBusinessLicenseResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await recognizeBusinessLicenseWithOptions(request as! RecognizeBusinessLicenseRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func recognizeCarInvoiceWithOptions(_ request: RecognizeCarInvoiceRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> RecognizeCarInvoiceResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.url)) {
            query["Url"] = request.url ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query),
            "body": request.body!,
            "stream": request.body!
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "RecognizeCarInvoice",
            "version": "2021-07-07",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(RecognizeCarInvoiceResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func recognizeCarInvoice(_ request: RecognizeCarInvoiceRequest) async throws -> RecognizeCarInvoiceResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await recognizeCarInvoiceWithOptions(request as! RecognizeCarInvoiceRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func recognizeCarNumberWithOptions(_ request: RecognizeCarNumberRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> RecognizeCarNumberResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.url)) {
            query["Url"] = request.url ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query),
            "body": request.body!,
            "stream": request.body!
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "RecognizeCarNumber",
            "version": "2021-07-07",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(RecognizeCarNumberResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func recognizeCarNumber(_ request: RecognizeCarNumberRequest) async throws -> RecognizeCarNumberResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await recognizeCarNumberWithOptions(request as! RecognizeCarNumberRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func recognizeCarVinCodeWithOptions(_ request: RecognizeCarVinCodeRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> RecognizeCarVinCodeResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.url)) {
            query["Url"] = request.url ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query),
            "body": request.body!,
            "stream": request.body!
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "RecognizeCarVinCode",
            "version": "2021-07-07",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(RecognizeCarVinCodeResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func recognizeCarVinCode(_ request: RecognizeCarVinCodeRequest) async throws -> RecognizeCarVinCodeResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await recognizeCarVinCodeWithOptions(request as! RecognizeCarVinCodeRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func recognizeChinesePassportWithOptions(_ request: RecognizeChinesePassportRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> RecognizeChinesePassportResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.outputFigure)) {
            query["OutputFigure"] = request.outputFigure!;
        }
        if (!TeaUtils.Client.isUnset(request.url)) {
            query["Url"] = request.url ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query),
            "body": request.body!,
            "stream": request.body!
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "RecognizeChinesePassport",
            "version": "2021-07-07",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(RecognizeChinesePassportResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func recognizeChinesePassport(_ request: RecognizeChinesePassportRequest) async throws -> RecognizeChinesePassportResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await recognizeChinesePassportWithOptions(request as! RecognizeChinesePassportRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func recognizeCommonPrintedInvoiceWithOptions(_ request: RecognizeCommonPrintedInvoiceRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> RecognizeCommonPrintedInvoiceResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.url)) {
            query["Url"] = request.url ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query),
            "body": request.body!,
            "stream": request.body!
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "RecognizeCommonPrintedInvoice",
            "version": "2021-07-07",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(RecognizeCommonPrintedInvoiceResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func recognizeCommonPrintedInvoice(_ request: RecognizeCommonPrintedInvoiceRequest) async throws -> RecognizeCommonPrintedInvoiceResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await recognizeCommonPrintedInvoiceWithOptions(request as! RecognizeCommonPrintedInvoiceRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func recognizeCosmeticProduceLicenseWithOptions(_ request: RecognizeCosmeticProduceLicenseRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> RecognizeCosmeticProduceLicenseResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.url)) {
            query["Url"] = request.url ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query),
            "body": request.body!,
            "stream": request.body!
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "RecognizeCosmeticProduceLicense",
            "version": "2021-07-07",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(RecognizeCosmeticProduceLicenseResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func recognizeCosmeticProduceLicense(_ request: RecognizeCosmeticProduceLicenseRequest) async throws -> RecognizeCosmeticProduceLicenseResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await recognizeCosmeticProduceLicenseWithOptions(request as! RecognizeCosmeticProduceLicenseRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func recognizeCovidTestReportWithOptions(_ request: RecognizeCovidTestReportRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> RecognizeCovidTestReportResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.multipleResult)) {
            query["MultipleResult"] = request.multipleResult!;
        }
        if (!TeaUtils.Client.isUnset(request.url)) {
            query["Url"] = request.url ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query),
            "body": request.body!,
            "stream": request.body!
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "RecognizeCovidTestReport",
            "version": "2021-07-07",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(RecognizeCovidTestReportResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func recognizeCovidTestReport(_ request: RecognizeCovidTestReportRequest) async throws -> RecognizeCovidTestReportResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await recognizeCovidTestReportWithOptions(request as! RecognizeCovidTestReportRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func recognizeCtwoMedicalDeviceManageLicenseWithOptions(_ request: RecognizeCtwoMedicalDeviceManageLicenseRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> RecognizeCtwoMedicalDeviceManageLicenseResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.url)) {
            query["Url"] = request.url ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query),
            "body": request.body!,
            "stream": request.body!
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "RecognizeCtwoMedicalDeviceManageLicense",
            "version": "2021-07-07",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(RecognizeCtwoMedicalDeviceManageLicenseResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func recognizeCtwoMedicalDeviceManageLicense(_ request: RecognizeCtwoMedicalDeviceManageLicenseRequest) async throws -> RecognizeCtwoMedicalDeviceManageLicenseResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await recognizeCtwoMedicalDeviceManageLicenseWithOptions(request as! RecognizeCtwoMedicalDeviceManageLicenseRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func recognizeDocumentStructureWithOptions(_ request: RecognizeDocumentStructureRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> RecognizeDocumentStructureResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.needRotate)) {
            query["NeedRotate"] = request.needRotate!;
        }
        if (!TeaUtils.Client.isUnset(request.needSortPage)) {
            query["NeedSortPage"] = request.needSortPage!;
        }
        if (!TeaUtils.Client.isUnset(request.noStamp)) {
            query["NoStamp"] = request.noStamp!;
        }
        if (!TeaUtils.Client.isUnset(request.outputCharInfo)) {
            query["OutputCharInfo"] = request.outputCharInfo!;
        }
        if (!TeaUtils.Client.isUnset(request.outputTable)) {
            query["OutputTable"] = request.outputTable!;
        }
        if (!TeaUtils.Client.isUnset(request.page)) {
            query["Page"] = request.page!;
        }
        if (!TeaUtils.Client.isUnset(request.paragraph)) {
            query["Paragraph"] = request.paragraph!;
        }
        if (!TeaUtils.Client.isUnset(request.row)) {
            query["Row"] = request.row!;
        }
        if (!TeaUtils.Client.isUnset(request.url)) {
            query["Url"] = request.url ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.useNewStyleOutput)) {
            query["UseNewStyleOutput"] = request.useNewStyleOutput!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query),
            "body": request.body!,
            "stream": request.body!
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "RecognizeDocumentStructure",
            "version": "2021-07-07",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(RecognizeDocumentStructureResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func recognizeDocumentStructure(_ request: RecognizeDocumentStructureRequest) async throws -> RecognizeDocumentStructureResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await recognizeDocumentStructureWithOptions(request as! RecognizeDocumentStructureRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func recognizeDrivingLicenseWithOptions(_ request: RecognizeDrivingLicenseRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> RecognizeDrivingLicenseResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.url)) {
            query["Url"] = request.url ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query),
            "body": request.body!,
            "stream": request.body!
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "RecognizeDrivingLicense",
            "version": "2021-07-07",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(RecognizeDrivingLicenseResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func recognizeDrivingLicense(_ request: RecognizeDrivingLicenseRequest) async throws -> RecognizeDrivingLicenseResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await recognizeDrivingLicenseWithOptions(request as! RecognizeDrivingLicenseRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func recognizeEduFormulaWithOptions(_ request: RecognizeEduFormulaRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> RecognizeEduFormulaResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.url)) {
            query["Url"] = request.url ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query),
            "body": request.body!,
            "stream": request.body!
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "RecognizeEduFormula",
            "version": "2021-07-07",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(RecognizeEduFormulaResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func recognizeEduFormula(_ request: RecognizeEduFormulaRequest) async throws -> RecognizeEduFormulaResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await recognizeEduFormulaWithOptions(request as! RecognizeEduFormulaRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func recognizeEduOralCalculationWithOptions(_ request: RecognizeEduOralCalculationRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> RecognizeEduOralCalculationResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.url)) {
            query["Url"] = request.url ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query),
            "body": request.body!,
            "stream": request.body!
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "RecognizeEduOralCalculation",
            "version": "2021-07-07",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(RecognizeEduOralCalculationResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func recognizeEduOralCalculation(_ request: RecognizeEduOralCalculationRequest) async throws -> RecognizeEduOralCalculationResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await recognizeEduOralCalculationWithOptions(request as! RecognizeEduOralCalculationRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func recognizeEduPaperCutWithOptions(_ request: RecognizeEduPaperCutRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> RecognizeEduPaperCutResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.cutType)) {
            query["CutType"] = request.cutType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.imageType)) {
            query["ImageType"] = request.imageType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.subject)) {
            query["Subject"] = request.subject ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.url)) {
            query["Url"] = request.url ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query),
            "body": request.body!,
            "stream": request.body!
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "RecognizeEduPaperCut",
            "version": "2021-07-07",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(RecognizeEduPaperCutResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func recognizeEduPaperCut(_ request: RecognizeEduPaperCutRequest) async throws -> RecognizeEduPaperCutResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await recognizeEduPaperCutWithOptions(request as! RecognizeEduPaperCutRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func recognizeEduPaperOcrWithOptions(_ request: RecognizeEduPaperOcrRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> RecognizeEduPaperOcrResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.imageType)) {
            query["ImageType"] = request.imageType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.outputOricoord)) {
            query["OutputOricoord"] = request.outputOricoord!;
        }
        if (!TeaUtils.Client.isUnset(request.subject)) {
            query["Subject"] = request.subject ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.url)) {
            query["Url"] = request.url ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query),
            "body": request.body!,
            "stream": request.body!
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "RecognizeEduPaperOcr",
            "version": "2021-07-07",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(RecognizeEduPaperOcrResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func recognizeEduPaperOcr(_ request: RecognizeEduPaperOcrRequest) async throws -> RecognizeEduPaperOcrResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await recognizeEduPaperOcrWithOptions(request as! RecognizeEduPaperOcrRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func recognizeEduPaperStructedWithOptions(_ request: RecognizeEduPaperStructedRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> RecognizeEduPaperStructedResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.needRotate)) {
            query["NeedRotate"] = request.needRotate!;
        }
        if (!TeaUtils.Client.isUnset(request.subject)) {
            query["Subject"] = request.subject ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.url)) {
            query["Url"] = request.url ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query),
            "body": request.body!,
            "stream": request.body!
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "RecognizeEduPaperStructed",
            "version": "2021-07-07",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(RecognizeEduPaperStructedResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func recognizeEduPaperStructed(_ request: RecognizeEduPaperStructedRequest) async throws -> RecognizeEduPaperStructedResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await recognizeEduPaperStructedWithOptions(request as! RecognizeEduPaperStructedRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func recognizeEduQuestionOcrWithOptions(_ request: RecognizeEduQuestionOcrRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> RecognizeEduQuestionOcrResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.needRotate)) {
            query["NeedRotate"] = request.needRotate!;
        }
        if (!TeaUtils.Client.isUnset(request.url)) {
            query["Url"] = request.url ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query),
            "body": request.body!,
            "stream": request.body!
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "RecognizeEduQuestionOcr",
            "version": "2021-07-07",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(RecognizeEduQuestionOcrResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func recognizeEduQuestionOcr(_ request: RecognizeEduQuestionOcrRequest) async throws -> RecognizeEduQuestionOcrResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await recognizeEduQuestionOcrWithOptions(request as! RecognizeEduQuestionOcrRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func recognizeEnglishWithOptions(_ request: RecognizeEnglishRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> RecognizeEnglishResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.needRotate)) {
            query["NeedRotate"] = request.needRotate!;
        }
        if (!TeaUtils.Client.isUnset(request.outputTable)) {
            query["OutputTable"] = request.outputTable!;
        }
        if (!TeaUtils.Client.isUnset(request.url)) {
            query["Url"] = request.url ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query),
            "body": request.body!,
            "stream": request.body!
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "RecognizeEnglish",
            "version": "2021-07-07",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(RecognizeEnglishResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func recognizeEnglish(_ request: RecognizeEnglishRequest) async throws -> RecognizeEnglishResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await recognizeEnglishWithOptions(request as! RecognizeEnglishRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func recognizeEstateCertificationWithOptions(_ request: RecognizeEstateCertificationRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> RecognizeEstateCertificationResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.url)) {
            query["Url"] = request.url ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query),
            "body": request.body!,
            "stream": request.body!
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "RecognizeEstateCertification",
            "version": "2021-07-07",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(RecognizeEstateCertificationResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func recognizeEstateCertification(_ request: RecognizeEstateCertificationRequest) async throws -> RecognizeEstateCertificationResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await recognizeEstateCertificationWithOptions(request as! RecognizeEstateCertificationRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func recognizeExitEntryPermitToHKWithOptions(_ request: RecognizeExitEntryPermitToHKRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> RecognizeExitEntryPermitToHKResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.outputFigure)) {
            query["OutputFigure"] = request.outputFigure!;
        }
        if (!TeaUtils.Client.isUnset(request.url)) {
            query["Url"] = request.url ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query),
            "body": request.body!,
            "stream": request.body!
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "RecognizeExitEntryPermitToHK",
            "version": "2021-07-07",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(RecognizeExitEntryPermitToHKResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func recognizeExitEntryPermitToHK(_ request: RecognizeExitEntryPermitToHKRequest) async throws -> RecognizeExitEntryPermitToHKResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await recognizeExitEntryPermitToHKWithOptions(request as! RecognizeExitEntryPermitToHKRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func recognizeExitEntryPermitToMainlandWithOptions(_ request: RecognizeExitEntryPermitToMainlandRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> RecognizeExitEntryPermitToMainlandResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.outputFigure)) {
            query["OutputFigure"] = request.outputFigure!;
        }
        if (!TeaUtils.Client.isUnset(request.url)) {
            query["Url"] = request.url ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query),
            "body": request.body!,
            "stream": request.body!
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "RecognizeExitEntryPermitToMainland",
            "version": "2021-07-07",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(RecognizeExitEntryPermitToMainlandResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func recognizeExitEntryPermitToMainland(_ request: RecognizeExitEntryPermitToMainlandRequest) async throws -> RecognizeExitEntryPermitToMainlandResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await recognizeExitEntryPermitToMainlandWithOptions(request as! RecognizeExitEntryPermitToMainlandRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func recognizeFoodManageLicenseWithOptions(_ request: RecognizeFoodManageLicenseRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> RecognizeFoodManageLicenseResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.url)) {
            query["Url"] = request.url ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query),
            "body": request.body!,
            "stream": request.body!
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "RecognizeFoodManageLicense",
            "version": "2021-07-07",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(RecognizeFoodManageLicenseResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func recognizeFoodManageLicense(_ request: RecognizeFoodManageLicenseRequest) async throws -> RecognizeFoodManageLicenseResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await recognizeFoodManageLicenseWithOptions(request as! RecognizeFoodManageLicenseRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func recognizeFoodProduceLicenseWithOptions(_ request: RecognizeFoodProduceLicenseRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> RecognizeFoodProduceLicenseResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.url)) {
            query["Url"] = request.url ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query),
            "body": request.body!,
            "stream": request.body!
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "RecognizeFoodProduceLicense",
            "version": "2021-07-07",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(RecognizeFoodProduceLicenseResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func recognizeFoodProduceLicense(_ request: RecognizeFoodProduceLicenseRequest) async throws -> RecognizeFoodProduceLicenseResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await recognizeFoodProduceLicenseWithOptions(request as! RecognizeFoodProduceLicenseRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func recognizeGeneralWithOptions(_ request: RecognizeGeneralRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> RecognizeGeneralResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.url)) {
            query["Url"] = request.url ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query),
            "body": request.body!,
            "stream": request.body!
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "RecognizeGeneral",
            "version": "2021-07-07",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(RecognizeGeneralResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func recognizeGeneral(_ request: RecognizeGeneralRequest) async throws -> RecognizeGeneralResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await recognizeGeneralWithOptions(request as! RecognizeGeneralRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func recognizeHandwritingWithOptions(_ request: RecognizeHandwritingRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> RecognizeHandwritingResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.needRotate)) {
            query["NeedRotate"] = request.needRotate!;
        }
        if (!TeaUtils.Client.isUnset(request.needSortPage)) {
            query["NeedSortPage"] = request.needSortPage!;
        }
        if (!TeaUtils.Client.isUnset(request.outputCharInfo)) {
            query["OutputCharInfo"] = request.outputCharInfo!;
        }
        if (!TeaUtils.Client.isUnset(request.outputTable)) {
            query["OutputTable"] = request.outputTable!;
        }
        if (!TeaUtils.Client.isUnset(request.url)) {
            query["Url"] = request.url ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query),
            "body": request.body!,
            "stream": request.body!
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "RecognizeHandwriting",
            "version": "2021-07-07",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(RecognizeHandwritingResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func recognizeHandwriting(_ request: RecognizeHandwritingRequest) async throws -> RecognizeHandwritingResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await recognizeHandwritingWithOptions(request as! RecognizeHandwritingRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func recognizeHealthCodeWithOptions(_ request: RecognizeHealthCodeRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> RecognizeHealthCodeResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.url)) {
            query["Url"] = request.url ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query),
            "body": request.body!,
            "stream": request.body!
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "RecognizeHealthCode",
            "version": "2021-07-07",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(RecognizeHealthCodeResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func recognizeHealthCode(_ request: RecognizeHealthCodeRequest) async throws -> RecognizeHealthCodeResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await recognizeHealthCodeWithOptions(request as! RecognizeHealthCodeRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func recognizeHotelConsumeWithOptions(_ request: RecognizeHotelConsumeRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> RecognizeHotelConsumeResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.url)) {
            query["Url"] = request.url ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query),
            "body": request.body!,
            "stream": request.body!
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "RecognizeHotelConsume",
            "version": "2021-07-07",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(RecognizeHotelConsumeResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func recognizeHotelConsume(_ request: RecognizeHotelConsumeRequest) async throws -> RecognizeHotelConsumeResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await recognizeHotelConsumeWithOptions(request as! RecognizeHotelConsumeRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func recognizeHouseholdWithOptions(_ request: RecognizeHouseholdRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> RecognizeHouseholdResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.isResidentPage)) {
            query["IsResidentPage"] = request.isResidentPage!;
        }
        if (!TeaUtils.Client.isUnset(request.url)) {
            query["Url"] = request.url ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query),
            "body": request.body!,
            "stream": request.body!
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "RecognizeHousehold",
            "version": "2021-07-07",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(RecognizeHouseholdResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func recognizeHousehold(_ request: RecognizeHouseholdRequest) async throws -> RecognizeHouseholdResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await recognizeHouseholdWithOptions(request as! RecognizeHouseholdRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func recognizeIdcardWithOptions(_ request: RecognizeIdcardRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> RecognizeIdcardResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.outputFigure)) {
            query["OutputFigure"] = request.outputFigure!;
        }
        if (!TeaUtils.Client.isUnset(request.url)) {
            query["Url"] = request.url ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query),
            "body": request.body!,
            "stream": request.body!
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "RecognizeIdcard",
            "version": "2021-07-07",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(RecognizeIdcardResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func recognizeIdcard(_ request: RecognizeIdcardRequest) async throws -> RecognizeIdcardResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await recognizeIdcardWithOptions(request as! RecognizeIdcardRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func recognizeInternationalBusinessLicenseWithOptions(_ request: RecognizeInternationalBusinessLicenseRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> RecognizeInternationalBusinessLicenseResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.country)) {
            query["Country"] = request.country ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.url)) {
            query["Url"] = request.url ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query),
            "body": request.body!,
            "stream": request.body!
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "RecognizeInternationalBusinessLicense",
            "version": "2021-07-07",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(RecognizeInternationalBusinessLicenseResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func recognizeInternationalBusinessLicense(_ request: RecognizeInternationalBusinessLicenseRequest) async throws -> RecognizeInternationalBusinessLicenseResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await recognizeInternationalBusinessLicenseWithOptions(request as! RecognizeInternationalBusinessLicenseRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func recognizeInternationalIdcardWithOptions(_ request: RecognizeInternationalIdcardRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> RecognizeInternationalIdcardResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.country)) {
            query["Country"] = request.country ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.url)) {
            query["Url"] = request.url ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query),
            "body": request.body!,
            "stream": request.body!
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "RecognizeInternationalIdcard",
            "version": "2021-07-07",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(RecognizeInternationalIdcardResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func recognizeInternationalIdcard(_ request: RecognizeInternationalIdcardRequest) async throws -> RecognizeInternationalIdcardResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await recognizeInternationalIdcardWithOptions(request as! RecognizeInternationalIdcardRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func recognizeInvoiceWithOptions(_ request: RecognizeInvoiceRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> RecognizeInvoiceResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.url)) {
            query["Url"] = request.url ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query),
            "body": request.body!,
            "stream": request.body!
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "RecognizeInvoice",
            "version": "2021-07-07",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(RecognizeInvoiceResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func recognizeInvoice(_ request: RecognizeInvoiceRequest) async throws -> RecognizeInvoiceResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await recognizeInvoiceWithOptions(request as! RecognizeInvoiceRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func recognizeJanpaneseWithOptions(_ request: RecognizeJanpaneseRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> RecognizeJanpaneseResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.needRotate)) {
            query["NeedRotate"] = request.needRotate!;
        }
        if (!TeaUtils.Client.isUnset(request.outputCharInfo)) {
            query["OutputCharInfo"] = request.outputCharInfo!;
        }
        if (!TeaUtils.Client.isUnset(request.outputTable)) {
            query["OutputTable"] = request.outputTable!;
        }
        if (!TeaUtils.Client.isUnset(request.url)) {
            query["Url"] = request.url ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query),
            "body": request.body!,
            "stream": request.body!
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "RecognizeJanpanese",
            "version": "2021-07-07",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(RecognizeJanpaneseResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func recognizeJanpanese(_ request: RecognizeJanpaneseRequest) async throws -> RecognizeJanpaneseResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await recognizeJanpaneseWithOptions(request as! RecognizeJanpaneseRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func recognizeKoreanWithOptions(_ request: RecognizeKoreanRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> RecognizeKoreanResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.needRotate)) {
            query["NeedRotate"] = request.needRotate!;
        }
        if (!TeaUtils.Client.isUnset(request.outputCharInfo)) {
            query["OutputCharInfo"] = request.outputCharInfo!;
        }
        if (!TeaUtils.Client.isUnset(request.outputTable)) {
            query["OutputTable"] = request.outputTable!;
        }
        if (!TeaUtils.Client.isUnset(request.url)) {
            query["Url"] = request.url ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query),
            "body": request.body!,
            "stream": request.body!
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "RecognizeKorean",
            "version": "2021-07-07",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(RecognizeKoreanResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func recognizeKorean(_ request: RecognizeKoreanRequest) async throws -> RecognizeKoreanResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await recognizeKoreanWithOptions(request as! RecognizeKoreanRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func recognizeLatinWithOptions(_ request: RecognizeLatinRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> RecognizeLatinResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.needRotate)) {
            query["NeedRotate"] = request.needRotate!;
        }
        if (!TeaUtils.Client.isUnset(request.outputCharInfo)) {
            query["OutputCharInfo"] = request.outputCharInfo!;
        }
        if (!TeaUtils.Client.isUnset(request.outputTable)) {
            query["OutputTable"] = request.outputTable!;
        }
        if (!TeaUtils.Client.isUnset(request.url)) {
            query["Url"] = request.url ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query),
            "body": request.body!,
            "stream": request.body!
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "RecognizeLatin",
            "version": "2021-07-07",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(RecognizeLatinResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func recognizeLatin(_ request: RecognizeLatinRequest) async throws -> RecognizeLatinResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await recognizeLatinWithOptions(request as! RecognizeLatinRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func recognizeMedicalDeviceManageLicenseWithOptions(_ request: RecognizeMedicalDeviceManageLicenseRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> RecognizeMedicalDeviceManageLicenseResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.url)) {
            query["Url"] = request.url ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query),
            "body": request.body!,
            "stream": request.body!
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "RecognizeMedicalDeviceManageLicense",
            "version": "2021-07-07",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(RecognizeMedicalDeviceManageLicenseResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func recognizeMedicalDeviceManageLicense(_ request: RecognizeMedicalDeviceManageLicenseRequest) async throws -> RecognizeMedicalDeviceManageLicenseResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await recognizeMedicalDeviceManageLicenseWithOptions(request as! RecognizeMedicalDeviceManageLicenseRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func recognizeMedicalDeviceProduceLicenseWithOptions(_ request: RecognizeMedicalDeviceProduceLicenseRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> RecognizeMedicalDeviceProduceLicenseResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.url)) {
            query["Url"] = request.url ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query),
            "body": request.body!,
            "stream": request.body!
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "RecognizeMedicalDeviceProduceLicense",
            "version": "2021-07-07",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(RecognizeMedicalDeviceProduceLicenseResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func recognizeMedicalDeviceProduceLicense(_ request: RecognizeMedicalDeviceProduceLicenseRequest) async throws -> RecognizeMedicalDeviceProduceLicenseResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await recognizeMedicalDeviceProduceLicenseWithOptions(request as! RecognizeMedicalDeviceProduceLicenseRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func recognizeMixedInvoicesWithOptions(_ request: RecognizeMixedInvoicesRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> RecognizeMixedInvoicesResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.url)) {
            query["Url"] = request.url ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query),
            "body": request.body!,
            "stream": request.body!
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "RecognizeMixedInvoices",
            "version": "2021-07-07",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(RecognizeMixedInvoicesResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func recognizeMixedInvoices(_ request: RecognizeMixedInvoicesRequest) async throws -> RecognizeMixedInvoicesResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await recognizeMixedInvoicesWithOptions(request as! RecognizeMixedInvoicesRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func recognizeMultiLanguageWithOptions(_ tmpReq: RecognizeMultiLanguageRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> RecognizeMultiLanguageResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: RecognizeMultiLanguageShrinkRequest = RecognizeMultiLanguageShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        if (!TeaUtils.Client.isUnset(tmpReq.languages)) {
            request.languagesShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.languages, "Languages", "simple")
        }
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.languagesShrink)) {
            query["Languages"] = request.languagesShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.needRotate)) {
            query["NeedRotate"] = request.needRotate!;
        }
        if (!TeaUtils.Client.isUnset(request.needSortPage)) {
            query["NeedSortPage"] = request.needSortPage!;
        }
        if (!TeaUtils.Client.isUnset(request.outputCharInfo)) {
            query["OutputCharInfo"] = request.outputCharInfo!;
        }
        if (!TeaUtils.Client.isUnset(request.outputTable)) {
            query["OutputTable"] = request.outputTable!;
        }
        if (!TeaUtils.Client.isUnset(request.url)) {
            query["Url"] = request.url ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query),
            "body": request.body!,
            "stream": tmpReq.body!
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "RecognizeMultiLanguage",
            "version": "2021-07-07",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(RecognizeMultiLanguageResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func recognizeMultiLanguage(_ request: RecognizeMultiLanguageRequest) async throws -> RecognizeMultiLanguageResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await recognizeMultiLanguageWithOptions(request as! RecognizeMultiLanguageRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func recognizeNonTaxInvoiceWithOptions(_ request: RecognizeNonTaxInvoiceRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> RecognizeNonTaxInvoiceResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.url)) {
            query["Url"] = request.url ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query),
            "body": request.body!,
            "stream": request.body!
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "RecognizeNonTaxInvoice",
            "version": "2021-07-07",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(RecognizeNonTaxInvoiceResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func recognizeNonTaxInvoice(_ request: RecognizeNonTaxInvoiceRequest) async throws -> RecognizeNonTaxInvoiceResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await recognizeNonTaxInvoiceWithOptions(request as! RecognizeNonTaxInvoiceRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func recognizePassportWithOptions(_ request: RecognizePassportRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> RecognizePassportResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.url)) {
            query["Url"] = request.url ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query),
            "body": request.body!,
            "stream": request.body!
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "RecognizePassport",
            "version": "2021-07-07",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(RecognizePassportResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func recognizePassport(_ request: RecognizePassportRequest) async throws -> RecognizePassportResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await recognizePassportWithOptions(request as! RecognizePassportRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func recognizePaymentRecordWithOptions(_ request: RecognizePaymentRecordRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> RecognizePaymentRecordResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.url)) {
            query["Url"] = request.url ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query),
            "body": request.body!,
            "stream": request.body!
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "RecognizePaymentRecord",
            "version": "2021-07-07",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(RecognizePaymentRecordResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func recognizePaymentRecord(_ request: RecognizePaymentRecordRequest) async throws -> RecognizePaymentRecordResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await recognizePaymentRecordWithOptions(request as! RecognizePaymentRecordRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func recognizePurchaseRecordWithOptions(_ request: RecognizePurchaseRecordRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> RecognizePurchaseRecordResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.url)) {
            query["Url"] = request.url ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query),
            "body": request.body!,
            "stream": request.body!
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "RecognizePurchaseRecord",
            "version": "2021-07-07",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(RecognizePurchaseRecordResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func recognizePurchaseRecord(_ request: RecognizePurchaseRecordRequest) async throws -> RecognizePurchaseRecordResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await recognizePurchaseRecordWithOptions(request as! RecognizePurchaseRecordRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func recognizeQuotaInvoiceWithOptions(_ request: RecognizeQuotaInvoiceRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> RecognizeQuotaInvoiceResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.url)) {
            query["Url"] = request.url ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query),
            "body": request.body!,
            "stream": request.body!
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "RecognizeQuotaInvoice",
            "version": "2021-07-07",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(RecognizeQuotaInvoiceResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func recognizeQuotaInvoice(_ request: RecognizeQuotaInvoiceRequest) async throws -> RecognizeQuotaInvoiceResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await recognizeQuotaInvoiceWithOptions(request as! RecognizeQuotaInvoiceRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func recognizeRideHailingItineraryWithOptions(_ request: RecognizeRideHailingItineraryRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> RecognizeRideHailingItineraryResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.url)) {
            query["Url"] = request.url ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query),
            "body": request.body!,
            "stream": request.body!
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "RecognizeRideHailingItinerary",
            "version": "2021-07-07",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(RecognizeRideHailingItineraryResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func recognizeRideHailingItinerary(_ request: RecognizeRideHailingItineraryRequest) async throws -> RecognizeRideHailingItineraryResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await recognizeRideHailingItineraryWithOptions(request as! RecognizeRideHailingItineraryRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func recognizeRollTicketWithOptions(_ request: RecognizeRollTicketRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> RecognizeRollTicketResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.url)) {
            query["Url"] = request.url ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query),
            "body": request.body!,
            "stream": request.body!
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "RecognizeRollTicket",
            "version": "2021-07-07",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(RecognizeRollTicketResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func recognizeRollTicket(_ request: RecognizeRollTicketRequest) async throws -> RecognizeRollTicketResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await recognizeRollTicketWithOptions(request as! RecognizeRollTicketRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func recognizeRussianWithOptions(_ request: RecognizeRussianRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> RecognizeRussianResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.needRotate)) {
            query["NeedRotate"] = request.needRotate!;
        }
        if (!TeaUtils.Client.isUnset(request.outputCharInfo)) {
            query["OutputCharInfo"] = request.outputCharInfo!;
        }
        if (!TeaUtils.Client.isUnset(request.outputTable)) {
            query["OutputTable"] = request.outputTable!;
        }
        if (!TeaUtils.Client.isUnset(request.url)) {
            query["Url"] = request.url ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query),
            "body": request.body!,
            "stream": request.body!
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "RecognizeRussian",
            "version": "2021-07-07",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(RecognizeRussianResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func recognizeRussian(_ request: RecognizeRussianRequest) async throws -> RecognizeRussianResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await recognizeRussianWithOptions(request as! RecognizeRussianRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func recognizeShoppingReceiptWithOptions(_ request: RecognizeShoppingReceiptRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> RecognizeShoppingReceiptResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.url)) {
            query["Url"] = request.url ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query),
            "body": request.body!,
            "stream": request.body!
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "RecognizeShoppingReceipt",
            "version": "2021-07-07",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(RecognizeShoppingReceiptResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func recognizeShoppingReceipt(_ request: RecognizeShoppingReceiptRequest) async throws -> RecognizeShoppingReceiptResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await recognizeShoppingReceiptWithOptions(request as! RecognizeShoppingReceiptRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func recognizeSocialSecurityCardWithOptions(_ request: RecognizeSocialSecurityCardRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> RecognizeSocialSecurityCardResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.url)) {
            query["Url"] = request.url ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query),
            "body": request.body!,
            "stream": request.body!
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "RecognizeSocialSecurityCard",
            "version": "2021-07-07",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(RecognizeSocialSecurityCardResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func recognizeSocialSecurityCard(_ request: RecognizeSocialSecurityCardRequest) async throws -> RecognizeSocialSecurityCardResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await recognizeSocialSecurityCardWithOptions(request as! RecognizeSocialSecurityCardRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func recognizeSocialSecurityCardVersionIIWithOptions(_ request: RecognizeSocialSecurityCardVersionIIRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> RecognizeSocialSecurityCardVersionIIResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.url)) {
            query["Url"] = request.url ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query),
            "body": request.body!,
            "stream": request.body!
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "RecognizeSocialSecurityCardVersionII",
            "version": "2021-07-07",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(RecognizeSocialSecurityCardVersionIIResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func recognizeSocialSecurityCardVersionII(_ request: RecognizeSocialSecurityCardVersionIIRequest) async throws -> RecognizeSocialSecurityCardVersionIIResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await recognizeSocialSecurityCardVersionIIWithOptions(request as! RecognizeSocialSecurityCardVersionIIRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func recognizeTableOcrWithOptions(_ request: RecognizeTableOcrRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> RecognizeTableOcrResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.lineLess)) {
            query["LineLess"] = request.lineLess!;
        }
        if (!TeaUtils.Client.isUnset(request.needRotate)) {
            query["NeedRotate"] = request.needRotate!;
        }
        if (!TeaUtils.Client.isUnset(request.skipDetection)) {
            query["SkipDetection"] = request.skipDetection!;
        }
        if (!TeaUtils.Client.isUnset(request.url)) {
            query["Url"] = request.url ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query),
            "body": request.body!,
            "stream": request.body!
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "RecognizeTableOcr",
            "version": "2021-07-07",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(RecognizeTableOcrResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func recognizeTableOcr(_ request: RecognizeTableOcrRequest) async throws -> RecognizeTableOcrResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await recognizeTableOcrWithOptions(request as! RecognizeTableOcrRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func recognizeTaxClearanceCertificateWithOptions(_ request: RecognizeTaxClearanceCertificateRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> RecognizeTaxClearanceCertificateResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.url)) {
            query["Url"] = request.url ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query),
            "body": request.body!,
            "stream": request.body!
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "RecognizeTaxClearanceCertificate",
            "version": "2021-07-07",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(RecognizeTaxClearanceCertificateResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func recognizeTaxClearanceCertificate(_ request: RecognizeTaxClearanceCertificateRequest) async throws -> RecognizeTaxClearanceCertificateResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await recognizeTaxClearanceCertificateWithOptions(request as! RecognizeTaxClearanceCertificateRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func recognizeTaxiInvoiceWithOptions(_ request: RecognizeTaxiInvoiceRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> RecognizeTaxiInvoiceResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.url)) {
            query["Url"] = request.url ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query),
            "body": request.body!,
            "stream": request.body!
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "RecognizeTaxiInvoice",
            "version": "2021-07-07",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(RecognizeTaxiInvoiceResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func recognizeTaxiInvoice(_ request: RecognizeTaxiInvoiceRequest) async throws -> RecognizeTaxiInvoiceResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await recognizeTaxiInvoiceWithOptions(request as! RecognizeTaxiInvoiceRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func recognizeThaiWithOptions(_ request: RecognizeThaiRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> RecognizeThaiResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.needRotate)) {
            query["NeedRotate"] = request.needRotate!;
        }
        if (!TeaUtils.Client.isUnset(request.outputCharInfo)) {
            query["OutputCharInfo"] = request.outputCharInfo!;
        }
        if (!TeaUtils.Client.isUnset(request.outputTable)) {
            query["OutputTable"] = request.outputTable!;
        }
        if (!TeaUtils.Client.isUnset(request.url)) {
            query["Url"] = request.url ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query),
            "body": request.body!,
            "stream": request.body!
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "RecognizeThai",
            "version": "2021-07-07",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(RecognizeThaiResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func recognizeThai(_ request: RecognizeThaiRequest) async throws -> RecognizeThaiResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await recognizeThaiWithOptions(request as! RecognizeThaiRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func recognizeTollInvoiceWithOptions(_ request: RecognizeTollInvoiceRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> RecognizeTollInvoiceResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.url)) {
            query["Url"] = request.url ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query),
            "body": request.body!,
            "stream": request.body!
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "RecognizeTollInvoice",
            "version": "2021-07-07",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(RecognizeTollInvoiceResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func recognizeTollInvoice(_ request: RecognizeTollInvoiceRequest) async throws -> RecognizeTollInvoiceResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await recognizeTollInvoiceWithOptions(request as! RecognizeTollInvoiceRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func recognizeTradeMarkCertificationWithOptions(_ request: RecognizeTradeMarkCertificationRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> RecognizeTradeMarkCertificationResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.url)) {
            query["Url"] = request.url ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query),
            "body": request.body!,
            "stream": request.body!
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "RecognizeTradeMarkCertification",
            "version": "2021-07-07",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(RecognizeTradeMarkCertificationResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func recognizeTradeMarkCertification(_ request: RecognizeTradeMarkCertificationRequest) async throws -> RecognizeTradeMarkCertificationResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await recognizeTradeMarkCertificationWithOptions(request as! RecognizeTradeMarkCertificationRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func recognizeTrainInvoiceWithOptions(_ request: RecognizeTrainInvoiceRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> RecognizeTrainInvoiceResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.url)) {
            query["Url"] = request.url ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query),
            "body": request.body!,
            "stream": request.body!
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "RecognizeTrainInvoice",
            "version": "2021-07-07",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(RecognizeTrainInvoiceResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func recognizeTrainInvoice(_ request: RecognizeTrainInvoiceRequest) async throws -> RecognizeTrainInvoiceResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await recognizeTrainInvoiceWithOptions(request as! RecognizeTrainInvoiceRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func recognizeTravelCardWithOptions(_ request: RecognizeTravelCardRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> RecognizeTravelCardResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.url)) {
            query["Url"] = request.url ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query),
            "body": request.body!,
            "stream": request.body!
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "RecognizeTravelCard",
            "version": "2021-07-07",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(RecognizeTravelCardResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func recognizeTravelCard(_ request: RecognizeTravelCardRequest) async throws -> RecognizeTravelCardResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await recognizeTravelCardWithOptions(request as! RecognizeTravelCardRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func recognizeUsedCarInvoiceWithOptions(_ request: RecognizeUsedCarInvoiceRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> RecognizeUsedCarInvoiceResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.url)) {
            query["Url"] = request.url ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query),
            "body": request.body!,
            "stream": request.body!
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "RecognizeUsedCarInvoice",
            "version": "2021-07-07",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(RecognizeUsedCarInvoiceResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func recognizeUsedCarInvoice(_ request: RecognizeUsedCarInvoiceRequest) async throws -> RecognizeUsedCarInvoiceResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await recognizeUsedCarInvoiceWithOptions(request as! RecognizeUsedCarInvoiceRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func recognizeVehicleCertificationWithOptions(_ request: RecognizeVehicleCertificationRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> RecognizeVehicleCertificationResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.url)) {
            query["Url"] = request.url ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query),
            "body": request.body!,
            "stream": request.body!
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "RecognizeVehicleCertification",
            "version": "2021-07-07",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(RecognizeVehicleCertificationResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func recognizeVehicleCertification(_ request: RecognizeVehicleCertificationRequest) async throws -> RecognizeVehicleCertificationResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await recognizeVehicleCertificationWithOptions(request as! RecognizeVehicleCertificationRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func recognizeVehicleLicenseWithOptions(_ request: RecognizeVehicleLicenseRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> RecognizeVehicleLicenseResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.url)) {
            query["Url"] = request.url ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query),
            "body": request.body!,
            "stream": request.body!
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "RecognizeVehicleLicense",
            "version": "2021-07-07",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(RecognizeVehicleLicenseResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func recognizeVehicleLicense(_ request: RecognizeVehicleLicenseRequest) async throws -> RecognizeVehicleLicenseResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await recognizeVehicleLicenseWithOptions(request as! RecognizeVehicleLicenseRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func recognizeVehicleRegistrationWithOptions(_ request: RecognizeVehicleRegistrationRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> RecognizeVehicleRegistrationResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.url)) {
            query["Url"] = request.url ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query),
            "body": request.body!,
            "stream": request.body!
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "RecognizeVehicleRegistration",
            "version": "2021-07-07",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(RecognizeVehicleRegistrationResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func recognizeVehicleRegistration(_ request: RecognizeVehicleRegistrationRequest) async throws -> RecognizeVehicleRegistrationResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await recognizeVehicleRegistrationWithOptions(request as! RecognizeVehicleRegistrationRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func recognizeWaybillWithOptions(_ request: RecognizeWaybillRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> RecognizeWaybillResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.url)) {
            query["Url"] = request.url ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query),
            "body": request.body!,
            "stream": request.body!
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "RecognizeWaybill",
            "version": "2021-07-07",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(RecognizeWaybillResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func recognizeWaybill(_ request: RecognizeWaybillRequest) async throws -> RecognizeWaybillResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await recognizeWaybillWithOptions(request as! RecognizeWaybillRequest, runtime as! TeaUtils.RuntimeOptions)
    }
}
