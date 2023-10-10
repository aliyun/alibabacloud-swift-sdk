import Foundation
import Tea
import TeaUtils
import AlibabacloudOpenApi
import AlibabaCloudOpenApiUtil
import AlibabacloudEndpointUtil

public class AnalysisConfig : Tea.TeaModel {
    public class TimeRange : Tea.TeaModel {
        public var end: Double?

        public var start: Double?

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
            if self.end != nil {
                map["end"] = self.end!
            }
            if self.start != nil {
                map["start"] = self.start!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("end") && dict["end"] != nil {
                self.end = dict["end"] as! Double
            }
            if dict.keys.contains("start") && dict["start"] != nil {
                self.start = dict["start"] as! Double
            }
        }
    }
    public var badThroughputThreshold: Double?

    public var fullGCFrequentIntervalThreshold: Double?

    public var highHeapUsageThreshold: Double?

    public var highHumongousUsageThreshold: Double?

    public var highMetaspaceUsageThreshold: Double?

    public var highOldUsageThreshold: Double?

    public var highPromotionThreshold: Double?

    public var highSysThreshold: Double?

    public var longConcurrentThreshold: Double?

    public var longPauseThreshold: Double?

    public var lowUsrThreshold: Double?

    public var oldGCFrequentIntervalThreshold: Double?

    public var smallGenerationThreshold: Double?

    public var timeRange: AnalysisConfig.TimeRange?

    public var tooManyOldGCThreshold: Double?

    public var youngGCFrequentIntervalThreshold: Double?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.timeRange?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.badThroughputThreshold != nil {
            map["badThroughputThreshold"] = self.badThroughputThreshold!
        }
        if self.fullGCFrequentIntervalThreshold != nil {
            map["fullGCFrequentIntervalThreshold"] = self.fullGCFrequentIntervalThreshold!
        }
        if self.highHeapUsageThreshold != nil {
            map["highHeapUsageThreshold"] = self.highHeapUsageThreshold!
        }
        if self.highHumongousUsageThreshold != nil {
            map["highHumongousUsageThreshold"] = self.highHumongousUsageThreshold!
        }
        if self.highMetaspaceUsageThreshold != nil {
            map["highMetaspaceUsageThreshold"] = self.highMetaspaceUsageThreshold!
        }
        if self.highOldUsageThreshold != nil {
            map["highOldUsageThreshold"] = self.highOldUsageThreshold!
        }
        if self.highPromotionThreshold != nil {
            map["highPromotionThreshold"] = self.highPromotionThreshold!
        }
        if self.highSysThreshold != nil {
            map["highSysThreshold"] = self.highSysThreshold!
        }
        if self.longConcurrentThreshold != nil {
            map["longConcurrentThreshold"] = self.longConcurrentThreshold!
        }
        if self.longPauseThreshold != nil {
            map["longPauseThreshold"] = self.longPauseThreshold!
        }
        if self.lowUsrThreshold != nil {
            map["lowUsrThreshold"] = self.lowUsrThreshold!
        }
        if self.oldGCFrequentIntervalThreshold != nil {
            map["oldGCFrequentIntervalThreshold"] = self.oldGCFrequentIntervalThreshold!
        }
        if self.smallGenerationThreshold != nil {
            map["smallGenerationThreshold"] = self.smallGenerationThreshold!
        }
        if self.timeRange != nil {
            map["timeRange"] = self.timeRange?.toMap()
        }
        if self.tooManyOldGCThreshold != nil {
            map["tooManyOldGCThreshold"] = self.tooManyOldGCThreshold!
        }
        if self.youngGCFrequentIntervalThreshold != nil {
            map["youngGCFrequentIntervalThreshold"] = self.youngGCFrequentIntervalThreshold!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("badThroughputThreshold") && dict["badThroughputThreshold"] != nil {
            self.badThroughputThreshold = dict["badThroughputThreshold"] as! Double
        }
        if dict.keys.contains("fullGCFrequentIntervalThreshold") && dict["fullGCFrequentIntervalThreshold"] != nil {
            self.fullGCFrequentIntervalThreshold = dict["fullGCFrequentIntervalThreshold"] as! Double
        }
        if dict.keys.contains("highHeapUsageThreshold") && dict["highHeapUsageThreshold"] != nil {
            self.highHeapUsageThreshold = dict["highHeapUsageThreshold"] as! Double
        }
        if dict.keys.contains("highHumongousUsageThreshold") && dict["highHumongousUsageThreshold"] != nil {
            self.highHumongousUsageThreshold = dict["highHumongousUsageThreshold"] as! Double
        }
        if dict.keys.contains("highMetaspaceUsageThreshold") && dict["highMetaspaceUsageThreshold"] != nil {
            self.highMetaspaceUsageThreshold = dict["highMetaspaceUsageThreshold"] as! Double
        }
        if dict.keys.contains("highOldUsageThreshold") && dict["highOldUsageThreshold"] != nil {
            self.highOldUsageThreshold = dict["highOldUsageThreshold"] as! Double
        }
        if dict.keys.contains("highPromotionThreshold") && dict["highPromotionThreshold"] != nil {
            self.highPromotionThreshold = dict["highPromotionThreshold"] as! Double
        }
        if dict.keys.contains("highSysThreshold") && dict["highSysThreshold"] != nil {
            self.highSysThreshold = dict["highSysThreshold"] as! Double
        }
        if dict.keys.contains("longConcurrentThreshold") && dict["longConcurrentThreshold"] != nil {
            self.longConcurrentThreshold = dict["longConcurrentThreshold"] as! Double
        }
        if dict.keys.contains("longPauseThreshold") && dict["longPauseThreshold"] != nil {
            self.longPauseThreshold = dict["longPauseThreshold"] as! Double
        }
        if dict.keys.contains("lowUsrThreshold") && dict["lowUsrThreshold"] != nil {
            self.lowUsrThreshold = dict["lowUsrThreshold"] as! Double
        }
        if dict.keys.contains("oldGCFrequentIntervalThreshold") && dict["oldGCFrequentIntervalThreshold"] != nil {
            self.oldGCFrequentIntervalThreshold = dict["oldGCFrequentIntervalThreshold"] as! Double
        }
        if dict.keys.contains("smallGenerationThreshold") && dict["smallGenerationThreshold"] != nil {
            self.smallGenerationThreshold = dict["smallGenerationThreshold"] as! Double
        }
        if dict.keys.contains("timeRange") && dict["timeRange"] != nil {
            var model = AnalysisConfig.TimeRange()
            model.fromMap(dict["timeRange"] as! [String: Any])
            self.timeRange = model
        }
        if dict.keys.contains("tooManyOldGCThreshold") && dict["tooManyOldGCThreshold"] != nil {
            self.tooManyOldGCThreshold = dict["tooManyOldGCThreshold"] as! Double
        }
        if dict.keys.contains("youngGCFrequentIntervalThreshold") && dict["youngGCFrequentIntervalThreshold"] != nil {
            self.youngGCFrequentIntervalThreshold = dict["youngGCFrequentIntervalThreshold"] as! Double
        }
    }
}

public class FileInfo : Tea.TeaModel {
    public class AnalyzeProgress : Tea.TeaModel {
        public var message: String?

        public var percent: Double?

        public var state: String?

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
                map["message"] = self.message!
            }
            if self.percent != nil {
                map["percent"] = self.percent!
            }
            if self.state != nil {
                map["state"] = self.state!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("message") && dict["message"] != nil {
                self.message = dict["message"] as! String
            }
            if dict.keys.contains("percent") && dict["percent"] != nil {
                self.percent = dict["percent"] as! Double
            }
            if dict.keys.contains("state") && dict["state"] != nil {
                self.state = dict["state"] as! String
            }
        }
    }
    public class TransferProgress : Tea.TeaModel {
        public var totalSize: Int64?

        public var transferredSize: Int64?

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
            if self.totalSize != nil {
                map["totalSize"] = self.totalSize!
            }
            if self.transferredSize != nil {
                map["transferredSize"] = self.transferredSize!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("totalSize") && dict["totalSize"] != nil {
                self.totalSize = dict["totalSize"] as! Int64
            }
            if dict.keys.contains("transferredSize") && dict["transferredSize"] != nil {
                self.transferredSize = dict["transferredSize"] as! Int64
            }
        }
    }
    public var analyzeProgress: FileInfo.AnalyzeProgress?

    public var creationTime: Int64?

    public var displayName: String?

    public var labels: String?

    public var name: String?

    public var requestId: String?

    public var shared: Bool?

    public var size: Int64?

    public var transferProgress: FileInfo.TransferProgress?

    public var transferState: String?

    public var type: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.analyzeProgress?.validate()
        try self.transferProgress?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.analyzeProgress != nil {
            map["analyzeProgress"] = self.analyzeProgress?.toMap()
        }
        if self.creationTime != nil {
            map["creationTime"] = self.creationTime!
        }
        if self.displayName != nil {
            map["displayName"] = self.displayName!
        }
        if self.labels != nil {
            map["labels"] = self.labels!
        }
        if self.name != nil {
            map["name"] = self.name!
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        if self.shared != nil {
            map["shared"] = self.shared!
        }
        if self.size != nil {
            map["size"] = self.size!
        }
        if self.transferProgress != nil {
            map["transferProgress"] = self.transferProgress?.toMap()
        }
        if self.transferState != nil {
            map["transferState"] = self.transferState!
        }
        if self.type != nil {
            map["type"] = self.type!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("analyzeProgress") && dict["analyzeProgress"] != nil {
            var model = FileInfo.AnalyzeProgress()
            model.fromMap(dict["analyzeProgress"] as! [String: Any])
            self.analyzeProgress = model
        }
        if dict.keys.contains("creationTime") && dict["creationTime"] != nil {
            self.creationTime = dict["creationTime"] as! Int64
        }
        if dict.keys.contains("displayName") && dict["displayName"] != nil {
            self.displayName = dict["displayName"] as! String
        }
        if dict.keys.contains("labels") && dict["labels"] != nil {
            self.labels = dict["labels"] as! String
        }
        if dict.keys.contains("name") && dict["name"] != nil {
            self.name = dict["name"] as! String
        }
        if dict.keys.contains("requestId") && dict["requestId"] != nil {
            self.requestId = dict["requestId"] as! String
        }
        if dict.keys.contains("shared") && dict["shared"] != nil {
            self.shared = dict["shared"] as! Bool
        }
        if dict.keys.contains("size") && dict["size"] != nil {
            self.size = dict["size"] as! Int64
        }
        if dict.keys.contains("transferProgress") && dict["transferProgress"] != nil {
            var model = FileInfo.TransferProgress()
            model.fromMap(dict["transferProgress"] as! [String: Any])
            self.transferProgress = model
        }
        if dict.keys.contains("transferState") && dict["transferState"] != nil {
            self.transferState = dict["transferState"] as! String
        }
        if dict.keys.contains("type") && dict["type"] != nil {
            self.type = dict["type"] as! String
        }
    }
}

public class PhaseStatisticItem : Tea.TeaModel {
    public var count: Int32?

    public var durationAvg: Double?

    public var durationMax: Double?

    public var durationTotal: Double?

    public var intervalAvg: Double?

    public var intervalMin: Double?

    public var name: String?

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
        if self.count != nil {
            map["count"] = self.count!
        }
        if self.durationAvg != nil {
            map["durationAvg"] = self.durationAvg!
        }
        if self.durationMax != nil {
            map["durationMax"] = self.durationMax!
        }
        if self.durationTotal != nil {
            map["durationTotal"] = self.durationTotal!
        }
        if self.intervalAvg != nil {
            map["intervalAvg"] = self.intervalAvg!
        }
        if self.intervalMin != nil {
            map["intervalMin"] = self.intervalMin!
        }
        if self.name != nil {
            map["name"] = self.name!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("count") && dict["count"] != nil {
            self.count = dict["count"] as! Int32
        }
        if dict.keys.contains("durationAvg") && dict["durationAvg"] != nil {
            self.durationAvg = dict["durationAvg"] as! Double
        }
        if dict.keys.contains("durationMax") && dict["durationMax"] != nil {
            self.durationMax = dict["durationMax"] as! Double
        }
        if dict.keys.contains("durationTotal") && dict["durationTotal"] != nil {
            self.durationTotal = dict["durationTotal"] as! Double
        }
        if dict.keys.contains("intervalAvg") && dict["intervalAvg"] != nil {
            self.intervalAvg = dict["intervalAvg"] as! Double
        }
        if dict.keys.contains("intervalMin") && dict["intervalMin"] != nil {
            self.intervalMin = dict["intervalMin"] as! Double
        }
        if dict.keys.contains("name") && dict["name"] != nil {
            self.name = dict["name"] as! String
        }
    }
}

public class AnalyzeFileRequest : Tea.TeaModel {
    public var keepUnreachableObjects: Bool?

    public var name: String?

    public var token: String?

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
        if self.keepUnreachableObjects != nil {
            map["keepUnreachableObjects"] = self.keepUnreachableObjects!
        }
        if self.name != nil {
            map["name"] = self.name!
        }
        if self.token != nil {
            map["token"] = self.token!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("keepUnreachableObjects") && dict["keepUnreachableObjects"] != nil {
            self.keepUnreachableObjects = dict["keepUnreachableObjects"] as! Bool
        }
        if dict.keys.contains("name") && dict["name"] != nil {
            self.name = dict["name"] as! String
        }
        if dict.keys.contains("token") && dict["token"] != nil {
            self.token = dict["token"] as! String
        }
    }
}

public class AnalyzeFileResponseBody : Tea.TeaModel {
    public var fileName: String?

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
        if self.fileName != nil {
            map["fileName"] = self.fileName!
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("fileName") && dict["fileName"] != nil {
            self.fileName = dict["fileName"] as! String
        }
        if dict.keys.contains("requestId") && dict["requestId"] != nil {
            self.requestId = dict["requestId"] as! String
        }
    }
}

public class AnalyzeFileResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: AnalyzeFileResponseBody?

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
            var model = AnalyzeFileResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetFileRequest : Tea.TeaModel {
    public var name: String?

    public var token: String?

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
        if self.name != nil {
            map["name"] = self.name!
        }
        if self.token != nil {
            map["token"] = self.token!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("name") && dict["name"] != nil {
            self.name = dict["name"] as! String
        }
        if dict.keys.contains("token") && dict["token"] != nil {
            self.token = dict["token"] as! String
        }
    }
}

public class GetFileResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: FileInfo?

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
            var model = FileInfo()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class UploadFileByOSSRequest : Tea.TeaModel {
    public var bucketName: String?

    public var displayName: String?

    public var endpoint: String?

    public var objectName: String?

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
        if self.bucketName != nil {
            map["bucketName"] = self.bucketName!
        }
        if self.displayName != nil {
            map["displayName"] = self.displayName!
        }
        if self.endpoint != nil {
            map["endpoint"] = self.endpoint!
        }
        if self.objectName != nil {
            map["objectName"] = self.objectName!
        }
        if self.type != nil {
            map["type"] = self.type!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("bucketName") && dict["bucketName"] != nil {
            self.bucketName = dict["bucketName"] as! String
        }
        if dict.keys.contains("displayName") && dict["displayName"] != nil {
            self.displayName = dict["displayName"] as! String
        }
        if dict.keys.contains("endpoint") && dict["endpoint"] != nil {
            self.endpoint = dict["endpoint"] as! String
        }
        if dict.keys.contains("objectName") && dict["objectName"] != nil {
            self.objectName = dict["objectName"] as! String
        }
        if dict.keys.contains("type") && dict["type"] != nil {
            self.type = dict["type"] as! String
        }
    }
}

public class UploadFileByOSSResponseBody : Tea.TeaModel {
    public var name: String?

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
        if self.name != nil {
            map["name"] = self.name!
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("name") && dict["name"] != nil {
            self.name = dict["name"] as! String
        }
        if dict.keys.contains("requestId") && dict["requestId"] != nil {
            self.requestId = dict["requestId"] as! String
        }
    }
}

public class UploadFileByOSSResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UploadFileByOSSResponseBody?

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
            var model = UploadFileByOSSResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class UploadFileByURLRequest : Tea.TeaModel {
    public var displayName: String?

    public var type: String?

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
        if self.displayName != nil {
            map["displayName"] = self.displayName!
        }
        if self.type != nil {
            map["type"] = self.type!
        }
        if self.url != nil {
            map["url"] = self.url!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("displayName") && dict["displayName"] != nil {
            self.displayName = dict["displayName"] as! String
        }
        if dict.keys.contains("type") && dict["type"] != nil {
            self.type = dict["type"] as! String
        }
        if dict.keys.contains("url") && dict["url"] != nil {
            self.url = dict["url"] as! String
        }
    }
}

public class UploadFileByURLResponseBody : Tea.TeaModel {
    public var name: String?

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
        if self.name != nil {
            map["name"] = self.name!
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("name") && dict["name"] != nil {
            self.name = dict["name"] as! String
        }
        if dict.keys.contains("requestId") && dict["requestId"] != nil {
            self.requestId = dict["requestId"] as! String
        }
    }
}

public class UploadFileByURLResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UploadFileByURLResponseBody?

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
            var model = UploadFileByURLResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}
