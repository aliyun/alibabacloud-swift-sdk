import Foundation
import Tea
import TeaUtils
import AlibabacloudOpenApi
import AlibabaCloudOpenApiUtil
import AlibabacloudEndpointUtil

public class QueryCopyrightRequest : Tea.TeaModel {
    public var createTimeEnd: Int64?

    public var createTimeStart: Int64?

    public var jobId: String?

    public var level: Int64?

    public var pageNumber: Int64?

    public var pageSize: Int64?

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
        if self.createTimeEnd != nil {
            map["CreateTimeEnd"] = self.createTimeEnd!
        }
        if self.createTimeStart != nil {
            map["CreateTimeStart"] = self.createTimeStart!
        }
        if self.jobId != nil {
            map["JobId"] = self.jobId!
        }
        if self.level != nil {
            map["Level"] = self.level!
        }
        if self.pageNumber != nil {
            map["PageNumber"] = self.pageNumber!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("CreateTimeEnd") {
            self.createTimeEnd = dict["CreateTimeEnd"] as! Int64
        }
        if dict.keys.contains("CreateTimeStart") {
            self.createTimeStart = dict["CreateTimeStart"] as! Int64
        }
        if dict.keys.contains("JobId") {
            self.jobId = dict["JobId"] as! String
        }
        if dict.keys.contains("Level") {
            self.level = dict["Level"] as! Int64
        }
        if dict.keys.contains("PageNumber") {
            self.pageNumber = dict["PageNumber"] as! Int64
        }
        if dict.keys.contains("PageSize") {
            self.pageSize = dict["PageSize"] as! Int64
        }
    }
}

public class QueryCopyrightResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var callback: String?

        public var gmtCreate: Int64?

        public var gmtModified: Int64?

        public var input: String?

        public var jobId: String?

        public var level: Int64?

        public var message: String?

        public var messageId: Int64?

        public var output: String?

        public var result: String?

        public var status: String?

        public var userData: String?

        public var userId: Int64?

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
            if self.callback != nil {
                map["Callback"] = self.callback!
            }
            if self.gmtCreate != nil {
                map["GmtCreate"] = self.gmtCreate!
            }
            if self.gmtModified != nil {
                map["GmtModified"] = self.gmtModified!
            }
            if self.input != nil {
                map["Input"] = self.input!
            }
            if self.jobId != nil {
                map["JobId"] = self.jobId!
            }
            if self.level != nil {
                map["Level"] = self.level!
            }
            if self.message != nil {
                map["Message"] = self.message!
            }
            if self.messageId != nil {
                map["MessageId"] = self.messageId!
            }
            if self.output != nil {
                map["Output"] = self.output!
            }
            if self.result != nil {
                map["Result"] = self.result!
            }
            if self.status != nil {
                map["Status"] = self.status!
            }
            if self.userData != nil {
                map["UserData"] = self.userData!
            }
            if self.userId != nil {
                map["UserId"] = self.userId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Callback") {
                self.callback = dict["Callback"] as! String
            }
            if dict.keys.contains("GmtCreate") {
                self.gmtCreate = dict["GmtCreate"] as! Int64
            }
            if dict.keys.contains("GmtModified") {
                self.gmtModified = dict["GmtModified"] as! Int64
            }
            if dict.keys.contains("Input") {
                self.input = dict["Input"] as! String
            }
            if dict.keys.contains("JobId") {
                self.jobId = dict["JobId"] as! String
            }
            if dict.keys.contains("Level") {
                self.level = dict["Level"] as! Int64
            }
            if dict.keys.contains("Message") {
                self.message = dict["Message"] as! String
            }
            if dict.keys.contains("MessageId") {
                self.messageId = dict["MessageId"] as! Int64
            }
            if dict.keys.contains("Output") {
                self.output = dict["Output"] as! String
            }
            if dict.keys.contains("Result") {
                self.result = dict["Result"] as! String
            }
            if dict.keys.contains("Status") {
                self.status = dict["Status"] as! String
            }
            if dict.keys.contains("UserData") {
                self.userData = dict["UserData"] as! String
            }
            if dict.keys.contains("UserId") {
                self.userId = dict["UserId"] as! Int64
            }
        }
    }
    public var data: [QueryCopyrightResponseBody.Data]?

    public var requestID: String?

    public var statusCode: Int64?

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
        if self.data != nil {
            var tmp : [Any] = []
            for k in self.data! {
                tmp.append(k.toMap())
            }
            map["Data"] = tmp
        }
        if self.requestID != nil {
            map["RequestID"] = self.requestID!
        }
        if self.statusCode != nil {
            map["StatusCode"] = self.statusCode!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Data") {
            self.data = dict["Data"] as! [QueryCopyrightResponseBody.Data]
        }
        if dict.keys.contains("RequestID") {
            self.requestID = dict["RequestID"] as! String
        }
        if dict.keys.contains("StatusCode") {
            self.statusCode = dict["StatusCode"] as! Int64
        }
    }
}

public class QueryCopyrightResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: QueryCopyrightResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
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
            var model = QueryCopyrightResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class QueryCopyrightExtractRequest : Tea.TeaModel {
    public var jobId: String?

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
        if self.jobId != nil {
            map["JobId"] = self.jobId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("JobId") {
            self.jobId = dict["JobId"] as! String
        }
    }
}

public class QueryCopyrightExtractResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var message: String?

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
            if self.message != nil {
                map["Message"] = self.message!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Message") {
                self.message = dict["Message"] as! String
            }
        }
    }
    public var data: QueryCopyrightExtractResponseBody.Data?

    public var message: String?

    public var requestID: String?

    public var statusCode: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.data?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.data != nil {
            map["Data"] = self.data?.toMap()
        }
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.requestID != nil {
            map["RequestID"] = self.requestID!
        }
        if self.statusCode != nil {
            map["StatusCode"] = self.statusCode!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Data") {
            var model = QueryCopyrightExtractResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("Message") {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestID") {
            self.requestID = dict["RequestID"] as! String
        }
        if dict.keys.contains("StatusCode") {
            self.statusCode = dict["StatusCode"] as! Int64
        }
    }
}

public class QueryCopyrightExtractResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: QueryCopyrightExtractResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
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
            var model = QueryCopyrightExtractResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class QueryTraceAbRequest : Tea.TeaModel {
    public var jobId: String?

    public var mediaId: String?

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
        if self.jobId != nil {
            map["JobId"] = self.jobId!
        }
        if self.mediaId != nil {
            map["MediaId"] = self.mediaId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("JobId") {
            self.jobId = dict["JobId"] as! String
        }
        if dict.keys.contains("MediaId") {
            self.mediaId = dict["MediaId"] as! String
        }
    }
}

public class QueryTraceAbResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var callback: String?

        public var gmtCreate: Int64?

        public var gmtModified: Int64?

        public var input: String?

        public var jobId: String?

        public var level: Int64?

        public var mediaId: String?

        public var output: String?

        public var result: String?

        public var status: String?

        public var userData: String?

        public var userId: Int64?

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
            if self.callback != nil {
                map["Callback"] = self.callback!
            }
            if self.gmtCreate != nil {
                map["GmtCreate"] = self.gmtCreate!
            }
            if self.gmtModified != nil {
                map["GmtModified"] = self.gmtModified!
            }
            if self.input != nil {
                map["Input"] = self.input!
            }
            if self.jobId != nil {
                map["JobId"] = self.jobId!
            }
            if self.level != nil {
                map["Level"] = self.level!
            }
            if self.mediaId != nil {
                map["MediaId"] = self.mediaId!
            }
            if self.output != nil {
                map["Output"] = self.output!
            }
            if self.result != nil {
                map["Result"] = self.result!
            }
            if self.status != nil {
                map["Status"] = self.status!
            }
            if self.userData != nil {
                map["UserData"] = self.userData!
            }
            if self.userId != nil {
                map["UserId"] = self.userId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Callback") {
                self.callback = dict["Callback"] as! String
            }
            if dict.keys.contains("GmtCreate") {
                self.gmtCreate = dict["GmtCreate"] as! Int64
            }
            if dict.keys.contains("GmtModified") {
                self.gmtModified = dict["GmtModified"] as! Int64
            }
            if dict.keys.contains("Input") {
                self.input = dict["Input"] as! String
            }
            if dict.keys.contains("JobId") {
                self.jobId = dict["JobId"] as! String
            }
            if dict.keys.contains("Level") {
                self.level = dict["Level"] as! Int64
            }
            if dict.keys.contains("MediaId") {
                self.mediaId = dict["MediaId"] as! String
            }
            if dict.keys.contains("Output") {
                self.output = dict["Output"] as! String
            }
            if dict.keys.contains("Result") {
                self.result = dict["Result"] as! String
            }
            if dict.keys.contains("Status") {
                self.status = dict["Status"] as! String
            }
            if dict.keys.contains("UserData") {
                self.userData = dict["UserData"] as! String
            }
            if dict.keys.contains("UserId") {
                self.userId = dict["UserId"] as! Int64
            }
        }
    }
    public var data: [QueryTraceAbResponseBody.Data]?

    public var message: String?

    public var requestID: String?

    public var statusCode: Int64?

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
        if self.data != nil {
            var tmp : [Any] = []
            for k in self.data! {
                tmp.append(k.toMap())
            }
            map["Data"] = tmp
        }
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.requestID != nil {
            map["RequestID"] = self.requestID!
        }
        if self.statusCode != nil {
            map["StatusCode"] = self.statusCode!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Data") {
            self.data = dict["Data"] as! [QueryTraceAbResponseBody.Data]
        }
        if dict.keys.contains("Message") {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestID") {
            self.requestID = dict["RequestID"] as! String
        }
        if dict.keys.contains("StatusCode") {
            self.statusCode = dict["StatusCode"] as! Int64
        }
    }
}

public class QueryTraceAbResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: QueryTraceAbResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
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
            var model = QueryTraceAbResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class QueryTraceExtractRequest : Tea.TeaModel {
    public var jobId: String?

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
        if self.jobId != nil {
            map["JobId"] = self.jobId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("JobId") {
            self.jobId = dict["JobId"] as! String
        }
    }
}

public class QueryTraceExtractResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var trace: String?

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
            if self.trace != nil {
                map["Trace"] = self.trace!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Trace") {
                self.trace = dict["Trace"] as! String
            }
        }
    }
    public var data: QueryTraceExtractResponseBody.Data?

    public var message: String?

    public var requestID: String?

    public var statusCode: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.data?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.data != nil {
            map["Data"] = self.data?.toMap()
        }
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.requestID != nil {
            map["RequestID"] = self.requestID!
        }
        if self.statusCode != nil {
            map["StatusCode"] = self.statusCode!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Data") {
            var model = QueryTraceExtractResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("Message") {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestID") {
            self.requestID = dict["RequestID"] as! String
        }
        if dict.keys.contains("StatusCode") {
            self.statusCode = dict["StatusCode"] as! Int64
        }
    }
}

public class QueryTraceExtractResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: QueryTraceExtractResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
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
            var model = QueryTraceExtractResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class QueryTraceMuRequest : Tea.TeaModel {
    public var createTimeEnd: Int64?

    public var createTimeStart: Int64?

    public var jobId: String?

    public var level: Int64?

    public var messageId: Int64?

    public var pageNumber: Int64?

    public var pageSize: Int64?

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
        if self.createTimeEnd != nil {
            map["CreateTimeEnd"] = self.createTimeEnd!
        }
        if self.createTimeStart != nil {
            map["CreateTimeStart"] = self.createTimeStart!
        }
        if self.jobId != nil {
            map["JobId"] = self.jobId!
        }
        if self.level != nil {
            map["Level"] = self.level!
        }
        if self.messageId != nil {
            map["MessageId"] = self.messageId!
        }
        if self.pageNumber != nil {
            map["PageNumber"] = self.pageNumber!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("CreateTimeEnd") {
            self.createTimeEnd = dict["CreateTimeEnd"] as! Int64
        }
        if dict.keys.contains("CreateTimeStart") {
            self.createTimeStart = dict["CreateTimeStart"] as! Int64
        }
        if dict.keys.contains("JobId") {
            self.jobId = dict["JobId"] as! String
        }
        if dict.keys.contains("Level") {
            self.level = dict["Level"] as! Int64
        }
        if dict.keys.contains("MessageId") {
            self.messageId = dict["MessageId"] as! Int64
        }
        if dict.keys.contains("PageNumber") {
            self.pageNumber = dict["PageNumber"] as! Int64
        }
        if dict.keys.contains("PageSize") {
            self.pageSize = dict["PageSize"] as! Int64
        }
    }
}

public class QueryTraceMuResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var gmtCreate: Int64?

        public var gmtModified: Int64?

        public var jobId: String?

        public var mediaId: String?

        public var output: String?

        public var status: String?

        public var trace: String?

        public var traceId: Int64?

        public var userData: String?

        public var userId: Int64?

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
            if self.gmtCreate != nil {
                map["GmtCreate"] = self.gmtCreate!
            }
            if self.gmtModified != nil {
                map["GmtModified"] = self.gmtModified!
            }
            if self.jobId != nil {
                map["JobId"] = self.jobId!
            }
            if self.mediaId != nil {
                map["MediaId"] = self.mediaId!
            }
            if self.output != nil {
                map["Output"] = self.output!
            }
            if self.status != nil {
                map["Status"] = self.status!
            }
            if self.trace != nil {
                map["Trace"] = self.trace!
            }
            if self.traceId != nil {
                map["TraceId"] = self.traceId!
            }
            if self.userData != nil {
                map["UserData"] = self.userData!
            }
            if self.userId != nil {
                map["UserId"] = self.userId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("GmtCreate") {
                self.gmtCreate = dict["GmtCreate"] as! Int64
            }
            if dict.keys.contains("GmtModified") {
                self.gmtModified = dict["GmtModified"] as! Int64
            }
            if dict.keys.contains("JobId") {
                self.jobId = dict["JobId"] as! String
            }
            if dict.keys.contains("MediaId") {
                self.mediaId = dict["MediaId"] as! String
            }
            if dict.keys.contains("Output") {
                self.output = dict["Output"] as! String
            }
            if dict.keys.contains("Status") {
                self.status = dict["Status"] as! String
            }
            if dict.keys.contains("Trace") {
                self.trace = dict["Trace"] as! String
            }
            if dict.keys.contains("TraceId") {
                self.traceId = dict["TraceId"] as! Int64
            }
            if dict.keys.contains("UserData") {
                self.userData = dict["UserData"] as! String
            }
            if dict.keys.contains("UserId") {
                self.userId = dict["UserId"] as! Int64
            }
        }
    }
    public var data: [QueryTraceMuResponseBody.Data]?

    public var message: String?

    public var requestID: String?

    public var statusCode: Int64?

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
        if self.data != nil {
            var tmp : [Any] = []
            for k in self.data! {
                tmp.append(k.toMap())
            }
            map["Data"] = tmp
        }
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.requestID != nil {
            map["RequestID"] = self.requestID!
        }
        if self.statusCode != nil {
            map["StatusCode"] = self.statusCode!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Data") {
            self.data = dict["Data"] as! [QueryTraceMuResponseBody.Data]
        }
        if dict.keys.contains("Message") {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestID") {
            self.requestID = dict["RequestID"] as! String
        }
        if dict.keys.contains("StatusCode") {
            self.statusCode = dict["StatusCode"] as! Int64
        }
    }
}

public class QueryTraceMuResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: QueryTraceMuResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
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
            var model = QueryTraceMuResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class SubmitCopyrightExtractRequest : Tea.TeaModel {
    public var callBack: String?

    public var input: String?

    public var url: String?

    public var userData: String?

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
        if self.callBack != nil {
            map["CallBack"] = self.callBack!
        }
        if self.input != nil {
            map["Input"] = self.input!
        }
        if self.url != nil {
            map["Url"] = self.url!
        }
        if self.userData != nil {
            map["UserData"] = self.userData!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("CallBack") {
            self.callBack = dict["CallBack"] as! String
        }
        if dict.keys.contains("Input") {
            self.input = dict["Input"] as! String
        }
        if dict.keys.contains("Url") {
            self.url = dict["Url"] as! String
        }
        if dict.keys.contains("UserData") {
            self.userData = dict["UserData"] as! String
        }
    }
}

public class SubmitCopyrightExtractResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var jobId: String?

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
            if self.jobId != nil {
                map["JobId"] = self.jobId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("JobId") {
                self.jobId = dict["JobId"] as! String
            }
        }
    }
    public var data: SubmitCopyrightExtractResponseBody.Data?

    public var message: String?

    public var requestID: String?

    public var statusCode: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.data?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.data != nil {
            map["Data"] = self.data?.toMap()
        }
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.requestID != nil {
            map["RequestID"] = self.requestID!
        }
        if self.statusCode != nil {
            map["StatusCode"] = self.statusCode!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Data") {
            var model = SubmitCopyrightExtractResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("Message") {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestID") {
            self.requestID = dict["RequestID"] as! String
        }
        if dict.keys.contains("StatusCode") {
            self.statusCode = dict["StatusCode"] as! Int64
        }
    }
}

public class SubmitCopyrightExtractResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: SubmitCopyrightExtractResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
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
            var model = SubmitCopyrightExtractResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class SubmitCopyrightJobRequest : Tea.TeaModel {
    public var callBack: String?

    public var description_: String?

    public var input: String?

    public var level: Int64?

    public var message: String?

    public var output: String?

    public var startTime: Int64?

    public var totalTime: Int64?

    public var url: String?

    public var userData: String?

    public var visibleMessage: String?

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
        if self.callBack != nil {
            map["CallBack"] = self.callBack!
        }
        if self.description_ != nil {
            map["Description"] = self.description_!
        }
        if self.input != nil {
            map["Input"] = self.input!
        }
        if self.level != nil {
            map["Level"] = self.level!
        }
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.output != nil {
            map["Output"] = self.output!
        }
        if self.startTime != nil {
            map["StartTime"] = self.startTime!
        }
        if self.totalTime != nil {
            map["TotalTime"] = self.totalTime!
        }
        if self.url != nil {
            map["Url"] = self.url!
        }
        if self.userData != nil {
            map["UserData"] = self.userData!
        }
        if self.visibleMessage != nil {
            map["VisibleMessage"] = self.visibleMessage!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("CallBack") {
            self.callBack = dict["CallBack"] as! String
        }
        if dict.keys.contains("Description") {
            self.description_ = dict["Description"] as! String
        }
        if dict.keys.contains("Input") {
            self.input = dict["Input"] as! String
        }
        if dict.keys.contains("Level") {
            self.level = dict["Level"] as! Int64
        }
        if dict.keys.contains("Message") {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("Output") {
            self.output = dict["Output"] as! String
        }
        if dict.keys.contains("StartTime") {
            self.startTime = dict["StartTime"] as! Int64
        }
        if dict.keys.contains("TotalTime") {
            self.totalTime = dict["TotalTime"] as! Int64
        }
        if dict.keys.contains("Url") {
            self.url = dict["Url"] as! String
        }
        if dict.keys.contains("UserData") {
            self.userData = dict["UserData"] as! String
        }
        if dict.keys.contains("VisibleMessage") {
            self.visibleMessage = dict["VisibleMessage"] as! String
        }
    }
}

public class SubmitCopyrightJobResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var jobId: String?

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
            if self.jobId != nil {
                map["JobId"] = self.jobId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("JobId") {
                self.jobId = dict["JobId"] as! String
            }
        }
    }
    public var data: SubmitCopyrightJobResponseBody.Data?

    public var message: String?

    public var requestID: String?

    public var statusCode: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.data?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.data != nil {
            map["Data"] = self.data?.toMap()
        }
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.requestID != nil {
            map["RequestID"] = self.requestID!
        }
        if self.statusCode != nil {
            map["StatusCode"] = self.statusCode!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Data") {
            var model = SubmitCopyrightJobResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("Message") {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestID") {
            self.requestID = dict["RequestID"] as! String
        }
        if dict.keys.contains("StatusCode") {
            self.statusCode = dict["StatusCode"] as! Int64
        }
    }
}

public class SubmitCopyrightJobResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: SubmitCopyrightJobResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
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
            var model = SubmitCopyrightJobResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class SubmitImageCopyrightRequest : Tea.TeaModel {
    public var input: String?

    public var level: Int64?

    public var message: String?

    public var output: String?

    public var params: String?

    public var url: String?

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
        if self.input != nil {
            map["Input"] = self.input!
        }
        if self.level != nil {
            map["Level"] = self.level!
        }
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.output != nil {
            map["Output"] = self.output!
        }
        if self.params != nil {
            map["Params"] = self.params!
        }
        if self.url != nil {
            map["Url"] = self.url!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Input") {
            self.input = dict["Input"] as! String
        }
        if dict.keys.contains("Level") {
            self.level = dict["Level"] as! Int64
        }
        if dict.keys.contains("Message") {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("Output") {
            self.output = dict["Output"] as! String
        }
        if dict.keys.contains("Params") {
            self.params = dict["Params"] as! String
        }
        if dict.keys.contains("Url") {
            self.url = dict["Url"] as! String
        }
    }
}

public class SubmitImageCopyrightResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var jobId: String?

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
            if self.jobId != nil {
                map["JobId"] = self.jobId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("JobId") {
                self.jobId = dict["JobId"] as! String
            }
        }
    }
    public var data: SubmitImageCopyrightResponseBody.Data?

    public var message: String?

    public var requestID: String?

    public var statusCode: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.data?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.data != nil {
            map["Data"] = self.data?.toMap()
        }
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.requestID != nil {
            map["RequestID"] = self.requestID!
        }
        if self.statusCode != nil {
            map["StatusCode"] = self.statusCode!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Data") {
            var model = SubmitImageCopyrightResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("Message") {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestID") {
            self.requestID = dict["RequestID"] as! String
        }
        if dict.keys.contains("StatusCode") {
            self.statusCode = dict["StatusCode"] as! Int64
        }
    }
}

public class SubmitImageCopyrightResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: SubmitImageCopyrightResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
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
            var model = SubmitImageCopyrightResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class SubmitTraceAbRequest : Tea.TeaModel {
    public var callBack: String?

    public var cipherBase64ed: String?

    public var input: String?

    public var level: Int64?

    public var output: String?

    public var startTime: Int64?

    public var totalTime: Int64?

    public var url: String?

    public var userData: String?

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
        if self.callBack != nil {
            map["CallBack"] = self.callBack!
        }
        if self.cipherBase64ed != nil {
            map["CipherBase64ed"] = self.cipherBase64ed!
        }
        if self.input != nil {
            map["Input"] = self.input!
        }
        if self.level != nil {
            map["Level"] = self.level!
        }
        if self.output != nil {
            map["Output"] = self.output!
        }
        if self.startTime != nil {
            map["StartTime"] = self.startTime!
        }
        if self.totalTime != nil {
            map["TotalTime"] = self.totalTime!
        }
        if self.url != nil {
            map["Url"] = self.url!
        }
        if self.userData != nil {
            map["UserData"] = self.userData!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("CallBack") {
            self.callBack = dict["CallBack"] as! String
        }
        if dict.keys.contains("CipherBase64ed") {
            self.cipherBase64ed = dict["CipherBase64ed"] as! String
        }
        if dict.keys.contains("Input") {
            self.input = dict["Input"] as! String
        }
        if dict.keys.contains("Level") {
            self.level = dict["Level"] as! Int64
        }
        if dict.keys.contains("Output") {
            self.output = dict["Output"] as! String
        }
        if dict.keys.contains("StartTime") {
            self.startTime = dict["StartTime"] as! Int64
        }
        if dict.keys.contains("TotalTime") {
            self.totalTime = dict["TotalTime"] as! Int64
        }
        if dict.keys.contains("Url") {
            self.url = dict["Url"] as! String
        }
        if dict.keys.contains("UserData") {
            self.userData = dict["UserData"] as! String
        }
    }
}

public class SubmitTraceAbResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var jobId: String?

        public var mediaId: String?

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
            if self.jobId != nil {
                map["JobId"] = self.jobId!
            }
            if self.mediaId != nil {
                map["MediaId"] = self.mediaId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("JobId") {
                self.jobId = dict["JobId"] as! String
            }
            if dict.keys.contains("MediaId") {
                self.mediaId = dict["MediaId"] as! String
            }
        }
    }
    public var data: SubmitTraceAbResponseBody.Data?

    public var message: String?

    public var requestID: String?

    public var statusCode: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.data?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.data != nil {
            map["Data"] = self.data?.toMap()
        }
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.requestID != nil {
            map["RequestID"] = self.requestID!
        }
        if self.statusCode != nil {
            map["StatusCode"] = self.statusCode!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Data") {
            var model = SubmitTraceAbResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("Message") {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestID") {
            self.requestID = dict["RequestID"] as! String
        }
        if dict.keys.contains("StatusCode") {
            self.statusCode = dict["StatusCode"] as! Int64
        }
    }
}

public class SubmitTraceAbResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: SubmitTraceAbResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
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
            var model = SubmitTraceAbResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class SubmitTraceExtractRequest : Tea.TeaModel {
    public var callBack: String?

    public var input: String?

    public var url: String?

    public var userData: String?

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
        if self.callBack != nil {
            map["CallBack"] = self.callBack!
        }
        if self.input != nil {
            map["Input"] = self.input!
        }
        if self.url != nil {
            map["Url"] = self.url!
        }
        if self.userData != nil {
            map["UserData"] = self.userData!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("CallBack") {
            self.callBack = dict["CallBack"] as! String
        }
        if dict.keys.contains("Input") {
            self.input = dict["Input"] as! String
        }
        if dict.keys.contains("Url") {
            self.url = dict["Url"] as! String
        }
        if dict.keys.contains("UserData") {
            self.userData = dict["UserData"] as! String
        }
    }
}

public class SubmitTraceExtractResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var jobId: String?

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
            if self.jobId != nil {
                map["JobId"] = self.jobId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("JobId") {
                self.jobId = dict["JobId"] as! String
            }
        }
    }
    public var data: SubmitTraceExtractResponseBody.Data?

    public var message: String?

    public var requestID: String?

    public var statusCode: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.data?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.data != nil {
            map["Data"] = self.data?.toMap()
        }
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.requestID != nil {
            map["RequestID"] = self.requestID!
        }
        if self.statusCode != nil {
            map["StatusCode"] = self.statusCode!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Data") {
            var model = SubmitTraceExtractResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("Message") {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestID") {
            self.requestID = dict["RequestID"] as! String
        }
        if dict.keys.contains("StatusCode") {
            self.statusCode = dict["StatusCode"] as! Int64
        }
    }
}

public class SubmitTraceExtractResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: SubmitTraceExtractResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
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
            var model = SubmitTraceExtractResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class SubmitTracemuRequest : Tea.TeaModel {
    public var keyUri: String?

    public var mediaId: String?

    public var output: String?

    public var trace: String?

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
        if self.keyUri != nil {
            map["KeyUri"] = self.keyUri!
        }
        if self.mediaId != nil {
            map["MediaId"] = self.mediaId!
        }
        if self.output != nil {
            map["Output"] = self.output!
        }
        if self.trace != nil {
            map["Trace"] = self.trace!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("KeyUri") {
            self.keyUri = dict["KeyUri"] as! String
        }
        if dict.keys.contains("MediaId") {
            self.mediaId = dict["MediaId"] as! String
        }
        if dict.keys.contains("Output") {
            self.output = dict["Output"] as! String
        }
        if dict.keys.contains("Trace") {
            self.trace = dict["Trace"] as! String
        }
    }
}

public class SubmitTracemuResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var code: String?

        public var jobId: String?

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
            if self.code != nil {
                map["Code"] = self.code!
            }
            if self.jobId != nil {
                map["JobId"] = self.jobId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Code") {
                self.code = dict["Code"] as! String
            }
            if dict.keys.contains("JobId") {
                self.jobId = dict["JobId"] as! String
            }
        }
    }
    public var data: SubmitTracemuResponseBody.Data?

    public var message: String?

    public var requestID: String?

    public var statusCode: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.data?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.data != nil {
            map["Data"] = self.data?.toMap()
        }
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.requestID != nil {
            map["RequestID"] = self.requestID!
        }
        if self.statusCode != nil {
            map["StatusCode"] = self.statusCode!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Data") {
            var model = SubmitTracemuResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("Message") {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestID") {
            self.requestID = dict["RequestID"] as! String
        }
        if dict.keys.contains("StatusCode") {
            self.statusCode = dict["StatusCode"] as! Int64
        }
    }
}

public class SubmitTracemuResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: SubmitTracemuResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
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
            var model = SubmitTracemuResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}
