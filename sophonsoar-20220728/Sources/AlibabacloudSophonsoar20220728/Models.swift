import Foundation
import Tea
import TeaUtils
import AlibabacloudOpenApi
import AlibabaCloudOpenApiUtil
import AlibabacloudEndpointUtil

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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Lang"] as? String {
            self.lang = value
        }
        if let value = dict["NewPlaybookReleaseId"] as? Int32 {
            self.newPlaybookReleaseId = value
        }
        if let value = dict["OldPlaybookReleaseId"] as? Int32 {
            self.oldPlaybookReleaseId = value
        }
        if let value = dict["PlaybookUuid"] as? String {
            self.playbookUuid = value
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Description"] as? String {
                self.description_ = value
            }
            if let value = dict["New"] as? Bool {
                self.new = value
            }
            if let value = dict["Same"] as? Bool {
                self.same = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["CompareResult"] as? [String: Any?] {
            var model = ComparePlaybooksResponseBody.CompareResult()
            model.fromMap(value)
            self.compareResult = model
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = ComparePlaybooksResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Lang"] as? String {
            self.lang = value
        }
        if let value = dict["RoleFor"] as? Int64 {
            self.roleFor = value
        }
        if let value = dict["RoleType"] as? String {
            self.roleType = value
        }
        if let value = dict["Taskflow"] as? String {
            self.taskflow = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Config"] as? String {
            self.config = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = ConvertPlaybookResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Description"] as? String {
            self.description_ = value
        }
        if let value = dict["DisplayName"] as? String {
            self.displayName = value
        }
        if let value = dict["Lang"] as? String {
            self.lang = value
        }
        if let value = dict["ReleaseVersion"] as? String {
            self.releaseVersion = value
        }
        if let value = dict["RoleFor"] as? Int64 {
            self.roleFor = value
        }
        if let value = dict["RoleType"] as? String {
            self.roleType = value
        }
        if let value = dict["SourcePlaybookUuid"] as? String {
            self.sourcePlaybookUuid = value
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Active"] as? Int32 {
                self.active = value
            }
            if let value = dict["Description"] as? String {
                self.description_ = value
            }
            if let value = dict["DisplayName"] as? String {
                self.displayName = value
            }
            if let value = dict["FailNum"] as? Int32 {
                self.failNum = value
            }
            if let value = dict["FailRate"] as? Double {
                self.failRate = value
            }
            if let value = dict["GmtCreate"] as? Int64 {
                self.gmtCreate = value
            }
            if let value = dict["GmtModified"] as? Int64 {
                self.gmtModified = value
            }
            if let value = dict["HistoryMd5"] as? Int32 {
                self.historyMd5 = value
            }
            if let value = dict["InputParams"] as? String {
                self.inputParams = value
            }
            if let value = dict["LastRuntime"] as? Int64 {
                self.lastRuntime = value
            }
            if let value = dict["LogicReleaseTaskflowMd5"] as? String {
                self.logicReleaseTaskflowMd5 = value
            }
            if let value = dict["OutputParams"] as? String {
                self.outputParams = value
            }
            if let value = dict["OwnType"] as? String {
                self.ownType = value
            }
            if let value = dict["Permission"] as? Int32 {
                self.permission = value
            }
            if let value = dict["PlaybookStatus"] as? Int32 {
                self.playbookStatus = value
            }
            if let value = dict["PlaybookUuid"] as? String {
                self.playbookUuid = value
            }
            if let value = dict["SuccNum"] as? Int32 {
                self.succNum = value
            }
            if let value = dict["TenantId"] as? String {
                self.tenantId = value
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["PageNumber"] as? Int32 {
                self.pageNumber = value
            }
            if let value = dict["PageSize"] as? Int32 {
                self.pageSize = value
            }
            if let value = dict["TotalCount"] as? Int32 {
                self.totalCount = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Data"] as? [String: Any?] {
            var model = CopyPlaybookResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["Page"] as? [String: Any?] {
            var model = CopyPlaybookResponseBody.Page()
            model.fromMap(value)
            self.page = model
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = CopyPlaybookResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class CreatePlaybookRequest : Tea.TeaModel {
    public var description_: String?

    public var displayName: String?

    public var inputParams: String?

    public var lang: String?

    public var outputParams: String?

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
        if self.inputParams != nil {
            map["InputParams"] = self.inputParams!
        }
        if self.lang != nil {
            map["Lang"] = self.lang!
        }
        if self.outputParams != nil {
            map["OutputParams"] = self.outputParams!
        }
        if self.taskflowType != nil {
            map["TaskflowType"] = self.taskflowType!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Description"] as? String {
            self.description_ = value
        }
        if let value = dict["DisplayName"] as? String {
            self.displayName = value
        }
        if let value = dict["InputParams"] as? String {
            self.inputParams = value
        }
        if let value = dict["Lang"] as? String {
            self.lang = value
        }
        if let value = dict["OutputParams"] as? String {
            self.outputParams = value
        }
        if let value = dict["TaskflowType"] as? String {
            self.taskflowType = value
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["PlaybookUuid"] as? String {
                self.playbookUuid = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Data"] as? [String: Any?] {
            var model = CreatePlaybookResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = CreatePlaybookResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Lang"] as? String {
            self.lang = value
        }
        if let value = dict["PlaybookUuid"] as? String {
            self.playbookUuid = value
        }
        if let value = dict["Record"] as? String {
            self.record = value
        }
        if let value = dict["Taskflow"] as? String {
            self.taskflow = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["RequestUuid"] as? String {
            self.requestUuid = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = DebugPlaybookResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AssetId"] as? Int64 {
            self.assetId = value
        }
        if let value = dict["Lang"] as? String {
            self.lang = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = DeleteComponentAssetResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Lang"] as? String {
            self.lang = value
        }
        if let value = dict["PlaybookUuid"] as? String {
            self.playbookUuid = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = DeletePlaybookResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ComponentName"] as? String {
            self.componentName = value
        }
        if let value = dict["Lang"] as? String {
            self.lang = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ComponentAssetForm"] as? String {
            self.componentAssetForm = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = DescribeComponentAssetFormResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ComponentName"] as? String {
            self.componentName = value
        }
        if let value = dict["Lang"] as? String {
            self.lang = value
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["AssetUuid"] as? String {
                self.assetUuid = value
            }
            if let value = dict["Componentname"] as? String {
                self.componentname = value
            }
            if let value = dict["GmtCreate"] as? String {
                self.gmtCreate = value
            }
            if let value = dict["GmtModified"] as? String {
                self.gmtModified = value
            }
            if let value = dict["Id"] as? Int64 {
                self.id = value
            }
            if let value = dict["Name"] as? String {
                self.name = value
            }
            if let value = dict["Params"] as? String {
                self.params = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ComponentAssets"] as? [Any?] {
            var tmp : [DescribeComponentAssetsResponseBody.ComponentAssets] = []
            for v in value {
                if v != nil {
                    var model = DescribeComponentAssetsResponseBody.ComponentAssets()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.componentAssets = tmp
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = DescribeComponentAssetsResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Lang"] as? String {
            self.lang = value
        }
        if let value = dict["PlaybookUuid"] as? String {
            self.playbookUuid = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Components"] as? String {
            self.components = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = DescribeComponentListResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Lang"] as? String {
            self.lang = value
        }
        if let value = dict["PlaybookUuid"] as? String {
            self.playbookUuid = value
        }
    }
}

public class DescribeComponentPlaybookResponseBody : Tea.TeaModel {
    public class Playbooks : Tea.TeaModel {
        public var description_: String?

        public var displayName: String?

        public var inputParams: String?

        public var paramType: String?

        public override init() {
            super.init()
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
            if self.paramType != nil {
                map["ParamType"] = self.paramType!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Description"] as? String {
                self.description_ = value
            }
            if let value = dict["DisplayName"] as? String {
                self.displayName = value
            }
            if let value = dict["InputParams"] as? String {
                self.inputParams = value
            }
            if let value = dict["ParamType"] as? String {
                self.paramType = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Playbooks"] as? [Any?] {
            var tmp : [DescribeComponentPlaybookResponseBody.Playbooks] = []
            for v in value {
                if v != nil {
                    var model = DescribeComponentPlaybookResponseBody.Playbooks()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.playbooks = tmp
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = DescribeComponentPlaybookResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Lang"] as? String {
            self.lang = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ComponentsJs"] as? String {
            self.componentsJs = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = DescribeComponentsJsResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Lang"] as? String {
            self.lang = value
        }
        if let value = dict["PlaybookUuid"] as? String {
            self.playbookUuid = value
        }
        if let value = dict["TaskflowMd5"] as? String {
            self.taskflowMd5 = value
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Description"] as? String {
                self.description_ = value
            }
            if let value = dict["TaskflowMd5"] as? String {
                self.taskflowMd5 = value
            }
            if let value = dict["TaskflowType"] as? String {
                self.taskflowType = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Records"] as? [Any?] {
            var tmp : [DescribeDistinctReleasesResponseBody.Records] = []
            for v in value {
                if v != nil {
                    var model = DescribeDistinctReleasesResponseBody.Records()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.records = tmp
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = DescribeDistinctReleasesResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["EnumType"] as? String {
            self.enumType = value
        }
        if let value = dict["Lang"] as? String {
            self.lang = value
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Key"] as? String {
                self.key = value
            }
            if let value = dict["Value"] as? String {
                self.value = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Data"] as? [Any?] {
            var tmp : [DescribeEnumItemsResponseBody.Data] = []
            for v in value {
                if v != nil {
                    var model = DescribeEnumItemsResponseBody.Data()
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = DescribeEnumItemsResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["InputMode"] as? String {
            self.inputMode = value
        }
        if let value = dict["Lang"] as? String {
            self.lang = value
        }
        if let value = dict["ParamType"] as? String {
            self.paramType = value
        }
        if let value = dict["PlaybookName"] as? String {
            self.playbookName = value
        }
        if let value = dict["Uuid"] as? String {
            self.uuid = value
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Description"] as? String {
                self.description_ = value
            }
            if let value = dict["DisplayName"] as? String {
                self.displayName = value
            }
            if let value = dict["ParamConfig"] as? String {
                self.paramConfig = value
            }
            if let value = dict["ParamType"] as? String {
                self.paramType = value
            }
            if let value = dict["Uuid"] as? String {
                self.uuid = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["PlaybookMetrics"] as? [Any?] {
            var tmp : [DescribeExecutePlaybooksResponseBody.PlaybookMetrics] = []
            for v in value {
                if v != nil {
                    var model = DescribeExecutePlaybooksResponseBody.PlaybookMetrics()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.playbookMetrics = tmp
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = DescribeExecutePlaybooksResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Lang"] as? String {
            self.lang = value
        }
        if let value = dict["QueryKey"] as? String {
            self.queryKey = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Fields"] as? String {
            self.fields = value
        }
        if let value = dict["Name"] as? String {
            self.name = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = DescribeFieldResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Lang"] as? String {
            self.lang = value
        }
        if let value = dict["RoleFor"] as? Int64 {
            self.roleFor = value
        }
        if let value = dict["RoleType"] as? String {
            self.roleType = value
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

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["PolicyName"] as? String {
                        self.policyName = value
                    }
                    if let value = dict["Type"] as? String {
                        self.type = value
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

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["Code"] as? String {
                    self.code = value
                }
                if let value = dict["DefaultDomain"] as? String {
                    self.defaultDomain = value
                }
                if let value = dict["DefaultVersion"] as? String {
                    self.defaultVersion = value
                }
                if let value = dict["Description"] as? String {
                    self.description_ = value
                }
                if let value = dict["FullDomains"] as? [String] {
                    self.fullDomains = value
                }
                if let value = dict["Group"] as? String {
                    self.group = value
                }
                if let value = dict["Name"] as? String {
                    self.name = value
                }
                if let value = dict["PolicyList"] as? [Any?] {
                    var tmp : [DescribeGroupProductionsResponseBody.Data.Productions.PolicyList] = []
                    for v in value {
                        if v != nil {
                            var model = DescribeGroupProductionsResponseBody.Data.Productions.PolicyList()
                            if v != nil {
                                model.fromMap(v as? [String: Any?])
                            }
                            tmp.append(model)
                        }
                    }
                    self.policyList = tmp
                }
                if let value = dict["RamCode"] as? String {
                    self.ramCode = value
                }
                if let value = dict["ShortName"] as? String {
                    self.shortName = value
                }
                if let value = dict["Source"] as? String {
                    self.source = value
                }
                if let value = dict["Versions"] as? [String] {
                    self.versions = value
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["GroupName"] as? String {
                self.groupName = value
            }
            if let value = dict["Productions"] as? [Any?] {
                var tmp : [DescribeGroupProductionsResponseBody.Data.Productions] = []
                for v in value {
                    if v != nil {
                        var model = DescribeGroupProductionsResponseBody.Data.Productions()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["PageNumber"] as? Int32 {
                self.pageNumber = value
            }
            if let value = dict["PageSize"] as? Int32 {
                self.pageSize = value
            }
            if let value = dict["TotalCount"] as? Int32 {
                self.totalCount = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Data"] as? [Any?] {
            var tmp : [DescribeGroupProductionsResponseBody.Data] = []
            for v in value {
                if v != nil {
                    var model = DescribeGroupProductionsResponseBody.Data()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.data = tmp
        }
        if let value = dict["Page"] as? [String: Any?] {
            var model = DescribeGroupProductionsResponseBody.Page()
            model.fromMap(value)
            self.page = model
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = DescribeGroupProductionsResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Lang"] as? String {
            self.lang = value
        }
        if let value = dict["PlaybookUuid"] as? String {
            self.playbookUuid = value
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

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["ActionName"] as? String {
                    self.actionName = value
                }
                if let value = dict["ComponentName"] as? String {
                    self.componentName = value
                }
                if let value = dict["NodeName"] as? String {
                    self.nodeName = value
                }
                if let value = dict["OutputFields"] as? [String] {
                    self.outputFields = value
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["NodeSchema"] as? [Any?] {
                var tmp : [DescribeLatestRecordSchemaResponseBody.PlaybookNodeSchema.NodeSchema] = []
                for v in value {
                    if v != nil {
                        var model = DescribeLatestRecordSchemaResponseBody.PlaybookNodeSchema.NodeSchema()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["PlaybookNodeSchema"] as? [String: Any?] {
            var model = DescribeLatestRecordSchemaResponseBody.PlaybookNodeSchema()
            model.fromMap(value)
            self.playbookNodeSchema = model
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = DescribeLatestRecordSchemaResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Lang"] as? String {
            self.lang = value
        }
        if let value = dict["NodeName"] as? String {
            self.nodeName = value
        }
        if let value = dict["PlaybookUuid"] as? String {
            self.playbookUuid = value
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["ParamName"] as? String {
                self.paramName = value
            }
            if let value = dict["ReferredPath"] as? [String] {
                self.referredPath = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ParamReferredPaths"] as? [Any?] {
            var tmp : [DescribeNodeParamTagsResponseBody.ParamReferredPaths] = []
            for v in value {
                if v != nil {
                    var model = DescribeNodeParamTagsResponseBody.ParamReferredPaths()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.paramReferredPaths = tmp
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = DescribeNodeParamTagsResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Lang"] as? String {
            self.lang = value
        }
        if let value = dict["RoleFor"] as? Int64 {
            self.roleFor = value
        }
        if let value = dict["RoleType"] as? String {
            self.roleType = value
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Content"] as? String {
                self.content = value
            }
            if let value = dict["EventId"] as? String {
                self.eventId = value
            }
            if let value = dict["Params"] as? String {
                self.params = value
            }
            if let value = dict["Subject"] as? String {
                self.subject = value
            }
            if let value = dict["TemplateName"] as? String {
                self.templateName = value
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["PageNumber"] as? Int32 {
                self.pageNumber = value
            }
            if let value = dict["PageSize"] as? Int32 {
                self.pageSize = value
            }
            if let value = dict["TotalCount"] as? Int32 {
                self.totalCount = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Data"] as? [Any?] {
            var tmp : [DescribeNotifyTemplateListResponseBody.Data] = []
            for v in value {
                if v != nil {
                    var model = DescribeNotifyTemplateListResponseBody.Data()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.data = tmp
        }
        if let value = dict["Page"] as? [String: Any?] {
            var model = DescribeNotifyTemplateListResponseBody.Page()
            model.fromMap(value)
            self.page = model
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = DescribeNotifyTemplateListResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ApiName"] as? String {
            self.apiName = value
        }
        if let value = dict["ApiVersion"] as? String {
            self.apiVersion = value
        }
        if let value = dict["Lang"] as? String {
            self.lang = value
        }
        if let value = dict["PopCode"] as? String {
            self.popCode = value
        }
        if let value = dict["RoleFor"] as? Int64 {
            self.roleFor = value
        }
        if let value = dict["RoleType"] as? String {
            self.roleType = value
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Description"] as? String {
                self.description_ = value
            }
            if let value = dict["InputParams"] as? String {
                self.inputParams = value
            }
            if let value = dict["OutputParams"] as? String {
                self.outputParams = value
            }
            if let value = dict["ResponseDemo"] as? String {
                self.responseDemo = value
            }
            if let value = dict["Summary"] as? String {
                self.summary = value
            }
            if let value = dict["Title"] as? String {
                self.title = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Data"] as? [String: Any?] {
            var model = DescribeOpenApiInfoResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = DescribeOpenApiInfoResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ApiName"] as? String {
            self.apiName = value
        }
        if let value = dict["ApiVersion"] as? String {
            self.apiVersion = value
        }
        if let value = dict["Lang"] as? String {
            self.lang = value
        }
        if let value = dict["PopCode"] as? String {
            self.popCode = value
        }
        if let value = dict["RoleFor"] as? Int64 {
            self.roleFor = value
        }
        if let value = dict["RoleType"] as? String {
            self.roleType = value
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Code"] as? String {
                self.code = value
            }
            if let value = dict["Directories"] as? Any {
                self.directories = value
            }
            if let value = dict["Version"] as? String {
                self.version = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Data"] as? [String: Any?] {
            var model = DescribeOpenApiListResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = DescribeOpenApiListResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["DebugFlag"] as? Int32 {
            self.debugFlag = value
        }
        if let value = dict["Lang"] as? String {
            self.lang = value
        }
        if let value = dict["PlaybookUuid"] as? String {
            self.playbookUuid = value
        }
        if let value = dict["TaskflowMd5"] as? String {
            self.taskflowMd5 = value
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Description"] as? String {
                self.description_ = value
            }
            if let value = dict["DisplayName"] as? String {
                self.displayName = value
            }
            if let value = dict["FailExeNum"] as? Int32 {
                self.failExeNum = value
            }
            if let value = dict["GmtCreate"] as? String {
                self.gmtCreate = value
            }
            if let value = dict["GmtModified"] as? String {
                self.gmtModified = value
            }
            if let value = dict["InputParams"] as? String {
                self.inputParams = value
            }
            if let value = dict["LastExeTime"] as? Int64 {
                self.lastExeTime = value
            }
            if let value = dict["OnlineActive"] as? Bool {
                self.onlineActive = value
            }
            if let value = dict["OnlineReleaseTaskflowMd5"] as? String {
                self.onlineReleaseTaskflowMd5 = value
            }
            if let value = dict["OwnType"] as? String {
                self.ownType = value
            }
            if let value = dict["PlaybookUuid"] as? String {
                self.playbookUuid = value
            }
            if let value = dict["SuccessExeNum"] as? Int32 {
                self.successExeNum = value
            }
            if let value = dict["Taskflow"] as? String {
                self.taskflow = value
            }
            if let value = dict["TaskflowType"] as? String {
                self.taskflowType = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Playbook"] as? [String: Any?] {
            var model = DescribePlaybookResponseBody.Playbook()
            model.fromMap(value)
            self.playbook = model
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = DescribePlaybookResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Lang"] as? String {
            self.lang = value
        }
        if let value = dict["PlaybookUuid"] as? String {
            self.playbookUuid = value
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["ExeConfig"] as? String {
                self.exeConfig = value
            }
            if let value = dict["InputParams"] as? String {
                self.inputParams = value
            }
            if let value = dict["OutputParams"] as? String {
                self.outputParams = value
            }
            if let value = dict["ParamType"] as? String {
                self.paramType = value
            }
            if let value = dict["PlaybookUuid"] as? String {
                self.playbookUuid = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Config"] as? [String: Any?] {
            var model = DescribePlaybookInputOutputResponseBody.Config()
            model.fromMap(value)
            self.config = model
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = DescribePlaybookInputOutputResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Lang"] as? String {
            self.lang = value
        }
        if let value = dict["PlaybookUuid"] as? String {
            self.playbookUuid = value
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Active"] as? Int32 {
                self.active = value
            }
            if let value = dict["Description"] as? String {
                self.description_ = value
            }
            if let value = dict["DisplayName"] as? String {
                self.displayName = value
            }
            if let value = dict["FailNum"] as? Int32 {
                self.failNum = value
            }
            if let value = dict["GmtCreate"] as? Int64 {
                self.gmtCreate = value
            }
            if let value = dict["HistoryMd5"] as? Int32 {
                self.historyMd5 = value
            }
            if let value = dict["LastRuntime"] as? Int64 {
                self.lastRuntime = value
            }
            if let value = dict["OwnType"] as? String {
                self.ownType = value
            }
            if let value = dict["PlaybookUuid"] as? String {
                self.playbookUuid = value
            }
            if let value = dict["SuccNum"] as? Int32 {
                self.succNum = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Metrics"] as? [String: Any?] {
            var model = DescribePlaybookMetricsResponseBody.Metrics()
            model.fromMap(value)
            self.metrics = model
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = DescribePlaybookMetricsResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Lang"] as? String {
            self.lang = value
        }
        if let value = dict["NodeName"] as? String {
            self.nodeName = value
        }
        if let value = dict["PlaybookUuid"] as? String {
            self.playbookUuid = value
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["NodeName"] as? String {
                self.nodeName = value
            }
            if let value = dict["NodeOutput"] as? String {
                self.nodeOutput = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["PlaybookNodesOutput"] as? [String: Any?] {
            var model = DescribePlaybookNodesOutputResponseBody.PlaybookNodesOutput()
            model.fromMap(value)
            self.playbookNodesOutput = model
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = DescribePlaybookNodesOutputResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Lang"] as? String {
            self.lang = value
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["StartUpNum"] as? Int32 {
                self.startUpNum = value
            }
            if let value = dict["TotalNum"] as? Int32 {
                self.totalNum = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Metrics"] as? [String: Any?] {
            var model = DescribePlaybookNumberMetricsResponseBody.Metrics()
            model.fromMap(value)
            self.metrics = model
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = DescribePlaybookNumberMetricsResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Lang"] as? String {
            self.lang = value
        }
        if let value = dict["PageNumber"] as? Int32 {
            self.pageNumber = value
        }
        if let value = dict["PageSize"] as? Int32 {
            self.pageSize = value
        }
        if let value = dict["PlaybookUuid"] as? String {
            self.playbookUuid = value
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["PageNumber"] as? Int32 {
                self.pageNumber = value
            }
            if let value = dict["PageSize"] as? Int32 {
                self.pageSize = value
            }
            if let value = dict["TotalCount"] as? Int32 {
                self.totalCount = value
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Creator"] as? String {
                self.creator = value
            }
            if let value = dict["Description"] as? String {
                self.description_ = value
            }
            if let value = dict["GmtCreate"] as? Int64 {
                self.gmtCreate = value
            }
            if let value = dict["GmtModified"] as? Int64 {
                self.gmtModified = value
            }
            if let value = dict["Id"] as? Int32 {
                self.id = value
            }
            if let value = dict["TaskflowMd5"] as? String {
                self.taskflowMd5 = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Page"] as? [String: Any?] {
            var model = DescribePlaybookReleasesResponseBody.Page()
            model.fromMap(value)
            self.page = model
        }
        if let value = dict["Records"] as? [Any?] {
            var tmp : [DescribePlaybookReleasesResponseBody.Records] = []
            for v in value {
                if v != nil {
                    var model = DescribePlaybookReleasesResponseBody.Records()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.records = tmp
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = DescribePlaybookReleasesResponseBody()
            model.fromMap(value)
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

    public var sort: Int32?

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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Active"] as? Int32 {
            self.active = value
        }
        if let value = dict["EndMillis"] as? Int64 {
            self.endMillis = value
        }
        if let value = dict["Lang"] as? String {
            self.lang = value
        }
        if let value = dict["Name"] as? String {
            self.name = value
        }
        if let value = dict["Order"] as? String {
            self.order = value
        }
        if let value = dict["OwnType"] as? String {
            self.ownType = value
        }
        if let value = dict["PageNumber"] as? Int64 {
            self.pageNumber = value
        }
        if let value = dict["PageSize"] as? Int32 {
            self.pageSize = value
        }
        if let value = dict["ParamTypes"] as? String {
            self.paramTypes = value
        }
        if let value = dict["PlaybookUuid"] as? String {
            self.playbookUuid = value
        }
        if let value = dict["PlaybookUuids"] as? String {
            self.playbookUuids = value
        }
        if let value = dict["Sort"] as? Int32 {
            self.sort = value
        }
        if let value = dict["StartMillis"] as? Int64 {
            self.startMillis = value
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["PageNumber"] as? Int32 {
                self.pageNumber = value
            }
            if let value = dict["PageSize"] as? Int32 {
                self.pageSize = value
            }
            if let value = dict["TotalCount"] as? Int32 {
                self.totalCount = value
            }
        }
    }
    public class Playbooks : Tea.TeaModel {
        public var active: Int32?

        public var description_: String?

        public var displayName: String?

        public var gmtCreate: Int64?

        public var gmtModified: String?

        public var lastRuntime: Int64?

        public var ownType: String?

        public var paramType: String?

        public var playbookUuid: String?

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
            if self.tenantId != nil {
                map["TenantId"] = self.tenantId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Active"] as? Int32 {
                self.active = value
            }
            if let value = dict["Description"] as? String {
                self.description_ = value
            }
            if let value = dict["DisplayName"] as? String {
                self.displayName = value
            }
            if let value = dict["GmtCreate"] as? Int64 {
                self.gmtCreate = value
            }
            if let value = dict["GmtModified"] as? String {
                self.gmtModified = value
            }
            if let value = dict["LastRuntime"] as? Int64 {
                self.lastRuntime = value
            }
            if let value = dict["OwnType"] as? String {
                self.ownType = value
            }
            if let value = dict["ParamType"] as? String {
                self.paramType = value
            }
            if let value = dict["PlaybookUuid"] as? String {
                self.playbookUuid = value
            }
            if let value = dict["TenantId"] as? String {
                self.tenantId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Page"] as? [String: Any?] {
            var model = DescribePlaybooksResponseBody.Page()
            model.fromMap(value)
            self.page = model
        }
        if let value = dict["Playbooks"] as? [Any?] {
            var tmp : [DescribePlaybooksResponseBody.Playbooks] = []
            for v in value {
                if v != nil {
                    var model = DescribePlaybooksResponseBody.Playbooks()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.playbooks = tmp
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = DescribePlaybooksResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DescribePopApiRequest : Tea.TeaModel {
    public var apiName: String?

    public var apiVersion: String?

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
        if self.popCode != nil {
            map["PopCode"] = self.popCode!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ApiName"] as? String {
            self.apiName = value
        }
        if let value = dict["ApiVersion"] as? String {
            self.apiVersion = value
        }
        if let value = dict["PopCode"] as? String {
            self.popCode = value
        }
    }
}

public class DescribePopApiResponseBody : Tea.TeaModel {
    public class OpenApiMetaList : Tea.TeaModel {
        public var description_: String?

        public var exampleValue: String?

        public var name: String?

        public var required_: Bool?

        public var style: String?

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
            if self.style != nil {
                map["Style"] = self.style!
            }
            if self.type != nil {
                map["Type"] = self.type!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Description"] as? String {
                self.description_ = value
            }
            if let value = dict["ExampleValue"] as? String {
                self.exampleValue = value
            }
            if let value = dict["Name"] as? String {
                self.name = value
            }
            if let value = dict["Required"] as? Bool {
                self.required_ = value
            }
            if let value = dict["Style"] as? String {
                self.style = value
            }
            if let value = dict["Type"] as? String {
                self.type = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ApiName"] as? String {
            self.apiName = value
        }
        if let value = dict["OpenApiMetaList"] as? [Any?] {
            var tmp : [DescribePopApiResponseBody.OpenApiMetaList] = []
            for v in value {
                if v != nil {
                    var model = DescribePopApiResponseBody.OpenApiMetaList()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.openApiMetaList = tmp
        }
        if let value = dict["PopCode"] as? String {
            self.popCode = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Version"] as? String {
            self.version = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = DescribePopApiResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Lang"] as? String {
            self.lang = value
        }
        if let value = dict["RoleFor"] as? String {
            self.roleFor = value
        }
        if let value = dict["RoleType"] as? String {
            self.roleType = value
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["BanFileNum"] as? Int32 {
                self.banFileNum = value
            }
            if let value = dict["BanIpNum"] as? Int32 {
                self.banIpNum = value
            }
            if let value = dict["BanProcessNum"] as? Int32 {
                self.banProcessNum = value
            }
            if let value = dict["TaskNum"] as? Int32 {
                self.taskNum = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Metrics"] as? [String: Any?] {
            var model = DescribeProcessStatisticsResponseBody.Metrics()
            model.fromMap(value)
            self.metrics = model
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = DescribeProcessStatisticsResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["EntityUuidList"] as? [String] {
            self.entityUuidList = value
        }
        if let value = dict["Lang"] as? String {
            self.lang = value
        }
        if let value = dict["RoleFor"] as? Int64 {
            self.roleFor = value
        }
        if let value = dict["RoleType"] as? String {
            self.roleType = value
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Count"] as? Int64 {
                self.count = value
            }
            if let value = dict["EntityUuid"] as? String {
                self.entityUuid = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Data"] as? [Any?] {
            var tmp : [DescribeProcessTaskCountResponseBody.Data] = []
            for v in value {
                if v != nil {
                    var model = DescribeProcessTaskCountResponseBody.Data()
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = DescribeProcessTaskCountResponseBody()
            model.fromMap(value)
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

    public var reqUuid: String?

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
        if self.reqUuid != nil {
            map["ReqUuid"] = self.reqUuid!
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Direction"] as? String {
            self.direction = value
        }
        if let value = dict["EntityName"] as? String {
            self.entityName = value
        }
        if let value = dict["EntityType"] as? String {
            self.entityType = value
        }
        if let value = dict["EntityUuid"] as? String {
            self.entityUuid = value
        }
        if let value = dict["EventUuid"] as? String {
            self.eventUuid = value
        }
        if let value = dict["OrderField"] as? String {
            self.orderField = value
        }
        if let value = dict["PageNumber"] as? Int64 {
            self.pageNumber = value
        }
        if let value = dict["PageSize"] as? Int32 {
            self.pageSize = value
        }
        if let value = dict["ParamContent"] as? String {
            self.paramContent = value
        }
        if let value = dict["ProcessActionEnd"] as? Int64 {
            self.processActionEnd = value
        }
        if let value = dict["ProcessActionStart"] as? Int64 {
            self.processActionStart = value
        }
        if let value = dict["ProcessRemoveEnd"] as? Int64 {
            self.processRemoveEnd = value
        }
        if let value = dict["ProcessRemoveStart"] as? Int64 {
            self.processRemoveStart = value
        }
        if let value = dict["ProcessStrategyUuid"] as? String {
            self.processStrategyUuid = value
        }
        if let value = dict["ReqUuid"] as? String {
            self.reqUuid = value
        }
        if let value = dict["SceneCode"] as? String {
            self.sceneCode = value
        }
        if let value = dict["Scope"] as? String {
            self.scope = value
        }
        if let value = dict["Source"] as? String {
            self.source = value
        }
        if let value = dict["TaskId"] as? String {
            self.taskId = value
        }
        if let value = dict["TaskStatus"] as? String {
            self.taskStatus = value
        }
        if let value = dict["TriggerSource"] as? String {
            self.triggerSource = value
        }
        if let value = dict["YunCode"] as? String {
            self.yunCode = value
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["PageNumber"] as? Int32 {
                self.pageNumber = value
            }
            if let value = dict["PageSize"] as? Int32 {
                self.pageSize = value
            }
            if let value = dict["TotalCount"] as? Int32 {
                self.totalCount = value
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Creator"] as? String {
                self.creator = value
            }
            if let value = dict["EntityName"] as? String {
                self.entityName = value
            }
            if let value = dict["EntityType"] as? String {
                self.entityType = value
            }
            if let value = dict["EntityUuid"] as? String {
                self.entityUuid = value
            }
            if let value = dict["ErrCode"] as? String {
                self.errCode = value
            }
            if let value = dict["ErrMsg"] as? String {
                self.errMsg = value
            }
            if let value = dict["ErrTip"] as? String {
                self.errTip = value
            }
            if let value = dict["EventUuid"] as? String {
                self.eventUuid = value
            }
            if let value = dict["GmtCreateMillis"] as? Int64 {
                self.gmtCreateMillis = value
            }
            if let value = dict["GmtModifiedMillis"] as? Int64 {
                self.gmtModifiedMillis = value
            }
            if let value = dict["InputParams"] as? String {
                self.inputParams = value
            }
            if let value = dict["ProcessStrategyUuid"] as? String {
                self.processStrategyUuid = value
            }
            if let value = dict["ProcessTime"] as? Int64 {
                self.processTime = value
            }
            if let value = dict["RemoveTime"] as? Int64 {
                self.removeTime = value
            }
            if let value = dict["ReqUuid"] as? String {
                self.reqUuid = value
            }
            if let value = dict["SceneCode"] as? String {
                self.sceneCode = value
            }
            if let value = dict["SceneName"] as? String {
                self.sceneName = value
            }
            if let value = dict["Scope"] as? String {
                self.scope = value
            }
            if let value = dict["Source"] as? String {
                self.source = value
            }
            if let value = dict["TaskId"] as? String {
                self.taskId = value
            }
            if let value = dict["TaskStatus"] as? Int32 {
                self.taskStatus = value
            }
            if let value = dict["TriggerSource"] as? String {
                self.triggerSource = value
            }
            if let value = dict["YunCode"] as? String {
                self.yunCode = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Page"] as? [String: Any?] {
            var model = DescribeProcessTasksResponseBody.Page()
            model.fromMap(value)
            self.page = model
        }
        if let value = dict["ProcessTasks"] as? [Any?] {
            var tmp : [DescribeProcessTasksResponseBody.ProcessTasks] = []
            for v in value {
                if v != nil {
                    var model = DescribeProcessTasksResponseBody.ProcessTasks()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.processTasks = tmp
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = DescribeProcessTasksResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ActionUuid"] as? String {
            self.actionUuid = value
        }
        if let value = dict["Lang"] as? String {
            self.lang = value
        }
        if let value = dict["PageNumber"] as? Int32 {
            self.pageNumber = value
        }
        if let value = dict["PageSize"] as? Int32 {
            self.pageSize = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ActionOutputs"] as? String {
            self.actionOutputs = value
        }
        if let value = dict["PageNumber"] as? Int32 {
            self.pageNumber = value
        }
        if let value = dict["PageSize"] as? Int32 {
            self.pageSize = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["TotalCount"] as? Int32 {
            self.totalCount = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = DescribeSoarRecordActionOutputListResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ActionUuid"] as? String {
            self.actionUuid = value
        }
        if let value = dict["Lang"] as? String {
            self.lang = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["InOutputInfo"] as? String {
            self.inOutputInfo = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = DescribeSoarRecordInOutputResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DescribeSoarRecordsRequest : Tea.TeaModel {
    public var completedBeginTime: Int64?

    public var completedEndTime: Int64?

    public var endMillis: Int64?

    public var lang: String?

    public var pageNumber: Int32?

    public var pageSize: Int32?

    public var playbookUuid: String?

    public var queryValue: String?

    public var requestUuid: String?

    public var startMillis: Int64?

    public var taskStatus: String?

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
        if self.completedBeginTime != nil {
            map["CompletedBeginTime"] = self.completedBeginTime!
        }
        if self.completedEndTime != nil {
            map["CompletedEndTime"] = self.completedEndTime!
        }
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
        if self.queryValue != nil {
            map["QueryValue"] = self.queryValue!
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
        if self.triggerType != nil {
            map["TriggerType"] = self.triggerType!
        }
        if self.triggerUser != nil {
            map["TriggerUser"] = self.triggerUser!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["CompletedBeginTime"] as? Int64 {
            self.completedBeginTime = value
        }
        if let value = dict["CompletedEndTime"] as? Int64 {
            self.completedEndTime = value
        }
        if let value = dict["EndMillis"] as? Int64 {
            self.endMillis = value
        }
        if let value = dict["Lang"] as? String {
            self.lang = value
        }
        if let value = dict["PageNumber"] as? Int32 {
            self.pageNumber = value
        }
        if let value = dict["PageSize"] as? Int32 {
            self.pageSize = value
        }
        if let value = dict["PlaybookUuid"] as? String {
            self.playbookUuid = value
        }
        if let value = dict["QueryValue"] as? String {
            self.queryValue = value
        }
        if let value = dict["RequestUuid"] as? String {
            self.requestUuid = value
        }
        if let value = dict["StartMillis"] as? Int64 {
            self.startMillis = value
        }
        if let value = dict["TaskStatus"] as? String {
            self.taskStatus = value
        }
        if let value = dict["TaskflowMd5"] as? String {
            self.taskflowMd5 = value
        }
        if let value = dict["TriggerType"] as? String {
            self.triggerType = value
        }
        if let value = dict["TriggerUser"] as? String {
            self.triggerUser = value
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["PageNumber"] as? Int32 {
                self.pageNumber = value
            }
            if let value = dict["PageSize"] as? Int32 {
                self.pageSize = value
            }
            if let value = dict["TotalCount"] as? Int32 {
                self.totalCount = value
            }
        }
    }
    public class SoarExecuteRecords : Tea.TeaModel {
        public class OutputList : Tea.TeaModel {
            public var actionUuid: String?

            public var content: String?

            public var nodeName: String?

            public override init() {
                super.init()
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
                if self.content != nil {
                    map["Content"] = self.content!
                }
                if self.nodeName != nil {
                    map["NodeName"] = self.nodeName!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["ActionUuid"] as? String {
                    self.actionUuid = value
                }
                if let value = dict["Content"] as? String {
                    self.content = value
                }
                if let value = dict["NodeName"] as? String {
                    self.nodeName = value
                }
            }
        }
        public var endTime: Int64?

        public var errorMsg: String?

        public var outputList: [DescribeSoarRecordsResponseBody.SoarExecuteRecords.OutputList]?

        public var rawEventReq: String?

        public var requestUuid: String?

        public var startTime: Int64?

        public var status: String?

        public var taskName: String?

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
            if self.outputList != nil {
                var tmp : [Any] = []
                for k in self.outputList! {
                    tmp.append(k.toMap())
                }
                map["OutputList"] = tmp
            }
            if self.rawEventReq != nil {
                map["RawEventReq"] = self.rawEventReq!
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["EndTime"] as? Int64 {
                self.endTime = value
            }
            if let value = dict["ErrorMsg"] as? String {
                self.errorMsg = value
            }
            if let value = dict["OutputList"] as? [Any?] {
                var tmp : [DescribeSoarRecordsResponseBody.SoarExecuteRecords.OutputList] = []
                for v in value {
                    if v != nil {
                        var model = DescribeSoarRecordsResponseBody.SoarExecuteRecords.OutputList()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.outputList = tmp
            }
            if let value = dict["RawEventReq"] as? String {
                self.rawEventReq = value
            }
            if let value = dict["RequestUuid"] as? String {
                self.requestUuid = value
            }
            if let value = dict["StartTime"] as? Int64 {
                self.startTime = value
            }
            if let value = dict["Status"] as? String {
                self.status = value
            }
            if let value = dict["TaskName"] as? String {
                self.taskName = value
            }
            if let value = dict["TaskflowMd5"] as? String {
                self.taskflowMd5 = value
            }
            if let value = dict["TriggerType"] as? String {
                self.triggerType = value
            }
            if let value = dict["TriggerUser"] as? String {
                self.triggerUser = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Page"] as? [String: Any?] {
            var model = DescribeSoarRecordsResponseBody.Page()
            model.fromMap(value)
            self.page = model
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["SoarExecuteRecords"] as? [Any?] {
            var tmp : [DescribeSoarRecordsResponseBody.SoarExecuteRecords] = []
            for v in value {
                if v != nil {
                    var model = DescribeSoarRecordsResponseBody.SoarExecuteRecords()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = DescribeSoarRecordsResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DescribeSoarTaskAndActionsRequest : Tea.TeaModel {
    public var lang: String?

    public var pageNumber: Int32?

    public var pageSize: Int32?

    public var queryType: String?

    public var queryValue: String?

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
        if self.pageNumber != nil {
            map["PageNumber"] = self.pageNumber!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.queryType != nil {
            map["QueryType"] = self.queryType!
        }
        if self.queryValue != nil {
            map["QueryValue"] = self.queryValue!
        }
        if self.requestUuid != nil {
            map["RequestUuid"] = self.requestUuid!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Lang"] as? String {
            self.lang = value
        }
        if let value = dict["PageNumber"] as? Int32 {
            self.pageNumber = value
        }
        if let value = dict["PageSize"] as? Int32 {
            self.pageSize = value
        }
        if let value = dict["QueryType"] as? String {
            self.queryType = value
        }
        if let value = dict["QueryValue"] as? String {
            self.queryValue = value
        }
        if let value = dict["RequestUuid"] as? String {
            self.requestUuid = value
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

            public var startTime: Int64?

            public var status: String?

            public override init() {
                super.init()
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
                if self.startTime != nil {
                    map["StartTime"] = self.startTime!
                }
                if self.status != nil {
                    map["Status"] = self.status!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["Action"] as? String {
                    self.action = value
                }
                if let value = dict["ActionUuid"] as? String {
                    self.actionUuid = value
                }
                if let value = dict["AssetName"] as? String {
                    self.assetName = value
                }
                if let value = dict["Component"] as? String {
                    self.component = value
                }
                if let value = dict["EndTime"] as? Int64 {
                    self.endTime = value
                }
                if let value = dict["NodeName"] as? String {
                    self.nodeName = value
                }
                if let value = dict["StartTime"] as? Int64 {
                    self.startTime = value
                }
                if let value = dict["Status"] as? String {
                    self.status = value
                }
            }
        }
        public var actionLogNum: Int32?

        public var actions: [DescribeSoarTaskAndActionsResponseBody.Details.Actions]?

        public var endTime: Int64?

        public var errorMsg: String?

        public var rawEventReq: String?

        public var requestUuid: String?

        public var startTime: Int64?

        public var status: String?

        public var taskFlowMd5: String?

        public var taskName: String?

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
            if self.actionLogNum != nil {
                map["ActionLogNum"] = self.actionLogNum!
            }
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
            if self.triggerType != nil {
                map["TriggerType"] = self.triggerType!
            }
            if self.triggerUser != nil {
                map["TriggerUser"] = self.triggerUser!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["ActionLogNum"] as? Int32 {
                self.actionLogNum = value
            }
            if let value = dict["Actions"] as? [Any?] {
                var tmp : [DescribeSoarTaskAndActionsResponseBody.Details.Actions] = []
                for v in value {
                    if v != nil {
                        var model = DescribeSoarTaskAndActionsResponseBody.Details.Actions()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.actions = tmp
            }
            if let value = dict["EndTime"] as? Int64 {
                self.endTime = value
            }
            if let value = dict["ErrorMsg"] as? String {
                self.errorMsg = value
            }
            if let value = dict["RawEventReq"] as? String {
                self.rawEventReq = value
            }
            if let value = dict["RequestUuid"] as? String {
                self.requestUuid = value
            }
            if let value = dict["StartTime"] as? Int64 {
                self.startTime = value
            }
            if let value = dict["Status"] as? String {
                self.status = value
            }
            if let value = dict["TaskFlowMd5"] as? String {
                self.taskFlowMd5 = value
            }
            if let value = dict["TaskName"] as? String {
                self.taskName = value
            }
            if let value = dict["TriggerType"] as? String {
                self.triggerType = value
            }
            if let value = dict["TriggerUser"] as? String {
                self.triggerUser = value
            }
        }
    }
    public class Page : Tea.TeaModel {
        public var pageNumber: String?

        public var pageSize: String?

        public var totalCount: String?

        public override init() {
            super.init()
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["PageNumber"] as? String {
                self.pageNumber = value
            }
            if let value = dict["PageSize"] as? String {
                self.pageSize = value
            }
            if let value = dict["TotalCount"] as? String {
                self.totalCount = value
            }
        }
    }
    public var details: DescribeSoarTaskAndActionsResponseBody.Details?

    public var page: DescribeSoarTaskAndActionsResponseBody.Page?

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
        try self.page?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.details != nil {
            map["Details"] = self.details?.toMap()
        }
        if self.page != nil {
            map["Page"] = self.page?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Details"] as? [String: Any?] {
            var model = DescribeSoarTaskAndActionsResponseBody.Details()
            model.fromMap(value)
            self.details = model
        }
        if let value = dict["Page"] as? [String: Any?] {
            var model = DescribeSoarTaskAndActionsResponseBody.Page()
            model.fromMap(value)
            self.page = model
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = DescribeSoarTaskAndActionsResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Name"] as? String {
            self.name = value
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

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["CheckField"] as? String {
                    self.checkField = value
                }
                if let value = dict["Field"] as? String {
                    self.field = value
                }
                if let value = dict["Necessary"] as? Bool {
                    self.necessary = value
                }
                if let value = dict["Value"] as? String {
                    self.value = value
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Description"] as? String {
                self.description_ = value
            }
            if let value = dict["DisplayName"] as? String {
                self.displayName = value
            }
            if let value = dict["Name"] as? String {
                self.name = value
            }
            if let value = dict["ParamConfig"] as? [Any?] {
                var tmp : [DescribeSophonCommandsResponseBody.Data.ParamConfig] = []
                for v in value {
                    if v != nil {
                        var model = DescribeSophonCommandsResponseBody.Data.ParamConfig()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Data"] as? [Any?] {
            var tmp : [DescribeSophonCommandsResponseBody.Data] = []
            for v in value {
                if v != nil {
                    var model = DescribeSophonCommandsResponseBody.Data()
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = DescribeSophonCommandsResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ApiName"] as? String {
            self.apiName = value
        }
        if let value = dict["KeyWord"] as? String {
            self.keyWord = value
        }
        if let value = dict["PageNumber"] as? Int32 {
            self.pageNumber = value
        }
        if let value = dict["PageSize"] as? Int64 {
            self.pageSize = value
        }
        if let value = dict["ProductCode"] as? String {
            self.productCode = value
        }
        if let value = dict["VendorCode"] as? String {
            self.vendorCode = value
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["AdvanceConfig"] as? String {
                self.advanceConfig = value
            }
            if let value = dict["ApiName"] as? String {
                self.apiName = value
            }
            if let value = dict["ApiVersion"] as? String {
                self.apiVersion = value
            }
            if let value = dict["Method"] as? String {
                self.method = value
            }
            if let value = dict["NeedAdvanceConfig"] as? Bool {
                self.needAdvanceConfig = value
            }
            if let value = dict["NeedPageInfo"] as? Bool {
                self.needPageInfo = value
            }
            if let value = dict["PageInfo"] as? String {
                self.pageInfo = value
            }
            if let value = dict["Parameter"] as? String {
                self.parameter = value
            }
            if let value = dict["ProductCode"] as? String {
                self.productCode = value
            }
            if let value = dict["ProductDomain"] as? String {
                self.productDomain = value
            }
            if let value = dict["ProductName"] as? String {
                self.productName = value
            }
            if let value = dict["Protocol"] as? String {
                self.protocol_ = value
            }
            if let value = dict["VendorCode"] as? String {
                self.vendorCode = value
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["PageNumber"] as? Int64 {
                self.pageNumber = value
            }
            if let value = dict["PageSize"] as? Int32 {
                self.pageSize = value
            }
            if let value = dict["TotalCount"] as? Int64 {
                self.totalCount = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ApiList"] as? [Any?] {
            var tmp : [DescribeVendorApiListResponseBody.ApiList] = []
            for v in value {
                if v != nil {
                    var model = DescribeVendorApiListResponseBody.ApiList()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.apiList = tmp
        }
        if let value = dict["Page"] as? [String: Any?] {
            var model = DescribeVendorApiListResponseBody.Page()
            model.fromMap(value)
            self.page = model
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = DescribeVendorApiListResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Lang"] as? String {
            self.lang = value
        }
        if let value = dict["RequestUuid"] as? String {
            self.requestUuid = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["RunResult"] as? String {
            self.runResult = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = DescriberPython3ScriptLogsResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AssetConfig"] as? String {
            self.assetConfig = value
        }
        if let value = dict["Lang"] as? String {
            self.lang = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = ModifyComponentAssetResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Description"] as? String {
            self.description_ = value
        }
        if let value = dict["DisplayName"] as? String {
            self.displayName = value
        }
        if let value = dict["Lang"] as? String {
            self.lang = value
        }
        if let value = dict["PlaybookUuid"] as? String {
            self.playbookUuid = value
        }
        if let value = dict["Taskflow"] as? String {
            self.taskflow = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = ModifyPlaybookResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ExeConfig"] as? String {
            self.exeConfig = value
        }
        if let value = dict["InputParams"] as? String {
            self.inputParams = value
        }
        if let value = dict["Lang"] as? String {
            self.lang = value
        }
        if let value = dict["OutputParams"] as? String {
            self.outputParams = value
        }
        if let value = dict["ParamType"] as? String {
            self.paramType = value
        }
        if let value = dict["PlaybookUuid"] as? String {
            self.playbookUuid = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = ModifyPlaybookInputOutputResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Description"] as? String {
            self.description_ = value
        }
        if let value = dict["PlaybookUuid"] as? String {
            self.playbookUuid = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = PublishPlaybookResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Lang"] as? String {
            self.lang = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Playbooks"] as? String {
            self.playbooks = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = QueryTreeDataResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["IsPublish"] as? Bool {
            self.isPublish = value
        }
        if let value = dict["PlayReleaseId"] as? Int32 {
            self.playReleaseId = value
        }
        if let value = dict["PlaybookUuid"] as? String {
            self.playbookUuid = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = RevertPlaybookReleaseResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class RunNotifyComponentWithEmailRequest : Tea.TeaModel {
    public var actionName: String?

    public var assetId: String?

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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ActionName"] as? String {
            self.actionName = value
        }
        if let value = dict["AssetId"] as? String {
            self.assetId = value
        }
        if let value = dict["ComponentName"] as? String {
            self.componentName = value
        }
        if let value = dict["Content"] as? String {
            self.content = value
        }
        if let value = dict["Lang"] as? String {
            self.lang = value
        }
        if let value = dict["NodeName"] as? String {
            self.nodeName = value
        }
        if let value = dict["PlaybookUuid"] as? String {
            self.playbookUuid = value
        }
        if let value = dict["Receivers"] as? [String] {
            self.receivers = value
        }
        if let value = dict["RoleFor"] as? Int64 {
            self.roleFor = value
        }
        if let value = dict["RoleType"] as? String {
            self.roleType = value
        }
        if let value = dict["Subject"] as? String {
            self.subject = value
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["PageNumber"] as? Int32 {
                self.pageNumber = value
            }
            if let value = dict["PageSize"] as? Int32 {
                self.pageSize = value
            }
            if let value = dict["TotalCount"] as? Int32 {
                self.totalCount = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Data"] as? String {
            self.data = value
        }
        if let value = dict["Page"] as? [String: Any?] {
            var model = RunNotifyComponentWithEmailResponseBody.Page()
            model.fromMap(value)
            self.page = model
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = RunNotifyComponentWithEmailResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class RunNotifyComponentWithMessageCenterRequest : Tea.TeaModel {
    public var actionName: String?

    public var aliuid: String?

    public var assetId: String?

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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ActionName"] as? String {
            self.actionName = value
        }
        if let value = dict["Aliuid"] as? String {
            self.aliuid = value
        }
        if let value = dict["AssetId"] as? String {
            self.assetId = value
        }
        if let value = dict["ChannelTypeList"] as? [String] {
            self.channelTypeList = value
        }
        if let value = dict["ComponentName"] as? String {
            self.componentName = value
        }
        if let value = dict["EventId"] as? String {
            self.eventId = value
        }
        if let value = dict["Lang"] as? String {
            self.lang = value
        }
        if let value = dict["NodeName"] as? String {
            self.nodeName = value
        }
        if let value = dict["Params"] as? String {
            self.params = value
        }
        if let value = dict["PlaybookUuid"] as? String {
            self.playbookUuid = value
        }
        if let value = dict["RoleFor"] as? Int64 {
            self.roleFor = value
        }
        if let value = dict["RoleType"] as? String {
            self.roleType = value
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["PageNumber"] as? Int32 {
                self.pageNumber = value
            }
            if let value = dict["PageSize"] as? Int32 {
                self.pageSize = value
            }
            if let value = dict["TotalCount"] as? Int32 {
                self.totalCount = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Data"] as? String {
            self.data = value
        }
        if let value = dict["Page"] as? [String: Any?] {
            var model = RunNotifyComponentWithMessageCenterResponseBody.Page()
            model.fromMap(value)
            self.page = model
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = RunNotifyComponentWithMessageCenterResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class RunNotifyComponentWithWebhookRequest : Tea.TeaModel {
    public var actionName: String?

    public var assetId: String?

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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ActionName"] as? String {
            self.actionName = value
        }
        if let value = dict["AssetId"] as? String {
            self.assetId = value
        }
        if let value = dict["ComponentName"] as? String {
            self.componentName = value
        }
        if let value = dict["Content"] as? String {
            self.content = value
        }
        if let value = dict["Lang"] as? String {
            self.lang = value
        }
        if let value = dict["MsgType"] as? String {
            self.msgType = value
        }
        if let value = dict["NodeName"] as? String {
            self.nodeName = value
        }
        if let value = dict["PlaybookUuid"] as? String {
            self.playbookUuid = value
        }
        if let value = dict["RoleFor"] as? Int64 {
            self.roleFor = value
        }
        if let value = dict["RoleType"] as? String {
            self.roleType = value
        }
        if let value = dict["Secret"] as? String {
            self.secret = value
        }
        if let value = dict["Webhook"] as? String {
            self.webhook = value
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["PageNumber"] as? Int32 {
                self.pageNumber = value
            }
            if let value = dict["PageSize"] as? Int32 {
                self.pageSize = value
            }
            if let value = dict["TotalCount"] as? Int32 {
                self.totalCount = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Data"] as? String {
            self.data = value
        }
        if let value = dict["Page"] as? [String: Any?] {
            var model = RunNotifyComponentWithWebhookResponseBody.Page()
            model.fromMap(value)
            self.page = model
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = RunNotifyComponentWithWebhookResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class RunPython3ScriptRequest : Tea.TeaModel {
    public var nodeName: String?

    public var params: String?

    public var playbookUuid: String?

    public var pythonScript: String?

    public var pythonVersion: String?

    public override init() {
        super.init()
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
        if self.pythonVersion != nil {
            map["PythonVersion"] = self.pythonVersion!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["NodeName"] as? String {
            self.nodeName = value
        }
        if let value = dict["Params"] as? String {
            self.params = value
        }
        if let value = dict["PlaybookUuid"] as? String {
            self.playbookUuid = value
        }
        if let value = dict["PythonScript"] as? String {
            self.pythonScript = value
        }
        if let value = dict["PythonVersion"] as? String {
            self.pythonVersion = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["RunResult"] as? String {
            self.runResult = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = RunPython3ScriptResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["InputParam"] as? String {
            self.inputParam = value
        }
        if let value = dict["PlaybookUuid"] as? String {
            self.playbookUuid = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["TriggerUuid"] as? String {
            self.triggerUuid = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = TriggerPlaybookResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ActionType"] as? String {
            self.actionType = value
        }
        if let value = dict["TaskId"] as? String {
            self.taskId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = TriggerProcessTaskResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["CommandName"] as? String {
            self.commandName = value
        }
        if let value = dict["InputParams"] as? String {
            self.inputParams = value
        }
        if let value = dict["SophonTaskId"] as? String {
            self.sophonTaskId = value
        }
        if let value = dict["TriggerType"] as? String {
            self.triggerType = value
        }
        if let value = dict["Uuid"] as? String {
            self.uuid = value
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["SophonTaskId"] as? String {
                self.sophonTaskId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Data"] as? [String: Any?] {
            var model = TriggerSophonPlaybookResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = TriggerSophonPlaybookResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["PlaybookUuid"] as? String {
            self.playbookUuid = value
        }
        if let value = dict["TaskFlow"] as? String {
            self.taskFlow = value
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Detail"] as? String {
                self.detail = value
            }
            if let value = dict["NodeName"] as? String {
                self.nodeName = value
            }
            if let value = dict["RiskLevel"] as? String {
                self.riskLevel = value
            }
        }
    }
    public class Prerequisites : Tea.TeaModel {
        public var prerequisiteType: String?

        public var prerequisiteValue: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.prerequisiteType != nil {
                map["PrerequisiteType"] = self.prerequisiteType!
            }
            if self.prerequisiteValue != nil {
                map["PrerequisiteValue"] = self.prerequisiteValue!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["PrerequisiteType"] as? String {
                self.prerequisiteType = value
            }
            if let value = dict["PrerequisiteValue"] as? String {
                self.prerequisiteValue = value
            }
        }
    }
    public var checkTaskInfos: [VerifyPlaybookResponseBody.CheckTaskInfos]?

    public var prerequisites: [VerifyPlaybookResponseBody.Prerequisites]?

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
        if self.prerequisites != nil {
            var tmp : [Any] = []
            for k in self.prerequisites! {
                tmp.append(k.toMap())
            }
            map["Prerequisites"] = tmp
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["CheckTaskInfos"] as? [Any?] {
            var tmp : [VerifyPlaybookResponseBody.CheckTaskInfos] = []
            for v in value {
                if v != nil {
                    var model = VerifyPlaybookResponseBody.CheckTaskInfos()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.checkTaskInfos = tmp
        }
        if let value = dict["Prerequisites"] as? [Any?] {
            var tmp : [VerifyPlaybookResponseBody.Prerequisites] = []
            for v in value {
                if v != nil {
                    var model = VerifyPlaybookResponseBody.Prerequisites()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.prerequisites = tmp
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = VerifyPlaybookResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Content"] as? String {
            self.content = value
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["EndColumn"] as? Int32 {
                self.endColumn = value
            }
            if let value = dict["EndLineNumber"] as? Int32 {
                self.endLineNumber = value
            }
            if let value = dict["Message"] as? String {
                self.message = value
            }
            if let value = dict["Severity"] as? Int32 {
                self.severity = value
            }
            if let value = dict["StartColumn"] as? Int32 {
                self.startColumn = value
            }
            if let value = dict["StartLineNumber"] as? Int32 {
                self.startLineNumber = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Syntax"] as? [Any?] {
            var tmp : [VerifyPythonFileResponseBody.Syntax] = []
            for v in value {
                if v != nil {
                    var model = VerifyPythonFileResponseBody.Syntax()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = VerifyPythonFileResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}
