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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Id"] as? Int32 {
            self.id = value
        }
        if let value = dict["LogoPower"] as? Bool {
            self.logoPower = value
        }
        if let value = dict["LogoUrl"] as? String {
            self.logoUrl = value
        }
        if let value = dict["MonitorUrl"] as? String {
            self.monitorUrl = value
        }
        if let value = dict["ScreenDataMap"] as? String {
            self.screenDataMap = value
        }
        if let value = dict["ScreenDefault"] as? Int32 {
            self.screenDefault = value
        }
        if let value = dict["Title"] as? String {
            self.title = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Id"] as? Int32 {
            self.id = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = CreateScreenSettingResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Id"] as? Int64 {
            self.id = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = DeleteScreenSettingResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AlarmEventName"] as? String {
            self.alarmEventName = value
        }
        if let value = dict["AlarmEventType"] as? String {
            self.alarmEventType = value
        }
        if let value = dict["CurrentPage"] as? Int32 {
            self.currentPage = value
        }
        if let value = dict["Dealed"] as? String {
            self.dealed = value
        }
        if let value = dict["From"] as? String {
            self.from = value
        }
        if let value = dict["Lang"] as? String {
            self.lang = value
        }
        if let value = dict["Levels"] as? String {
            self.levels = value
        }
        if let value = dict["PageSize"] as? String {
            self.pageSize = value
        }
        if let value = dict["Remark"] as? String {
            self.remark = value
        }
        if let value = dict["TimeEnd"] as? String {
            self.timeEnd = value
        }
        if let value = dict["TimeStart"] as? String {
            self.timeStart = value
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Count"] as? Int32 {
                self.count = value
            }
            if let value = dict["CurrentPage"] as? Int32 {
                self.currentPage = value
            }
            if let value = dict["PageSize"] as? Int32 {
                self.pageSize = value
            }
            if let value = dict["TotalCount"] as? Int32 {
                self.totalCount = value
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["AlarmEventName"] as? String {
                self.alarmEventName = value
            }
            if let value = dict["AlarmEventType"] as? String {
                self.alarmEventType = value
            }
            if let value = dict["AlarmUniqueInfo"] as? String {
                self.alarmUniqueInfo = value
            }
            if let value = dict["CanBeDealOnLine"] as? Bool {
                self.canBeDealOnLine = value
            }
            if let value = dict["CanCancelFault"] as? Bool {
                self.canCancelFault = value
            }
            if let value = dict["DataSource"] as? String {
                self.dataSource = value
            }
            if let value = dict["Dealed"] as? Bool {
                self.dealed = value
            }
            if let value = dict["Description"] as? String {
                self.description_ = value
            }
            if let value = dict["EndTime"] as? Int64 {
                self.endTime = value
            }
            if let value = dict["InstanceName"] as? String {
                self.instanceName = value
            }
            if let value = dict["InternetIp"] as? String {
                self.internetIp = value
            }
            if let value = dict["IntranetIp"] as? String {
                self.intranetIp = value
            }
            if let value = dict["Level"] as? String {
                self.level = value
            }
            if let value = dict["SaleVersion"] as? String {
                self.saleVersion = value
            }
            if let value = dict["Solution"] as? String {
                self.solution = value
            }
            if let value = dict["StartTime"] as? Int64 {
                self.startTime = value
            }
            if let value = dict["SuspiciousEventCount"] as? Int32 {
                self.suspiciousEventCount = value
            }
            if let value = dict["Uuid"] as? String {
                self.uuid = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["PageInfo"] as? [String: Any?] {
            var model = DescribeScreenAlarmEventListResponseBody.PageInfo()
            model.fromMap(value)
            self.pageInfo = model
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["SuspEvents"] as? [Any?] {
            var tmp : [DescribeScreenAlarmEventListResponseBody.SuspEvents] = []
            for v in value {
                if v != nil {
                    var model = DescribeScreenAlarmEventListResponseBody.SuspEvents()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = DescribeScreenAlarmEventListResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Base64"] as? String {
            self.base64 = value
        }
        if let value = dict["CurrentPage"] as? Int32 {
            self.currentPage = value
        }
        if let value = dict["Data"] as? String {
            self.data = value
        }
        if let value = dict["EndTime"] as? Int64 {
            self.endTime = value
        }
        if let value = dict["PageSize"] as? Int32 {
            self.pageSize = value
        }
        if let value = dict["StartTime"] as? Int64 {
            self.startTime = value
        }
        if let value = dict["Type"] as? String {
            self.type = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Data"] as? String {
            self.data = value
        }
        if let value = dict["Page"] as? Int32 {
            self.page = value
        }
        if let value = dict["PageSize"] as? Int32 {
            self.pageSize = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Total"] as? Int32 {
            self.total = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = DescribeScreenAttackAnalysisDataResponseBody()
            model.fromMap(value)
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["AffectCount"] as? Int32 {
                self.affectCount = value
            }
            if let value = dict["CheckItem"] as? String {
                self.checkItem = value
            }
            if let value = dict["Level"] as? String {
                self.level = value
            }
            if let value = dict["Pass"] as? Bool {
                self.pass = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["CloudHcRiskItems"] as? [Any?] {
            var tmp : [DescribeScreenCloudHcRiskResponseBody.CloudHcRiskItems] = []
            for v in value {
                if v != nil {
                    var model = DescribeScreenCloudHcRiskResponseBody.CloudHcRiskItems()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.cloudHcRiskItems = tmp
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = DescribeScreenCloudHcRiskResponseBody()
            model.fromMap(value)
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

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["Unit"] as? String {
                        self.unit = value
                    }
                    if let value = dict["Value"] as? String {
                        self.value = value
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

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["Code"] as? String {
                    self.code = value
                }
                if let value = dict["Date"] as? [Any?] {
                    var tmp : [DescribeScreenDataMapResponseBody.SasScreenTypeList.TypeData.Date] = []
                    for v in value {
                        if v != nil {
                            var model = DescribeScreenDataMapResponseBody.SasScreenTypeList.TypeData.Date()
                            if v != nil {
                                model.fromMap(v as? [String: Any?])
                            }
                            tmp.append(model)
                        }
                    }
                    self.date = tmp
                }
                if let value = dict["Id"] as? String {
                    self.id = value
                }
                if let value = dict["Title"] as? String {
                    self.title = value
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Type"] as? String {
                self.type = value
            }
            if let value = dict["TypeCode"] as? String {
                self.typeCode = value
            }
            if let value = dict["TypeData"] as? [Any?] {
                var tmp : [DescribeScreenDataMapResponseBody.SasScreenTypeList.TypeData] = []
                for v in value {
                    if v != nil {
                        var model = DescribeScreenDataMapResponseBody.SasScreenTypeList.TypeData()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["SasScreenTypeList"] as? [Any?] {
            var tmp : [DescribeScreenDataMapResponseBody.SasScreenTypeList] = []
            for v in value {
                if v != nil {
                    var model = DescribeScreenDataMapResponseBody.SasScreenTypeList()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = DescribeScreenDataMapResponseBody()
            model.fromMap(value)
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["AffectCount"] as? Int32 {
                self.affectCount = value
            }
            if let value = dict["Level"] as? String {
                self.level = value
            }
            if let value = dict["VulName"] as? String {
                self.vulName = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["CloudHcRiskItems"] as? [Any?] {
            var tmp : [DescribeScreenEmerRiskResponseBody.CloudHcRiskItems] = []
            for v in value {
                if v != nil {
                    var model = DescribeScreenEmerRiskResponseBody.CloudHcRiskItems()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.cloudHcRiskItems = tmp
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = DescribeScreenEmerRiskResponseBody()
            model.fromMap(value)
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["SafeCount"] as? [String] {
                self.safeCount = value
            }
            if let value = dict["SuspEventMachineNames"] as? [String] {
                self.suspEventMachineNames = value
            }
            if let value = dict["SuspEventUuids"] as? [String] {
                self.suspEventUuids = value
            }
            if let value = dict["WeaknessMachineNames"] as? [String] {
                self.weaknessMachineNames = value
            }
            if let value = dict["WeaknessUuids"] as? [String] {
                self.weaknessUuids = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Data"] as? [String: Any?] {
            var model = DescribeScreenHostStatisticsResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = DescribeScreenHostStatisticsResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Lang"] as? String {
            self.lang = value
        }
        if let value = dict["StartTime"] as? Int64 {
            self.startTime = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["DateArray"] as? [String] {
            self.dateArray = value
        }
        if let value = dict["HealthCheckDealedCount"] as? Int32 {
            self.healthCheckDealedCount = value
        }
        if let value = dict["HealthCheckValueArray"] as? [String] {
            self.healthCheckValueArray = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["SecurityEventDealedCount"] as? Int32 {
            self.securityEventDealedCount = value
        }
        if let value = dict["SuspEventValueArray"] as? [String] {
            self.suspEventValueArray = value
        }
        if let value = dict["VulValueArray"] as? [String] {
            self.vulValueArray = value
        }
        if let value = dict["VulnerabilityDealedCount"] as? Int32 {
            self.vulnerabilityDealedCount = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = DescribeScreenOperateInfoResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AccessId"] as? String {
            self.accessId = value
        }
        if let value = dict["Expire"] as? Int32 {
            self.expire = value
        }
        if let value = dict["Host"] as? String {
            self.host = value
        }
        if let value = dict["Key"] as? String {
            self.key = value
        }
        if let value = dict["Policy"] as? String {
            self.policy = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["SecurityToken"] as? String {
            self.securityToken = value
        }
        if let value = dict["Signature"] as? String {
            self.signature = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = DescribeScreenOssUploadInfoResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["EndTime"] as? Int64 {
            self.endTime = value
        }
        if let value = dict["StartTime"] as? Int64 {
            self.startTime = value
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["SocreThread"] as? [String] {
                self.socreThread = value
            }
            if let value = dict["SocreThreadDate"] as? [String] {
                self.socreThreadDate = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Data"] as? [String: Any?] {
            var model = DescribeScreenScoreThreadResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = DescribeScreenScoreThreadResponseBody()
            model.fromMap(value)
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["DateArray"] as? [String] {
                self.dateArray = value
            }
            if let value = dict["TotalCount"] as? Int32 {
                self.totalCount = value
            }
            if let value = dict["ValueArray"] as? [String] {
                self.valueArray = value
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["DateArray"] as? [String] {
                self.dateArray = value
            }
            if let value = dict["HighCount"] as? Int32 {
                self.highCount = value
            }
            if let value = dict["HighList"] as? [String] {
                self.highList = value
            }
            if let value = dict["LevelsOn"] as? [String] {
                self.levelsOn = value
            }
            if let value = dict["LowCount"] as? Int32 {
                self.lowCount = value
            }
            if let value = dict["LowList"] as? [String] {
                self.lowList = value
            }
            if let value = dict["MediumCount"] as? Int32 {
                self.mediumCount = value
            }
            if let value = dict["MediumList"] as? [String] {
                self.mediumList = value
            }
            if let value = dict["TotalCount"] as? Int32 {
                self.totalCount = value
            }
            if let value = dict["ValueArray"] as? [String] {
                self.valueArray = value
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["DateArray"] as? [String] {
                self.dateArray = value
            }
            if let value = dict["LevelsOn"] as? [String] {
                self.levelsOn = value
            }
            if let value = dict["RemindCount"] as? Int32 {
                self.remindCount = value
            }
            if let value = dict["RemindList"] as? [String] {
                self.remindList = value
            }
            if let value = dict["SeriousCount"] as? Int32 {
                self.seriousCount = value
            }
            if let value = dict["SeriousList"] as? [String] {
                self.seriousList = value
            }
            if let value = dict["SuspiciousCount"] as? Int32 {
                self.suspiciousCount = value
            }
            if let value = dict["SuspiciousList"] as? [String] {
                self.suspiciousList = value
            }
            if let value = dict["TotalCount"] as? Int32 {
                self.totalCount = value
            }
            if let value = dict["ValueArray"] as? [String] {
                self.valueArray = value
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["AsapCount"] as? Int32 {
                self.asapCount = value
            }
            if let value = dict["AsapList"] as? [String] {
                self.asapList = value
            }
            if let value = dict["DateArray"] as? [String] {
                self.dateArray = value
            }
            if let value = dict["LaterCount"] as? Int32 {
                self.laterCount = value
            }
            if let value = dict["LaterList"] as? [String] {
                self.laterList = value
            }
            if let value = dict["LevelsOn"] as? [String] {
                self.levelsOn = value
            }
            if let value = dict["NntfCount"] as? Int32 {
                self.nntfCount = value
            }
            if let value = dict["NntfList"] as? [String] {
                self.nntfList = value
            }
            if let value = dict["TotalCount"] as? Int32 {
                self.totalCount = value
            }
            if let value = dict["ValueArray"] as? [String] {
                self.valueArray = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AttackEvent"] as? [String: Any?] {
            var model = DescribeScreenSecurityStatInfoResponseBody.AttackEvent()
            model.fromMap(value)
            self.attackEvent = model
        }
        if let value = dict["HealthCheck"] as? [String: Any?] {
            var model = DescribeScreenSecurityStatInfoResponseBody.HealthCheck()
            model.fromMap(value)
            self.healthCheck = model
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["SecurityEvent"] as? [String: Any?] {
            var model = DescribeScreenSecurityStatInfoResponseBody.SecurityEvent()
            model.fromMap(value)
            self.securityEvent = model
        }
        if let value = dict["Vulnerability"] as? [String: Any?] {
            var model = DescribeScreenSecurityStatInfoResponseBody.Vulnerability()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = DescribeScreenSecurityStatInfoResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Id"] as? String {
            self.id = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["LogoPower"] as? Bool {
            self.logoPower = value
        }
        if let value = dict["LogoUrl"] as? String {
            self.logoUrl = value
        }
        if let value = dict["MonitorUrl"] as? String {
            self.monitorUrl = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["ScreenDataMap"] as? String {
            self.screenDataMap = value
        }
        if let value = dict["ScreenDefault"] as? Int32 {
            self.screenDefault = value
        }
        if let value = dict["ScreenId"] as? Int32 {
            self.screenId = value
        }
        if let value = dict["Title"] as? String {
            self.title = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = DescribeScreenSettingResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AegisClientOfflineCount"] as? Int32 {
            self.aegisClientOfflineCount = value
        }
        if let value = dict["AegisClientOnlineCount"] as? Int32 {
            self.aegisClientOnlineCount = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["SecurityScore"] as? Int32 {
            self.securityScore = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = DescribeScreenSummaryInfoResponseBody()
            model.fromMap(value)
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["ScreenID"] as? Int64 {
                self.screenID = value
            }
            if let value = dict["ScreenTitle"] as? String {
                self.screenTitle = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["SasScreenSettingList"] as? [Any?] {
            var tmp : [DescribeScreenTitlesResponseBody.SasScreenSettingList] = []
            for v in value {
                if v != nil {
                    var model = DescribeScreenTitlesResponseBody.SasScreenSettingList()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = DescribeScreenTitlesResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["LogoUrl"] as? String {
            self.logoUrl = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Url"] as? String {
            self.url = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = DescribeScreenUploadPictureResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AssetLevel"] as? Int32 {
            self.assetLevel = value
        }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["IsTrialVersion"] as? Int32 {
            self.isTrialVersion = value
        }
        if let value = dict["ReleaseTime"] as? Int64 {
            self.releaseTime = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["SasLog"] as? Int32 {
            self.sasLog = value
        }
        if let value = dict["SasScreen"] as? Int32 {
            self.sasScreen = value
        }
        if let value = dict["Version"] as? Int32 {
            self.version = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = DescribeScreenVersionConfigResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["DnaHashKeyList"] as? [String] {
            self.dnaHashKeyList = value
        }
        if let value = dict["HashKeyList"] as? [String] {
            self.hashKeyList = value
        }
        if let value = dict["Level"] as? Int32 {
            self.level = value
        }
        if let value = dict["SourceIp"] as? String {
            self.sourceIp = value
        }
        if let value = dict["Type"] as? Int32 {
            self.type = value
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Code"] as? String {
                self.code = value
            }
            if let value = dict["ExpireTime"] as? String {
                self.expireTime = value
            }
            if let value = dict["Ext"] as? String {
                self.ext = value
            }
            if let value = dict["HashKey"] as? String {
                self.hashKey = value
            }
            if let value = dict["Message"] as? String {
                self.message = value
            }
            if let value = dict["Result"] as? Int32 {
                self.result = value
            }
            if let value = dict["Score"] as? Int32 {
                self.score = value
            }
            if let value = dict["VirusType"] as? String {
                self.virusType = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["ResultList"] as? [Any?] {
            var tmp : [GetFileDetectResultInnerResponseBody.ResultList] = []
            for v in value {
                if v != nil {
                    var model = GetFileDetectResultInnerResponseBody.ResultList()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = GetFileDetectResultInnerResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ModuleList"] as? [String] {
            self.moduleList = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ModuleList"] as? String {
            self.moduleListShrink = value
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["GlobalConfigSwitch"] as? Bool {
                self.globalConfigSwitch = value
            }
            if let value = dict["ModuleName"] as? String {
                self.moduleName = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Data"] as? [Any?] {
            var tmp : [ListGlobalUserConfigResponseBody.Data] = []
            for v in value {
                if v != nil {
                    var model = ListGlobalUserConfigResponseBody.Data()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.data = tmp
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = ListGlobalUserConfigResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}
