import Foundation
import Tea
import TeaUtils
import AlibabacloudOpenApi
import AlibabaCloudOpenApiUtil
import AlibabacloudEndpointUtil

public class DescribeHuYaRecordByDomainRequest : Tea.TeaModel {
    public var businessType: String?

    public var domain: String?

    public var endTime: String?

    public var startTime: String?

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
        if self.businessType != nil {
            map["BusinessType"] = self.businessType!
        }
        if self.domain != nil {
            map["Domain"] = self.domain!
        }
        if self.endTime != nil {
            map["EndTime"] = self.endTime!
        }
        if self.startTime != nil {
            map["StartTime"] = self.startTime!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("BusinessType") && dict["BusinessType"] != nil {
            self.businessType = dict["BusinessType"] as! String
        }
        if dict.keys.contains("Domain") && dict["Domain"] != nil {
            self.domain = dict["Domain"] as! String
        }
        if dict.keys.contains("EndTime") && dict["EndTime"] != nil {
            self.endTime = dict["EndTime"] as! String
        }
        if dict.keys.contains("StartTime") && dict["StartTime"] != nil {
            self.startTime = dict["StartTime"] as! String
        }
    }
}

public class DescribeHuYaRecordByDomainResponseBody : Tea.TeaModel {
    public class ResultDesc : Tea.TeaModel {
        public var businessType: String?

        public var domain: String?

        public var recordDuration: Int64?

        public var recordNum: Int64?

        public var recordType: String?

        public var time: String?

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
            if self.businessType != nil {
                map["BusinessType"] = self.businessType!
            }
            if self.domain != nil {
                map["Domain"] = self.domain!
            }
            if self.recordDuration != nil {
                map["RecordDuration"] = self.recordDuration!
            }
            if self.recordNum != nil {
                map["RecordNum"] = self.recordNum!
            }
            if self.recordType != nil {
                map["RecordType"] = self.recordType!
            }
            if self.time != nil {
                map["Time"] = self.time!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("BusinessType") && dict["BusinessType"] != nil {
                self.businessType = dict["BusinessType"] as! String
            }
            if dict.keys.contains("Domain") && dict["Domain"] != nil {
                self.domain = dict["Domain"] as! String
            }
            if dict.keys.contains("RecordDuration") && dict["RecordDuration"] != nil {
                self.recordDuration = dict["RecordDuration"] as! Int64
            }
            if dict.keys.contains("RecordNum") && dict["RecordNum"] != nil {
                self.recordNum = dict["RecordNum"] as! Int64
            }
            if dict.keys.contains("RecordType") && dict["RecordType"] != nil {
                self.recordType = dict["RecordType"] as! String
            }
            if dict.keys.contains("Time") && dict["Time"] != nil {
                self.time = dict["Time"] as! String
            }
        }
    }
    public var requestId: String?

    public var result: String?

    public var resultDesc: [DescribeHuYaRecordByDomainResponseBody.ResultDesc]?

    public var status: Int32?

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
        if self.result != nil {
            map["Result"] = self.result!
        }
        if self.resultDesc != nil {
            var tmp : [Any] = []
            for k in self.resultDesc! {
                tmp.append(k.toMap())
            }
            map["ResultDesc"] = tmp
        }
        if self.status != nil {
            map["Status"] = self.status!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Result") && dict["Result"] != nil {
            self.result = dict["Result"] as! String
        }
        if dict.keys.contains("ResultDesc") && dict["ResultDesc"] != nil {
            var tmp : [DescribeHuYaRecordByDomainResponseBody.ResultDesc] = []
            for v in dict["ResultDesc"] as! [Any] {
                var model = DescribeHuYaRecordByDomainResponseBody.ResultDesc()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.resultDesc = tmp
        }
        if dict.keys.contains("Status") && dict["Status"] != nil {
            self.status = dict["Status"] as! Int32
        }
    }
}

public class DescribeHuYaRecordByDomainResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeHuYaRecordByDomainResponseBody?

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
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = DescribeHuYaRecordByDomainResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeHuYaScreenshotByDomainRequest : Tea.TeaModel {
    public var businessType: String?

    public var domain: String?

    public var endTime: String?

    public var startTime: String?

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
        if self.businessType != nil {
            map["BusinessType"] = self.businessType!
        }
        if self.domain != nil {
            map["Domain"] = self.domain!
        }
        if self.endTime != nil {
            map["EndTime"] = self.endTime!
        }
        if self.startTime != nil {
            map["StartTime"] = self.startTime!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("BusinessType") && dict["BusinessType"] != nil {
            self.businessType = dict["BusinessType"] as! String
        }
        if dict.keys.contains("Domain") && dict["Domain"] != nil {
            self.domain = dict["Domain"] as! String
        }
        if dict.keys.contains("EndTime") && dict["EndTime"] != nil {
            self.endTime = dict["EndTime"] as! String
        }
        if dict.keys.contains("StartTime") && dict["StartTime"] != nil {
            self.startTime = dict["StartTime"] as! String
        }
    }
}

public class DescribeHuYaScreenshotByDomainResponseBody : Tea.TeaModel {
    public class ResultDesc : Tea.TeaModel {
        public var businessType: String?

        public var domain: String?

        public var screenshotNum: Int64?

        public var time: String?

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
            if self.businessType != nil {
                map["BusinessType"] = self.businessType!
            }
            if self.domain != nil {
                map["Domain"] = self.domain!
            }
            if self.screenshotNum != nil {
                map["ScreenshotNum"] = self.screenshotNum!
            }
            if self.time != nil {
                map["Time"] = self.time!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("BusinessType") && dict["BusinessType"] != nil {
                self.businessType = dict["BusinessType"] as! String
            }
            if dict.keys.contains("Domain") && dict["Domain"] != nil {
                self.domain = dict["Domain"] as! String
            }
            if dict.keys.contains("ScreenshotNum") && dict["ScreenshotNum"] != nil {
                self.screenshotNum = dict["ScreenshotNum"] as! Int64
            }
            if dict.keys.contains("Time") && dict["Time"] != nil {
                self.time = dict["Time"] as! String
            }
        }
    }
    public var requestId: String?

    public var result: String?

    public var resultDesc: [DescribeHuYaScreenshotByDomainResponseBody.ResultDesc]?

    public var status: Int32?

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
        if self.result != nil {
            map["Result"] = self.result!
        }
        if self.resultDesc != nil {
            var tmp : [Any] = []
            for k in self.resultDesc! {
                tmp.append(k.toMap())
            }
            map["ResultDesc"] = tmp
        }
        if self.status != nil {
            map["Status"] = self.status!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Result") && dict["Result"] != nil {
            self.result = dict["Result"] as! String
        }
        if dict.keys.contains("ResultDesc") && dict["ResultDesc"] != nil {
            var tmp : [DescribeHuYaScreenshotByDomainResponseBody.ResultDesc] = []
            for v in dict["ResultDesc"] as! [Any] {
                var model = DescribeHuYaScreenshotByDomainResponseBody.ResultDesc()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.resultDesc = tmp
        }
        if dict.keys.contains("Status") && dict["Status"] != nil {
            self.status = dict["Status"] as! Int32
        }
    }
}

public class DescribeHuYaScreenshotByDomainResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeHuYaScreenshotByDomainResponseBody?

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
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = DescribeHuYaScreenshotByDomainResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeHuYaTranscodeByDomainRequest : Tea.TeaModel {
    public var businessType: String?

    public var domain: String?

    public var endTime: String?

    public var startTime: String?

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
        if self.businessType != nil {
            map["BusinessType"] = self.businessType!
        }
        if self.domain != nil {
            map["Domain"] = self.domain!
        }
        if self.endTime != nil {
            map["EndTime"] = self.endTime!
        }
        if self.startTime != nil {
            map["StartTime"] = self.startTime!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("BusinessType") && dict["BusinessType"] != nil {
            self.businessType = dict["BusinessType"] as! String
        }
        if dict.keys.contains("Domain") && dict["Domain"] != nil {
            self.domain = dict["Domain"] as! String
        }
        if dict.keys.contains("EndTime") && dict["EndTime"] != nil {
            self.endTime = dict["EndTime"] as! String
        }
        if dict.keys.contains("StartTime") && dict["StartTime"] != nil {
            self.startTime = dict["StartTime"] as! String
        }
    }
}

public class DescribeHuYaTranscodeByDomainResponseBody : Tea.TeaModel {
    public class ResultDesc : Tea.TeaModel {
        public var businessType: String?

        public var domain: String?

        public var time: String?

        public var transcodeDuration: Int64?

        public var transcodeNum: Int64?

        public var transcodeType: String?

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
            if self.businessType != nil {
                map["BusinessType"] = self.businessType!
            }
            if self.domain != nil {
                map["Domain"] = self.domain!
            }
            if self.time != nil {
                map["Time"] = self.time!
            }
            if self.transcodeDuration != nil {
                map["TranscodeDuration"] = self.transcodeDuration!
            }
            if self.transcodeNum != nil {
                map["TranscodeNum"] = self.transcodeNum!
            }
            if self.transcodeType != nil {
                map["TranscodeType"] = self.transcodeType!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("BusinessType") && dict["BusinessType"] != nil {
                self.businessType = dict["BusinessType"] as! String
            }
            if dict.keys.contains("Domain") && dict["Domain"] != nil {
                self.domain = dict["Domain"] as! String
            }
            if dict.keys.contains("Time") && dict["Time"] != nil {
                self.time = dict["Time"] as! String
            }
            if dict.keys.contains("TranscodeDuration") && dict["TranscodeDuration"] != nil {
                self.transcodeDuration = dict["TranscodeDuration"] as! Int64
            }
            if dict.keys.contains("TranscodeNum") && dict["TranscodeNum"] != nil {
                self.transcodeNum = dict["TranscodeNum"] as! Int64
            }
            if dict.keys.contains("TranscodeType") && dict["TranscodeType"] != nil {
                self.transcodeType = dict["TranscodeType"] as! String
            }
        }
    }
    public var requestId: String?

    public var result: String?

    public var resultDesc: [DescribeHuYaTranscodeByDomainResponseBody.ResultDesc]?

    public var status: Int32?

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
        if self.result != nil {
            map["Result"] = self.result!
        }
        if self.resultDesc != nil {
            var tmp : [Any] = []
            for k in self.resultDesc! {
                tmp.append(k.toMap())
            }
            map["ResultDesc"] = tmp
        }
        if self.status != nil {
            map["Status"] = self.status!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Result") && dict["Result"] != nil {
            self.result = dict["Result"] as! String
        }
        if dict.keys.contains("ResultDesc") && dict["ResultDesc"] != nil {
            var tmp : [DescribeHuYaTranscodeByDomainResponseBody.ResultDesc] = []
            for v in dict["ResultDesc"] as! [Any] {
                var model = DescribeHuYaTranscodeByDomainResponseBody.ResultDesc()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.resultDesc = tmp
        }
        if dict.keys.contains("Status") && dict["Status"] != nil {
            self.status = dict["Status"] as! Int32
        }
    }
}

public class DescribeHuYaTranscodeByDomainResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeHuYaTranscodeByDomainResponseBody?

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
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = DescribeHuYaTranscodeByDomainResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeMeterBypassRtUsageByTaskProfileRequest : Tea.TeaModel {
    public var appId: String?

    public var endTs: Int64?

    public var interval: Int64?

    public var serviceArea: String?

    public var startTs: Int64?

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
        if self.appId != nil {
            map["AppId"] = self.appId!
        }
        if self.endTs != nil {
            map["EndTs"] = self.endTs!
        }
        if self.interval != nil {
            map["Interval"] = self.interval!
        }
        if self.serviceArea != nil {
            map["ServiceArea"] = self.serviceArea!
        }
        if self.startTs != nil {
            map["StartTs"] = self.startTs!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AppId") && dict["AppId"] != nil {
            self.appId = dict["AppId"] as! String
        }
        if dict.keys.contains("EndTs") && dict["EndTs"] != nil {
            self.endTs = dict["EndTs"] as! Int64
        }
        if dict.keys.contains("Interval") && dict["Interval"] != nil {
            self.interval = dict["Interval"] as! Int64
        }
        if dict.keys.contains("ServiceArea") && dict["ServiceArea"] != nil {
            self.serviceArea = dict["ServiceArea"] as! String
        }
        if dict.keys.contains("StartTs") && dict["StartTs"] != nil {
            self.startTs = dict["StartTs"] as! Int64
        }
    }
}

public class DescribeMeterBypassRtUsageByTaskProfileResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var duration: Int64?

        public var ratio: String?

        public var serviceArea: String?

        public var taskProfile: String?

        public var timestamp: Int64?

        public var type: String?

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
            if self.ratio != nil {
                map["Ratio"] = self.ratio!
            }
            if self.serviceArea != nil {
                map["ServiceArea"] = self.serviceArea!
            }
            if self.taskProfile != nil {
                map["TaskProfile"] = self.taskProfile!
            }
            if self.timestamp != nil {
                map["Timestamp"] = self.timestamp!
            }
            if self.type != nil {
                map["Type"] = self.type!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Duration") && dict["Duration"] != nil {
                self.duration = dict["Duration"] as! Int64
            }
            if dict.keys.contains("Ratio") && dict["Ratio"] != nil {
                self.ratio = dict["Ratio"] as! String
            }
            if dict.keys.contains("ServiceArea") && dict["ServiceArea"] != nil {
                self.serviceArea = dict["ServiceArea"] as! String
            }
            if dict.keys.contains("TaskProfile") && dict["TaskProfile"] != nil {
                self.taskProfile = dict["TaskProfile"] as! String
            }
            if dict.keys.contains("Timestamp") && dict["Timestamp"] != nil {
                self.timestamp = dict["Timestamp"] as! Int64
            }
            if dict.keys.contains("Type") && dict["Type"] != nil {
                self.type = dict["Type"] as! String
            }
        }
    }
    public var data: [DescribeMeterBypassRtUsageByTaskProfileResponseBody.Data]?

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
            var tmp : [Any] = []
            for k in self.data! {
                tmp.append(k.toMap())
            }
            map["Data"] = tmp
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Data") && dict["Data"] != nil {
            var tmp : [DescribeMeterBypassRtUsageByTaskProfileResponseBody.Data] = []
            for v in dict["Data"] as! [Any] {
                var model = DescribeMeterBypassRtUsageByTaskProfileResponseBody.Data()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.data = tmp
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class DescribeMeterBypassRtUsageByTaskProfileResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeMeterBypassRtUsageByTaskProfileResponseBody?

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
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = DescribeMeterBypassRtUsageByTaskProfileResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeMeterMpuTranscodeRtUsageByTaskProfileRequest : Tea.TeaModel {
    public var appId: String?

    public var endTs: Int64?

    public var interval: Int64?

    public var serviceArea: String?

    public var startTs: Int64?

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
        if self.appId != nil {
            map["AppId"] = self.appId!
        }
        if self.endTs != nil {
            map["EndTs"] = self.endTs!
        }
        if self.interval != nil {
            map["Interval"] = self.interval!
        }
        if self.serviceArea != nil {
            map["ServiceArea"] = self.serviceArea!
        }
        if self.startTs != nil {
            map["StartTs"] = self.startTs!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AppId") && dict["AppId"] != nil {
            self.appId = dict["AppId"] as! String
        }
        if dict.keys.contains("EndTs") && dict["EndTs"] != nil {
            self.endTs = dict["EndTs"] as! Int64
        }
        if dict.keys.contains("Interval") && dict["Interval"] != nil {
            self.interval = dict["Interval"] as! Int64
        }
        if dict.keys.contains("ServiceArea") && dict["ServiceArea"] != nil {
            self.serviceArea = dict["ServiceArea"] as! String
        }
        if dict.keys.contains("StartTs") && dict["StartTs"] != nil {
            self.startTs = dict["StartTs"] as! Int64
        }
    }
}

public class DescribeMeterMpuTranscodeRtUsageByTaskProfileResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var duration: Int64?

        public var serviceArea: String?

        public var taskProfile: String?

        public var timeStamp: Int64?

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
            if self.serviceArea != nil {
                map["ServiceArea"] = self.serviceArea!
            }
            if self.taskProfile != nil {
                map["TaskProfile"] = self.taskProfile!
            }
            if self.timeStamp != nil {
                map["TimeStamp"] = self.timeStamp!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Duration") && dict["Duration"] != nil {
                self.duration = dict["Duration"] as! Int64
            }
            if dict.keys.contains("ServiceArea") && dict["ServiceArea"] != nil {
                self.serviceArea = dict["ServiceArea"] as! String
            }
            if dict.keys.contains("TaskProfile") && dict["TaskProfile"] != nil {
                self.taskProfile = dict["TaskProfile"] as! String
            }
            if dict.keys.contains("TimeStamp") && dict["TimeStamp"] != nil {
                self.timeStamp = dict["TimeStamp"] as! Int64
            }
        }
    }
    public var data: [DescribeMeterMpuTranscodeRtUsageByTaskProfileResponseBody.Data]?

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
            var tmp : [Any] = []
            for k in self.data! {
                tmp.append(k.toMap())
            }
            map["Data"] = tmp
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Data") && dict["Data"] != nil {
            var tmp : [DescribeMeterMpuTranscodeRtUsageByTaskProfileResponseBody.Data] = []
            for v in dict["Data"] as! [Any] {
                var model = DescribeMeterMpuTranscodeRtUsageByTaskProfileResponseBody.Data()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.data = tmp
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class DescribeMeterMpuTranscodeRtUsageByTaskProfileResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeMeterMpuTranscodeRtUsageByTaskProfileResponseBody?

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
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = DescribeMeterMpuTranscodeRtUsageByTaskProfileResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeMeterRecordRtUsageByTaskProfileRequest : Tea.TeaModel {
    public var appId: String?

    public var endTs: Int64?

    public var interval: Int64?

    public var serviceArea: String?

    public var startTs: Int64?

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
        if self.appId != nil {
            map["AppId"] = self.appId!
        }
        if self.endTs != nil {
            map["EndTs"] = self.endTs!
        }
        if self.interval != nil {
            map["Interval"] = self.interval!
        }
        if self.serviceArea != nil {
            map["ServiceArea"] = self.serviceArea!
        }
        if self.startTs != nil {
            map["StartTs"] = self.startTs!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AppId") && dict["AppId"] != nil {
            self.appId = dict["AppId"] as! String
        }
        if dict.keys.contains("EndTs") && dict["EndTs"] != nil {
            self.endTs = dict["EndTs"] as! Int64
        }
        if dict.keys.contains("Interval") && dict["Interval"] != nil {
            self.interval = dict["Interval"] as! Int64
        }
        if dict.keys.contains("ServiceArea") && dict["ServiceArea"] != nil {
            self.serviceArea = dict["ServiceArea"] as! String
        }
        if dict.keys.contains("StartTs") && dict["StartTs"] != nil {
            self.startTs = dict["StartTs"] as! Int64
        }
    }
}

public class DescribeMeterRecordRtUsageByTaskProfileResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var duration: Int64?

        public var ratio: String?

        public var serviceArea: String?

        public var taskProfile: String?

        public var timestamp: Int64?

        public var type: String?

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
            if self.ratio != nil {
                map["Ratio"] = self.ratio!
            }
            if self.serviceArea != nil {
                map["ServiceArea"] = self.serviceArea!
            }
            if self.taskProfile != nil {
                map["TaskProfile"] = self.taskProfile!
            }
            if self.timestamp != nil {
                map["Timestamp"] = self.timestamp!
            }
            if self.type != nil {
                map["Type"] = self.type!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Duration") && dict["Duration"] != nil {
                self.duration = dict["Duration"] as! Int64
            }
            if dict.keys.contains("Ratio") && dict["Ratio"] != nil {
                self.ratio = dict["Ratio"] as! String
            }
            if dict.keys.contains("ServiceArea") && dict["ServiceArea"] != nil {
                self.serviceArea = dict["ServiceArea"] as! String
            }
            if dict.keys.contains("TaskProfile") && dict["TaskProfile"] != nil {
                self.taskProfile = dict["TaskProfile"] as! String
            }
            if dict.keys.contains("Timestamp") && dict["Timestamp"] != nil {
                self.timestamp = dict["Timestamp"] as! Int64
            }
            if dict.keys.contains("Type") && dict["Type"] != nil {
                self.type = dict["Type"] as! String
            }
        }
    }
    public var data: [DescribeMeterRecordRtUsageByTaskProfileResponseBody.Data]?

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
            var tmp : [Any] = []
            for k in self.data! {
                tmp.append(k.toMap())
            }
            map["Data"] = tmp
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Data") && dict["Data"] != nil {
            var tmp : [DescribeMeterRecordRtUsageByTaskProfileResponseBody.Data] = []
            for v in dict["Data"] as! [Any] {
                var model = DescribeMeterRecordRtUsageByTaskProfileResponseBody.Data()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.data = tmp
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class DescribeMeterRecordRtUsageByTaskProfileResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeMeterRecordRtUsageByTaskProfileResponseBody?

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
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = DescribeMeterRecordRtUsageByTaskProfileResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeMeterRtcApproxPeakRateRequest : Tea.TeaModel {
    public var appId: String?

    public var endTs: Int64?

    public var interval: Int64?

    public var serviceArea: String?

    public var startTs: Int64?

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
        if self.appId != nil {
            map["AppId"] = self.appId!
        }
        if self.endTs != nil {
            map["EndTs"] = self.endTs!
        }
        if self.interval != nil {
            map["Interval"] = self.interval!
        }
        if self.serviceArea != nil {
            map["ServiceArea"] = self.serviceArea!
        }
        if self.startTs != nil {
            map["StartTs"] = self.startTs!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AppId") && dict["AppId"] != nil {
            self.appId = dict["AppId"] as! String
        }
        if dict.keys.contains("EndTs") && dict["EndTs"] != nil {
            self.endTs = dict["EndTs"] as! Int64
        }
        if dict.keys.contains("Interval") && dict["Interval"] != nil {
            self.interval = dict["Interval"] as! Int64
        }
        if dict.keys.contains("ServiceArea") && dict["ServiceArea"] != nil {
            self.serviceArea = dict["ServiceArea"] as! String
        }
        if dict.keys.contains("StartTs") && dict["StartTs"] != nil {
            self.startTs = dict["StartTs"] as! Int64
        }
    }
}

public class DescribeMeterRtcApproxPeakRateResponseBody : Tea.TeaModel {
    public class PeakRateVoList : Tea.TeaModel {
        public var peakRate: Double?

        public var peakTs: Int64?

        public var timestamp: Int64?

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
            if self.peakRate != nil {
                map["PeakRate"] = self.peakRate!
            }
            if self.peakTs != nil {
                map["PeakTs"] = self.peakTs!
            }
            if self.timestamp != nil {
                map["Timestamp"] = self.timestamp!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("PeakRate") && dict["PeakRate"] != nil {
                self.peakRate = dict["PeakRate"] as! Double
            }
            if dict.keys.contains("PeakTs") && dict["PeakTs"] != nil {
                self.peakTs = dict["PeakTs"] as! Int64
            }
            if dict.keys.contains("Timestamp") && dict["Timestamp"] != nil {
                self.timestamp = dict["Timestamp"] as! Int64
            }
        }
    }
    public var approxPeakRate: Double?

    public var approxPeakTs: Int64?

    public var peakRateVoList: [DescribeMeterRtcApproxPeakRateResponseBody.PeakRateVoList]?

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
        if self.approxPeakRate != nil {
            map["ApproxPeakRate"] = self.approxPeakRate!
        }
        if self.approxPeakTs != nil {
            map["ApproxPeakTs"] = self.approxPeakTs!
        }
        if self.peakRateVoList != nil {
            var tmp : [Any] = []
            for k in self.peakRateVoList! {
                tmp.append(k.toMap())
            }
            map["PeakRateVoList"] = tmp
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ApproxPeakRate") && dict["ApproxPeakRate"] != nil {
            self.approxPeakRate = dict["ApproxPeakRate"] as! Double
        }
        if dict.keys.contains("ApproxPeakTs") && dict["ApproxPeakTs"] != nil {
            self.approxPeakTs = dict["ApproxPeakTs"] as! Int64
        }
        if dict.keys.contains("PeakRateVoList") && dict["PeakRateVoList"] != nil {
            var tmp : [DescribeMeterRtcApproxPeakRateResponseBody.PeakRateVoList] = []
            for v in dict["PeakRateVoList"] as! [Any] {
                var model = DescribeMeterRtcApproxPeakRateResponseBody.PeakRateVoList()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.peakRateVoList = tmp
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class DescribeMeterRtcApproxPeakRateResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeMeterRtcApproxPeakRateResponseBody?

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
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = DescribeMeterRtcApproxPeakRateResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeMeterRtcChannelCntDataRequest : Tea.TeaModel {
    public var appId: String?

    public var endTs: Int64?

    public var interval: Int64?

    public var serviceArea: String?

    public var startTs: Int64?

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
        if self.appId != nil {
            map["AppId"] = self.appId!
        }
        if self.endTs != nil {
            map["EndTs"] = self.endTs!
        }
        if self.interval != nil {
            map["Interval"] = self.interval!
        }
        if self.serviceArea != nil {
            map["ServiceArea"] = self.serviceArea!
        }
        if self.startTs != nil {
            map["StartTs"] = self.startTs!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AppId") && dict["AppId"] != nil {
            self.appId = dict["AppId"] as! String
        }
        if dict.keys.contains("EndTs") && dict["EndTs"] != nil {
            self.endTs = dict["EndTs"] as! Int64
        }
        if dict.keys.contains("Interval") && dict["Interval"] != nil {
            self.interval = dict["Interval"] as! Int64
        }
        if dict.keys.contains("ServiceArea") && dict["ServiceArea"] != nil {
            self.serviceArea = dict["ServiceArea"] as! String
        }
        if dict.keys.contains("StartTs") && dict["StartTs"] != nil {
            self.startTs = dict["StartTs"] as! Int64
        }
    }
}

public class DescribeMeterRtcChannelCntDataResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var channelCnt: Int64?

        public var timestamp: String?

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
            if self.channelCnt != nil {
                map["ChannelCnt"] = self.channelCnt!
            }
            if self.timestamp != nil {
                map["Timestamp"] = self.timestamp!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("ChannelCnt") && dict["ChannelCnt"] != nil {
                self.channelCnt = dict["ChannelCnt"] as! Int64
            }
            if dict.keys.contains("Timestamp") && dict["Timestamp"] != nil {
                self.timestamp = dict["Timestamp"] as! String
            }
        }
    }
    public var data: [DescribeMeterRtcChannelCntDataResponseBody.Data]?

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
            var tmp : [Any] = []
            for k in self.data! {
                tmp.append(k.toMap())
            }
            map["Data"] = tmp
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Data") && dict["Data"] != nil {
            var tmp : [DescribeMeterRtcChannelCntDataResponseBody.Data] = []
            for v in dict["Data"] as! [Any] {
                var model = DescribeMeterRtcChannelCntDataResponseBody.Data()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.data = tmp
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class DescribeMeterRtcChannelCntDataResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeMeterRtcChannelCntDataResponseBody?

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
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = DescribeMeterRtcChannelCntDataResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeMeterRtcDurationRequest : Tea.TeaModel {
    public var appId: String?

    public var endTs: Int64?

    public var interval: Int64?

    public var serviceArea: String?

    public var startTs: Int64?

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
        if self.appId != nil {
            map["AppId"] = self.appId!
        }
        if self.endTs != nil {
            map["EndTs"] = self.endTs!
        }
        if self.interval != nil {
            map["Interval"] = self.interval!
        }
        if self.serviceArea != nil {
            map["ServiceArea"] = self.serviceArea!
        }
        if self.startTs != nil {
            map["StartTs"] = self.startTs!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AppId") && dict["AppId"] != nil {
            self.appId = dict["AppId"] as! String
        }
        if dict.keys.contains("EndTs") && dict["EndTs"] != nil {
            self.endTs = dict["EndTs"] as! Int64
        }
        if dict.keys.contains("Interval") && dict["Interval"] != nil {
            self.interval = dict["Interval"] as! Int64
        }
        if dict.keys.contains("ServiceArea") && dict["ServiceArea"] != nil {
            self.serviceArea = dict["ServiceArea"] as! String
        }
        if dict.keys.contains("StartTs") && dict["StartTs"] != nil {
            self.startTs = dict["StartTs"] as! Int64
        }
    }
}

public class DescribeMeterRtcDurationResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var audioDuration: Int64?

        public var contentDuration: Int64?

        public var timestamp: Int64?

        public var totalDuration: Int64?

        public var v1080Duration: Int64?

        public var v480Duration: Int64?

        public var v720Duration: Int64?

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
            if self.audioDuration != nil {
                map["AudioDuration"] = self.audioDuration!
            }
            if self.contentDuration != nil {
                map["ContentDuration"] = self.contentDuration!
            }
            if self.timestamp != nil {
                map["Timestamp"] = self.timestamp!
            }
            if self.totalDuration != nil {
                map["TotalDuration"] = self.totalDuration!
            }
            if self.v1080Duration != nil {
                map["V1080Duration"] = self.v1080Duration!
            }
            if self.v480Duration != nil {
                map["V480Duration"] = self.v480Duration!
            }
            if self.v720Duration != nil {
                map["V720Duration"] = self.v720Duration!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("AudioDuration") && dict["AudioDuration"] != nil {
                self.audioDuration = dict["AudioDuration"] as! Int64
            }
            if dict.keys.contains("ContentDuration") && dict["ContentDuration"] != nil {
                self.contentDuration = dict["ContentDuration"] as! Int64
            }
            if dict.keys.contains("Timestamp") && dict["Timestamp"] != nil {
                self.timestamp = dict["Timestamp"] as! Int64
            }
            if dict.keys.contains("TotalDuration") && dict["TotalDuration"] != nil {
                self.totalDuration = dict["TotalDuration"] as! Int64
            }
            if dict.keys.contains("V1080Duration") && dict["V1080Duration"] != nil {
                self.v1080Duration = dict["V1080Duration"] as! Int64
            }
            if dict.keys.contains("V480Duration") && dict["V480Duration"] != nil {
                self.v480Duration = dict["V480Duration"] as! Int64
            }
            if dict.keys.contains("V720Duration") && dict["V720Duration"] != nil {
                self.v720Duration = dict["V720Duration"] as! Int64
            }
        }
    }
    public var data: [DescribeMeterRtcDurationResponseBody.Data]?

    public var readyTs: Int64?

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
            var tmp : [Any] = []
            for k in self.data! {
                tmp.append(k.toMap())
            }
            map["Data"] = tmp
        }
        if self.readyTs != nil {
            map["ReadyTs"] = self.readyTs!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Data") && dict["Data"] != nil {
            var tmp : [DescribeMeterRtcDurationResponseBody.Data] = []
            for v in dict["Data"] as! [Any] {
                var model = DescribeMeterRtcDurationResponseBody.Data()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.data = tmp
        }
        if dict.keys.contains("ReadyTs") && dict["ReadyTs"] != nil {
            self.readyTs = dict["ReadyTs"] as! Int64
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class DescribeMeterRtcDurationResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeMeterRtcDurationResponseBody?

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
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = DescribeMeterRtcDurationResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeMeterRtcPeakChannelCntDataRequest : Tea.TeaModel {
    public var appId: String?

    public var endTs: Int64?

    public var interval: Int64?

    public var serviceArea: String?

    public var startTs: Int64?

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
        if self.appId != nil {
            map["AppId"] = self.appId!
        }
        if self.endTs != nil {
            map["EndTs"] = self.endTs!
        }
        if self.interval != nil {
            map["Interval"] = self.interval!
        }
        if self.serviceArea != nil {
            map["ServiceArea"] = self.serviceArea!
        }
        if self.startTs != nil {
            map["StartTs"] = self.startTs!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AppId") && dict["AppId"] != nil {
            self.appId = dict["AppId"] as! String
        }
        if dict.keys.contains("EndTs") && dict["EndTs"] != nil {
            self.endTs = dict["EndTs"] as! Int64
        }
        if dict.keys.contains("Interval") && dict["Interval"] != nil {
            self.interval = dict["Interval"] as! Int64
        }
        if dict.keys.contains("ServiceArea") && dict["ServiceArea"] != nil {
            self.serviceArea = dict["ServiceArea"] as! String
        }
        if dict.keys.contains("StartTs") && dict["StartTs"] != nil {
            self.startTs = dict["StartTs"] as! Int64
        }
    }
}

public class DescribeMeterRtcPeakChannelCntDataResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var activeChannelPeak: Int64?

        public var activeChannelPeakTime: Int64?

        public var timestamp: Int64?

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
            if self.activeChannelPeak != nil {
                map["ActiveChannelPeak"] = self.activeChannelPeak!
            }
            if self.activeChannelPeakTime != nil {
                map["ActiveChannelPeakTime"] = self.activeChannelPeakTime!
            }
            if self.timestamp != nil {
                map["Timestamp"] = self.timestamp!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("ActiveChannelPeak") && dict["ActiveChannelPeak"] != nil {
                self.activeChannelPeak = dict["ActiveChannelPeak"] as! Int64
            }
            if dict.keys.contains("ActiveChannelPeakTime") && dict["ActiveChannelPeakTime"] != nil {
                self.activeChannelPeakTime = dict["ActiveChannelPeakTime"] as! Int64
            }
            if dict.keys.contains("Timestamp") && dict["Timestamp"] != nil {
                self.timestamp = dict["Timestamp"] as! Int64
            }
        }
    }
    public var data: [DescribeMeterRtcPeakChannelCntDataResponseBody.Data]?

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
            var tmp : [Any] = []
            for k in self.data! {
                tmp.append(k.toMap())
            }
            map["Data"] = tmp
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Data") && dict["Data"] != nil {
            var tmp : [DescribeMeterRtcPeakChannelCntDataResponseBody.Data] = []
            for v in dict["Data"] as! [Any] {
                var model = DescribeMeterRtcPeakChannelCntDataResponseBody.Data()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.data = tmp
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class DescribeMeterRtcPeakChannelCntDataResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeMeterRtcPeakChannelCntDataResponseBody?

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
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = DescribeMeterRtcPeakChannelCntDataResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeMeterRtcPeakUserCntDataRequest : Tea.TeaModel {
    public var appId: String?

    public var endTs: Int64?

    public var interval: Int64?

    public var serviceArea: String?

    public var startTs: Int64?

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
        if self.appId != nil {
            map["AppId"] = self.appId!
        }
        if self.endTs != nil {
            map["EndTs"] = self.endTs!
        }
        if self.interval != nil {
            map["Interval"] = self.interval!
        }
        if self.serviceArea != nil {
            map["ServiceArea"] = self.serviceArea!
        }
        if self.startTs != nil {
            map["StartTs"] = self.startTs!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AppId") && dict["AppId"] != nil {
            self.appId = dict["AppId"] as! String
        }
        if dict.keys.contains("EndTs") && dict["EndTs"] != nil {
            self.endTs = dict["EndTs"] as! Int64
        }
        if dict.keys.contains("Interval") && dict["Interval"] != nil {
            self.interval = dict["Interval"] as! Int64
        }
        if dict.keys.contains("ServiceArea") && dict["ServiceArea"] != nil {
            self.serviceArea = dict["ServiceArea"] as! String
        }
        if dict.keys.contains("StartTs") && dict["StartTs"] != nil {
            self.startTs = dict["StartTs"] as! Int64
        }
    }
}

public class DescribeMeterRtcPeakUserCntDataResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var activeUserPeak: Int64?

        public var activeUserPeakTime: Int64?

        public var timestamp: Int64?

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
            if self.activeUserPeak != nil {
                map["ActiveUserPeak"] = self.activeUserPeak!
            }
            if self.activeUserPeakTime != nil {
                map["ActiveUserPeakTime"] = self.activeUserPeakTime!
            }
            if self.timestamp != nil {
                map["Timestamp"] = self.timestamp!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("ActiveUserPeak") && dict["ActiveUserPeak"] != nil {
                self.activeUserPeak = dict["ActiveUserPeak"] as! Int64
            }
            if dict.keys.contains("ActiveUserPeakTime") && dict["ActiveUserPeakTime"] != nil {
                self.activeUserPeakTime = dict["ActiveUserPeakTime"] as! Int64
            }
            if dict.keys.contains("Timestamp") && dict["Timestamp"] != nil {
                self.timestamp = dict["Timestamp"] as! Int64
            }
        }
    }
    public var data: [DescribeMeterRtcPeakUserCntDataResponseBody.Data]?

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
            var tmp : [Any] = []
            for k in self.data! {
                tmp.append(k.toMap())
            }
            map["Data"] = tmp
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Data") && dict["Data"] != nil {
            var tmp : [DescribeMeterRtcPeakUserCntDataResponseBody.Data] = []
            for v in dict["Data"] as! [Any] {
                var model = DescribeMeterRtcPeakUserCntDataResponseBody.Data()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.data = tmp
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class DescribeMeterRtcPeakUserCntDataResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeMeterRtcPeakUserCntDataResponseBody?

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
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = DescribeMeterRtcPeakUserCntDataResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeMeterRtcRtBandWidthUsageRequest : Tea.TeaModel {
    public var appId: String?

    public var endTs: Int64?

    public var interval: Int64?

    public var serviceArea: String?

    public var startTs: Int64?

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
        if self.appId != nil {
            map["AppId"] = self.appId!
        }
        if self.endTs != nil {
            map["EndTs"] = self.endTs!
        }
        if self.interval != nil {
            map["Interval"] = self.interval!
        }
        if self.serviceArea != nil {
            map["ServiceArea"] = self.serviceArea!
        }
        if self.startTs != nil {
            map["StartTs"] = self.startTs!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AppId") && dict["AppId"] != nil {
            self.appId = dict["AppId"] as! String
        }
        if dict.keys.contains("EndTs") && dict["EndTs"] != nil {
            self.endTs = dict["EndTs"] as! Int64
        }
        if dict.keys.contains("Interval") && dict["Interval"] != nil {
            self.interval = dict["Interval"] as! Int64
        }
        if dict.keys.contains("ServiceArea") && dict["ServiceArea"] != nil {
            self.serviceArea = dict["ServiceArea"] as! String
        }
        if dict.keys.contains("StartTs") && dict["StartTs"] != nil {
            self.startTs = dict["StartTs"] as! Int64
        }
    }
}

public class DescribeMeterRtcRtBandWidthUsageResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var anchorPeakRate: Double?

        public var anchorPeakTs: Int64?

        public var audiencePeakRate: Double?

        public var audiencePeakTs: Int64?

        public var peakRate: Double?

        public var peakTs: Int64?

        public var timestamp: Int64?

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
            if self.anchorPeakRate != nil {
                map["AnchorPeakRate"] = self.anchorPeakRate!
            }
            if self.anchorPeakTs != nil {
                map["AnchorPeakTs"] = self.anchorPeakTs!
            }
            if self.audiencePeakRate != nil {
                map["AudiencePeakRate"] = self.audiencePeakRate!
            }
            if self.audiencePeakTs != nil {
                map["AudiencePeakTs"] = self.audiencePeakTs!
            }
            if self.peakRate != nil {
                map["PeakRate"] = self.peakRate!
            }
            if self.peakTs != nil {
                map["PeakTs"] = self.peakTs!
            }
            if self.timestamp != nil {
                map["Timestamp"] = self.timestamp!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("AnchorPeakRate") && dict["AnchorPeakRate"] != nil {
                self.anchorPeakRate = dict["AnchorPeakRate"] as! Double
            }
            if dict.keys.contains("AnchorPeakTs") && dict["AnchorPeakTs"] != nil {
                self.anchorPeakTs = dict["AnchorPeakTs"] as! Int64
            }
            if dict.keys.contains("AudiencePeakRate") && dict["AudiencePeakRate"] != nil {
                self.audiencePeakRate = dict["AudiencePeakRate"] as! Double
            }
            if dict.keys.contains("AudiencePeakTs") && dict["AudiencePeakTs"] != nil {
                self.audiencePeakTs = dict["AudiencePeakTs"] as! Int64
            }
            if dict.keys.contains("PeakRate") && dict["PeakRate"] != nil {
                self.peakRate = dict["PeakRate"] as! Double
            }
            if dict.keys.contains("PeakTs") && dict["PeakTs"] != nil {
                self.peakTs = dict["PeakTs"] as! Int64
            }
            if dict.keys.contains("Timestamp") && dict["Timestamp"] != nil {
                self.timestamp = dict["Timestamp"] as! Int64
            }
        }
    }
    public var data: [DescribeMeterRtcRtBandWidthUsageResponseBody.Data]?

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
            var tmp : [Any] = []
            for k in self.data! {
                tmp.append(k.toMap())
            }
            map["Data"] = tmp
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Data") && dict["Data"] != nil {
            var tmp : [DescribeMeterRtcRtBandWidthUsageResponseBody.Data] = []
            for v in dict["Data"] as! [Any] {
                var model = DescribeMeterRtcRtBandWidthUsageResponseBody.Data()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.data = tmp
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class DescribeMeterRtcRtBandWidthUsageResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeMeterRtcRtBandWidthUsageResponseBody?

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
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = DescribeMeterRtcRtBandWidthUsageResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeMeterRtcRtFlowUsageRequest : Tea.TeaModel {
    public var appId: String?

    public var endTs: Int64?

    public var interval: Int64?

    public var serviceArea: String?

    public var startTs: Int64?

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
        if self.appId != nil {
            map["AppId"] = self.appId!
        }
        if self.endTs != nil {
            map["EndTs"] = self.endTs!
        }
        if self.interval != nil {
            map["Interval"] = self.interval!
        }
        if self.serviceArea != nil {
            map["ServiceArea"] = self.serviceArea!
        }
        if self.startTs != nil {
            map["StartTs"] = self.startTs!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AppId") && dict["AppId"] != nil {
            self.appId = dict["AppId"] as! String
        }
        if dict.keys.contains("EndTs") && dict["EndTs"] != nil {
            self.endTs = dict["EndTs"] as! Int64
        }
        if dict.keys.contains("Interval") && dict["Interval"] != nil {
            self.interval = dict["Interval"] as! Int64
        }
        if dict.keys.contains("ServiceArea") && dict["ServiceArea"] != nil {
            self.serviceArea = dict["ServiceArea"] as! String
        }
        if dict.keys.contains("StartTs") && dict["StartTs"] != nil {
            self.startTs = dict["StartTs"] as! Int64
        }
    }
}

public class DescribeMeterRtcRtFlowUsageResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var anchorFlowValue: Double?

        public var audienceFlowValue: Double?

        public var flowValue: Double?

        public var timestamp: Int64?

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
            if self.anchorFlowValue != nil {
                map["AnchorFlowValue"] = self.anchorFlowValue!
            }
            if self.audienceFlowValue != nil {
                map["AudienceFlowValue"] = self.audienceFlowValue!
            }
            if self.flowValue != nil {
                map["FlowValue"] = self.flowValue!
            }
            if self.timestamp != nil {
                map["Timestamp"] = self.timestamp!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("AnchorFlowValue") && dict["AnchorFlowValue"] != nil {
                self.anchorFlowValue = dict["AnchorFlowValue"] as! Double
            }
            if dict.keys.contains("AudienceFlowValue") && dict["AudienceFlowValue"] != nil {
                self.audienceFlowValue = dict["AudienceFlowValue"] as! Double
            }
            if dict.keys.contains("FlowValue") && dict["FlowValue"] != nil {
                self.flowValue = dict["FlowValue"] as! Double
            }
            if dict.keys.contains("Timestamp") && dict["Timestamp"] != nil {
                self.timestamp = dict["Timestamp"] as! Int64
            }
        }
    }
    public var data: [DescribeMeterRtcRtFlowUsageResponseBody.Data]?

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
            var tmp : [Any] = []
            for k in self.data! {
                tmp.append(k.toMap())
            }
            map["Data"] = tmp
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Data") && dict["Data"] != nil {
            var tmp : [DescribeMeterRtcRtFlowUsageResponseBody.Data] = []
            for v in dict["Data"] as! [Any] {
                var model = DescribeMeterRtcRtFlowUsageResponseBody.Data()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.data = tmp
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class DescribeMeterRtcRtFlowUsageResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeMeterRtcRtFlowUsageResponseBody?

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
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = DescribeMeterRtcRtFlowUsageResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeMeterRtcUserCntDataRequest : Tea.TeaModel {
    public var appId: String?

    public var endTs: Int64?

    public var interval: Int64?

    public var serviceArea: String?

    public var startTs: Int64?

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
        if self.appId != nil {
            map["AppId"] = self.appId!
        }
        if self.endTs != nil {
            map["EndTs"] = self.endTs!
        }
        if self.interval != nil {
            map["Interval"] = self.interval!
        }
        if self.serviceArea != nil {
            map["ServiceArea"] = self.serviceArea!
        }
        if self.startTs != nil {
            map["StartTs"] = self.startTs!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AppId") && dict["AppId"] != nil {
            self.appId = dict["AppId"] as! String
        }
        if dict.keys.contains("EndTs") && dict["EndTs"] != nil {
            self.endTs = dict["EndTs"] as! Int64
        }
        if dict.keys.contains("Interval") && dict["Interval"] != nil {
            self.interval = dict["Interval"] as! Int64
        }
        if dict.keys.contains("ServiceArea") && dict["ServiceArea"] != nil {
            self.serviceArea = dict["ServiceArea"] as! String
        }
        if dict.keys.contains("StartTs") && dict["StartTs"] != nil {
            self.startTs = dict["StartTs"] as! Int64
        }
    }
}

public class DescribeMeterRtcUserCntDataResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var activeUserCnt: Int64?

        public var timestamp: Int64?

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
            if self.activeUserCnt != nil {
                map["ActiveUserCnt"] = self.activeUserCnt!
            }
            if self.timestamp != nil {
                map["Timestamp"] = self.timestamp!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("ActiveUserCnt") && dict["ActiveUserCnt"] != nil {
                self.activeUserCnt = dict["ActiveUserCnt"] as! Int64
            }
            if dict.keys.contains("Timestamp") && dict["Timestamp"] != nil {
                self.timestamp = dict["Timestamp"] as! Int64
            }
        }
    }
    public var data: [DescribeMeterRtcUserCntDataResponseBody.Data]?

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
            var tmp : [Any] = []
            for k in self.data! {
                tmp.append(k.toMap())
            }
            map["Data"] = tmp
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Data") && dict["Data"] != nil {
            var tmp : [DescribeMeterRtcUserCntDataResponseBody.Data] = []
            for v in dict["Data"] as! [Any] {
                var model = DescribeMeterRtcUserCntDataResponseBody.Data()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.data = tmp
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class DescribeMeterRtcUserCntDataResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeMeterRtcUserCntDataResponseBody?

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
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = DescribeMeterRtcUserCntDataResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeNewPlayVideoPlaySessionEventDetailRequest : Tea.TeaModel {
    public var bizDate: Int64?

    public var inputStatus: String?

    public var pageNum: Int32?

    public var pageSize: Int32?

    public var VPS: String?

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
        if self.bizDate != nil {
            map["BizDate"] = self.bizDate!
        }
        if self.inputStatus != nil {
            map["InputStatus"] = self.inputStatus!
        }
        if self.pageNum != nil {
            map["PageNum"] = self.pageNum!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.VPS != nil {
            map["VPS"] = self.VPS!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("BizDate") && dict["BizDate"] != nil {
            self.bizDate = dict["BizDate"] as! Int64
        }
        if dict.keys.contains("InputStatus") && dict["InputStatus"] != nil {
            self.inputStatus = dict["InputStatus"] as! String
        }
        if dict.keys.contains("PageNum") && dict["PageNum"] != nil {
            self.pageNum = dict["PageNum"] as! Int32
        }
        if dict.keys.contains("PageSize") && dict["PageSize"] != nil {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("VPS") && dict["VPS"] != nil {
            self.VPS = dict["VPS"] as! String
        }
    }
}

public class DescribeNewPlayVideoPlaySessionEventDetailResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var bizTime: String?

        public var cost: String?

        public var details: String?

        public var eventName: String?

        public var IP: String?

        public var ISP: String?

        public var isNormal: Int32?

        public var networkType: String?

        public var region: String?

        public var subject: String?

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
            if self.bizTime != nil {
                map["BizTime"] = self.bizTime!
            }
            if self.cost != nil {
                map["Cost"] = self.cost!
            }
            if self.details != nil {
                map["Details"] = self.details!
            }
            if self.eventName != nil {
                map["EventName"] = self.eventName!
            }
            if self.IP != nil {
                map["IP"] = self.IP!
            }
            if self.ISP != nil {
                map["ISP"] = self.ISP!
            }
            if self.isNormal != nil {
                map["IsNormal"] = self.isNormal!
            }
            if self.networkType != nil {
                map["NetworkType"] = self.networkType!
            }
            if self.region != nil {
                map["Region"] = self.region!
            }
            if self.subject != nil {
                map["Subject"] = self.subject!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("BizTime") && dict["BizTime"] != nil {
                self.bizTime = dict["BizTime"] as! String
            }
            if dict.keys.contains("Cost") && dict["Cost"] != nil {
                self.cost = dict["Cost"] as! String
            }
            if dict.keys.contains("Details") && dict["Details"] != nil {
                self.details = dict["Details"] as! String
            }
            if dict.keys.contains("EventName") && dict["EventName"] != nil {
                self.eventName = dict["EventName"] as! String
            }
            if dict.keys.contains("IP") && dict["IP"] != nil {
                self.IP = dict["IP"] as! String
            }
            if dict.keys.contains("ISP") && dict["ISP"] != nil {
                self.ISP = dict["ISP"] as! String
            }
            if dict.keys.contains("IsNormal") && dict["IsNormal"] != nil {
                self.isNormal = dict["IsNormal"] as! Int32
            }
            if dict.keys.contains("NetworkType") && dict["NetworkType"] != nil {
                self.networkType = dict["NetworkType"] as! String
            }
            if dict.keys.contains("Region") && dict["Region"] != nil {
                self.region = dict["Region"] as! String
            }
            if dict.keys.contains("Subject") && dict["Subject"] != nil {
                self.subject = dict["Subject"] as! String
            }
        }
    }
    public var data: [DescribeNewPlayVideoPlaySessionEventDetailResponseBody.Data]?

    public var pageNum: Int64?

    public var pageSize: Int64?

    public var readyTs: Int64?

    public var requestId: String?

    public var totalNum: Int64?

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
        if self.pageNum != nil {
            map["PageNum"] = self.pageNum!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.readyTs != nil {
            map["ReadyTs"] = self.readyTs!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.totalNum != nil {
            map["TotalNum"] = self.totalNum!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Data") && dict["Data"] != nil {
            var tmp : [DescribeNewPlayVideoPlaySessionEventDetailResponseBody.Data] = []
            for v in dict["Data"] as! [Any] {
                var model = DescribeNewPlayVideoPlaySessionEventDetailResponseBody.Data()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.data = tmp
        }
        if dict.keys.contains("PageNum") && dict["PageNum"] != nil {
            self.pageNum = dict["PageNum"] as! Int64
        }
        if dict.keys.contains("PageSize") && dict["PageSize"] != nil {
            self.pageSize = dict["PageSize"] as! Int64
        }
        if dict.keys.contains("ReadyTs") && dict["ReadyTs"] != nil {
            self.readyTs = dict["ReadyTs"] as! Int64
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("TotalNum") && dict["TotalNum"] != nil {
            self.totalNum = dict["TotalNum"] as! Int64
        }
    }
}

public class DescribeNewPlayVideoPlaySessionEventDetailResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeNewPlayVideoPlaySessionEventDetailResponseBody?

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
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = DescribeNewPlayVideoPlaySessionEventDetailResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeNewPlayVideoPlaySessionListRequest : Tea.TeaModel {
    public var endTimeStamp: String?

    public var inputStatus: String?

    public var order: String?

    public var pageNum: Int32?

    public var pageSize: Int32?

    public var startTimeStamp: String?

    public var uniqueId: String?

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
        if self.endTimeStamp != nil {
            map["EndTimeStamp"] = self.endTimeStamp!
        }
        if self.inputStatus != nil {
            map["InputStatus"] = self.inputStatus!
        }
        if self.order != nil {
            map["Order"] = self.order!
        }
        if self.pageNum != nil {
            map["PageNum"] = self.pageNum!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.startTimeStamp != nil {
            map["StartTimeStamp"] = self.startTimeStamp!
        }
        if self.uniqueId != nil {
            map["UniqueId"] = self.uniqueId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("EndTimeStamp") && dict["EndTimeStamp"] != nil {
            self.endTimeStamp = dict["EndTimeStamp"] as! String
        }
        if dict.keys.contains("InputStatus") && dict["InputStatus"] != nil {
            self.inputStatus = dict["InputStatus"] as! String
        }
        if dict.keys.contains("Order") && dict["Order"] != nil {
            self.order = dict["Order"] as! String
        }
        if dict.keys.contains("PageNum") && dict["PageNum"] != nil {
            self.pageNum = dict["PageNum"] as! Int32
        }
        if dict.keys.contains("PageSize") && dict["PageSize"] != nil {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("StartTimeStamp") && dict["StartTimeStamp"] != nil {
            self.startTimeStamp = dict["StartTimeStamp"] as! String
        }
        if dict.keys.contains("UniqueId") && dict["UniqueId"] != nil {
            self.uniqueId = dict["UniqueId"] as! String
        }
    }
}

public class DescribeNewPlayVideoPlaySessionListResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var gmtModifiedTime: String?

        public var status: String?

        public var traceId: String?

        public var UUID: String?

        public var VPS: String?

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
            if self.gmtModifiedTime != nil {
                map["GmtModifiedTime"] = self.gmtModifiedTime!
            }
            if self.status != nil {
                map["Status"] = self.status!
            }
            if self.traceId != nil {
                map["TraceId"] = self.traceId!
            }
            if self.UUID != nil {
                map["UUID"] = self.UUID!
            }
            if self.VPS != nil {
                map["VPS"] = self.VPS!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("GmtModifiedTime") && dict["GmtModifiedTime"] != nil {
                self.gmtModifiedTime = dict["GmtModifiedTime"] as! String
            }
            if dict.keys.contains("Status") && dict["Status"] != nil {
                self.status = dict["Status"] as! String
            }
            if dict.keys.contains("TraceId") && dict["TraceId"] != nil {
                self.traceId = dict["TraceId"] as! String
            }
            if dict.keys.contains("UUID") && dict["UUID"] != nil {
                self.UUID = dict["UUID"] as! String
            }
            if dict.keys.contains("VPS") && dict["VPS"] != nil {
                self.VPS = dict["VPS"] as! String
            }
        }
    }
    public var data: [DescribeNewPlayVideoPlaySessionListResponseBody.Data]?

    public var pageNum: Int64?

    public var pageSize: Int64?

    public var readyTs: Int64?

    public var requestId: String?

    public var totalNum: Int64?

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
        if self.pageNum != nil {
            map["PageNum"] = self.pageNum!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.readyTs != nil {
            map["ReadyTs"] = self.readyTs!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.totalNum != nil {
            map["TotalNum"] = self.totalNum!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Data") && dict["Data"] != nil {
            var tmp : [DescribeNewPlayVideoPlaySessionListResponseBody.Data] = []
            for v in dict["Data"] as! [Any] {
                var model = DescribeNewPlayVideoPlaySessionListResponseBody.Data()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.data = tmp
        }
        if dict.keys.contains("PageNum") && dict["PageNum"] != nil {
            self.pageNum = dict["PageNum"] as! Int64
        }
        if dict.keys.contains("PageSize") && dict["PageSize"] != nil {
            self.pageSize = dict["PageSize"] as! Int64
        }
        if dict.keys.contains("ReadyTs") && dict["ReadyTs"] != nil {
            self.readyTs = dict["ReadyTs"] as! Int64
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("TotalNum") && dict["TotalNum"] != nil {
            self.totalNum = dict["TotalNum"] as! Int64
        }
    }
}

public class DescribeNewPlayVideoPlaySessionListResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeNewPlayVideoPlaySessionListResponseBody?

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
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = DescribeNewPlayVideoPlaySessionListResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeNewPlayVideoPlaySessioninfoRequest : Tea.TeaModel {
    public var VPS: String?

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
        if self.VPS != nil {
            map["VPS"] = self.VPS!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("VPS") && dict["VPS"] != nil {
            self.VPS = dict["VPS"] as! String
        }
    }
}

public class DescribeNewPlayVideoPlaySessioninfoResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var appId: String?

        public var appName: String?

        public var appVersion: String?

        public var deviceBrand: String?

        public var deviceModel: String?

        public var OS: String?

        public var OV: String?

        public var terminalType: String?

        public var VPS: String?

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
            if self.appId != nil {
                map["AppId"] = self.appId!
            }
            if self.appName != nil {
                map["AppName"] = self.appName!
            }
            if self.appVersion != nil {
                map["AppVersion"] = self.appVersion!
            }
            if self.deviceBrand != nil {
                map["DeviceBrand"] = self.deviceBrand!
            }
            if self.deviceModel != nil {
                map["DeviceModel"] = self.deviceModel!
            }
            if self.OS != nil {
                map["OS"] = self.OS!
            }
            if self.OV != nil {
                map["OV"] = self.OV!
            }
            if self.terminalType != nil {
                map["TerminalType"] = self.terminalType!
            }
            if self.VPS != nil {
                map["VPS"] = self.VPS!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("AppId") && dict["AppId"] != nil {
                self.appId = dict["AppId"] as! String
            }
            if dict.keys.contains("AppName") && dict["AppName"] != nil {
                self.appName = dict["AppName"] as! String
            }
            if dict.keys.contains("AppVersion") && dict["AppVersion"] != nil {
                self.appVersion = dict["AppVersion"] as! String
            }
            if dict.keys.contains("DeviceBrand") && dict["DeviceBrand"] != nil {
                self.deviceBrand = dict["DeviceBrand"] as! String
            }
            if dict.keys.contains("DeviceModel") && dict["DeviceModel"] != nil {
                self.deviceModel = dict["DeviceModel"] as! String
            }
            if dict.keys.contains("OS") && dict["OS"] != nil {
                self.OS = dict["OS"] as! String
            }
            if dict.keys.contains("OV") && dict["OV"] != nil {
                self.OV = dict["OV"] as! String
            }
            if dict.keys.contains("TerminalType") && dict["TerminalType"] != nil {
                self.terminalType = dict["TerminalType"] as! String
            }
            if dict.keys.contains("VPS") && dict["VPS"] != nil {
                self.VPS = dict["VPS"] as! String
            }
        }
    }
    public var data: [DescribeNewPlayVideoPlaySessioninfoResponseBody.Data]?

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
            var tmp : [Any] = []
            for k in self.data! {
                tmp.append(k.toMap())
            }
            map["Data"] = tmp
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Data") && dict["Data"] != nil {
            var tmp : [DescribeNewPlayVideoPlaySessioninfoResponseBody.Data] = []
            for v in dict["Data"] as! [Any] {
                var model = DescribeNewPlayVideoPlaySessioninfoResponseBody.Data()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.data = tmp
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class DescribeNewPlayVideoPlaySessioninfoResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeNewPlayVideoPlaySessioninfoResponseBody?

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
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = DescribeNewPlayVideoPlaySessioninfoResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}
