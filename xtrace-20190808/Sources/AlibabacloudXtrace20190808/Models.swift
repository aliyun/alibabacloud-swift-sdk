import Foundation
import Tea
import TeaUtils
import AlibabacloudOpenApi
import AlibabaCloudOpenApiUtil
import AlibabacloudEndpointUtil

public class CheckCommercialStatusRequest : Tea.TeaModel {
    public var regionId: String?

    public var service: String?

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
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.service != nil {
            map["Service"] = self.service!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RegionId") && dict["RegionId"] != nil {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("Service") && dict["Service"] != nil {
            self.service = dict["Service"] as! String
        }
    }
}

public class CheckCommercialStatusResponseBody : Tea.TeaModel {
    public var data: String?

    public var requestId: String?

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
            map["Data"] = self.data!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Data") && dict["Data"] != nil {
            self.data = dict["Data"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class CheckCommercialStatusResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CheckCommercialStatusResponseBody?

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
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = CheckCommercialStatusResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetTagKeyRequest : Tea.TeaModel {
    public var endTime: Int64?

    public var regionId: String?

    public var serviceName: String?

    public var spanName: String?

    public var startTime: Int64?

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
        if self.endTime != nil {
            map["EndTime"] = self.endTime!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.serviceName != nil {
            map["ServiceName"] = self.serviceName!
        }
        if self.spanName != nil {
            map["SpanName"] = self.spanName!
        }
        if self.startTime != nil {
            map["StartTime"] = self.startTime!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("EndTime") && dict["EndTime"] != nil {
            self.endTime = dict["EndTime"] as! Int64
        }
        if dict.keys.contains("RegionId") && dict["RegionId"] != nil {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("ServiceName") && dict["ServiceName"] != nil {
            self.serviceName = dict["ServiceName"] as! String
        }
        if dict.keys.contains("SpanName") && dict["SpanName"] != nil {
            self.spanName = dict["SpanName"] as! String
        }
        if dict.keys.contains("StartTime") && dict["StartTime"] != nil {
            self.startTime = dict["StartTime"] as! Int64
        }
    }
}

public class GetTagKeyResponseBody : Tea.TeaModel {
    public class TagKeys : Tea.TeaModel {
        public var tagKey: [String]?

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
            if self.tagKey != nil {
                map["TagKey"] = self.tagKey!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("TagKey") && dict["TagKey"] != nil {
                self.tagKey = dict["TagKey"] as! [String]
            }
        }
    }
    public var requestId: String?

    public var tagKeys: GetTagKeyResponseBody.TagKeys?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.tagKeys?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.tagKeys != nil {
            map["TagKeys"] = self.tagKeys?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("TagKeys") && dict["TagKeys"] != nil {
            var model = GetTagKeyResponseBody.TagKeys()
            model.fromMap(dict["TagKeys"] as! [String: Any])
            self.tagKeys = model
        }
    }
}

public class GetTagKeyResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetTagKeyResponseBody?

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
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = GetTagKeyResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetTagValRequest : Tea.TeaModel {
    public var endTime: Int64?

    public var regionId: String?

    public var serviceName: String?

    public var spanName: String?

    public var startTime: Int64?

    public var tagKey: String?

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
        if self.endTime != nil {
            map["EndTime"] = self.endTime!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.serviceName != nil {
            map["ServiceName"] = self.serviceName!
        }
        if self.spanName != nil {
            map["SpanName"] = self.spanName!
        }
        if self.startTime != nil {
            map["StartTime"] = self.startTime!
        }
        if self.tagKey != nil {
            map["TagKey"] = self.tagKey!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("EndTime") && dict["EndTime"] != nil {
            self.endTime = dict["EndTime"] as! Int64
        }
        if dict.keys.contains("RegionId") && dict["RegionId"] != nil {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("ServiceName") && dict["ServiceName"] != nil {
            self.serviceName = dict["ServiceName"] as! String
        }
        if dict.keys.contains("SpanName") && dict["SpanName"] != nil {
            self.spanName = dict["SpanName"] as! String
        }
        if dict.keys.contains("StartTime") && dict["StartTime"] != nil {
            self.startTime = dict["StartTime"] as! Int64
        }
        if dict.keys.contains("TagKey") && dict["TagKey"] != nil {
            self.tagKey = dict["TagKey"] as! String
        }
    }
}

public class GetTagValResponseBody : Tea.TeaModel {
    public class TagValues : Tea.TeaModel {
        public var tagValue: [String]?

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
            if self.tagValue != nil {
                map["TagValue"] = self.tagValue!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("TagValue") && dict["TagValue"] != nil {
                self.tagValue = dict["TagValue"] as! [String]
            }
        }
    }
    public var requestId: String?

    public var tagValues: GetTagValResponseBody.TagValues?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.tagValues?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.tagValues != nil {
            map["TagValues"] = self.tagValues?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("TagValues") && dict["TagValues"] != nil {
            var model = GetTagValResponseBody.TagValues()
            model.fromMap(dict["TagValues"] as! [String: Any])
            self.tagValues = model
        }
    }
}

public class GetTagValResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetTagValResponseBody?

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
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = GetTagValResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetTraceRequest : Tea.TeaModel {
    public var appType: String?

    public var regionId: String?

    public var traceID: String?

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
        if self.appType != nil {
            map["AppType"] = self.appType!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.traceID != nil {
            map["TraceID"] = self.traceID!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AppType") && dict["AppType"] != nil {
            self.appType = dict["AppType"] as! String
        }
        if dict.keys.contains("RegionId") && dict["RegionId"] != nil {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("TraceID") && dict["TraceID"] != nil {
            self.traceID = dict["TraceID"] as! String
        }
    }
}

public class GetTraceResponseBody : Tea.TeaModel {
    public class Spans : Tea.TeaModel {
        public class Span : Tea.TeaModel {
            public class LogEventList : Tea.TeaModel {
                public class LogEvent : Tea.TeaModel {
                    public class TagEntryList : Tea.TeaModel {
                        public class TagEntry : Tea.TeaModel {
                            public var key: String?

                            public var value: String?

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
                                if self.key != nil {
                                    map["Key"] = self.key!
                                }
                                if self.value != nil {
                                    map["Value"] = self.value!
                                }
                                return map
                            }

                            public override func fromMap(_ dict: [String: Any]) -> Void {
                                if dict.keys.contains("Key") && dict["Key"] != nil {
                                    self.key = dict["Key"] as! String
                                }
                                if dict.keys.contains("Value") && dict["Value"] != nil {
                                    self.value = dict["Value"] as! String
                                }
                            }
                        }
                        public var tagEntry: [GetTraceResponseBody.Spans.Span.LogEventList.LogEvent.TagEntryList.TagEntry]?

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
                            if self.tagEntry != nil {
                                var tmp : [Any] = []
                                for k in self.tagEntry! {
                                    tmp.append(k.toMap())
                                }
                                map["TagEntry"] = tmp
                            }
                            return map
                        }

                        public override func fromMap(_ dict: [String: Any]) -> Void {
                            if dict.keys.contains("TagEntry") && dict["TagEntry"] != nil {
                                var tmp : [GetTraceResponseBody.Spans.Span.LogEventList.LogEvent.TagEntryList.TagEntry] = []
                                for v in dict["TagEntry"] as! [Any] {
                                    var model = GetTraceResponseBody.Spans.Span.LogEventList.LogEvent.TagEntryList.TagEntry()
                                    if v != nil {
                                        model.fromMap(v as! [String: Any])
                                    }
                                    tmp.append(model)
                                }
                                self.tagEntry = tmp
                            }
                        }
                    }
                    public var tagEntryList: GetTraceResponseBody.Spans.Span.LogEventList.LogEvent.TagEntryList?

                    public var timestamp: Int64?

                    public override init() {
                        super.init()
                    }

                    public init(_ dict: [String: Any]) {
                        super.init()
                        self.fromMap(dict)
                    }

                    public override func validate() throws -> Void {
                        try self.tagEntryList?.validate()
                    }

                    public override func toMap() -> [String : Any] {
                        var map = super.toMap()
                        if self.tagEntryList != nil {
                            map["TagEntryList"] = self.tagEntryList?.toMap()
                        }
                        if self.timestamp != nil {
                            map["Timestamp"] = self.timestamp!
                        }
                        return map
                    }

                    public override func fromMap(_ dict: [String: Any]) -> Void {
                        if dict.keys.contains("TagEntryList") && dict["TagEntryList"] != nil {
                            var model = GetTraceResponseBody.Spans.Span.LogEventList.LogEvent.TagEntryList()
                            model.fromMap(dict["TagEntryList"] as! [String: Any])
                            self.tagEntryList = model
                        }
                        if dict.keys.contains("Timestamp") && dict["Timestamp"] != nil {
                            self.timestamp = dict["Timestamp"] as! Int64
                        }
                    }
                }
                public var logEvent: [GetTraceResponseBody.Spans.Span.LogEventList.LogEvent]?

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
                    if self.logEvent != nil {
                        var tmp : [Any] = []
                        for k in self.logEvent! {
                            tmp.append(k.toMap())
                        }
                        map["LogEvent"] = tmp
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("LogEvent") && dict["LogEvent"] != nil {
                        var tmp : [GetTraceResponseBody.Spans.Span.LogEventList.LogEvent] = []
                        for v in dict["LogEvent"] as! [Any] {
                            var model = GetTraceResponseBody.Spans.Span.LogEventList.LogEvent()
                            if v != nil {
                                model.fromMap(v as! [String: Any])
                            }
                            tmp.append(model)
                        }
                        self.logEvent = tmp
                    }
                }
            }
            public class TagEntryList : Tea.TeaModel {
                public class TagEntry : Tea.TeaModel {
                    public var key: String?

                    public var value: String?

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
                        if self.key != nil {
                            map["Key"] = self.key!
                        }
                        if self.value != nil {
                            map["Value"] = self.value!
                        }
                        return map
                    }

                    public override func fromMap(_ dict: [String: Any]) -> Void {
                        if dict.keys.contains("Key") && dict["Key"] != nil {
                            self.key = dict["Key"] as! String
                        }
                        if dict.keys.contains("Value") && dict["Value"] != nil {
                            self.value = dict["Value"] as! String
                        }
                    }
                }
                public var tagEntry: [GetTraceResponseBody.Spans.Span.TagEntryList.TagEntry]?

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
                    if self.tagEntry != nil {
                        var tmp : [Any] = []
                        for k in self.tagEntry! {
                            tmp.append(k.toMap())
                        }
                        map["TagEntry"] = tmp
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("TagEntry") && dict["TagEntry"] != nil {
                        var tmp : [GetTraceResponseBody.Spans.Span.TagEntryList.TagEntry] = []
                        for v in dict["TagEntry"] as! [Any] {
                            var model = GetTraceResponseBody.Spans.Span.TagEntryList.TagEntry()
                            if v != nil {
                                model.fromMap(v as! [String: Any])
                            }
                            tmp.append(model)
                        }
                        self.tagEntry = tmp
                    }
                }
            }
            public var duration: Int64?

            public var haveStack: Bool?

            public var logEventList: GetTraceResponseBody.Spans.Span.LogEventList?

            public var operationName: String?

            public var parentSpanId: String?

            public var resultCode: String?

            public var rpcId: String?

            public var serviceIp: String?

            public var serviceName: String?

            public var spanId: String?

            public var tagEntryList: GetTraceResponseBody.Spans.Span.TagEntryList?

            public var timestamp: Int64?

            public var traceID: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
                try self.logEventList?.validate()
                try self.tagEntryList?.validate()
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.duration != nil {
                    map["Duration"] = self.duration!
                }
                if self.haveStack != nil {
                    map["HaveStack"] = self.haveStack!
                }
                if self.logEventList != nil {
                    map["LogEventList"] = self.logEventList?.toMap()
                }
                if self.operationName != nil {
                    map["OperationName"] = self.operationName!
                }
                if self.parentSpanId != nil {
                    map["ParentSpanId"] = self.parentSpanId!
                }
                if self.resultCode != nil {
                    map["ResultCode"] = self.resultCode!
                }
                if self.rpcId != nil {
                    map["RpcId"] = self.rpcId!
                }
                if self.serviceIp != nil {
                    map["ServiceIp"] = self.serviceIp!
                }
                if self.serviceName != nil {
                    map["ServiceName"] = self.serviceName!
                }
                if self.spanId != nil {
                    map["SpanId"] = self.spanId!
                }
                if self.tagEntryList != nil {
                    map["TagEntryList"] = self.tagEntryList?.toMap()
                }
                if self.timestamp != nil {
                    map["Timestamp"] = self.timestamp!
                }
                if self.traceID != nil {
                    map["TraceID"] = self.traceID!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("Duration") && dict["Duration"] != nil {
                    self.duration = dict["Duration"] as! Int64
                }
                if dict.keys.contains("HaveStack") && dict["HaveStack"] != nil {
                    self.haveStack = dict["HaveStack"] as! Bool
                }
                if dict.keys.contains("LogEventList") && dict["LogEventList"] != nil {
                    var model = GetTraceResponseBody.Spans.Span.LogEventList()
                    model.fromMap(dict["LogEventList"] as! [String: Any])
                    self.logEventList = model
                }
                if dict.keys.contains("OperationName") && dict["OperationName"] != nil {
                    self.operationName = dict["OperationName"] as! String
                }
                if dict.keys.contains("ParentSpanId") && dict["ParentSpanId"] != nil {
                    self.parentSpanId = dict["ParentSpanId"] as! String
                }
                if dict.keys.contains("ResultCode") && dict["ResultCode"] != nil {
                    self.resultCode = dict["ResultCode"] as! String
                }
                if dict.keys.contains("RpcId") && dict["RpcId"] != nil {
                    self.rpcId = dict["RpcId"] as! String
                }
                if dict.keys.contains("ServiceIp") && dict["ServiceIp"] != nil {
                    self.serviceIp = dict["ServiceIp"] as! String
                }
                if dict.keys.contains("ServiceName") && dict["ServiceName"] != nil {
                    self.serviceName = dict["ServiceName"] as! String
                }
                if dict.keys.contains("SpanId") && dict["SpanId"] != nil {
                    self.spanId = dict["SpanId"] as! String
                }
                if dict.keys.contains("TagEntryList") && dict["TagEntryList"] != nil {
                    var model = GetTraceResponseBody.Spans.Span.TagEntryList()
                    model.fromMap(dict["TagEntryList"] as! [String: Any])
                    self.tagEntryList = model
                }
                if dict.keys.contains("Timestamp") && dict["Timestamp"] != nil {
                    self.timestamp = dict["Timestamp"] as! Int64
                }
                if dict.keys.contains("TraceID") && dict["TraceID"] != nil {
                    self.traceID = dict["TraceID"] as! String
                }
            }
        }
        public var span: [GetTraceResponseBody.Spans.Span]?

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
            if self.span != nil {
                var tmp : [Any] = []
                for k in self.span! {
                    tmp.append(k.toMap())
                }
                map["Span"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Span") && dict["Span"] != nil {
                var tmp : [GetTraceResponseBody.Spans.Span] = []
                for v in dict["Span"] as! [Any] {
                    var model = GetTraceResponseBody.Spans.Span()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.span = tmp
            }
        }
    }
    public var requestId: String?

    public var spans: GetTraceResponseBody.Spans?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.spans?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.spans != nil {
            map["Spans"] = self.spans?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Spans") && dict["Spans"] != nil {
            var model = GetTraceResponseBody.Spans()
            model.fromMap(dict["Spans"] as! [String: Any])
            self.spans = model
        }
    }
}

public class GetTraceResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetTraceResponseBody?

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
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = GetTraceResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListIpOrHostsRequest : Tea.TeaModel {
    public var endTime: Int64?

    public var regionId: String?

    public var serviceName: String?

    public var startTime: Int64?

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
        if self.endTime != nil {
            map["EndTime"] = self.endTime!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.serviceName != nil {
            map["ServiceName"] = self.serviceName!
        }
        if self.startTime != nil {
            map["StartTime"] = self.startTime!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("EndTime") && dict["EndTime"] != nil {
            self.endTime = dict["EndTime"] as! Int64
        }
        if dict.keys.contains("RegionId") && dict["RegionId"] != nil {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("ServiceName") && dict["ServiceName"] != nil {
            self.serviceName = dict["ServiceName"] as! String
        }
        if dict.keys.contains("StartTime") && dict["StartTime"] != nil {
            self.startTime = dict["StartTime"] as! Int64
        }
    }
}

public class ListIpOrHostsResponseBody : Tea.TeaModel {
    public class IpNames : Tea.TeaModel {
        public var ipName: [String]?

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
            if self.ipName != nil {
                map["IpName"] = self.ipName!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("IpName") && dict["IpName"] != nil {
                self.ipName = dict["IpName"] as! [String]
            }
        }
    }
    public var ipNames: ListIpOrHostsResponseBody.IpNames?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.ipNames?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.ipNames != nil {
            map["IpNames"] = self.ipNames?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("IpNames") && dict["IpNames"] != nil {
            var model = ListIpOrHostsResponseBody.IpNames()
            model.fromMap(dict["IpNames"] as! [String: Any])
            self.ipNames = model
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class ListIpOrHostsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListIpOrHostsResponseBody?

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
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = ListIpOrHostsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListServicesRequest : Tea.TeaModel {
    public var appType: String?

    public var regionId: String?

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
        if self.appType != nil {
            map["AppType"] = self.appType!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AppType") && dict["AppType"] != nil {
            self.appType = dict["AppType"] as! String
        }
        if dict.keys.contains("RegionId") && dict["RegionId"] != nil {
            self.regionId = dict["RegionId"] as! String
        }
    }
}

public class ListServicesResponseBody : Tea.TeaModel {
    public class Services : Tea.TeaModel {
        public class Service : Tea.TeaModel {
            public var pid: String?

            public var regionId: String?

            public var serviceName: String?

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
                if self.pid != nil {
                    map["Pid"] = self.pid!
                }
                if self.regionId != nil {
                    map["RegionId"] = self.regionId!
                }
                if self.serviceName != nil {
                    map["ServiceName"] = self.serviceName!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("Pid") && dict["Pid"] != nil {
                    self.pid = dict["Pid"] as! String
                }
                if dict.keys.contains("RegionId") && dict["RegionId"] != nil {
                    self.regionId = dict["RegionId"] as! String
                }
                if dict.keys.contains("ServiceName") && dict["ServiceName"] != nil {
                    self.serviceName = dict["ServiceName"] as! String
                }
            }
        }
        public var service: [ListServicesResponseBody.Services.Service]?

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
            if self.service != nil {
                var tmp : [Any] = []
                for k in self.service! {
                    tmp.append(k.toMap())
                }
                map["Service"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Service") && dict["Service"] != nil {
                var tmp : [ListServicesResponseBody.Services.Service] = []
                for v in dict["Service"] as! [Any] {
                    var model = ListServicesResponseBody.Services.Service()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.service = tmp
            }
        }
    }
    public var requestId: String?

    public var services: ListServicesResponseBody.Services?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.services?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.services != nil {
            map["Services"] = self.services?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Services") && dict["Services"] != nil {
            var model = ListServicesResponseBody.Services()
            model.fromMap(dict["Services"] as! [String: Any])
            self.services = model
        }
    }
}

public class ListServicesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListServicesResponseBody?

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
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = ListServicesResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListSpanNamesRequest : Tea.TeaModel {
    public var endTime: Int64?

    public var regionId: String?

    public var serviceName: String?

    public var startTime: Int64?

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
        if self.endTime != nil {
            map["EndTime"] = self.endTime!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.serviceName != nil {
            map["ServiceName"] = self.serviceName!
        }
        if self.startTime != nil {
            map["StartTime"] = self.startTime!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("EndTime") && dict["EndTime"] != nil {
            self.endTime = dict["EndTime"] as! Int64
        }
        if dict.keys.contains("RegionId") && dict["RegionId"] != nil {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("ServiceName") && dict["ServiceName"] != nil {
            self.serviceName = dict["ServiceName"] as! String
        }
        if dict.keys.contains("StartTime") && dict["StartTime"] != nil {
            self.startTime = dict["StartTime"] as! Int64
        }
    }
}

public class ListSpanNamesResponseBody : Tea.TeaModel {
    public class SpanNames : Tea.TeaModel {
        public var spanName: [String]?

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
            if self.spanName != nil {
                map["SpanName"] = self.spanName!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("SpanName") && dict["SpanName"] != nil {
                self.spanName = dict["SpanName"] as! [String]
            }
        }
    }
    public var requestId: String?

    public var spanNames: ListSpanNamesResponseBody.SpanNames?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.spanNames?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.spanNames != nil {
            map["SpanNames"] = self.spanNames?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("SpanNames") && dict["SpanNames"] != nil {
            var model = ListSpanNamesResponseBody.SpanNames()
            model.fromMap(dict["SpanNames"] as! [String: Any])
            self.spanNames = model
        }
    }
}

public class ListSpanNamesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListSpanNamesResponseBody?

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
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = ListSpanNamesResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class OpenXtraceServiceRequest : Tea.TeaModel {
    public var regionId: String?

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
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RegionId") && dict["RegionId"] != nil {
            self.regionId = dict["RegionId"] as! String
        }
    }
}

public class OpenXtraceServiceResponseBody : Tea.TeaModel {
    public var orderId: String?

    public var requestId: String?

    public var result: String?

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
        if self.orderId != nil {
            map["OrderId"] = self.orderId!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.result != nil {
            map["Result"] = self.result!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("OrderId") && dict["OrderId"] != nil {
            self.orderId = dict["OrderId"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Result") && dict["Result"] != nil {
            self.result = dict["Result"] as! String
        }
    }
}

public class OpenXtraceServiceResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: OpenXtraceServiceResponseBody?

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
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = OpenXtraceServiceResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class QueryMetricRequest : Tea.TeaModel {
    public class Filters : Tea.TeaModel {
        public var key: String?

        public var value: String?

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
            if self.key != nil {
                map["Key"] = self.key!
            }
            if self.value != nil {
                map["Value"] = self.value!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Key") && dict["Key"] != nil {
                self.key = dict["Key"] as! String
            }
            if dict.keys.contains("Value") && dict["Value"] != nil {
                self.value = dict["Value"] as! String
            }
        }
    }
    public var dimensions: [String]?

    public var endTime: Int64?

    public var filters: [QueryMetricRequest.Filters]?

    public var intervalInSec: Int32?

    public var limit: Int32?

    public var measures: [String]?

    public var metric: String?

    public var order: String?

    public var orderBy: String?

    public var proxyUserId: String?

    public var startTime: Int64?

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
        if self.dimensions != nil {
            map["Dimensions"] = self.dimensions!
        }
        if self.endTime != nil {
            map["EndTime"] = self.endTime!
        }
        if self.filters != nil {
            var tmp : [Any] = []
            for k in self.filters! {
                tmp.append(k.toMap())
            }
            map["Filters"] = tmp
        }
        if self.intervalInSec != nil {
            map["IntervalInSec"] = self.intervalInSec!
        }
        if self.limit != nil {
            map["Limit"] = self.limit!
        }
        if self.measures != nil {
            map["Measures"] = self.measures!
        }
        if self.metric != nil {
            map["Metric"] = self.metric!
        }
        if self.order != nil {
            map["Order"] = self.order!
        }
        if self.orderBy != nil {
            map["OrderBy"] = self.orderBy!
        }
        if self.proxyUserId != nil {
            map["ProxyUserId"] = self.proxyUserId!
        }
        if self.startTime != nil {
            map["StartTime"] = self.startTime!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Dimensions") && dict["Dimensions"] != nil {
            self.dimensions = dict["Dimensions"] as! [String]
        }
        if dict.keys.contains("EndTime") && dict["EndTime"] != nil {
            self.endTime = dict["EndTime"] as! Int64
        }
        if dict.keys.contains("Filters") && dict["Filters"] != nil {
            var tmp : [QueryMetricRequest.Filters] = []
            for v in dict["Filters"] as! [Any] {
                var model = QueryMetricRequest.Filters()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.filters = tmp
        }
        if dict.keys.contains("IntervalInSec") && dict["IntervalInSec"] != nil {
            self.intervalInSec = dict["IntervalInSec"] as! Int32
        }
        if dict.keys.contains("Limit") && dict["Limit"] != nil {
            self.limit = dict["Limit"] as! Int32
        }
        if dict.keys.contains("Measures") && dict["Measures"] != nil {
            self.measures = dict["Measures"] as! [String]
        }
        if dict.keys.contains("Metric") && dict["Metric"] != nil {
            self.metric = dict["Metric"] as! String
        }
        if dict.keys.contains("Order") && dict["Order"] != nil {
            self.order = dict["Order"] as! String
        }
        if dict.keys.contains("OrderBy") && dict["OrderBy"] != nil {
            self.orderBy = dict["OrderBy"] as! String
        }
        if dict.keys.contains("ProxyUserId") && dict["ProxyUserId"] != nil {
            self.proxyUserId = dict["ProxyUserId"] as! String
        }
        if dict.keys.contains("StartTime") && dict["StartTime"] != nil {
            self.startTime = dict["StartTime"] as! Int64
        }
    }
}

public class QueryMetricResponseBody : Tea.TeaModel {
    public var data: String?

    public var requestId: String?

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
            map["Data"] = self.data!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Data") && dict["Data"] != nil {
            self.data = dict["Data"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class QueryMetricResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: QueryMetricResponseBody?

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
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = QueryMetricResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class SearchTracesRequest : Tea.TeaModel {
    public class Tag : Tea.TeaModel {
        public var key: String?

        public var value: String?

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
            if self.key != nil {
                map["Key"] = self.key!
            }
            if self.value != nil {
                map["Value"] = self.value!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Key") && dict["Key"] != nil {
                self.key = dict["Key"] as! String
            }
            if dict.keys.contains("Value") && dict["Value"] != nil {
                self.value = dict["Value"] as! String
            }
        }
    }
    public var appType: String?

    public var endTime: Int64?

    public var minDuration: Int64?

    public var operationName: String?

    public var pageNumber: Int32?

    public var pageSize: Int32?

    public var regionId: String?

    public var reverse: Bool?

    public var serviceIp: String?

    public var serviceName: String?

    public var startTime: Int64?

    public var tag: [SearchTracesRequest.Tag]?

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
        if self.appType != nil {
            map["AppType"] = self.appType!
        }
        if self.endTime != nil {
            map["EndTime"] = self.endTime!
        }
        if self.minDuration != nil {
            map["MinDuration"] = self.minDuration!
        }
        if self.operationName != nil {
            map["OperationName"] = self.operationName!
        }
        if self.pageNumber != nil {
            map["PageNumber"] = self.pageNumber!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.reverse != nil {
            map["Reverse"] = self.reverse!
        }
        if self.serviceIp != nil {
            map["ServiceIp"] = self.serviceIp!
        }
        if self.serviceName != nil {
            map["ServiceName"] = self.serviceName!
        }
        if self.startTime != nil {
            map["StartTime"] = self.startTime!
        }
        if self.tag != nil {
            var tmp : [Any] = []
            for k in self.tag! {
                tmp.append(k.toMap())
            }
            map["Tag"] = tmp
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AppType") && dict["AppType"] != nil {
            self.appType = dict["AppType"] as! String
        }
        if dict.keys.contains("EndTime") && dict["EndTime"] != nil {
            self.endTime = dict["EndTime"] as! Int64
        }
        if dict.keys.contains("MinDuration") && dict["MinDuration"] != nil {
            self.minDuration = dict["MinDuration"] as! Int64
        }
        if dict.keys.contains("OperationName") && dict["OperationName"] != nil {
            self.operationName = dict["OperationName"] as! String
        }
        if dict.keys.contains("PageNumber") && dict["PageNumber"] != nil {
            self.pageNumber = dict["PageNumber"] as! Int32
        }
        if dict.keys.contains("PageSize") && dict["PageSize"] != nil {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("RegionId") && dict["RegionId"] != nil {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("Reverse") && dict["Reverse"] != nil {
            self.reverse = dict["Reverse"] as! Bool
        }
        if dict.keys.contains("ServiceIp") && dict["ServiceIp"] != nil {
            self.serviceIp = dict["ServiceIp"] as! String
        }
        if dict.keys.contains("ServiceName") && dict["ServiceName"] != nil {
            self.serviceName = dict["ServiceName"] as! String
        }
        if dict.keys.contains("StartTime") && dict["StartTime"] != nil {
            self.startTime = dict["StartTime"] as! Int64
        }
        if dict.keys.contains("Tag") && dict["Tag"] != nil {
            var tmp : [SearchTracesRequest.Tag] = []
            for v in dict["Tag"] as! [Any] {
                var model = SearchTracesRequest.Tag()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.tag = tmp
        }
    }
}

public class SearchTracesResponseBody : Tea.TeaModel {
    public class PageBean : Tea.TeaModel {
        public class TraceInfos : Tea.TeaModel {
            public class TraceInfo : Tea.TeaModel {
                public var duration: Int64?

                public var operationName: String?

                public var serviceIp: String?

                public var serviceName: String?

                public var tagMap: [String: Any]?

                public var timestamp: Int64?

                public var traceID: String?

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
                    if self.duration != nil {
                        map["Duration"] = self.duration!
                    }
                    if self.operationName != nil {
                        map["OperationName"] = self.operationName!
                    }
                    if self.serviceIp != nil {
                        map["ServiceIp"] = self.serviceIp!
                    }
                    if self.serviceName != nil {
                        map["ServiceName"] = self.serviceName!
                    }
                    if self.tagMap != nil {
                        map["TagMap"] = self.tagMap!
                    }
                    if self.timestamp != nil {
                        map["Timestamp"] = self.timestamp!
                    }
                    if self.traceID != nil {
                        map["TraceID"] = self.traceID!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("Duration") && dict["Duration"] != nil {
                        self.duration = dict["Duration"] as! Int64
                    }
                    if dict.keys.contains("OperationName") && dict["OperationName"] != nil {
                        self.operationName = dict["OperationName"] as! String
                    }
                    if dict.keys.contains("ServiceIp") && dict["ServiceIp"] != nil {
                        self.serviceIp = dict["ServiceIp"] as! String
                    }
                    if dict.keys.contains("ServiceName") && dict["ServiceName"] != nil {
                        self.serviceName = dict["ServiceName"] as! String
                    }
                    if dict.keys.contains("TagMap") && dict["TagMap"] != nil {
                        self.tagMap = dict["TagMap"] as! [String: Any]
                    }
                    if dict.keys.contains("Timestamp") && dict["Timestamp"] != nil {
                        self.timestamp = dict["Timestamp"] as! Int64
                    }
                    if dict.keys.contains("TraceID") && dict["TraceID"] != nil {
                        self.traceID = dict["TraceID"] as! String
                    }
                }
            }
            public var traceInfo: [SearchTracesResponseBody.PageBean.TraceInfos.TraceInfo]?

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
                if self.traceInfo != nil {
                    var tmp : [Any] = []
                    for k in self.traceInfo! {
                        tmp.append(k.toMap())
                    }
                    map["TraceInfo"] = tmp
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("TraceInfo") && dict["TraceInfo"] != nil {
                    var tmp : [SearchTracesResponseBody.PageBean.TraceInfos.TraceInfo] = []
                    for v in dict["TraceInfo"] as! [Any] {
                        var model = SearchTracesResponseBody.PageBean.TraceInfos.TraceInfo()
                        if v != nil {
                            model.fromMap(v as! [String: Any])
                        }
                        tmp.append(model)
                    }
                    self.traceInfo = tmp
                }
            }
        }
        public var pageNumber: Int32?

        public var pageSize: Int32?

        public var totalCount: Int64?

        public var traceInfos: SearchTracesResponseBody.PageBean.TraceInfos?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.traceInfos?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.pageNumber != nil {
                map["PageNumber"] = self.pageNumber!
            }
            if self.pageSize != nil {
                map["PageSize"] = self.pageSize!
            }
            if self.totalCount != nil {
                map["TotalCount"] = self.totalCount!
            }
            if self.traceInfos != nil {
                map["TraceInfos"] = self.traceInfos?.toMap()
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("PageNumber") && dict["PageNumber"] != nil {
                self.pageNumber = dict["PageNumber"] as! Int32
            }
            if dict.keys.contains("PageSize") && dict["PageSize"] != nil {
                self.pageSize = dict["PageSize"] as! Int32
            }
            if dict.keys.contains("TotalCount") && dict["TotalCount"] != nil {
                self.totalCount = dict["TotalCount"] as! Int64
            }
            if dict.keys.contains("TraceInfos") && dict["TraceInfos"] != nil {
                var model = SearchTracesResponseBody.PageBean.TraceInfos()
                model.fromMap(dict["TraceInfos"] as! [String: Any])
                self.traceInfos = model
            }
        }
    }
    public var pageBean: SearchTracesResponseBody.PageBean?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.pageBean?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.pageBean != nil {
            map["PageBean"] = self.pageBean?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("PageBean") && dict["PageBean"] != nil {
            var model = SearchTracesResponseBody.PageBean()
            model.fromMap(dict["PageBean"] as! [String: Any])
            self.pageBean = model
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class SearchTracesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: SearchTracesResponseBody?

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
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = SearchTracesResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}
