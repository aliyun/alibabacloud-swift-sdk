import Foundation
import Tea
import TeaUtils
import AlibabacloudOpenApi
import AlibabaCloudOpenApiUtil
import AlibabacloudEndpointUtil

public class BatchSendMessageToGlobeRequest : Tea.TeaModel {
    public var channelId: String?

    public var from: String?

    public var message: String?

    public var taskId: String?

    public var to: String?

    public var type: String?

    public var validityPeriod: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.channelId != nil {
            map["ChannelId"] = self.channelId!
        }
        if self.from != nil {
            map["From"] = self.from!
        }
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.taskId != nil {
            map["TaskId"] = self.taskId!
        }
        if self.to != nil {
            map["To"] = self.to!
        }
        if self.type != nil {
            map["Type"] = self.type!
        }
        if self.validityPeriod != nil {
            map["ValidityPeriod"] = self.validityPeriod!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ChannelId"] as? String {
            self.channelId = value
        }
        if let value = dict["From"] as? String {
            self.from = value
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["TaskId"] as? String {
            self.taskId = value
        }
        if let value = dict["To"] as? String {
            self.to = value
        }
        if let value = dict["Type"] as? String {
            self.type = value
        }
        if let value = dict["ValidityPeriod"] as? Int64 {
            self.validityPeriod = value
        }
    }
}

public class BatchSendMessageToGlobeResponseBody : Tea.TeaModel {
    public var failedList: String?

    public var from: String?

    public var messageIdList: String?

    public var requestId: String?

    public var responseCode: String?

    public var responseDescription: String?

    public var successCount: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.failedList != nil {
            map["FailedList"] = self.failedList!
        }
        if self.from != nil {
            map["From"] = self.from!
        }
        if self.messageIdList != nil {
            map["MessageIdList"] = self.messageIdList!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.responseCode != nil {
            map["ResponseCode"] = self.responseCode!
        }
        if self.responseDescription != nil {
            map["ResponseDescription"] = self.responseDescription!
        }
        if self.successCount != nil {
            map["SuccessCount"] = self.successCount!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["FailedList"] as? String {
            self.failedList = value
        }
        if let value = dict["From"] as? String {
            self.from = value
        }
        if let value = dict["MessageIdList"] as? String {
            self.messageIdList = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["ResponseCode"] as? String {
            self.responseCode = value
        }
        if let value = dict["ResponseDescription"] as? String {
            self.responseDescription = value
        }
        if let value = dict["SuccessCount"] as? String {
            self.successCount = value
        }
    }
}

public class BatchSendMessageToGlobeResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: BatchSendMessageToGlobeResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = BatchSendMessageToGlobeResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ConversionDataRequest : Tea.TeaModel {
    public var conversionRate: String?

    public var reportTime: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.conversionRate != nil {
            map["ConversionRate"] = self.conversionRate!
        }
        if self.reportTime != nil {
            map["ReportTime"] = self.reportTime!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ConversionRate"] as? String {
            self.conversionRate = value
        }
        if let value = dict["ReportTime"] as? Int64 {
            self.reportTime = value
        }
    }
}

public class ConversionDataResponseBody : Tea.TeaModel {
    public var requestId: String?

    public var responseCode: String?

    public var responseDescription: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.responseCode != nil {
            map["ResponseCode"] = self.responseCode!
        }
        if self.responseDescription != nil {
            map["ResponseDescription"] = self.responseDescription!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["ResponseCode"] as? String {
            self.responseCode = value
        }
        if let value = dict["ResponseDescription"] as? String {
            self.responseDescription = value
        }
    }
}

public class ConversionDataResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ConversionDataResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = ConversionDataResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class QueryMessageRequest : Tea.TeaModel {
    public var messageId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.messageId != nil {
            map["MessageId"] = self.messageId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["MessageId"] as? String {
            self.messageId = value
        }
    }
}

public class QueryMessageResponseBody : Tea.TeaModel {
    public class NumberDetail : Tea.TeaModel {
        public var carrier: String?

        public var country: String?

        public var region: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.carrier != nil {
                map["Carrier"] = self.carrier!
            }
            if self.country != nil {
                map["Country"] = self.country!
            }
            if self.region != nil {
                map["Region"] = self.region!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Carrier"] as? String {
                self.carrier = value
            }
            if let value = dict["Country"] as? String {
                self.country = value
            }
            if let value = dict["Region"] as? String {
                self.region = value
            }
        }
    }
    public var errorCode: String?

    public var errorDescription: String?

    public var message: String?

    public var messageId: String?

    public var numberDetail: QueryMessageResponseBody.NumberDetail?

    public var receiveDate: String?

    public var requestId: String?

    public var responseCode: String?

    public var responseDescription: String?

    public var sendDate: String?

    public var status: String?

    public var to: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.numberDetail?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.errorCode != nil {
            map["ErrorCode"] = self.errorCode!
        }
        if self.errorDescription != nil {
            map["ErrorDescription"] = self.errorDescription!
        }
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.messageId != nil {
            map["MessageId"] = self.messageId!
        }
        if self.numberDetail != nil {
            map["NumberDetail"] = self.numberDetail?.toMap()
        }
        if self.receiveDate != nil {
            map["ReceiveDate"] = self.receiveDate!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.responseCode != nil {
            map["ResponseCode"] = self.responseCode!
        }
        if self.responseDescription != nil {
            map["ResponseDescription"] = self.responseDescription!
        }
        if self.sendDate != nil {
            map["SendDate"] = self.sendDate!
        }
        if self.status != nil {
            map["Status"] = self.status!
        }
        if self.to != nil {
            map["To"] = self.to!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ErrorCode"] as? String {
            self.errorCode = value
        }
        if let value = dict["ErrorDescription"] as? String {
            self.errorDescription = value
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["MessageId"] as? String {
            self.messageId = value
        }
        if let value = dict["NumberDetail"] as? [String: Any?] {
            var model = QueryMessageResponseBody.NumberDetail()
            model.fromMap(value)
            self.numberDetail = model
        }
        if let value = dict["ReceiveDate"] as? String {
            self.receiveDate = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["ResponseCode"] as? String {
            self.responseCode = value
        }
        if let value = dict["ResponseDescription"] as? String {
            self.responseDescription = value
        }
        if let value = dict["SendDate"] as? String {
            self.sendDate = value
        }
        if let value = dict["Status"] as? String {
            self.status = value
        }
        if let value = dict["To"] as? String {
            self.to = value
        }
    }
}

public class QueryMessageResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: QueryMessageResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = QueryMessageResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class SendMessageToGlobeRequest : Tea.TeaModel {
    public var channelId: String?

    public var from: String?

    public var message: String?

    public var taskId: String?

    public var to: String?

    public var type: String?

    public var validityPeriod: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.channelId != nil {
            map["ChannelId"] = self.channelId!
        }
        if self.from != nil {
            map["From"] = self.from!
        }
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.taskId != nil {
            map["TaskId"] = self.taskId!
        }
        if self.to != nil {
            map["To"] = self.to!
        }
        if self.type != nil {
            map["Type"] = self.type!
        }
        if self.validityPeriod != nil {
            map["ValidityPeriod"] = self.validityPeriod!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ChannelId"] as? String {
            self.channelId = value
        }
        if let value = dict["From"] as? String {
            self.from = value
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["TaskId"] as? String {
            self.taskId = value
        }
        if let value = dict["To"] as? String {
            self.to = value
        }
        if let value = dict["Type"] as? String {
            self.type = value
        }
        if let value = dict["ValidityPeriod"] as? Int64 {
            self.validityPeriod = value
        }
    }
}

public class SendMessageToGlobeResponseBody : Tea.TeaModel {
    public class NumberDetail : Tea.TeaModel {
        public var carrier: String?

        public var country: String?

        public var region: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.carrier != nil {
                map["Carrier"] = self.carrier!
            }
            if self.country != nil {
                map["Country"] = self.country!
            }
            if self.region != nil {
                map["Region"] = self.region!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Carrier"] as? String {
                self.carrier = value
            }
            if let value = dict["Country"] as? String {
                self.country = value
            }
            if let value = dict["Region"] as? String {
                self.region = value
            }
        }
    }
    public var from: String?

    public var messageId: String?

    public var numberDetail: SendMessageToGlobeResponseBody.NumberDetail?

    public var requestId: String?

    public var responseCode: String?

    public var responseDescription: String?

    public var segments: String?

    public var to: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.numberDetail?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.from != nil {
            map["From"] = self.from!
        }
        if self.messageId != nil {
            map["MessageId"] = self.messageId!
        }
        if self.numberDetail != nil {
            map["NumberDetail"] = self.numberDetail?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.responseCode != nil {
            map["ResponseCode"] = self.responseCode!
        }
        if self.responseDescription != nil {
            map["ResponseDescription"] = self.responseDescription!
        }
        if self.segments != nil {
            map["Segments"] = self.segments!
        }
        if self.to != nil {
            map["To"] = self.to!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["From"] as? String {
            self.from = value
        }
        if let value = dict["MessageId"] as? String {
            self.messageId = value
        }
        if let value = dict["NumberDetail"] as? [String: Any?] {
            var model = SendMessageToGlobeResponseBody.NumberDetail()
            model.fromMap(value)
            self.numberDetail = model
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["ResponseCode"] as? String {
            self.responseCode = value
        }
        if let value = dict["ResponseDescription"] as? String {
            self.responseDescription = value
        }
        if let value = dict["Segments"] as? String {
            self.segments = value
        }
        if let value = dict["To"] as? String {
            self.to = value
        }
    }
}

public class SendMessageToGlobeResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: SendMessageToGlobeResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = SendMessageToGlobeResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class SendMessageWithTemplateRequest : Tea.TeaModel {
    public var channelId: String?

    public var from: String?

    public var smsUpExtendCode: String?

    public var templateCode: String?

    public var templateParam: String?

    public var to: String?

    public var validityPeriod: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.channelId != nil {
            map["ChannelId"] = self.channelId!
        }
        if self.from != nil {
            map["From"] = self.from!
        }
        if self.smsUpExtendCode != nil {
            map["SmsUpExtendCode"] = self.smsUpExtendCode!
        }
        if self.templateCode != nil {
            map["TemplateCode"] = self.templateCode!
        }
        if self.templateParam != nil {
            map["TemplateParam"] = self.templateParam!
        }
        if self.to != nil {
            map["To"] = self.to!
        }
        if self.validityPeriod != nil {
            map["ValidityPeriod"] = self.validityPeriod!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ChannelId"] as? String {
            self.channelId = value
        }
        if let value = dict["From"] as? String {
            self.from = value
        }
        if let value = dict["SmsUpExtendCode"] as? String {
            self.smsUpExtendCode = value
        }
        if let value = dict["TemplateCode"] as? String {
            self.templateCode = value
        }
        if let value = dict["TemplateParam"] as? String {
            self.templateParam = value
        }
        if let value = dict["To"] as? String {
            self.to = value
        }
        if let value = dict["ValidityPeriod"] as? Int64 {
            self.validityPeriod = value
        }
    }
}

public class SendMessageWithTemplateResponseBody : Tea.TeaModel {
    public class NumberDetail : Tea.TeaModel {
        public var carrier: String?

        public var country: String?

        public var region: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.carrier != nil {
                map["Carrier"] = self.carrier!
            }
            if self.country != nil {
                map["Country"] = self.country!
            }
            if self.region != nil {
                map["Region"] = self.region!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Carrier"] as? String {
                self.carrier = value
            }
            if let value = dict["Country"] as? String {
                self.country = value
            }
            if let value = dict["Region"] as? String {
                self.region = value
            }
        }
    }
    public var messageId: String?

    public var numberDetail: SendMessageWithTemplateResponseBody.NumberDetail?

    public var requestId: String?

    public var responseCode: String?

    public var responseDescription: String?

    public var segments: String?

    public var to: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.numberDetail?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.messageId != nil {
            map["MessageId"] = self.messageId!
        }
        if self.numberDetail != nil {
            map["NumberDetail"] = self.numberDetail?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.responseCode != nil {
            map["ResponseCode"] = self.responseCode!
        }
        if self.responseDescription != nil {
            map["ResponseDescription"] = self.responseDescription!
        }
        if self.segments != nil {
            map["Segments"] = self.segments!
        }
        if self.to != nil {
            map["To"] = self.to!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["MessageId"] as? String {
            self.messageId = value
        }
        if let value = dict["NumberDetail"] as? [String: Any?] {
            var model = SendMessageWithTemplateResponseBody.NumberDetail()
            model.fromMap(value)
            self.numberDetail = model
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["ResponseCode"] as? String {
            self.responseCode = value
        }
        if let value = dict["ResponseDescription"] as? String {
            self.responseDescription = value
        }
        if let value = dict["Segments"] as? String {
            self.segments = value
        }
        if let value = dict["To"] as? String {
            self.to = value
        }
    }
}

public class SendMessageWithTemplateResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: SendMessageWithTemplateResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = SendMessageWithTemplateResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class SmsConversionRequest : Tea.TeaModel {
    public var conversionTime: Int64?

    public var delivered: Bool?

    public var messageId: String?

    public var to: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.conversionTime != nil {
            map["ConversionTime"] = self.conversionTime!
        }
        if self.delivered != nil {
            map["Delivered"] = self.delivered!
        }
        if self.messageId != nil {
            map["MessageId"] = self.messageId!
        }
        if self.to != nil {
            map["To"] = self.to!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ConversionTime"] as? Int64 {
            self.conversionTime = value
        }
        if let value = dict["Delivered"] as? Bool {
            self.delivered = value
        }
        if let value = dict["MessageId"] as? String {
            self.messageId = value
        }
        if let value = dict["To"] as? String {
            self.to = value
        }
    }
}

public class SmsConversionResponseBody : Tea.TeaModel {
    public var requestId: String?

    public var responseCode: String?

    public var responseDescription: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.responseCode != nil {
            map["ResponseCode"] = self.responseCode!
        }
        if self.responseDescription != nil {
            map["ResponseDescription"] = self.responseDescription!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["ResponseCode"] as? String {
            self.responseCode = value
        }
        if let value = dict["ResponseDescription"] as? String {
            self.responseDescription = value
        }
    }
}

public class SmsConversionResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: SmsConversionResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = SmsConversionResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}
