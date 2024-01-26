import Foundation
import Tea
import TeaUtils
import AlibabacloudOpenApi
import AlibabaCloudOpenApiUtil
import AlibabacloudEndpointUtil

public class GetReportRequest : Tea.TeaModel {
    public var reportId: Int64?

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
        if self.reportId != nil {
            map["ReportId"] = self.reportId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ReportId") && dict["ReportId"] != nil {
            self.reportId = dict["ReportId"] as! Int64
        }
    }
}

public class GetReportResponseBody : Tea.TeaModel {
    public var code: String?

    public var message: String?

    public var requestId: String?

    public var snapshot: String?

    public var success: Bool?

    public var summary: String?

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
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.snapshot != nil {
            map["Snapshot"] = self.snapshot!
        }
        if self.success != nil {
            map["Success"] = self.success!
        }
        if self.summary != nil {
            map["Summary"] = self.summary!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Message") && dict["Message"] != nil {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Snapshot") && dict["Snapshot"] != nil {
            self.snapshot = dict["Snapshot"] as! String
        }
        if dict.keys.contains("Success") && dict["Success"] != nil {
            self.success = dict["Success"] as! Bool
        }
        if dict.keys.contains("Summary") && dict["Summary"] != nil {
            self.summary = dict["Summary"] as! String
        }
    }
}

public class GetReportResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetReportResponseBody?

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
            var model = GetReportResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListRunnableScenesRequest : Tea.TeaModel {
    public var pageNumber: Int32?

    public var pageSize: Int32?

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
        if self.pageNumber != nil {
            map["PageNumber"] = self.pageNumber!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
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
    }
}

public class ListRunnableScenesResponseBody : Tea.TeaModel {
    public class Scenes : Tea.TeaModel {
        public class Scene : Tea.TeaModel {
            public var duration: Int32?

            public var modifiedTime: Int64?

            public var sceneId: Int64?

            public var sceneName: String?

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
                if self.modifiedTime != nil {
                    map["ModifiedTime"] = self.modifiedTime!
                }
                if self.sceneId != nil {
                    map["SceneId"] = self.sceneId!
                }
                if self.sceneName != nil {
                    map["SceneName"] = self.sceneName!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("Duration") && dict["Duration"] != nil {
                    self.duration = dict["Duration"] as! Int32
                }
                if dict.keys.contains("ModifiedTime") && dict["ModifiedTime"] != nil {
                    self.modifiedTime = dict["ModifiedTime"] as! Int64
                }
                if dict.keys.contains("SceneId") && dict["SceneId"] != nil {
                    self.sceneId = dict["SceneId"] as! Int64
                }
                if dict.keys.contains("SceneName") && dict["SceneName"] != nil {
                    self.sceneName = dict["SceneName"] as! String
                }
            }
        }
        public var scene: [ListRunnableScenesResponseBody.Scenes.Scene]?

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
            if self.scene != nil {
                var tmp : [Any] = []
                for k in self.scene! {
                    tmp.append(k.toMap())
                }
                map["Scene"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Scene") && dict["Scene"] != nil {
                var tmp : [ListRunnableScenesResponseBody.Scenes.Scene] = []
                for v in dict["Scene"] as! [Any] {
                    var model = ListRunnableScenesResponseBody.Scenes.Scene()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.scene = tmp
            }
        }
    }
    public var code: String?

    public var message: String?

    public var pageNumber: Int32?

    public var pageSize: Int32?

    public var requestId: String?

    public var scenes: ListRunnableScenesResponseBody.Scenes?

    public var success: Bool?

    public var totalCount: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.scenes?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.pageNumber != nil {
            map["PageNumber"] = self.pageNumber!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.scenes != nil {
            map["Scenes"] = self.scenes?.toMap()
        }
        if self.success != nil {
            map["Success"] = self.success!
        }
        if self.totalCount != nil {
            map["TotalCount"] = self.totalCount!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Message") && dict["Message"] != nil {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("PageNumber") && dict["PageNumber"] != nil {
            self.pageNumber = dict["PageNumber"] as! Int32
        }
        if dict.keys.contains("PageSize") && dict["PageSize"] != nil {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Scenes") && dict["Scenes"] != nil {
            var model = ListRunnableScenesResponseBody.Scenes()
            model.fromMap(dict["Scenes"] as! [String: Any])
            self.scenes = model
        }
        if dict.keys.contains("Success") && dict["Success"] != nil {
            self.success = dict["Success"] as! Bool
        }
        if dict.keys.contains("TotalCount") && dict["TotalCount"] != nil {
            self.totalCount = dict["TotalCount"] as! Int64
        }
    }
}

public class ListRunnableScenesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListRunnableScenesResponseBody?

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
            var model = ListRunnableScenesResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class QueryPlanStatusRequest : Tea.TeaModel {
    public var reportId: Int64?

    public var sceneId: Int64?

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
        if self.reportId != nil {
            map["ReportId"] = self.reportId!
        }
        if self.sceneId != nil {
            map["SceneId"] = self.sceneId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ReportId") && dict["ReportId"] != nil {
            self.reportId = dict["ReportId"] as! Int64
        }
        if dict.keys.contains("SceneId") && dict["SceneId"] != nil {
            self.sceneId = dict["SceneId"] as! Int64
        }
    }
}

public class QueryPlanStatusResponseBody : Tea.TeaModel {
    public class AgentLocations : Tea.TeaModel {
        public var agentLocation: [[String: Any]]?

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
            if self.agentLocation != nil {
                map["AgentLocation"] = self.agentLocation!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("AgentLocation") && dict["AgentLocation"] != nil {
                self.agentLocation = dict["AgentLocation"] as! [[String: Any]]
            }
        }
    }
    public class MonitorData : Tea.TeaModel {
        public var data: [[String: Any]]?

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
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Data") && dict["Data"] != nil {
                self.data = dict["Data"] as! [[String: Any]]
            }
        }
    }
    public var agentLocations: QueryPlanStatusResponseBody.AgentLocations?

    public var aliveAgentCount: Int32?

    public var averageRt: Int32?

    public var bpsRequest: String?

    public var bpsResponse: String?

    public var code: String?

    public var concurrency: Int32?

    public var concurrencyLimit: Int32?

    public var currentTime: Int64?

    public var failedBusinessCount: Int32?

    public var failedRequestCount: Int32?

    public var message: String?

    public var monitorData: QueryPlanStatusResponseBody.MonitorData?

    public var reportId: Int64?

    public var requestCount: String?

    public var requestId: String?

    public var seg90Rt: Int32?

    public var startTime: Int64?

    public var success: Bool?

    public var tips: String?

    public var totalAgentCount: Int32?

    public var tps: Int32?

    public var tpsLimit: Int32?

    public var vum: Int32?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.agentLocations?.validate()
        try self.monitorData?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.agentLocations != nil {
            map["AgentLocations"] = self.agentLocations?.toMap()
        }
        if self.aliveAgentCount != nil {
            map["AliveAgentCount"] = self.aliveAgentCount!
        }
        if self.averageRt != nil {
            map["AverageRt"] = self.averageRt!
        }
        if self.bpsRequest != nil {
            map["BpsRequest"] = self.bpsRequest!
        }
        if self.bpsResponse != nil {
            map["BpsResponse"] = self.bpsResponse!
        }
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.concurrency != nil {
            map["Concurrency"] = self.concurrency!
        }
        if self.concurrencyLimit != nil {
            map["ConcurrencyLimit"] = self.concurrencyLimit!
        }
        if self.currentTime != nil {
            map["CurrentTime"] = self.currentTime!
        }
        if self.failedBusinessCount != nil {
            map["FailedBusinessCount"] = self.failedBusinessCount!
        }
        if self.failedRequestCount != nil {
            map["FailedRequestCount"] = self.failedRequestCount!
        }
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.monitorData != nil {
            map["MonitorData"] = self.monitorData?.toMap()
        }
        if self.reportId != nil {
            map["ReportId"] = self.reportId!
        }
        if self.requestCount != nil {
            map["RequestCount"] = self.requestCount!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.seg90Rt != nil {
            map["Seg90Rt"] = self.seg90Rt!
        }
        if self.startTime != nil {
            map["StartTime"] = self.startTime!
        }
        if self.success != nil {
            map["Success"] = self.success!
        }
        if self.tips != nil {
            map["Tips"] = self.tips!
        }
        if self.totalAgentCount != nil {
            map["TotalAgentCount"] = self.totalAgentCount!
        }
        if self.tps != nil {
            map["Tps"] = self.tps!
        }
        if self.tpsLimit != nil {
            map["TpsLimit"] = self.tpsLimit!
        }
        if self.vum != nil {
            map["Vum"] = self.vum!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AgentLocations") && dict["AgentLocations"] != nil {
            var model = QueryPlanStatusResponseBody.AgentLocations()
            model.fromMap(dict["AgentLocations"] as! [String: Any])
            self.agentLocations = model
        }
        if dict.keys.contains("AliveAgentCount") && dict["AliveAgentCount"] != nil {
            self.aliveAgentCount = dict["AliveAgentCount"] as! Int32
        }
        if dict.keys.contains("AverageRt") && dict["AverageRt"] != nil {
            self.averageRt = dict["AverageRt"] as! Int32
        }
        if dict.keys.contains("BpsRequest") && dict["BpsRequest"] != nil {
            self.bpsRequest = dict["BpsRequest"] as! String
        }
        if dict.keys.contains("BpsResponse") && dict["BpsResponse"] != nil {
            self.bpsResponse = dict["BpsResponse"] as! String
        }
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Concurrency") && dict["Concurrency"] != nil {
            self.concurrency = dict["Concurrency"] as! Int32
        }
        if dict.keys.contains("ConcurrencyLimit") && dict["ConcurrencyLimit"] != nil {
            self.concurrencyLimit = dict["ConcurrencyLimit"] as! Int32
        }
        if dict.keys.contains("CurrentTime") && dict["CurrentTime"] != nil {
            self.currentTime = dict["CurrentTime"] as! Int64
        }
        if dict.keys.contains("FailedBusinessCount") && dict["FailedBusinessCount"] != nil {
            self.failedBusinessCount = dict["FailedBusinessCount"] as! Int32
        }
        if dict.keys.contains("FailedRequestCount") && dict["FailedRequestCount"] != nil {
            self.failedRequestCount = dict["FailedRequestCount"] as! Int32
        }
        if dict.keys.contains("Message") && dict["Message"] != nil {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("MonitorData") && dict["MonitorData"] != nil {
            var model = QueryPlanStatusResponseBody.MonitorData()
            model.fromMap(dict["MonitorData"] as! [String: Any])
            self.monitorData = model
        }
        if dict.keys.contains("ReportId") && dict["ReportId"] != nil {
            self.reportId = dict["ReportId"] as! Int64
        }
        if dict.keys.contains("RequestCount") && dict["RequestCount"] != nil {
            self.requestCount = dict["RequestCount"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Seg90Rt") && dict["Seg90Rt"] != nil {
            self.seg90Rt = dict["Seg90Rt"] as! Int32
        }
        if dict.keys.contains("StartTime") && dict["StartTime"] != nil {
            self.startTime = dict["StartTime"] as! Int64
        }
        if dict.keys.contains("Success") && dict["Success"] != nil {
            self.success = dict["Success"] as! Bool
        }
        if dict.keys.contains("Tips") && dict["Tips"] != nil {
            self.tips = dict["Tips"] as! String
        }
        if dict.keys.contains("TotalAgentCount") && dict["TotalAgentCount"] != nil {
            self.totalAgentCount = dict["TotalAgentCount"] as! Int32
        }
        if dict.keys.contains("Tps") && dict["Tps"] != nil {
            self.tps = dict["Tps"] as! Int32
        }
        if dict.keys.contains("TpsLimit") && dict["TpsLimit"] != nil {
            self.tpsLimit = dict["TpsLimit"] as! Int32
        }
        if dict.keys.contains("Vum") && dict["Vum"] != nil {
            self.vum = dict["Vum"] as! Int32
        }
    }
}

public class QueryPlanStatusResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: QueryPlanStatusResponseBody?

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
            var model = QueryPlanStatusResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class StartSceneRequest : Tea.TeaModel {
    public var sceneId: Int64?

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
        if self.sceneId != nil {
            map["SceneId"] = self.sceneId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("SceneId") && dict["SceneId"] != nil {
            self.sceneId = dict["SceneId"] as! Int64
        }
    }
}

public class StartSceneResponseBody : Tea.TeaModel {
    public var code: String?

    public var message: String?

    public var reportId: Int64?

    public var requestId: String?

    public var success: Bool?

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
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.reportId != nil {
            map["ReportId"] = self.reportId!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.success != nil {
            map["Success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Message") && dict["Message"] != nil {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("ReportId") && dict["ReportId"] != nil {
            self.reportId = dict["ReportId"] as! Int64
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") && dict["Success"] != nil {
            self.success = dict["Success"] as! Bool
        }
    }
}

public class StartSceneResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: StartSceneResponseBody?

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
            var model = StartSceneResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class StopSceneRequest : Tea.TeaModel {
    public var sceneId: Int64?

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
        if self.sceneId != nil {
            map["SceneId"] = self.sceneId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("SceneId") && dict["SceneId"] != nil {
            self.sceneId = dict["SceneId"] as! Int64
        }
    }
}

public class StopSceneResponseBody : Tea.TeaModel {
    public var code: String?

    public var message: String?

    public var requestId: String?

    public var success: Bool?

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
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.success != nil {
            map["Success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Message") && dict["Message"] != nil {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") && dict["Success"] != nil {
            self.success = dict["Success"] as! Bool
        }
    }
}

public class StopSceneResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: StopSceneResponseBody?

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
            var model = StopSceneResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}
