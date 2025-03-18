import Foundation
import Tea
import TeaUtils
import AlibabacloudOpenApi
import AlibabaCloudOpenApiUtil
import AlibabacloudEndpointUtil

public class CreateScreenSettingRequest : Tea.TeaModel {
    public var id: Int32?

    public var logoPower: Bool?

    public var logoUrl: String?

    public var monitorUrl: String?

    public var screenDataMap: String?

    public var screenDefault: Int32?

    public var title: String?

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
        if self.id != nil {
            map["Id"] = self.id!
        }
        if self.logoPower != nil {
            map["LogoPower"] = self.logoPower!
        }
        if self.logoUrl != nil {
            map["LogoUrl"] = self.logoUrl!
        }
        if self.monitorUrl != nil {
            map["MonitorUrl"] = self.monitorUrl!
        }
        if self.screenDataMap != nil {
            map["ScreenDataMap"] = self.screenDataMap!
        }
        if self.screenDefault != nil {
            map["ScreenDefault"] = self.screenDefault!
        }
        if self.title != nil {
            map["Title"] = self.title!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Id") {
            self.id = dict["Id"] as! Int32
        }
        if dict.keys.contains("LogoPower") {
            self.logoPower = dict["LogoPower"] as! Bool
        }
        if dict.keys.contains("LogoUrl") {
            self.logoUrl = dict["LogoUrl"] as! String
        }
        if dict.keys.contains("MonitorUrl") {
            self.monitorUrl = dict["MonitorUrl"] as! String
        }
        if dict.keys.contains("ScreenDataMap") {
            self.screenDataMap = dict["ScreenDataMap"] as! String
        }
        if dict.keys.contains("ScreenDefault") {
            self.screenDefault = dict["ScreenDefault"] as! Int32
        }
        if dict.keys.contains("Title") {
            self.title = dict["Title"] as! String
        }
    }
}

public class CreateScreenSettingResponseBody : Tea.TeaModel {
    public var id: Int32?

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
        if self.id != nil {
            map["Id"] = self.id!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Id") {
            self.id = dict["Id"] as! Int32
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class CreateScreenSettingResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateScreenSettingResponseBody?

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
            var model = CreateScreenSettingResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DeleteScreenSettingRequest : Tea.TeaModel {
    public var id: Int64?

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
        if self.id != nil {
            map["Id"] = self.id!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Id") {
            self.id = dict["Id"] as! Int64
        }
    }
}

public class DeleteScreenSettingResponseBody : Tea.TeaModel {
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
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class DeleteScreenSettingResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteScreenSettingResponseBody?

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
            var model = DeleteScreenSettingResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeScreenAlarmEventListRequest : Tea.TeaModel {
    public var alarmEventName: String?

    public var alarmEventType: String?

    public var currentPage: Int32?

    public var dealed: String?

    public var from: String?

    public var lang: String?

    public var levels: String?

    public var pageSize: String?

    public var remark: String?

    public var timeEnd: String?

    public var timeStart: String?

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
        if self.alarmEventName != nil {
            map["AlarmEventName"] = self.alarmEventName!
        }
        if self.alarmEventType != nil {
            map["AlarmEventType"] = self.alarmEventType!
        }
        if self.currentPage != nil {
            map["CurrentPage"] = self.currentPage!
        }
        if self.dealed != nil {
            map["Dealed"] = self.dealed!
        }
        if self.from != nil {
            map["From"] = self.from!
        }
        if self.lang != nil {
            map["Lang"] = self.lang!
        }
        if self.levels != nil {
            map["Levels"] = self.levels!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.remark != nil {
            map["Remark"] = self.remark!
        }
        if self.timeEnd != nil {
            map["TimeEnd"] = self.timeEnd!
        }
        if self.timeStart != nil {
            map["TimeStart"] = self.timeStart!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AlarmEventName") {
            self.alarmEventName = dict["AlarmEventName"] as! String
        }
        if dict.keys.contains("AlarmEventType") {
            self.alarmEventType = dict["AlarmEventType"] as! String
        }
        if dict.keys.contains("CurrentPage") {
            self.currentPage = dict["CurrentPage"] as! Int32
        }
        if dict.keys.contains("Dealed") {
            self.dealed = dict["Dealed"] as! String
        }
        if dict.keys.contains("From") {
            self.from = dict["From"] as! String
        }
        if dict.keys.contains("Lang") {
            self.lang = dict["Lang"] as! String
        }
        if dict.keys.contains("Levels") {
            self.levels = dict["Levels"] as! String
        }
        if dict.keys.contains("PageSize") {
            self.pageSize = dict["PageSize"] as! String
        }
        if dict.keys.contains("Remark") {
            self.remark = dict["Remark"] as! String
        }
        if dict.keys.contains("TimeEnd") {
            self.timeEnd = dict["TimeEnd"] as! String
        }
        if dict.keys.contains("TimeStart") {
            self.timeStart = dict["TimeStart"] as! String
        }
    }
}

public class DescribeScreenAlarmEventListResponseBody : Tea.TeaModel {
    public class PageInfo : Tea.TeaModel {
        public var count: Int32?

        public var currentPage: Int32?

        public var pageSize: Int32?

        public var totalCount: Int32?

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
                map["Count"] = self.count!
            }
            if self.currentPage != nil {
                map["CurrentPage"] = self.currentPage!
            }
            if self.pageSize != nil {
                map["PageSize"] = self.pageSize!
            }
            if self.totalCount != nil {
                map["TotalCount"] = self.totalCount!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Count") {
                self.count = dict["Count"] as! Int32
            }
            if dict.keys.contains("CurrentPage") {
                self.currentPage = dict["CurrentPage"] as! Int32
            }
            if dict.keys.contains("PageSize") {
                self.pageSize = dict["PageSize"] as! Int32
            }
            if dict.keys.contains("TotalCount") {
                self.totalCount = dict["TotalCount"] as! Int32
            }
        }
    }
    public class SuspEvents : Tea.TeaModel {
        public var alarmEventName: String?

        public var alarmEventType: String?

        public var alarmUniqueInfo: String?

        public var canBeDealOnLine: Bool?

        public var canCancelFault: Bool?

        public var dataSource: String?

        public var dealed: Bool?

        public var description_: String?

        public var endTime: Int64?

        public var instanceName: String?

        public var internetIp: String?

        public var intranetIp: String?

        public var level: String?

        public var saleVersion: String?

        public var solution: String?

        public var startTime: Int64?

        public var suspiciousEventCount: Int32?

        public var uuid: String?

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
            if self.alarmEventName != nil {
                map["AlarmEventName"] = self.alarmEventName!
            }
            if self.alarmEventType != nil {
                map["AlarmEventType"] = self.alarmEventType!
            }
            if self.alarmUniqueInfo != nil {
                map["AlarmUniqueInfo"] = self.alarmUniqueInfo!
            }
            if self.canBeDealOnLine != nil {
                map["CanBeDealOnLine"] = self.canBeDealOnLine!
            }
            if self.canCancelFault != nil {
                map["CanCancelFault"] = self.canCancelFault!
            }
            if self.dataSource != nil {
                map["DataSource"] = self.dataSource!
            }
            if self.dealed != nil {
                map["Dealed"] = self.dealed!
            }
            if self.description_ != nil {
                map["Description"] = self.description_!
            }
            if self.endTime != nil {
                map["EndTime"] = self.endTime!
            }
            if self.instanceName != nil {
                map["InstanceName"] = self.instanceName!
            }
            if self.internetIp != nil {
                map["InternetIp"] = self.internetIp!
            }
            if self.intranetIp != nil {
                map["IntranetIp"] = self.intranetIp!
            }
            if self.level != nil {
                map["Level"] = self.level!
            }
            if self.saleVersion != nil {
                map["SaleVersion"] = self.saleVersion!
            }
            if self.solution != nil {
                map["Solution"] = self.solution!
            }
            if self.startTime != nil {
                map["StartTime"] = self.startTime!
            }
            if self.suspiciousEventCount != nil {
                map["SuspiciousEventCount"] = self.suspiciousEventCount!
            }
            if self.uuid != nil {
                map["Uuid"] = self.uuid!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("AlarmEventName") {
                self.alarmEventName = dict["AlarmEventName"] as! String
            }
            if dict.keys.contains("AlarmEventType") {
                self.alarmEventType = dict["AlarmEventType"] as! String
            }
            if dict.keys.contains("AlarmUniqueInfo") {
                self.alarmUniqueInfo = dict["AlarmUniqueInfo"] as! String
            }
            if dict.keys.contains("CanBeDealOnLine") {
                self.canBeDealOnLine = dict["CanBeDealOnLine"] as! Bool
            }
            if dict.keys.contains("CanCancelFault") {
                self.canCancelFault = dict["CanCancelFault"] as! Bool
            }
            if dict.keys.contains("DataSource") {
                self.dataSource = dict["DataSource"] as! String
            }
            if dict.keys.contains("Dealed") {
                self.dealed = dict["Dealed"] as! Bool
            }
            if dict.keys.contains("Description") {
                self.description_ = dict["Description"] as! String
            }
            if dict.keys.contains("EndTime") {
                self.endTime = dict["EndTime"] as! Int64
            }
            if dict.keys.contains("InstanceName") {
                self.instanceName = dict["InstanceName"] as! String
            }
            if dict.keys.contains("InternetIp") {
                self.internetIp = dict["InternetIp"] as! String
            }
            if dict.keys.contains("IntranetIp") {
                self.intranetIp = dict["IntranetIp"] as! String
            }
            if dict.keys.contains("Level") {
                self.level = dict["Level"] as! String
            }
            if dict.keys.contains("SaleVersion") {
                self.saleVersion = dict["SaleVersion"] as! String
            }
            if dict.keys.contains("Solution") {
                self.solution = dict["Solution"] as! String
            }
            if dict.keys.contains("StartTime") {
                self.startTime = dict["StartTime"] as! Int64
            }
            if dict.keys.contains("SuspiciousEventCount") {
                self.suspiciousEventCount = dict["SuspiciousEventCount"] as! Int32
            }
            if dict.keys.contains("Uuid") {
                self.uuid = dict["Uuid"] as! String
            }
        }
    }
    public var pageInfo: DescribeScreenAlarmEventListResponseBody.PageInfo?

    public var requestId: String?

    public var suspEvents: [DescribeScreenAlarmEventListResponseBody.SuspEvents]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.pageInfo?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.pageInfo != nil {
            map["PageInfo"] = self.pageInfo?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.suspEvents != nil {
            var tmp : [Any] = []
            for k in self.suspEvents! {
                tmp.append(k.toMap())
            }
            map["SuspEvents"] = tmp
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("PageInfo") {
            var model = DescribeScreenAlarmEventListResponseBody.PageInfo()
            model.fromMap(dict["PageInfo"] as! [String: Any])
            self.pageInfo = model
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("SuspEvents") {
            var tmp : [DescribeScreenAlarmEventListResponseBody.SuspEvents] = []
            for v in dict["SuspEvents"] as! [Any] {
                var model = DescribeScreenAlarmEventListResponseBody.SuspEvents()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.suspEvents = tmp
        }
    }
}

public class DescribeScreenAlarmEventListResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeScreenAlarmEventListResponseBody?

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
            var model = DescribeScreenAlarmEventListResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeScreenAttackAnalysisDataRequest : Tea.TeaModel {
    public var base64: String?

    public var currentPage: Int32?

    public var data: String?

    public var endTime: Int64?

    public var pageSize: Int32?

    public var startTime: Int64?

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
        if self.base64 != nil {
            map["Base64"] = self.base64!
        }
        if self.currentPage != nil {
            map["CurrentPage"] = self.currentPage!
        }
        if self.data != nil {
            map["Data"] = self.data!
        }
        if self.endTime != nil {
            map["EndTime"] = self.endTime!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.startTime != nil {
            map["StartTime"] = self.startTime!
        }
        if self.type != nil {
            map["Type"] = self.type!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Base64") {
            self.base64 = dict["Base64"] as! String
        }
        if dict.keys.contains("CurrentPage") {
            self.currentPage = dict["CurrentPage"] as! Int32
        }
        if dict.keys.contains("Data") {
            self.data = dict["Data"] as! String
        }
        if dict.keys.contains("EndTime") {
            self.endTime = dict["EndTime"] as! Int64
        }
        if dict.keys.contains("PageSize") {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("StartTime") {
            self.startTime = dict["StartTime"] as! Int64
        }
        if dict.keys.contains("Type") {
            self.type = dict["Type"] as! String
        }
    }
}

public class DescribeScreenAttackAnalysisDataResponseBody : Tea.TeaModel {
    public var data: String?

    public var page: Int32?

    public var pageSize: Int32?

    public var requestId: String?

    public var total: Int32?

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
        if self.page != nil {
            map["Page"] = self.page!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.total != nil {
            map["Total"] = self.total!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Data") {
            self.data = dict["Data"] as! String
        }
        if dict.keys.contains("Page") {
            self.page = dict["Page"] as! Int32
        }
        if dict.keys.contains("PageSize") {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Total") {
            self.total = dict["Total"] as! Int32
        }
    }
}

public class DescribeScreenAttackAnalysisDataResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeScreenAttackAnalysisDataResponseBody?

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
            var model = DescribeScreenAttackAnalysisDataResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeScreenCloudHcRiskResponseBody : Tea.TeaModel {
    public class CloudHcRiskItems : Tea.TeaModel {
        public var affectCount: Int32?

        public var checkItem: String?

        public var level: String?

        public var pass: Bool?

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
            if self.affectCount != nil {
                map["AffectCount"] = self.affectCount!
            }
            if self.checkItem != nil {
                map["CheckItem"] = self.checkItem!
            }
            if self.level != nil {
                map["Level"] = self.level!
            }
            if self.pass != nil {
                map["Pass"] = self.pass!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("AffectCount") {
                self.affectCount = dict["AffectCount"] as! Int32
            }
            if dict.keys.contains("CheckItem") {
                self.checkItem = dict["CheckItem"] as! String
            }
            if dict.keys.contains("Level") {
                self.level = dict["Level"] as! String
            }
            if dict.keys.contains("Pass") {
                self.pass = dict["Pass"] as! Bool
            }
        }
    }
    public var cloudHcRiskItems: [DescribeScreenCloudHcRiskResponseBody.CloudHcRiskItems]?

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
        if self.cloudHcRiskItems != nil {
            var tmp : [Any] = []
            for k in self.cloudHcRiskItems! {
                tmp.append(k.toMap())
            }
            map["CloudHcRiskItems"] = tmp
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("CloudHcRiskItems") {
            var tmp : [DescribeScreenCloudHcRiskResponseBody.CloudHcRiskItems] = []
            for v in dict["CloudHcRiskItems"] as! [Any] {
                var model = DescribeScreenCloudHcRiskResponseBody.CloudHcRiskItems()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.cloudHcRiskItems = tmp
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class DescribeScreenCloudHcRiskResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeScreenCloudHcRiskResponseBody?

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
            var model = DescribeScreenCloudHcRiskResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeScreenDataMapResponseBody : Tea.TeaModel {
    public class SasScreenTypeList : Tea.TeaModel {
        public class TypeData : Tea.TeaModel {
            public class Date : Tea.TeaModel {
                public var unit: String?

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
                    if self.unit != nil {
                        map["Unit"] = self.unit!
                    }
                    if self.value != nil {
                        map["Value"] = self.value!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("Unit") {
                        self.unit = dict["Unit"] as! String
                    }
                    if dict.keys.contains("Value") {
                        self.value = dict["Value"] as! String
                    }
                }
            }
            public var code: String?

            public var date: [DescribeScreenDataMapResponseBody.SasScreenTypeList.TypeData.Date]?

            public var id: String?

            public var title: String?

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
                if self.date != nil {
                    var tmp : [Any] = []
                    for k in self.date! {
                        tmp.append(k.toMap())
                    }
                    map["Date"] = tmp
                }
                if self.id != nil {
                    map["Id"] = self.id!
                }
                if self.title != nil {
                    map["Title"] = self.title!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("Code") {
                    self.code = dict["Code"] as! String
                }
                if dict.keys.contains("Date") {
                    var tmp : [DescribeScreenDataMapResponseBody.SasScreenTypeList.TypeData.Date] = []
                    for v in dict["Date"] as! [Any] {
                        var model = DescribeScreenDataMapResponseBody.SasScreenTypeList.TypeData.Date()
                        if v != nil {
                            model.fromMap(v as! [String: Any])
                        }
                        tmp.append(model)
                    }
                    self.date = tmp
                }
                if dict.keys.contains("Id") {
                    self.id = dict["Id"] as! String
                }
                if dict.keys.contains("Title") {
                    self.title = dict["Title"] as! String
                }
            }
        }
        public var type: String?

        public var typeCode: String?

        public var typeData: [DescribeScreenDataMapResponseBody.SasScreenTypeList.TypeData]?

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
            if self.type != nil {
                map["Type"] = self.type!
            }
            if self.typeCode != nil {
                map["TypeCode"] = self.typeCode!
            }
            if self.typeData != nil {
                var tmp : [Any] = []
                for k in self.typeData! {
                    tmp.append(k.toMap())
                }
                map["TypeData"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Type") {
                self.type = dict["Type"] as! String
            }
            if dict.keys.contains("TypeCode") {
                self.typeCode = dict["TypeCode"] as! String
            }
            if dict.keys.contains("TypeData") {
                var tmp : [DescribeScreenDataMapResponseBody.SasScreenTypeList.TypeData] = []
                for v in dict["TypeData"] as! [Any] {
                    var model = DescribeScreenDataMapResponseBody.SasScreenTypeList.TypeData()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.typeData = tmp
            }
        }
    }
    public var requestId: String?

    public var sasScreenTypeList: [DescribeScreenDataMapResponseBody.SasScreenTypeList]?

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
        if self.sasScreenTypeList != nil {
            var tmp : [Any] = []
            for k in self.sasScreenTypeList! {
                tmp.append(k.toMap())
            }
            map["SasScreenTypeList"] = tmp
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("SasScreenTypeList") {
            var tmp : [DescribeScreenDataMapResponseBody.SasScreenTypeList] = []
            for v in dict["SasScreenTypeList"] as! [Any] {
                var model = DescribeScreenDataMapResponseBody.SasScreenTypeList()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.sasScreenTypeList = tmp
        }
    }
}

public class DescribeScreenDataMapResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeScreenDataMapResponseBody?

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
            var model = DescribeScreenDataMapResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeScreenEmerRiskResponseBody : Tea.TeaModel {
    public class CloudHcRiskItems : Tea.TeaModel {
        public var affectCount: Int32?

        public var level: String?

        public var vulName: String?

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
            if self.affectCount != nil {
                map["AffectCount"] = self.affectCount!
            }
            if self.level != nil {
                map["Level"] = self.level!
            }
            if self.vulName != nil {
                map["VulName"] = self.vulName!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("AffectCount") {
                self.affectCount = dict["AffectCount"] as! Int32
            }
            if dict.keys.contains("Level") {
                self.level = dict["Level"] as! String
            }
            if dict.keys.contains("VulName") {
                self.vulName = dict["VulName"] as! String
            }
        }
    }
    public var cloudHcRiskItems: [DescribeScreenEmerRiskResponseBody.CloudHcRiskItems]?

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
        if self.cloudHcRiskItems != nil {
            var tmp : [Any] = []
            for k in self.cloudHcRiskItems! {
                tmp.append(k.toMap())
            }
            map["CloudHcRiskItems"] = tmp
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("CloudHcRiskItems") {
            var tmp : [DescribeScreenEmerRiskResponseBody.CloudHcRiskItems] = []
            for v in dict["CloudHcRiskItems"] as! [Any] {
                var model = DescribeScreenEmerRiskResponseBody.CloudHcRiskItems()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.cloudHcRiskItems = tmp
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class DescribeScreenEmerRiskResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeScreenEmerRiskResponseBody?

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
            var model = DescribeScreenEmerRiskResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeScreenHostStatisticsResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var safeCount: [String]?

        public var suspEventMachineNames: [String]?

        public var suspEventUuids: [String]?

        public var weaknessMachineNames: [String]?

        public var weaknessUuids: [String]?

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
            if self.safeCount != nil {
                map["SafeCount"] = self.safeCount!
            }
            if self.suspEventMachineNames != nil {
                map["SuspEventMachineNames"] = self.suspEventMachineNames!
            }
            if self.suspEventUuids != nil {
                map["SuspEventUuids"] = self.suspEventUuids!
            }
            if self.weaknessMachineNames != nil {
                map["WeaknessMachineNames"] = self.weaknessMachineNames!
            }
            if self.weaknessUuids != nil {
                map["WeaknessUuids"] = self.weaknessUuids!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("SafeCount") {
                self.safeCount = dict["SafeCount"] as! [String]
            }
            if dict.keys.contains("SuspEventMachineNames") {
                self.suspEventMachineNames = dict["SuspEventMachineNames"] as! [String]
            }
            if dict.keys.contains("SuspEventUuids") {
                self.suspEventUuids = dict["SuspEventUuids"] as! [String]
            }
            if dict.keys.contains("WeaknessMachineNames") {
                self.weaknessMachineNames = dict["WeaknessMachineNames"] as! [String]
            }
            if dict.keys.contains("WeaknessUuids") {
                self.weaknessUuids = dict["WeaknessUuids"] as! [String]
            }
        }
    }
    public var data: DescribeScreenHostStatisticsResponseBody.Data?

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
        if dict.keys.contains("Data") {
            var model = DescribeScreenHostStatisticsResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class DescribeScreenHostStatisticsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeScreenHostStatisticsResponseBody?

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
            var model = DescribeScreenHostStatisticsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeScreenOperateInfoRequest : Tea.TeaModel {
    public var lang: String?

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
        if self.lang != nil {
            map["Lang"] = self.lang!
        }
        if self.startTime != nil {
            map["StartTime"] = self.startTime!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Lang") {
            self.lang = dict["Lang"] as! String
        }
        if dict.keys.contains("StartTime") {
            self.startTime = dict["StartTime"] as! Int64
        }
    }
}

public class DescribeScreenOperateInfoResponseBody : Tea.TeaModel {
    public var dateArray: [String]?

    public var healthCheckDealedCount: Int32?

    public var healthCheckValueArray: [String]?

    public var requestId: String?

    public var securityEventDealedCount: Int32?

    public var suspEventValueArray: [String]?

    public var vulValueArray: [String]?

    public var vulnerabilityDealedCount: Int32?

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
        if self.dateArray != nil {
            map["DateArray"] = self.dateArray!
        }
        if self.healthCheckDealedCount != nil {
            map["HealthCheckDealedCount"] = self.healthCheckDealedCount!
        }
        if self.healthCheckValueArray != nil {
            map["HealthCheckValueArray"] = self.healthCheckValueArray!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.securityEventDealedCount != nil {
            map["SecurityEventDealedCount"] = self.securityEventDealedCount!
        }
        if self.suspEventValueArray != nil {
            map["SuspEventValueArray"] = self.suspEventValueArray!
        }
        if self.vulValueArray != nil {
            map["VulValueArray"] = self.vulValueArray!
        }
        if self.vulnerabilityDealedCount != nil {
            map["VulnerabilityDealedCount"] = self.vulnerabilityDealedCount!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DateArray") {
            self.dateArray = dict["DateArray"] as! [String]
        }
        if dict.keys.contains("HealthCheckDealedCount") {
            self.healthCheckDealedCount = dict["HealthCheckDealedCount"] as! Int32
        }
        if dict.keys.contains("HealthCheckValueArray") {
            self.healthCheckValueArray = dict["HealthCheckValueArray"] as! [String]
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("SecurityEventDealedCount") {
            self.securityEventDealedCount = dict["SecurityEventDealedCount"] as! Int32
        }
        if dict.keys.contains("SuspEventValueArray") {
            self.suspEventValueArray = dict["SuspEventValueArray"] as! [String]
        }
        if dict.keys.contains("VulValueArray") {
            self.vulValueArray = dict["VulValueArray"] as! [String]
        }
        if dict.keys.contains("VulnerabilityDealedCount") {
            self.vulnerabilityDealedCount = dict["VulnerabilityDealedCount"] as! Int32
        }
    }
}

public class DescribeScreenOperateInfoResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeScreenOperateInfoResponseBody?

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
            var model = DescribeScreenOperateInfoResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeScreenOssUploadInfoResponseBody : Tea.TeaModel {
    public var accessId: String?

    public var expire: Int32?

    public var host: String?

    public var key: String?

    public var policy: String?

    public var requestId: String?

    public var securityToken: String?

    public var signature: String?

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
        if self.accessId != nil {
            map["AccessId"] = self.accessId!
        }
        if self.expire != nil {
            map["Expire"] = self.expire!
        }
        if self.host != nil {
            map["Host"] = self.host!
        }
        if self.key != nil {
            map["Key"] = self.key!
        }
        if self.policy != nil {
            map["Policy"] = self.policy!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.securityToken != nil {
            map["SecurityToken"] = self.securityToken!
        }
        if self.signature != nil {
            map["Signature"] = self.signature!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AccessId") {
            self.accessId = dict["AccessId"] as! String
        }
        if dict.keys.contains("Expire") {
            self.expire = dict["Expire"] as! Int32
        }
        if dict.keys.contains("Host") {
            self.host = dict["Host"] as! String
        }
        if dict.keys.contains("Key") {
            self.key = dict["Key"] as! String
        }
        if dict.keys.contains("Policy") {
            self.policy = dict["Policy"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("SecurityToken") {
            self.securityToken = dict["SecurityToken"] as! String
        }
        if dict.keys.contains("Signature") {
            self.signature = dict["Signature"] as! String
        }
    }
}

public class DescribeScreenOssUploadInfoResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeScreenOssUploadInfoResponseBody?

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
            var model = DescribeScreenOssUploadInfoResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeScreenScoreThreadRequest : Tea.TeaModel {
    public var endTime: Int64?

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
        if self.startTime != nil {
            map["StartTime"] = self.startTime!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("EndTime") {
            self.endTime = dict["EndTime"] as! Int64
        }
        if dict.keys.contains("StartTime") {
            self.startTime = dict["StartTime"] as! Int64
        }
    }
}

public class DescribeScreenScoreThreadResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var socreThread: [String]?

        public var socreThreadDate: [String]?

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
            if self.socreThread != nil {
                map["SocreThread"] = self.socreThread!
            }
            if self.socreThreadDate != nil {
                map["SocreThreadDate"] = self.socreThreadDate!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("SocreThread") {
                self.socreThread = dict["SocreThread"] as! [String]
            }
            if dict.keys.contains("SocreThreadDate") {
                self.socreThreadDate = dict["SocreThreadDate"] as! [String]
            }
        }
    }
    public var data: DescribeScreenScoreThreadResponseBody.Data?

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
        if dict.keys.contains("Data") {
            var model = DescribeScreenScoreThreadResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class DescribeScreenScoreThreadResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeScreenScoreThreadResponseBody?

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
            var model = DescribeScreenScoreThreadResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeScreenSecurityStatInfoResponseBody : Tea.TeaModel {
    public class AttackEvent : Tea.TeaModel {
        public var dateArray: [String]?

        public var totalCount: Int32?

        public var valueArray: [String]?

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
            if self.dateArray != nil {
                map["DateArray"] = self.dateArray!
            }
            if self.totalCount != nil {
                map["TotalCount"] = self.totalCount!
            }
            if self.valueArray != nil {
                map["ValueArray"] = self.valueArray!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("DateArray") {
                self.dateArray = dict["DateArray"] as! [String]
            }
            if dict.keys.contains("TotalCount") {
                self.totalCount = dict["TotalCount"] as! Int32
            }
            if dict.keys.contains("ValueArray") {
                self.valueArray = dict["ValueArray"] as! [String]
            }
        }
    }
    public class HealthCheck : Tea.TeaModel {
        public var dateArray: [String]?

        public var highCount: Int32?

        public var highList: [String]?

        public var levelsOn: [String]?

        public var lowCount: Int32?

        public var lowList: [String]?

        public var mediumCount: Int32?

        public var mediumList: [String]?

        public var totalCount: Int32?

        public var valueArray: [String]?

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
            if self.dateArray != nil {
                map["DateArray"] = self.dateArray!
            }
            if self.highCount != nil {
                map["HighCount"] = self.highCount!
            }
            if self.highList != nil {
                map["HighList"] = self.highList!
            }
            if self.levelsOn != nil {
                map["LevelsOn"] = self.levelsOn!
            }
            if self.lowCount != nil {
                map["LowCount"] = self.lowCount!
            }
            if self.lowList != nil {
                map["LowList"] = self.lowList!
            }
            if self.mediumCount != nil {
                map["MediumCount"] = self.mediumCount!
            }
            if self.mediumList != nil {
                map["MediumList"] = self.mediumList!
            }
            if self.totalCount != nil {
                map["TotalCount"] = self.totalCount!
            }
            if self.valueArray != nil {
                map["ValueArray"] = self.valueArray!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("DateArray") {
                self.dateArray = dict["DateArray"] as! [String]
            }
            if dict.keys.contains("HighCount") {
                self.highCount = dict["HighCount"] as! Int32
            }
            if dict.keys.contains("HighList") {
                self.highList = dict["HighList"] as! [String]
            }
            if dict.keys.contains("LevelsOn") {
                self.levelsOn = dict["LevelsOn"] as! [String]
            }
            if dict.keys.contains("LowCount") {
                self.lowCount = dict["LowCount"] as! Int32
            }
            if dict.keys.contains("LowList") {
                self.lowList = dict["LowList"] as! [String]
            }
            if dict.keys.contains("MediumCount") {
                self.mediumCount = dict["MediumCount"] as! Int32
            }
            if dict.keys.contains("MediumList") {
                self.mediumList = dict["MediumList"] as! [String]
            }
            if dict.keys.contains("TotalCount") {
                self.totalCount = dict["TotalCount"] as! Int32
            }
            if dict.keys.contains("ValueArray") {
                self.valueArray = dict["ValueArray"] as! [String]
            }
        }
    }
    public class SecurityEvent : Tea.TeaModel {
        public var dateArray: [String]?

        public var levelsOn: [String]?

        public var remindCount: Int32?

        public var remindList: [String]?

        public var seriousCount: Int32?

        public var seriousList: [String]?

        public var suspiciousCount: Int32?

        public var suspiciousList: [String]?

        public var totalCount: Int32?

        public var valueArray: [String]?

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
            if self.dateArray != nil {
                map["DateArray"] = self.dateArray!
            }
            if self.levelsOn != nil {
                map["LevelsOn"] = self.levelsOn!
            }
            if self.remindCount != nil {
                map["RemindCount"] = self.remindCount!
            }
            if self.remindList != nil {
                map["RemindList"] = self.remindList!
            }
            if self.seriousCount != nil {
                map["SeriousCount"] = self.seriousCount!
            }
            if self.seriousList != nil {
                map["SeriousList"] = self.seriousList!
            }
            if self.suspiciousCount != nil {
                map["SuspiciousCount"] = self.suspiciousCount!
            }
            if self.suspiciousList != nil {
                map["SuspiciousList"] = self.suspiciousList!
            }
            if self.totalCount != nil {
                map["TotalCount"] = self.totalCount!
            }
            if self.valueArray != nil {
                map["ValueArray"] = self.valueArray!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("DateArray") {
                self.dateArray = dict["DateArray"] as! [String]
            }
            if dict.keys.contains("LevelsOn") {
                self.levelsOn = dict["LevelsOn"] as! [String]
            }
            if dict.keys.contains("RemindCount") {
                self.remindCount = dict["RemindCount"] as! Int32
            }
            if dict.keys.contains("RemindList") {
                self.remindList = dict["RemindList"] as! [String]
            }
            if dict.keys.contains("SeriousCount") {
                self.seriousCount = dict["SeriousCount"] as! Int32
            }
            if dict.keys.contains("SeriousList") {
                self.seriousList = dict["SeriousList"] as! [String]
            }
            if dict.keys.contains("SuspiciousCount") {
                self.suspiciousCount = dict["SuspiciousCount"] as! Int32
            }
            if dict.keys.contains("SuspiciousList") {
                self.suspiciousList = dict["SuspiciousList"] as! [String]
            }
            if dict.keys.contains("TotalCount") {
                self.totalCount = dict["TotalCount"] as! Int32
            }
            if dict.keys.contains("ValueArray") {
                self.valueArray = dict["ValueArray"] as! [String]
            }
        }
    }
    public class Vulnerability : Tea.TeaModel {
        public var asapCount: Int32?

        public var asapList: [String]?

        public var dateArray: [String]?

        public var laterCount: Int32?

        public var laterList: [String]?

        public var levelsOn: [String]?

        public var nntfCount: Int32?

        public var nntfList: [String]?

        public var totalCount: Int32?

        public var valueArray: [String]?

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
            if self.asapCount != nil {
                map["AsapCount"] = self.asapCount!
            }
            if self.asapList != nil {
                map["AsapList"] = self.asapList!
            }
            if self.dateArray != nil {
                map["DateArray"] = self.dateArray!
            }
            if self.laterCount != nil {
                map["LaterCount"] = self.laterCount!
            }
            if self.laterList != nil {
                map["LaterList"] = self.laterList!
            }
            if self.levelsOn != nil {
                map["LevelsOn"] = self.levelsOn!
            }
            if self.nntfCount != nil {
                map["NntfCount"] = self.nntfCount!
            }
            if self.nntfList != nil {
                map["NntfList"] = self.nntfList!
            }
            if self.totalCount != nil {
                map["TotalCount"] = self.totalCount!
            }
            if self.valueArray != nil {
                map["ValueArray"] = self.valueArray!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("AsapCount") {
                self.asapCount = dict["AsapCount"] as! Int32
            }
            if dict.keys.contains("AsapList") {
                self.asapList = dict["AsapList"] as! [String]
            }
            if dict.keys.contains("DateArray") {
                self.dateArray = dict["DateArray"] as! [String]
            }
            if dict.keys.contains("LaterCount") {
                self.laterCount = dict["LaterCount"] as! Int32
            }
            if dict.keys.contains("LaterList") {
                self.laterList = dict["LaterList"] as! [String]
            }
            if dict.keys.contains("LevelsOn") {
                self.levelsOn = dict["LevelsOn"] as! [String]
            }
            if dict.keys.contains("NntfCount") {
                self.nntfCount = dict["NntfCount"] as! Int32
            }
            if dict.keys.contains("NntfList") {
                self.nntfList = dict["NntfList"] as! [String]
            }
            if dict.keys.contains("TotalCount") {
                self.totalCount = dict["TotalCount"] as! Int32
            }
            if dict.keys.contains("ValueArray") {
                self.valueArray = dict["ValueArray"] as! [String]
            }
        }
    }
    public var attackEvent: DescribeScreenSecurityStatInfoResponseBody.AttackEvent?

    public var healthCheck: DescribeScreenSecurityStatInfoResponseBody.HealthCheck?

    public var requestId: String?

    public var securityEvent: DescribeScreenSecurityStatInfoResponseBody.SecurityEvent?

    public var vulnerability: DescribeScreenSecurityStatInfoResponseBody.Vulnerability?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.attackEvent?.validate()
        try self.healthCheck?.validate()
        try self.securityEvent?.validate()
        try self.vulnerability?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.attackEvent != nil {
            map["AttackEvent"] = self.attackEvent?.toMap()
        }
        if self.healthCheck != nil {
            map["HealthCheck"] = self.healthCheck?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.securityEvent != nil {
            map["SecurityEvent"] = self.securityEvent?.toMap()
        }
        if self.vulnerability != nil {
            map["Vulnerability"] = self.vulnerability?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AttackEvent") {
            var model = DescribeScreenSecurityStatInfoResponseBody.AttackEvent()
            model.fromMap(dict["AttackEvent"] as! [String: Any])
            self.attackEvent = model
        }
        if dict.keys.contains("HealthCheck") {
            var model = DescribeScreenSecurityStatInfoResponseBody.HealthCheck()
            model.fromMap(dict["HealthCheck"] as! [String: Any])
            self.healthCheck = model
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("SecurityEvent") {
            var model = DescribeScreenSecurityStatInfoResponseBody.SecurityEvent()
            model.fromMap(dict["SecurityEvent"] as! [String: Any])
            self.securityEvent = model
        }
        if dict.keys.contains("Vulnerability") {
            var model = DescribeScreenSecurityStatInfoResponseBody.Vulnerability()
            model.fromMap(dict["Vulnerability"] as! [String: Any])
            self.vulnerability = model
        }
    }
}

public class DescribeScreenSecurityStatInfoResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeScreenSecurityStatInfoResponseBody?

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
            var model = DescribeScreenSecurityStatInfoResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeScreenSettingRequest : Tea.TeaModel {
    public var id: String?

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
        if self.id != nil {
            map["Id"] = self.id!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Id") {
            self.id = dict["Id"] as! String
        }
    }
}

public class DescribeScreenSettingResponseBody : Tea.TeaModel {
    public var logoPower: Bool?

    public var logoUrl: String?

    public var monitorUrl: String?

    public var requestId: String?

    public var screenDataMap: String?

    public var screenDefault: Int32?

    public var screenId: Int32?

    public var title: String?

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
        if self.logoPower != nil {
            map["LogoPower"] = self.logoPower!
        }
        if self.logoUrl != nil {
            map["LogoUrl"] = self.logoUrl!
        }
        if self.monitorUrl != nil {
            map["MonitorUrl"] = self.monitorUrl!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.screenDataMap != nil {
            map["ScreenDataMap"] = self.screenDataMap!
        }
        if self.screenDefault != nil {
            map["ScreenDefault"] = self.screenDefault!
        }
        if self.screenId != nil {
            map["ScreenId"] = self.screenId!
        }
        if self.title != nil {
            map["Title"] = self.title!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("LogoPower") {
            self.logoPower = dict["LogoPower"] as! Bool
        }
        if dict.keys.contains("LogoUrl") {
            self.logoUrl = dict["LogoUrl"] as! String
        }
        if dict.keys.contains("MonitorUrl") {
            self.monitorUrl = dict["MonitorUrl"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("ScreenDataMap") {
            self.screenDataMap = dict["ScreenDataMap"] as! String
        }
        if dict.keys.contains("ScreenDefault") {
            self.screenDefault = dict["ScreenDefault"] as! Int32
        }
        if dict.keys.contains("ScreenId") {
            self.screenId = dict["ScreenId"] as! Int32
        }
        if dict.keys.contains("Title") {
            self.title = dict["Title"] as! String
        }
    }
}

public class DescribeScreenSettingResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeScreenSettingResponseBody?

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
            var model = DescribeScreenSettingResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeScreenSummaryInfoResponseBody : Tea.TeaModel {
    public var aegisClientOfflineCount: Int32?

    public var aegisClientOnlineCount: Int32?

    public var requestId: String?

    public var securityScore: Int32?

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
        if self.aegisClientOfflineCount != nil {
            map["AegisClientOfflineCount"] = self.aegisClientOfflineCount!
        }
        if self.aegisClientOnlineCount != nil {
            map["AegisClientOnlineCount"] = self.aegisClientOnlineCount!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.securityScore != nil {
            map["SecurityScore"] = self.securityScore!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AegisClientOfflineCount") {
            self.aegisClientOfflineCount = dict["AegisClientOfflineCount"] as! Int32
        }
        if dict.keys.contains("AegisClientOnlineCount") {
            self.aegisClientOnlineCount = dict["AegisClientOnlineCount"] as! Int32
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("SecurityScore") {
            self.securityScore = dict["SecurityScore"] as! Int32
        }
    }
}

public class DescribeScreenSummaryInfoResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeScreenSummaryInfoResponseBody?

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
            var model = DescribeScreenSummaryInfoResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeScreenTitlesResponseBody : Tea.TeaModel {
    public class SasScreenSettingList : Tea.TeaModel {
        public var screenID: Int64?

        public var screenTitle: String?

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
            if self.screenID != nil {
                map["ScreenID"] = self.screenID!
            }
            if self.screenTitle != nil {
                map["ScreenTitle"] = self.screenTitle!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("ScreenID") {
                self.screenID = dict["ScreenID"] as! Int64
            }
            if dict.keys.contains("ScreenTitle") {
                self.screenTitle = dict["ScreenTitle"] as! String
            }
        }
    }
    public var requestId: String?

    public var sasScreenSettingList: [DescribeScreenTitlesResponseBody.SasScreenSettingList]?

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
        if self.sasScreenSettingList != nil {
            var tmp : [Any] = []
            for k in self.sasScreenSettingList! {
                tmp.append(k.toMap())
            }
            map["SasScreenSettingList"] = tmp
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("SasScreenSettingList") {
            var tmp : [DescribeScreenTitlesResponseBody.SasScreenSettingList] = []
            for v in dict["SasScreenSettingList"] as! [Any] {
                var model = DescribeScreenTitlesResponseBody.SasScreenSettingList()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.sasScreenSettingList = tmp
        }
    }
}

public class DescribeScreenTitlesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeScreenTitlesResponseBody?

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
            var model = DescribeScreenTitlesResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeScreenUploadPictureRequest : Tea.TeaModel {
    public var logoUrl: String?

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
        if self.logoUrl != nil {
            map["LogoUrl"] = self.logoUrl!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("LogoUrl") {
            self.logoUrl = dict["LogoUrl"] as! String
        }
    }
}

public class DescribeScreenUploadPictureResponseBody : Tea.TeaModel {
    public var requestId: String?

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
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.url != nil {
            map["Url"] = self.url!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Url") {
            self.url = dict["Url"] as! String
        }
    }
}

public class DescribeScreenUploadPictureResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeScreenUploadPictureResponseBody?

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
            var model = DescribeScreenUploadPictureResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeScreenVersionConfigResponseBody : Tea.TeaModel {
    public var assetLevel: Int32?

    public var instanceId: String?

    public var isTrialVersion: Int32?

    public var releaseTime: Int64?

    public var requestId: String?

    public var sasLog: Int32?

    public var sasScreen: Int32?

    public var version: Int32?

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
        if self.assetLevel != nil {
            map["AssetLevel"] = self.assetLevel!
        }
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.isTrialVersion != nil {
            map["IsTrialVersion"] = self.isTrialVersion!
        }
        if self.releaseTime != nil {
            map["ReleaseTime"] = self.releaseTime!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.sasLog != nil {
            map["SasLog"] = self.sasLog!
        }
        if self.sasScreen != nil {
            map["SasScreen"] = self.sasScreen!
        }
        if self.version != nil {
            map["Version"] = self.version!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AssetLevel") {
            self.assetLevel = dict["AssetLevel"] as! Int32
        }
        if dict.keys.contains("InstanceId") {
            self.instanceId = dict["InstanceId"] as! String
        }
        if dict.keys.contains("IsTrialVersion") {
            self.isTrialVersion = dict["IsTrialVersion"] as! Int32
        }
        if dict.keys.contains("ReleaseTime") {
            self.releaseTime = dict["ReleaseTime"] as! Int64
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("SasLog") {
            self.sasLog = dict["SasLog"] as! Int32
        }
        if dict.keys.contains("SasScreen") {
            self.sasScreen = dict["SasScreen"] as! Int32
        }
        if dict.keys.contains("Version") {
            self.version = dict["Version"] as! Int32
        }
    }
}

public class DescribeScreenVersionConfigResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeScreenVersionConfigResponseBody?

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
            var model = DescribeScreenVersionConfigResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetFileDetectResultInnerRequest : Tea.TeaModel {
    public var dnaHashKeyList: [String]?

    public var hashKeyList: [String]?

    public var level: Int32?

    public var sourceIp: String?

    public var type: Int32?

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
        if self.dnaHashKeyList != nil {
            map["DnaHashKeyList"] = self.dnaHashKeyList!
        }
        if self.hashKeyList != nil {
            map["HashKeyList"] = self.hashKeyList!
        }
        if self.level != nil {
            map["Level"] = self.level!
        }
        if self.sourceIp != nil {
            map["SourceIp"] = self.sourceIp!
        }
        if self.type != nil {
            map["Type"] = self.type!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DnaHashKeyList") {
            self.dnaHashKeyList = dict["DnaHashKeyList"] as! [String]
        }
        if dict.keys.contains("HashKeyList") {
            self.hashKeyList = dict["HashKeyList"] as! [String]
        }
        if dict.keys.contains("Level") {
            self.level = dict["Level"] as! Int32
        }
        if dict.keys.contains("SourceIp") {
            self.sourceIp = dict["SourceIp"] as! String
        }
        if dict.keys.contains("Type") {
            self.type = dict["Type"] as! Int32
        }
    }
}

public class GetFileDetectResultInnerResponseBody : Tea.TeaModel {
    public class ResultList : Tea.TeaModel {
        public var code: String?

        public var expireTime: String?

        public var ext: String?

        public var hashKey: String?

        public var message: String?

        public var result: Int32?

        public var score: Int32?

        public var virusType: String?

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
            if self.expireTime != nil {
                map["ExpireTime"] = self.expireTime!
            }
            if self.ext != nil {
                map["Ext"] = self.ext!
            }
            if self.hashKey != nil {
                map["HashKey"] = self.hashKey!
            }
            if self.message != nil {
                map["Message"] = self.message!
            }
            if self.result != nil {
                map["Result"] = self.result!
            }
            if self.score != nil {
                map["Score"] = self.score!
            }
            if self.virusType != nil {
                map["VirusType"] = self.virusType!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Code") {
                self.code = dict["Code"] as! String
            }
            if dict.keys.contains("ExpireTime") {
                self.expireTime = dict["ExpireTime"] as! String
            }
            if dict.keys.contains("Ext") {
                self.ext = dict["Ext"] as! String
            }
            if dict.keys.contains("HashKey") {
                self.hashKey = dict["HashKey"] as! String
            }
            if dict.keys.contains("Message") {
                self.message = dict["Message"] as! String
            }
            if dict.keys.contains("Result") {
                self.result = dict["Result"] as! Int32
            }
            if dict.keys.contains("Score") {
                self.score = dict["Score"] as! Int32
            }
            if dict.keys.contains("VirusType") {
                self.virusType = dict["VirusType"] as! String
            }
        }
    }
    public var requestId: String?

    public var resultList: [GetFileDetectResultInnerResponseBody.ResultList]?

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
        if self.resultList != nil {
            var tmp : [Any] = []
            for k in self.resultList! {
                tmp.append(k.toMap())
            }
            map["ResultList"] = tmp
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("ResultList") {
            var tmp : [GetFileDetectResultInnerResponseBody.ResultList] = []
            for v in dict["ResultList"] as! [Any] {
                var model = GetFileDetectResultInnerResponseBody.ResultList()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.resultList = tmp
        }
    }
}

public class GetFileDetectResultInnerResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetFileDetectResultInnerResponseBody?

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
            var model = GetFileDetectResultInnerResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListGlobalUserConfigRequest : Tea.TeaModel {
    public var moduleList: [String]?

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
        if self.moduleList != nil {
            map["ModuleList"] = self.moduleList!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ModuleList") {
            self.moduleList = dict["ModuleList"] as! [String]
        }
    }
}

public class ListGlobalUserConfigShrinkRequest : Tea.TeaModel {
    public var moduleListShrink: String?

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
        if self.moduleListShrink != nil {
            map["ModuleList"] = self.moduleListShrink!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ModuleList") {
            self.moduleListShrink = dict["ModuleList"] as! String
        }
    }
}

public class ListGlobalUserConfigResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var globalConfigSwitch: Bool?

        public var moduleName: String?

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
            if self.globalConfigSwitch != nil {
                map["GlobalConfigSwitch"] = self.globalConfigSwitch!
            }
            if self.moduleName != nil {
                map["ModuleName"] = self.moduleName!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("GlobalConfigSwitch") {
                self.globalConfigSwitch = dict["GlobalConfigSwitch"] as! Bool
            }
            if dict.keys.contains("ModuleName") {
                self.moduleName = dict["ModuleName"] as! String
            }
        }
    }
    public var data: [ListGlobalUserConfigResponseBody.Data]?

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
        if dict.keys.contains("Data") {
            var tmp : [ListGlobalUserConfigResponseBody.Data] = []
            for v in dict["Data"] as! [Any] {
                var model = ListGlobalUserConfigResponseBody.Data()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.data = tmp
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class ListGlobalUserConfigResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListGlobalUserConfigResponseBody?

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
            var model = ListGlobalUserConfigResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}
