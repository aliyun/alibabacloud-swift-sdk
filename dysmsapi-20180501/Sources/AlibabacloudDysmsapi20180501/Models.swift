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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ChannelId") {
            self.channelId = dict["ChannelId"] as! String
        }
        if dict.keys.contains("From") {
            self.from = dict["From"] as! String
        }
        if dict.keys.contains("Message") {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("TaskId") {
            self.taskId = dict["TaskId"] as! String
        }
        if dict.keys.contains("To") {
            self.to = dict["To"] as! String
        }
        if dict.keys.contains("Type") {
            self.type = dict["Type"] as! String
        }
        if dict.keys.contains("ValidityPeriod") {
            self.validityPeriod = dict["ValidityPeriod"] as! Int64
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("FailedList") {
            self.failedList = dict["FailedList"] as! String
        }
        if dict.keys.contains("From") {
            self.from = dict["From"] as! String
        }
        if dict.keys.contains("MessageIdList") {
            self.messageIdList = dict["MessageIdList"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("ResponseCode") {
            self.responseCode = dict["ResponseCode"] as! String
        }
        if dict.keys.contains("ResponseDescription") {
            self.responseDescription = dict["ResponseDescription"] as! String
        }
        if dict.keys.contains("SuccessCount") {
            self.successCount = dict["SuccessCount"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = BatchSendMessageToGlobeResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ConversionRate") {
            self.conversionRate = dict["ConversionRate"] as! String
        }
        if dict.keys.contains("ReportTime") {
            self.reportTime = dict["ReportTime"] as! Int64
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("ResponseCode") {
            self.responseCode = dict["ResponseCode"] as! String
        }
        if dict.keys.contains("ResponseDescription") {
            self.responseDescription = dict["ResponseDescription"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = ConversionDataResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("MessageId") {
            self.messageId = dict["MessageId"] as! String
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Carrier") {
                self.carrier = dict["Carrier"] as! String
            }
            if dict.keys.contains("Country") {
                self.country = dict["Country"] as! String
            }
            if dict.keys.contains("Region") {
                self.region = dict["Region"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ErrorCode") {
            self.errorCode = dict["ErrorCode"] as! String
        }
        if dict.keys.contains("ErrorDescription") {
            self.errorDescription = dict["ErrorDescription"] as! String
        }
        if dict.keys.contains("Message") {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("MessageId") {
            self.messageId = dict["MessageId"] as! String
        }
        if dict.keys.contains("NumberDetail") {
            var model = QueryMessageResponseBody.NumberDetail()
            model.fromMap(dict["NumberDetail"] as! [String: Any])
            self.numberDetail = model
        }
        if dict.keys.contains("ReceiveDate") {
            self.receiveDate = dict["ReceiveDate"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("ResponseCode") {
            self.responseCode = dict["ResponseCode"] as! String
        }
        if dict.keys.contains("ResponseDescription") {
            self.responseDescription = dict["ResponseDescription"] as! String
        }
        if dict.keys.contains("SendDate") {
            self.sendDate = dict["SendDate"] as! String
        }
        if dict.keys.contains("Status") {
            self.status = dict["Status"] as! String
        }
        if dict.keys.contains("To") {
            self.to = dict["To"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = QueryMessageResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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
        if self.validityPeriod != nil {
            map["ValidityPeriod"] = self.validityPeriod!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ChannelId") {
            self.channelId = dict["ChannelId"] as! String
        }
        if dict.keys.contains("From") {
            self.from = dict["From"] as! String
        }
        if dict.keys.contains("Message") {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("TaskId") {
            self.taskId = dict["TaskId"] as! String
        }
        if dict.keys.contains("To") {
            self.to = dict["To"] as! String
        }
        if dict.keys.contains("ValidityPeriod") {
            self.validityPeriod = dict["ValidityPeriod"] as! Int64
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Carrier") {
                self.carrier = dict["Carrier"] as! String
            }
            if dict.keys.contains("Country") {
                self.country = dict["Country"] as! String
            }
            if dict.keys.contains("Region") {
                self.region = dict["Region"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("From") {
            self.from = dict["From"] as! String
        }
        if dict.keys.contains("MessageId") {
            self.messageId = dict["MessageId"] as! String
        }
        if dict.keys.contains("NumberDetail") {
            var model = SendMessageToGlobeResponseBody.NumberDetail()
            model.fromMap(dict["NumberDetail"] as! [String: Any])
            self.numberDetail = model
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("ResponseCode") {
            self.responseCode = dict["ResponseCode"] as! String
        }
        if dict.keys.contains("ResponseDescription") {
            self.responseDescription = dict["ResponseDescription"] as! String
        }
        if dict.keys.contains("Segments") {
            self.segments = dict["Segments"] as! String
        }
        if dict.keys.contains("To") {
            self.to = dict["To"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = SendMessageToGlobeResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ChannelId") {
            self.channelId = dict["ChannelId"] as! String
        }
        if dict.keys.contains("From") {
            self.from = dict["From"] as! String
        }
        if dict.keys.contains("SmsUpExtendCode") {
            self.smsUpExtendCode = dict["SmsUpExtendCode"] as! String
        }
        if dict.keys.contains("TemplateCode") {
            self.templateCode = dict["TemplateCode"] as! String
        }
        if dict.keys.contains("TemplateParam") {
            self.templateParam = dict["TemplateParam"] as! String
        }
        if dict.keys.contains("To") {
            self.to = dict["To"] as! String
        }
        if dict.keys.contains("ValidityPeriod") {
            self.validityPeriod = dict["ValidityPeriod"] as! Int64
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Carrier") {
                self.carrier = dict["Carrier"] as! String
            }
            if dict.keys.contains("Country") {
                self.country = dict["Country"] as! String
            }
            if dict.keys.contains("Region") {
                self.region = dict["Region"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("MessageId") {
            self.messageId = dict["MessageId"] as! String
        }
        if dict.keys.contains("NumberDetail") {
            var model = SendMessageWithTemplateResponseBody.NumberDetail()
            model.fromMap(dict["NumberDetail"] as! [String: Any])
            self.numberDetail = model
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("ResponseCode") {
            self.responseCode = dict["ResponseCode"] as! String
        }
        if dict.keys.contains("ResponseDescription") {
            self.responseDescription = dict["ResponseDescription"] as! String
        }
        if dict.keys.contains("Segments") {
            self.segments = dict["Segments"] as! String
        }
        if dict.keys.contains("To") {
            self.to = dict["To"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = SendMessageWithTemplateResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ConversionTime") {
            self.conversionTime = dict["ConversionTime"] as! Int64
        }
        if dict.keys.contains("Delivered") {
            self.delivered = dict["Delivered"] as! Bool
        }
        if dict.keys.contains("MessageId") {
            self.messageId = dict["MessageId"] as! String
        }
        if dict.keys.contains("To") {
            self.to = dict["To"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("ResponseCode") {
            self.responseCode = dict["ResponseCode"] as! String
        }
        if dict.keys.contains("ResponseDescription") {
            self.responseDescription = dict["ResponseDescription"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = SmsConversionResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}
