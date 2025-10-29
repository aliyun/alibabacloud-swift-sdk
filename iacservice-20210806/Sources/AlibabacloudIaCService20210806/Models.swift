import Foundation
import Tea
import TeaUtils
import AlibabacloudOpenApi
import AlibabaCloudOpenApiUtil
import AlibabacloudEndpointUtil

public class JobStatusDetailValue : Tea.TeaModel {
    public var comment: String?

    public var jobResult: String?

    public var timeStamps: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.comment != nil {
            map["comment"] = self.comment!
        }
        if self.jobResult != nil {
            map["jobResult"] = self.jobResult!
        }
        if self.timeStamps != nil {
            map["timeStamps"] = self.timeStamps!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["comment"] as? String {
            self.comment = value
        }
        if let value = dict["jobResult"] as? String {
            self.jobResult = value
        }
        if let value = dict["timeStamps"] as? String {
            self.timeStamps = value
        }
    }
}

public class JobsStatusDetailValue : Tea.TeaModel {
    public var jobResult: String?

    public var comment: String?

    public var timeStamps: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.jobResult != nil {
            map["jobResult"] = self.jobResult!
        }
        if self.comment != nil {
            map["comment"] = self.comment!
        }
        if self.timeStamps != nil {
            map["timeStamps"] = self.timeStamps!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["jobResult"] as? String {
            self.jobResult = value
        }
        if let value = dict["comment"] as? String {
            self.comment = value
        }
        if let value = dict["timeStamps"] as? String {
            self.timeStamps = value
        }
    }
}

public class AddSharedAccountsRequest : Tea.TeaModel {
    public var accountIds: [Int64]?

    public var resourceId: String?

    public var resourceType: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.accountIds != nil {
            map["accountIds"] = self.accountIds!
        }
        if self.resourceId != nil {
            map["resourceId"] = self.resourceId!
        }
        if self.resourceType != nil {
            map["resourceType"] = self.resourceType!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["accountIds"] as? [Int64] {
            self.accountIds = value
        }
        if let value = dict["resourceId"] as? String {
            self.resourceId = value
        }
        if let value = dict["resourceType"] as? String {
            self.resourceType = value
        }
    }
}

public class AddSharedAccountsResponseBody : Tea.TeaModel {
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
            map["requestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
    }
}

public class AddSharedAccountsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: AddSharedAccountsResponseBody?

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
            var model = AddSharedAccountsResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class AssociateGroupRequest : Tea.TeaModel {
    public var clientToken: String?

    public var projectId: String?

    public var resourceIds: [String]?

    public var resourceType: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.clientToken != nil {
            map["clientToken"] = self.clientToken!
        }
        if self.projectId != nil {
            map["projectId"] = self.projectId!
        }
        if self.resourceIds != nil {
            map["resourceIds"] = self.resourceIds!
        }
        if self.resourceType != nil {
            map["resourceType"] = self.resourceType!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["clientToken"] as? String {
            self.clientToken = value
        }
        if let value = dict["projectId"] as? String {
            self.projectId = value
        }
        if let value = dict["resourceIds"] as? [String] {
            self.resourceIds = value
        }
        if let value = dict["resourceType"] as? String {
            self.resourceType = value
        }
    }
}

public class AssociateGroupResponseBody : Tea.TeaModel {
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
            map["requestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
    }
}

public class AssociateGroupResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: AssociateGroupResponseBody?

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
            var model = AssociateGroupResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class CancelResourceExportTaskRequest : Tea.TeaModel {
    public var clientToken: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.clientToken != nil {
            map["clientToken"] = self.clientToken!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["clientToken"] as? String {
            self.clientToken = value
        }
    }
}

public class CancelResourceExportTaskResponseBody : Tea.TeaModel {
    public var exportTaskId: String?

    public var exportVersion: String?

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
        if self.exportTaskId != nil {
            map["exportTaskId"] = self.exportTaskId!
        }
        if self.exportVersion != nil {
            map["exportVersion"] = self.exportVersion!
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["exportTaskId"] as? String {
            self.exportTaskId = value
        }
        if let value = dict["exportVersion"] as? String {
            self.exportVersion = value
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
    }
}

public class CancelResourceExportTaskResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CancelResourceExportTaskResponseBody?

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
            var model = CancelResourceExportTaskResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class CreateGroupRequest : Tea.TeaModel {
    public class NotifyConfig : Tea.TeaModel {
        public var notifyPath: String?

        public var notifyType: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.notifyPath != nil {
                map["notifyPath"] = self.notifyPath!
            }
            if self.notifyType != nil {
                map["notifyType"] = self.notifyType!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["notifyPath"] as? String {
                self.notifyPath = value
            }
            if let value = dict["notifyType"] as? String {
                self.notifyType = value
            }
        }
    }
    public class TriggerConfig : Tea.TeaModel {
        public var triggerStrategy: String?

        public var triggerValue: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.triggerStrategy != nil {
                map["triggerStrategy"] = self.triggerStrategy!
            }
            if self.triggerValue != nil {
                map["triggerValue"] = self.triggerValue!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["triggerStrategy"] as? String {
                self.triggerStrategy = value
            }
            if let value = dict["triggerValue"] as? String {
                self.triggerValue = value
            }
        }
    }
    public var autoDestroy: Bool?

    public var autoTrigger: Bool?

    public var clientToken: String?

    public var description_: String?

    public var forcedSetting: Bool?

    public var name: String?

    public var notifyConfig: [CreateGroupRequest.NotifyConfig]?

    public var notifyOperationTypes: [String]?

    public var projectId: String?

    public var ramRole: String?

    public var reportExportField: [String]?

    public var reportExportPath: String?

    public var terraformProviderVersion: String?

    public var triggerConfig: [CreateGroupRequest.TriggerConfig]?

    public var triggerResourceType: [String]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.autoDestroy != nil {
            map["autoDestroy"] = self.autoDestroy!
        }
        if self.autoTrigger != nil {
            map["autoTrigger"] = self.autoTrigger!
        }
        if self.clientToken != nil {
            map["clientToken"] = self.clientToken!
        }
        if self.description_ != nil {
            map["description"] = self.description_!
        }
        if self.forcedSetting != nil {
            map["forcedSetting"] = self.forcedSetting!
        }
        if self.name != nil {
            map["name"] = self.name!
        }
        if self.notifyConfig != nil {
            var tmp : [Any] = []
            for k in self.notifyConfig! {
                tmp.append(k.toMap())
            }
            map["notifyConfig"] = tmp
        }
        if self.notifyOperationTypes != nil {
            map["notifyOperationTypes"] = self.notifyOperationTypes!
        }
        if self.projectId != nil {
            map["projectId"] = self.projectId!
        }
        if self.ramRole != nil {
            map["ramRole"] = self.ramRole!
        }
        if self.reportExportField != nil {
            map["reportExportField"] = self.reportExportField!
        }
        if self.reportExportPath != nil {
            map["reportExportPath"] = self.reportExportPath!
        }
        if self.terraformProviderVersion != nil {
            map["terraformProviderVersion"] = self.terraformProviderVersion!
        }
        if self.triggerConfig != nil {
            var tmp : [Any] = []
            for k in self.triggerConfig! {
                tmp.append(k.toMap())
            }
            map["triggerConfig"] = tmp
        }
        if self.triggerResourceType != nil {
            map["triggerResourceType"] = self.triggerResourceType!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["autoDestroy"] as? Bool {
            self.autoDestroy = value
        }
        if let value = dict["autoTrigger"] as? Bool {
            self.autoTrigger = value
        }
        if let value = dict["clientToken"] as? String {
            self.clientToken = value
        }
        if let value = dict["description"] as? String {
            self.description_ = value
        }
        if let value = dict["forcedSetting"] as? Bool {
            self.forcedSetting = value
        }
        if let value = dict["name"] as? String {
            self.name = value
        }
        if let value = dict["notifyConfig"] as? [Any?] {
            var tmp : [CreateGroupRequest.NotifyConfig] = []
            for v in value {
                if v != nil {
                    var model = CreateGroupRequest.NotifyConfig()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.notifyConfig = tmp
        }
        if let value = dict["notifyOperationTypes"] as? [String] {
            self.notifyOperationTypes = value
        }
        if let value = dict["projectId"] as? String {
            self.projectId = value
        }
        if let value = dict["ramRole"] as? String {
            self.ramRole = value
        }
        if let value = dict["reportExportField"] as? [String] {
            self.reportExportField = value
        }
        if let value = dict["reportExportPath"] as? String {
            self.reportExportPath = value
        }
        if let value = dict["terraformProviderVersion"] as? String {
            self.terraformProviderVersion = value
        }
        if let value = dict["triggerConfig"] as? [Any?] {
            var tmp : [CreateGroupRequest.TriggerConfig] = []
            for v in value {
                if v != nil {
                    var model = CreateGroupRequest.TriggerConfig()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.triggerConfig = tmp
        }
        if let value = dict["triggerResourceType"] as? [String] {
            self.triggerResourceType = value
        }
    }
}

public class CreateGroupResponseBody : Tea.TeaModel {
    public var groupId: String?

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
        if self.groupId != nil {
            map["groupId"] = self.groupId!
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["groupId"] as? String {
            self.groupId = value
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
    }
}

public class CreateGroupResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateGroupResponseBody?

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
            var model = CreateGroupResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class CreateJobRequest : Tea.TeaModel {
    public var clientToken: String?

    public var description_: String?

    public var subCommand: String?

    public var taskType: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.clientToken != nil {
            map["clientToken"] = self.clientToken!
        }
        if self.description_ != nil {
            map["description"] = self.description_!
        }
        if self.subCommand != nil {
            map["subCommand"] = self.subCommand!
        }
        if self.taskType != nil {
            map["taskType"] = self.taskType!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["clientToken"] as? String {
            self.clientToken = value
        }
        if let value = dict["description"] as? String {
            self.description_ = value
        }
        if let value = dict["subCommand"] as? String {
            self.subCommand = value
        }
        if let value = dict["taskType"] as? String {
            self.taskType = value
        }
    }
}

public class CreateJobResponseBody : Tea.TeaModel {
    public var jobId: String?

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
        if self.jobId != nil {
            map["jobId"] = self.jobId!
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["jobId"] as? String {
            self.jobId = value
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
    }
}

public class CreateJobResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateJobResponseBody?

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
            var model = CreateJobResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class CreateModuleRequest : Tea.TeaModel {
    public class GroupInfo : Tea.TeaModel {
        public var groupId: String?

        public var projectId: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.groupId != nil {
                map["groupId"] = self.groupId!
            }
            if self.projectId != nil {
                map["projectId"] = self.projectId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["groupId"] as? String {
                self.groupId = value
            }
            if let value = dict["projectId"] as? String {
                self.projectId = value
            }
        }
    }
    public class Tags : Tea.TeaModel {
        public var tagKey: String?

        public var tagValue: String?

        public override init() {
            super.init()
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
                map["tagKey"] = self.tagKey!
            }
            if self.tagValue != nil {
                map["tagValue"] = self.tagValue!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["tagKey"] as? String {
                self.tagKey = value
            }
            if let value = dict["tagValue"] as? String {
                self.tagValue = value
            }
        }
    }
    public var clientToken: String?

    public var description_: String?

    public var groupInfo: CreateModuleRequest.GroupInfo?

    public var name: String?

    public var source: String?

    public var sourcePath: String?

    public var statePath: String?

    public var tags: [CreateModuleRequest.Tags]?

    public var versionStrategy: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.groupInfo?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.clientToken != nil {
            map["clientToken"] = self.clientToken!
        }
        if self.description_ != nil {
            map["description"] = self.description_!
        }
        if self.groupInfo != nil {
            map["groupInfo"] = self.groupInfo?.toMap()
        }
        if self.name != nil {
            map["name"] = self.name!
        }
        if self.source != nil {
            map["source"] = self.source!
        }
        if self.sourcePath != nil {
            map["sourcePath"] = self.sourcePath!
        }
        if self.statePath != nil {
            map["statePath"] = self.statePath!
        }
        if self.tags != nil {
            var tmp : [Any] = []
            for k in self.tags! {
                tmp.append(k.toMap())
            }
            map["tags"] = tmp
        }
        if self.versionStrategy != nil {
            map["versionStrategy"] = self.versionStrategy!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["clientToken"] as? String {
            self.clientToken = value
        }
        if let value = dict["description"] as? String {
            self.description_ = value
        }
        if let value = dict["groupInfo"] as? [String: Any?] {
            var model = CreateModuleRequest.GroupInfo()
            model.fromMap(value)
            self.groupInfo = model
        }
        if let value = dict["name"] as? String {
            self.name = value
        }
        if let value = dict["source"] as? String {
            self.source = value
        }
        if let value = dict["sourcePath"] as? String {
            self.sourcePath = value
        }
        if let value = dict["statePath"] as? String {
            self.statePath = value
        }
        if let value = dict["tags"] as? [Any?] {
            var tmp : [CreateModuleRequest.Tags] = []
            for v in value {
                if v != nil {
                    var model = CreateModuleRequest.Tags()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.tags = tmp
        }
        if let value = dict["versionStrategy"] as? String {
            self.versionStrategy = value
        }
    }
}

public class CreateModuleResponseBody : Tea.TeaModel {
    public var moduleId: String?

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
        if self.moduleId != nil {
            map["moduleId"] = self.moduleId!
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["moduleId"] as? String {
            self.moduleId = value
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
    }
}

public class CreateModuleResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateModuleResponseBody?

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
            var model = CreateModuleResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class CreateModuleVersionRequest : Tea.TeaModel {
    public var clientToken: String?

    public var description_: String?

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
        if self.clientToken != nil {
            map["clientToken"] = self.clientToken!
        }
        if self.description_ != nil {
            map["description"] = self.description_!
        }
        if self.name != nil {
            map["name"] = self.name!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["clientToken"] as? String {
            self.clientToken = value
        }
        if let value = dict["description"] as? String {
            self.description_ = value
        }
        if let value = dict["name"] as? String {
            self.name = value
        }
    }
}

public class CreateModuleVersionResponseBody : Tea.TeaModel {
    public var moduleVersion: String?

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
        if self.moduleVersion != nil {
            map["moduleVersion"] = self.moduleVersion!
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["moduleVersion"] as? String {
            self.moduleVersion = value
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
    }
}

public class CreateModuleVersionResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateModuleVersionResponseBody?

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
            var model = CreateModuleVersionResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class CreateProjectRequest : Tea.TeaModel {
    public var clientToken: String?

    public var description_: String?

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
        if self.clientToken != nil {
            map["clientToken"] = self.clientToken!
        }
        if self.description_ != nil {
            map["description"] = self.description_!
        }
        if self.name != nil {
            map["name"] = self.name!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["clientToken"] as? String {
            self.clientToken = value
        }
        if let value = dict["description"] as? String {
            self.description_ = value
        }
        if let value = dict["name"] as? String {
            self.name = value
        }
    }
}

public class CreateProjectResponseBody : Tea.TeaModel {
    public var projectId: String?

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
        if self.projectId != nil {
            map["projectId"] = self.projectId!
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["projectId"] as? String {
            self.projectId = value
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
    }
}

public class CreateProjectResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateProjectResponseBody?

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
            var model = CreateProjectResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class CreateRegistryModuleRequest : Tea.TeaModel {
    public var acl: String?

    public var clientToken: String?

    public var description_: String?

    public var moduleName: String?

    public var namespaceName: String?

    public var provider: String?

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
        if self.acl != nil {
            map["acl"] = self.acl!
        }
        if self.clientToken != nil {
            map["clientToken"] = self.clientToken!
        }
        if self.description_ != nil {
            map["description"] = self.description_!
        }
        if self.moduleName != nil {
            map["moduleName"] = self.moduleName!
        }
        if self.namespaceName != nil {
            map["namespaceName"] = self.namespaceName!
        }
        if self.provider != nil {
            map["provider"] = self.provider!
        }
        if self.type != nil {
            map["type"] = self.type!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["acl"] as? String {
            self.acl = value
        }
        if let value = dict["clientToken"] as? String {
            self.clientToken = value
        }
        if let value = dict["description"] as? String {
            self.description_ = value
        }
        if let value = dict["moduleName"] as? String {
            self.moduleName = value
        }
        if let value = dict["namespaceName"] as? String {
            self.namespaceName = value
        }
        if let value = dict["provider"] as? String {
            self.provider = value
        }
        if let value = dict["type"] as? String {
            self.type = value
        }
    }
}

public class CreateRegistryModuleResponseBody : Tea.TeaModel {
    public var requestId: String?

    public var source: String?

    public override init() {
        super.init()
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
            map["requestId"] = self.requestId!
        }
        if self.source != nil {
            map["source"] = self.source!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
        if let value = dict["source"] as? String {
            self.source = value
        }
    }
}

public class CreateRegistryModuleResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateRegistryModuleResponseBody?

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
            var model = CreateRegistryModuleResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class CreateRegistryNamespaceRequest : Tea.TeaModel {
    public var acl: String?

    public var clientToken: String?

    public var description_: String?

    public var maintainer: String?

    public var namespaceName: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.acl != nil {
            map["acl"] = self.acl!
        }
        if self.clientToken != nil {
            map["clientToken"] = self.clientToken!
        }
        if self.description_ != nil {
            map["description"] = self.description_!
        }
        if self.maintainer != nil {
            map["maintainer"] = self.maintainer!
        }
        if self.namespaceName != nil {
            map["namespaceName"] = self.namespaceName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["acl"] as? String {
            self.acl = value
        }
        if let value = dict["clientToken"] as? String {
            self.clientToken = value
        }
        if let value = dict["description"] as? String {
            self.description_ = value
        }
        if let value = dict["maintainer"] as? String {
            self.maintainer = value
        }
        if let value = dict["namespaceName"] as? String {
            self.namespaceName = value
        }
    }
}

public class CreateRegistryNamespaceResponseBody : Tea.TeaModel {
    public var namespaceName: String?

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
        if self.namespaceName != nil {
            map["namespaceName"] = self.namespaceName!
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["namespaceName"] as? String {
            self.namespaceName = value
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
    }
}

public class CreateRegistryNamespaceResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateRegistryNamespaceResponseBody?

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
            var model = CreateRegistryNamespaceResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class CreateResourceExportTaskRequest : Tea.TeaModel {
    public class ExportToModule : Tea.TeaModel {
        public var source: String?

        public var sourcePath: String?

        public var statePath: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.source != nil {
                map["source"] = self.source!
            }
            if self.sourcePath != nil {
                map["sourcePath"] = self.sourcePath!
            }
            if self.statePath != nil {
                map["statePath"] = self.statePath!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["source"] as? String {
                self.source = value
            }
            if let value = dict["sourcePath"] as? String {
                self.sourcePath = value
            }
            if let value = dict["statePath"] as? String {
                self.statePath = value
            }
        }
    }
    public class IncludeRules : Tea.TeaModel {
        public var key: String?

        public var values: [String]?

        public override init() {
            super.init()
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
                map["key"] = self.key!
            }
            if self.values != nil {
                map["values"] = self.values!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["key"] as? String {
                self.key = value
            }
            if let value = dict["values"] as? [String] {
                self.values = value
            }
        }
    }
    public class Variables : Tea.TeaModel {
        public var properties: [String]?

        public var resourceType: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.properties != nil {
                map["properties"] = self.properties!
            }
            if self.resourceType != nil {
                map["resourceType"] = self.resourceType!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["properties"] as? [String] {
                self.properties = value
            }
            if let value = dict["resourceType"] as? String {
                self.resourceType = value
            }
        }
    }
    public var clientToken: String?

    public var description_: String?

    public var exportToModule: CreateResourceExportTaskRequest.ExportToModule?

    public var includeRules: [CreateResourceExportTaskRequest.IncludeRules]?

    public var name: String?

    public var ramRole: String?

    public var terraformProviderVersion: String?

    public var terraformVersion: String?

    public var triggerStrategy: String?

    public var variables: [CreateResourceExportTaskRequest.Variables]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.exportToModule?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.clientToken != nil {
            map["clientToken"] = self.clientToken!
        }
        if self.description_ != nil {
            map["description"] = self.description_!
        }
        if self.exportToModule != nil {
            map["exportToModule"] = self.exportToModule?.toMap()
        }
        if self.includeRules != nil {
            var tmp : [Any] = []
            for k in self.includeRules! {
                tmp.append(k.toMap())
            }
            map["includeRules"] = tmp
        }
        if self.name != nil {
            map["name"] = self.name!
        }
        if self.ramRole != nil {
            map["ramRole"] = self.ramRole!
        }
        if self.terraformProviderVersion != nil {
            map["terraformProviderVersion"] = self.terraformProviderVersion!
        }
        if self.terraformVersion != nil {
            map["terraformVersion"] = self.terraformVersion!
        }
        if self.triggerStrategy != nil {
            map["triggerStrategy"] = self.triggerStrategy!
        }
        if self.variables != nil {
            var tmp : [Any] = []
            for k in self.variables! {
                tmp.append(k.toMap())
            }
            map["variables"] = tmp
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["clientToken"] as? String {
            self.clientToken = value
        }
        if let value = dict["description"] as? String {
            self.description_ = value
        }
        if let value = dict["exportToModule"] as? [String: Any?] {
            var model = CreateResourceExportTaskRequest.ExportToModule()
            model.fromMap(value)
            self.exportToModule = model
        }
        if let value = dict["includeRules"] as? [Any?] {
            var tmp : [CreateResourceExportTaskRequest.IncludeRules] = []
            for v in value {
                if v != nil {
                    var model = CreateResourceExportTaskRequest.IncludeRules()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.includeRules = tmp
        }
        if let value = dict["name"] as? String {
            self.name = value
        }
        if let value = dict["ramRole"] as? String {
            self.ramRole = value
        }
        if let value = dict["terraformProviderVersion"] as? String {
            self.terraformProviderVersion = value
        }
        if let value = dict["terraformVersion"] as? String {
            self.terraformVersion = value
        }
        if let value = dict["triggerStrategy"] as? String {
            self.triggerStrategy = value
        }
        if let value = dict["variables"] as? [Any?] {
            var tmp : [CreateResourceExportTaskRequest.Variables] = []
            for v in value {
                if v != nil {
                    var model = CreateResourceExportTaskRequest.Variables()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.variables = tmp
        }
    }
}

public class CreateResourceExportTaskResponseBody : Tea.TeaModel {
    public var exportTaskId: String?

    public var exportVersion: String?

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
        if self.exportTaskId != nil {
            map["exportTaskId"] = self.exportTaskId!
        }
        if self.exportVersion != nil {
            map["exportVersion"] = self.exportVersion!
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["exportTaskId"] as? String {
            self.exportTaskId = value
        }
        if let value = dict["exportVersion"] as? String {
            self.exportVersion = value
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
    }
}

public class CreateResourceExportTaskResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateResourceExportTaskResponseBody?

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
            var model = CreateResourceExportTaskResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class CreateTaskRequest : Tea.TeaModel {
    public class GroupInfo : Tea.TeaModel {
        public var groupId: String?

        public var projectId: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.groupId != nil {
                map["groupId"] = self.groupId!
            }
            if self.projectId != nil {
                map["projectId"] = self.projectId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["groupId"] as? String {
                self.groupId = value
            }
            if let value = dict["projectId"] as? String {
                self.projectId = value
            }
        }
    }
    public class Tags : Tea.TeaModel {
        public var tagKey: String?

        public var tagValue: String?

        public override init() {
            super.init()
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
                map["tagKey"] = self.tagKey!
            }
            if self.tagValue != nil {
                map["tagValue"] = self.tagValue!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["tagKey"] as? String {
                self.tagKey = value
            }
            if let value = dict["tagValue"] as? String {
                self.tagValue = value
            }
        }
    }
    public class TaskBackend : Tea.TeaModel {
        public var bucketEndpoint: String?

        public var bucketName: String?

        public var objectPath: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.bucketEndpoint != nil {
                map["bucketEndpoint"] = self.bucketEndpoint!
            }
            if self.bucketName != nil {
                map["bucketName"] = self.bucketName!
            }
            if self.objectPath != nil {
                map["objectPath"] = self.objectPath!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["bucketEndpoint"] as? String {
                self.bucketEndpoint = value
            }
            if let value = dict["bucketName"] as? String {
                self.bucketName = value
            }
            if let value = dict["objectPath"] as? String {
                self.objectPath = value
            }
        }
    }
    public var autoApply: Bool?

    public var autoDestroy: Bool?

    public var clientToken: String?

    public var description_: String?

    public var groupInfo: CreateTaskRequest.GroupInfo?

    public var initModuleState: Bool?

    public var moduleId: String?

    public var moduleVersion: String?

    public var name: String?

    public var protectionStrategy: [String]?

    public var ramRole: String?

    public var skipPropertyValidation: Bool?

    public var tags: [CreateTaskRequest.Tags]?

    public var taskBackend: CreateTaskRequest.TaskBackend?

    public var terraformVersion: String?

    public var triggerStrategy: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.groupInfo?.validate()
        try self.taskBackend?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.autoApply != nil {
            map["autoApply"] = self.autoApply!
        }
        if self.autoDestroy != nil {
            map["autoDestroy"] = self.autoDestroy!
        }
        if self.clientToken != nil {
            map["clientToken"] = self.clientToken!
        }
        if self.description_ != nil {
            map["description"] = self.description_!
        }
        if self.groupInfo != nil {
            map["groupInfo"] = self.groupInfo?.toMap()
        }
        if self.initModuleState != nil {
            map["initModuleState"] = self.initModuleState!
        }
        if self.moduleId != nil {
            map["moduleId"] = self.moduleId!
        }
        if self.moduleVersion != nil {
            map["moduleVersion"] = self.moduleVersion!
        }
        if self.name != nil {
            map["name"] = self.name!
        }
        if self.protectionStrategy != nil {
            map["protectionStrategy"] = self.protectionStrategy!
        }
        if self.ramRole != nil {
            map["ramRole"] = self.ramRole!
        }
        if self.skipPropertyValidation != nil {
            map["skipPropertyValidation"] = self.skipPropertyValidation!
        }
        if self.tags != nil {
            var tmp : [Any] = []
            for k in self.tags! {
                tmp.append(k.toMap())
            }
            map["tags"] = tmp
        }
        if self.taskBackend != nil {
            map["taskBackend"] = self.taskBackend?.toMap()
        }
        if self.terraformVersion != nil {
            map["terraformVersion"] = self.terraformVersion!
        }
        if self.triggerStrategy != nil {
            map["triggerStrategy"] = self.triggerStrategy!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["autoApply"] as? Bool {
            self.autoApply = value
        }
        if let value = dict["autoDestroy"] as? Bool {
            self.autoDestroy = value
        }
        if let value = dict["clientToken"] as? String {
            self.clientToken = value
        }
        if let value = dict["description"] as? String {
            self.description_ = value
        }
        if let value = dict["groupInfo"] as? [String: Any?] {
            var model = CreateTaskRequest.GroupInfo()
            model.fromMap(value)
            self.groupInfo = model
        }
        if let value = dict["initModuleState"] as? Bool {
            self.initModuleState = value
        }
        if let value = dict["moduleId"] as? String {
            self.moduleId = value
        }
        if let value = dict["moduleVersion"] as? String {
            self.moduleVersion = value
        }
        if let value = dict["name"] as? String {
            self.name = value
        }
        if let value = dict["protectionStrategy"] as? [String] {
            self.protectionStrategy = value
        }
        if let value = dict["ramRole"] as? String {
            self.ramRole = value
        }
        if let value = dict["skipPropertyValidation"] as? Bool {
            self.skipPropertyValidation = value
        }
        if let value = dict["tags"] as? [Any?] {
            var tmp : [CreateTaskRequest.Tags] = []
            for v in value {
                if v != nil {
                    var model = CreateTaskRequest.Tags()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.tags = tmp
        }
        if let value = dict["taskBackend"] as? [String: Any?] {
            var model = CreateTaskRequest.TaskBackend()
            model.fromMap(value)
            self.taskBackend = model
        }
        if let value = dict["terraformVersion"] as? String {
            self.terraformVersion = value
        }
        if let value = dict["triggerStrategy"] as? String {
            self.triggerStrategy = value
        }
    }
}

public class CreateTaskResponseBody : Tea.TeaModel {
    public var requestId: String?

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
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        if self.taskId != nil {
            map["taskId"] = self.taskId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
        if let value = dict["taskId"] as? String {
            self.taskId = value
        }
    }
}

public class CreateTaskResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateTaskResponseBody?

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
            var model = CreateTaskResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DeleteGroupResponseBody : Tea.TeaModel {
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
            map["requestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
    }
}

public class DeleteGroupResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteGroupResponseBody?

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
            var model = DeleteGroupResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DeleteModuleResponseBody : Tea.TeaModel {
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
            map["requestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
    }
}

public class DeleteModuleResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteModuleResponseBody?

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
            var model = DeleteModuleResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DeleteProjectResponseBody : Tea.TeaModel {
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
            map["requestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
    }
}

public class DeleteProjectResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteProjectResponseBody?

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
            var model = DeleteProjectResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DeleteRegistryModuleResponseBody : Tea.TeaModel {
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
            map["requestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
    }
}

public class DeleteRegistryModuleResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteRegistryModuleResponseBody?

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
            var model = DeleteRegistryModuleResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DeleteRegistryModuleVersionResponseBody : Tea.TeaModel {
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
            map["requestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
    }
}

public class DeleteRegistryModuleVersionResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteRegistryModuleVersionResponseBody?

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
            var model = DeleteRegistryModuleVersionResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DeleteRegistryNamespaceResponseBody : Tea.TeaModel {
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
            map["requestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
    }
}

public class DeleteRegistryNamespaceResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteRegistryNamespaceResponseBody?

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
            var model = DeleteRegistryNamespaceResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DeleteResourceExportTaskResponseBody : Tea.TeaModel {
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
            map["requestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
    }
}

public class DeleteResourceExportTaskResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteResourceExportTaskResponseBody?

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
            var model = DeleteResourceExportTaskResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DeleteTaskResponseBody : Tea.TeaModel {
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
            map["requestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
    }
}

public class DeleteTaskResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteTaskResponseBody?

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
            var model = DeleteTaskResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DissociateGroupRequest : Tea.TeaModel {
    public var clientToken: String?

    public var resourceIds: [String]?

    public var resourceType: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.clientToken != nil {
            map["clientToken"] = self.clientToken!
        }
        if self.resourceIds != nil {
            map["resourceIds"] = self.resourceIds!
        }
        if self.resourceType != nil {
            map["resourceType"] = self.resourceType!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["clientToken"] as? String {
            self.clientToken = value
        }
        if let value = dict["resourceIds"] as? [String] {
            self.resourceIds = value
        }
        if let value = dict["resourceType"] as? String {
            self.resourceType = value
        }
    }
}

public class DissociateGroupResponseBody : Tea.TeaModel {
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
            map["requestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
    }
}

public class DissociateGroupResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DissociateGroupResponseBody?

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
            var model = DissociateGroupResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ExecuteRegistryModuleRequest : Tea.TeaModel {
    public var clientToken: String?

    public var parameters: [String: Any]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.clientToken != nil {
            map["clientToken"] = self.clientToken!
        }
        if self.parameters != nil {
            map["parameters"] = self.parameters!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["clientToken"] as? String {
            self.clientToken = value
        }
        if let value = dict["parameters"] as? [String: Any] {
            self.parameters = value
        }
    }
}

public class ExecuteRegistryModuleResponseBody : Tea.TeaModel {
    public var requestId: String?

    public var stateId: String?

    public override init() {
        super.init()
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
            map["requestId"] = self.requestId!
        }
        if self.stateId != nil {
            map["stateId"] = self.stateId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
        if let value = dict["stateId"] as? String {
            self.stateId = value
        }
    }
}

public class ExecuteRegistryModuleResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ExecuteRegistryModuleResponseBody?

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
            var model = ExecuteRegistryModuleResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ExecuteResourceExportTaskRequest : Tea.TeaModel {
    public var clientToken: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.clientToken != nil {
            map["clientToken"] = self.clientToken!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["clientToken"] as? String {
            self.clientToken = value
        }
    }
}

public class ExecuteResourceExportTaskResponseBody : Tea.TeaModel {
    public var exportTaskId: String?

    public var exportVersion: String?

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
        if self.exportTaskId != nil {
            map["exportTaskId"] = self.exportTaskId!
        }
        if self.exportVersion != nil {
            map["exportVersion"] = self.exportVersion!
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["exportTaskId"] as? String {
            self.exportTaskId = value
        }
        if let value = dict["exportVersion"] as? String {
            self.exportVersion = value
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
    }
}

public class ExecuteResourceExportTaskResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ExecuteResourceExportTaskResponseBody?

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
            var model = ExecuteResourceExportTaskResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ExecuteTerraformApplyRequest : Tea.TeaModel {
    public var clientToken: String?

    public var code: String?

    public var stateId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.clientToken != nil {
            map["clientToken"] = self.clientToken!
        }
        if self.code != nil {
            map["code"] = self.code!
        }
        if self.stateId != nil {
            map["stateId"] = self.stateId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["clientToken"] as? String {
            self.clientToken = value
        }
        if let value = dict["code"] as? String {
            self.code = value
        }
        if let value = dict["stateId"] as? String {
            self.stateId = value
        }
    }
}

public class ExecuteTerraformApplyResponseBody : Tea.TeaModel {
    public var requestId: String?

    public var stateId: String?

    public override init() {
        super.init()
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
            map["requestId"] = self.requestId!
        }
        if self.stateId != nil {
            map["stateId"] = self.stateId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
        if let value = dict["stateId"] as? String {
            self.stateId = value
        }
    }
}

public class ExecuteTerraformApplyResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ExecuteTerraformApplyResponseBody?

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
            var model = ExecuteTerraformApplyResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ExecuteTerraformDestroyRequest : Tea.TeaModel {
    public var clientToken: String?

    public var stateId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.clientToken != nil {
            map["clientToken"] = self.clientToken!
        }
        if self.stateId != nil {
            map["stateId"] = self.stateId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["clientToken"] as? String {
            self.clientToken = value
        }
        if let value = dict["stateId"] as? String {
            self.stateId = value
        }
    }
}

public class ExecuteTerraformDestroyResponseBody : Tea.TeaModel {
    public var requestId: String?

    public var stateId: String?

    public override init() {
        super.init()
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
            map["requestId"] = self.requestId!
        }
        if self.stateId != nil {
            map["stateId"] = self.stateId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
        if let value = dict["stateId"] as? String {
            self.stateId = value
        }
    }
}

public class ExecuteTerraformDestroyResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ExecuteTerraformDestroyResponseBody?

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
            var model = ExecuteTerraformDestroyResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ExecuteTerraformPlanRequest : Tea.TeaModel {
    public var clientToken: String?

    public var code: String?

    public var stateId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.clientToken != nil {
            map["clientToken"] = self.clientToken!
        }
        if self.code != nil {
            map["code"] = self.code!
        }
        if self.stateId != nil {
            map["stateId"] = self.stateId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["clientToken"] as? String {
            self.clientToken = value
        }
        if let value = dict["code"] as? String {
            self.code = value
        }
        if let value = dict["stateId"] as? String {
            self.stateId = value
        }
    }
}

public class ExecuteTerraformPlanResponseBody : Tea.TeaModel {
    public var requestId: String?

    public var stateId: String?

    public override init() {
        super.init()
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
            map["requestId"] = self.requestId!
        }
        if self.stateId != nil {
            map["stateId"] = self.stateId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
        if let value = dict["stateId"] as? String {
            self.stateId = value
        }
    }
}

public class ExecuteTerraformPlanResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ExecuteTerraformPlanResponseBody?

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
            var model = ExecuteTerraformPlanResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetExecuteStateResponseBody : Tea.TeaModel {
    public var errorMessage: String?

    public var logFile: [String: Any]?

    public var requestId: String?

    public var state: String?

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
        if self.errorMessage != nil {
            map["errorMessage"] = self.errorMessage!
        }
        if self.logFile != nil {
            map["logFile"] = self.logFile!
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        if self.state != nil {
            map["state"] = self.state!
        }
        if self.status != nil {
            map["status"] = self.status!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["errorMessage"] as? String {
            self.errorMessage = value
        }
        if let value = dict["logFile"] as? [String: Any] {
            self.logFile = value
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
        if let value = dict["state"] as? String {
            self.state = value
        }
        if let value = dict["status"] as? String {
            self.status = value
        }
    }
}

public class GetExecuteStateResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetExecuteStateResponseBody?

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
            var model = GetExecuteStateResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetGroupResponseBody : Tea.TeaModel {
    public class Group : Tea.TeaModel {
        public class NotifyConfig : Tea.TeaModel {
            public var notifyPath: String?

            public var notifyType: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.notifyPath != nil {
                    map["notifyPath"] = self.notifyPath!
                }
                if self.notifyType != nil {
                    map["notifyType"] = self.notifyType!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["notifyPath"] as? String {
                    self.notifyPath = value
                }
                if let value = dict["notifyType"] as? String {
                    self.notifyType = value
                }
            }
        }
        public class TriggerConfig : Tea.TeaModel {
            public var triggerStrategy: String?

            public var triggerValue: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.triggerStrategy != nil {
                    map["triggerStrategy"] = self.triggerStrategy!
                }
                if self.triggerValue != nil {
                    map["triggerValue"] = self.triggerValue!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["triggerStrategy"] as? String {
                    self.triggerStrategy = value
                }
                if let value = dict["triggerValue"] as? String {
                    self.triggerValue = value
                }
            }
        }
        public var autoDestroy: Bool?

        public var autoTrigger: Bool?

        public var createTime: String?

        public var description_: String?

        public var forcedSetting: Bool?

        public var groupId: String?

        public var name: String?

        public var notifyConfig: [GetGroupResponseBody.Group.NotifyConfig]?

        public var notifyOperationTypes: [String]?

        public var projectId: String?

        public var ramRole: String?

        public var reportExportField: [String]?

        public var reportExportPath: String?

        public var taskCnt: Int64?

        public var terraformProviderVersion: String?

        public var triggerConfig: [GetGroupResponseBody.Group.TriggerConfig]?

        public var triggerResourceType: [String]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.autoDestroy != nil {
                map["autoDestroy"] = self.autoDestroy!
            }
            if self.autoTrigger != nil {
                map["autoTrigger"] = self.autoTrigger!
            }
            if self.createTime != nil {
                map["createTime"] = self.createTime!
            }
            if self.description_ != nil {
                map["description"] = self.description_!
            }
            if self.forcedSetting != nil {
                map["forcedSetting"] = self.forcedSetting!
            }
            if self.groupId != nil {
                map["groupId"] = self.groupId!
            }
            if self.name != nil {
                map["name"] = self.name!
            }
            if self.notifyConfig != nil {
                var tmp : [Any] = []
                for k in self.notifyConfig! {
                    tmp.append(k.toMap())
                }
                map["notifyConfig"] = tmp
            }
            if self.notifyOperationTypes != nil {
                map["notifyOperationTypes"] = self.notifyOperationTypes!
            }
            if self.projectId != nil {
                map["projectId"] = self.projectId!
            }
            if self.ramRole != nil {
                map["ramRole"] = self.ramRole!
            }
            if self.reportExportField != nil {
                map["reportExportField"] = self.reportExportField!
            }
            if self.reportExportPath != nil {
                map["reportExportPath"] = self.reportExportPath!
            }
            if self.taskCnt != nil {
                map["taskCnt"] = self.taskCnt!
            }
            if self.terraformProviderVersion != nil {
                map["terraformProviderVersion"] = self.terraformProviderVersion!
            }
            if self.triggerConfig != nil {
                var tmp : [Any] = []
                for k in self.triggerConfig! {
                    tmp.append(k.toMap())
                }
                map["triggerConfig"] = tmp
            }
            if self.triggerResourceType != nil {
                map["triggerResourceType"] = self.triggerResourceType!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["autoDestroy"] as? Bool {
                self.autoDestroy = value
            }
            if let value = dict["autoTrigger"] as? Bool {
                self.autoTrigger = value
            }
            if let value = dict["createTime"] as? String {
                self.createTime = value
            }
            if let value = dict["description"] as? String {
                self.description_ = value
            }
            if let value = dict["forcedSetting"] as? Bool {
                self.forcedSetting = value
            }
            if let value = dict["groupId"] as? String {
                self.groupId = value
            }
            if let value = dict["name"] as? String {
                self.name = value
            }
            if let value = dict["notifyConfig"] as? [Any?] {
                var tmp : [GetGroupResponseBody.Group.NotifyConfig] = []
                for v in value {
                    if v != nil {
                        var model = GetGroupResponseBody.Group.NotifyConfig()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.notifyConfig = tmp
            }
            if let value = dict["notifyOperationTypes"] as? [String] {
                self.notifyOperationTypes = value
            }
            if let value = dict["projectId"] as? String {
                self.projectId = value
            }
            if let value = dict["ramRole"] as? String {
                self.ramRole = value
            }
            if let value = dict["reportExportField"] as? [String] {
                self.reportExportField = value
            }
            if let value = dict["reportExportPath"] as? String {
                self.reportExportPath = value
            }
            if let value = dict["taskCnt"] as? Int64 {
                self.taskCnt = value
            }
            if let value = dict["terraformProviderVersion"] as? String {
                self.terraformProviderVersion = value
            }
            if let value = dict["triggerConfig"] as? [Any?] {
                var tmp : [GetGroupResponseBody.Group.TriggerConfig] = []
                for v in value {
                    if v != nil {
                        var model = GetGroupResponseBody.Group.TriggerConfig()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.triggerConfig = tmp
            }
            if let value = dict["triggerResourceType"] as? [String] {
                self.triggerResourceType = value
            }
        }
    }
    public var group: GetGroupResponseBody.Group?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.group?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.group != nil {
            map["group"] = self.group?.toMap()
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["group"] as? [String: Any?] {
            var model = GetGroupResponseBody.Group()
            model.fromMap(value)
            self.group = model
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
    }
}

public class GetGroupResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetGroupResponseBody?

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
            var model = GetGroupResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetJobRequest : Tea.TeaModel {
    public var taskType: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.taskType != nil {
            map["taskType"] = self.taskType!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["taskType"] as? String {
            self.taskType = value
        }
    }
}

public class GetJobResponseBody : Tea.TeaModel {
    public class Job : Tea.TeaModel {
        public class AssertCheckDetail : Tea.TeaModel {
            public var comparison: String?

            public var expectedValue: String?

            public var isPass: Bool?

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
                if self.comparison != nil {
                    map["comparison"] = self.comparison!
                }
                if self.expectedValue != nil {
                    map["expectedValue"] = self.expectedValue!
                }
                if self.isPass != nil {
                    map["isPass"] = self.isPass!
                }
                if self.type != nil {
                    map["type"] = self.type!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["comparison"] as? String {
                    self.comparison = value
                }
                if let value = dict["expectedValue"] as? String {
                    self.expectedValue = value
                }
                if let value = dict["isPass"] as? Bool {
                    self.isPass = value
                }
                if let value = dict["type"] as? String {
                    self.type = value
                }
            }
        }
        public class Config : Tea.TeaModel {
            public var autoApply: Bool?

            public var isDestroy: Bool?

            public var moduleVersion: String?

            public var resourcesChanged: String?

            public var subCommand: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.autoApply != nil {
                    map["autoApply"] = self.autoApply!
                }
                if self.isDestroy != nil {
                    map["isDestroy"] = self.isDestroy!
                }
                if self.moduleVersion != nil {
                    map["moduleVersion"] = self.moduleVersion!
                }
                if self.resourcesChanged != nil {
                    map["resourcesChanged"] = self.resourcesChanged!
                }
                if self.subCommand != nil {
                    map["subCommand"] = self.subCommand!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["autoApply"] as? Bool {
                    self.autoApply = value
                }
                if let value = dict["isDestroy"] as? Bool {
                    self.isDestroy = value
                }
                if let value = dict["moduleVersion"] as? String {
                    self.moduleVersion = value
                }
                if let value = dict["resourcesChanged"] as? String {
                    self.resourcesChanged = value
                }
                if let value = dict["subCommand"] as? String {
                    self.subCommand = value
                }
            }
        }
        public var assertCheckDetail: [GetJobResponseBody.Job.AssertCheckDetail]?

        public var config: GetJobResponseBody.Job.Config?

        public var createTime: String?

        public var description_: String?

        public var downloadUrl: [String: Any]?

        public var elapsedTime: Int64?

        public var executeType: String?

        public var isPassAssertCheck: Bool?

        public var jobId: String?

        public var logFile: [String: Any]?

        public var output: String?

        public var outputJsonPlan: Any?

        public var parameters: [String: String]?

        public var status: String?

        public var statusDetail: [String: JobStatusDetailValue]?

        public var taskId: String?

        public var taskType: String?

        public var terraformProviderVersion: String?

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
            if self.assertCheckDetail != nil {
                var tmp : [Any] = []
                for k in self.assertCheckDetail! {
                    tmp.append(k.toMap())
                }
                map["assertCheckDetail"] = tmp
            }
            if self.config != nil {
                map["config"] = self.config?.toMap()
            }
            if self.createTime != nil {
                map["createTime"] = self.createTime!
            }
            if self.description_ != nil {
                map["description"] = self.description_!
            }
            if self.downloadUrl != nil {
                map["downloadUrl"] = self.downloadUrl!
            }
            if self.elapsedTime != nil {
                map["elapsedTime"] = self.elapsedTime!
            }
            if self.executeType != nil {
                map["executeType"] = self.executeType!
            }
            if self.isPassAssertCheck != nil {
                map["isPassAssertCheck"] = self.isPassAssertCheck!
            }
            if self.jobId != nil {
                map["jobId"] = self.jobId!
            }
            if self.logFile != nil {
                map["logFile"] = self.logFile!
            }
            if self.output != nil {
                map["output"] = self.output!
            }
            if self.outputJsonPlan != nil {
                map["outputJsonPlan"] = self.outputJsonPlan!
            }
            if self.parameters != nil {
                map["parameters"] = self.parameters!
            }
            if self.status != nil {
                map["status"] = self.status!
            }
            if self.statusDetail != nil {
                var tmp : [String: Any] = [:]
                for (k, v) in self.statusDetail! {
                    tmp[k] = v.toMap()
                }
                map["statusDetail"] = tmp
            }
            if self.taskId != nil {
                map["taskId"] = self.taskId!
            }
            if self.taskType != nil {
                map["taskType"] = self.taskType!
            }
            if self.terraformProviderVersion != nil {
                map["terraformProviderVersion"] = self.terraformProviderVersion!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["assertCheckDetail"] as? [Any?] {
                var tmp : [GetJobResponseBody.Job.AssertCheckDetail] = []
                for v in value {
                    if v != nil {
                        var model = GetJobResponseBody.Job.AssertCheckDetail()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.assertCheckDetail = tmp
            }
            if let value = dict["config"] as? [String: Any?] {
                var model = GetJobResponseBody.Job.Config()
                model.fromMap(value)
                self.config = model
            }
            if let value = dict["createTime"] as? String {
                self.createTime = value
            }
            if let value = dict["description"] as? String {
                self.description_ = value
            }
            if let value = dict["downloadUrl"] as? [String: Any] {
                self.downloadUrl = value
            }
            if let value = dict["elapsedTime"] as? Int64 {
                self.elapsedTime = value
            }
            if let value = dict["executeType"] as? String {
                self.executeType = value
            }
            if let value = dict["isPassAssertCheck"] as? Bool {
                self.isPassAssertCheck = value
            }
            if let value = dict["jobId"] as? String {
                self.jobId = value
            }
            if let value = dict["logFile"] as? [String: Any] {
                self.logFile = value
            }
            if let value = dict["output"] as? String {
                self.output = value
            }
            if let value = dict["outputJsonPlan"] as? Any {
                self.outputJsonPlan = value
            }
            if let value = dict["parameters"] as? [String: String] {
                self.parameters = value
            }
            if let value = dict["status"] as? String {
                self.status = value
            }
            if let value = dict["statusDetail"] as? [String: Any?] {
                var tmp : [String: JobStatusDetailValue] = [:]
                for (k, v) in value {
                    if v != nil {
                        var model = JobStatusDetailValue()
                        model.fromMap(v as? [String: Any?])
                        tmp[k] = model
                    }
                }
                self.statusDetail = tmp
            }
            if let value = dict["taskId"] as? String {
                self.taskId = value
            }
            if let value = dict["taskType"] as? String {
                self.taskType = value
            }
            if let value = dict["terraformProviderVersion"] as? String {
                self.terraformProviderVersion = value
            }
        }
    }
    public var job: GetJobResponseBody.Job?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.job?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.job != nil {
            map["job"] = self.job?.toMap()
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["job"] as? [String: Any?] {
            var model = GetJobResponseBody.Job()
            model.fromMap(value)
            self.job = model
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
    }
}

public class GetJobResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetJobResponseBody?

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
            var model = GetJobResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetModuleResponseBody : Tea.TeaModel {
    public class Module : Tea.TeaModel {
        public class GroupInfo : Tea.TeaModel {
            public var groupId: String?

            public var groupName: String?

            public var projectId: String?

            public var projectName: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.groupId != nil {
                    map["groupId"] = self.groupId!
                }
                if self.groupName != nil {
                    map["groupName"] = self.groupName!
                }
                if self.projectId != nil {
                    map["projectId"] = self.projectId!
                }
                if self.projectName != nil {
                    map["projectName"] = self.projectName!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["groupId"] as? String {
                    self.groupId = value
                }
                if let value = dict["groupName"] as? String {
                    self.groupName = value
                }
                if let value = dict["projectId"] as? String {
                    self.projectId = value
                }
                if let value = dict["projectName"] as? String {
                    self.projectName = value
                }
            }
        }
        public class Tags : Tea.TeaModel {
            public var tagKey: String?

            public var tagValue: String?

            public override init() {
                super.init()
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
                    map["tagKey"] = self.tagKey!
                }
                if self.tagValue != nil {
                    map["tagValue"] = self.tagValue!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["tagKey"] as? String {
                    self.tagKey = value
                }
                if let value = dict["tagValue"] as? String {
                    self.tagValue = value
                }
            }
        }
        public var createTime: String?

        public var description_: String?

        public var groupInfo: GetModuleResponseBody.Module.GroupInfo?

        public var latestVersion: String?

        public var moduleId: String?

        public var name: String?

        public var outputPath: String?

        public var source: String?

        public var sourcePath: String?

        public var statePath: String?

        public var status: String?

        public var tags: [GetModuleResponseBody.Module.Tags]?

        public var versionStrategy: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.groupInfo?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.createTime != nil {
                map["createTime"] = self.createTime!
            }
            if self.description_ != nil {
                map["description"] = self.description_!
            }
            if self.groupInfo != nil {
                map["groupInfo"] = self.groupInfo?.toMap()
            }
            if self.latestVersion != nil {
                map["latestVersion"] = self.latestVersion!
            }
            if self.moduleId != nil {
                map["moduleId"] = self.moduleId!
            }
            if self.name != nil {
                map["name"] = self.name!
            }
            if self.outputPath != nil {
                map["outputPath"] = self.outputPath!
            }
            if self.source != nil {
                map["source"] = self.source!
            }
            if self.sourcePath != nil {
                map["sourcePath"] = self.sourcePath!
            }
            if self.statePath != nil {
                map["statePath"] = self.statePath!
            }
            if self.status != nil {
                map["status"] = self.status!
            }
            if self.tags != nil {
                var tmp : [Any] = []
                for k in self.tags! {
                    tmp.append(k.toMap())
                }
                map["tags"] = tmp
            }
            if self.versionStrategy != nil {
                map["versionStrategy"] = self.versionStrategy!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["createTime"] as? String {
                self.createTime = value
            }
            if let value = dict["description"] as? String {
                self.description_ = value
            }
            if let value = dict["groupInfo"] as? [String: Any?] {
                var model = GetModuleResponseBody.Module.GroupInfo()
                model.fromMap(value)
                self.groupInfo = model
            }
            if let value = dict["latestVersion"] as? String {
                self.latestVersion = value
            }
            if let value = dict["moduleId"] as? String {
                self.moduleId = value
            }
            if let value = dict["name"] as? String {
                self.name = value
            }
            if let value = dict["outputPath"] as? String {
                self.outputPath = value
            }
            if let value = dict["source"] as? String {
                self.source = value
            }
            if let value = dict["sourcePath"] as? String {
                self.sourcePath = value
            }
            if let value = dict["statePath"] as? String {
                self.statePath = value
            }
            if let value = dict["status"] as? String {
                self.status = value
            }
            if let value = dict["tags"] as? [Any?] {
                var tmp : [GetModuleResponseBody.Module.Tags] = []
                for v in value {
                    if v != nil {
                        var model = GetModuleResponseBody.Module.Tags()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.tags = tmp
            }
            if let value = dict["versionStrategy"] as? String {
                self.versionStrategy = value
            }
        }
    }
    public var module: GetModuleResponseBody.Module?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.module?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.module != nil {
            map["module"] = self.module?.toMap()
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["module"] as? [String: Any?] {
            var model = GetModuleResponseBody.Module()
            model.fromMap(value)
            self.module = model
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
    }
}

public class GetModuleResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetModuleResponseBody?

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
            var model = GetModuleResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetModuleVersionResponseBody : Tea.TeaModel {
    public class Version : Tea.TeaModel {
        public var createTime: String?

        public var description_: String?

        public var moduleId: String?

        public var moduleVersion: String?

        public var name: String?

        public var source: String?

        public var sourcePath: String?

        public var statePath: String?

        public var terraformContext: [String: Any]?

        public var versionStrategy: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.createTime != nil {
                map["createTime"] = self.createTime!
            }
            if self.description_ != nil {
                map["description"] = self.description_!
            }
            if self.moduleId != nil {
                map["moduleId"] = self.moduleId!
            }
            if self.moduleVersion != nil {
                map["moduleVersion"] = self.moduleVersion!
            }
            if self.name != nil {
                map["name"] = self.name!
            }
            if self.source != nil {
                map["source"] = self.source!
            }
            if self.sourcePath != nil {
                map["sourcePath"] = self.sourcePath!
            }
            if self.statePath != nil {
                map["statePath"] = self.statePath!
            }
            if self.terraformContext != nil {
                map["terraformContext"] = self.terraformContext!
            }
            if self.versionStrategy != nil {
                map["versionStrategy"] = self.versionStrategy!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["createTime"] as? String {
                self.createTime = value
            }
            if let value = dict["description"] as? String {
                self.description_ = value
            }
            if let value = dict["moduleId"] as? String {
                self.moduleId = value
            }
            if let value = dict["moduleVersion"] as? String {
                self.moduleVersion = value
            }
            if let value = dict["name"] as? String {
                self.name = value
            }
            if let value = dict["source"] as? String {
                self.source = value
            }
            if let value = dict["sourcePath"] as? String {
                self.sourcePath = value
            }
            if let value = dict["statePath"] as? String {
                self.statePath = value
            }
            if let value = dict["terraformContext"] as? [String: Any] {
                self.terraformContext = value
            }
            if let value = dict["versionStrategy"] as? String {
                self.versionStrategy = value
            }
        }
    }
    public var requestId: String?

    public var version: GetModuleVersionResponseBody.Version?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.version?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        if self.version != nil {
            map["version"] = self.version?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
        if let value = dict["version"] as? [String: Any?] {
            var model = GetModuleVersionResponseBody.Version()
            model.fromMap(value)
            self.version = model
        }
    }
}

public class GetModuleVersionResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetModuleVersionResponseBody?

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
            var model = GetModuleVersionResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetProjectResponseBody : Tea.TeaModel {
    public class Project : Tea.TeaModel {
        public var createTime: String?

        public var description_: String?

        public var name: String?

        public var projectId: String?

        public var taskCnt: Int64?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.createTime != nil {
                map["createTime"] = self.createTime!
            }
            if self.description_ != nil {
                map["description"] = self.description_!
            }
            if self.name != nil {
                map["name"] = self.name!
            }
            if self.projectId != nil {
                map["projectId"] = self.projectId!
            }
            if self.taskCnt != nil {
                map["taskCnt"] = self.taskCnt!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["createTime"] as? String {
                self.createTime = value
            }
            if let value = dict["description"] as? String {
                self.description_ = value
            }
            if let value = dict["name"] as? String {
                self.name = value
            }
            if let value = dict["projectId"] as? String {
                self.projectId = value
            }
            if let value = dict["taskCnt"] as? Int64 {
                self.taskCnt = value
            }
        }
    }
    public var project: GetProjectResponseBody.Project?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.project?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.project != nil {
            map["project"] = self.project?.toMap()
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["project"] as? [String: Any?] {
            var model = GetProjectResponseBody.Project()
            model.fromMap(value)
            self.project = model
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
    }
}

public class GetProjectResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetProjectResponseBody?

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
            var model = GetProjectResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetRegistryModuleResponseBody : Tea.TeaModel {
    public class RegistryModule : Tea.TeaModel {
        public var acl: String?

        public var createTime: String?

        public var description_: String?

        public var downloads: Int32?

        public var moduleName: String?

        public var namespaceName: String?

        public var provider: String?

        public var sharedAccounts: [Int64]?

        public var source: String?

        public var sourceUrl: String?

        public var type: String?

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
            if self.acl != nil {
                map["acl"] = self.acl!
            }
            if self.createTime != nil {
                map["createTime"] = self.createTime!
            }
            if self.description_ != nil {
                map["description"] = self.description_!
            }
            if self.downloads != nil {
                map["downloads"] = self.downloads!
            }
            if self.moduleName != nil {
                map["moduleName"] = self.moduleName!
            }
            if self.namespaceName != nil {
                map["namespaceName"] = self.namespaceName!
            }
            if self.provider != nil {
                map["provider"] = self.provider!
            }
            if self.sharedAccounts != nil {
                map["sharedAccounts"] = self.sharedAccounts!
            }
            if self.source != nil {
                map["source"] = self.source!
            }
            if self.sourceUrl != nil {
                map["sourceUrl"] = self.sourceUrl!
            }
            if self.type != nil {
                map["type"] = self.type!
            }
            if self.version != nil {
                map["version"] = self.version!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["acl"] as? String {
                self.acl = value
            }
            if let value = dict["createTime"] as? String {
                self.createTime = value
            }
            if let value = dict["description"] as? String {
                self.description_ = value
            }
            if let value = dict["downloads"] as? Int32 {
                self.downloads = value
            }
            if let value = dict["moduleName"] as? String {
                self.moduleName = value
            }
            if let value = dict["namespaceName"] as? String {
                self.namespaceName = value
            }
            if let value = dict["provider"] as? String {
                self.provider = value
            }
            if let value = dict["sharedAccounts"] as? [Int64] {
                self.sharedAccounts = value
            }
            if let value = dict["source"] as? String {
                self.source = value
            }
            if let value = dict["sourceUrl"] as? String {
                self.sourceUrl = value
            }
            if let value = dict["type"] as? String {
                self.type = value
            }
            if let value = dict["version"] as? String {
                self.version = value
            }
        }
    }
    public var registryModule: GetRegistryModuleResponseBody.RegistryModule?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.registryModule?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.registryModule != nil {
            map["registryModule"] = self.registryModule?.toMap()
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["registryModule"] as? [String: Any?] {
            var model = GetRegistryModuleResponseBody.RegistryModule()
            model.fromMap(value)
            self.registryModule = model
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
    }
}

public class GetRegistryModuleResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetRegistryModuleResponseBody?

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
            var model = GetRegistryModuleResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetRegistryModuleVersionResponseBody : Tea.TeaModel {
    public class ModuleVersion : Tea.TeaModel {
        public var createTime: String?

        public var detailUrl: String?

        public var downloads: String?

        public var moduleName: String?

        public var namespaceName: String?

        public var provider: String?

        public var source: String?

        public var sourceUrl: String?

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
            if self.createTime != nil {
                map["createTime"] = self.createTime!
            }
            if self.detailUrl != nil {
                map["detailUrl"] = self.detailUrl!
            }
            if self.downloads != nil {
                map["downloads"] = self.downloads!
            }
            if self.moduleName != nil {
                map["moduleName"] = self.moduleName!
            }
            if self.namespaceName != nil {
                map["namespaceName"] = self.namespaceName!
            }
            if self.provider != nil {
                map["provider"] = self.provider!
            }
            if self.source != nil {
                map["source"] = self.source!
            }
            if self.sourceUrl != nil {
                map["sourceUrl"] = self.sourceUrl!
            }
            if self.version != nil {
                map["version"] = self.version!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["createTime"] as? String {
                self.createTime = value
            }
            if let value = dict["detailUrl"] as? String {
                self.detailUrl = value
            }
            if let value = dict["downloads"] as? String {
                self.downloads = value
            }
            if let value = dict["moduleName"] as? String {
                self.moduleName = value
            }
            if let value = dict["namespaceName"] as? String {
                self.namespaceName = value
            }
            if let value = dict["provider"] as? String {
                self.provider = value
            }
            if let value = dict["source"] as? String {
                self.source = value
            }
            if let value = dict["sourceUrl"] as? String {
                self.sourceUrl = value
            }
            if let value = dict["version"] as? String {
                self.version = value
            }
        }
    }
    public var moduleVersion: GetRegistryModuleVersionResponseBody.ModuleVersion?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.moduleVersion?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.moduleVersion != nil {
            map["moduleVersion"] = self.moduleVersion?.toMap()
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["moduleVersion"] as? [String: Any?] {
            var model = GetRegistryModuleVersionResponseBody.ModuleVersion()
            model.fromMap(value)
            self.moduleVersion = model
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
    }
}

public class GetRegistryModuleVersionResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetRegistryModuleVersionResponseBody?

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
            var model = GetRegistryModuleVersionResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetRegistryNamespaceResponseBody : Tea.TeaModel {
    public class Namespace : Tea.TeaModel {
        public var acl: String?

        public var createTime: String?

        public var description_: String?

        public var maintainer: String?

        public var modules: Int32?

        public var namespaceName: String?

        public var sharedAccounts: [Int64]?

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
            if self.acl != nil {
                map["acl"] = self.acl!
            }
            if self.createTime != nil {
                map["createTime"] = self.createTime!
            }
            if self.description_ != nil {
                map["description"] = self.description_!
            }
            if self.maintainer != nil {
                map["maintainer"] = self.maintainer!
            }
            if self.modules != nil {
                map["modules"] = self.modules!
            }
            if self.namespaceName != nil {
                map["namespaceName"] = self.namespaceName!
            }
            if self.sharedAccounts != nil {
                map["sharedAccounts"] = self.sharedAccounts!
            }
            if self.type != nil {
                map["type"] = self.type!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["acl"] as? String {
                self.acl = value
            }
            if let value = dict["createTime"] as? String {
                self.createTime = value
            }
            if let value = dict["description"] as? String {
                self.description_ = value
            }
            if let value = dict["maintainer"] as? String {
                self.maintainer = value
            }
            if let value = dict["modules"] as? Int32 {
                self.modules = value
            }
            if let value = dict["namespaceName"] as? String {
                self.namespaceName = value
            }
            if let value = dict["sharedAccounts"] as? [Int64] {
                self.sharedAccounts = value
            }
            if let value = dict["type"] as? String {
                self.type = value
            }
        }
    }
    public var namespace: GetRegistryNamespaceResponseBody.Namespace?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.namespace?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.namespace != nil {
            map["namespace"] = self.namespace?.toMap()
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["namespace"] as? [String: Any?] {
            var model = GetRegistryNamespaceResponseBody.Namespace()
            model.fromMap(value)
            self.namespace = model
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
    }
}

public class GetRegistryNamespaceResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetRegistryNamespaceResponseBody?

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
            var model = GetRegistryNamespaceResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetResourceExportTaskRequest : Tea.TeaModel {
    public var exportVersion: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.exportVersion != nil {
            map["exportVersion"] = self.exportVersion!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["exportVersion"] as? String {
            self.exportVersion = value
        }
    }
}

public class GetResourceExportTaskResponseBody : Tea.TeaModel {
    public class Task : Tea.TeaModel {
        public class ExportToModule : Tea.TeaModel {
            public var source: String?

            public var sourcePath: String?

            public var statePath: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.source != nil {
                    map["source"] = self.source!
                }
                if self.sourcePath != nil {
                    map["sourcePath"] = self.sourcePath!
                }
                if self.statePath != nil {
                    map["statePath"] = self.statePath!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["source"] as? String {
                    self.source = value
                }
                if let value = dict["sourcePath"] as? String {
                    self.sourcePath = value
                }
                if let value = dict["statePath"] as? String {
                    self.statePath = value
                }
            }
        }
        public class IncludeRules : Tea.TeaModel {
            public var key: String?

            public var values: [String]?

            public override init() {
                super.init()
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
                    map["key"] = self.key!
                }
                if self.values != nil {
                    map["values"] = self.values!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["key"] as? String {
                    self.key = value
                }
                if let value = dict["values"] as? [String] {
                    self.values = value
                }
            }
        }
        public class Modules : Tea.TeaModel {
            public var source: String?

            public var sourcePath: String?

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
                if self.source != nil {
                    map["source"] = self.source!
                }
                if self.sourcePath != nil {
                    map["sourcePath"] = self.sourcePath!
                }
                if self.version != nil {
                    map["version"] = self.version!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["source"] as? String {
                    self.source = value
                }
                if let value = dict["sourcePath"] as? String {
                    self.sourcePath = value
                }
                if let value = dict["version"] as? String {
                    self.version = value
                }
            }
        }
        public class Variables : Tea.TeaModel {
            public var properties: [String]?

            public var resourceType: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.properties != nil {
                    map["properties"] = self.properties!
                }
                if self.resourceType != nil {
                    map["resourceType"] = self.resourceType!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["properties"] as? [String] {
                    self.properties = value
                }
                if let value = dict["resourceType"] as? String {
                    self.resourceType = value
                }
            }
        }
        public var createTime: String?

        public var description_: String?

        public var elapsedTime: Int64?

        public var exportTaskId: String?

        public var exportToModule: GetResourceExportTaskResponseBody.Task.ExportToModule?

        public var exportVersion: String?

        public var failedReason: String?

        public var includeRules: [GetResourceExportTaskResponseBody.Task.IncludeRules]?

        public var modules: [GetResourceExportTaskResponseBody.Task.Modules]?

        public var name: String?

        public var ramRole: String?

        public var status: String?

        public var taskOutputPath: String?

        public var terraformContext: [String: Any]?

        public var terraformProviderVersion: String?

        public var terraformVersion: String?

        public var triggerStrategy: String?

        public var variables: [GetResourceExportTaskResponseBody.Task.Variables]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.exportToModule?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.createTime != nil {
                map["createTime"] = self.createTime!
            }
            if self.description_ != nil {
                map["description"] = self.description_!
            }
            if self.elapsedTime != nil {
                map["elapsedTime"] = self.elapsedTime!
            }
            if self.exportTaskId != nil {
                map["exportTaskId"] = self.exportTaskId!
            }
            if self.exportToModule != nil {
                map["exportToModule"] = self.exportToModule?.toMap()
            }
            if self.exportVersion != nil {
                map["exportVersion"] = self.exportVersion!
            }
            if self.failedReason != nil {
                map["failedReason"] = self.failedReason!
            }
            if self.includeRules != nil {
                var tmp : [Any] = []
                for k in self.includeRules! {
                    tmp.append(k.toMap())
                }
                map["includeRules"] = tmp
            }
            if self.modules != nil {
                var tmp : [Any] = []
                for k in self.modules! {
                    tmp.append(k.toMap())
                }
                map["modules"] = tmp
            }
            if self.name != nil {
                map["name"] = self.name!
            }
            if self.ramRole != nil {
                map["ramRole"] = self.ramRole!
            }
            if self.status != nil {
                map["status"] = self.status!
            }
            if self.taskOutputPath != nil {
                map["taskOutputPath"] = self.taskOutputPath!
            }
            if self.terraformContext != nil {
                map["terraformContext"] = self.terraformContext!
            }
            if self.terraformProviderVersion != nil {
                map["terraformProviderVersion"] = self.terraformProviderVersion!
            }
            if self.terraformVersion != nil {
                map["terraformVersion"] = self.terraformVersion!
            }
            if self.triggerStrategy != nil {
                map["triggerStrategy"] = self.triggerStrategy!
            }
            if self.variables != nil {
                var tmp : [Any] = []
                for k in self.variables! {
                    tmp.append(k.toMap())
                }
                map["variables"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["createTime"] as? String {
                self.createTime = value
            }
            if let value = dict["description"] as? String {
                self.description_ = value
            }
            if let value = dict["elapsedTime"] as? Int64 {
                self.elapsedTime = value
            }
            if let value = dict["exportTaskId"] as? String {
                self.exportTaskId = value
            }
            if let value = dict["exportToModule"] as? [String: Any?] {
                var model = GetResourceExportTaskResponseBody.Task.ExportToModule()
                model.fromMap(value)
                self.exportToModule = model
            }
            if let value = dict["exportVersion"] as? String {
                self.exportVersion = value
            }
            if let value = dict["failedReason"] as? String {
                self.failedReason = value
            }
            if let value = dict["includeRules"] as? [Any?] {
                var tmp : [GetResourceExportTaskResponseBody.Task.IncludeRules] = []
                for v in value {
                    if v != nil {
                        var model = GetResourceExportTaskResponseBody.Task.IncludeRules()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.includeRules = tmp
            }
            if let value = dict["modules"] as? [Any?] {
                var tmp : [GetResourceExportTaskResponseBody.Task.Modules] = []
                for v in value {
                    if v != nil {
                        var model = GetResourceExportTaskResponseBody.Task.Modules()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.modules = tmp
            }
            if let value = dict["name"] as? String {
                self.name = value
            }
            if let value = dict["ramRole"] as? String {
                self.ramRole = value
            }
            if let value = dict["status"] as? String {
                self.status = value
            }
            if let value = dict["taskOutputPath"] as? String {
                self.taskOutputPath = value
            }
            if let value = dict["terraformContext"] as? [String: Any] {
                self.terraformContext = value
            }
            if let value = dict["terraformProviderVersion"] as? String {
                self.terraformProviderVersion = value
            }
            if let value = dict["terraformVersion"] as? String {
                self.terraformVersion = value
            }
            if let value = dict["triggerStrategy"] as? String {
                self.triggerStrategy = value
            }
            if let value = dict["variables"] as? [Any?] {
                var tmp : [GetResourceExportTaskResponseBody.Task.Variables] = []
                for v in value {
                    if v != nil {
                        var model = GetResourceExportTaskResponseBody.Task.Variables()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.variables = tmp
            }
        }
    }
    public var requestId: String?

    public var task: GetResourceExportTaskResponseBody.Task?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.task?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        if self.task != nil {
            map["task"] = self.task?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
        if let value = dict["task"] as? [String: Any?] {
            var model = GetResourceExportTaskResponseBody.Task()
            model.fromMap(value)
            self.task = model
        }
    }
}

public class GetResourceExportTaskResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetResourceExportTaskResponseBody?

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
            var model = GetResourceExportTaskResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetResourceTypeRequest : Tea.TeaModel {
    public var acceptLanguage: String?

    public var filterReadOnly: Bool?

    public var terraformProviderVersion: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.acceptLanguage != nil {
            map["acceptLanguage"] = self.acceptLanguage!
        }
        if self.filterReadOnly != nil {
            map["filterReadOnly"] = self.filterReadOnly!
        }
        if self.terraformProviderVersion != nil {
            map["terraformProviderVersion"] = self.terraformProviderVersion!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["acceptLanguage"] as? String {
            self.acceptLanguage = value
        }
        if let value = dict["filterReadOnly"] as? Bool {
            self.filterReadOnly = value
        }
        if let value = dict["terraformProviderVersion"] as? String {
            self.terraformProviderVersion = value
        }
    }
}

public class GetResourceTypeResponseBody : Tea.TeaModel {
    public class ResourceType : Tea.TeaModel {
        public class Operations : Tea.TeaModel {
            public var apiName: String?

            public var apiVersion: String?

            public var operationType: String?

            public var serviceCode: String?

            public override init() {
                super.init()
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
                    map["apiName"] = self.apiName!
                }
                if self.apiVersion != nil {
                    map["apiVersion"] = self.apiVersion!
                }
                if self.operationType != nil {
                    map["operationType"] = self.operationType!
                }
                if self.serviceCode != nil {
                    map["serviceCode"] = self.serviceCode!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["apiName"] as? String {
                    self.apiName = value
                }
                if let value = dict["apiVersion"] as? String {
                    self.apiVersion = value
                }
                if let value = dict["operationType"] as? String {
                    self.operationType = value
                }
                if let value = dict["serviceCode"] as? String {
                    self.serviceCode = value
                }
            }
        }
        public var description_: String?

        public var operations: [GetResourceTypeResponseBody.ResourceType.Operations]?

        public var product: String?

        public var productName: String?

        public var productNameEn: String?

        public var properties: [String: Any]?

        public var resourceDetailPageUrl: String?

        public var resourceListPageUrl: String?

        public var status: String?

        public var statusStartVersion: String?

        public var subcategory: String?

        public var supportExported: Bool?

        public var terraformProviderVersion: String?

        public var terraformResourceType: String?

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
                map["description"] = self.description_!
            }
            if self.operations != nil {
                var tmp : [Any] = []
                for k in self.operations! {
                    tmp.append(k.toMap())
                }
                map["operations"] = tmp
            }
            if self.product != nil {
                map["product"] = self.product!
            }
            if self.productName != nil {
                map["productName"] = self.productName!
            }
            if self.productNameEn != nil {
                map["productNameEn"] = self.productNameEn!
            }
            if self.properties != nil {
                map["properties"] = self.properties!
            }
            if self.resourceDetailPageUrl != nil {
                map["resourceDetailPageUrl"] = self.resourceDetailPageUrl!
            }
            if self.resourceListPageUrl != nil {
                map["resourceListPageUrl"] = self.resourceListPageUrl!
            }
            if self.status != nil {
                map["status"] = self.status!
            }
            if self.statusStartVersion != nil {
                map["statusStartVersion"] = self.statusStartVersion!
            }
            if self.subcategory != nil {
                map["subcategory"] = self.subcategory!
            }
            if self.supportExported != nil {
                map["supportExported"] = self.supportExported!
            }
            if self.terraformProviderVersion != nil {
                map["terraformProviderVersion"] = self.terraformProviderVersion!
            }
            if self.terraformResourceType != nil {
                map["terraformResourceType"] = self.terraformResourceType!
            }
            if self.title != nil {
                map["title"] = self.title!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["description"] as? String {
                self.description_ = value
            }
            if let value = dict["operations"] as? [Any?] {
                var tmp : [GetResourceTypeResponseBody.ResourceType.Operations] = []
                for v in value {
                    if v != nil {
                        var model = GetResourceTypeResponseBody.ResourceType.Operations()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.operations = tmp
            }
            if let value = dict["product"] as? String {
                self.product = value
            }
            if let value = dict["productName"] as? String {
                self.productName = value
            }
            if let value = dict["productNameEn"] as? String {
                self.productNameEn = value
            }
            if let value = dict["properties"] as? [String: Any] {
                self.properties = value
            }
            if let value = dict["resourceDetailPageUrl"] as? String {
                self.resourceDetailPageUrl = value
            }
            if let value = dict["resourceListPageUrl"] as? String {
                self.resourceListPageUrl = value
            }
            if let value = dict["status"] as? String {
                self.status = value
            }
            if let value = dict["statusStartVersion"] as? String {
                self.statusStartVersion = value
            }
            if let value = dict["subcategory"] as? String {
                self.subcategory = value
            }
            if let value = dict["supportExported"] as? Bool {
                self.supportExported = value
            }
            if let value = dict["terraformProviderVersion"] as? String {
                self.terraformProviderVersion = value
            }
            if let value = dict["terraformResourceType"] as? String {
                self.terraformResourceType = value
            }
            if let value = dict["title"] as? String {
                self.title = value
            }
        }
    }
    public var requestId: String?

    public var resourceType: GetResourceTypeResponseBody.ResourceType?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.resourceType?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        if self.resourceType != nil {
            map["resourceType"] = self.resourceType?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
        if let value = dict["resourceType"] as? [String: Any?] {
            var model = GetResourceTypeResponseBody.ResourceType()
            model.fromMap(value)
            self.resourceType = model
        }
    }
}

public class GetResourceTypeResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetResourceTypeResponseBody?

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
            var model = GetResourceTypeResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetTaskResponseBody : Tea.TeaModel {
    public class Task : Tea.TeaModel {
        public class GroupInfo : Tea.TeaModel {
            public var groupId: String?

            public var groupName: String?

            public var projectId: String?

            public var projectName: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.groupId != nil {
                    map["groupId"] = self.groupId!
                }
                if self.groupName != nil {
                    map["groupName"] = self.groupName!
                }
                if self.projectId != nil {
                    map["projectId"] = self.projectId!
                }
                if self.projectName != nil {
                    map["projectName"] = self.projectName!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["groupId"] as? String {
                    self.groupId = value
                }
                if let value = dict["groupName"] as? String {
                    self.groupName = value
                }
                if let value = dict["projectId"] as? String {
                    self.projectId = value
                }
                if let value = dict["projectName"] as? String {
                    self.projectName = value
                }
            }
        }
        public class Tags : Tea.TeaModel {
            public var tagKey: String?

            public var tagValue: String?

            public override init() {
                super.init()
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
                    map["tagKey"] = self.tagKey!
                }
                if self.tagValue != nil {
                    map["tagValue"] = self.tagValue!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["tagKey"] as? String {
                    self.tagKey = value
                }
                if let value = dict["tagValue"] as? String {
                    self.tagValue = value
                }
            }
        }
        public class TaskBackend : Tea.TeaModel {
            public var bucketEndpoint: String?

            public var bucketName: String?

            public var objectPath: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.bucketEndpoint != nil {
                    map["bucketEndpoint"] = self.bucketEndpoint!
                }
                if self.bucketName != nil {
                    map["bucketName"] = self.bucketName!
                }
                if self.objectPath != nil {
                    map["objectPath"] = self.objectPath!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["bucketEndpoint"] as? String {
                    self.bucketEndpoint = value
                }
                if let value = dict["bucketName"] as? String {
                    self.bucketName = value
                }
                if let value = dict["objectPath"] as? String {
                    self.objectPath = value
                }
            }
        }
        public var autoApply: Bool?

        public var autoDestroy: Bool?

        public var createTime: String?

        public var currentJobId: String?

        public var currentJobStatus: String?

        public var deletionProtection: Bool?

        public var description_: String?

        public var groupInfo: GetTaskResponseBody.Task.GroupInfo?

        public var initModuleState: Bool?

        public var latestModuleVersion: String?

        public var moduleId: String?

        public var moduleName: String?

        public var moduleVersion: String?

        public var name: String?

        public var protectionStrategy: [String]?

        public var ramRole: String?

        public var skipPropertyValidation: Bool?

        public var status: String?

        public var tags: [GetTaskResponseBody.Task.Tags]?

        public var taskBackend: GetTaskResponseBody.Task.TaskBackend?

        public var taskId: String?

        public var taskOutputPath: String?

        public var terraformVersion: String?

        public var triggerStrategy: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.groupInfo?.validate()
            try self.taskBackend?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.autoApply != nil {
                map["autoApply"] = self.autoApply!
            }
            if self.autoDestroy != nil {
                map["autoDestroy"] = self.autoDestroy!
            }
            if self.createTime != nil {
                map["createTime"] = self.createTime!
            }
            if self.currentJobId != nil {
                map["currentJobId"] = self.currentJobId!
            }
            if self.currentJobStatus != nil {
                map["currentJobStatus"] = self.currentJobStatus!
            }
            if self.deletionProtection != nil {
                map["deletionProtection"] = self.deletionProtection!
            }
            if self.description_ != nil {
                map["description"] = self.description_!
            }
            if self.groupInfo != nil {
                map["groupInfo"] = self.groupInfo?.toMap()
            }
            if self.initModuleState != nil {
                map["initModuleState"] = self.initModuleState!
            }
            if self.latestModuleVersion != nil {
                map["latestModuleVersion"] = self.latestModuleVersion!
            }
            if self.moduleId != nil {
                map["moduleId"] = self.moduleId!
            }
            if self.moduleName != nil {
                map["moduleName"] = self.moduleName!
            }
            if self.moduleVersion != nil {
                map["moduleVersion"] = self.moduleVersion!
            }
            if self.name != nil {
                map["name"] = self.name!
            }
            if self.protectionStrategy != nil {
                map["protectionStrategy"] = self.protectionStrategy!
            }
            if self.ramRole != nil {
                map["ramRole"] = self.ramRole!
            }
            if self.skipPropertyValidation != nil {
                map["skipPropertyValidation"] = self.skipPropertyValidation!
            }
            if self.status != nil {
                map["status"] = self.status!
            }
            if self.tags != nil {
                var tmp : [Any] = []
                for k in self.tags! {
                    tmp.append(k.toMap())
                }
                map["tags"] = tmp
            }
            if self.taskBackend != nil {
                map["taskBackend"] = self.taskBackend?.toMap()
            }
            if self.taskId != nil {
                map["taskId"] = self.taskId!
            }
            if self.taskOutputPath != nil {
                map["taskOutputPath"] = self.taskOutputPath!
            }
            if self.terraformVersion != nil {
                map["terraformVersion"] = self.terraformVersion!
            }
            if self.triggerStrategy != nil {
                map["triggerStrategy"] = self.triggerStrategy!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["autoApply"] as? Bool {
                self.autoApply = value
            }
            if let value = dict["autoDestroy"] as? Bool {
                self.autoDestroy = value
            }
            if let value = dict["createTime"] as? String {
                self.createTime = value
            }
            if let value = dict["currentJobId"] as? String {
                self.currentJobId = value
            }
            if let value = dict["currentJobStatus"] as? String {
                self.currentJobStatus = value
            }
            if let value = dict["deletionProtection"] as? Bool {
                self.deletionProtection = value
            }
            if let value = dict["description"] as? String {
                self.description_ = value
            }
            if let value = dict["groupInfo"] as? [String: Any?] {
                var model = GetTaskResponseBody.Task.GroupInfo()
                model.fromMap(value)
                self.groupInfo = model
            }
            if let value = dict["initModuleState"] as? Bool {
                self.initModuleState = value
            }
            if let value = dict["latestModuleVersion"] as? String {
                self.latestModuleVersion = value
            }
            if let value = dict["moduleId"] as? String {
                self.moduleId = value
            }
            if let value = dict["moduleName"] as? String {
                self.moduleName = value
            }
            if let value = dict["moduleVersion"] as? String {
                self.moduleVersion = value
            }
            if let value = dict["name"] as? String {
                self.name = value
            }
            if let value = dict["protectionStrategy"] as? [String] {
                self.protectionStrategy = value
            }
            if let value = dict["ramRole"] as? String {
                self.ramRole = value
            }
            if let value = dict["skipPropertyValidation"] as? Bool {
                self.skipPropertyValidation = value
            }
            if let value = dict["status"] as? String {
                self.status = value
            }
            if let value = dict["tags"] as? [Any?] {
                var tmp : [GetTaskResponseBody.Task.Tags] = []
                for v in value {
                    if v != nil {
                        var model = GetTaskResponseBody.Task.Tags()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.tags = tmp
            }
            if let value = dict["taskBackend"] as? [String: Any?] {
                var model = GetTaskResponseBody.Task.TaskBackend()
                model.fromMap(value)
                self.taskBackend = model
            }
            if let value = dict["taskId"] as? String {
                self.taskId = value
            }
            if let value = dict["taskOutputPath"] as? String {
                self.taskOutputPath = value
            }
            if let value = dict["terraformVersion"] as? String {
                self.terraformVersion = value
            }
            if let value = dict["triggerStrategy"] as? String {
                self.triggerStrategy = value
            }
        }
    }
    public var requestId: String?

    public var task: GetTaskResponseBody.Task?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.task?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        if self.task != nil {
            map["task"] = self.task?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
        if let value = dict["task"] as? [String: Any?] {
            var model = GetTaskResponseBody.Task()
            model.fromMap(value)
            self.task = model
        }
    }
}

public class GetTaskResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetTaskResponseBody?

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
            var model = GetTaskResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ListExplorerRegistryModuleExamplesRequest : Tea.TeaModel {
    public var exampleName: String?

    public var keyword: String?

    public var maxResults: Int32?

    public var moduleName: String?

    public var moduleVersion: String?

    public var namespaceName: String?

    public var nextToken: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.exampleName != nil {
            map["exampleName"] = self.exampleName!
        }
        if self.keyword != nil {
            map["keyword"] = self.keyword!
        }
        if self.maxResults != nil {
            map["maxResults"] = self.maxResults!
        }
        if self.moduleName != nil {
            map["moduleName"] = self.moduleName!
        }
        if self.moduleVersion != nil {
            map["moduleVersion"] = self.moduleVersion!
        }
        if self.namespaceName != nil {
            map["namespaceName"] = self.namespaceName!
        }
        if self.nextToken != nil {
            map["nextToken"] = self.nextToken!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["exampleName"] as? String {
            self.exampleName = value
        }
        if let value = dict["keyword"] as? String {
            self.keyword = value
        }
        if let value = dict["maxResults"] as? Int32 {
            self.maxResults = value
        }
        if let value = dict["moduleName"] as? String {
            self.moduleName = value
        }
        if let value = dict["moduleVersion"] as? String {
            self.moduleVersion = value
        }
        if let value = dict["namespaceName"] as? String {
            self.namespaceName = value
        }
        if let value = dict["nextToken"] as? String {
            self.nextToken = value
        }
    }
}

public class ListExplorerRegistryModuleExamplesResponseBody : Tea.TeaModel {
    public class ExplorerRegistryModuleExamples : Tea.TeaModel {
        public var exampleName: String?

        public var examplePath: String?

        public var exampleSchema: [String: Any]?

        public var moduleName: String?

        public var moduleVersion: String?

        public var namespaceName: String?

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
            if self.exampleName != nil {
                map["exampleName"] = self.exampleName!
            }
            if self.examplePath != nil {
                map["examplePath"] = self.examplePath!
            }
            if self.exampleSchema != nil {
                map["exampleSchema"] = self.exampleSchema!
            }
            if self.moduleName != nil {
                map["moduleName"] = self.moduleName!
            }
            if self.moduleVersion != nil {
                map["moduleVersion"] = self.moduleVersion!
            }
            if self.namespaceName != nil {
                map["namespaceName"] = self.namespaceName!
            }
            if self.status != nil {
                map["status"] = self.status!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["exampleName"] as? String {
                self.exampleName = value
            }
            if let value = dict["examplePath"] as? String {
                self.examplePath = value
            }
            if let value = dict["exampleSchema"] as? [String: Any] {
                self.exampleSchema = value
            }
            if let value = dict["moduleName"] as? String {
                self.moduleName = value
            }
            if let value = dict["moduleVersion"] as? String {
                self.moduleVersion = value
            }
            if let value = dict["namespaceName"] as? String {
                self.namespaceName = value
            }
            if let value = dict["status"] as? String {
                self.status = value
            }
        }
    }
    public var explorerRegistryModuleExamples: [ListExplorerRegistryModuleExamplesResponseBody.ExplorerRegistryModuleExamples]?

    public var maxResults: Int32?

    public var nextToken: String?

    public var requestId: String?

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
        if self.explorerRegistryModuleExamples != nil {
            var tmp : [Any] = []
            for k in self.explorerRegistryModuleExamples! {
                tmp.append(k.toMap())
            }
            map["explorerRegistryModuleExamples"] = tmp
        }
        if self.maxResults != nil {
            map["maxResults"] = self.maxResults!
        }
        if self.nextToken != nil {
            map["nextToken"] = self.nextToken!
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        if self.totalCount != nil {
            map["totalCount"] = self.totalCount!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["explorerRegistryModuleExamples"] as? [Any?] {
            var tmp : [ListExplorerRegistryModuleExamplesResponseBody.ExplorerRegistryModuleExamples] = []
            for v in value {
                if v != nil {
                    var model = ListExplorerRegistryModuleExamplesResponseBody.ExplorerRegistryModuleExamples()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.explorerRegistryModuleExamples = tmp
        }
        if let value = dict["maxResults"] as? Int32 {
            self.maxResults = value
        }
        if let value = dict["nextToken"] as? String {
            self.nextToken = value
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
        if let value = dict["totalCount"] as? Int64 {
            self.totalCount = value
        }
    }
}

public class ListExplorerRegistryModuleExamplesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListExplorerRegistryModuleExamplesResponseBody?

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
            var model = ListExplorerRegistryModuleExamplesResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ListExplorerRegistryModuleVersionsRequest : Tea.TeaModel {
    public var keyword: String?

    public var maxResults: Int32?

    public var moduleName: String?

    public var moduleVersion: String?

    public var namespaceName: String?

    public var nextToken: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.keyword != nil {
            map["keyword"] = self.keyword!
        }
        if self.maxResults != nil {
            map["maxResults"] = self.maxResults!
        }
        if self.moduleName != nil {
            map["moduleName"] = self.moduleName!
        }
        if self.moduleVersion != nil {
            map["moduleVersion"] = self.moduleVersion!
        }
        if self.namespaceName != nil {
            map["namespaceName"] = self.namespaceName!
        }
        if self.nextToken != nil {
            map["nextToken"] = self.nextToken!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["keyword"] as? String {
            self.keyword = value
        }
        if let value = dict["maxResults"] as? Int32 {
            self.maxResults = value
        }
        if let value = dict["moduleName"] as? String {
            self.moduleName = value
        }
        if let value = dict["moduleVersion"] as? String {
            self.moduleVersion = value
        }
        if let value = dict["namespaceName"] as? String {
            self.namespaceName = value
        }
        if let value = dict["nextToken"] as? String {
            self.nextToken = value
        }
    }
}

public class ListExplorerRegistryModuleVersionsResponseBody : Tea.TeaModel {
    public class ExplorerRegistryModuleVersions : Tea.TeaModel {
        public var moduleDetail: [String: Any]?

        public var moduleFile: [String: Any]?

        public var moduleName: String?

        public var namespaceName: String?

        public var properties: [String: Any]?

        public var source: String?

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
            if self.moduleDetail != nil {
                map["moduleDetail"] = self.moduleDetail!
            }
            if self.moduleFile != nil {
                map["moduleFile"] = self.moduleFile!
            }
            if self.moduleName != nil {
                map["moduleName"] = self.moduleName!
            }
            if self.namespaceName != nil {
                map["namespaceName"] = self.namespaceName!
            }
            if self.properties != nil {
                map["properties"] = self.properties!
            }
            if self.source != nil {
                map["source"] = self.source!
            }
            if self.version != nil {
                map["version"] = self.version!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["moduleDetail"] as? [String: Any] {
                self.moduleDetail = value
            }
            if let value = dict["moduleFile"] as? [String: Any] {
                self.moduleFile = value
            }
            if let value = dict["moduleName"] as? String {
                self.moduleName = value
            }
            if let value = dict["namespaceName"] as? String {
                self.namespaceName = value
            }
            if let value = dict["properties"] as? [String: Any] {
                self.properties = value
            }
            if let value = dict["source"] as? String {
                self.source = value
            }
            if let value = dict["version"] as? String {
                self.version = value
            }
        }
    }
    public var explorerRegistryModuleVersions: [ListExplorerRegistryModuleVersionsResponseBody.ExplorerRegistryModuleVersions]?

    public var maxResults: Int32?

    public var nextToken: String?

    public var requestId: String?

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
        if self.explorerRegistryModuleVersions != nil {
            var tmp : [Any] = []
            for k in self.explorerRegistryModuleVersions! {
                tmp.append(k.toMap())
            }
            map["explorerRegistryModuleVersions"] = tmp
        }
        if self.maxResults != nil {
            map["maxResults"] = self.maxResults!
        }
        if self.nextToken != nil {
            map["nextToken"] = self.nextToken!
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        if self.totalCount != nil {
            map["totalCount"] = self.totalCount!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["explorerRegistryModuleVersions"] as? [Any?] {
            var tmp : [ListExplorerRegistryModuleVersionsResponseBody.ExplorerRegistryModuleVersions] = []
            for v in value {
                if v != nil {
                    var model = ListExplorerRegistryModuleVersionsResponseBody.ExplorerRegistryModuleVersions()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.explorerRegistryModuleVersions = tmp
        }
        if let value = dict["maxResults"] as? Int32 {
            self.maxResults = value
        }
        if let value = dict["nextToken"] as? String {
            self.nextToken = value
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
        if let value = dict["totalCount"] as? Int64 {
            self.totalCount = value
        }
    }
}

public class ListExplorerRegistryModuleVersionsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListExplorerRegistryModuleVersionsResponseBody?

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
            var model = ListExplorerRegistryModuleVersionsResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ListExplorerRegistryModulesRequest : Tea.TeaModel {
    public var keyword: String?

    public var maxResults: Int32?

    public var moduleName: String?

    public var nextToken: String?

    public var sort: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.keyword != nil {
            map["keyword"] = self.keyword!
        }
        if self.maxResults != nil {
            map["maxResults"] = self.maxResults!
        }
        if self.moduleName != nil {
            map["moduleName"] = self.moduleName!
        }
        if self.nextToken != nil {
            map["nextToken"] = self.nextToken!
        }
        if self.sort != nil {
            map["sort"] = self.sort!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["keyword"] as? String {
            self.keyword = value
        }
        if let value = dict["maxResults"] as? Int32 {
            self.maxResults = value
        }
        if let value = dict["moduleName"] as? String {
            self.moduleName = value
        }
        if let value = dict["nextToken"] as? String {
            self.nextToken = value
        }
        if let value = dict["sort"] as? String {
            self.sort = value
        }
    }
}

public class ListExplorerRegistryModulesResponseBody : Tea.TeaModel {
    public class ExplorerRegistryModules : Tea.TeaModel {
        public var description_: String?

        public var downloads: Int64?

        public var latestVersion: String?

        public var moduleName: String?

        public var namespaceName: String?

        public var source: String?

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
            if self.description_ != nil {
                map["description"] = self.description_!
            }
            if self.downloads != nil {
                map["downloads"] = self.downloads!
            }
            if self.latestVersion != nil {
                map["latestVersion"] = self.latestVersion!
            }
            if self.moduleName != nil {
                map["moduleName"] = self.moduleName!
            }
            if self.namespaceName != nil {
                map["namespaceName"] = self.namespaceName!
            }
            if self.source != nil {
                map["source"] = self.source!
            }
            if self.status != nil {
                map["status"] = self.status!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["description"] as? String {
                self.description_ = value
            }
            if let value = dict["downloads"] as? Int64 {
                self.downloads = value
            }
            if let value = dict["latestVersion"] as? String {
                self.latestVersion = value
            }
            if let value = dict["moduleName"] as? String {
                self.moduleName = value
            }
            if let value = dict["namespaceName"] as? String {
                self.namespaceName = value
            }
            if let value = dict["source"] as? String {
                self.source = value
            }
            if let value = dict["status"] as? String {
                self.status = value
            }
        }
    }
    public var explorerRegistryModules: [ListExplorerRegistryModulesResponseBody.ExplorerRegistryModules]?

    public var maxResults: Int32?

    public var nextToken: String?

    public var requestId: String?

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
        if self.explorerRegistryModules != nil {
            var tmp : [Any] = []
            for k in self.explorerRegistryModules! {
                tmp.append(k.toMap())
            }
            map["explorerRegistryModules"] = tmp
        }
        if self.maxResults != nil {
            map["maxResults"] = self.maxResults!
        }
        if self.nextToken != nil {
            map["nextToken"] = self.nextToken!
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        if self.totalCount != nil {
            map["totalCount"] = self.totalCount!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["explorerRegistryModules"] as? [Any?] {
            var tmp : [ListExplorerRegistryModulesResponseBody.ExplorerRegistryModules] = []
            for v in value {
                if v != nil {
                    var model = ListExplorerRegistryModulesResponseBody.ExplorerRegistryModules()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.explorerRegistryModules = tmp
        }
        if let value = dict["maxResults"] as? Int32 {
            self.maxResults = value
        }
        if let value = dict["nextToken"] as? String {
            self.nextToken = value
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
        if let value = dict["totalCount"] as? Int64 {
            self.totalCount = value
        }
    }
}

public class ListExplorerRegistryModulesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListExplorerRegistryModulesResponseBody?

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
            var model = ListExplorerRegistryModulesResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ListGroupRequest : Tea.TeaModel {
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
                map["key"] = self.key!
            }
            if self.value != nil {
                map["value"] = self.value!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["key"] as? String {
                self.key = value
            }
            if let value = dict["value"] as? String {
                self.value = value
            }
        }
    }
    public var keyword: String?

    public var pageNumber: String?

    public var pageSize: String?

    public var projectId: String?

    public var tag: [ListGroupRequest.Tag]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.keyword != nil {
            map["keyword"] = self.keyword!
        }
        if self.pageNumber != nil {
            map["pageNumber"] = self.pageNumber!
        }
        if self.pageSize != nil {
            map["pageSize"] = self.pageSize!
        }
        if self.projectId != nil {
            map["projectId"] = self.projectId!
        }
        if self.tag != nil {
            var tmp : [Any] = []
            for k in self.tag! {
                tmp.append(k.toMap())
            }
            map["tag"] = tmp
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["keyword"] as? String {
            self.keyword = value
        }
        if let value = dict["pageNumber"] as? String {
            self.pageNumber = value
        }
        if let value = dict["pageSize"] as? String {
            self.pageSize = value
        }
        if let value = dict["projectId"] as? String {
            self.projectId = value
        }
        if let value = dict["tag"] as? [Any?] {
            var tmp : [ListGroupRequest.Tag] = []
            for v in value {
                if v != nil {
                    var model = ListGroupRequest.Tag()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.tag = tmp
        }
    }
}

public class ListGroupShrinkRequest : Tea.TeaModel {
    public var keyword: String?

    public var pageNumber: String?

    public var pageSize: String?

    public var projectId: String?

    public var tagShrink: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.keyword != nil {
            map["keyword"] = self.keyword!
        }
        if self.pageNumber != nil {
            map["pageNumber"] = self.pageNumber!
        }
        if self.pageSize != nil {
            map["pageSize"] = self.pageSize!
        }
        if self.projectId != nil {
            map["projectId"] = self.projectId!
        }
        if self.tagShrink != nil {
            map["tag"] = self.tagShrink!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["keyword"] as? String {
            self.keyword = value
        }
        if let value = dict["pageNumber"] as? String {
            self.pageNumber = value
        }
        if let value = dict["pageSize"] as? String {
            self.pageSize = value
        }
        if let value = dict["projectId"] as? String {
            self.projectId = value
        }
        if let value = dict["tag"] as? String {
            self.tagShrink = value
        }
    }
}

public class ListGroupResponseBody : Tea.TeaModel {
    public class Groups : Tea.TeaModel {
        public class Tags : Tea.TeaModel {
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
                    map["key"] = self.key!
                }
                if self.value != nil {
                    map["value"] = self.value!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["key"] as? String {
                    self.key = value
                }
                if let value = dict["value"] as? String {
                    self.value = value
                }
            }
        }
        public var createTime: String?

        public var description_: String?

        public var groupId: String?

        public var isDefault: Bool?

        public var moduleCnt: Int64?

        public var name: String?

        public var projectId: String?

        public var sceneTestingTaskCnt: Int64?

        public var tags: [ListGroupResponseBody.Groups.Tags]?

        public var taskCnt: Int64?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.createTime != nil {
                map["createTime"] = self.createTime!
            }
            if self.description_ != nil {
                map["description"] = self.description_!
            }
            if self.groupId != nil {
                map["groupId"] = self.groupId!
            }
            if self.isDefault != nil {
                map["isDefault"] = self.isDefault!
            }
            if self.moduleCnt != nil {
                map["moduleCnt"] = self.moduleCnt!
            }
            if self.name != nil {
                map["name"] = self.name!
            }
            if self.projectId != nil {
                map["projectId"] = self.projectId!
            }
            if self.sceneTestingTaskCnt != nil {
                map["sceneTestingTaskCnt"] = self.sceneTestingTaskCnt!
            }
            if self.tags != nil {
                var tmp : [Any] = []
                for k in self.tags! {
                    tmp.append(k.toMap())
                }
                map["tags"] = tmp
            }
            if self.taskCnt != nil {
                map["taskCnt"] = self.taskCnt!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["createTime"] as? String {
                self.createTime = value
            }
            if let value = dict["description"] as? String {
                self.description_ = value
            }
            if let value = dict["groupId"] as? String {
                self.groupId = value
            }
            if let value = dict["isDefault"] as? Bool {
                self.isDefault = value
            }
            if let value = dict["moduleCnt"] as? Int64 {
                self.moduleCnt = value
            }
            if let value = dict["name"] as? String {
                self.name = value
            }
            if let value = dict["projectId"] as? String {
                self.projectId = value
            }
            if let value = dict["sceneTestingTaskCnt"] as? Int64 {
                self.sceneTestingTaskCnt = value
            }
            if let value = dict["tags"] as? [Any?] {
                var tmp : [ListGroupResponseBody.Groups.Tags] = []
                for v in value {
                    if v != nil {
                        var model = ListGroupResponseBody.Groups.Tags()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.tags = tmp
            }
            if let value = dict["taskCnt"] as? Int64 {
                self.taskCnt = value
            }
        }
    }
    public var count: Int64?

    public var groups: [ListGroupResponseBody.Groups]?

    public var pageNumber: Int64?

    public var pageSize: Int64?

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
        if self.count != nil {
            map["count"] = self.count!
        }
        if self.groups != nil {
            var tmp : [Any] = []
            for k in self.groups! {
                tmp.append(k.toMap())
            }
            map["groups"] = tmp
        }
        if self.pageNumber != nil {
            map["pageNumber"] = self.pageNumber!
        }
        if self.pageSize != nil {
            map["pageSize"] = self.pageSize!
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["count"] as? Int64 {
            self.count = value
        }
        if let value = dict["groups"] as? [Any?] {
            var tmp : [ListGroupResponseBody.Groups] = []
            for v in value {
                if v != nil {
                    var model = ListGroupResponseBody.Groups()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.groups = tmp
        }
        if let value = dict["pageNumber"] as? Int64 {
            self.pageNumber = value
        }
        if let value = dict["pageSize"] as? Int64 {
            self.pageSize = value
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
    }
}

public class ListGroupResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListGroupResponseBody?

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
            var model = ListGroupResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ListJobsRequest : Tea.TeaModel {
    public var pageNumber: Int32?

    public var pageSize: Int32?

    public var status: String?

    public var taskType: String?

    public override init() {
        super.init()
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
            map["pageNumber"] = self.pageNumber!
        }
        if self.pageSize != nil {
            map["pageSize"] = self.pageSize!
        }
        if self.status != nil {
            map["status"] = self.status!
        }
        if self.taskType != nil {
            map["taskType"] = self.taskType!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["pageNumber"] as? Int32 {
            self.pageNumber = value
        }
        if let value = dict["pageSize"] as? Int32 {
            self.pageSize = value
        }
        if let value = dict["status"] as? String {
            self.status = value
        }
        if let value = dict["taskType"] as? String {
            self.taskType = value
        }
    }
}

public class ListJobsResponseBody : Tea.TeaModel {
    public class Jobs : Tea.TeaModel {
        public class Config : Tea.TeaModel {
            public var isDestroy: Bool?

            public var moduleDescription: String?

            public var moduleVersion: String?

            public var resourcesChanged: String?

            public var subCommand: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.isDestroy != nil {
                    map["isDestroy"] = self.isDestroy!
                }
                if self.moduleDescription != nil {
                    map["moduleDescription"] = self.moduleDescription!
                }
                if self.moduleVersion != nil {
                    map["moduleVersion"] = self.moduleVersion!
                }
                if self.resourcesChanged != nil {
                    map["resourcesChanged"] = self.resourcesChanged!
                }
                if self.subCommand != nil {
                    map["subCommand"] = self.subCommand!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["isDestroy"] as? Bool {
                    self.isDestroy = value
                }
                if let value = dict["moduleDescription"] as? String {
                    self.moduleDescription = value
                }
                if let value = dict["moduleVersion"] as? String {
                    self.moduleVersion = value
                }
                if let value = dict["resourcesChanged"] as? String {
                    self.resourcesChanged = value
                }
                if let value = dict["subCommand"] as? String {
                    self.subCommand = value
                }
            }
        }
        public var config: ListJobsResponseBody.Jobs.Config?

        public var createTime: String?

        public var description_: String?

        public var elapsedTime: Int64?

        public var executeType: String?

        public var isPassAssertCheck: Bool?

        public var jobId: String?

        public var status: String?

        public var statusDetail: [String: JobsStatusDetailValue]?

        public var taskId: String?

        public var terraformProviderVersion: String?

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
                map["config"] = self.config?.toMap()
            }
            if self.createTime != nil {
                map["createTime"] = self.createTime!
            }
            if self.description_ != nil {
                map["description"] = self.description_!
            }
            if self.elapsedTime != nil {
                map["elapsedTime"] = self.elapsedTime!
            }
            if self.executeType != nil {
                map["executeType"] = self.executeType!
            }
            if self.isPassAssertCheck != nil {
                map["isPassAssertCheck"] = self.isPassAssertCheck!
            }
            if self.jobId != nil {
                map["jobId"] = self.jobId!
            }
            if self.status != nil {
                map["status"] = self.status!
            }
            if self.statusDetail != nil {
                var tmp : [String: Any] = [:]
                for (k, v) in self.statusDetail! {
                    tmp[k] = v.toMap()
                }
                map["statusDetail"] = tmp
            }
            if self.taskId != nil {
                map["taskId"] = self.taskId!
            }
            if self.terraformProviderVersion != nil {
                map["terraformProviderVersion"] = self.terraformProviderVersion!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["config"] as? [String: Any?] {
                var model = ListJobsResponseBody.Jobs.Config()
                model.fromMap(value)
                self.config = model
            }
            if let value = dict["createTime"] as? String {
                self.createTime = value
            }
            if let value = dict["description"] as? String {
                self.description_ = value
            }
            if let value = dict["elapsedTime"] as? Int64 {
                self.elapsedTime = value
            }
            if let value = dict["executeType"] as? String {
                self.executeType = value
            }
            if let value = dict["isPassAssertCheck"] as? Bool {
                self.isPassAssertCheck = value
            }
            if let value = dict["jobId"] as? String {
                self.jobId = value
            }
            if let value = dict["status"] as? String {
                self.status = value
            }
            if let value = dict["statusDetail"] as? [String: Any?] {
                var tmp : [String: JobsStatusDetailValue] = [:]
                for (k, v) in value {
                    if v != nil {
                        var model = JobsStatusDetailValue()
                        model.fromMap(v as? [String: Any?])
                        tmp[k] = model
                    }
                }
                self.statusDetail = tmp
            }
            if let value = dict["taskId"] as? String {
                self.taskId = value
            }
            if let value = dict["terraformProviderVersion"] as? String {
                self.terraformProviderVersion = value
            }
        }
    }
    public var jobs: [ListJobsResponseBody.Jobs]?

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
        if self.jobs != nil {
            var tmp : [Any] = []
            for k in self.jobs! {
                tmp.append(k.toMap())
            }
            map["jobs"] = tmp
        }
        if self.pageNumber != nil {
            map["pageNumber"] = self.pageNumber!
        }
        if self.pageSize != nil {
            map["pageSize"] = self.pageSize!
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        if self.totalCount != nil {
            map["totalCount"] = self.totalCount!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["jobs"] as? [Any?] {
            var tmp : [ListJobsResponseBody.Jobs] = []
            for v in value {
                if v != nil {
                    var model = ListJobsResponseBody.Jobs()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.jobs = tmp
        }
        if let value = dict["pageNumber"] as? Int32 {
            self.pageNumber = value
        }
        if let value = dict["pageSize"] as? Int32 {
            self.pageSize = value
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
        if let value = dict["totalCount"] as? Int32 {
            self.totalCount = value
        }
    }
}

public class ListJobsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListJobsResponseBody?

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
            var model = ListJobsResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ListModuleVersionRequest : Tea.TeaModel {
    public var keyword: String?

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
        if self.keyword != nil {
            map["keyword"] = self.keyword!
        }
        if self.pageNumber != nil {
            map["pageNumber"] = self.pageNumber!
        }
        if self.pageSize != nil {
            map["pageSize"] = self.pageSize!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["keyword"] as? String {
            self.keyword = value
        }
        if let value = dict["pageNumber"] as? Int32 {
            self.pageNumber = value
        }
        if let value = dict["pageSize"] as? Int32 {
            self.pageSize = value
        }
    }
}

public class ListModuleVersionResponseBody : Tea.TeaModel {
    public class Versions : Tea.TeaModel {
        public var createTime: String?

        public var description_: String?

        public var moduleId: String?

        public var moduleVersion: String?

        public var name: String?

        public var sourcePath: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.createTime != nil {
                map["createTime"] = self.createTime!
            }
            if self.description_ != nil {
                map["description"] = self.description_!
            }
            if self.moduleId != nil {
                map["moduleId"] = self.moduleId!
            }
            if self.moduleVersion != nil {
                map["moduleVersion"] = self.moduleVersion!
            }
            if self.name != nil {
                map["name"] = self.name!
            }
            if self.sourcePath != nil {
                map["sourcePath"] = self.sourcePath!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["createTime"] as? String {
                self.createTime = value
            }
            if let value = dict["description"] as? String {
                self.description_ = value
            }
            if let value = dict["moduleId"] as? String {
                self.moduleId = value
            }
            if let value = dict["moduleVersion"] as? String {
                self.moduleVersion = value
            }
            if let value = dict["name"] as? String {
                self.name = value
            }
            if let value = dict["sourcePath"] as? String {
                self.sourcePath = value
            }
        }
    }
    public var pageNumber: Int32?

    public var pageSize: Int32?

    public var requestId: String?

    public var totalCount: Int32?

    public var versions: [ListModuleVersionResponseBody.Versions]?

    public override init() {
        super.init()
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
            map["pageNumber"] = self.pageNumber!
        }
        if self.pageSize != nil {
            map["pageSize"] = self.pageSize!
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        if self.totalCount != nil {
            map["totalCount"] = self.totalCount!
        }
        if self.versions != nil {
            var tmp : [Any] = []
            for k in self.versions! {
                tmp.append(k.toMap())
            }
            map["versions"] = tmp
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["pageNumber"] as? Int32 {
            self.pageNumber = value
        }
        if let value = dict["pageSize"] as? Int32 {
            self.pageSize = value
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
        if let value = dict["totalCount"] as? Int32 {
            self.totalCount = value
        }
        if let value = dict["versions"] as? [Any?] {
            var tmp : [ListModuleVersionResponseBody.Versions] = []
            for v in value {
                if v != nil {
                    var model = ListModuleVersionResponseBody.Versions()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.versions = tmp
        }
    }
}

public class ListModuleVersionResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListModuleVersionResponseBody?

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
            var model = ListModuleVersionResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ListModulesRequest : Tea.TeaModel {
    public class Tag : Tea.TeaModel {
        public var tagKey: String?

        public var tagValue: String?

        public override init() {
            super.init()
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
                map["tagKey"] = self.tagKey!
            }
            if self.tagValue != nil {
                map["tagValue"] = self.tagValue!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["tagKey"] as? String {
                self.tagKey = value
            }
            if let value = dict["tagValue"] as? String {
                self.tagValue = value
            }
        }
    }
    public var groupId: String?

    public var keyword: String?

    public var moduleName: String?

    public var pageNumber: Int32?

    public var pageSize: Int32?

    public var projectId: String?

    public var tag: [ListModulesRequest.Tag]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.groupId != nil {
            map["groupId"] = self.groupId!
        }
        if self.keyword != nil {
            map["keyword"] = self.keyword!
        }
        if self.moduleName != nil {
            map["moduleName"] = self.moduleName!
        }
        if self.pageNumber != nil {
            map["pageNumber"] = self.pageNumber!
        }
        if self.pageSize != nil {
            map["pageSize"] = self.pageSize!
        }
        if self.projectId != nil {
            map["projectId"] = self.projectId!
        }
        if self.tag != nil {
            var tmp : [Any] = []
            for k in self.tag! {
                tmp.append(k.toMap())
            }
            map["tag"] = tmp
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["groupId"] as? String {
            self.groupId = value
        }
        if let value = dict["keyword"] as? String {
            self.keyword = value
        }
        if let value = dict["moduleName"] as? String {
            self.moduleName = value
        }
        if let value = dict["pageNumber"] as? Int32 {
            self.pageNumber = value
        }
        if let value = dict["pageSize"] as? Int32 {
            self.pageSize = value
        }
        if let value = dict["projectId"] as? String {
            self.projectId = value
        }
        if let value = dict["tag"] as? [Any?] {
            var tmp : [ListModulesRequest.Tag] = []
            for v in value {
                if v != nil {
                    var model = ListModulesRequest.Tag()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.tag = tmp
        }
    }
}

public class ListModulesShrinkRequest : Tea.TeaModel {
    public var groupId: String?

    public var keyword: String?

    public var moduleName: String?

    public var pageNumber: Int32?

    public var pageSize: Int32?

    public var projectId: String?

    public var tagShrink: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.groupId != nil {
            map["groupId"] = self.groupId!
        }
        if self.keyword != nil {
            map["keyword"] = self.keyword!
        }
        if self.moduleName != nil {
            map["moduleName"] = self.moduleName!
        }
        if self.pageNumber != nil {
            map["pageNumber"] = self.pageNumber!
        }
        if self.pageSize != nil {
            map["pageSize"] = self.pageSize!
        }
        if self.projectId != nil {
            map["projectId"] = self.projectId!
        }
        if self.tagShrink != nil {
            map["tag"] = self.tagShrink!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["groupId"] as? String {
            self.groupId = value
        }
        if let value = dict["keyword"] as? String {
            self.keyword = value
        }
        if let value = dict["moduleName"] as? String {
            self.moduleName = value
        }
        if let value = dict["pageNumber"] as? Int32 {
            self.pageNumber = value
        }
        if let value = dict["pageSize"] as? Int32 {
            self.pageSize = value
        }
        if let value = dict["projectId"] as? String {
            self.projectId = value
        }
        if let value = dict["tag"] as? String {
            self.tagShrink = value
        }
    }
}

public class ListModulesResponseBody : Tea.TeaModel {
    public class Modules : Tea.TeaModel {
        public class GroupInfo : Tea.TeaModel {
            public var groupId: String?

            public var groupName: String?

            public var projectId: String?

            public var projectName: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.groupId != nil {
                    map["groupId"] = self.groupId!
                }
                if self.groupName != nil {
                    map["groupName"] = self.groupName!
                }
                if self.projectId != nil {
                    map["projectId"] = self.projectId!
                }
                if self.projectName != nil {
                    map["projectName"] = self.projectName!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["groupId"] as? String {
                    self.groupId = value
                }
                if let value = dict["groupName"] as? String {
                    self.groupName = value
                }
                if let value = dict["projectId"] as? String {
                    self.projectId = value
                }
                if let value = dict["projectName"] as? String {
                    self.projectName = value
                }
            }
        }
        public class Tags : Tea.TeaModel {
            public var key: String?

            public var tagKey: String?

            public var tagValue: String?

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
                    map["key"] = self.key!
                }
                if self.tagKey != nil {
                    map["tagKey"] = self.tagKey!
                }
                if self.tagValue != nil {
                    map["tagValue"] = self.tagValue!
                }
                if self.value != nil {
                    map["value"] = self.value!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["key"] as? String {
                    self.key = value
                }
                if let value = dict["tagKey"] as? String {
                    self.tagKey = value
                }
                if let value = dict["tagValue"] as? String {
                    self.tagValue = value
                }
                if let value = dict["value"] as? String {
                    self.value = value
                }
            }
        }
        public var createTime: String?

        public var deletionProtection: Bool?

        public var description_: String?

        public var groupInfo: ListModulesResponseBody.Modules.GroupInfo?

        public var latestVersion: String?

        public var moduleId: String?

        public var name: String?

        public var source: String?

        public var status: String?

        public var tags: [ListModulesResponseBody.Modules.Tags]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.groupInfo?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.createTime != nil {
                map["createTime"] = self.createTime!
            }
            if self.deletionProtection != nil {
                map["deletionProtection"] = self.deletionProtection!
            }
            if self.description_ != nil {
                map["description"] = self.description_!
            }
            if self.groupInfo != nil {
                map["groupInfo"] = self.groupInfo?.toMap()
            }
            if self.latestVersion != nil {
                map["latestVersion"] = self.latestVersion!
            }
            if self.moduleId != nil {
                map["moduleId"] = self.moduleId!
            }
            if self.name != nil {
                map["name"] = self.name!
            }
            if self.source != nil {
                map["source"] = self.source!
            }
            if self.status != nil {
                map["status"] = self.status!
            }
            if self.tags != nil {
                var tmp : [Any] = []
                for k in self.tags! {
                    tmp.append(k.toMap())
                }
                map["tags"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["createTime"] as? String {
                self.createTime = value
            }
            if let value = dict["deletionProtection"] as? Bool {
                self.deletionProtection = value
            }
            if let value = dict["description"] as? String {
                self.description_ = value
            }
            if let value = dict["groupInfo"] as? [String: Any?] {
                var model = ListModulesResponseBody.Modules.GroupInfo()
                model.fromMap(value)
                self.groupInfo = model
            }
            if let value = dict["latestVersion"] as? String {
                self.latestVersion = value
            }
            if let value = dict["moduleId"] as? String {
                self.moduleId = value
            }
            if let value = dict["name"] as? String {
                self.name = value
            }
            if let value = dict["source"] as? String {
                self.source = value
            }
            if let value = dict["status"] as? String {
                self.status = value
            }
            if let value = dict["tags"] as? [Any?] {
                var tmp : [ListModulesResponseBody.Modules.Tags] = []
                for v in value {
                    if v != nil {
                        var model = ListModulesResponseBody.Modules.Tags()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.tags = tmp
            }
        }
    }
    public var modules: [ListModulesResponseBody.Modules]?

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
        if self.modules != nil {
            var tmp : [Any] = []
            for k in self.modules! {
                tmp.append(k.toMap())
            }
            map["modules"] = tmp
        }
        if self.pageNumber != nil {
            map["pageNumber"] = self.pageNumber!
        }
        if self.pageSize != nil {
            map["pageSize"] = self.pageSize!
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        if self.totalCount != nil {
            map["totalCount"] = self.totalCount!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["modules"] as? [Any?] {
            var tmp : [ListModulesResponseBody.Modules] = []
            for v in value {
                if v != nil {
                    var model = ListModulesResponseBody.Modules()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.modules = tmp
        }
        if let value = dict["pageNumber"] as? Int32 {
            self.pageNumber = value
        }
        if let value = dict["pageSize"] as? Int32 {
            self.pageSize = value
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
        if let value = dict["totalCount"] as? Int32 {
            self.totalCount = value
        }
    }
}

public class ListModulesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListModulesResponseBody?

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
            var model = ListModulesResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ListProductsRequest : Tea.TeaModel {
    public var keyword: String?

    public var maxResults: Int32?

    public var nextToken: String?

    public var sort: String?

    public var status: String?

    public var supportTerraformer: Bool?

    public var terraformProviderVersion: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.keyword != nil {
            map["keyword"] = self.keyword!
        }
        if self.maxResults != nil {
            map["maxResults"] = self.maxResults!
        }
        if self.nextToken != nil {
            map["nextToken"] = self.nextToken!
        }
        if self.sort != nil {
            map["sort"] = self.sort!
        }
        if self.status != nil {
            map["status"] = self.status!
        }
        if self.supportTerraformer != nil {
            map["supportTerraformer"] = self.supportTerraformer!
        }
        if self.terraformProviderVersion != nil {
            map["terraformProviderVersion"] = self.terraformProviderVersion!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["keyword"] as? String {
            self.keyword = value
        }
        if let value = dict["maxResults"] as? Int32 {
            self.maxResults = value
        }
        if let value = dict["nextToken"] as? String {
            self.nextToken = value
        }
        if let value = dict["sort"] as? String {
            self.sort = value
        }
        if let value = dict["status"] as? String {
            self.status = value
        }
        if let value = dict["supportTerraformer"] as? Bool {
            self.supportTerraformer = value
        }
        if let value = dict["terraformProviderVersion"] as? String {
            self.terraformProviderVersion = value
        }
    }
}

public class ListProductsResponseBody : Tea.TeaModel {
    public class Products : Tea.TeaModel {
        public var firstCategoryName: String?

        public var firstCategoryNameEn: String?

        public var product: String?

        public var productName: String?

        public var productNameEn: String?

        public var secondCategoryName: String?

        public var secondCategoryNameEn: String?

        public var status: String?

        public var subcategory: String?

        public var supportTerraformer: Bool?

        public var terraformProviderVersion: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.firstCategoryName != nil {
                map["firstCategoryName"] = self.firstCategoryName!
            }
            if self.firstCategoryNameEn != nil {
                map["firstCategoryNameEn"] = self.firstCategoryNameEn!
            }
            if self.product != nil {
                map["product"] = self.product!
            }
            if self.productName != nil {
                map["productName"] = self.productName!
            }
            if self.productNameEn != nil {
                map["productNameEn"] = self.productNameEn!
            }
            if self.secondCategoryName != nil {
                map["secondCategoryName"] = self.secondCategoryName!
            }
            if self.secondCategoryNameEn != nil {
                map["secondCategoryNameEn"] = self.secondCategoryNameEn!
            }
            if self.status != nil {
                map["status"] = self.status!
            }
            if self.subcategory != nil {
                map["subcategory"] = self.subcategory!
            }
            if self.supportTerraformer != nil {
                map["supportTerraformer"] = self.supportTerraformer!
            }
            if self.terraformProviderVersion != nil {
                map["terraformProviderVersion"] = self.terraformProviderVersion!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["firstCategoryName"] as? String {
                self.firstCategoryName = value
            }
            if let value = dict["firstCategoryNameEn"] as? String {
                self.firstCategoryNameEn = value
            }
            if let value = dict["product"] as? String {
                self.product = value
            }
            if let value = dict["productName"] as? String {
                self.productName = value
            }
            if let value = dict["productNameEn"] as? String {
                self.productNameEn = value
            }
            if let value = dict["secondCategoryName"] as? String {
                self.secondCategoryName = value
            }
            if let value = dict["secondCategoryNameEn"] as? String {
                self.secondCategoryNameEn = value
            }
            if let value = dict["status"] as? String {
                self.status = value
            }
            if let value = dict["subcategory"] as? String {
                self.subcategory = value
            }
            if let value = dict["supportTerraformer"] as? Bool {
                self.supportTerraformer = value
            }
            if let value = dict["terraformProviderVersion"] as? String {
                self.terraformProviderVersion = value
            }
        }
    }
    public var maxResults: Int32?

    public var nextToken: String?

    public var products: [ListProductsResponseBody.Products]?

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
        if self.maxResults != nil {
            map["maxResults"] = self.maxResults!
        }
        if self.nextToken != nil {
            map["nextToken"] = self.nextToken!
        }
        if self.products != nil {
            var tmp : [Any] = []
            for k in self.products! {
                tmp.append(k.toMap())
            }
            map["products"] = tmp
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        if self.totalCount != nil {
            map["totalCount"] = self.totalCount!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["maxResults"] as? Int32 {
            self.maxResults = value
        }
        if let value = dict["nextToken"] as? String {
            self.nextToken = value
        }
        if let value = dict["products"] as? [Any?] {
            var tmp : [ListProductsResponseBody.Products] = []
            for v in value {
                if v != nil {
                    var model = ListProductsResponseBody.Products()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.products = tmp
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
        if let value = dict["totalCount"] as? Int32 {
            self.totalCount = value
        }
    }
}

public class ListProductsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListProductsResponseBody?

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
            var model = ListProductsResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ListProjectRequest : Tea.TeaModel {
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
                map["key"] = self.key!
            }
            if self.value != nil {
                map["value"] = self.value!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["key"] as? String {
                self.key = value
            }
            if let value = dict["value"] as? String {
                self.value = value
            }
        }
    }
    public var keyword: String?

    public var pageNumber: String?

    public var pageSize: String?

    public var tag: [ListProjectRequest.Tag]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.keyword != nil {
            map["keyword"] = self.keyword!
        }
        if self.pageNumber != nil {
            map["pageNumber"] = self.pageNumber!
        }
        if self.pageSize != nil {
            map["pageSize"] = self.pageSize!
        }
        if self.tag != nil {
            var tmp : [Any] = []
            for k in self.tag! {
                tmp.append(k.toMap())
            }
            map["tag"] = tmp
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["keyword"] as? String {
            self.keyword = value
        }
        if let value = dict["pageNumber"] as? String {
            self.pageNumber = value
        }
        if let value = dict["pageSize"] as? String {
            self.pageSize = value
        }
        if let value = dict["tag"] as? [Any?] {
            var tmp : [ListProjectRequest.Tag] = []
            for v in value {
                if v != nil {
                    var model = ListProjectRequest.Tag()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.tag = tmp
        }
    }
}

public class ListProjectShrinkRequest : Tea.TeaModel {
    public var keyword: String?

    public var pageNumber: String?

    public var pageSize: String?

    public var tagShrink: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.keyword != nil {
            map["keyword"] = self.keyword!
        }
        if self.pageNumber != nil {
            map["pageNumber"] = self.pageNumber!
        }
        if self.pageSize != nil {
            map["pageSize"] = self.pageSize!
        }
        if self.tagShrink != nil {
            map["tag"] = self.tagShrink!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["keyword"] as? String {
            self.keyword = value
        }
        if let value = dict["pageNumber"] as? String {
            self.pageNumber = value
        }
        if let value = dict["pageSize"] as? String {
            self.pageSize = value
        }
        if let value = dict["tag"] as? String {
            self.tagShrink = value
        }
    }
}

public class ListProjectResponseBody : Tea.TeaModel {
    public class Projects : Tea.TeaModel {
        public class Tags : Tea.TeaModel {
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
                    map["key"] = self.key!
                }
                if self.value != nil {
                    map["value"] = self.value!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["key"] as? String {
                    self.key = value
                }
                if let value = dict["value"] as? String {
                    self.value = value
                }
            }
        }
        public var createTime: String?

        public var description_: String?

        public var name: String?

        public var projectId: String?

        public var tags: [ListProjectResponseBody.Projects.Tags]?

        public var taskCnt: Int64?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.createTime != nil {
                map["createTime"] = self.createTime!
            }
            if self.description_ != nil {
                map["description"] = self.description_!
            }
            if self.name != nil {
                map["name"] = self.name!
            }
            if self.projectId != nil {
                map["projectId"] = self.projectId!
            }
            if self.tags != nil {
                var tmp : [Any] = []
                for k in self.tags! {
                    tmp.append(k.toMap())
                }
                map["tags"] = tmp
            }
            if self.taskCnt != nil {
                map["taskCnt"] = self.taskCnt!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["createTime"] as? String {
                self.createTime = value
            }
            if let value = dict["description"] as? String {
                self.description_ = value
            }
            if let value = dict["name"] as? String {
                self.name = value
            }
            if let value = dict["projectId"] as? String {
                self.projectId = value
            }
            if let value = dict["tags"] as? [Any?] {
                var tmp : [ListProjectResponseBody.Projects.Tags] = []
                for v in value {
                    if v != nil {
                        var model = ListProjectResponseBody.Projects.Tags()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.tags = tmp
            }
            if let value = dict["taskCnt"] as? Int64 {
                self.taskCnt = value
            }
        }
    }
    public var count: Int64?

    public var pageNumber: Int64?

    public var pageSize: Int64?

    public var projects: [ListProjectResponseBody.Projects]?

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
        if self.count != nil {
            map["count"] = self.count!
        }
        if self.pageNumber != nil {
            map["pageNumber"] = self.pageNumber!
        }
        if self.pageSize != nil {
            map["pageSize"] = self.pageSize!
        }
        if self.projects != nil {
            var tmp : [Any] = []
            for k in self.projects! {
                tmp.append(k.toMap())
            }
            map["projects"] = tmp
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["count"] as? Int64 {
            self.count = value
        }
        if let value = dict["pageNumber"] as? Int64 {
            self.pageNumber = value
        }
        if let value = dict["pageSize"] as? Int64 {
            self.pageSize = value
        }
        if let value = dict["projects"] as? [Any?] {
            var tmp : [ListProjectResponseBody.Projects] = []
            for v in value {
                if v != nil {
                    var model = ListProjectResponseBody.Projects()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.projects = tmp
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
    }
}

public class ListProjectResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListProjectResponseBody?

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
            var model = ListProjectResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ListRegistryModuleVersionsRequest : Tea.TeaModel {
    public var maxResults: Int32?

    public var moduleName: String?

    public var namespaceName: String?

    public var nextToken: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.maxResults != nil {
            map["maxResults"] = self.maxResults!
        }
        if self.moduleName != nil {
            map["moduleName"] = self.moduleName!
        }
        if self.namespaceName != nil {
            map["namespaceName"] = self.namespaceName!
        }
        if self.nextToken != nil {
            map["nextToken"] = self.nextToken!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["maxResults"] as? Int32 {
            self.maxResults = value
        }
        if let value = dict["moduleName"] as? String {
            self.moduleName = value
        }
        if let value = dict["namespaceName"] as? String {
            self.namespaceName = value
        }
        if let value = dict["nextToken"] as? String {
            self.nextToken = value
        }
    }
}

public class ListRegistryModuleVersionsResponseBody : Tea.TeaModel {
    public class ModuleVersions : Tea.TeaModel {
        public var createTime: String?

        public var moduleName: String?

        public var namespaceName: String?

        public var provider: String?

        public var source: String?

        public var sourceUrl: String?

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
            if self.createTime != nil {
                map["createTime"] = self.createTime!
            }
            if self.moduleName != nil {
                map["moduleName"] = self.moduleName!
            }
            if self.namespaceName != nil {
                map["namespaceName"] = self.namespaceName!
            }
            if self.provider != nil {
                map["provider"] = self.provider!
            }
            if self.source != nil {
                map["source"] = self.source!
            }
            if self.sourceUrl != nil {
                map["sourceUrl"] = self.sourceUrl!
            }
            if self.version != nil {
                map["version"] = self.version!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["createTime"] as? String {
                self.createTime = value
            }
            if let value = dict["moduleName"] as? String {
                self.moduleName = value
            }
            if let value = dict["namespaceName"] as? String {
                self.namespaceName = value
            }
            if let value = dict["provider"] as? String {
                self.provider = value
            }
            if let value = dict["source"] as? String {
                self.source = value
            }
            if let value = dict["sourceUrl"] as? String {
                self.sourceUrl = value
            }
            if let value = dict["version"] as? String {
                self.version = value
            }
        }
    }
    public var count: Int64?

    public var maxResults: Int32?

    public var moduleVersions: [ListRegistryModuleVersionsResponseBody.ModuleVersions]?

    public var nextToken: String?

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
        if self.count != nil {
            map["count"] = self.count!
        }
        if self.maxResults != nil {
            map["maxResults"] = self.maxResults!
        }
        if self.moduleVersions != nil {
            var tmp : [Any] = []
            for k in self.moduleVersions! {
                tmp.append(k.toMap())
            }
            map["moduleVersions"] = tmp
        }
        if self.nextToken != nil {
            map["nextToken"] = self.nextToken!
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["count"] as? Int64 {
            self.count = value
        }
        if let value = dict["maxResults"] as? Int32 {
            self.maxResults = value
        }
        if let value = dict["moduleVersions"] as? [Any?] {
            var tmp : [ListRegistryModuleVersionsResponseBody.ModuleVersions] = []
            for v in value {
                if v != nil {
                    var model = ListRegistryModuleVersionsResponseBody.ModuleVersions()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.moduleVersions = tmp
        }
        if let value = dict["nextToken"] as? String {
            self.nextToken = value
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
    }
}

public class ListRegistryModuleVersionsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListRegistryModuleVersionsResponseBody?

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
            var model = ListRegistryModuleVersionsResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ListRegistryModulesRequest : Tea.TeaModel {
    public var keyword: String?

    public var maxResults: Int32?

    public var namespaceName: String?

    public var nextToken: String?

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
        if self.keyword != nil {
            map["keyword"] = self.keyword!
        }
        if self.maxResults != nil {
            map["maxResults"] = self.maxResults!
        }
        if self.namespaceName != nil {
            map["namespaceName"] = self.namespaceName!
        }
        if self.nextToken != nil {
            map["nextToken"] = self.nextToken!
        }
        if self.type != nil {
            map["type"] = self.type!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["keyword"] as? String {
            self.keyword = value
        }
        if let value = dict["maxResults"] as? Int32 {
            self.maxResults = value
        }
        if let value = dict["namespaceName"] as? String {
            self.namespaceName = value
        }
        if let value = dict["nextToken"] as? String {
            self.nextToken = value
        }
        if let value = dict["type"] as? String {
            self.type = value
        }
    }
}

public class ListRegistryModulesResponseBody : Tea.TeaModel {
    public class RegistryModules : Tea.TeaModel {
        public var acl: String?

        public var createTime: String?

        public var description_: String?

        public var downloads: Int32?

        public var moduleName: String?

        public var namespaceName: String?

        public var provider: String?

        public var sharedAccounts: [Int64]?

        public var source: String?

        public var sourceUrl: String?

        public var type: String?

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
            if self.acl != nil {
                map["acl"] = self.acl!
            }
            if self.createTime != nil {
                map["createTime"] = self.createTime!
            }
            if self.description_ != nil {
                map["description"] = self.description_!
            }
            if self.downloads != nil {
                map["downloads"] = self.downloads!
            }
            if self.moduleName != nil {
                map["moduleName"] = self.moduleName!
            }
            if self.namespaceName != nil {
                map["namespaceName"] = self.namespaceName!
            }
            if self.provider != nil {
                map["provider"] = self.provider!
            }
            if self.sharedAccounts != nil {
                map["sharedAccounts"] = self.sharedAccounts!
            }
            if self.source != nil {
                map["source"] = self.source!
            }
            if self.sourceUrl != nil {
                map["sourceUrl"] = self.sourceUrl!
            }
            if self.type != nil {
                map["type"] = self.type!
            }
            if self.version != nil {
                map["version"] = self.version!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["acl"] as? String {
                self.acl = value
            }
            if let value = dict["createTime"] as? String {
                self.createTime = value
            }
            if let value = dict["description"] as? String {
                self.description_ = value
            }
            if let value = dict["downloads"] as? Int32 {
                self.downloads = value
            }
            if let value = dict["moduleName"] as? String {
                self.moduleName = value
            }
            if let value = dict["namespaceName"] as? String {
                self.namespaceName = value
            }
            if let value = dict["provider"] as? String {
                self.provider = value
            }
            if let value = dict["sharedAccounts"] as? [Int64] {
                self.sharedAccounts = value
            }
            if let value = dict["source"] as? String {
                self.source = value
            }
            if let value = dict["sourceUrl"] as? String {
                self.sourceUrl = value
            }
            if let value = dict["type"] as? String {
                self.type = value
            }
            if let value = dict["version"] as? String {
                self.version = value
            }
        }
    }
    public var count: Int64?

    public var maxResults: Int32?

    public var nextToken: String?

    public var registryModules: [ListRegistryModulesResponseBody.RegistryModules]?

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
        if self.count != nil {
            map["count"] = self.count!
        }
        if self.maxResults != nil {
            map["maxResults"] = self.maxResults!
        }
        if self.nextToken != nil {
            map["nextToken"] = self.nextToken!
        }
        if self.registryModules != nil {
            var tmp : [Any] = []
            for k in self.registryModules! {
                tmp.append(k.toMap())
            }
            map["registryModules"] = tmp
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["count"] as? Int64 {
            self.count = value
        }
        if let value = dict["maxResults"] as? Int32 {
            self.maxResults = value
        }
        if let value = dict["nextToken"] as? String {
            self.nextToken = value
        }
        if let value = dict["registryModules"] as? [Any?] {
            var tmp : [ListRegistryModulesResponseBody.RegistryModules] = []
            for v in value {
                if v != nil {
                    var model = ListRegistryModulesResponseBody.RegistryModules()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.registryModules = tmp
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
    }
}

public class ListRegistryModulesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListRegistryModulesResponseBody?

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
            var model = ListRegistryModulesResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ListRegistryNamespacesRequest : Tea.TeaModel {
    public var keyword: String?

    public var maxResults: Int32?

    public var nextToken: String?

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
        if self.keyword != nil {
            map["keyword"] = self.keyword!
        }
        if self.maxResults != nil {
            map["maxResults"] = self.maxResults!
        }
        if self.nextToken != nil {
            map["nextToken"] = self.nextToken!
        }
        if self.type != nil {
            map["type"] = self.type!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["keyword"] as? String {
            self.keyword = value
        }
        if let value = dict["maxResults"] as? Int32 {
            self.maxResults = value
        }
        if let value = dict["nextToken"] as? String {
            self.nextToken = value
        }
        if let value = dict["type"] as? String {
            self.type = value
        }
    }
}

public class ListRegistryNamespacesResponseBody : Tea.TeaModel {
    public class Namespaces : Tea.TeaModel {
        public var acl: String?

        public var createTime: String?

        public var description_: String?

        public var maintainer: String?

        public var modules: Int32?

        public var namespaceName: String?

        public var sharedAccounts: [Int64]?

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
            if self.acl != nil {
                map["acl"] = self.acl!
            }
            if self.createTime != nil {
                map["createTime"] = self.createTime!
            }
            if self.description_ != nil {
                map["description"] = self.description_!
            }
            if self.maintainer != nil {
                map["maintainer"] = self.maintainer!
            }
            if self.modules != nil {
                map["modules"] = self.modules!
            }
            if self.namespaceName != nil {
                map["namespaceName"] = self.namespaceName!
            }
            if self.sharedAccounts != nil {
                map["sharedAccounts"] = self.sharedAccounts!
            }
            if self.type != nil {
                map["type"] = self.type!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["acl"] as? String {
                self.acl = value
            }
            if let value = dict["createTime"] as? String {
                self.createTime = value
            }
            if let value = dict["description"] as? String {
                self.description_ = value
            }
            if let value = dict["maintainer"] as? String {
                self.maintainer = value
            }
            if let value = dict["modules"] as? Int32 {
                self.modules = value
            }
            if let value = dict["namespaceName"] as? String {
                self.namespaceName = value
            }
            if let value = dict["sharedAccounts"] as? [Int64] {
                self.sharedAccounts = value
            }
            if let value = dict["type"] as? String {
                self.type = value
            }
        }
    }
    public var count: Int64?

    public var maxResults: Int32?

    public var namespaces: [ListRegistryNamespacesResponseBody.Namespaces]?

    public var nextToken: String?

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
        if self.count != nil {
            map["count"] = self.count!
        }
        if self.maxResults != nil {
            map["maxResults"] = self.maxResults!
        }
        if self.namespaces != nil {
            var tmp : [Any] = []
            for k in self.namespaces! {
                tmp.append(k.toMap())
            }
            map["namespaces"] = tmp
        }
        if self.nextToken != nil {
            map["nextToken"] = self.nextToken!
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["count"] as? Int64 {
            self.count = value
        }
        if let value = dict["maxResults"] as? Int32 {
            self.maxResults = value
        }
        if let value = dict["namespaces"] as? [Any?] {
            var tmp : [ListRegistryNamespacesResponseBody.Namespaces] = []
            for v in value {
                if v != nil {
                    var model = ListRegistryNamespacesResponseBody.Namespaces()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.namespaces = tmp
        }
        if let value = dict["nextToken"] as? String {
            self.nextToken = value
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
    }
}

public class ListRegistryNamespacesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListRegistryNamespacesResponseBody?

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
            var model = ListRegistryNamespacesResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ListResourceExportTaskVersionsRequest : Tea.TeaModel {
    public var exportVersion: String?

    public var keyword: String?

    public var pageNumber: Int32?

    public var pageSize: Int32?

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
        if self.exportVersion != nil {
            map["exportVersion"] = self.exportVersion!
        }
        if self.keyword != nil {
            map["keyword"] = self.keyword!
        }
        if self.pageNumber != nil {
            map["pageNumber"] = self.pageNumber!
        }
        if self.pageSize != nil {
            map["pageSize"] = self.pageSize!
        }
        if self.status != nil {
            map["status"] = self.status!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["exportVersion"] as? String {
            self.exportVersion = value
        }
        if let value = dict["keyword"] as? String {
            self.keyword = value
        }
        if let value = dict["pageNumber"] as? Int32 {
            self.pageNumber = value
        }
        if let value = dict["pageSize"] as? Int32 {
            self.pageSize = value
        }
        if let value = dict["status"] as? String {
            self.status = value
        }
    }
}

public class ListResourceExportTaskVersionsResponseBody : Tea.TeaModel {
    public class ExportTasks : Tea.TeaModel {
        public class ExportToModule : Tea.TeaModel {
            public var source: String?

            public var sourcePath: String?

            public var statePath: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.source != nil {
                    map["source"] = self.source!
                }
                if self.sourcePath != nil {
                    map["sourcePath"] = self.sourcePath!
                }
                if self.statePath != nil {
                    map["statePath"] = self.statePath!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["source"] as? String {
                    self.source = value
                }
                if let value = dict["sourcePath"] as? String {
                    self.sourcePath = value
                }
                if let value = dict["statePath"] as? String {
                    self.statePath = value
                }
            }
        }
        public class IncludeRules : Tea.TeaModel {
            public var key: String?

            public var values: [String]?

            public override init() {
                super.init()
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
                    map["key"] = self.key!
                }
                if self.values != nil {
                    map["values"] = self.values!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["key"] as? String {
                    self.key = value
                }
                if let value = dict["values"] as? [String] {
                    self.values = value
                }
            }
        }
        public class Modules : Tea.TeaModel {
            public var source: String?

            public var sourcePath: String?

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
                if self.source != nil {
                    map["source"] = self.source!
                }
                if self.sourcePath != nil {
                    map["sourcePath"] = self.sourcePath!
                }
                if self.version != nil {
                    map["version"] = self.version!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["source"] as? String {
                    self.source = value
                }
                if let value = dict["sourcePath"] as? String {
                    self.sourcePath = value
                }
                if let value = dict["version"] as? String {
                    self.version = value
                }
            }
        }
        public class Variables : Tea.TeaModel {
            public var properties: [String]?

            public var resourceType: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.properties != nil {
                    map["properties"] = self.properties!
                }
                if self.resourceType != nil {
                    map["resourceType"] = self.resourceType!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["properties"] as? [String] {
                    self.properties = value
                }
                if let value = dict["resourceType"] as? String {
                    self.resourceType = value
                }
            }
        }
        public var createTime: String?

        public var description_: String?

        public var elapsedTime: Int64?

        public var exportTaskId: String?

        public var exportToModule: ListResourceExportTaskVersionsResponseBody.ExportTasks.ExportToModule?

        public var exportVersion: String?

        public var failedReason: String?

        public var includeRules: [ListResourceExportTaskVersionsResponseBody.ExportTasks.IncludeRules]?

        public var modules: [ListResourceExportTaskVersionsResponseBody.ExportTasks.Modules]?

        public var name: String?

        public var status: String?

        public var variables: [ListResourceExportTaskVersionsResponseBody.ExportTasks.Variables]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.exportToModule?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.createTime != nil {
                map["createTime"] = self.createTime!
            }
            if self.description_ != nil {
                map["description"] = self.description_!
            }
            if self.elapsedTime != nil {
                map["elapsedTime"] = self.elapsedTime!
            }
            if self.exportTaskId != nil {
                map["exportTaskId"] = self.exportTaskId!
            }
            if self.exportToModule != nil {
                map["exportToModule"] = self.exportToModule?.toMap()
            }
            if self.exportVersion != nil {
                map["exportVersion"] = self.exportVersion!
            }
            if self.failedReason != nil {
                map["failedReason"] = self.failedReason!
            }
            if self.includeRules != nil {
                var tmp : [Any] = []
                for k in self.includeRules! {
                    tmp.append(k.toMap())
                }
                map["includeRules"] = tmp
            }
            if self.modules != nil {
                var tmp : [Any] = []
                for k in self.modules! {
                    tmp.append(k.toMap())
                }
                map["modules"] = tmp
            }
            if self.name != nil {
                map["name"] = self.name!
            }
            if self.status != nil {
                map["status"] = self.status!
            }
            if self.variables != nil {
                var tmp : [Any] = []
                for k in self.variables! {
                    tmp.append(k.toMap())
                }
                map["variables"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["createTime"] as? String {
                self.createTime = value
            }
            if let value = dict["description"] as? String {
                self.description_ = value
            }
            if let value = dict["elapsedTime"] as? Int64 {
                self.elapsedTime = value
            }
            if let value = dict["exportTaskId"] as? String {
                self.exportTaskId = value
            }
            if let value = dict["exportToModule"] as? [String: Any?] {
                var model = ListResourceExportTaskVersionsResponseBody.ExportTasks.ExportToModule()
                model.fromMap(value)
                self.exportToModule = model
            }
            if let value = dict["exportVersion"] as? String {
                self.exportVersion = value
            }
            if let value = dict["failedReason"] as? String {
                self.failedReason = value
            }
            if let value = dict["includeRules"] as? [Any?] {
                var tmp : [ListResourceExportTaskVersionsResponseBody.ExportTasks.IncludeRules] = []
                for v in value {
                    if v != nil {
                        var model = ListResourceExportTaskVersionsResponseBody.ExportTasks.IncludeRules()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.includeRules = tmp
            }
            if let value = dict["modules"] as? [Any?] {
                var tmp : [ListResourceExportTaskVersionsResponseBody.ExportTasks.Modules] = []
                for v in value {
                    if v != nil {
                        var model = ListResourceExportTaskVersionsResponseBody.ExportTasks.Modules()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.modules = tmp
            }
            if let value = dict["name"] as? String {
                self.name = value
            }
            if let value = dict["status"] as? String {
                self.status = value
            }
            if let value = dict["variables"] as? [Any?] {
                var tmp : [ListResourceExportTaskVersionsResponseBody.ExportTasks.Variables] = []
                for v in value {
                    if v != nil {
                        var model = ListResourceExportTaskVersionsResponseBody.ExportTasks.Variables()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.variables = tmp
            }
        }
    }
    public var exportTasks: [ListResourceExportTaskVersionsResponseBody.ExportTasks]?

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
        if self.exportTasks != nil {
            var tmp : [Any] = []
            for k in self.exportTasks! {
                tmp.append(k.toMap())
            }
            map["exportTasks"] = tmp
        }
        if self.pageNumber != nil {
            map["pageNumber"] = self.pageNumber!
        }
        if self.pageSize != nil {
            map["pageSize"] = self.pageSize!
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        if self.totalCount != nil {
            map["totalCount"] = self.totalCount!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["exportTasks"] as? [Any?] {
            var tmp : [ListResourceExportTaskVersionsResponseBody.ExportTasks] = []
            for v in value {
                if v != nil {
                    var model = ListResourceExportTaskVersionsResponseBody.ExportTasks()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.exportTasks = tmp
        }
        if let value = dict["pageNumber"] as? Int32 {
            self.pageNumber = value
        }
        if let value = dict["pageSize"] as? Int32 {
            self.pageSize = value
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
        if let value = dict["totalCount"] as? Int32 {
            self.totalCount = value
        }
    }
}

public class ListResourceExportTaskVersionsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListResourceExportTaskVersionsResponseBody?

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
            var model = ListResourceExportTaskVersionsResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ListResourceExportTasksRequest : Tea.TeaModel {
    public var exportTaskId: String?

    public var keyword: String?

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
        if self.exportTaskId != nil {
            map["exportTaskId"] = self.exportTaskId!
        }
        if self.keyword != nil {
            map["keyword"] = self.keyword!
        }
        if self.pageNumber != nil {
            map["pageNumber"] = self.pageNumber!
        }
        if self.pageSize != nil {
            map["pageSize"] = self.pageSize!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["exportTaskId"] as? String {
            self.exportTaskId = value
        }
        if let value = dict["keyword"] as? String {
            self.keyword = value
        }
        if let value = dict["pageNumber"] as? Int32 {
            self.pageNumber = value
        }
        if let value = dict["pageSize"] as? Int32 {
            self.pageSize = value
        }
    }
}

public class ListResourceExportTasksResponseBody : Tea.TeaModel {
    public class ExportTasks : Tea.TeaModel {
        public class ExportToModule : Tea.TeaModel {
            public var source: String?

            public var sourcePath: String?

            public var statePath: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.source != nil {
                    map["source"] = self.source!
                }
                if self.sourcePath != nil {
                    map["sourcePath"] = self.sourcePath!
                }
                if self.statePath != nil {
                    map["statePath"] = self.statePath!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["source"] as? String {
                    self.source = value
                }
                if let value = dict["sourcePath"] as? String {
                    self.sourcePath = value
                }
                if let value = dict["statePath"] as? String {
                    self.statePath = value
                }
            }
        }
        public class IncludeRules : Tea.TeaModel {
            public var key: String?

            public var values: [String]?

            public override init() {
                super.init()
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
                    map["key"] = self.key!
                }
                if self.values != nil {
                    map["values"] = self.values!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["key"] as? String {
                    self.key = value
                }
                if let value = dict["values"] as? [String] {
                    self.values = value
                }
            }
        }
        public class Modules : Tea.TeaModel {
            public var source: String?

            public var sourcePath: String?

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
                if self.source != nil {
                    map["source"] = self.source!
                }
                if self.sourcePath != nil {
                    map["sourcePath"] = self.sourcePath!
                }
                if self.version != nil {
                    map["version"] = self.version!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["source"] as? String {
                    self.source = value
                }
                if let value = dict["sourcePath"] as? String {
                    self.sourcePath = value
                }
                if let value = dict["version"] as? String {
                    self.version = value
                }
            }
        }
        public class Variables : Tea.TeaModel {
            public var properties: [String]?

            public var resourceType: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.properties != nil {
                    map["properties"] = self.properties!
                }
                if self.resourceType != nil {
                    map["resourceType"] = self.resourceType!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["properties"] as? [String] {
                    self.properties = value
                }
                if let value = dict["resourceType"] as? String {
                    self.resourceType = value
                }
            }
        }
        public var createTime: String?

        public var description_: String?

        public var elapsedTime: Int64?

        public var exportStatus: String?

        public var exportTaskId: String?

        public var exportToModule: ListResourceExportTasksResponseBody.ExportTasks.ExportToModule?

        public var exportVersion: String?

        public var includeRules: [ListResourceExportTasksResponseBody.ExportTasks.IncludeRules]?

        public var modules: [ListResourceExportTasksResponseBody.ExportTasks.Modules]?

        public var name: String?

        public var status: String?

        public var variables: [ListResourceExportTasksResponseBody.ExportTasks.Variables]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.exportToModule?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.createTime != nil {
                map["createTime"] = self.createTime!
            }
            if self.description_ != nil {
                map["description"] = self.description_!
            }
            if self.elapsedTime != nil {
                map["elapsedTime"] = self.elapsedTime!
            }
            if self.exportStatus != nil {
                map["exportStatus"] = self.exportStatus!
            }
            if self.exportTaskId != nil {
                map["exportTaskId"] = self.exportTaskId!
            }
            if self.exportToModule != nil {
                map["exportToModule"] = self.exportToModule?.toMap()
            }
            if self.exportVersion != nil {
                map["exportVersion"] = self.exportVersion!
            }
            if self.includeRules != nil {
                var tmp : [Any] = []
                for k in self.includeRules! {
                    tmp.append(k.toMap())
                }
                map["includeRules"] = tmp
            }
            if self.modules != nil {
                var tmp : [Any] = []
                for k in self.modules! {
                    tmp.append(k.toMap())
                }
                map["modules"] = tmp
            }
            if self.name != nil {
                map["name"] = self.name!
            }
            if self.status != nil {
                map["status"] = self.status!
            }
            if self.variables != nil {
                var tmp : [Any] = []
                for k in self.variables! {
                    tmp.append(k.toMap())
                }
                map["variables"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["createTime"] as? String {
                self.createTime = value
            }
            if let value = dict["description"] as? String {
                self.description_ = value
            }
            if let value = dict["elapsedTime"] as? Int64 {
                self.elapsedTime = value
            }
            if let value = dict["exportStatus"] as? String {
                self.exportStatus = value
            }
            if let value = dict["exportTaskId"] as? String {
                self.exportTaskId = value
            }
            if let value = dict["exportToModule"] as? [String: Any?] {
                var model = ListResourceExportTasksResponseBody.ExportTasks.ExportToModule()
                model.fromMap(value)
                self.exportToModule = model
            }
            if let value = dict["exportVersion"] as? String {
                self.exportVersion = value
            }
            if let value = dict["includeRules"] as? [Any?] {
                var tmp : [ListResourceExportTasksResponseBody.ExportTasks.IncludeRules] = []
                for v in value {
                    if v != nil {
                        var model = ListResourceExportTasksResponseBody.ExportTasks.IncludeRules()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.includeRules = tmp
            }
            if let value = dict["modules"] as? [Any?] {
                var tmp : [ListResourceExportTasksResponseBody.ExportTasks.Modules] = []
                for v in value {
                    if v != nil {
                        var model = ListResourceExportTasksResponseBody.ExportTasks.Modules()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.modules = tmp
            }
            if let value = dict["name"] as? String {
                self.name = value
            }
            if let value = dict["status"] as? String {
                self.status = value
            }
            if let value = dict["variables"] as? [Any?] {
                var tmp : [ListResourceExportTasksResponseBody.ExportTasks.Variables] = []
                for v in value {
                    if v != nil {
                        var model = ListResourceExportTasksResponseBody.ExportTasks.Variables()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.variables = tmp
            }
        }
    }
    public var exportTasks: [ListResourceExportTasksResponseBody.ExportTasks]?

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
        if self.exportTasks != nil {
            var tmp : [Any] = []
            for k in self.exportTasks! {
                tmp.append(k.toMap())
            }
            map["exportTasks"] = tmp
        }
        if self.pageNumber != nil {
            map["pageNumber"] = self.pageNumber!
        }
        if self.pageSize != nil {
            map["pageSize"] = self.pageSize!
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        if self.totalCount != nil {
            map["totalCount"] = self.totalCount!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["exportTasks"] as? [Any?] {
            var tmp : [ListResourceExportTasksResponseBody.ExportTasks] = []
            for v in value {
                if v != nil {
                    var model = ListResourceExportTasksResponseBody.ExportTasks()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.exportTasks = tmp
        }
        if let value = dict["pageNumber"] as? Int32 {
            self.pageNumber = value
        }
        if let value = dict["pageSize"] as? Int32 {
            self.pageSize = value
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
        if let value = dict["totalCount"] as? Int32 {
            self.totalCount = value
        }
    }
}

public class ListResourceExportTasksResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListResourceExportTasksResponseBody?

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
            var model = ListResourceExportTasksResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ListResourceTypesRequest : Tea.TeaModel {
    public var acceptLanguage: String?

    public var keyword: String?

    public var maxResults: Int32?

    public var nextToken: String?

    public var product: String?

    public var sort: String?

    public var status: String?

    public var subcategory: String?

    public var supportTerraformer: Bool?

    public var terraformProviderVersion: String?

    public var terraformResourceTypes: [String]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.acceptLanguage != nil {
            map["acceptLanguage"] = self.acceptLanguage!
        }
        if self.keyword != nil {
            map["keyword"] = self.keyword!
        }
        if self.maxResults != nil {
            map["maxResults"] = self.maxResults!
        }
        if self.nextToken != nil {
            map["nextToken"] = self.nextToken!
        }
        if self.product != nil {
            map["product"] = self.product!
        }
        if self.sort != nil {
            map["sort"] = self.sort!
        }
        if self.status != nil {
            map["status"] = self.status!
        }
        if self.subcategory != nil {
            map["subcategory"] = self.subcategory!
        }
        if self.supportTerraformer != nil {
            map["supportTerraformer"] = self.supportTerraformer!
        }
        if self.terraformProviderVersion != nil {
            map["terraformProviderVersion"] = self.terraformProviderVersion!
        }
        if self.terraformResourceTypes != nil {
            map["terraformResourceTypes"] = self.terraformResourceTypes!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["acceptLanguage"] as? String {
            self.acceptLanguage = value
        }
        if let value = dict["keyword"] as? String {
            self.keyword = value
        }
        if let value = dict["maxResults"] as? Int32 {
            self.maxResults = value
        }
        if let value = dict["nextToken"] as? String {
            self.nextToken = value
        }
        if let value = dict["product"] as? String {
            self.product = value
        }
        if let value = dict["sort"] as? String {
            self.sort = value
        }
        if let value = dict["status"] as? String {
            self.status = value
        }
        if let value = dict["subcategory"] as? String {
            self.subcategory = value
        }
        if let value = dict["supportTerraformer"] as? Bool {
            self.supportTerraformer = value
        }
        if let value = dict["terraformProviderVersion"] as? String {
            self.terraformProviderVersion = value
        }
        if let value = dict["terraformResourceTypes"] as? [String] {
            self.terraformResourceTypes = value
        }
    }
}

public class ListResourceTypesShrinkRequest : Tea.TeaModel {
    public var acceptLanguage: String?

    public var keyword: String?

    public var maxResults: Int32?

    public var nextToken: String?

    public var product: String?

    public var sort: String?

    public var status: String?

    public var subcategory: String?

    public var supportTerraformer: Bool?

    public var terraformProviderVersion: String?

    public var terraformResourceTypesShrink: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.acceptLanguage != nil {
            map["acceptLanguage"] = self.acceptLanguage!
        }
        if self.keyword != nil {
            map["keyword"] = self.keyword!
        }
        if self.maxResults != nil {
            map["maxResults"] = self.maxResults!
        }
        if self.nextToken != nil {
            map["nextToken"] = self.nextToken!
        }
        if self.product != nil {
            map["product"] = self.product!
        }
        if self.sort != nil {
            map["sort"] = self.sort!
        }
        if self.status != nil {
            map["status"] = self.status!
        }
        if self.subcategory != nil {
            map["subcategory"] = self.subcategory!
        }
        if self.supportTerraformer != nil {
            map["supportTerraformer"] = self.supportTerraformer!
        }
        if self.terraformProviderVersion != nil {
            map["terraformProviderVersion"] = self.terraformProviderVersion!
        }
        if self.terraformResourceTypesShrink != nil {
            map["terraformResourceTypes"] = self.terraformResourceTypesShrink!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["acceptLanguage"] as? String {
            self.acceptLanguage = value
        }
        if let value = dict["keyword"] as? String {
            self.keyword = value
        }
        if let value = dict["maxResults"] as? Int32 {
            self.maxResults = value
        }
        if let value = dict["nextToken"] as? String {
            self.nextToken = value
        }
        if let value = dict["product"] as? String {
            self.product = value
        }
        if let value = dict["sort"] as? String {
            self.sort = value
        }
        if let value = dict["status"] as? String {
            self.status = value
        }
        if let value = dict["subcategory"] as? String {
            self.subcategory = value
        }
        if let value = dict["supportTerraformer"] as? Bool {
            self.supportTerraformer = value
        }
        if let value = dict["terraformProviderVersion"] as? String {
            self.terraformProviderVersion = value
        }
        if let value = dict["terraformResourceTypes"] as? String {
            self.terraformResourceTypesShrink = value
        }
    }
}

public class ListResourceTypesResponseBody : Tea.TeaModel {
    public class ResourceTypes : Tea.TeaModel {
        public var description_: String?

        public var product: String?

        public var productName: String?

        public var resourceDetailPageUrl: String?

        public var resourceListPageUrl: String?

        public var status: String?

        public var statusStartVersion: String?

        public var subcategory: String?

        public var supportTerraformer: String?

        public var terraformProviderVersion: String?

        public var terraformResourceType: String?

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
                map["description"] = self.description_!
            }
            if self.product != nil {
                map["product"] = self.product!
            }
            if self.productName != nil {
                map["productName"] = self.productName!
            }
            if self.resourceDetailPageUrl != nil {
                map["resourceDetailPageUrl"] = self.resourceDetailPageUrl!
            }
            if self.resourceListPageUrl != nil {
                map["resourceListPageUrl"] = self.resourceListPageUrl!
            }
            if self.status != nil {
                map["status"] = self.status!
            }
            if self.statusStartVersion != nil {
                map["statusStartVersion"] = self.statusStartVersion!
            }
            if self.subcategory != nil {
                map["subcategory"] = self.subcategory!
            }
            if self.supportTerraformer != nil {
                map["supportTerraformer"] = self.supportTerraformer!
            }
            if self.terraformProviderVersion != nil {
                map["terraformProviderVersion"] = self.terraformProviderVersion!
            }
            if self.terraformResourceType != nil {
                map["terraformResourceType"] = self.terraformResourceType!
            }
            if self.title != nil {
                map["title"] = self.title!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["description"] as? String {
                self.description_ = value
            }
            if let value = dict["product"] as? String {
                self.product = value
            }
            if let value = dict["productName"] as? String {
                self.productName = value
            }
            if let value = dict["resourceDetailPageUrl"] as? String {
                self.resourceDetailPageUrl = value
            }
            if let value = dict["resourceListPageUrl"] as? String {
                self.resourceListPageUrl = value
            }
            if let value = dict["status"] as? String {
                self.status = value
            }
            if let value = dict["statusStartVersion"] as? String {
                self.statusStartVersion = value
            }
            if let value = dict["subcategory"] as? String {
                self.subcategory = value
            }
            if let value = dict["supportTerraformer"] as? String {
                self.supportTerraformer = value
            }
            if let value = dict["terraformProviderVersion"] as? String {
                self.terraformProviderVersion = value
            }
            if let value = dict["terraformResourceType"] as? String {
                self.terraformResourceType = value
            }
            if let value = dict["title"] as? String {
                self.title = value
            }
        }
    }
    public var maxResults: Int32?

    public var nextToken: String?

    public var requestId: String?

    public var resourceTypes: [ListResourceTypesResponseBody.ResourceTypes]?

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
        if self.maxResults != nil {
            map["maxResults"] = self.maxResults!
        }
        if self.nextToken != nil {
            map["nextToken"] = self.nextToken!
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        if self.resourceTypes != nil {
            var tmp : [Any] = []
            for k in self.resourceTypes! {
                tmp.append(k.toMap())
            }
            map["resourceTypes"] = tmp
        }
        if self.totalCount != nil {
            map["totalCount"] = self.totalCount!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["maxResults"] as? Int32 {
            self.maxResults = value
        }
        if let value = dict["nextToken"] as? String {
            self.nextToken = value
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
        if let value = dict["resourceTypes"] as? [Any?] {
            var tmp : [ListResourceTypesResponseBody.ResourceTypes] = []
            for v in value {
                if v != nil {
                    var model = ListResourceTypesResponseBody.ResourceTypes()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.resourceTypes = tmp
        }
        if let value = dict["totalCount"] as? Int32 {
            self.totalCount = value
        }
    }
}

public class ListResourceTypesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListResourceTypesResponseBody?

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
            var model = ListResourceTypesResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ListTasksRequest : Tea.TeaModel {
    public class Tag : Tea.TeaModel {
        public var tagKey: String?

        public var tagValue: String?

        public override init() {
            super.init()
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
                map["tagKey"] = self.tagKey!
            }
            if self.tagValue != nil {
                map["tagValue"] = self.tagValue!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["tagKey"] as? String {
                self.tagKey = value
            }
            if let value = dict["tagValue"] as? String {
                self.tagValue = value
            }
        }
    }
    public var groupId: String?

    public var keyword: String?

    public var moduleId: String?

    public var pageNumber: Int32?

    public var pageSize: Int32?

    public var projectId: String?

    public var status: String?

    public var tag: [ListTasksRequest.Tag]?

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
        if self.groupId != nil {
            map["groupId"] = self.groupId!
        }
        if self.keyword != nil {
            map["keyword"] = self.keyword!
        }
        if self.moduleId != nil {
            map["moduleId"] = self.moduleId!
        }
        if self.pageNumber != nil {
            map["pageNumber"] = self.pageNumber!
        }
        if self.pageSize != nil {
            map["pageSize"] = self.pageSize!
        }
        if self.projectId != nil {
            map["projectId"] = self.projectId!
        }
        if self.status != nil {
            map["status"] = self.status!
        }
        if self.tag != nil {
            var tmp : [Any] = []
            for k in self.tag! {
                tmp.append(k.toMap())
            }
            map["tag"] = tmp
        }
        if self.taskId != nil {
            map["taskId"] = self.taskId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["groupId"] as? String {
            self.groupId = value
        }
        if let value = dict["keyword"] as? String {
            self.keyword = value
        }
        if let value = dict["moduleId"] as? String {
            self.moduleId = value
        }
        if let value = dict["pageNumber"] as? Int32 {
            self.pageNumber = value
        }
        if let value = dict["pageSize"] as? Int32 {
            self.pageSize = value
        }
        if let value = dict["projectId"] as? String {
            self.projectId = value
        }
        if let value = dict["status"] as? String {
            self.status = value
        }
        if let value = dict["tag"] as? [Any?] {
            var tmp : [ListTasksRequest.Tag] = []
            for v in value {
                if v != nil {
                    var model = ListTasksRequest.Tag()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.tag = tmp
        }
        if let value = dict["taskId"] as? String {
            self.taskId = value
        }
    }
}

public class ListTasksShrinkRequest : Tea.TeaModel {
    public var groupId: String?

    public var keyword: String?

    public var moduleId: String?

    public var pageNumber: Int32?

    public var pageSize: Int32?

    public var projectId: String?

    public var status: String?

    public var tagShrink: String?

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
        if self.groupId != nil {
            map["groupId"] = self.groupId!
        }
        if self.keyword != nil {
            map["keyword"] = self.keyword!
        }
        if self.moduleId != nil {
            map["moduleId"] = self.moduleId!
        }
        if self.pageNumber != nil {
            map["pageNumber"] = self.pageNumber!
        }
        if self.pageSize != nil {
            map["pageSize"] = self.pageSize!
        }
        if self.projectId != nil {
            map["projectId"] = self.projectId!
        }
        if self.status != nil {
            map["status"] = self.status!
        }
        if self.tagShrink != nil {
            map["tag"] = self.tagShrink!
        }
        if self.taskId != nil {
            map["taskId"] = self.taskId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["groupId"] as? String {
            self.groupId = value
        }
        if let value = dict["keyword"] as? String {
            self.keyword = value
        }
        if let value = dict["moduleId"] as? String {
            self.moduleId = value
        }
        if let value = dict["pageNumber"] as? Int32 {
            self.pageNumber = value
        }
        if let value = dict["pageSize"] as? Int32 {
            self.pageSize = value
        }
        if let value = dict["projectId"] as? String {
            self.projectId = value
        }
        if let value = dict["status"] as? String {
            self.status = value
        }
        if let value = dict["tag"] as? String {
            self.tagShrink = value
        }
        if let value = dict["taskId"] as? String {
            self.taskId = value
        }
    }
}

public class ListTasksResponseBody : Tea.TeaModel {
    public class Tasks : Tea.TeaModel {
        public class GroupInfo : Tea.TeaModel {
            public var groupId: String?

            public var groupName: String?

            public var projectId: String?

            public var projectName: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.groupId != nil {
                    map["groupId"] = self.groupId!
                }
                if self.groupName != nil {
                    map["groupName"] = self.groupName!
                }
                if self.projectId != nil {
                    map["projectId"] = self.projectId!
                }
                if self.projectName != nil {
                    map["projectName"] = self.projectName!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["groupId"] as? String {
                    self.groupId = value
                }
                if let value = dict["groupName"] as? String {
                    self.groupName = value
                }
                if let value = dict["projectId"] as? String {
                    self.projectId = value
                }
                if let value = dict["projectName"] as? String {
                    self.projectName = value
                }
            }
        }
        public class Tags : Tea.TeaModel {
            public var key: String?

            public var tagKey: String?

            public var tagValue: String?

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
                    map["key"] = self.key!
                }
                if self.tagKey != nil {
                    map["tagKey"] = self.tagKey!
                }
                if self.tagValue != nil {
                    map["tagValue"] = self.tagValue!
                }
                if self.value != nil {
                    map["value"] = self.value!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["key"] as? String {
                    self.key = value
                }
                if let value = dict["tagKey"] as? String {
                    self.tagKey = value
                }
                if let value = dict["tagValue"] as? String {
                    self.tagValue = value
                }
                if let value = dict["value"] as? String {
                    self.value = value
                }
            }
        }
        public var autoApply: Bool?

        public var createTime: String?

        public var currentJobId: String?

        public var currentJobStatus: String?

        public var deletionProtection: Bool?

        public var groupInfo: ListTasksResponseBody.Tasks.GroupInfo?

        public var latestModuleVersion: String?

        public var moduleId: String?

        public var moduleName: String?

        public var moduleVersion: String?

        public var name: String?

        public var status: String?

        public var tags: [ListTasksResponseBody.Tasks.Tags]?

        public var taskId: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.groupInfo?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.autoApply != nil {
                map["autoApply"] = self.autoApply!
            }
            if self.createTime != nil {
                map["createTime"] = self.createTime!
            }
            if self.currentJobId != nil {
                map["currentJobId"] = self.currentJobId!
            }
            if self.currentJobStatus != nil {
                map["currentJobStatus"] = self.currentJobStatus!
            }
            if self.deletionProtection != nil {
                map["deletionProtection"] = self.deletionProtection!
            }
            if self.groupInfo != nil {
                map["groupInfo"] = self.groupInfo?.toMap()
            }
            if self.latestModuleVersion != nil {
                map["latestModuleVersion"] = self.latestModuleVersion!
            }
            if self.moduleId != nil {
                map["moduleId"] = self.moduleId!
            }
            if self.moduleName != nil {
                map["moduleName"] = self.moduleName!
            }
            if self.moduleVersion != nil {
                map["moduleVersion"] = self.moduleVersion!
            }
            if self.name != nil {
                map["name"] = self.name!
            }
            if self.status != nil {
                map["status"] = self.status!
            }
            if self.tags != nil {
                var tmp : [Any] = []
                for k in self.tags! {
                    tmp.append(k.toMap())
                }
                map["tags"] = tmp
            }
            if self.taskId != nil {
                map["taskId"] = self.taskId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["autoApply"] as? Bool {
                self.autoApply = value
            }
            if let value = dict["createTime"] as? String {
                self.createTime = value
            }
            if let value = dict["currentJobId"] as? String {
                self.currentJobId = value
            }
            if let value = dict["currentJobStatus"] as? String {
                self.currentJobStatus = value
            }
            if let value = dict["deletionProtection"] as? Bool {
                self.deletionProtection = value
            }
            if let value = dict["groupInfo"] as? [String: Any?] {
                var model = ListTasksResponseBody.Tasks.GroupInfo()
                model.fromMap(value)
                self.groupInfo = model
            }
            if let value = dict["latestModuleVersion"] as? String {
                self.latestModuleVersion = value
            }
            if let value = dict["moduleId"] as? String {
                self.moduleId = value
            }
            if let value = dict["moduleName"] as? String {
                self.moduleName = value
            }
            if let value = dict["moduleVersion"] as? String {
                self.moduleVersion = value
            }
            if let value = dict["name"] as? String {
                self.name = value
            }
            if let value = dict["status"] as? String {
                self.status = value
            }
            if let value = dict["tags"] as? [Any?] {
                var tmp : [ListTasksResponseBody.Tasks.Tags] = []
                for v in value {
                    if v != nil {
                        var model = ListTasksResponseBody.Tasks.Tags()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.tags = tmp
            }
            if let value = dict["taskId"] as? String {
                self.taskId = value
            }
        }
    }
    public var pageNumber: Int32?

    public var pageSize: Int32?

    public var requestId: String?

    public var tasks: [ListTasksResponseBody.Tasks]?

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
            map["pageNumber"] = self.pageNumber!
        }
        if self.pageSize != nil {
            map["pageSize"] = self.pageSize!
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        if self.tasks != nil {
            var tmp : [Any] = []
            for k in self.tasks! {
                tmp.append(k.toMap())
            }
            map["tasks"] = tmp
        }
        if self.totalCount != nil {
            map["totalCount"] = self.totalCount!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["pageNumber"] as? Int32 {
            self.pageNumber = value
        }
        if let value = dict["pageSize"] as? Int32 {
            self.pageSize = value
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
        if let value = dict["tasks"] as? [Any?] {
            var tmp : [ListTasksResponseBody.Tasks] = []
            for v in value {
                if v != nil {
                    var model = ListTasksResponseBody.Tasks()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.tasks = tmp
        }
        if let value = dict["totalCount"] as? Int32 {
            self.totalCount = value
        }
    }
}

public class ListTasksResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListTasksResponseBody?

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
            var model = ListTasksResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ListTerraformProviderVersionsRequest : Tea.TeaModel {
    public var keyword: String?

    public var maxResults: Int32?

    public var nextToken: String?

    public var usage: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.keyword != nil {
            map["keyword"] = self.keyword!
        }
        if self.maxResults != nil {
            map["maxResults"] = self.maxResults!
        }
        if self.nextToken != nil {
            map["nextToken"] = self.nextToken!
        }
        if self.usage != nil {
            map["usage"] = self.usage!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["keyword"] as? String {
            self.keyword = value
        }
        if let value = dict["maxResults"] as? Int32 {
            self.maxResults = value
        }
        if let value = dict["nextToken"] as? String {
            self.nextToken = value
        }
        if let value = dict["usage"] as? String {
            self.usage = value
        }
    }
}

public class ListTerraformProviderVersionsResponseBody : Tea.TeaModel {
    public class Versions : Tea.TeaModel {
        public var publishedTime: String?

        public var status: String?

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
            if self.publishedTime != nil {
                map["publishedTime"] = self.publishedTime!
            }
            if self.status != nil {
                map["status"] = self.status!
            }
            if self.version != nil {
                map["version"] = self.version!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["publishedTime"] as? String {
                self.publishedTime = value
            }
            if let value = dict["status"] as? String {
                self.status = value
            }
            if let value = dict["version"] as? String {
                self.version = value
            }
        }
    }
    public var maxResults: Int32?

    public var nextToken: String?

    public var requestId: String?

    public var totalCount: Int32?

    public var versions: [ListTerraformProviderVersionsResponseBody.Versions]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.maxResults != nil {
            map["maxResults"] = self.maxResults!
        }
        if self.nextToken != nil {
            map["nextToken"] = self.nextToken!
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        if self.totalCount != nil {
            map["totalCount"] = self.totalCount!
        }
        if self.versions != nil {
            var tmp : [Any] = []
            for k in self.versions! {
                tmp.append(k.toMap())
            }
            map["versions"] = tmp
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["maxResults"] as? Int32 {
            self.maxResults = value
        }
        if let value = dict["nextToken"] as? String {
            self.nextToken = value
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
        if let value = dict["totalCount"] as? Int32 {
            self.totalCount = value
        }
        if let value = dict["versions"] as? [Any?] {
            var tmp : [ListTerraformProviderVersionsResponseBody.Versions] = []
            for v in value {
                if v != nil {
                    var model = ListTerraformProviderVersionsResponseBody.Versions()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.versions = tmp
        }
    }
}

public class ListTerraformProviderVersionsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListTerraformProviderVersionsResponseBody?

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
            var model = ListTerraformProviderVersionsResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class OperateJobRequest : Tea.TeaModel {
    public var comment: String?

    public var taskType: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.comment != nil {
            map["comment"] = self.comment!
        }
        if self.taskType != nil {
            map["taskType"] = self.taskType!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["comment"] as? String {
            self.comment = value
        }
        if let value = dict["taskType"] as? String {
            self.taskType = value
        }
    }
}

public class OperateJobResponseBody : Tea.TeaModel {
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
            map["requestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
    }
}

public class OperateJobResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: OperateJobResponseBody?

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
            var model = OperateJobResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class PublishRegistryModuleVersionRequest : Tea.TeaModel {
    public var clientToken: String?

    public var moduleName: String?

    public var namespaceName: String?

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
        if self.clientToken != nil {
            map["clientToken"] = self.clientToken!
        }
        if self.moduleName != nil {
            map["moduleName"] = self.moduleName!
        }
        if self.namespaceName != nil {
            map["namespaceName"] = self.namespaceName!
        }
        if self.version != nil {
            map["version"] = self.version!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["clientToken"] as? String {
            self.clientToken = value
        }
        if let value = dict["moduleName"] as? String {
            self.moduleName = value
        }
        if let value = dict["namespaceName"] as? String {
            self.namespaceName = value
        }
        if let value = dict["version"] as? String {
            self.version = value
        }
    }
}

public class PublishRegistryModuleVersionResponseBody : Tea.TeaModel {
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
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        if self.version != nil {
            map["version"] = self.version!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
        if let value = dict["version"] as? String {
            self.version = value
        }
    }
}

public class PublishRegistryModuleVersionResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: PublishRegistryModuleVersionResponseBody?

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
            var model = PublishRegistryModuleVersionResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class RemoveSharedAccountsRequest : Tea.TeaModel {
    public var accountIds: [Int64]?

    public var resourceId: String?

    public var resourceType: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.accountIds != nil {
            map["accountIds"] = self.accountIds!
        }
        if self.resourceId != nil {
            map["resourceId"] = self.resourceId!
        }
        if self.resourceType != nil {
            map["resourceType"] = self.resourceType!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["accountIds"] as? [Int64] {
            self.accountIds = value
        }
        if let value = dict["resourceId"] as? String {
            self.resourceId = value
        }
        if let value = dict["resourceType"] as? String {
            self.resourceType = value
        }
    }
}

public class RemoveSharedAccountsShrinkRequest : Tea.TeaModel {
    public var accountIdsShrink: String?

    public var resourceId: String?

    public var resourceType: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.accountIdsShrink != nil {
            map["accountIds"] = self.accountIdsShrink!
        }
        if self.resourceId != nil {
            map["resourceId"] = self.resourceId!
        }
        if self.resourceType != nil {
            map["resourceType"] = self.resourceType!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["accountIds"] as? String {
            self.accountIdsShrink = value
        }
        if let value = dict["resourceId"] as? String {
            self.resourceId = value
        }
        if let value = dict["resourceType"] as? String {
            self.resourceType = value
        }
    }
}

public class RemoveSharedAccountsResponseBody : Tea.TeaModel {
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
            map["requestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
    }
}

public class RemoveSharedAccountsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: RemoveSharedAccountsResponseBody?

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
            var model = RemoveSharedAccountsResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class UpdateExplorerModuleAttributeRequest : Tea.TeaModel {
    public var clientToken: String?

    public var description_: String?

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
        if self.clientToken != nil {
            map["clientToken"] = self.clientToken!
        }
        if self.description_ != nil {
            map["description"] = self.description_!
        }
        if self.name != nil {
            map["name"] = self.name!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["clientToken"] as? String {
            self.clientToken = value
        }
        if let value = dict["description"] as? String {
            self.description_ = value
        }
        if let value = dict["name"] as? String {
            self.name = value
        }
    }
}

public class UpdateExplorerModuleAttributeResponseBody : Tea.TeaModel {
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
            map["requestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
    }
}

public class UpdateExplorerModuleAttributeResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpdateExplorerModuleAttributeResponseBody?

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
            var model = UpdateExplorerModuleAttributeResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class UpdateGroupRequest : Tea.TeaModel {
    public class NotifyConfig : Tea.TeaModel {
        public var notifyPath: String?

        public var notifyType: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.notifyPath != nil {
                map["notifyPath"] = self.notifyPath!
            }
            if self.notifyType != nil {
                map["notifyType"] = self.notifyType!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["notifyPath"] as? String {
                self.notifyPath = value
            }
            if let value = dict["notifyType"] as? String {
                self.notifyType = value
            }
        }
    }
    public class TriggerConfig : Tea.TeaModel {
        public var triggerStrategy: String?

        public var triggerValue: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.triggerStrategy != nil {
                map["triggerStrategy"] = self.triggerStrategy!
            }
            if self.triggerValue != nil {
                map["triggerValue"] = self.triggerValue!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["triggerStrategy"] as? String {
                self.triggerStrategy = value
            }
            if let value = dict["triggerValue"] as? String {
                self.triggerValue = value
            }
        }
    }
    public var autoDestroy: Bool?

    public var autoTrigger: Bool?

    public var clientToken: String?

    public var description_: String?

    public var forcedSetting: Bool?

    public var name: String?

    public var notifyConfig: [UpdateGroupRequest.NotifyConfig]?

    public var notifyOperationTypes: [String]?

    public var ramRole: String?

    public var reportExportField: [String]?

    public var reportExportPath: String?

    public var terraformProviderVersion: String?

    public var triggerConfig: [UpdateGroupRequest.TriggerConfig]?

    public var triggerResourceType: [String]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.autoDestroy != nil {
            map["autoDestroy"] = self.autoDestroy!
        }
        if self.autoTrigger != nil {
            map["autoTrigger"] = self.autoTrigger!
        }
        if self.clientToken != nil {
            map["clientToken"] = self.clientToken!
        }
        if self.description_ != nil {
            map["description"] = self.description_!
        }
        if self.forcedSetting != nil {
            map["forcedSetting"] = self.forcedSetting!
        }
        if self.name != nil {
            map["name"] = self.name!
        }
        if self.notifyConfig != nil {
            var tmp : [Any] = []
            for k in self.notifyConfig! {
                tmp.append(k.toMap())
            }
            map["notifyConfig"] = tmp
        }
        if self.notifyOperationTypes != nil {
            map["notifyOperationTypes"] = self.notifyOperationTypes!
        }
        if self.ramRole != nil {
            map["ramRole"] = self.ramRole!
        }
        if self.reportExportField != nil {
            map["reportExportField"] = self.reportExportField!
        }
        if self.reportExportPath != nil {
            map["reportExportPath"] = self.reportExportPath!
        }
        if self.terraformProviderVersion != nil {
            map["terraformProviderVersion"] = self.terraformProviderVersion!
        }
        if self.triggerConfig != nil {
            var tmp : [Any] = []
            for k in self.triggerConfig! {
                tmp.append(k.toMap())
            }
            map["triggerConfig"] = tmp
        }
        if self.triggerResourceType != nil {
            map["triggerResourceType"] = self.triggerResourceType!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["autoDestroy"] as? Bool {
            self.autoDestroy = value
        }
        if let value = dict["autoTrigger"] as? Bool {
            self.autoTrigger = value
        }
        if let value = dict["clientToken"] as? String {
            self.clientToken = value
        }
        if let value = dict["description"] as? String {
            self.description_ = value
        }
        if let value = dict["forcedSetting"] as? Bool {
            self.forcedSetting = value
        }
        if let value = dict["name"] as? String {
            self.name = value
        }
        if let value = dict["notifyConfig"] as? [Any?] {
            var tmp : [UpdateGroupRequest.NotifyConfig] = []
            for v in value {
                if v != nil {
                    var model = UpdateGroupRequest.NotifyConfig()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.notifyConfig = tmp
        }
        if let value = dict["notifyOperationTypes"] as? [String] {
            self.notifyOperationTypes = value
        }
        if let value = dict["ramRole"] as? String {
            self.ramRole = value
        }
        if let value = dict["reportExportField"] as? [String] {
            self.reportExportField = value
        }
        if let value = dict["reportExportPath"] as? String {
            self.reportExportPath = value
        }
        if let value = dict["terraformProviderVersion"] as? String {
            self.terraformProviderVersion = value
        }
        if let value = dict["triggerConfig"] as? [Any?] {
            var tmp : [UpdateGroupRequest.TriggerConfig] = []
            for v in value {
                if v != nil {
                    var model = UpdateGroupRequest.TriggerConfig()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.triggerConfig = tmp
        }
        if let value = dict["triggerResourceType"] as? [String] {
            self.triggerResourceType = value
        }
    }
}

public class UpdateGroupResponseBody : Tea.TeaModel {
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
            map["requestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
    }
}

public class UpdateGroupResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpdateGroupResponseBody?

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
            var model = UpdateGroupResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class UpdateModuleAttributeRequest : Tea.TeaModel {
    public class GroupInfo : Tea.TeaModel {
        public var groupId: String?

        public var projectId: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.groupId != nil {
                map["groupId"] = self.groupId!
            }
            if self.projectId != nil {
                map["projectId"] = self.projectId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["groupId"] as? String {
                self.groupId = value
            }
            if let value = dict["projectId"] as? String {
                self.projectId = value
            }
        }
    }
    public class Tags : Tea.TeaModel {
        public var tagKey: String?

        public var tagValue: String?

        public override init() {
            super.init()
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
                map["tagKey"] = self.tagKey!
            }
            if self.tagValue != nil {
                map["tagValue"] = self.tagValue!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["tagKey"] as? String {
                self.tagKey = value
            }
            if let value = dict["tagValue"] as? String {
                self.tagValue = value
            }
        }
    }
    public var clientToken: String?

    public var description_: String?

    public var groupInfo: UpdateModuleAttributeRequest.GroupInfo?

    public var name: String?

    public var sourcePath: String?

    public var statePath: String?

    public var tags: [UpdateModuleAttributeRequest.Tags]?

    public var versionStrategy: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.groupInfo?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.clientToken != nil {
            map["clientToken"] = self.clientToken!
        }
        if self.description_ != nil {
            map["description"] = self.description_!
        }
        if self.groupInfo != nil {
            map["groupInfo"] = self.groupInfo?.toMap()
        }
        if self.name != nil {
            map["name"] = self.name!
        }
        if self.sourcePath != nil {
            map["sourcePath"] = self.sourcePath!
        }
        if self.statePath != nil {
            map["statePath"] = self.statePath!
        }
        if self.tags != nil {
            var tmp : [Any] = []
            for k in self.tags! {
                tmp.append(k.toMap())
            }
            map["tags"] = tmp
        }
        if self.versionStrategy != nil {
            map["versionStrategy"] = self.versionStrategy!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["clientToken"] as? String {
            self.clientToken = value
        }
        if let value = dict["description"] as? String {
            self.description_ = value
        }
        if let value = dict["groupInfo"] as? [String: Any?] {
            var model = UpdateModuleAttributeRequest.GroupInfo()
            model.fromMap(value)
            self.groupInfo = model
        }
        if let value = dict["name"] as? String {
            self.name = value
        }
        if let value = dict["sourcePath"] as? String {
            self.sourcePath = value
        }
        if let value = dict["statePath"] as? String {
            self.statePath = value
        }
        if let value = dict["tags"] as? [Any?] {
            var tmp : [UpdateModuleAttributeRequest.Tags] = []
            for v in value {
                if v != nil {
                    var model = UpdateModuleAttributeRequest.Tags()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.tags = tmp
        }
        if let value = dict["versionStrategy"] as? String {
            self.versionStrategy = value
        }
    }
}

public class UpdateModuleAttributeResponseBody : Tea.TeaModel {
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
            map["requestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
    }
}

public class UpdateModuleAttributeResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpdateModuleAttributeResponseBody?

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
            var model = UpdateModuleAttributeResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class UpdateProjectRequest : Tea.TeaModel {
    public var clientToken: String?

    public var description_: String?

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
        if self.clientToken != nil {
            map["clientToken"] = self.clientToken!
        }
        if self.description_ != nil {
            map["description"] = self.description_!
        }
        if self.name != nil {
            map["name"] = self.name!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["clientToken"] as? String {
            self.clientToken = value
        }
        if let value = dict["description"] as? String {
            self.description_ = value
        }
        if let value = dict["name"] as? String {
            self.name = value
        }
    }
}

public class UpdateProjectResponseBody : Tea.TeaModel {
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
            map["requestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
    }
}

public class UpdateProjectResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpdateProjectResponseBody?

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
            var model = UpdateProjectResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class UpdateRegistryModuleAttributeRequest : Tea.TeaModel {
    public var acl: String?

    public var clientToken: String?

    public var description_: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.acl != nil {
            map["acl"] = self.acl!
        }
        if self.clientToken != nil {
            map["clientToken"] = self.clientToken!
        }
        if self.description_ != nil {
            map["description"] = self.description_!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["acl"] as? String {
            self.acl = value
        }
        if let value = dict["clientToken"] as? String {
            self.clientToken = value
        }
        if let value = dict["description"] as? String {
            self.description_ = value
        }
    }
}

public class UpdateRegistryModuleAttributeResponseBody : Tea.TeaModel {
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
            map["requestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
    }
}

public class UpdateRegistryModuleAttributeResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpdateRegistryModuleAttributeResponseBody?

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
            var model = UpdateRegistryModuleAttributeResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class UpdateRegistryNamespaceAttributeRequest : Tea.TeaModel {
    public var acl: String?

    public var clientToken: String?

    public var description_: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.acl != nil {
            map["acl"] = self.acl!
        }
        if self.clientToken != nil {
            map["clientToken"] = self.clientToken!
        }
        if self.description_ != nil {
            map["description"] = self.description_!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["acl"] as? String {
            self.acl = value
        }
        if let value = dict["clientToken"] as? String {
            self.clientToken = value
        }
        if let value = dict["description"] as? String {
            self.description_ = value
        }
    }
}

public class UpdateRegistryNamespaceAttributeResponseBody : Tea.TeaModel {
    public var namespaceName: String?

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
        if self.namespaceName != nil {
            map["namespaceName"] = self.namespaceName!
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["namespaceName"] as? String {
            self.namespaceName = value
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
    }
}

public class UpdateRegistryNamespaceAttributeResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpdateRegistryNamespaceAttributeResponseBody?

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
            var model = UpdateRegistryNamespaceAttributeResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class UpdateResourceExportTaskAttributeRequest : Tea.TeaModel {
    public class ExportToModule : Tea.TeaModel {
        public var source: String?

        public var sourcePath: String?

        public var statePath: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.source != nil {
                map["source"] = self.source!
            }
            if self.sourcePath != nil {
                map["sourcePath"] = self.sourcePath!
            }
            if self.statePath != nil {
                map["statePath"] = self.statePath!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["source"] as? String {
                self.source = value
            }
            if let value = dict["sourcePath"] as? String {
                self.sourcePath = value
            }
            if let value = dict["statePath"] as? String {
                self.statePath = value
            }
        }
    }
    public class IncludeRules : Tea.TeaModel {
        public var key: String?

        public var values: [String]?

        public override init() {
            super.init()
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
                map["key"] = self.key!
            }
            if self.values != nil {
                map["values"] = self.values!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["key"] as? String {
                self.key = value
            }
            if let value = dict["values"] as? [String] {
                self.values = value
            }
        }
    }
    public class Variables : Tea.TeaModel {
        public var properties: [String]?

        public var resourceType: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.properties != nil {
                map["properties"] = self.properties!
            }
            if self.resourceType != nil {
                map["resourceType"] = self.resourceType!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["properties"] as? [String] {
                self.properties = value
            }
            if let value = dict["resourceType"] as? String {
                self.resourceType = value
            }
        }
    }
    public var clientToken: String?

    public var description_: String?

    public var exportToModule: UpdateResourceExportTaskAttributeRequest.ExportToModule?

    public var includeRules: [UpdateResourceExportTaskAttributeRequest.IncludeRules]?

    public var name: String?

    public var ramRole: String?

    public var terraformProviderVersion: String?

    public var terraformVersion: String?

    public var triggerStrategy: String?

    public var variables: [UpdateResourceExportTaskAttributeRequest.Variables]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.exportToModule?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.clientToken != nil {
            map["clientToken"] = self.clientToken!
        }
        if self.description_ != nil {
            map["description"] = self.description_!
        }
        if self.exportToModule != nil {
            map["exportToModule"] = self.exportToModule?.toMap()
        }
        if self.includeRules != nil {
            var tmp : [Any] = []
            for k in self.includeRules! {
                tmp.append(k.toMap())
            }
            map["includeRules"] = tmp
        }
        if self.name != nil {
            map["name"] = self.name!
        }
        if self.ramRole != nil {
            map["ramRole"] = self.ramRole!
        }
        if self.terraformProviderVersion != nil {
            map["terraformProviderVersion"] = self.terraformProviderVersion!
        }
        if self.terraformVersion != nil {
            map["terraformVersion"] = self.terraformVersion!
        }
        if self.triggerStrategy != nil {
            map["triggerStrategy"] = self.triggerStrategy!
        }
        if self.variables != nil {
            var tmp : [Any] = []
            for k in self.variables! {
                tmp.append(k.toMap())
            }
            map["variables"] = tmp
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["clientToken"] as? String {
            self.clientToken = value
        }
        if let value = dict["description"] as? String {
            self.description_ = value
        }
        if let value = dict["exportToModule"] as? [String: Any?] {
            var model = UpdateResourceExportTaskAttributeRequest.ExportToModule()
            model.fromMap(value)
            self.exportToModule = model
        }
        if let value = dict["includeRules"] as? [Any?] {
            var tmp : [UpdateResourceExportTaskAttributeRequest.IncludeRules] = []
            for v in value {
                if v != nil {
                    var model = UpdateResourceExportTaskAttributeRequest.IncludeRules()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.includeRules = tmp
        }
        if let value = dict["name"] as? String {
            self.name = value
        }
        if let value = dict["ramRole"] as? String {
            self.ramRole = value
        }
        if let value = dict["terraformProviderVersion"] as? String {
            self.terraformProviderVersion = value
        }
        if let value = dict["terraformVersion"] as? String {
            self.terraformVersion = value
        }
        if let value = dict["triggerStrategy"] as? String {
            self.triggerStrategy = value
        }
        if let value = dict["variables"] as? [Any?] {
            var tmp : [UpdateResourceExportTaskAttributeRequest.Variables] = []
            for v in value {
                if v != nil {
                    var model = UpdateResourceExportTaskAttributeRequest.Variables()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.variables = tmp
        }
    }
}

public class UpdateResourceExportTaskAttributeResponseBody : Tea.TeaModel {
    public var exportTaskId: String?

    public var exportVersion: String?

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
        if self.exportTaskId != nil {
            map["exportTaskId"] = self.exportTaskId!
        }
        if self.exportVersion != nil {
            map["exportVersion"] = self.exportVersion!
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["exportTaskId"] as? String {
            self.exportTaskId = value
        }
        if let value = dict["exportVersion"] as? String {
            self.exportVersion = value
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
    }
}

public class UpdateResourceExportTaskAttributeResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpdateResourceExportTaskAttributeResponseBody?

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
            var model = UpdateResourceExportTaskAttributeResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class UpdateTaskAttributeRequest : Tea.TeaModel {
    public class GroupInfo : Tea.TeaModel {
        public var groupId: String?

        public var projectId: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.groupId != nil {
                map["groupId"] = self.groupId!
            }
            if self.projectId != nil {
                map["projectId"] = self.projectId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["groupId"] as? String {
                self.groupId = value
            }
            if let value = dict["projectId"] as? String {
                self.projectId = value
            }
        }
    }
    public class Tags : Tea.TeaModel {
        public var tagKey: String?

        public var tagValue: String?

        public override init() {
            super.init()
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
                map["tagKey"] = self.tagKey!
            }
            if self.tagValue != nil {
                map["tagValue"] = self.tagValue!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["tagKey"] as? String {
                self.tagKey = value
            }
            if let value = dict["tagValue"] as? String {
                self.tagValue = value
            }
        }
    }
    public var autoApply: Bool?

    public var autoDestroy: Bool?

    public var clientToken: String?

    public var description_: String?

    public var groupInfo: UpdateTaskAttributeRequest.GroupInfo?

    public var initModuleState: Bool?

    public var moduleVersion: String?

    public var name: String?

    public var protectionStrategy: [String]?

    public var ramRole: String?

    public var skipPropertyValidation: Bool?

    public var tags: [UpdateTaskAttributeRequest.Tags]?

    public var terraformVersion: String?

    public var triggerStrategy: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.groupInfo?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.autoApply != nil {
            map["autoApply"] = self.autoApply!
        }
        if self.autoDestroy != nil {
            map["autoDestroy"] = self.autoDestroy!
        }
        if self.clientToken != nil {
            map["clientToken"] = self.clientToken!
        }
        if self.description_ != nil {
            map["description"] = self.description_!
        }
        if self.groupInfo != nil {
            map["groupInfo"] = self.groupInfo?.toMap()
        }
        if self.initModuleState != nil {
            map["initModuleState"] = self.initModuleState!
        }
        if self.moduleVersion != nil {
            map["moduleVersion"] = self.moduleVersion!
        }
        if self.name != nil {
            map["name"] = self.name!
        }
        if self.protectionStrategy != nil {
            map["protectionStrategy"] = self.protectionStrategy!
        }
        if self.ramRole != nil {
            map["ramRole"] = self.ramRole!
        }
        if self.skipPropertyValidation != nil {
            map["skipPropertyValidation"] = self.skipPropertyValidation!
        }
        if self.tags != nil {
            var tmp : [Any] = []
            for k in self.tags! {
                tmp.append(k.toMap())
            }
            map["tags"] = tmp
        }
        if self.terraformVersion != nil {
            map["terraformVersion"] = self.terraformVersion!
        }
        if self.triggerStrategy != nil {
            map["triggerStrategy"] = self.triggerStrategy!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["autoApply"] as? Bool {
            self.autoApply = value
        }
        if let value = dict["autoDestroy"] as? Bool {
            self.autoDestroy = value
        }
        if let value = dict["clientToken"] as? String {
            self.clientToken = value
        }
        if let value = dict["description"] as? String {
            self.description_ = value
        }
        if let value = dict["groupInfo"] as? [String: Any?] {
            var model = UpdateTaskAttributeRequest.GroupInfo()
            model.fromMap(value)
            self.groupInfo = model
        }
        if let value = dict["initModuleState"] as? Bool {
            self.initModuleState = value
        }
        if let value = dict["moduleVersion"] as? String {
            self.moduleVersion = value
        }
        if let value = dict["name"] as? String {
            self.name = value
        }
        if let value = dict["protectionStrategy"] as? [String] {
            self.protectionStrategy = value
        }
        if let value = dict["ramRole"] as? String {
            self.ramRole = value
        }
        if let value = dict["skipPropertyValidation"] as? Bool {
            self.skipPropertyValidation = value
        }
        if let value = dict["tags"] as? [Any?] {
            var tmp : [UpdateTaskAttributeRequest.Tags] = []
            for v in value {
                if v != nil {
                    var model = UpdateTaskAttributeRequest.Tags()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.tags = tmp
        }
        if let value = dict["terraformVersion"] as? String {
            self.terraformVersion = value
        }
        if let value = dict["triggerStrategy"] as? String {
            self.triggerStrategy = value
        }
    }
}

public class UpdateTaskAttributeResponseBody : Tea.TeaModel {
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
            map["requestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
    }
}

public class UpdateTaskAttributeResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpdateTaskAttributeResponseBody?

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
            var model = UpdateTaskAttributeResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ValidateModuleRequest : Tea.TeaModel {
    public var clientToken: String?

    public var code: String?

    public var codeMap: [String: Any]?

    public var source: String?

    public var sourcePath: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.clientToken != nil {
            map["clientToken"] = self.clientToken!
        }
        if self.code != nil {
            map["code"] = self.code!
        }
        if self.codeMap != nil {
            map["codeMap"] = self.codeMap!
        }
        if self.source != nil {
            map["source"] = self.source!
        }
        if self.sourcePath != nil {
            map["sourcePath"] = self.sourcePath!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["clientToken"] as? String {
            self.clientToken = value
        }
        if let value = dict["code"] as? String {
            self.code = value
        }
        if let value = dict["codeMap"] as? [String: Any] {
            self.codeMap = value
        }
        if let value = dict["source"] as? String {
            self.source = value
        }
        if let value = dict["sourcePath"] as? String {
            self.sourcePath = value
        }
    }
}

public class ValidateModuleResponseBody : Tea.TeaModel {
    public var message: String?

    public var moduleValidationId: String?

    public var requestId: String?

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
        if self.message != nil {
            map["message"] = self.message!
        }
        if self.moduleValidationId != nil {
            map["moduleValidationId"] = self.moduleValidationId!
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        if self.status != nil {
            map["status"] = self.status!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["message"] as? String {
            self.message = value
        }
        if let value = dict["moduleValidationId"] as? String {
            self.moduleValidationId = value
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
        if let value = dict["status"] as? String {
            self.status = value
        }
    }
}

public class ValidateModuleResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ValidateModuleResponseBody?

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
            var model = ValidateModuleResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}
