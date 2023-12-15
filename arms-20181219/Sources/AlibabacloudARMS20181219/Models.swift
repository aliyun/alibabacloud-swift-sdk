import Foundation
import Tea
import TeaUtils
import AlibabacloudOpenApi
import AlibabaCloudOpenApiUtil
import AlibabacloudEndpointUtil

public class ARMSQueryDataSetRequest : Tea.TeaModel {
    public class Dimensions : Tea.TeaModel {
        public var key: String?

        public var type: String?

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
            if self.type != nil {
                map["Type"] = self.type!
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
            if dict.keys.contains("Type") && dict["Type"] != nil {
                self.type = dict["Type"] as! String
            }
            if dict.keys.contains("Value") && dict["Value"] != nil {
                self.value = dict["Value"] as! String
            }
        }
    }
    public class OptionalDims : Tea.TeaModel {
        public var key: String?

        public var type: String?

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
            if self.type != nil {
                map["Type"] = self.type!
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
            if dict.keys.contains("Type") && dict["Type"] != nil {
                self.type = dict["Type"] as! String
            }
            if dict.keys.contains("Value") && dict["Value"] != nil {
                self.value = dict["Value"] as! String
            }
        }
    }
    public class RequiredDims : Tea.TeaModel {
        public var key: String?

        public var type: String?

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
            if self.type != nil {
                map["Type"] = self.type!
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
            if dict.keys.contains("Type") && dict["Type"] != nil {
                self.type = dict["Type"] as! String
            }
            if dict.keys.contains("Value") && dict["Value"] != nil {
                self.value = dict["Value"] as! String
            }
        }
    }
    public var datasetId: Int64?

    public var dateStr: String?

    public var dimensions: [ARMSQueryDataSetRequest.Dimensions]?

    public var hungryMode: Bool?

    public var intervalInSec: Int32?

    public var isDrillDown: Bool?

    public var limit: Int32?

    public var maxTime: Int64?

    public var measures: [String]?

    public var minTime: Int64?

    public var optionalDims: [ARMSQueryDataSetRequest.OptionalDims]?

    public var orderByKey: String?

    public var reduceTail: Bool?

    public var requiredDims: [ARMSQueryDataSetRequest.RequiredDims]?

    public var securityToken: String?

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
        if self.datasetId != nil {
            map["DatasetId"] = self.datasetId!
        }
        if self.dateStr != nil {
            map["DateStr"] = self.dateStr!
        }
        if self.dimensions != nil {
            var tmp : [Any] = []
            for k in self.dimensions! {
                tmp.append(k.toMap())
            }
            map["Dimensions"] = tmp
        }
        if self.hungryMode != nil {
            map["HungryMode"] = self.hungryMode!
        }
        if self.intervalInSec != nil {
            map["IntervalInSec"] = self.intervalInSec!
        }
        if self.isDrillDown != nil {
            map["IsDrillDown"] = self.isDrillDown!
        }
        if self.limit != nil {
            map["Limit"] = self.limit!
        }
        if self.maxTime != nil {
            map["MaxTime"] = self.maxTime!
        }
        if self.measures != nil {
            map["Measures"] = self.measures!
        }
        if self.minTime != nil {
            map["MinTime"] = self.minTime!
        }
        if self.optionalDims != nil {
            var tmp : [Any] = []
            for k in self.optionalDims! {
                tmp.append(k.toMap())
            }
            map["OptionalDims"] = tmp
        }
        if self.orderByKey != nil {
            map["OrderByKey"] = self.orderByKey!
        }
        if self.reduceTail != nil {
            map["ReduceTail"] = self.reduceTail!
        }
        if self.requiredDims != nil {
            var tmp : [Any] = []
            for k in self.requiredDims! {
                tmp.append(k.toMap())
            }
            map["RequiredDims"] = tmp
        }
        if self.securityToken != nil {
            map["SecurityToken"] = self.securityToken!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DatasetId") && dict["DatasetId"] != nil {
            self.datasetId = dict["DatasetId"] as! Int64
        }
        if dict.keys.contains("DateStr") && dict["DateStr"] != nil {
            self.dateStr = dict["DateStr"] as! String
        }
        if dict.keys.contains("Dimensions") && dict["Dimensions"] != nil {
            var tmp : [ARMSQueryDataSetRequest.Dimensions] = []
            for v in dict["Dimensions"] as! [Any] {
                var model = ARMSQueryDataSetRequest.Dimensions()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.dimensions = tmp
        }
        if dict.keys.contains("HungryMode") && dict["HungryMode"] != nil {
            self.hungryMode = dict["HungryMode"] as! Bool
        }
        if dict.keys.contains("IntervalInSec") && dict["IntervalInSec"] != nil {
            self.intervalInSec = dict["IntervalInSec"] as! Int32
        }
        if dict.keys.contains("IsDrillDown") && dict["IsDrillDown"] != nil {
            self.isDrillDown = dict["IsDrillDown"] as! Bool
        }
        if dict.keys.contains("Limit") && dict["Limit"] != nil {
            self.limit = dict["Limit"] as! Int32
        }
        if dict.keys.contains("MaxTime") && dict["MaxTime"] != nil {
            self.maxTime = dict["MaxTime"] as! Int64
        }
        if dict.keys.contains("Measures") && dict["Measures"] != nil {
            self.measures = dict["Measures"] as! [String]
        }
        if dict.keys.contains("MinTime") && dict["MinTime"] != nil {
            self.minTime = dict["MinTime"] as! Int64
        }
        if dict.keys.contains("OptionalDims") && dict["OptionalDims"] != nil {
            var tmp : [ARMSQueryDataSetRequest.OptionalDims] = []
            for v in dict["OptionalDims"] as! [Any] {
                var model = ARMSQueryDataSetRequest.OptionalDims()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.optionalDims = tmp
        }
        if dict.keys.contains("OrderByKey") && dict["OrderByKey"] != nil {
            self.orderByKey = dict["OrderByKey"] as! String
        }
        if dict.keys.contains("ReduceTail") && dict["ReduceTail"] != nil {
            self.reduceTail = dict["ReduceTail"] as! Bool
        }
        if dict.keys.contains("RequiredDims") && dict["RequiredDims"] != nil {
            var tmp : [ARMSQueryDataSetRequest.RequiredDims] = []
            for v in dict["RequiredDims"] as! [Any] {
                var model = ARMSQueryDataSetRequest.RequiredDims()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.requiredDims = tmp
        }
        if dict.keys.contains("SecurityToken") && dict["SecurityToken"] != nil {
            self.securityToken = dict["SecurityToken"] as! String
        }
    }
}

public class ARMSQueryDataSetResponseBody : Tea.TeaModel {
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

public class ARMSQueryDataSetResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ARMSQueryDataSetResponseBody?

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
            var model = ARMSQueryDataSetResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetServicesRequest : Tea.TeaModel {
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

public class GetServicesResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class Details : Tea.TeaModel {
            public class Details : Tea.TeaModel {
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
            public var details: [GetServicesResponseBody.Data.Details.Details]?

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
                if self.details != nil {
                    var tmp : [Any] = []
                    for k in self.details! {
                        tmp.append(k.toMap())
                    }
                    map["Details"] = tmp
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("Details") && dict["Details"] != nil {
                    var tmp : [GetServicesResponseBody.Data.Details.Details] = []
                    for v in dict["Details"] as! [Any] {
                        var model = GetServicesResponseBody.Data.Details.Details()
                        if v != nil {
                            model.fromMap(v as! [String: Any])
                        }
                        tmp.append(model)
                    }
                    self.details = tmp
                }
            }
        }
        public class Services : Tea.TeaModel {
            public var services: [String]?

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
                if self.services != nil {
                    map["Services"] = self.services!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("Services") && dict["Services"] != nil {
                    self.services = dict["Services"] as! [String]
                }
            }
        }
        public var details: GetServicesResponseBody.Data.Details?

        public var services: GetServicesResponseBody.Data.Services?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.details?.validate()
            try self.services?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.details != nil {
                map["Details"] = self.details?.toMap()
            }
            if self.services != nil {
                map["Services"] = self.services?.toMap()
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Details") && dict["Details"] != nil {
                var model = GetServicesResponseBody.Data.Details()
                model.fromMap(dict["Details"] as! [String: Any])
                self.details = model
            }
            if dict.keys.contains("Services") && dict["Services"] != nil {
                var model = GetServicesResponseBody.Data.Services()
                model.fromMap(dict["Services"] as! [String: Any])
                self.services = model
            }
        }
    }
    public var data: GetServicesResponseBody.Data?

    public var requestId: String?

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
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Data") && dict["Data"] != nil {
            var model = GetServicesResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class GetServicesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetServicesResponseBody?

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
            var model = GetServicesResponseBody()
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
    public class Data : Tea.TeaModel {
        public class CallChainInfo : Tea.TeaModel {
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
                        public var tagEntry: [GetTraceResponseBody.Data.CallChainInfo.LogEventList.LogEvent.TagEntryList.TagEntry]?

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
                                var tmp : [GetTraceResponseBody.Data.CallChainInfo.LogEventList.LogEvent.TagEntryList.TagEntry] = []
                                for v in dict["TagEntry"] as! [Any] {
                                    var model = GetTraceResponseBody.Data.CallChainInfo.LogEventList.LogEvent.TagEntryList.TagEntry()
                                    if v != nil {
                                        model.fromMap(v as! [String: Any])
                                    }
                                    tmp.append(model)
                                }
                                self.tagEntry = tmp
                            }
                        }
                    }
                    public var tagEntryList: GetTraceResponseBody.Data.CallChainInfo.LogEventList.LogEvent.TagEntryList?

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
                            var model = GetTraceResponseBody.Data.CallChainInfo.LogEventList.LogEvent.TagEntryList()
                            model.fromMap(dict["TagEntryList"] as! [String: Any])
                            self.tagEntryList = model
                        }
                        if dict.keys.contains("Timestamp") && dict["Timestamp"] != nil {
                            self.timestamp = dict["Timestamp"] as! Int64
                        }
                    }
                }
                public var logEvent: [GetTraceResponseBody.Data.CallChainInfo.LogEventList.LogEvent]?

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
                        var tmp : [GetTraceResponseBody.Data.CallChainInfo.LogEventList.LogEvent] = []
                        for v in dict["LogEvent"] as! [Any] {
                            var model = GetTraceResponseBody.Data.CallChainInfo.LogEventList.LogEvent()
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
                public var tagEntry: [GetTraceResponseBody.Data.CallChainInfo.TagEntryList.TagEntry]?

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
                        var tmp : [GetTraceResponseBody.Data.CallChainInfo.TagEntryList.TagEntry] = []
                        for v in dict["TagEntry"] as! [Any] {
                            var model = GetTraceResponseBody.Data.CallChainInfo.TagEntryList.TagEntry()
                            if v != nil {
                                model.fromMap(v as! [String: Any])
                            }
                            tmp.append(model)
                        }
                        self.tagEntry = tmp
                    }
                }
            }
            public var duration: Int32?

            public var haveStack: Bool?

            public var logEventList: GetTraceResponseBody.Data.CallChainInfo.LogEventList?

            public var operationName: String?

            public var resultCode: String?

            public var rpcId: String?

            public var serviceIp: String?

            public var serviceName: String?

            public var tagEntryList: GetTraceResponseBody.Data.CallChainInfo.TagEntryList?

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
                    self.duration = dict["Duration"] as! Int32
                }
                if dict.keys.contains("HaveStack") && dict["HaveStack"] != nil {
                    self.haveStack = dict["HaveStack"] as! Bool
                }
                if dict.keys.contains("LogEventList") && dict["LogEventList"] != nil {
                    var model = GetTraceResponseBody.Data.CallChainInfo.LogEventList()
                    model.fromMap(dict["LogEventList"] as! [String: Any])
                    self.logEventList = model
                }
                if dict.keys.contains("OperationName") && dict["OperationName"] != nil {
                    self.operationName = dict["OperationName"] as! String
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
                if dict.keys.contains("TagEntryList") && dict["TagEntryList"] != nil {
                    var model = GetTraceResponseBody.Data.CallChainInfo.TagEntryList()
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
        public var callChainInfo: [GetTraceResponseBody.Data.CallChainInfo]?

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
            if self.callChainInfo != nil {
                var tmp : [Any] = []
                for k in self.callChainInfo! {
                    tmp.append(k.toMap())
                }
                map["CallChainInfo"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("CallChainInfo") && dict["CallChainInfo"] != nil {
                var tmp : [GetTraceResponseBody.Data.CallChainInfo] = []
                for v in dict["CallChainInfo"] as! [Any] {
                    var model = GetTraceResponseBody.Data.CallChainInfo()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.callChainInfo = tmp
            }
        }
    }
    public var data: GetTraceResponseBody.Data?

    public var requestId: String?

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
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Data") && dict["Data"] != nil {
            var model = GetTraceResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
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

public class MetricQueryRequest : Tea.TeaModel {
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

    public var filters: [MetricQueryRequest.Filters]?

    public var iintervalInSec: Int32?

    public var limit: Int32?

    public var measures: [String]?

    public var metric: String?

    public var order: String?

    public var orderBy: String?

    public var securityToken: String?

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
        if self.iintervalInSec != nil {
            map["IintervalInSec"] = self.iintervalInSec!
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
        if self.securityToken != nil {
            map["SecurityToken"] = self.securityToken!
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
            var tmp : [MetricQueryRequest.Filters] = []
            for v in dict["Filters"] as! [Any] {
                var model = MetricQueryRequest.Filters()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.filters = tmp
        }
        if dict.keys.contains("IintervalInSec") && dict["IintervalInSec"] != nil {
            self.iintervalInSec = dict["IintervalInSec"] as! Int32
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
        if dict.keys.contains("SecurityToken") && dict["SecurityToken"] != nil {
            self.securityToken = dict["SecurityToken"] as! String
        }
        if dict.keys.contains("StartTime") && dict["StartTime"] != nil {
            self.startTime = dict["StartTime"] as! Int64
        }
    }
}

public class MetricQueryResponseBody : Tea.TeaModel {
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

public class MetricQueryResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: MetricQueryResponseBody?

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
            var model = MetricQueryResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class SearchTracesRequest : Tea.TeaModel {
    public var appType: String?

    public var endTime: Int64?

    public var minDuration: Int64?

    public var operationName: String?

    public var regionId: String?

    public var serviceName: String?

    public var startTime: Int64?

    public var tag1: String?

    public var tag2: String?

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
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.serviceName != nil {
            map["ServiceName"] = self.serviceName!
        }
        if self.startTime != nil {
            map["StartTime"] = self.startTime!
        }
        if self.tag1 != nil {
            map["Tag1"] = self.tag1!
        }
        if self.tag2 != nil {
            map["Tag2"] = self.tag2!
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
        if dict.keys.contains("RegionId") && dict["RegionId"] != nil {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("ServiceName") && dict["ServiceName"] != nil {
            self.serviceName = dict["ServiceName"] as! String
        }
        if dict.keys.contains("StartTime") && dict["StartTime"] != nil {
            self.startTime = dict["StartTime"] as! Int64
        }
        if dict.keys.contains("Tag1") && dict["Tag1"] != nil {
            self.tag1 = dict["Tag1"] as! String
        }
        if dict.keys.contains("Tag2") && dict["Tag2"] != nil {
            self.tag2 = dict["Tag2"] as! String
        }
    }
}

public class SearchTracesResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class TraceInfo : Tea.TeaModel {
            public var duration: Int32?

            public var operationName: String?

            public var serviceIp: String?

            public var serviceName: String?

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
                    self.duration = dict["Duration"] as! Int32
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
                if dict.keys.contains("Timestamp") && dict["Timestamp"] != nil {
                    self.timestamp = dict["Timestamp"] as! Int64
                }
                if dict.keys.contains("TraceID") && dict["TraceID"] != nil {
                    self.traceID = dict["TraceID"] as! String
                }
            }
        }
        public var traceInfo: [SearchTracesResponseBody.Data.TraceInfo]?

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
                var tmp : [SearchTracesResponseBody.Data.TraceInfo] = []
                for v in dict["TraceInfo"] as! [Any] {
                    var model = SearchTracesResponseBody.Data.TraceInfo()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.traceInfo = tmp
            }
        }
    }
    public var data: SearchTracesResponseBody.Data?

    public var requestId: String?

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
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Data") && dict["Data"] != nil {
            var model = SearchTracesResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
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
