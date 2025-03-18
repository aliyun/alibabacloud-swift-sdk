import Foundation
import Tea
import TeaUtils
import AlibabacloudOpenApi
import AlibabaCloudOpenApiUtil
import AlibabacloudEndpointUtil

public class BatchModifyInstanceStatusRequest : Tea.TeaModel {
    public var active: Int32?

    public var lang: String?

    public var playbookUuid: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.active != nil {
            map["Active"] = self.active!
        }
        if self.lang != nil {
            map["Lang"] = self.lang!
        }
        if self.playbookUuid != nil {
            map["PlaybookUuid"] = self.playbookUuid!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Active") {
            self.active = dict["Active"] as! Int32
        }
        if dict.keys.contains("Lang") {
            self.lang = dict["Lang"] as! String
        }
        if dict.keys.contains("PlaybookUuid") {
            self.playbookUuid = dict["PlaybookUuid"] as! String
        }
    }
}

public class BatchModifyInstanceStatusResponseBody : Tea.TeaModel {
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

public class BatchModifyInstanceStatusResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: BatchModifyInstanceStatusResponseBody?

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
            var model = BatchModifyInstanceStatusResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ComparePlaybooksRequest : Tea.TeaModel {
    public var lang: String?

    public var newPlaybookReleaseId: Int32?

    public var oldPlaybookReleaseId: Int32?

    public var playbookUuid: String?

    public override init() {
        super.init()
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
        if self.newPlaybookReleaseId != nil {
            map["NewPlaybookReleaseId"] = self.newPlaybookReleaseId!
        }
        if self.oldPlaybookReleaseId != nil {
            map["OldPlaybookReleaseId"] = self.oldPlaybookReleaseId!
        }
        if self.playbookUuid != nil {
            map["PlaybookUuid"] = self.playbookUuid!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Lang") {
            self.lang = dict["Lang"] as! String
        }
        if dict.keys.contains("NewPlaybookReleaseId") {
            self.newPlaybookReleaseId = dict["NewPlaybookReleaseId"] as! Int32
        }
        if dict.keys.contains("OldPlaybookReleaseId") {
            self.oldPlaybookReleaseId = dict["OldPlaybookReleaseId"] as! Int32
        }
        if dict.keys.contains("PlaybookUuid") {
            self.playbookUuid = dict["PlaybookUuid"] as! String
        }
    }
}

public class ComparePlaybooksResponseBody : Tea.TeaModel {
    public class CompareResult : Tea.TeaModel {
        public var description_: String?

        public var new: Bool?

        public var same: Bool?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.description_ != nil {
                map["Description"] = self.description_!
            }
            if self.new != nil {
                map["New"] = self.new!
            }
            if self.same != nil {
                map["Same"] = self.same!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Description") {
                self.description_ = dict["Description"] as! String
            }
            if dict.keys.contains("New") {
                self.new = dict["New"] as! Bool
            }
            if dict.keys.contains("Same") {
                self.same = dict["Same"] as! Bool
            }
        }
    }
    public var compareResult: ComparePlaybooksResponseBody.CompareResult?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.compareResult?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.compareResult != nil {
            map["CompareResult"] = self.compareResult?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("CompareResult") {
            var model = ComparePlaybooksResponseBody.CompareResult()
            model.fromMap(dict["CompareResult"] as! [String: Any])
            self.compareResult = model
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class ComparePlaybooksResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ComparePlaybooksResponseBody?

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
            var model = ComparePlaybooksResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ConvertPlaybookRequest : Tea.TeaModel {
    public var lang: String?

    public var roleFor: Int64?

    public var roleType: String?

    public var taskflow: String?

    public override init() {
        super.init()
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
        if self.roleFor != nil {
            map["RoleFor"] = self.roleFor!
        }
        if self.roleType != nil {
            map["RoleType"] = self.roleType!
        }
        if self.taskflow != nil {
            map["Taskflow"] = self.taskflow!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Lang") {
            self.lang = dict["Lang"] as! String
        }
        if dict.keys.contains("RoleFor") {
            self.roleFor = dict["RoleFor"] as! Int64
        }
        if dict.keys.contains("RoleType") {
            self.roleType = dict["RoleType"] as! String
        }
        if dict.keys.contains("Taskflow") {
            self.taskflow = dict["Taskflow"] as! String
        }
    }
}

public class ConvertPlaybookResponseBody : Tea.TeaModel {
    public var config: String?

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
        if self.config != nil {
            map["Config"] = self.config!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Config") {
            self.config = dict["Config"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class ConvertPlaybookResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ConvertPlaybookResponseBody?

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
            var model = ConvertPlaybookResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class CopyPlaybookRequest : Tea.TeaModel {
    public var description_: String?

    public var displayName: String?

    public var lang: String?

    public var releaseVersion: String?

    public var roleFor: Int64?

    public var roleType: String?

    public var sourcePlaybookUuid: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.description_ != nil {
            map["Description"] = self.description_!
        }
        if self.displayName != nil {
            map["DisplayName"] = self.displayName!
        }
        if self.lang != nil {
            map["Lang"] = self.lang!
        }
        if self.releaseVersion != nil {
            map["ReleaseVersion"] = self.releaseVersion!
        }
        if self.roleFor != nil {
            map["RoleFor"] = self.roleFor!
        }
        if self.roleType != nil {
            map["RoleType"] = self.roleType!
        }
        if self.sourcePlaybookUuid != nil {
            map["SourcePlaybookUuid"] = self.sourcePlaybookUuid!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Description") {
            self.description_ = dict["Description"] as! String
        }
        if dict.keys.contains("DisplayName") {
            self.displayName = dict["DisplayName"] as! String
        }
        if dict.keys.contains("Lang") {
            self.lang = dict["Lang"] as! String
        }
        if dict.keys.contains("ReleaseVersion") {
            self.releaseVersion = dict["ReleaseVersion"] as! String
        }
        if dict.keys.contains("RoleFor") {
            self.roleFor = dict["RoleFor"] as! Int64
        }
        if dict.keys.contains("RoleType") {
            self.roleType = dict["RoleType"] as! String
        }
        if dict.keys.contains("SourcePlaybookUuid") {
            self.sourcePlaybookUuid = dict["SourcePlaybookUuid"] as! String
        }
    }
}

public class CopyPlaybookResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var active: Int32?

        public var description_: String?

        public var displayName: String?

        public var failNum: Int32?

        public var failRate: Double?

        public var gmtCreate: Int64?

        public var gmtModified: Int64?

        public var historyMd5: Int32?

        public var inputParams: String?

        public var lastRuntime: Int64?

        public var logicReleaseTaskflowMd5: String?

        public var outputParams: String?

        public var ownType: String?

        public var permission: Int32?

        public var playbookStatus: Int32?

        public var playbookUuid: String?

        public var succNum: Int32?

        public var tenantId: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.active != nil {
                map["Active"] = self.active!
            }
            if self.description_ != nil {
                map["Description"] = self.description_!
            }
            if self.displayName != nil {
                map["DisplayName"] = self.displayName!
            }
            if self.failNum != nil {
                map["FailNum"] = self.failNum!
            }
            if self.failRate != nil {
                map["FailRate"] = self.failRate!
            }
            if self.gmtCreate != nil {
                map["GmtCreate"] = self.gmtCreate!
            }
            if self.gmtModified != nil {
                map["GmtModified"] = self.gmtModified!
            }
            if self.historyMd5 != nil {
                map["HistoryMd5"] = self.historyMd5!
            }
            if self.inputParams != nil {
                map["InputParams"] = self.inputParams!
            }
            if self.lastRuntime != nil {
                map["LastRuntime"] = self.lastRuntime!
            }
            if self.logicReleaseTaskflowMd5 != nil {
                map["LogicReleaseTaskflowMd5"] = self.logicReleaseTaskflowMd5!
            }
            if self.outputParams != nil {
                map["OutputParams"] = self.outputParams!
            }
            if self.ownType != nil {
                map["OwnType"] = self.ownType!
            }
            if self.permission != nil {
                map["Permission"] = self.permission!
            }
            if self.playbookStatus != nil {
                map["PlaybookStatus"] = self.playbookStatus!
            }
            if self.playbookUuid != nil {
                map["PlaybookUuid"] = self.playbookUuid!
            }
            if self.succNum != nil {
                map["SuccNum"] = self.succNum!
            }
            if self.tenantId != nil {
                map["TenantId"] = self.tenantId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Active") {
                self.active = dict["Active"] as! Int32
            }
            if dict.keys.contains("Description") {
                self.description_ = dict["Description"] as! String
            }
            if dict.keys.contains("DisplayName") {
                self.displayName = dict["DisplayName"] as! String
            }
            if dict.keys.contains("FailNum") {
                self.failNum = dict["FailNum"] as! Int32
            }
            if dict.keys.contains("FailRate") {
                self.failRate = dict["FailRate"] as! Double
            }
            if dict.keys.contains("GmtCreate") {
                self.gmtCreate = dict["GmtCreate"] as! Int64
            }
            if dict.keys.contains("GmtModified") {
                self.gmtModified = dict["GmtModified"] as! Int64
            }
            if dict.keys.contains("HistoryMd5") {
                self.historyMd5 = dict["HistoryMd5"] as! Int32
            }
            if dict.keys.contains("InputParams") {
                self.inputParams = dict["InputParams"] as! String
            }
            if dict.keys.contains("LastRuntime") {
                self.lastRuntime = dict["LastRuntime"] as! Int64
            }
            if dict.keys.contains("LogicReleaseTaskflowMd5") {
                self.logicReleaseTaskflowMd5 = dict["LogicReleaseTaskflowMd5"] as! String
            }
            if dict.keys.contains("OutputParams") {
                self.outputParams = dict["OutputParams"] as! String
            }
            if dict.keys.contains("OwnType") {
                self.ownType = dict["OwnType"] as! String
            }
            if dict.keys.contains("Permission") {
                self.permission = dict["Permission"] as! Int32
            }
            if dict.keys.contains("PlaybookStatus") {
                self.playbookStatus = dict["PlaybookStatus"] as! Int32
            }
            if dict.keys.contains("PlaybookUuid") {
                self.playbookUuid = dict["PlaybookUuid"] as! String
            }
            if dict.keys.contains("SuccNum") {
                self.succNum = dict["SuccNum"] as! Int32
            }
            if dict.keys.contains("TenantId") {
                self.tenantId = dict["TenantId"] as! String
            }
        }
    }
    public class Page : Tea.TeaModel {
        public var pageNumber: Int32?

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
            if self.pageNumber != nil {
                map["PageNumber"] = self.pageNumber!
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
            if dict.keys.contains("PageNumber") {
                self.pageNumber = dict["PageNumber"] as! Int32
            }
            if dict.keys.contains("PageSize") {
                self.pageSize = dict["PageSize"] as! Int32
            }
            if dict.keys.contains("TotalCount") {
                self.totalCount = dict["TotalCount"] as! Int32
            }
        }
    }
    public var data: CopyPlaybookResponseBody.Data?

    public var page: CopyPlaybookResponseBody.Page?

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
        try self.page?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.data != nil {
            map["Data"] = self.data?.toMap()
        }
        if self.page != nil {
            map["Page"] = self.page?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Data") {
            var model = CopyPlaybookResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("Page") {
            var model = CopyPlaybookResponseBody.Page()
            model.fromMap(dict["Page"] as! [String: Any])
            self.page = model
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class CopyPlaybookResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CopyPlaybookResponseBody?

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
            var model = CopyPlaybookResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class CreatePlaybookRequest : Tea.TeaModel {
    public var description_: String?

    public var displayName: String?

    public var lang: String?

    public var taskflowType: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.description_ != nil {
            map["Description"] = self.description_!
        }
        if self.displayName != nil {
            map["DisplayName"] = self.displayName!
        }
        if self.lang != nil {
            map["Lang"] = self.lang!
        }
        if self.taskflowType != nil {
            map["TaskflowType"] = self.taskflowType!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Description") {
            self.description_ = dict["Description"] as! String
        }
        if dict.keys.contains("DisplayName") {
            self.displayName = dict["DisplayName"] as! String
        }
        if dict.keys.contains("Lang") {
            self.lang = dict["Lang"] as! String
        }
        if dict.keys.contains("TaskflowType") {
            self.taskflowType = dict["TaskflowType"] as! String
        }
    }
}

public class CreatePlaybookResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var playbookUuid: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.playbookUuid != nil {
                map["PlaybookUuid"] = self.playbookUuid!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("PlaybookUuid") {
                self.playbookUuid = dict["PlaybookUuid"] as! String
            }
        }
    }
    public var data: CreatePlaybookResponseBody.Data?

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
            var model = CreatePlaybookResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class CreatePlaybookResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreatePlaybookResponseBody?

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
            var model = CreatePlaybookResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DebugPlaybookRequest : Tea.TeaModel {
    public var lang: String?

    public var playbookUuid: String?

    public var record: String?

    public var taskflow: String?

    public override init() {
        super.init()
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
        if self.playbookUuid != nil {
            map["PlaybookUuid"] = self.playbookUuid!
        }
        if self.record != nil {
            map["Record"] = self.record!
        }
        if self.taskflow != nil {
            map["Taskflow"] = self.taskflow!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Lang") {
            self.lang = dict["Lang"] as! String
        }
        if dict.keys.contains("PlaybookUuid") {
            self.playbookUuid = dict["PlaybookUuid"] as! String
        }
        if dict.keys.contains("Record") {
            self.record = dict["Record"] as! String
        }
        if dict.keys.contains("Taskflow") {
            self.taskflow = dict["Taskflow"] as! String
        }
    }
}

public class DebugPlaybookResponseBody : Tea.TeaModel {
    public var requestId: String?

    public var requestUuid: String?

    public override init() {
        super.init()
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
        if self.requestUuid != nil {
            map["RequestUuid"] = self.requestUuid!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("RequestUuid") {
            self.requestUuid = dict["RequestUuid"] as! String
        }
    }
}

public class DebugPlaybookResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DebugPlaybookResponseBody?

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
            var model = DebugPlaybookResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DeleteComponentAssetRequest : Tea.TeaModel {
    public var assetId: Int64?

    public var lang: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.assetId != nil {
            map["AssetId"] = self.assetId!
        }
        if self.lang != nil {
            map["Lang"] = self.lang!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AssetId") {
            self.assetId = dict["AssetId"] as! Int64
        }
        if dict.keys.contains("Lang") {
            self.lang = dict["Lang"] as! String
        }
    }
}

public class DeleteComponentAssetResponseBody : Tea.TeaModel {
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

public class DeleteComponentAssetResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteComponentAssetResponseBody?

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
            var model = DeleteComponentAssetResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DeletePlaybookRequest : Tea.TeaModel {
    public var lang: String?

    public var playbookUuid: String?

    public override init() {
        super.init()
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
        if self.playbookUuid != nil {
            map["PlaybookUuid"] = self.playbookUuid!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Lang") {
            self.lang = dict["Lang"] as! String
        }
        if dict.keys.contains("PlaybookUuid") {
            self.playbookUuid = dict["PlaybookUuid"] as! String
        }
    }
}

public class DeletePlaybookResponseBody : Tea.TeaModel {
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

public class DeletePlaybookResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeletePlaybookResponseBody?

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
            var model = DeletePlaybookResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeComponentAssetFormRequest : Tea.TeaModel {
    public var componentName: String?

    public var lang: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.componentName != nil {
            map["ComponentName"] = self.componentName!
        }
        if self.lang != nil {
            map["Lang"] = self.lang!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ComponentName") {
            self.componentName = dict["ComponentName"] as! String
        }
        if dict.keys.contains("Lang") {
            self.lang = dict["Lang"] as! String
        }
    }
}

public class DescribeComponentAssetFormResponseBody : Tea.TeaModel {
    public var componentAssetForm: String?

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
        if self.componentAssetForm != nil {
            map["ComponentAssetForm"] = self.componentAssetForm!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ComponentAssetForm") {
            self.componentAssetForm = dict["ComponentAssetForm"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class DescribeComponentAssetFormResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeComponentAssetFormResponseBody?

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
            var model = DescribeComponentAssetFormResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeComponentAssetsRequest : Tea.TeaModel {
    public var componentName: String?

    public var lang: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.componentName != nil {
            map["ComponentName"] = self.componentName!
        }
        if self.lang != nil {
            map["Lang"] = self.lang!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ComponentName") {
            self.componentName = dict["ComponentName"] as! String
        }
        if dict.keys.contains("Lang") {
            self.lang = dict["Lang"] as! String
        }
    }
}

public class DescribeComponentAssetsResponseBody : Tea.TeaModel {
    public class ComponentAssets : Tea.TeaModel {
        public var assetUuid: String?

        public var componentname: String?

        public var gmtCreate: String?

        public var gmtModified: String?

        public var id: Int64?

        public var name: String?

        public var params: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.assetUuid != nil {
                map["AssetUuid"] = self.assetUuid!
            }
            if self.componentname != nil {
                map["Componentname"] = self.componentname!
            }
            if self.gmtCreate != nil {
                map["GmtCreate"] = self.gmtCreate!
            }
            if self.gmtModified != nil {
                map["GmtModified"] = self.gmtModified!
            }
            if self.id != nil {
                map["Id"] = self.id!
            }
            if self.name != nil {
                map["Name"] = self.name!
            }
            if self.params != nil {
                map["Params"] = self.params!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("AssetUuid") {
                self.assetUuid = dict["AssetUuid"] as! String
            }
            if dict.keys.contains("Componentname") {
                self.componentname = dict["Componentname"] as! String
            }
            if dict.keys.contains("GmtCreate") {
                self.gmtCreate = dict["GmtCreate"] as! String
            }
            if dict.keys.contains("GmtModified") {
                self.gmtModified = dict["GmtModified"] as! String
            }
            if dict.keys.contains("Id") {
                self.id = dict["Id"] as! Int64
            }
            if dict.keys.contains("Name") {
                self.name = dict["Name"] as! String
            }
            if dict.keys.contains("Params") {
                self.params = dict["Params"] as! String
            }
        }
    }
    public var componentAssets: [DescribeComponentAssetsResponseBody.ComponentAssets]?

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
        if self.componentAssets != nil {
            var tmp : [Any] = []
            for k in self.componentAssets! {
                tmp.append(k.toMap())
            }
            map["ComponentAssets"] = tmp
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ComponentAssets") {
            var tmp : [DescribeComponentAssetsResponseBody.ComponentAssets] = []
            for v in dict["ComponentAssets"] as! [Any] {
                var model = DescribeComponentAssetsResponseBody.ComponentAssets()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.componentAssets = tmp
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class DescribeComponentAssetsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeComponentAssetsResponseBody?

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
            var model = DescribeComponentAssetsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeComponentListRequest : Tea.TeaModel {
    public var lang: String?

    public var playbookUuid: String?

    public override init() {
        super.init()
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
        if self.playbookUuid != nil {
            map["PlaybookUuid"] = self.playbookUuid!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Lang") {
            self.lang = dict["Lang"] as! String
        }
        if dict.keys.contains("PlaybookUuid") {
            self.playbookUuid = dict["PlaybookUuid"] as! String
        }
    }
}

public class DescribeComponentListResponseBody : Tea.TeaModel {
    public var components: String?

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
        if self.components != nil {
            map["Components"] = self.components!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Components") {
            self.components = dict["Components"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class DescribeComponentListResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeComponentListResponseBody?

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
            var model = DescribeComponentListResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeComponentPlaybookRequest : Tea.TeaModel {
    public var lang: String?

    public var playbookUuid: String?

    public override init() {
        super.init()
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
        if self.playbookUuid != nil {
            map["PlaybookUuid"] = self.playbookUuid!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Lang") {
            self.lang = dict["Lang"] as! String
        }
        if dict.keys.contains("PlaybookUuid") {
            self.playbookUuid = dict["PlaybookUuid"] as! String
        }
    }
}

public class DescribeComponentPlaybookResponseBody : Tea.TeaModel {
    public class Playbooks : Tea.TeaModel {
        public var description_: String?

        public var displayName: String?

        public var inputParams: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.description_ != nil {
                map["Description"] = self.description_!
            }
            if self.displayName != nil {
                map["DisplayName"] = self.displayName!
            }
            if self.inputParams != nil {
                map["InputParams"] = self.inputParams!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Description") {
                self.description_ = dict["Description"] as! String
            }
            if dict.keys.contains("DisplayName") {
                self.displayName = dict["DisplayName"] as! String
            }
            if dict.keys.contains("InputParams") {
                self.inputParams = dict["InputParams"] as! String
            }
        }
    }
    public var playbooks: [DescribeComponentPlaybookResponseBody.Playbooks]?

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
        if self.playbooks != nil {
            var tmp : [Any] = []
            for k in self.playbooks! {
                tmp.append(k.toMap())
            }
            map["Playbooks"] = tmp
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Playbooks") {
            var tmp : [DescribeComponentPlaybookResponseBody.Playbooks] = []
            for v in dict["Playbooks"] as! [Any] {
                var model = DescribeComponentPlaybookResponseBody.Playbooks()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.playbooks = tmp
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class DescribeComponentPlaybookResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeComponentPlaybookResponseBody?

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
            var model = DescribeComponentPlaybookResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeComponentsJsRequest : Tea.TeaModel {
    public var lang: String?

    public override init() {
        super.init()
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
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Lang") {
            self.lang = dict["Lang"] as! String
        }
    }
}

public class DescribeComponentsJsResponseBody : Tea.TeaModel {
    public var componentsJs: String?

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
        if self.componentsJs != nil {
            map["ComponentsJs"] = self.componentsJs!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ComponentsJs") {
            self.componentsJs = dict["ComponentsJs"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class DescribeComponentsJsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeComponentsJsResponseBody?

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
            var model = DescribeComponentsJsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeDistinctReleasesRequest : Tea.TeaModel {
    public var lang: String?

    public var playbookUuid: String?

    public var taskflowMd5: String?

    public override init() {
        super.init()
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
        if self.playbookUuid != nil {
            map["PlaybookUuid"] = self.playbookUuid!
        }
        if self.taskflowMd5 != nil {
            map["TaskflowMd5"] = self.taskflowMd5!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Lang") {
            self.lang = dict["Lang"] as! String
        }
        if dict.keys.contains("PlaybookUuid") {
            self.playbookUuid = dict["PlaybookUuid"] as! String
        }
        if dict.keys.contains("TaskflowMd5") {
            self.taskflowMd5 = dict["TaskflowMd5"] as! String
        }
    }
}

public class DescribeDistinctReleasesResponseBody : Tea.TeaModel {
    public class Records : Tea.TeaModel {
        public var description_: String?

        public var taskflowMd5: String?

        public var taskflowType: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.description_ != nil {
                map["Description"] = self.description_!
            }
            if self.taskflowMd5 != nil {
                map["TaskflowMd5"] = self.taskflowMd5!
            }
            if self.taskflowType != nil {
                map["TaskflowType"] = self.taskflowType!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Description") {
                self.description_ = dict["Description"] as! String
            }
            if dict.keys.contains("TaskflowMd5") {
                self.taskflowMd5 = dict["TaskflowMd5"] as! String
            }
            if dict.keys.contains("TaskflowType") {
                self.taskflowType = dict["TaskflowType"] as! String
            }
        }
    }
    public var records: [DescribeDistinctReleasesResponseBody.Records]?

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
        if self.records != nil {
            var tmp : [Any] = []
            for k in self.records! {
                tmp.append(k.toMap())
            }
            map["Records"] = tmp
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Records") {
            var tmp : [DescribeDistinctReleasesResponseBody.Records] = []
            for v in dict["Records"] as! [Any] {
                var model = DescribeDistinctReleasesResponseBody.Records()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.records = tmp
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class DescribeDistinctReleasesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeDistinctReleasesResponseBody?

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
            var model = DescribeDistinctReleasesResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeEnumItemsRequest : Tea.TeaModel {
    public var enumType: String?

    public var lang: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.enumType != nil {
            map["EnumType"] = self.enumType!
        }
        if self.lang != nil {
            map["Lang"] = self.lang!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("EnumType") {
            self.enumType = dict["EnumType"] as! String
        }
        if dict.keys.contains("Lang") {
            self.lang = dict["Lang"] as! String
        }
    }
}

public class DescribeEnumItemsResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
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
            if dict.keys.contains("Key") {
                self.key = dict["Key"] as! String
            }
            if dict.keys.contains("Value") {
                self.value = dict["Value"] as! String
            }
        }
    }
    public var data: [DescribeEnumItemsResponseBody.Data]?

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
            var tmp : [DescribeEnumItemsResponseBody.Data] = []
            for v in dict["Data"] as! [Any] {
                var model = DescribeEnumItemsResponseBody.Data()
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

public class DescribeEnumItemsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeEnumItemsResponseBody?

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
            var model = DescribeEnumItemsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeExecutePlaybooksRequest : Tea.TeaModel {
    public var inputMode: String?

    public var lang: String?

    public var paramType: String?

    public var playbookName: String?

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
        if self.inputMode != nil {
            map["InputMode"] = self.inputMode!
        }
        if self.lang != nil {
            map["Lang"] = self.lang!
        }
        if self.paramType != nil {
            map["ParamType"] = self.paramType!
        }
        if self.playbookName != nil {
            map["PlaybookName"] = self.playbookName!
        }
        if self.uuid != nil {
            map["Uuid"] = self.uuid!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("InputMode") {
            self.inputMode = dict["InputMode"] as! String
        }
        if dict.keys.contains("Lang") {
            self.lang = dict["Lang"] as! String
        }
        if dict.keys.contains("ParamType") {
            self.paramType = dict["ParamType"] as! String
        }
        if dict.keys.contains("PlaybookName") {
            self.playbookName = dict["PlaybookName"] as! String
        }
        if dict.keys.contains("Uuid") {
            self.uuid = dict["Uuid"] as! String
        }
    }
}

public class DescribeExecutePlaybooksResponseBody : Tea.TeaModel {
    public class PlaybookMetrics : Tea.TeaModel {
        public var description_: String?

        public var displayName: String?

        public var paramConfig: String?

        public var paramType: String?

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
            if self.description_ != nil {
                map["Description"] = self.description_!
            }
            if self.displayName != nil {
                map["DisplayName"] = self.displayName!
            }
            if self.paramConfig != nil {
                map["ParamConfig"] = self.paramConfig!
            }
            if self.paramType != nil {
                map["ParamType"] = self.paramType!
            }
            if self.uuid != nil {
                map["Uuid"] = self.uuid!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Description") {
                self.description_ = dict["Description"] as! String
            }
            if dict.keys.contains("DisplayName") {
                self.displayName = dict["DisplayName"] as! String
            }
            if dict.keys.contains("ParamConfig") {
                self.paramConfig = dict["ParamConfig"] as! String
            }
            if dict.keys.contains("ParamType") {
                self.paramType = dict["ParamType"] as! String
            }
            if dict.keys.contains("Uuid") {
                self.uuid = dict["Uuid"] as! String
            }
        }
    }
    public var playbookMetrics: [DescribeExecutePlaybooksResponseBody.PlaybookMetrics]?

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
        if self.playbookMetrics != nil {
            var tmp : [Any] = []
            for k in self.playbookMetrics! {
                tmp.append(k.toMap())
            }
            map["PlaybookMetrics"] = tmp
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("PlaybookMetrics") {
            var tmp : [DescribeExecutePlaybooksResponseBody.PlaybookMetrics] = []
            for v in dict["PlaybookMetrics"] as! [Any] {
                var model = DescribeExecutePlaybooksResponseBody.PlaybookMetrics()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.playbookMetrics = tmp
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class DescribeExecutePlaybooksResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeExecutePlaybooksResponseBody?

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
            var model = DescribeExecutePlaybooksResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeFieldRequest : Tea.TeaModel {
    public var lang: String?

    public var queryKey: String?

    public override init() {
        super.init()
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
        if self.queryKey != nil {
            map["QueryKey"] = self.queryKey!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Lang") {
            self.lang = dict["Lang"] as! String
        }
        if dict.keys.contains("QueryKey") {
            self.queryKey = dict["QueryKey"] as! String
        }
    }
}

public class DescribeFieldResponseBody : Tea.TeaModel {
    public var fields: String?

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
        if self.fields != nil {
            map["Fields"] = self.fields!
        }
        if self.name != nil {
            map["Name"] = self.name!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Fields") {
            self.fields = dict["Fields"] as! String
        }
        if dict.keys.contains("Name") {
            self.name = dict["Name"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class DescribeFieldResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeFieldResponseBody?

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
            var model = DescribeFieldResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeGroupProductionsRequest : Tea.TeaModel {
    public var lang: String?

    public var roleFor: Int64?

    public var roleType: String?

    public override init() {
        super.init()
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
        if self.roleFor != nil {
            map["RoleFor"] = self.roleFor!
        }
        if self.roleType != nil {
            map["RoleType"] = self.roleType!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Lang") {
            self.lang = dict["Lang"] as! String
        }
        if dict.keys.contains("RoleFor") {
            self.roleFor = dict["RoleFor"] as! Int64
        }
        if dict.keys.contains("RoleType") {
            self.roleType = dict["RoleType"] as! String
        }
    }
}

public class DescribeGroupProductionsResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class Productions : Tea.TeaModel {
            public class PolicyList : Tea.TeaModel {
                public var policyName: String?

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
                    if self.policyName != nil {
                        map["PolicyName"] = self.policyName!
                    }
                    if self.type != nil {
                        map["Type"] = self.type!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("PolicyName") {
                        self.policyName = dict["PolicyName"] as! String
                    }
                    if dict.keys.contains("Type") {
                        self.type = dict["Type"] as! String
                    }
                }
            }
            public var code: String?

            public var defaultDomain: String?

            public var defaultVersion: String?

            public var description_: String?

            public var fullDomains: [String]?

            public var group: String?

            public var name: String?

            public var policyList: [DescribeGroupProductionsResponseBody.Data.Productions.PolicyList]?

            public var ramCode: String?

            public var shortName: String?

            public var source: String?

            public var versions: [String]?

            public override init() {
                super.init()
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
                if self.defaultDomain != nil {
                    map["DefaultDomain"] = self.defaultDomain!
                }
                if self.defaultVersion != nil {
                    map["DefaultVersion"] = self.defaultVersion!
                }
                if self.description_ != nil {
                    map["Description"] = self.description_!
                }
                if self.fullDomains != nil {
                    map["FullDomains"] = self.fullDomains!
                }
                if self.group != nil {
                    map["Group"] = self.group!
                }
                if self.name != nil {
                    map["Name"] = self.name!
                }
                if self.policyList != nil {
                    var tmp : [Any] = []
                    for k in self.policyList! {
                        tmp.append(k.toMap())
                    }
                    map["PolicyList"] = tmp
                }
                if self.ramCode != nil {
                    map["RamCode"] = self.ramCode!
                }
                if self.shortName != nil {
                    map["ShortName"] = self.shortName!
                }
                if self.source != nil {
                    map["Source"] = self.source!
                }
                if self.versions != nil {
                    map["Versions"] = self.versions!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("Code") {
                    self.code = dict["Code"] as! String
                }
                if dict.keys.contains("DefaultDomain") {
                    self.defaultDomain = dict["DefaultDomain"] as! String
                }
                if dict.keys.contains("DefaultVersion") {
                    self.defaultVersion = dict["DefaultVersion"] as! String
                }
                if dict.keys.contains("Description") {
                    self.description_ = dict["Description"] as! String
                }
                if dict.keys.contains("FullDomains") {
                    self.fullDomains = dict["FullDomains"] as! [String]
                }
                if dict.keys.contains("Group") {
                    self.group = dict["Group"] as! String
                }
                if dict.keys.contains("Name") {
                    self.name = dict["Name"] as! String
                }
                if dict.keys.contains("PolicyList") {
                    var tmp : [DescribeGroupProductionsResponseBody.Data.Productions.PolicyList] = []
                    for v in dict["PolicyList"] as! [Any] {
                        var model = DescribeGroupProductionsResponseBody.Data.Productions.PolicyList()
                        if v != nil {
                            model.fromMap(v as! [String: Any])
                        }
                        tmp.append(model)
                    }
                    self.policyList = tmp
                }
                if dict.keys.contains("RamCode") {
                    self.ramCode = dict["RamCode"] as! String
                }
                if dict.keys.contains("ShortName") {
                    self.shortName = dict["ShortName"] as! String
                }
                if dict.keys.contains("Source") {
                    self.source = dict["Source"] as! String
                }
                if dict.keys.contains("Versions") {
                    self.versions = dict["Versions"] as! [String]
                }
            }
        }
        public var groupName: String?

        public var productions: [DescribeGroupProductionsResponseBody.Data.Productions]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.groupName != nil {
                map["GroupName"] = self.groupName!
            }
            if self.productions != nil {
                var tmp : [Any] = []
                for k in self.productions! {
                    tmp.append(k.toMap())
                }
                map["Productions"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("GroupName") {
                self.groupName = dict["GroupName"] as! String
            }
            if dict.keys.contains("Productions") {
                var tmp : [DescribeGroupProductionsResponseBody.Data.Productions] = []
                for v in dict["Productions"] as! [Any] {
                    var model = DescribeGroupProductionsResponseBody.Data.Productions()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.productions = tmp
            }
        }
    }
    public class Page : Tea.TeaModel {
        public var pageNumber: Int32?

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
            if self.pageNumber != nil {
                map["PageNumber"] = self.pageNumber!
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
            if dict.keys.contains("PageNumber") {
                self.pageNumber = dict["PageNumber"] as! Int32
            }
            if dict.keys.contains("PageSize") {
                self.pageSize = dict["PageSize"] as! Int32
            }
            if dict.keys.contains("TotalCount") {
                self.totalCount = dict["TotalCount"] as! Int32
            }
        }
    }
    public var data: [DescribeGroupProductionsResponseBody.Data]?

    public var page: DescribeGroupProductionsResponseBody.Page?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.page?.validate()
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
        if self.page != nil {
            map["Page"] = self.page?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Data") {
            var tmp : [DescribeGroupProductionsResponseBody.Data] = []
            for v in dict["Data"] as! [Any] {
                var model = DescribeGroupProductionsResponseBody.Data()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.data = tmp
        }
        if dict.keys.contains("Page") {
            var model = DescribeGroupProductionsResponseBody.Page()
            model.fromMap(dict["Page"] as! [String: Any])
            self.page = model
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class DescribeGroupProductionsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeGroupProductionsResponseBody?

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
            var model = DescribeGroupProductionsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeLatestRecordSchemaRequest : Tea.TeaModel {
    public var lang: String?

    public var playbookUuid: String?

    public override init() {
        super.init()
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
        if self.playbookUuid != nil {
            map["PlaybookUuid"] = self.playbookUuid!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Lang") {
            self.lang = dict["Lang"] as! String
        }
        if dict.keys.contains("PlaybookUuid") {
            self.playbookUuid = dict["PlaybookUuid"] as! String
        }
    }
}

public class DescribeLatestRecordSchemaResponseBody : Tea.TeaModel {
    public class PlaybookNodeSchema : Tea.TeaModel {
        public class NodeSchema : Tea.TeaModel {
            public var actionName: String?

            public var componentName: String?

            public var nodeName: String?

            public var outputFields: [String]?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.actionName != nil {
                    map["ActionName"] = self.actionName!
                }
                if self.componentName != nil {
                    map["ComponentName"] = self.componentName!
                }
                if self.nodeName != nil {
                    map["NodeName"] = self.nodeName!
                }
                if self.outputFields != nil {
                    map["OutputFields"] = self.outputFields!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("ActionName") {
                    self.actionName = dict["ActionName"] as! String
                }
                if dict.keys.contains("ComponentName") {
                    self.componentName = dict["ComponentName"] as! String
                }
                if dict.keys.contains("NodeName") {
                    self.nodeName = dict["NodeName"] as! String
                }
                if dict.keys.contains("OutputFields") {
                    self.outputFields = dict["OutputFields"] as! [String]
                }
            }
        }
        public var nodeSchema: [DescribeLatestRecordSchemaResponseBody.PlaybookNodeSchema.NodeSchema]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.nodeSchema != nil {
                var tmp : [Any] = []
                for k in self.nodeSchema! {
                    tmp.append(k.toMap())
                }
                map["NodeSchema"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("NodeSchema") {
                var tmp : [DescribeLatestRecordSchemaResponseBody.PlaybookNodeSchema.NodeSchema] = []
                for v in dict["NodeSchema"] as! [Any] {
                    var model = DescribeLatestRecordSchemaResponseBody.PlaybookNodeSchema.NodeSchema()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.nodeSchema = tmp
            }
        }
    }
    public var playbookNodeSchema: DescribeLatestRecordSchemaResponseBody.PlaybookNodeSchema?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.playbookNodeSchema?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.playbookNodeSchema != nil {
            map["PlaybookNodeSchema"] = self.playbookNodeSchema?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("PlaybookNodeSchema") {
            var model = DescribeLatestRecordSchemaResponseBody.PlaybookNodeSchema()
            model.fromMap(dict["PlaybookNodeSchema"] as! [String: Any])
            self.playbookNodeSchema = model
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class DescribeLatestRecordSchemaResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeLatestRecordSchemaResponseBody?

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
            var model = DescribeLatestRecordSchemaResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeNodeParamTagsRequest : Tea.TeaModel {
    public var lang: String?

    public var nodeName: String?

    public var playbookUuid: String?

    public override init() {
        super.init()
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
        if self.nodeName != nil {
            map["NodeName"] = self.nodeName!
        }
        if self.playbookUuid != nil {
            map["PlaybookUuid"] = self.playbookUuid!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Lang") {
            self.lang = dict["Lang"] as! String
        }
        if dict.keys.contains("NodeName") {
            self.nodeName = dict["NodeName"] as! String
        }
        if dict.keys.contains("PlaybookUuid") {
            self.playbookUuid = dict["PlaybookUuid"] as! String
        }
    }
}

public class DescribeNodeParamTagsResponseBody : Tea.TeaModel {
    public class ParamReferredPaths : Tea.TeaModel {
        public var paramName: String?

        public var referredPath: [String]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.paramName != nil {
                map["ParamName"] = self.paramName!
            }
            if self.referredPath != nil {
                map["ReferredPath"] = self.referredPath!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("ParamName") {
                self.paramName = dict["ParamName"] as! String
            }
            if dict.keys.contains("ReferredPath") {
                self.referredPath = dict["ReferredPath"] as! [String]
            }
        }
    }
    public var paramReferredPaths: [DescribeNodeParamTagsResponseBody.ParamReferredPaths]?

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
        if self.paramReferredPaths != nil {
            var tmp : [Any] = []
            for k in self.paramReferredPaths! {
                tmp.append(k.toMap())
            }
            map["ParamReferredPaths"] = tmp
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ParamReferredPaths") {
            var tmp : [DescribeNodeParamTagsResponseBody.ParamReferredPaths] = []
            for v in dict["ParamReferredPaths"] as! [Any] {
                var model = DescribeNodeParamTagsResponseBody.ParamReferredPaths()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.paramReferredPaths = tmp
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class DescribeNodeParamTagsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeNodeParamTagsResponseBody?

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
            var model = DescribeNodeParamTagsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeNodeUsedInfosRequest : Tea.TeaModel {
    public var lang: String?

    public var nodeName: String?

    public var playbookUuid: String?

    public override init() {
        super.init()
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
        if self.nodeName != nil {
            map["NodeName"] = self.nodeName!
        }
        if self.playbookUuid != nil {
            map["PlaybookUuid"] = self.playbookUuid!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Lang") {
            self.lang = dict["Lang"] as! String
        }
        if dict.keys.contains("NodeName") {
            self.nodeName = dict["NodeName"] as! String
        }
        if dict.keys.contains("PlaybookUuid") {
            self.playbookUuid = dict["PlaybookUuid"] as! String
        }
    }
}

public class DescribeNodeUsedInfosResponseBody : Tea.TeaModel {
    public var nodeUsedInfos: String?

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
        if self.nodeUsedInfos != nil {
            map["NodeUsedInfos"] = self.nodeUsedInfos!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("NodeUsedInfos") {
            self.nodeUsedInfos = dict["NodeUsedInfos"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class DescribeNodeUsedInfosResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeNodeUsedInfosResponseBody?

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
            var model = DescribeNodeUsedInfosResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeNotifyTemplateListRequest : Tea.TeaModel {
    public var lang: String?

    public var roleFor: Int64?

    public var roleType: String?

    public override init() {
        super.init()
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
        if self.roleFor != nil {
            map["RoleFor"] = self.roleFor!
        }
        if self.roleType != nil {
            map["RoleType"] = self.roleType!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Lang") {
            self.lang = dict["Lang"] as! String
        }
        if dict.keys.contains("RoleFor") {
            self.roleFor = dict["RoleFor"] as! Int64
        }
        if dict.keys.contains("RoleType") {
            self.roleType = dict["RoleType"] as! String
        }
    }
}

public class DescribeNotifyTemplateListResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var content: String?

        public var eventId: String?

        public var params: String?

        public var subject: String?

        public var templateName: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.content != nil {
                map["Content"] = self.content!
            }
            if self.eventId != nil {
                map["EventId"] = self.eventId!
            }
            if self.params != nil {
                map["Params"] = self.params!
            }
            if self.subject != nil {
                map["Subject"] = self.subject!
            }
            if self.templateName != nil {
                map["TemplateName"] = self.templateName!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Content") {
                self.content = dict["Content"] as! String
            }
            if dict.keys.contains("EventId") {
                self.eventId = dict["EventId"] as! String
            }
            if dict.keys.contains("Params") {
                self.params = dict["Params"] as! String
            }
            if dict.keys.contains("Subject") {
                self.subject = dict["Subject"] as! String
            }
            if dict.keys.contains("TemplateName") {
                self.templateName = dict["TemplateName"] as! String
            }
        }
    }
    public class Page : Tea.TeaModel {
        public var pageNumber: Int32?

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
            if self.pageNumber != nil {
                map["PageNumber"] = self.pageNumber!
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
            if dict.keys.contains("PageNumber") {
                self.pageNumber = dict["PageNumber"] as! Int32
            }
            if dict.keys.contains("PageSize") {
                self.pageSize = dict["PageSize"] as! Int32
            }
            if dict.keys.contains("TotalCount") {
                self.totalCount = dict["TotalCount"] as! Int32
            }
        }
    }
    public var data: [DescribeNotifyTemplateListResponseBody.Data]?

    public var page: DescribeNotifyTemplateListResponseBody.Page?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.page?.validate()
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
        if self.page != nil {
            map["Page"] = self.page?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Data") {
            var tmp : [DescribeNotifyTemplateListResponseBody.Data] = []
            for v in dict["Data"] as! [Any] {
                var model = DescribeNotifyTemplateListResponseBody.Data()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.data = tmp
        }
        if dict.keys.contains("Page") {
            var model = DescribeNotifyTemplateListResponseBody.Page()
            model.fromMap(dict["Page"] as! [String: Any])
            self.page = model
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class DescribeNotifyTemplateListResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeNotifyTemplateListResponseBody?

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
            var model = DescribeNotifyTemplateListResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeOpenApiInfoRequest : Tea.TeaModel {
    public var apiName: String?

    public var apiVersion: String?

    public var lang: String?

    public var popCode: String?

    public var roleFor: Int64?

    public var roleType: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.apiName != nil {
            map["ApiName"] = self.apiName!
        }
        if self.apiVersion != nil {
            map["ApiVersion"] = self.apiVersion!
        }
        if self.lang != nil {
            map["Lang"] = self.lang!
        }
        if self.popCode != nil {
            map["PopCode"] = self.popCode!
        }
        if self.roleFor != nil {
            map["RoleFor"] = self.roleFor!
        }
        if self.roleType != nil {
            map["RoleType"] = self.roleType!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ApiName") {
            self.apiName = dict["ApiName"] as! String
        }
        if dict.keys.contains("ApiVersion") {
            self.apiVersion = dict["ApiVersion"] as! String
        }
        if dict.keys.contains("Lang") {
            self.lang = dict["Lang"] as! String
        }
        if dict.keys.contains("PopCode") {
            self.popCode = dict["PopCode"] as! String
        }
        if dict.keys.contains("RoleFor") {
            self.roleFor = dict["RoleFor"] as! Int64
        }
        if dict.keys.contains("RoleType") {
            self.roleType = dict["RoleType"] as! String
        }
    }
}

public class DescribeOpenApiInfoResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var description_: String?

        public var inputParams: String?

        public var outputParams: String?

        public var responseDemo: String?

        public var summary: String?

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
            if self.description_ != nil {
                map["Description"] = self.description_!
            }
            if self.inputParams != nil {
                map["InputParams"] = self.inputParams!
            }
            if self.outputParams != nil {
                map["OutputParams"] = self.outputParams!
            }
            if self.responseDemo != nil {
                map["ResponseDemo"] = self.responseDemo!
            }
            if self.summary != nil {
                map["Summary"] = self.summary!
            }
            if self.title != nil {
                map["Title"] = self.title!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Description") {
                self.description_ = dict["Description"] as! String
            }
            if dict.keys.contains("InputParams") {
                self.inputParams = dict["InputParams"] as! String
            }
            if dict.keys.contains("OutputParams") {
                self.outputParams = dict["OutputParams"] as! String
            }
            if dict.keys.contains("ResponseDemo") {
                self.responseDemo = dict["ResponseDemo"] as! String
            }
            if dict.keys.contains("Summary") {
                self.summary = dict["Summary"] as! String
            }
            if dict.keys.contains("Title") {
                self.title = dict["Title"] as! String
            }
        }
    }
    public var data: DescribeOpenApiInfoResponseBody.Data?

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
            var model = DescribeOpenApiInfoResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class DescribeOpenApiInfoResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeOpenApiInfoResponseBody?

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
            var model = DescribeOpenApiInfoResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeOpenApiListRequest : Tea.TeaModel {
    public var apiName: String?

    public var apiVersion: String?

    public var lang: String?

    public var popCode: String?

    public var roleFor: Int64?

    public var roleType: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.apiName != nil {
            map["ApiName"] = self.apiName!
        }
        if self.apiVersion != nil {
            map["ApiVersion"] = self.apiVersion!
        }
        if self.lang != nil {
            map["Lang"] = self.lang!
        }
        if self.popCode != nil {
            map["PopCode"] = self.popCode!
        }
        if self.roleFor != nil {
            map["RoleFor"] = self.roleFor!
        }
        if self.roleType != nil {
            map["RoleType"] = self.roleType!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ApiName") {
            self.apiName = dict["ApiName"] as! String
        }
        if dict.keys.contains("ApiVersion") {
            self.apiVersion = dict["ApiVersion"] as! String
        }
        if dict.keys.contains("Lang") {
            self.lang = dict["Lang"] as! String
        }
        if dict.keys.contains("PopCode") {
            self.popCode = dict["PopCode"] as! String
        }
        if dict.keys.contains("RoleFor") {
            self.roleFor = dict["RoleFor"] as! Int64
        }
        if dict.keys.contains("RoleType") {
            self.roleType = dict["RoleType"] as! String
        }
    }
}

public class DescribeOpenApiListResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var code: String?

        public var directories: Any?

        public var version: String?

        public override init() {
            super.init()
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
            if self.directories != nil {
                map["Directories"] = self.directories!
            }
            if self.version != nil {
                map["Version"] = self.version!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Code") {
                self.code = dict["Code"] as! String
            }
            if dict.keys.contains("Directories") {
                self.directories = dict["Directories"] as! Any
            }
            if dict.keys.contains("Version") {
                self.version = dict["Version"] as! String
            }
        }
    }
    public var data: DescribeOpenApiListResponseBody.Data?

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
            var model = DescribeOpenApiListResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class DescribeOpenApiListResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeOpenApiListResponseBody?

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
            var model = DescribeOpenApiListResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribePlaybookRequest : Tea.TeaModel {
    public var debugFlag: Int32?

    public var lang: String?

    public var playbookUuid: String?

    public var taskflowMd5: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.debugFlag != nil {
            map["DebugFlag"] = self.debugFlag!
        }
        if self.lang != nil {
            map["Lang"] = self.lang!
        }
        if self.playbookUuid != nil {
            map["PlaybookUuid"] = self.playbookUuid!
        }
        if self.taskflowMd5 != nil {
            map["TaskflowMd5"] = self.taskflowMd5!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DebugFlag") {
            self.debugFlag = dict["DebugFlag"] as! Int32
        }
        if dict.keys.contains("Lang") {
            self.lang = dict["Lang"] as! String
        }
        if dict.keys.contains("PlaybookUuid") {
            self.playbookUuid = dict["PlaybookUuid"] as! String
        }
        if dict.keys.contains("TaskflowMd5") {
            self.taskflowMd5 = dict["TaskflowMd5"] as! String
        }
    }
}

public class DescribePlaybookResponseBody : Tea.TeaModel {
    public class Playbook : Tea.TeaModel {
        public var description_: String?

        public var displayName: String?

        public var failExeNum: Int32?

        public var gmtCreate: String?

        public var gmtModified: String?

        public var inputParams: String?

        public var lastExeTime: Int64?

        public var onlineActive: Bool?

        public var onlineReleaseTaskflowMd5: String?

        public var ownType: String?

        public var playbookUuid: String?

        public var successExeNum: Int32?

        public var taskflow: String?

        public var taskflowType: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.description_ != nil {
                map["Description"] = self.description_!
            }
            if self.displayName != nil {
                map["DisplayName"] = self.displayName!
            }
            if self.failExeNum != nil {
                map["FailExeNum"] = self.failExeNum!
            }
            if self.gmtCreate != nil {
                map["GmtCreate"] = self.gmtCreate!
            }
            if self.gmtModified != nil {
                map["GmtModified"] = self.gmtModified!
            }
            if self.inputParams != nil {
                map["InputParams"] = self.inputParams!
            }
            if self.lastExeTime != nil {
                map["LastExeTime"] = self.lastExeTime!
            }
            if self.onlineActive != nil {
                map["OnlineActive"] = self.onlineActive!
            }
            if self.onlineReleaseTaskflowMd5 != nil {
                map["OnlineReleaseTaskflowMd5"] = self.onlineReleaseTaskflowMd5!
            }
            if self.ownType != nil {
                map["OwnType"] = self.ownType!
            }
            if self.playbookUuid != nil {
                map["PlaybookUuid"] = self.playbookUuid!
            }
            if self.successExeNum != nil {
                map["SuccessExeNum"] = self.successExeNum!
            }
            if self.taskflow != nil {
                map["Taskflow"] = self.taskflow!
            }
            if self.taskflowType != nil {
                map["TaskflowType"] = self.taskflowType!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Description") {
                self.description_ = dict["Description"] as! String
            }
            if dict.keys.contains("DisplayName") {
                self.displayName = dict["DisplayName"] as! String
            }
            if dict.keys.contains("FailExeNum") {
                self.failExeNum = dict["FailExeNum"] as! Int32
            }
            if dict.keys.contains("GmtCreate") {
                self.gmtCreate = dict["GmtCreate"] as! String
            }
            if dict.keys.contains("GmtModified") {
                self.gmtModified = dict["GmtModified"] as! String
            }
            if dict.keys.contains("InputParams") {
                self.inputParams = dict["InputParams"] as! String
            }
            if dict.keys.contains("LastExeTime") {
                self.lastExeTime = dict["LastExeTime"] as! Int64
            }
            if dict.keys.contains("OnlineActive") {
                self.onlineActive = dict["OnlineActive"] as! Bool
            }
            if dict.keys.contains("OnlineReleaseTaskflowMd5") {
                self.onlineReleaseTaskflowMd5 = dict["OnlineReleaseTaskflowMd5"] as! String
            }
            if dict.keys.contains("OwnType") {
                self.ownType = dict["OwnType"] as! String
            }
            if dict.keys.contains("PlaybookUuid") {
                self.playbookUuid = dict["PlaybookUuid"] as! String
            }
            if dict.keys.contains("SuccessExeNum") {
                self.successExeNum = dict["SuccessExeNum"] as! Int32
            }
            if dict.keys.contains("Taskflow") {
                self.taskflow = dict["Taskflow"] as! String
            }
            if dict.keys.contains("TaskflowType") {
                self.taskflowType = dict["TaskflowType"] as! String
            }
        }
    }
    public var playbook: DescribePlaybookResponseBody.Playbook?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.playbook?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.playbook != nil {
            map["Playbook"] = self.playbook?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Playbook") {
            var model = DescribePlaybookResponseBody.Playbook()
            model.fromMap(dict["Playbook"] as! [String: Any])
            self.playbook = model
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class DescribePlaybookResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribePlaybookResponseBody?

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
            var model = DescribePlaybookResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribePlaybookInputOutputRequest : Tea.TeaModel {
    public var lang: String?

    public var playbookUuid: String?

    public override init() {
        super.init()
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
        if self.playbookUuid != nil {
            map["PlaybookUuid"] = self.playbookUuid!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Lang") {
            self.lang = dict["Lang"] as! String
        }
        if dict.keys.contains("PlaybookUuid") {
            self.playbookUuid = dict["PlaybookUuid"] as! String
        }
    }
}

public class DescribePlaybookInputOutputResponseBody : Tea.TeaModel {
    public class Config : Tea.TeaModel {
        public var exeConfig: String?

        public var inputParams: String?

        public var outputParams: String?

        public var paramType: String?

        public var playbookUuid: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.exeConfig != nil {
                map["ExeConfig"] = self.exeConfig!
            }
            if self.inputParams != nil {
                map["InputParams"] = self.inputParams!
            }
            if self.outputParams != nil {
                map["OutputParams"] = self.outputParams!
            }
            if self.paramType != nil {
                map["ParamType"] = self.paramType!
            }
            if self.playbookUuid != nil {
                map["PlaybookUuid"] = self.playbookUuid!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("ExeConfig") {
                self.exeConfig = dict["ExeConfig"] as! String
            }
            if dict.keys.contains("InputParams") {
                self.inputParams = dict["InputParams"] as! String
            }
            if dict.keys.contains("OutputParams") {
                self.outputParams = dict["OutputParams"] as! String
            }
            if dict.keys.contains("ParamType") {
                self.paramType = dict["ParamType"] as! String
            }
            if dict.keys.contains("PlaybookUuid") {
                self.playbookUuid = dict["PlaybookUuid"] as! String
            }
        }
    }
    public var config: DescribePlaybookInputOutputResponseBody.Config?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.config?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.config != nil {
            map["Config"] = self.config?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Config") {
            var model = DescribePlaybookInputOutputResponseBody.Config()
            model.fromMap(dict["Config"] as! [String: Any])
            self.config = model
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class DescribePlaybookInputOutputResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribePlaybookInputOutputResponseBody?

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
            var model = DescribePlaybookInputOutputResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribePlaybookMetricsRequest : Tea.TeaModel {
    public var lang: String?

    public var playbookUuid: String?

    public override init() {
        super.init()
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
        if self.playbookUuid != nil {
            map["PlaybookUuid"] = self.playbookUuid!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Lang") {
            self.lang = dict["Lang"] as! String
        }
        if dict.keys.contains("PlaybookUuid") {
            self.playbookUuid = dict["PlaybookUuid"] as! String
        }
    }
}

public class DescribePlaybookMetricsResponseBody : Tea.TeaModel {
    public class Metrics : Tea.TeaModel {
        public var active: Int32?

        public var description_: String?

        public var displayName: String?

        public var failNum: Int32?

        public var gmtCreate: Int64?

        public var historyMd5: Int32?

        public var lastRuntime: Int64?

        public var ownType: String?

        public var playbookUuid: String?

        public var succNum: Int32?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.active != nil {
                map["Active"] = self.active!
            }
            if self.description_ != nil {
                map["Description"] = self.description_!
            }
            if self.displayName != nil {
                map["DisplayName"] = self.displayName!
            }
            if self.failNum != nil {
                map["FailNum"] = self.failNum!
            }
            if self.gmtCreate != nil {
                map["GmtCreate"] = self.gmtCreate!
            }
            if self.historyMd5 != nil {
                map["HistoryMd5"] = self.historyMd5!
            }
            if self.lastRuntime != nil {
                map["LastRuntime"] = self.lastRuntime!
            }
            if self.ownType != nil {
                map["OwnType"] = self.ownType!
            }
            if self.playbookUuid != nil {
                map["PlaybookUuid"] = self.playbookUuid!
            }
            if self.succNum != nil {
                map["SuccNum"] = self.succNum!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Active") {
                self.active = dict["Active"] as! Int32
            }
            if dict.keys.contains("Description") {
                self.description_ = dict["Description"] as! String
            }
            if dict.keys.contains("DisplayName") {
                self.displayName = dict["DisplayName"] as! String
            }
            if dict.keys.contains("FailNum") {
                self.failNum = dict["FailNum"] as! Int32
            }
            if dict.keys.contains("GmtCreate") {
                self.gmtCreate = dict["GmtCreate"] as! Int64
            }
            if dict.keys.contains("HistoryMd5") {
                self.historyMd5 = dict["HistoryMd5"] as! Int32
            }
            if dict.keys.contains("LastRuntime") {
                self.lastRuntime = dict["LastRuntime"] as! Int64
            }
            if dict.keys.contains("OwnType") {
                self.ownType = dict["OwnType"] as! String
            }
            if dict.keys.contains("PlaybookUuid") {
                self.playbookUuid = dict["PlaybookUuid"] as! String
            }
            if dict.keys.contains("SuccNum") {
                self.succNum = dict["SuccNum"] as! Int32
            }
        }
    }
    public var metrics: DescribePlaybookMetricsResponseBody.Metrics?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.metrics?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.metrics != nil {
            map["Metrics"] = self.metrics?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Metrics") {
            var model = DescribePlaybookMetricsResponseBody.Metrics()
            model.fromMap(dict["Metrics"] as! [String: Any])
            self.metrics = model
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class DescribePlaybookMetricsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribePlaybookMetricsResponseBody?

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
            var model = DescribePlaybookMetricsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribePlaybookNodesOutputRequest : Tea.TeaModel {
    public var lang: String?

    public var nodeName: String?

    public var playbookUuid: String?

    public override init() {
        super.init()
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
        if self.nodeName != nil {
            map["NodeName"] = self.nodeName!
        }
        if self.playbookUuid != nil {
            map["PlaybookUuid"] = self.playbookUuid!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Lang") {
            self.lang = dict["Lang"] as! String
        }
        if dict.keys.contains("NodeName") {
            self.nodeName = dict["NodeName"] as! String
        }
        if dict.keys.contains("PlaybookUuid") {
            self.playbookUuid = dict["PlaybookUuid"] as! String
        }
    }
}

public class DescribePlaybookNodesOutputResponseBody : Tea.TeaModel {
    public class PlaybookNodesOutput : Tea.TeaModel {
        public var nodeName: String?

        public var nodeOutput: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.nodeName != nil {
                map["NodeName"] = self.nodeName!
            }
            if self.nodeOutput != nil {
                map["NodeOutput"] = self.nodeOutput!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("NodeName") {
                self.nodeName = dict["NodeName"] as! String
            }
            if dict.keys.contains("NodeOutput") {
                self.nodeOutput = dict["NodeOutput"] as! String
            }
        }
    }
    public var playbookNodesOutput: DescribePlaybookNodesOutputResponseBody.PlaybookNodesOutput?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.playbookNodesOutput?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.playbookNodesOutput != nil {
            map["PlaybookNodesOutput"] = self.playbookNodesOutput?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("PlaybookNodesOutput") {
            var model = DescribePlaybookNodesOutputResponseBody.PlaybookNodesOutput()
            model.fromMap(dict["PlaybookNodesOutput"] as! [String: Any])
            self.playbookNodesOutput = model
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class DescribePlaybookNodesOutputResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribePlaybookNodesOutputResponseBody?

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
            var model = DescribePlaybookNodesOutputResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribePlaybookNumberMetricsRequest : Tea.TeaModel {
    public var lang: String?

    public override init() {
        super.init()
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
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Lang") {
            self.lang = dict["Lang"] as! String
        }
    }
}

public class DescribePlaybookNumberMetricsResponseBody : Tea.TeaModel {
    public class Metrics : Tea.TeaModel {
        public var startUpNum: Int32?

        public var totalNum: Int32?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.startUpNum != nil {
                map["StartUpNum"] = self.startUpNum!
            }
            if self.totalNum != nil {
                map["TotalNum"] = self.totalNum!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("StartUpNum") {
                self.startUpNum = dict["StartUpNum"] as! Int32
            }
            if dict.keys.contains("TotalNum") {
                self.totalNum = dict["TotalNum"] as! Int32
            }
        }
    }
    public var metrics: DescribePlaybookNumberMetricsResponseBody.Metrics?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.metrics?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.metrics != nil {
            map["Metrics"] = self.metrics?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Metrics") {
            var model = DescribePlaybookNumberMetricsResponseBody.Metrics()
            model.fromMap(dict["Metrics"] as! [String: Any])
            self.metrics = model
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class DescribePlaybookNumberMetricsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribePlaybookNumberMetricsResponseBody?

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
            var model = DescribePlaybookNumberMetricsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribePlaybookReleasesRequest : Tea.TeaModel {
    public var lang: String?

    public var pageNumber: Int32?

    public var pageSize: Int32?

    public var playbookUuid: String?

    public override init() {
        super.init()
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
        if self.pageNumber != nil {
            map["PageNumber"] = self.pageNumber!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.playbookUuid != nil {
            map["PlaybookUuid"] = self.playbookUuid!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Lang") {
            self.lang = dict["Lang"] as! String
        }
        if dict.keys.contains("PageNumber") {
            self.pageNumber = dict["PageNumber"] as! Int32
        }
        if dict.keys.contains("PageSize") {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("PlaybookUuid") {
            self.playbookUuid = dict["PlaybookUuid"] as! String
        }
    }
}

public class DescribePlaybookReleasesResponseBody : Tea.TeaModel {
    public class Page : Tea.TeaModel {
        public var pageNumber: Int32?

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
            if self.pageNumber != nil {
                map["PageNumber"] = self.pageNumber!
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
            if dict.keys.contains("PageNumber") {
                self.pageNumber = dict["PageNumber"] as! Int32
            }
            if dict.keys.contains("PageSize") {
                self.pageSize = dict["PageSize"] as! Int32
            }
            if dict.keys.contains("TotalCount") {
                self.totalCount = dict["TotalCount"] as! Int32
            }
        }
    }
    public class Records : Tea.TeaModel {
        public var creator: String?

        public var description_: String?

        public var gmtCreate: Int64?

        public var gmtModified: Int64?

        public var id: Int32?

        public var taskflowMd5: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.creator != nil {
                map["Creator"] = self.creator!
            }
            if self.description_ != nil {
                map["Description"] = self.description_!
            }
            if self.gmtCreate != nil {
                map["GmtCreate"] = self.gmtCreate!
            }
            if self.gmtModified != nil {
                map["GmtModified"] = self.gmtModified!
            }
            if self.id != nil {
                map["Id"] = self.id!
            }
            if self.taskflowMd5 != nil {
                map["TaskflowMd5"] = self.taskflowMd5!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Creator") {
                self.creator = dict["Creator"] as! String
            }
            if dict.keys.contains("Description") {
                self.description_ = dict["Description"] as! String
            }
            if dict.keys.contains("GmtCreate") {
                self.gmtCreate = dict["GmtCreate"] as! Int64
            }
            if dict.keys.contains("GmtModified") {
                self.gmtModified = dict["GmtModified"] as! Int64
            }
            if dict.keys.contains("Id") {
                self.id = dict["Id"] as! Int32
            }
            if dict.keys.contains("TaskflowMd5") {
                self.taskflowMd5 = dict["TaskflowMd5"] as! String
            }
        }
    }
    public var page: DescribePlaybookReleasesResponseBody.Page?

    public var records: [DescribePlaybookReleasesResponseBody.Records]?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.page?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.page != nil {
            map["Page"] = self.page?.toMap()
        }
        if self.records != nil {
            var tmp : [Any] = []
            for k in self.records! {
                tmp.append(k.toMap())
            }
            map["Records"] = tmp
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Page") {
            var model = DescribePlaybookReleasesResponseBody.Page()
            model.fromMap(dict["Page"] as! [String: Any])
            self.page = model
        }
        if dict.keys.contains("Records") {
            var tmp : [DescribePlaybookReleasesResponseBody.Records] = []
            for v in dict["Records"] as! [Any] {
                var model = DescribePlaybookReleasesResponseBody.Records()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.records = tmp
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class DescribePlaybookReleasesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribePlaybookReleasesResponseBody?

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
            var model = DescribePlaybookReleasesResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribePlaybooksRequest : Tea.TeaModel {
    public var active: Int32?

    public var endMillis: Int64?

    public var lang: String?

    public var name: String?

    public var order: String?

    public var ownType: String?

    public var pageNumber: Int64?

    public var pageSize: Int32?

    public var paramTypes: String?

    public var playbookUuid: String?

    public var playbookUuids: String?

    public var sort: String?

    public var startMillis: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.active != nil {
            map["Active"] = self.active!
        }
        if self.endMillis != nil {
            map["EndMillis"] = self.endMillis!
        }
        if self.lang != nil {
            map["Lang"] = self.lang!
        }
        if self.name != nil {
            map["Name"] = self.name!
        }
        if self.order != nil {
            map["Order"] = self.order!
        }
        if self.ownType != nil {
            map["OwnType"] = self.ownType!
        }
        if self.pageNumber != nil {
            map["PageNumber"] = self.pageNumber!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.paramTypes != nil {
            map["ParamTypes"] = self.paramTypes!
        }
        if self.playbookUuid != nil {
            map["PlaybookUuid"] = self.playbookUuid!
        }
        if self.playbookUuids != nil {
            map["PlaybookUuids"] = self.playbookUuids!
        }
        if self.sort != nil {
            map["Sort"] = self.sort!
        }
        if self.startMillis != nil {
            map["StartMillis"] = self.startMillis!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Active") {
            self.active = dict["Active"] as! Int32
        }
        if dict.keys.contains("EndMillis") {
            self.endMillis = dict["EndMillis"] as! Int64
        }
        if dict.keys.contains("Lang") {
            self.lang = dict["Lang"] as! String
        }
        if dict.keys.contains("Name") {
            self.name = dict["Name"] as! String
        }
        if dict.keys.contains("Order") {
            self.order = dict["Order"] as! String
        }
        if dict.keys.contains("OwnType") {
            self.ownType = dict["OwnType"] as! String
        }
        if dict.keys.contains("PageNumber") {
            self.pageNumber = dict["PageNumber"] as! Int64
        }
        if dict.keys.contains("PageSize") {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("ParamTypes") {
            self.paramTypes = dict["ParamTypes"] as! String
        }
        if dict.keys.contains("PlaybookUuid") {
            self.playbookUuid = dict["PlaybookUuid"] as! String
        }
        if dict.keys.contains("PlaybookUuids") {
            self.playbookUuids = dict["PlaybookUuids"] as! String
        }
        if dict.keys.contains("Sort") {
            self.sort = dict["Sort"] as! String
        }
        if dict.keys.contains("StartMillis") {
            self.startMillis = dict["StartMillis"] as! Int64
        }
    }
}

public class DescribePlaybooksResponseBody : Tea.TeaModel {
    public class Page : Tea.TeaModel {
        public var pageNumber: Int32?

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
            if self.pageNumber != nil {
                map["PageNumber"] = self.pageNumber!
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
            if dict.keys.contains("PageNumber") {
                self.pageNumber = dict["PageNumber"] as! Int32
            }
            if dict.keys.contains("PageSize") {
                self.pageSize = dict["PageSize"] as! Int32
            }
            if dict.keys.contains("TotalCount") {
                self.totalCount = dict["TotalCount"] as! Int32
            }
        }
    }
    public class Playbooks : Tea.TeaModel {
        public var active: Int32?

        public var displayName: String?

        public var gmtCreate: Int64?

        public var gmtModified: String?

        public var lastRuntime: Int64?

        public var ownType: String?

        public var paramType: String?

        public var playbookUuid: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.active != nil {
                map["Active"] = self.active!
            }
            if self.displayName != nil {
                map["DisplayName"] = self.displayName!
            }
            if self.gmtCreate != nil {
                map["GmtCreate"] = self.gmtCreate!
            }
            if self.gmtModified != nil {
                map["GmtModified"] = self.gmtModified!
            }
            if self.lastRuntime != nil {
                map["LastRuntime"] = self.lastRuntime!
            }
            if self.ownType != nil {
                map["OwnType"] = self.ownType!
            }
            if self.paramType != nil {
                map["ParamType"] = self.paramType!
            }
            if self.playbookUuid != nil {
                map["PlaybookUuid"] = self.playbookUuid!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Active") {
                self.active = dict["Active"] as! Int32
            }
            if dict.keys.contains("DisplayName") {
                self.displayName = dict["DisplayName"] as! String
            }
            if dict.keys.contains("GmtCreate") {
                self.gmtCreate = dict["GmtCreate"] as! Int64
            }
            if dict.keys.contains("GmtModified") {
                self.gmtModified = dict["GmtModified"] as! String
            }
            if dict.keys.contains("LastRuntime") {
                self.lastRuntime = dict["LastRuntime"] as! Int64
            }
            if dict.keys.contains("OwnType") {
                self.ownType = dict["OwnType"] as! String
            }
            if dict.keys.contains("ParamType") {
                self.paramType = dict["ParamType"] as! String
            }
            if dict.keys.contains("PlaybookUuid") {
                self.playbookUuid = dict["PlaybookUuid"] as! String
            }
        }
    }
    public var page: DescribePlaybooksResponseBody.Page?

    public var playbooks: [DescribePlaybooksResponseBody.Playbooks]?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.page?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.page != nil {
            map["Page"] = self.page?.toMap()
        }
        if self.playbooks != nil {
            var tmp : [Any] = []
            for k in self.playbooks! {
                tmp.append(k.toMap())
            }
            map["Playbooks"] = tmp
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Page") {
            var model = DescribePlaybooksResponseBody.Page()
            model.fromMap(dict["Page"] as! [String: Any])
            self.page = model
        }
        if dict.keys.contains("Playbooks") {
            var tmp : [DescribePlaybooksResponseBody.Playbooks] = []
            for v in dict["Playbooks"] as! [Any] {
                var model = DescribePlaybooksResponseBody.Playbooks()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.playbooks = tmp
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class DescribePlaybooksResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribePlaybooksResponseBody?

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
            var model = DescribePlaybooksResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribePopApiRequest : Tea.TeaModel {
    public var apiName: String?

    public var apiVersion: String?

    public var env: String?

    public var popCode: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.apiName != nil {
            map["ApiName"] = self.apiName!
        }
        if self.apiVersion != nil {
            map["ApiVersion"] = self.apiVersion!
        }
        if self.env != nil {
            map["Env"] = self.env!
        }
        if self.popCode != nil {
            map["PopCode"] = self.popCode!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ApiName") {
            self.apiName = dict["ApiName"] as! String
        }
        if dict.keys.contains("ApiVersion") {
            self.apiVersion = dict["ApiVersion"] as! String
        }
        if dict.keys.contains("Env") {
            self.env = dict["Env"] as! String
        }
        if dict.keys.contains("PopCode") {
            self.popCode = dict["PopCode"] as! String
        }
    }
}

public class DescribePopApiResponseBody : Tea.TeaModel {
    public class OpenApiMetaList : Tea.TeaModel {
        public var description_: String?

        public var exampleValue: String?

        public var name: String?

        public var required_: Bool?

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
            if self.description_ != nil {
                map["Description"] = self.description_!
            }
            if self.exampleValue != nil {
                map["ExampleValue"] = self.exampleValue!
            }
            if self.name != nil {
                map["Name"] = self.name!
            }
            if self.required_ != nil {
                map["Required"] = self.required_!
            }
            if self.type != nil {
                map["Type"] = self.type!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Description") {
                self.description_ = dict["Description"] as! String
            }
            if dict.keys.contains("ExampleValue") {
                self.exampleValue = dict["ExampleValue"] as! String
            }
            if dict.keys.contains("Name") {
                self.name = dict["Name"] as! String
            }
            if dict.keys.contains("Required") {
                self.required_ = dict["Required"] as! Bool
            }
            if dict.keys.contains("Type") {
                self.type = dict["Type"] as! String
            }
        }
    }
    public var apiName: String?

    public var openApiMetaList: [DescribePopApiResponseBody.OpenApiMetaList]?

    public var popCode: String?

    public var requestId: String?

    public var version: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.apiName != nil {
            map["ApiName"] = self.apiName!
        }
        if self.openApiMetaList != nil {
            var tmp : [Any] = []
            for k in self.openApiMetaList! {
                tmp.append(k.toMap())
            }
            map["OpenApiMetaList"] = tmp
        }
        if self.popCode != nil {
            map["PopCode"] = self.popCode!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.version != nil {
            map["Version"] = self.version!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ApiName") {
            self.apiName = dict["ApiName"] as! String
        }
        if dict.keys.contains("OpenApiMetaList") {
            var tmp : [DescribePopApiResponseBody.OpenApiMetaList] = []
            for v in dict["OpenApiMetaList"] as! [Any] {
                var model = DescribePopApiResponseBody.OpenApiMetaList()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.openApiMetaList = tmp
        }
        if dict.keys.contains("PopCode") {
            self.popCode = dict["PopCode"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Version") {
            self.version = dict["Version"] as! String
        }
    }
}

public class DescribePopApiResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribePopApiResponseBody?

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
            var model = DescribePopApiResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribePopApiItemListRequest : Tea.TeaModel {
    public var apiName: String?

    public var apiVersion: String?

    public var env: String?

    public var lang: String?

    public var popCode: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.apiName != nil {
            map["ApiName"] = self.apiName!
        }
        if self.apiVersion != nil {
            map["ApiVersion"] = self.apiVersion!
        }
        if self.env != nil {
            map["Env"] = self.env!
        }
        if self.lang != nil {
            map["Lang"] = self.lang!
        }
        if self.popCode != nil {
            map["PopCode"] = self.popCode!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ApiName") {
            self.apiName = dict["ApiName"] as! String
        }
        if dict.keys.contains("ApiVersion") {
            self.apiVersion = dict["ApiVersion"] as! String
        }
        if dict.keys.contains("Env") {
            self.env = dict["Env"] as! String
        }
        if dict.keys.contains("Lang") {
            self.lang = dict["Lang"] as! String
        }
        if dict.keys.contains("PopCode") {
            self.popCode = dict["PopCode"] as! String
        }
    }
}

public class DescribePopApiItemListResponseBody : Tea.TeaModel {
    public var names: [String]?

    public var popCode: String?

    public var requestId: String?

    public var total: Int64?

    public var version: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.names != nil {
            map["Names"] = self.names!
        }
        if self.popCode != nil {
            map["PopCode"] = self.popCode!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.total != nil {
            map["Total"] = self.total!
        }
        if self.version != nil {
            map["Version"] = self.version!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Names") {
            self.names = dict["Names"] as! [String]
        }
        if dict.keys.contains("PopCode") {
            self.popCode = dict["PopCode"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Total") {
            self.total = dict["Total"] as! Int64
        }
        if dict.keys.contains("Version") {
            self.version = dict["Version"] as! String
        }
    }
}

public class DescribePopApiItemListResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribePopApiItemListResponseBody?

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
            var model = DescribePopApiItemListResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeProcessStatisticsRequest : Tea.TeaModel {
    public var lang: String?

    public var roleFor: String?

    public var roleType: String?

    public override init() {
        super.init()
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
        if self.roleFor != nil {
            map["RoleFor"] = self.roleFor!
        }
        if self.roleType != nil {
            map["RoleType"] = self.roleType!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Lang") {
            self.lang = dict["Lang"] as! String
        }
        if dict.keys.contains("RoleFor") {
            self.roleFor = dict["RoleFor"] as! String
        }
        if dict.keys.contains("RoleType") {
            self.roleType = dict["RoleType"] as! String
        }
    }
}

public class DescribeProcessStatisticsResponseBody : Tea.TeaModel {
    public class Metrics : Tea.TeaModel {
        public var banFileNum: Int32?

        public var banIpNum: Int32?

        public var banProcessNum: Int32?

        public var taskNum: Int32?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.banFileNum != nil {
                map["BanFileNum"] = self.banFileNum!
            }
            if self.banIpNum != nil {
                map["BanIpNum"] = self.banIpNum!
            }
            if self.banProcessNum != nil {
                map["BanProcessNum"] = self.banProcessNum!
            }
            if self.taskNum != nil {
                map["TaskNum"] = self.taskNum!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("BanFileNum") {
                self.banFileNum = dict["BanFileNum"] as! Int32
            }
            if dict.keys.contains("BanIpNum") {
                self.banIpNum = dict["BanIpNum"] as! Int32
            }
            if dict.keys.contains("BanProcessNum") {
                self.banProcessNum = dict["BanProcessNum"] as! Int32
            }
            if dict.keys.contains("TaskNum") {
                self.taskNum = dict["TaskNum"] as! Int32
            }
        }
    }
    public var metrics: DescribeProcessStatisticsResponseBody.Metrics?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.metrics?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.metrics != nil {
            map["Metrics"] = self.metrics?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Metrics") {
            var model = DescribeProcessStatisticsResponseBody.Metrics()
            model.fromMap(dict["Metrics"] as! [String: Any])
            self.metrics = model
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class DescribeProcessStatisticsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeProcessStatisticsResponseBody?

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
            var model = DescribeProcessStatisticsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeProcessTaskCountRequest : Tea.TeaModel {
    public var entityUuidList: [String]?

    public var lang: String?

    public var roleFor: Int64?

    public var roleType: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.entityUuidList != nil {
            map["EntityUuidList"] = self.entityUuidList!
        }
        if self.lang != nil {
            map["Lang"] = self.lang!
        }
        if self.roleFor != nil {
            map["RoleFor"] = self.roleFor!
        }
        if self.roleType != nil {
            map["RoleType"] = self.roleType!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("EntityUuidList") {
            self.entityUuidList = dict["EntityUuidList"] as! [String]
        }
        if dict.keys.contains("Lang") {
            self.lang = dict["Lang"] as! String
        }
        if dict.keys.contains("RoleFor") {
            self.roleFor = dict["RoleFor"] as! Int64
        }
        if dict.keys.contains("RoleType") {
            self.roleType = dict["RoleType"] as! String
        }
    }
}

public class DescribeProcessTaskCountResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var count: Int64?

        public var entityUuid: String?

        public override init() {
            super.init()
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
            if self.entityUuid != nil {
                map["EntityUuid"] = self.entityUuid!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Count") {
                self.count = dict["Count"] as! Int64
            }
            if dict.keys.contains("EntityUuid") {
                self.entityUuid = dict["EntityUuid"] as! String
            }
        }
    }
    public var data: [DescribeProcessTaskCountResponseBody.Data]?

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
            var tmp : [DescribeProcessTaskCountResponseBody.Data] = []
            for v in dict["Data"] as! [Any] {
                var model = DescribeProcessTaskCountResponseBody.Data()
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

public class DescribeProcessTaskCountResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeProcessTaskCountResponseBody?

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
            var model = DescribeProcessTaskCountResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeProcessTasksRequest : Tea.TeaModel {
    public var direction: String?

    public var entityName: String?

    public var entityType: String?

    public var entityUuid: String?

    public var eventUuid: String?

    public var orderField: String?

    public var pageNumber: Int64?

    public var pageSize: Int32?

    public var paramContent: String?

    public var processActionEnd: Int64?

    public var processActionStart: Int64?

    public var processRemoveEnd: Int64?

    public var processRemoveStart: Int64?

    public var processStrategyUuid: String?

    public var sceneCode: String?

    public var scope: String?

    public var source: String?

    public var taskId: String?

    public var taskStatus: String?

    public var triggerSource: String?

    public var yunCode: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.direction != nil {
            map["Direction"] = self.direction!
        }
        if self.entityName != nil {
            map["EntityName"] = self.entityName!
        }
        if self.entityType != nil {
            map["EntityType"] = self.entityType!
        }
        if self.entityUuid != nil {
            map["EntityUuid"] = self.entityUuid!
        }
        if self.eventUuid != nil {
            map["EventUuid"] = self.eventUuid!
        }
        if self.orderField != nil {
            map["OrderField"] = self.orderField!
        }
        if self.pageNumber != nil {
            map["PageNumber"] = self.pageNumber!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.paramContent != nil {
            map["ParamContent"] = self.paramContent!
        }
        if self.processActionEnd != nil {
            map["ProcessActionEnd"] = self.processActionEnd!
        }
        if self.processActionStart != nil {
            map["ProcessActionStart"] = self.processActionStart!
        }
        if self.processRemoveEnd != nil {
            map["ProcessRemoveEnd"] = self.processRemoveEnd!
        }
        if self.processRemoveStart != nil {
            map["ProcessRemoveStart"] = self.processRemoveStart!
        }
        if self.processStrategyUuid != nil {
            map["ProcessStrategyUuid"] = self.processStrategyUuid!
        }
        if self.sceneCode != nil {
            map["SceneCode"] = self.sceneCode!
        }
        if self.scope != nil {
            map["Scope"] = self.scope!
        }
        if self.source != nil {
            map["Source"] = self.source!
        }
        if self.taskId != nil {
            map["TaskId"] = self.taskId!
        }
        if self.taskStatus != nil {
            map["TaskStatus"] = self.taskStatus!
        }
        if self.triggerSource != nil {
            map["TriggerSource"] = self.triggerSource!
        }
        if self.yunCode != nil {
            map["YunCode"] = self.yunCode!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Direction") {
            self.direction = dict["Direction"] as! String
        }
        if dict.keys.contains("EntityName") {
            self.entityName = dict["EntityName"] as! String
        }
        if dict.keys.contains("EntityType") {
            self.entityType = dict["EntityType"] as! String
        }
        if dict.keys.contains("EntityUuid") {
            self.entityUuid = dict["EntityUuid"] as! String
        }
        if dict.keys.contains("EventUuid") {
            self.eventUuid = dict["EventUuid"] as! String
        }
        if dict.keys.contains("OrderField") {
            self.orderField = dict["OrderField"] as! String
        }
        if dict.keys.contains("PageNumber") {
            self.pageNumber = dict["PageNumber"] as! Int64
        }
        if dict.keys.contains("PageSize") {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("ParamContent") {
            self.paramContent = dict["ParamContent"] as! String
        }
        if dict.keys.contains("ProcessActionEnd") {
            self.processActionEnd = dict["ProcessActionEnd"] as! Int64
        }
        if dict.keys.contains("ProcessActionStart") {
            self.processActionStart = dict["ProcessActionStart"] as! Int64
        }
        if dict.keys.contains("ProcessRemoveEnd") {
            self.processRemoveEnd = dict["ProcessRemoveEnd"] as! Int64
        }
        if dict.keys.contains("ProcessRemoveStart") {
            self.processRemoveStart = dict["ProcessRemoveStart"] as! Int64
        }
        if dict.keys.contains("ProcessStrategyUuid") {
            self.processStrategyUuid = dict["ProcessStrategyUuid"] as! String
        }
        if dict.keys.contains("SceneCode") {
            self.sceneCode = dict["SceneCode"] as! String
        }
        if dict.keys.contains("Scope") {
            self.scope = dict["Scope"] as! String
        }
        if dict.keys.contains("Source") {
            self.source = dict["Source"] as! String
        }
        if dict.keys.contains("TaskId") {
            self.taskId = dict["TaskId"] as! String
        }
        if dict.keys.contains("TaskStatus") {
            self.taskStatus = dict["TaskStatus"] as! String
        }
        if dict.keys.contains("TriggerSource") {
            self.triggerSource = dict["TriggerSource"] as! String
        }
        if dict.keys.contains("YunCode") {
            self.yunCode = dict["YunCode"] as! String
        }
    }
}

public class DescribeProcessTasksResponseBody : Tea.TeaModel {
    public class Page : Tea.TeaModel {
        public var pageNumber: Int32?

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
            if self.pageNumber != nil {
                map["PageNumber"] = self.pageNumber!
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
            if dict.keys.contains("PageNumber") {
                self.pageNumber = dict["PageNumber"] as! Int32
            }
            if dict.keys.contains("PageSize") {
                self.pageSize = dict["PageSize"] as! Int32
            }
            if dict.keys.contains("TotalCount") {
                self.totalCount = dict["TotalCount"] as! Int32
            }
        }
    }
    public class ProcessTasks : Tea.TeaModel {
        public var creator: String?

        public var entityName: String?

        public var entityType: String?

        public var entityUuid: String?

        public var errCode: String?

        public var errMsg: String?

        public var errTip: String?

        public var eventUuid: String?

        public var gmtCreateMillis: Int64?

        public var gmtModifiedMillis: Int64?

        public var inputParams: String?

        public var processStrategyUuid: String?

        public var processTime: Int64?

        public var removeTime: Int64?

        public var reqUuid: String?

        public var sceneCode: String?

        public var sceneName: String?

        public var scope: String?

        public var source: String?

        public var taskId: String?

        public var taskStatus: Int32?

        public var triggerSource: String?

        public var yunCode: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.creator != nil {
                map["Creator"] = self.creator!
            }
            if self.entityName != nil {
                map["EntityName"] = self.entityName!
            }
            if self.entityType != nil {
                map["EntityType"] = self.entityType!
            }
            if self.entityUuid != nil {
                map["EntityUuid"] = self.entityUuid!
            }
            if self.errCode != nil {
                map["ErrCode"] = self.errCode!
            }
            if self.errMsg != nil {
                map["ErrMsg"] = self.errMsg!
            }
            if self.errTip != nil {
                map["ErrTip"] = self.errTip!
            }
            if self.eventUuid != nil {
                map["EventUuid"] = self.eventUuid!
            }
            if self.gmtCreateMillis != nil {
                map["GmtCreateMillis"] = self.gmtCreateMillis!
            }
            if self.gmtModifiedMillis != nil {
                map["GmtModifiedMillis"] = self.gmtModifiedMillis!
            }
            if self.inputParams != nil {
                map["InputParams"] = self.inputParams!
            }
            if self.processStrategyUuid != nil {
                map["ProcessStrategyUuid"] = self.processStrategyUuid!
            }
            if self.processTime != nil {
                map["ProcessTime"] = self.processTime!
            }
            if self.removeTime != nil {
                map["RemoveTime"] = self.removeTime!
            }
            if self.reqUuid != nil {
                map["ReqUuid"] = self.reqUuid!
            }
            if self.sceneCode != nil {
                map["SceneCode"] = self.sceneCode!
            }
            if self.sceneName != nil {
                map["SceneName"] = self.sceneName!
            }
            if self.scope != nil {
                map["Scope"] = self.scope!
            }
            if self.source != nil {
                map["Source"] = self.source!
            }
            if self.taskId != nil {
                map["TaskId"] = self.taskId!
            }
            if self.taskStatus != nil {
                map["TaskStatus"] = self.taskStatus!
            }
            if self.triggerSource != nil {
                map["TriggerSource"] = self.triggerSource!
            }
            if self.yunCode != nil {
                map["YunCode"] = self.yunCode!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Creator") {
                self.creator = dict["Creator"] as! String
            }
            if dict.keys.contains("EntityName") {
                self.entityName = dict["EntityName"] as! String
            }
            if dict.keys.contains("EntityType") {
                self.entityType = dict["EntityType"] as! String
            }
            if dict.keys.contains("EntityUuid") {
                self.entityUuid = dict["EntityUuid"] as! String
            }
            if dict.keys.contains("ErrCode") {
                self.errCode = dict["ErrCode"] as! String
            }
            if dict.keys.contains("ErrMsg") {
                self.errMsg = dict["ErrMsg"] as! String
            }
            if dict.keys.contains("ErrTip") {
                self.errTip = dict["ErrTip"] as! String
            }
            if dict.keys.contains("EventUuid") {
                self.eventUuid = dict["EventUuid"] as! String
            }
            if dict.keys.contains("GmtCreateMillis") {
                self.gmtCreateMillis = dict["GmtCreateMillis"] as! Int64
            }
            if dict.keys.contains("GmtModifiedMillis") {
                self.gmtModifiedMillis = dict["GmtModifiedMillis"] as! Int64
            }
            if dict.keys.contains("InputParams") {
                self.inputParams = dict["InputParams"] as! String
            }
            if dict.keys.contains("ProcessStrategyUuid") {
                self.processStrategyUuid = dict["ProcessStrategyUuid"] as! String
            }
            if dict.keys.contains("ProcessTime") {
                self.processTime = dict["ProcessTime"] as! Int64
            }
            if dict.keys.contains("RemoveTime") {
                self.removeTime = dict["RemoveTime"] as! Int64
            }
            if dict.keys.contains("ReqUuid") {
                self.reqUuid = dict["ReqUuid"] as! String
            }
            if dict.keys.contains("SceneCode") {
                self.sceneCode = dict["SceneCode"] as! String
            }
            if dict.keys.contains("SceneName") {
                self.sceneName = dict["SceneName"] as! String
            }
            if dict.keys.contains("Scope") {
                self.scope = dict["Scope"] as! String
            }
            if dict.keys.contains("Source") {
                self.source = dict["Source"] as! String
            }
            if dict.keys.contains("TaskId") {
                self.taskId = dict["TaskId"] as! String
            }
            if dict.keys.contains("TaskStatus") {
                self.taskStatus = dict["TaskStatus"] as! Int32
            }
            if dict.keys.contains("TriggerSource") {
                self.triggerSource = dict["TriggerSource"] as! String
            }
            if dict.keys.contains("YunCode") {
                self.yunCode = dict["YunCode"] as! String
            }
        }
    }
    public var page: DescribeProcessTasksResponseBody.Page?

    public var processTasks: [DescribeProcessTasksResponseBody.ProcessTasks]?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.page?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.page != nil {
            map["Page"] = self.page?.toMap()
        }
        if self.processTasks != nil {
            var tmp : [Any] = []
            for k in self.processTasks! {
                tmp.append(k.toMap())
            }
            map["ProcessTasks"] = tmp
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Page") {
            var model = DescribeProcessTasksResponseBody.Page()
            model.fromMap(dict["Page"] as! [String: Any])
            self.page = model
        }
        if dict.keys.contains("ProcessTasks") {
            var tmp : [DescribeProcessTasksResponseBody.ProcessTasks] = []
            for v in dict["ProcessTasks"] as! [Any] {
                var model = DescribeProcessTasksResponseBody.ProcessTasks()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.processTasks = tmp
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class DescribeProcessTasksResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeProcessTasksResponseBody?

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
            var model = DescribeProcessTasksResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeSoarRecordActionOutputListRequest : Tea.TeaModel {
    public var actionUuid: String?

    public var lang: String?

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
        if self.actionUuid != nil {
            map["ActionUuid"] = self.actionUuid!
        }
        if self.lang != nil {
            map["Lang"] = self.lang!
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
        if dict.keys.contains("ActionUuid") {
            self.actionUuid = dict["ActionUuid"] as! String
        }
        if dict.keys.contains("Lang") {
            self.lang = dict["Lang"] as! String
        }
        if dict.keys.contains("PageNumber") {
            self.pageNumber = dict["PageNumber"] as! Int32
        }
        if dict.keys.contains("PageSize") {
            self.pageSize = dict["PageSize"] as! Int32
        }
    }
}

public class DescribeSoarRecordActionOutputListResponseBody : Tea.TeaModel {
    public var actionOutputs: String?

    public var pageNumber: Int32?

    public var pageSize: Int32?

    public var requestId: String?

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
        if self.actionOutputs != nil {
            map["ActionOutputs"] = self.actionOutputs!
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
        if self.totalCount != nil {
            map["TotalCount"] = self.totalCount!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ActionOutputs") {
            self.actionOutputs = dict["ActionOutputs"] as! String
        }
        if dict.keys.contains("PageNumber") {
            self.pageNumber = dict["PageNumber"] as! Int32
        }
        if dict.keys.contains("PageSize") {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("TotalCount") {
            self.totalCount = dict["TotalCount"] as! Int32
        }
    }
}

public class DescribeSoarRecordActionOutputListResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeSoarRecordActionOutputListResponseBody?

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
            var model = DescribeSoarRecordActionOutputListResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeSoarRecordInOutputRequest : Tea.TeaModel {
    public var actionUuid: String?

    public var lang: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.actionUuid != nil {
            map["ActionUuid"] = self.actionUuid!
        }
        if self.lang != nil {
            map["Lang"] = self.lang!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ActionUuid") {
            self.actionUuid = dict["ActionUuid"] as! String
        }
        if dict.keys.contains("Lang") {
            self.lang = dict["Lang"] as! String
        }
    }
}

public class DescribeSoarRecordInOutputResponseBody : Tea.TeaModel {
    public var inOutputInfo: String?

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
        if self.inOutputInfo != nil {
            map["InOutputInfo"] = self.inOutputInfo!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("InOutputInfo") {
            self.inOutputInfo = dict["InOutputInfo"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class DescribeSoarRecordInOutputResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeSoarRecordInOutputResponseBody?

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
            var model = DescribeSoarRecordInOutputResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeSoarRecordsRequest : Tea.TeaModel {
    public var endMillis: Int64?

    public var lang: String?

    public var pageNumber: Int32?

    public var pageSize: Int32?

    public var playbookUuid: String?

    public var requestUuid: String?

    public var startMillis: Int64?

    public var taskStatus: String?

    public var taskflowMd5: String?

    public var triggerUser: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.endMillis != nil {
            map["EndMillis"] = self.endMillis!
        }
        if self.lang != nil {
            map["Lang"] = self.lang!
        }
        if self.pageNumber != nil {
            map["PageNumber"] = self.pageNumber!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.playbookUuid != nil {
            map["PlaybookUuid"] = self.playbookUuid!
        }
        if self.requestUuid != nil {
            map["RequestUuid"] = self.requestUuid!
        }
        if self.startMillis != nil {
            map["StartMillis"] = self.startMillis!
        }
        if self.taskStatus != nil {
            map["TaskStatus"] = self.taskStatus!
        }
        if self.taskflowMd5 != nil {
            map["TaskflowMd5"] = self.taskflowMd5!
        }
        if self.triggerUser != nil {
            map["TriggerUser"] = self.triggerUser!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("EndMillis") {
            self.endMillis = dict["EndMillis"] as! Int64
        }
        if dict.keys.contains("Lang") {
            self.lang = dict["Lang"] as! String
        }
        if dict.keys.contains("PageNumber") {
            self.pageNumber = dict["PageNumber"] as! Int32
        }
        if dict.keys.contains("PageSize") {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("PlaybookUuid") {
            self.playbookUuid = dict["PlaybookUuid"] as! String
        }
        if dict.keys.contains("RequestUuid") {
            self.requestUuid = dict["RequestUuid"] as! String
        }
        if dict.keys.contains("StartMillis") {
            self.startMillis = dict["StartMillis"] as! Int64
        }
        if dict.keys.contains("TaskStatus") {
            self.taskStatus = dict["TaskStatus"] as! String
        }
        if dict.keys.contains("TaskflowMd5") {
            self.taskflowMd5 = dict["TaskflowMd5"] as! String
        }
        if dict.keys.contains("TriggerUser") {
            self.triggerUser = dict["TriggerUser"] as! String
        }
    }
}

public class DescribeSoarRecordsResponseBody : Tea.TeaModel {
    public class Page : Tea.TeaModel {
        public var pageNumber: Int32?

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
            if self.pageNumber != nil {
                map["PageNumber"] = self.pageNumber!
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
            if dict.keys.contains("PageNumber") {
                self.pageNumber = dict["PageNumber"] as! Int32
            }
            if dict.keys.contains("PageSize") {
                self.pageSize = dict["PageSize"] as! Int32
            }
            if dict.keys.contains("TotalCount") {
                self.totalCount = dict["TotalCount"] as! Int32
            }
        }
    }
    public class SoarExecuteRecords : Tea.TeaModel {
        public var endTime: Int64?

        public var errorMsg: String?

        public var rawEventReq: String?

        public var requestUuid: String?

        public var resultMessage: String?

        public var startTime: Int64?

        public var status: String?

        public var taskName: String?

        public var taskType: String?

        public var taskflowMd5: String?

        public var triggerType: String?

        public var triggerUser: String?

        public override init() {
            super.init()
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
            if self.errorMsg != nil {
                map["ErrorMsg"] = self.errorMsg!
            }
            if self.rawEventReq != nil {
                map["RawEventReq"] = self.rawEventReq!
            }
            if self.requestUuid != nil {
                map["RequestUuid"] = self.requestUuid!
            }
            if self.resultMessage != nil {
                map["ResultMessage"] = self.resultMessage!
            }
            if self.startTime != nil {
                map["StartTime"] = self.startTime!
            }
            if self.status != nil {
                map["Status"] = self.status!
            }
            if self.taskName != nil {
                map["TaskName"] = self.taskName!
            }
            if self.taskType != nil {
                map["TaskType"] = self.taskType!
            }
            if self.taskflowMd5 != nil {
                map["TaskflowMd5"] = self.taskflowMd5!
            }
            if self.triggerType != nil {
                map["TriggerType"] = self.triggerType!
            }
            if self.triggerUser != nil {
                map["TriggerUser"] = self.triggerUser!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("EndTime") {
                self.endTime = dict["EndTime"] as! Int64
            }
            if dict.keys.contains("ErrorMsg") {
                self.errorMsg = dict["ErrorMsg"] as! String
            }
            if dict.keys.contains("RawEventReq") {
                self.rawEventReq = dict["RawEventReq"] as! String
            }
            if dict.keys.contains("RequestUuid") {
                self.requestUuid = dict["RequestUuid"] as! String
            }
            if dict.keys.contains("ResultMessage") {
                self.resultMessage = dict["ResultMessage"] as! String
            }
            if dict.keys.contains("StartTime") {
                self.startTime = dict["StartTime"] as! Int64
            }
            if dict.keys.contains("Status") {
                self.status = dict["Status"] as! String
            }
            if dict.keys.contains("TaskName") {
                self.taskName = dict["TaskName"] as! String
            }
            if dict.keys.contains("TaskType") {
                self.taskType = dict["TaskType"] as! String
            }
            if dict.keys.contains("TaskflowMd5") {
                self.taskflowMd5 = dict["TaskflowMd5"] as! String
            }
            if dict.keys.contains("TriggerType") {
                self.triggerType = dict["TriggerType"] as! String
            }
            if dict.keys.contains("TriggerUser") {
                self.triggerUser = dict["TriggerUser"] as! String
            }
        }
    }
    public var page: DescribeSoarRecordsResponseBody.Page?

    public var requestId: String?

    public var soarExecuteRecords: [DescribeSoarRecordsResponseBody.SoarExecuteRecords]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.page?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.page != nil {
            map["Page"] = self.page?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.soarExecuteRecords != nil {
            var tmp : [Any] = []
            for k in self.soarExecuteRecords! {
                tmp.append(k.toMap())
            }
            map["SoarExecuteRecords"] = tmp
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Page") {
            var model = DescribeSoarRecordsResponseBody.Page()
            model.fromMap(dict["Page"] as! [String: Any])
            self.page = model
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("SoarExecuteRecords") {
            var tmp : [DescribeSoarRecordsResponseBody.SoarExecuteRecords] = []
            for v in dict["SoarExecuteRecords"] as! [Any] {
                var model = DescribeSoarRecordsResponseBody.SoarExecuteRecords()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.soarExecuteRecords = tmp
        }
    }
}

public class DescribeSoarRecordsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeSoarRecordsResponseBody?

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
            var model = DescribeSoarRecordsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeSoarTaskAndActionsRequest : Tea.TeaModel {
    public var lang: String?

    public var requestUuid: String?

    public override init() {
        super.init()
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
        if self.requestUuid != nil {
            map["RequestUuid"] = self.requestUuid!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Lang") {
            self.lang = dict["Lang"] as! String
        }
        if dict.keys.contains("RequestUuid") {
            self.requestUuid = dict["RequestUuid"] as! String
        }
    }
}

public class DescribeSoarTaskAndActionsResponseBody : Tea.TeaModel {
    public class Details : Tea.TeaModel {
        public class Actions : Tea.TeaModel {
            public var action: String?

            public var actionUuid: String?

            public var assetName: String?

            public var component: String?

            public var endTime: Int64?

            public var nodeName: String?

            public var requestUuid: String?

            public var startTime: Int64?

            public var status: String?

            public var taskName: String?

            public var taskStatus: String?

            public var triggerUser: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.action != nil {
                    map["Action"] = self.action!
                }
                if self.actionUuid != nil {
                    map["ActionUuid"] = self.actionUuid!
                }
                if self.assetName != nil {
                    map["AssetName"] = self.assetName!
                }
                if self.component != nil {
                    map["Component"] = self.component!
                }
                if self.endTime != nil {
                    map["EndTime"] = self.endTime!
                }
                if self.nodeName != nil {
                    map["NodeName"] = self.nodeName!
                }
                if self.requestUuid != nil {
                    map["RequestUuid"] = self.requestUuid!
                }
                if self.startTime != nil {
                    map["StartTime"] = self.startTime!
                }
                if self.status != nil {
                    map["Status"] = self.status!
                }
                if self.taskName != nil {
                    map["TaskName"] = self.taskName!
                }
                if self.taskStatus != nil {
                    map["TaskStatus"] = self.taskStatus!
                }
                if self.triggerUser != nil {
                    map["TriggerUser"] = self.triggerUser!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("Action") {
                    self.action = dict["Action"] as! String
                }
                if dict.keys.contains("ActionUuid") {
                    self.actionUuid = dict["ActionUuid"] as! String
                }
                if dict.keys.contains("AssetName") {
                    self.assetName = dict["AssetName"] as! String
                }
                if dict.keys.contains("Component") {
                    self.component = dict["Component"] as! String
                }
                if dict.keys.contains("EndTime") {
                    self.endTime = dict["EndTime"] as! Int64
                }
                if dict.keys.contains("NodeName") {
                    self.nodeName = dict["NodeName"] as! String
                }
                if dict.keys.contains("RequestUuid") {
                    self.requestUuid = dict["RequestUuid"] as! String
                }
                if dict.keys.contains("StartTime") {
                    self.startTime = dict["StartTime"] as! Int64
                }
                if dict.keys.contains("Status") {
                    self.status = dict["Status"] as! String
                }
                if dict.keys.contains("TaskName") {
                    self.taskName = dict["TaskName"] as! String
                }
                if dict.keys.contains("TaskStatus") {
                    self.taskStatus = dict["TaskStatus"] as! String
                }
                if dict.keys.contains("TriggerUser") {
                    self.triggerUser = dict["TriggerUser"] as! String
                }
            }
        }
        public var actions: [DescribeSoarTaskAndActionsResponseBody.Details.Actions]?

        public var endTime: Int64?

        public var errorMsg: String?

        public var rawEventReq: String?

        public var requestUuid: String?

        public var resultLevel: String?

        public var resultMessage: String?

        public var startTime: Int64?

        public var status: String?

        public var taskFlowMd5: String?

        public var taskName: String?

        public var taskTenantId: String?

        public var triggerType: String?

        public var triggerUser: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.actions != nil {
                var tmp : [Any] = []
                for k in self.actions! {
                    tmp.append(k.toMap())
                }
                map["Actions"] = tmp
            }
            if self.endTime != nil {
                map["EndTime"] = self.endTime!
            }
            if self.errorMsg != nil {
                map["ErrorMsg"] = self.errorMsg!
            }
            if self.rawEventReq != nil {
                map["RawEventReq"] = self.rawEventReq!
            }
            if self.requestUuid != nil {
                map["RequestUuid"] = self.requestUuid!
            }
            if self.resultLevel != nil {
                map["ResultLevel"] = self.resultLevel!
            }
            if self.resultMessage != nil {
                map["ResultMessage"] = self.resultMessage!
            }
            if self.startTime != nil {
                map["StartTime"] = self.startTime!
            }
            if self.status != nil {
                map["Status"] = self.status!
            }
            if self.taskFlowMd5 != nil {
                map["TaskFlowMd5"] = self.taskFlowMd5!
            }
            if self.taskName != nil {
                map["TaskName"] = self.taskName!
            }
            if self.taskTenantId != nil {
                map["TaskTenantId"] = self.taskTenantId!
            }
            if self.triggerType != nil {
                map["TriggerType"] = self.triggerType!
            }
            if self.triggerUser != nil {
                map["TriggerUser"] = self.triggerUser!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Actions") {
                var tmp : [DescribeSoarTaskAndActionsResponseBody.Details.Actions] = []
                for v in dict["Actions"] as! [Any] {
                    var model = DescribeSoarTaskAndActionsResponseBody.Details.Actions()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.actions = tmp
            }
            if dict.keys.contains("EndTime") {
                self.endTime = dict["EndTime"] as! Int64
            }
            if dict.keys.contains("ErrorMsg") {
                self.errorMsg = dict["ErrorMsg"] as! String
            }
            if dict.keys.contains("RawEventReq") {
                self.rawEventReq = dict["RawEventReq"] as! String
            }
            if dict.keys.contains("RequestUuid") {
                self.requestUuid = dict["RequestUuid"] as! String
            }
            if dict.keys.contains("ResultLevel") {
                self.resultLevel = dict["ResultLevel"] as! String
            }
            if dict.keys.contains("ResultMessage") {
                self.resultMessage = dict["ResultMessage"] as! String
            }
            if dict.keys.contains("StartTime") {
                self.startTime = dict["StartTime"] as! Int64
            }
            if dict.keys.contains("Status") {
                self.status = dict["Status"] as! String
            }
            if dict.keys.contains("TaskFlowMd5") {
                self.taskFlowMd5 = dict["TaskFlowMd5"] as! String
            }
            if dict.keys.contains("TaskName") {
                self.taskName = dict["TaskName"] as! String
            }
            if dict.keys.contains("TaskTenantId") {
                self.taskTenantId = dict["TaskTenantId"] as! String
            }
            if dict.keys.contains("TriggerType") {
                self.triggerType = dict["TriggerType"] as! String
            }
            if dict.keys.contains("TriggerUser") {
                self.triggerUser = dict["TriggerUser"] as! String
            }
        }
    }
    public var details: DescribeSoarTaskAndActionsResponseBody.Details?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.details?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.details != nil {
            map["Details"] = self.details?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Details") {
            var model = DescribeSoarTaskAndActionsResponseBody.Details()
            model.fromMap(dict["Details"] as! [String: Any])
            self.details = model
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class DescribeSoarTaskAndActionsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeSoarTaskAndActionsResponseBody?

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
            var model = DescribeSoarTaskAndActionsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeSophonCommandsRequest : Tea.TeaModel {
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
        if self.name != nil {
            map["Name"] = self.name!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Name") {
            self.name = dict["Name"] as! String
        }
    }
}

public class DescribeSophonCommandsResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class ParamConfig : Tea.TeaModel {
            public var checkField: String?

            public var field: String?

            public var necessary: Bool?

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
                if self.checkField != nil {
                    map["CheckField"] = self.checkField!
                }
                if self.field != nil {
                    map["Field"] = self.field!
                }
                if self.necessary != nil {
                    map["Necessary"] = self.necessary!
                }
                if self.value != nil {
                    map["Value"] = self.value!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("CheckField") {
                    self.checkField = dict["CheckField"] as! String
                }
                if dict.keys.contains("Field") {
                    self.field = dict["Field"] as! String
                }
                if dict.keys.contains("Necessary") {
                    self.necessary = dict["Necessary"] as! Bool
                }
                if dict.keys.contains("Value") {
                    self.value = dict["Value"] as! String
                }
            }
        }
        public var description_: String?

        public var displayName: String?

        public var name: String?

        public var paramConfig: [DescribeSophonCommandsResponseBody.Data.ParamConfig]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.description_ != nil {
                map["Description"] = self.description_!
            }
            if self.displayName != nil {
                map["DisplayName"] = self.displayName!
            }
            if self.name != nil {
                map["Name"] = self.name!
            }
            if self.paramConfig != nil {
                var tmp : [Any] = []
                for k in self.paramConfig! {
                    tmp.append(k.toMap())
                }
                map["ParamConfig"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Description") {
                self.description_ = dict["Description"] as! String
            }
            if dict.keys.contains("DisplayName") {
                self.displayName = dict["DisplayName"] as! String
            }
            if dict.keys.contains("Name") {
                self.name = dict["Name"] as! String
            }
            if dict.keys.contains("ParamConfig") {
                var tmp : [DescribeSophonCommandsResponseBody.Data.ParamConfig] = []
                for v in dict["ParamConfig"] as! [Any] {
                    var model = DescribeSophonCommandsResponseBody.Data.ParamConfig()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.paramConfig = tmp
            }
        }
    }
    public var data: [DescribeSophonCommandsResponseBody.Data]?

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
            var tmp : [DescribeSophonCommandsResponseBody.Data] = []
            for v in dict["Data"] as! [Any] {
                var model = DescribeSophonCommandsResponseBody.Data()
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

public class DescribeSophonCommandsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeSophonCommandsResponseBody?

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
            var model = DescribeSophonCommandsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeVendorApiListRequest : Tea.TeaModel {
    public var apiName: String?

    public var keyWord: String?

    public var pageNumber: Int32?

    public var pageSize: Int64?

    public var productCode: String?

    public var vendorCode: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.apiName != nil {
            map["ApiName"] = self.apiName!
        }
        if self.keyWord != nil {
            map["KeyWord"] = self.keyWord!
        }
        if self.pageNumber != nil {
            map["PageNumber"] = self.pageNumber!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.productCode != nil {
            map["ProductCode"] = self.productCode!
        }
        if self.vendorCode != nil {
            map["VendorCode"] = self.vendorCode!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ApiName") {
            self.apiName = dict["ApiName"] as! String
        }
        if dict.keys.contains("KeyWord") {
            self.keyWord = dict["KeyWord"] as! String
        }
        if dict.keys.contains("PageNumber") {
            self.pageNumber = dict["PageNumber"] as! Int32
        }
        if dict.keys.contains("PageSize") {
            self.pageSize = dict["PageSize"] as! Int64
        }
        if dict.keys.contains("ProductCode") {
            self.productCode = dict["ProductCode"] as! String
        }
        if dict.keys.contains("VendorCode") {
            self.vendorCode = dict["VendorCode"] as! String
        }
    }
}

public class DescribeVendorApiListResponseBody : Tea.TeaModel {
    public class ApiList : Tea.TeaModel {
        public var advanceConfig: String?

        public var apiName: String?

        public var apiVersion: String?

        public var method: String?

        public var needAdvanceConfig: Bool?

        public var needPageInfo: Bool?

        public var pageInfo: String?

        public var parameter: String?

        public var productCode: String?

        public var productDomain: String?

        public var productName: String?

        public var protocol_: String?

        public var vendorCode: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.advanceConfig != nil {
                map["AdvanceConfig"] = self.advanceConfig!
            }
            if self.apiName != nil {
                map["ApiName"] = self.apiName!
            }
            if self.apiVersion != nil {
                map["ApiVersion"] = self.apiVersion!
            }
            if self.method != nil {
                map["Method"] = self.method!
            }
            if self.needAdvanceConfig != nil {
                map["NeedAdvanceConfig"] = self.needAdvanceConfig!
            }
            if self.needPageInfo != nil {
                map["NeedPageInfo"] = self.needPageInfo!
            }
            if self.pageInfo != nil {
                map["PageInfo"] = self.pageInfo!
            }
            if self.parameter != nil {
                map["Parameter"] = self.parameter!
            }
            if self.productCode != nil {
                map["ProductCode"] = self.productCode!
            }
            if self.productDomain != nil {
                map["ProductDomain"] = self.productDomain!
            }
            if self.productName != nil {
                map["ProductName"] = self.productName!
            }
            if self.protocol_ != nil {
                map["Protocol"] = self.protocol_!
            }
            if self.vendorCode != nil {
                map["VendorCode"] = self.vendorCode!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("AdvanceConfig") {
                self.advanceConfig = dict["AdvanceConfig"] as! String
            }
            if dict.keys.contains("ApiName") {
                self.apiName = dict["ApiName"] as! String
            }
            if dict.keys.contains("ApiVersion") {
                self.apiVersion = dict["ApiVersion"] as! String
            }
            if dict.keys.contains("Method") {
                self.method = dict["Method"] as! String
            }
            if dict.keys.contains("NeedAdvanceConfig") {
                self.needAdvanceConfig = dict["NeedAdvanceConfig"] as! Bool
            }
            if dict.keys.contains("NeedPageInfo") {
                self.needPageInfo = dict["NeedPageInfo"] as! Bool
            }
            if dict.keys.contains("PageInfo") {
                self.pageInfo = dict["PageInfo"] as! String
            }
            if dict.keys.contains("Parameter") {
                self.parameter = dict["Parameter"] as! String
            }
            if dict.keys.contains("ProductCode") {
                self.productCode = dict["ProductCode"] as! String
            }
            if dict.keys.contains("ProductDomain") {
                self.productDomain = dict["ProductDomain"] as! String
            }
            if dict.keys.contains("ProductName") {
                self.productName = dict["ProductName"] as! String
            }
            if dict.keys.contains("Protocol") {
                self.protocol_ = dict["Protocol"] as! String
            }
            if dict.keys.contains("VendorCode") {
                self.vendorCode = dict["VendorCode"] as! String
            }
        }
    }
    public class Page : Tea.TeaModel {
        public var pageNumber: Int64?

        public var pageSize: Int32?

        public var totalCount: Int64?

        public override init() {
            super.init()
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
            if self.totalCount != nil {
                map["TotalCount"] = self.totalCount!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("PageNumber") {
                self.pageNumber = dict["PageNumber"] as! Int64
            }
            if dict.keys.contains("PageSize") {
                self.pageSize = dict["PageSize"] as! Int32
            }
            if dict.keys.contains("TotalCount") {
                self.totalCount = dict["TotalCount"] as! Int64
            }
        }
    }
    public var apiList: [DescribeVendorApiListResponseBody.ApiList]?

    public var page: DescribeVendorApiListResponseBody.Page?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.page?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.apiList != nil {
            var tmp : [Any] = []
            for k in self.apiList! {
                tmp.append(k.toMap())
            }
            map["ApiList"] = tmp
        }
        if self.page != nil {
            map["Page"] = self.page?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ApiList") {
            var tmp : [DescribeVendorApiListResponseBody.ApiList] = []
            for v in dict["ApiList"] as! [Any] {
                var model = DescribeVendorApiListResponseBody.ApiList()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.apiList = tmp
        }
        if dict.keys.contains("Page") {
            var model = DescribeVendorApiListResponseBody.Page()
            model.fromMap(dict["Page"] as! [String: Any])
            self.page = model
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class DescribeVendorApiListResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeVendorApiListResponseBody?

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
            var model = DescribeVendorApiListResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescriberPython3ScriptLogsRequest : Tea.TeaModel {
    public var lang: String?

    public var requestUuid: String?

    public override init() {
        super.init()
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
        if self.requestUuid != nil {
            map["RequestUuid"] = self.requestUuid!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Lang") {
            self.lang = dict["Lang"] as! String
        }
        if dict.keys.contains("RequestUuid") {
            self.requestUuid = dict["RequestUuid"] as! String
        }
    }
}

public class DescriberPython3ScriptLogsResponseBody : Tea.TeaModel {
    public var requestId: String?

    public var runResult: String?

    public override init() {
        super.init()
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
        if self.runResult != nil {
            map["RunResult"] = self.runResult!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("RunResult") {
            self.runResult = dict["RunResult"] as! String
        }
    }
}

public class DescriberPython3ScriptLogsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescriberPython3ScriptLogsResponseBody?

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
            var model = DescriberPython3ScriptLogsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ModifyComponentAssetRequest : Tea.TeaModel {
    public var assetConfig: String?

    public var lang: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.assetConfig != nil {
            map["AssetConfig"] = self.assetConfig!
        }
        if self.lang != nil {
            map["Lang"] = self.lang!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AssetConfig") {
            self.assetConfig = dict["AssetConfig"] as! String
        }
        if dict.keys.contains("Lang") {
            self.lang = dict["Lang"] as! String
        }
    }
}

public class ModifyComponentAssetResponseBody : Tea.TeaModel {
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

public class ModifyComponentAssetResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ModifyComponentAssetResponseBody?

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
            var model = ModifyComponentAssetResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ModifyPlaybookRequest : Tea.TeaModel {
    public var description_: String?

    public var displayName: String?

    public var lang: String?

    public var playbookUuid: String?

    public var taskflow: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.description_ != nil {
            map["Description"] = self.description_!
        }
        if self.displayName != nil {
            map["DisplayName"] = self.displayName!
        }
        if self.lang != nil {
            map["Lang"] = self.lang!
        }
        if self.playbookUuid != nil {
            map["PlaybookUuid"] = self.playbookUuid!
        }
        if self.taskflow != nil {
            map["Taskflow"] = self.taskflow!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Description") {
            self.description_ = dict["Description"] as! String
        }
        if dict.keys.contains("DisplayName") {
            self.displayName = dict["DisplayName"] as! String
        }
        if dict.keys.contains("Lang") {
            self.lang = dict["Lang"] as! String
        }
        if dict.keys.contains("PlaybookUuid") {
            self.playbookUuid = dict["PlaybookUuid"] as! String
        }
        if dict.keys.contains("Taskflow") {
            self.taskflow = dict["Taskflow"] as! String
        }
    }
}

public class ModifyPlaybookResponseBody : Tea.TeaModel {
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

public class ModifyPlaybookResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ModifyPlaybookResponseBody?

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
            var model = ModifyPlaybookResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ModifyPlaybookInputOutputRequest : Tea.TeaModel {
    public var exeConfig: String?

    public var inputParams: String?

    public var lang: String?

    public var outputParams: String?

    public var paramType: String?

    public var playbookUuid: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.exeConfig != nil {
            map["ExeConfig"] = self.exeConfig!
        }
        if self.inputParams != nil {
            map["InputParams"] = self.inputParams!
        }
        if self.lang != nil {
            map["Lang"] = self.lang!
        }
        if self.outputParams != nil {
            map["OutputParams"] = self.outputParams!
        }
        if self.paramType != nil {
            map["ParamType"] = self.paramType!
        }
        if self.playbookUuid != nil {
            map["PlaybookUuid"] = self.playbookUuid!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ExeConfig") {
            self.exeConfig = dict["ExeConfig"] as! String
        }
        if dict.keys.contains("InputParams") {
            self.inputParams = dict["InputParams"] as! String
        }
        if dict.keys.contains("Lang") {
            self.lang = dict["Lang"] as! String
        }
        if dict.keys.contains("OutputParams") {
            self.outputParams = dict["OutputParams"] as! String
        }
        if dict.keys.contains("ParamType") {
            self.paramType = dict["ParamType"] as! String
        }
        if dict.keys.contains("PlaybookUuid") {
            self.playbookUuid = dict["PlaybookUuid"] as! String
        }
    }
}

public class ModifyPlaybookInputOutputResponseBody : Tea.TeaModel {
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

public class ModifyPlaybookInputOutputResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ModifyPlaybookInputOutputResponseBody?

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
            var model = ModifyPlaybookInputOutputResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ModifyPlaybookInstanceStatusRequest : Tea.TeaModel {
    public var active: Int32?

    public var lang: String?

    public var playbookUuid: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.active != nil {
            map["Active"] = self.active!
        }
        if self.lang != nil {
            map["Lang"] = self.lang!
        }
        if self.playbookUuid != nil {
            map["PlaybookUuid"] = self.playbookUuid!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Active") {
            self.active = dict["Active"] as! Int32
        }
        if dict.keys.contains("Lang") {
            self.lang = dict["Lang"] as! String
        }
        if dict.keys.contains("PlaybookUuid") {
            self.playbookUuid = dict["PlaybookUuid"] as! String
        }
    }
}

public class ModifyPlaybookInstanceStatusResponseBody : Tea.TeaModel {
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

public class ModifyPlaybookInstanceStatusResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ModifyPlaybookInstanceStatusResponseBody?

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
            var model = ModifyPlaybookInstanceStatusResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class PublishPlaybookRequest : Tea.TeaModel {
    public var description_: String?

    public var playbookUuid: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.description_ != nil {
            map["Description"] = self.description_!
        }
        if self.playbookUuid != nil {
            map["PlaybookUuid"] = self.playbookUuid!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Description") {
            self.description_ = dict["Description"] as! String
        }
        if dict.keys.contains("PlaybookUuid") {
            self.playbookUuid = dict["PlaybookUuid"] as! String
        }
    }
}

public class PublishPlaybookResponseBody : Tea.TeaModel {
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

public class PublishPlaybookResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: PublishPlaybookResponseBody?

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
            var model = PublishPlaybookResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class QueryTreeDataRequest : Tea.TeaModel {
    public var lang: String?

    public override init() {
        super.init()
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
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Lang") {
            self.lang = dict["Lang"] as! String
        }
    }
}

public class QueryTreeDataResponseBody : Tea.TeaModel {
    public var playbooks: String?

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
        if self.playbooks != nil {
            map["Playbooks"] = self.playbooks!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Playbooks") {
            self.playbooks = dict["Playbooks"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class QueryTreeDataResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: QueryTreeDataResponseBody?

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
            var model = QueryTreeDataResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class RenamePlaybookNodeRequest : Tea.TeaModel {
    public var lang: String?

    public var newNodeName: String?

    public var oldNodeName: String?

    public var playbookUuid: String?

    public override init() {
        super.init()
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
        if self.newNodeName != nil {
            map["NewNodeName"] = self.newNodeName!
        }
        if self.oldNodeName != nil {
            map["OldNodeName"] = self.oldNodeName!
        }
        if self.playbookUuid != nil {
            map["PlaybookUuid"] = self.playbookUuid!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Lang") {
            self.lang = dict["Lang"] as! String
        }
        if dict.keys.contains("NewNodeName") {
            self.newNodeName = dict["NewNodeName"] as! String
        }
        if dict.keys.contains("OldNodeName") {
            self.oldNodeName = dict["OldNodeName"] as! String
        }
        if dict.keys.contains("PlaybookUuid") {
            self.playbookUuid = dict["PlaybookUuid"] as! String
        }
    }
}

public class RenamePlaybookNodeResponseBody : Tea.TeaModel {
    public var renameResult: String?

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
        if self.renameResult != nil {
            map["RenameResult"] = self.renameResult!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RenameResult") {
            self.renameResult = dict["RenameResult"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class RenamePlaybookNodeResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: RenamePlaybookNodeResponseBody?

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
            var model = RenamePlaybookNodeResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class RevertPlaybookReleaseRequest : Tea.TeaModel {
    public var isPublish: Bool?

    public var playReleaseId: Int32?

    public var playbookUuid: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.isPublish != nil {
            map["IsPublish"] = self.isPublish!
        }
        if self.playReleaseId != nil {
            map["PlayReleaseId"] = self.playReleaseId!
        }
        if self.playbookUuid != nil {
            map["PlaybookUuid"] = self.playbookUuid!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("IsPublish") {
            self.isPublish = dict["IsPublish"] as! Bool
        }
        if dict.keys.contains("PlayReleaseId") {
            self.playReleaseId = dict["PlayReleaseId"] as! Int32
        }
        if dict.keys.contains("PlaybookUuid") {
            self.playbookUuid = dict["PlaybookUuid"] as! String
        }
    }
}

public class RevertPlaybookReleaseResponseBody : Tea.TeaModel {
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

public class RevertPlaybookReleaseResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: RevertPlaybookReleaseResponseBody?

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
            var model = RevertPlaybookReleaseResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class RunNotifyComponentWithEmailRequest : Tea.TeaModel {
    public var actionName: String?

    public var assetId: Int32?

    public var componentName: String?

    public var content: String?

    public var lang: String?

    public var nodeName: String?

    public var playbookUuid: String?

    public var receivers: [String]?

    public var roleFor: Int64?

    public var roleType: String?

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
        if self.actionName != nil {
            map["ActionName"] = self.actionName!
        }
        if self.assetId != nil {
            map["AssetId"] = self.assetId!
        }
        if self.componentName != nil {
            map["ComponentName"] = self.componentName!
        }
        if self.content != nil {
            map["Content"] = self.content!
        }
        if self.lang != nil {
            map["Lang"] = self.lang!
        }
        if self.nodeName != nil {
            map["NodeName"] = self.nodeName!
        }
        if self.playbookUuid != nil {
            map["PlaybookUuid"] = self.playbookUuid!
        }
        if self.receivers != nil {
            map["Receivers"] = self.receivers!
        }
        if self.roleFor != nil {
            map["RoleFor"] = self.roleFor!
        }
        if self.roleType != nil {
            map["RoleType"] = self.roleType!
        }
        if self.subject != nil {
            map["Subject"] = self.subject!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ActionName") {
            self.actionName = dict["ActionName"] as! String
        }
        if dict.keys.contains("AssetId") {
            self.assetId = dict["AssetId"] as! Int32
        }
        if dict.keys.contains("ComponentName") {
            self.componentName = dict["ComponentName"] as! String
        }
        if dict.keys.contains("Content") {
            self.content = dict["Content"] as! String
        }
        if dict.keys.contains("Lang") {
            self.lang = dict["Lang"] as! String
        }
        if dict.keys.contains("NodeName") {
            self.nodeName = dict["NodeName"] as! String
        }
        if dict.keys.contains("PlaybookUuid") {
            self.playbookUuid = dict["PlaybookUuid"] as! String
        }
        if dict.keys.contains("Receivers") {
            self.receivers = dict["Receivers"] as! [String]
        }
        if dict.keys.contains("RoleFor") {
            self.roleFor = dict["RoleFor"] as! Int64
        }
        if dict.keys.contains("RoleType") {
            self.roleType = dict["RoleType"] as! String
        }
        if dict.keys.contains("Subject") {
            self.subject = dict["Subject"] as! String
        }
    }
}

public class RunNotifyComponentWithEmailResponseBody : Tea.TeaModel {
    public class Page : Tea.TeaModel {
        public var pageNumber: Int32?

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
            if self.pageNumber != nil {
                map["PageNumber"] = self.pageNumber!
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
            if dict.keys.contains("PageNumber") {
                self.pageNumber = dict["PageNumber"] as! Int32
            }
            if dict.keys.contains("PageSize") {
                self.pageSize = dict["PageSize"] as! Int32
            }
            if dict.keys.contains("TotalCount") {
                self.totalCount = dict["TotalCount"] as! Int32
            }
        }
    }
    public var data: String?

    public var page: RunNotifyComponentWithEmailResponseBody.Page?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.page?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.data != nil {
            map["Data"] = self.data!
        }
        if self.page != nil {
            map["Page"] = self.page?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Data") {
            self.data = dict["Data"] as! String
        }
        if dict.keys.contains("Page") {
            var model = RunNotifyComponentWithEmailResponseBody.Page()
            model.fromMap(dict["Page"] as! [String: Any])
            self.page = model
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class RunNotifyComponentWithEmailResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: RunNotifyComponentWithEmailResponseBody?

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
            var model = RunNotifyComponentWithEmailResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class RunNotifyComponentWithMessageCenterRequest : Tea.TeaModel {
    public var actionName: String?

    public var aliuid: String?

    public var assetId: Int32?

    public var channelTypeList: [String]?

    public var componentName: String?

    public var eventId: String?

    public var lang: String?

    public var nodeName: String?

    public var params: String?

    public var playbookUuid: String?

    public var roleFor: Int64?

    public var roleType: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.actionName != nil {
            map["ActionName"] = self.actionName!
        }
        if self.aliuid != nil {
            map["Aliuid"] = self.aliuid!
        }
        if self.assetId != nil {
            map["AssetId"] = self.assetId!
        }
        if self.channelTypeList != nil {
            map["ChannelTypeList"] = self.channelTypeList!
        }
        if self.componentName != nil {
            map["ComponentName"] = self.componentName!
        }
        if self.eventId != nil {
            map["EventId"] = self.eventId!
        }
        if self.lang != nil {
            map["Lang"] = self.lang!
        }
        if self.nodeName != nil {
            map["NodeName"] = self.nodeName!
        }
        if self.params != nil {
            map["Params"] = self.params!
        }
        if self.playbookUuid != nil {
            map["PlaybookUuid"] = self.playbookUuid!
        }
        if self.roleFor != nil {
            map["RoleFor"] = self.roleFor!
        }
        if self.roleType != nil {
            map["RoleType"] = self.roleType!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ActionName") {
            self.actionName = dict["ActionName"] as! String
        }
        if dict.keys.contains("Aliuid") {
            self.aliuid = dict["Aliuid"] as! String
        }
        if dict.keys.contains("AssetId") {
            self.assetId = dict["AssetId"] as! Int32
        }
        if dict.keys.contains("ChannelTypeList") {
            self.channelTypeList = dict["ChannelTypeList"] as! [String]
        }
        if dict.keys.contains("ComponentName") {
            self.componentName = dict["ComponentName"] as! String
        }
        if dict.keys.contains("EventId") {
            self.eventId = dict["EventId"] as! String
        }
        if dict.keys.contains("Lang") {
            self.lang = dict["Lang"] as! String
        }
        if dict.keys.contains("NodeName") {
            self.nodeName = dict["NodeName"] as! String
        }
        if dict.keys.contains("Params") {
            self.params = dict["Params"] as! String
        }
        if dict.keys.contains("PlaybookUuid") {
            self.playbookUuid = dict["PlaybookUuid"] as! String
        }
        if dict.keys.contains("RoleFor") {
            self.roleFor = dict["RoleFor"] as! Int64
        }
        if dict.keys.contains("RoleType") {
            self.roleType = dict["RoleType"] as! String
        }
    }
}

public class RunNotifyComponentWithMessageCenterResponseBody : Tea.TeaModel {
    public class Page : Tea.TeaModel {
        public var pageNumber: Int32?

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
            if self.pageNumber != nil {
                map["PageNumber"] = self.pageNumber!
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
            if dict.keys.contains("PageNumber") {
                self.pageNumber = dict["PageNumber"] as! Int32
            }
            if dict.keys.contains("PageSize") {
                self.pageSize = dict["PageSize"] as! Int32
            }
            if dict.keys.contains("TotalCount") {
                self.totalCount = dict["TotalCount"] as! Int32
            }
        }
    }
    public var data: String?

    public var page: RunNotifyComponentWithMessageCenterResponseBody.Page?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.page?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.data != nil {
            map["Data"] = self.data!
        }
        if self.page != nil {
            map["Page"] = self.page?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Data") {
            self.data = dict["Data"] as! String
        }
        if dict.keys.contains("Page") {
            var model = RunNotifyComponentWithMessageCenterResponseBody.Page()
            model.fromMap(dict["Page"] as! [String: Any])
            self.page = model
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class RunNotifyComponentWithMessageCenterResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: RunNotifyComponentWithMessageCenterResponseBody?

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
            var model = RunNotifyComponentWithMessageCenterResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class RunNotifyComponentWithWebhookRequest : Tea.TeaModel {
    public var actionName: String?

    public var assetId: Int32?

    public var componentName: String?

    public var content: String?

    public var lang: String?

    public var msgType: String?

    public var nodeName: String?

    public var playbookUuid: String?

    public var roleFor: Int64?

    public var roleType: String?

    public var secret: String?

    public var webhook: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.actionName != nil {
            map["ActionName"] = self.actionName!
        }
        if self.assetId != nil {
            map["AssetId"] = self.assetId!
        }
        if self.componentName != nil {
            map["ComponentName"] = self.componentName!
        }
        if self.content != nil {
            map["Content"] = self.content!
        }
        if self.lang != nil {
            map["Lang"] = self.lang!
        }
        if self.msgType != nil {
            map["MsgType"] = self.msgType!
        }
        if self.nodeName != nil {
            map["NodeName"] = self.nodeName!
        }
        if self.playbookUuid != nil {
            map["PlaybookUuid"] = self.playbookUuid!
        }
        if self.roleFor != nil {
            map["RoleFor"] = self.roleFor!
        }
        if self.roleType != nil {
            map["RoleType"] = self.roleType!
        }
        if self.secret != nil {
            map["Secret"] = self.secret!
        }
        if self.webhook != nil {
            map["Webhook"] = self.webhook!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ActionName") {
            self.actionName = dict["ActionName"] as! String
        }
        if dict.keys.contains("AssetId") {
            self.assetId = dict["AssetId"] as! Int32
        }
        if dict.keys.contains("ComponentName") {
            self.componentName = dict["ComponentName"] as! String
        }
        if dict.keys.contains("Content") {
            self.content = dict["Content"] as! String
        }
        if dict.keys.contains("Lang") {
            self.lang = dict["Lang"] as! String
        }
        if dict.keys.contains("MsgType") {
            self.msgType = dict["MsgType"] as! String
        }
        if dict.keys.contains("NodeName") {
            self.nodeName = dict["NodeName"] as! String
        }
        if dict.keys.contains("PlaybookUuid") {
            self.playbookUuid = dict["PlaybookUuid"] as! String
        }
        if dict.keys.contains("RoleFor") {
            self.roleFor = dict["RoleFor"] as! Int64
        }
        if dict.keys.contains("RoleType") {
            self.roleType = dict["RoleType"] as! String
        }
        if dict.keys.contains("Secret") {
            self.secret = dict["Secret"] as! String
        }
        if dict.keys.contains("Webhook") {
            self.webhook = dict["Webhook"] as! String
        }
    }
}

public class RunNotifyComponentWithWebhookResponseBody : Tea.TeaModel {
    public class Page : Tea.TeaModel {
        public var pageNumber: Int32?

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
            if self.pageNumber != nil {
                map["PageNumber"] = self.pageNumber!
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
            if dict.keys.contains("PageNumber") {
                self.pageNumber = dict["PageNumber"] as! Int32
            }
            if dict.keys.contains("PageSize") {
                self.pageSize = dict["PageSize"] as! Int32
            }
            if dict.keys.contains("TotalCount") {
                self.totalCount = dict["TotalCount"] as! Int32
            }
        }
    }
    public var data: String?

    public var page: RunNotifyComponentWithWebhookResponseBody.Page?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.page?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.data != nil {
            map["Data"] = self.data!
        }
        if self.page != nil {
            map["Page"] = self.page?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Data") {
            self.data = dict["Data"] as! String
        }
        if dict.keys.contains("Page") {
            var model = RunNotifyComponentWithWebhookResponseBody.Page()
            model.fromMap(dict["Page"] as! [String: Any])
            self.page = model
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class RunNotifyComponentWithWebhookResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: RunNotifyComponentWithWebhookResponseBody?

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
            var model = RunNotifyComponentWithWebhookResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class RunPython3ScriptRequest : Tea.TeaModel {
    public var nodeName: String?

    public var params: String?

    public var playbookUuid: String?

    public var pythonScript: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.nodeName != nil {
            map["NodeName"] = self.nodeName!
        }
        if self.params != nil {
            map["Params"] = self.params!
        }
        if self.playbookUuid != nil {
            map["PlaybookUuid"] = self.playbookUuid!
        }
        if self.pythonScript != nil {
            map["PythonScript"] = self.pythonScript!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("NodeName") {
            self.nodeName = dict["NodeName"] as! String
        }
        if dict.keys.contains("Params") {
            self.params = dict["Params"] as! String
        }
        if dict.keys.contains("PlaybookUuid") {
            self.playbookUuid = dict["PlaybookUuid"] as! String
        }
        if dict.keys.contains("PythonScript") {
            self.pythonScript = dict["PythonScript"] as! String
        }
    }
}

public class RunPython3ScriptResponseBody : Tea.TeaModel {
    public var requestId: String?

    public var runResult: String?

    public override init() {
        super.init()
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
        if self.runResult != nil {
            map["RunResult"] = self.runResult!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("RunResult") {
            self.runResult = dict["RunResult"] as! String
        }
    }
}

public class RunPython3ScriptResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: RunPython3ScriptResponseBody?

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
            var model = RunPython3ScriptResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class TriggerPlaybookRequest : Tea.TeaModel {
    public var inputParam: String?

    public var playbookUuid: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.inputParam != nil {
            map["InputParam"] = self.inputParam!
        }
        if self.playbookUuid != nil {
            map["PlaybookUuid"] = self.playbookUuid!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("InputParam") {
            self.inputParam = dict["InputParam"] as! String
        }
        if dict.keys.contains("PlaybookUuid") {
            self.playbookUuid = dict["PlaybookUuid"] as! String
        }
    }
}

public class TriggerPlaybookResponseBody : Tea.TeaModel {
    public var requestId: String?

    public var triggerUuid: String?

    public override init() {
        super.init()
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
        if self.triggerUuid != nil {
            map["TriggerUuid"] = self.triggerUuid!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("TriggerUuid") {
            self.triggerUuid = dict["TriggerUuid"] as! String
        }
    }
}

public class TriggerPlaybookResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: TriggerPlaybookResponseBody?

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
            var model = TriggerPlaybookResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class TriggerProcessTaskRequest : Tea.TeaModel {
    public var actionType: String?

    public var taskId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.actionType != nil {
            map["ActionType"] = self.actionType!
        }
        if self.taskId != nil {
            map["TaskId"] = self.taskId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ActionType") {
            self.actionType = dict["ActionType"] as! String
        }
        if dict.keys.contains("TaskId") {
            self.taskId = dict["TaskId"] as! String
        }
    }
}

public class TriggerProcessTaskResponseBody : Tea.TeaModel {
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

public class TriggerProcessTaskResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: TriggerProcessTaskResponseBody?

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
            var model = TriggerProcessTaskResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class TriggerSophonPlaybookRequest : Tea.TeaModel {
    public var commandName: String?

    public var inputParams: String?

    public var sophonTaskId: String?

    public var triggerType: String?

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
        if self.commandName != nil {
            map["CommandName"] = self.commandName!
        }
        if self.inputParams != nil {
            map["InputParams"] = self.inputParams!
        }
        if self.sophonTaskId != nil {
            map["SophonTaskId"] = self.sophonTaskId!
        }
        if self.triggerType != nil {
            map["TriggerType"] = self.triggerType!
        }
        if self.uuid != nil {
            map["Uuid"] = self.uuid!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("CommandName") {
            self.commandName = dict["CommandName"] as! String
        }
        if dict.keys.contains("InputParams") {
            self.inputParams = dict["InputParams"] as! String
        }
        if dict.keys.contains("SophonTaskId") {
            self.sophonTaskId = dict["SophonTaskId"] as! String
        }
        if dict.keys.contains("TriggerType") {
            self.triggerType = dict["TriggerType"] as! String
        }
        if dict.keys.contains("Uuid") {
            self.uuid = dict["Uuid"] as! String
        }
    }
}

public class TriggerSophonPlaybookResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var sophonTaskId: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.sophonTaskId != nil {
                map["SophonTaskId"] = self.sophonTaskId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("SophonTaskId") {
                self.sophonTaskId = dict["SophonTaskId"] as! String
            }
        }
    }
    public var data: TriggerSophonPlaybookResponseBody.Data?

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
            var model = TriggerSophonPlaybookResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class TriggerSophonPlaybookResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: TriggerSophonPlaybookResponseBody?

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
            var model = TriggerSophonPlaybookResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class VerifyPlaybookRequest : Tea.TeaModel {
    public var playbookUuid: String?

    public var taskFlow: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.playbookUuid != nil {
            map["PlaybookUuid"] = self.playbookUuid!
        }
        if self.taskFlow != nil {
            map["TaskFlow"] = self.taskFlow!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("PlaybookUuid") {
            self.playbookUuid = dict["PlaybookUuid"] as! String
        }
        if dict.keys.contains("TaskFlow") {
            self.taskFlow = dict["TaskFlow"] as! String
        }
    }
}

public class VerifyPlaybookResponseBody : Tea.TeaModel {
    public class CheckTaskInfos : Tea.TeaModel {
        public var detail: String?

        public var nodeName: String?

        public var riskLevel: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.detail != nil {
                map["Detail"] = self.detail!
            }
            if self.nodeName != nil {
                map["NodeName"] = self.nodeName!
            }
            if self.riskLevel != nil {
                map["RiskLevel"] = self.riskLevel!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Detail") {
                self.detail = dict["Detail"] as! String
            }
            if dict.keys.contains("NodeName") {
                self.nodeName = dict["NodeName"] as! String
            }
            if dict.keys.contains("RiskLevel") {
                self.riskLevel = dict["RiskLevel"] as! String
            }
        }
    }
    public var checkTaskInfos: [VerifyPlaybookResponseBody.CheckTaskInfos]?

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
        if self.checkTaskInfos != nil {
            var tmp : [Any] = []
            for k in self.checkTaskInfos! {
                tmp.append(k.toMap())
            }
            map["CheckTaskInfos"] = tmp
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("CheckTaskInfos") {
            var tmp : [VerifyPlaybookResponseBody.CheckTaskInfos] = []
            for v in dict["CheckTaskInfos"] as! [Any] {
                var model = VerifyPlaybookResponseBody.CheckTaskInfos()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.checkTaskInfos = tmp
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class VerifyPlaybookResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: VerifyPlaybookResponseBody?

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
            var model = VerifyPlaybookResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class VerifyPythonFileRequest : Tea.TeaModel {
    public var content: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.content != nil {
            map["Content"] = self.content!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Content") {
            self.content = dict["Content"] as! String
        }
    }
}

public class VerifyPythonFileResponseBody : Tea.TeaModel {
    public class Syntax : Tea.TeaModel {
        public var endColumn: Int32?

        public var endLineNumber: Int32?

        public var message: String?

        public var severity: Int32?

        public var startColumn: Int32?

        public var startLineNumber: Int32?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.endColumn != nil {
                map["EndColumn"] = self.endColumn!
            }
            if self.endLineNumber != nil {
                map["EndLineNumber"] = self.endLineNumber!
            }
            if self.message != nil {
                map["Message"] = self.message!
            }
            if self.severity != nil {
                map["Severity"] = self.severity!
            }
            if self.startColumn != nil {
                map["StartColumn"] = self.startColumn!
            }
            if self.startLineNumber != nil {
                map["StartLineNumber"] = self.startLineNumber!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("EndColumn") {
                self.endColumn = dict["EndColumn"] as! Int32
            }
            if dict.keys.contains("EndLineNumber") {
                self.endLineNumber = dict["EndLineNumber"] as! Int32
            }
            if dict.keys.contains("Message") {
                self.message = dict["Message"] as! String
            }
            if dict.keys.contains("Severity") {
                self.severity = dict["Severity"] as! Int32
            }
            if dict.keys.contains("StartColumn") {
                self.startColumn = dict["StartColumn"] as! Int32
            }
            if dict.keys.contains("StartLineNumber") {
                self.startLineNumber = dict["StartLineNumber"] as! Int32
            }
        }
    }
    public var requestId: String?

    public var syntax: [VerifyPythonFileResponseBody.Syntax]?

    public override init() {
        super.init()
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
        if self.syntax != nil {
            var tmp : [Any] = []
            for k in self.syntax! {
                tmp.append(k.toMap())
            }
            map["Syntax"] = tmp
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Syntax") {
            var tmp : [VerifyPythonFileResponseBody.Syntax] = []
            for v in dict["Syntax"] as! [Any] {
                var model = VerifyPythonFileResponseBody.Syntax()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.syntax = tmp
        }
    }
}

public class VerifyPythonFileResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: VerifyPythonFileResponseBody?

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
            var model = VerifyPythonFileResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}
