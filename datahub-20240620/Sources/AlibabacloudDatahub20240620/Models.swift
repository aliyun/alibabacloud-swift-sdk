import Foundation
import Tea
import TeaUtils
import AlibabacloudOpenApi
import AlibabaCloudOpenApiUtil
import AlibabacloudEndpointUtil

public class GetConnectorRequest : Tea.TeaModel {
    public var connectorId: String?

    public var projectName: String?

    public var topicName: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.connectorId != nil {
            map["ConnectorId"] = self.connectorId!
        }
        if self.projectName != nil {
            map["ProjectName"] = self.projectName!
        }
        if self.topicName != nil {
            map["TopicName"] = self.topicName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ConnectorId"] as? String {
            self.connectorId = value
        }
        if let value = dict["ProjectName"] as? String {
            self.projectName = value
        }
        if let value = dict["TopicName"] as? String {
            self.topicName = value
        }
    }
}

public class GetConnectorResponseBody : Tea.TeaModel {
    public var columnFields: String?

    public var config: String?

    public var connectorId: String?

    public var createTime: String?

    public var creator: String?

    public var doneTime: String?

    public var projectName: String?

    public var requestId: String?

    public var state: String?

    public var subscriptionId: String?

    public var success: Bool?

    public var topicName: String?

    public var type: String?

    public var updateTime: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.columnFields != nil {
            map["ColumnFields"] = self.columnFields!
        }
        if self.config != nil {
            map["Config"] = self.config!
        }
        if self.connectorId != nil {
            map["ConnectorId"] = self.connectorId!
        }
        if self.createTime != nil {
            map["CreateTime"] = self.createTime!
        }
        if self.creator != nil {
            map["Creator"] = self.creator!
        }
        if self.doneTime != nil {
            map["DoneTime"] = self.doneTime!
        }
        if self.projectName != nil {
            map["ProjectName"] = self.projectName!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.state != nil {
            map["State"] = self.state!
        }
        if self.subscriptionId != nil {
            map["SubscriptionId"] = self.subscriptionId!
        }
        if self.success != nil {
            map["Success"] = self.success!
        }
        if self.topicName != nil {
            map["TopicName"] = self.topicName!
        }
        if self.type != nil {
            map["Type"] = self.type!
        }
        if self.updateTime != nil {
            map["UpdateTime"] = self.updateTime!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ColumnFields"] as? String {
            self.columnFields = value
        }
        if let value = dict["Config"] as? String {
            self.config = value
        }
        if let value = dict["ConnectorId"] as? String {
            self.connectorId = value
        }
        if let value = dict["CreateTime"] as? String {
            self.createTime = value
        }
        if let value = dict["Creator"] as? String {
            self.creator = value
        }
        if let value = dict["DoneTime"] as? String {
            self.doneTime = value
        }
        if let value = dict["ProjectName"] as? String {
            self.projectName = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["State"] as? String {
            self.state = value
        }
        if let value = dict["SubscriptionId"] as? String {
            self.subscriptionId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
        if let value = dict["TopicName"] as? String {
            self.topicName = value
        }
        if let value = dict["Type"] as? String {
            self.type = value
        }
        if let value = dict["UpdateTime"] as? String {
            self.updateTime = value
        }
    }
}

public class GetConnectorResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetConnectorResponseBody?

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
            var model = GetConnectorResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetGroupRequest : Tea.TeaModel {
    public var groupName: String?

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
        if self.groupName != nil {
            map["GroupName"] = self.groupName!
        }
        if self.projectName != nil {
            map["ProjectName"] = self.projectName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["GroupName"] as? String {
            self.groupName = value
        }
        if let value = dict["ProjectName"] as? String {
            self.projectName = value
        }
    }
}

public class GetGroupResponseBody : Tea.TeaModel {
    public var comment: String?

    public var createTime: Int64?

    public var creator: String?

    public var groupName: String?

    public var projectName: String?

    public var requestId: String?

    public var success: Bool?

    public var topicList: [String]?

    public var updateTime: Int64?

    public override init() {
        super.init()
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
            map["Comment"] = self.comment!
        }
        if self.createTime != nil {
            map["CreateTime"] = self.createTime!
        }
        if self.creator != nil {
            map["Creator"] = self.creator!
        }
        if self.groupName != nil {
            map["GroupName"] = self.groupName!
        }
        if self.projectName != nil {
            map["ProjectName"] = self.projectName!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.success != nil {
            map["Success"] = self.success!
        }
        if self.topicList != nil {
            map["TopicList"] = self.topicList!
        }
        if self.updateTime != nil {
            map["UpdateTime"] = self.updateTime!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Comment"] as? String {
            self.comment = value
        }
        if let value = dict["CreateTime"] as? Int64 {
            self.createTime = value
        }
        if let value = dict["Creator"] as? String {
            self.creator = value
        }
        if let value = dict["GroupName"] as? String {
            self.groupName = value
        }
        if let value = dict["ProjectName"] as? String {
            self.projectName = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
        if let value = dict["TopicList"] as? [String] {
            self.topicList = value
        }
        if let value = dict["UpdateTime"] as? Int64 {
            self.updateTime = value
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

public class GetProjectRequest : Tea.TeaModel {
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
        if self.projectName != nil {
            map["ProjectName"] = self.projectName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ProjectName"] as? String {
            self.projectName = value
        }
    }
}

public class GetProjectResponseBody : Tea.TeaModel {
    public var comment: String?

    public var createTime: String?

    public var creator: String?

    public var projectName: String?

    public var requestId: String?

    public var storage: Int64?

    public var success: Bool?

    public var updateTime: String?

    public var vpcWhitelist: String?

    public override init() {
        super.init()
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
            map["Comment"] = self.comment!
        }
        if self.createTime != nil {
            map["CreateTime"] = self.createTime!
        }
        if self.creator != nil {
            map["Creator"] = self.creator!
        }
        if self.projectName != nil {
            map["ProjectName"] = self.projectName!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.storage != nil {
            map["Storage"] = self.storage!
        }
        if self.success != nil {
            map["Success"] = self.success!
        }
        if self.updateTime != nil {
            map["UpdateTime"] = self.updateTime!
        }
        if self.vpcWhitelist != nil {
            map["VpcWhitelist"] = self.vpcWhitelist!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Comment"] as? String {
            self.comment = value
        }
        if let value = dict["CreateTime"] as? String {
            self.createTime = value
        }
        if let value = dict["Creator"] as? String {
            self.creator = value
        }
        if let value = dict["ProjectName"] as? String {
            self.projectName = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Storage"] as? Int64 {
            self.storage = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
        if let value = dict["UpdateTime"] as? String {
            self.updateTime = value
        }
        if let value = dict["VpcWhitelist"] as? String {
            self.vpcWhitelist = value
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

public class GetRecordsRequest : Tea.TeaModel {
    public var projectName: String?

    public var shardId: String?

    public var startTime: Int64?

    public var topicName: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.projectName != nil {
            map["ProjectName"] = self.projectName!
        }
        if self.shardId != nil {
            map["ShardId"] = self.shardId!
        }
        if self.startTime != nil {
            map["StartTime"] = self.startTime!
        }
        if self.topicName != nil {
            map["TopicName"] = self.topicName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ProjectName"] as? String {
            self.projectName = value
        }
        if let value = dict["ShardId"] as? String {
            self.shardId = value
        }
        if let value = dict["StartTime"] as? Int64 {
            self.startTime = value
        }
        if let value = dict["TopicName"] as? String {
            self.topicName = value
        }
    }
}

public class GetRecordsResponseBody : Tea.TeaModel {
    public class Records : Tea.TeaModel {
        public var attributes: [String: String]?

        public var data: [String]?

        public var systemTime: Int64?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.attributes != nil {
                map["Attributes"] = self.attributes!
            }
            if self.data != nil {
                map["Data"] = self.data!
            }
            if self.systemTime != nil {
                map["SystemTime"] = self.systemTime!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Attributes"] as? [String: String] {
                self.attributes = value
            }
            if let value = dict["Data"] as? [String] {
                self.data = value
            }
            if let value = dict["SystemTime"] as? Int64 {
                self.systemTime = value
            }
        }
    }
    public var records: [GetRecordsResponseBody.Records]?

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
        if self.success != nil {
            map["Success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Records"] as? [Any?] {
            var tmp : [GetRecordsResponseBody.Records] = []
            for v in value {
                if v != nil {
                    var model = GetRecordsResponseBody.Records()
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
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
    }
}

public class GetRecordsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetRecordsResponseBody?

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
            var model = GetRecordsResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetSchemaRequest : Tea.TeaModel {
    public var projectName: String?

    public var topicName: String?

    public var versionId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.projectName != nil {
            map["ProjectName"] = self.projectName!
        }
        if self.topicName != nil {
            map["TopicName"] = self.topicName!
        }
        if self.versionId != nil {
            map["VersionId"] = self.versionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ProjectName"] as? String {
            self.projectName = value
        }
        if let value = dict["TopicName"] as? String {
            self.topicName = value
        }
        if let value = dict["VersionId"] as? String {
            self.versionId = value
        }
    }
}

public class GetSchemaResponseBody : Tea.TeaModel {
    public var createTime: Int64?

    public var creator: String?

    public var projectName: String?

    public var recordSchema: String?

    public var requestId: String?

    public var success: Bool?

    public var topicName: String?

    public var versionId: Int32?

    public override init() {
        super.init()
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
            map["CreateTime"] = self.createTime!
        }
        if self.creator != nil {
            map["Creator"] = self.creator!
        }
        if self.projectName != nil {
            map["ProjectName"] = self.projectName!
        }
        if self.recordSchema != nil {
            map["RecordSchema"] = self.recordSchema!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.success != nil {
            map["Success"] = self.success!
        }
        if self.topicName != nil {
            map["TopicName"] = self.topicName!
        }
        if self.versionId != nil {
            map["VersionId"] = self.versionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["CreateTime"] as? Int64 {
            self.createTime = value
        }
        if let value = dict["Creator"] as? String {
            self.creator = value
        }
        if let value = dict["ProjectName"] as? String {
            self.projectName = value
        }
        if let value = dict["RecordSchema"] as? String {
            self.recordSchema = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
        if let value = dict["TopicName"] as? String {
            self.topicName = value
        }
        if let value = dict["VersionId"] as? Int32 {
            self.versionId = value
        }
    }
}

public class GetSchemaResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetSchemaResponseBody?

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
            var model = GetSchemaResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetSubscriptionRequest : Tea.TeaModel {
    public var projectName: String?

    public var subscriptionId: String?

    public var topicName: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.projectName != nil {
            map["ProjectName"] = self.projectName!
        }
        if self.subscriptionId != nil {
            map["SubscriptionId"] = self.subscriptionId!
        }
        if self.topicName != nil {
            map["TopicName"] = self.topicName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ProjectName"] as? String {
            self.projectName = value
        }
        if let value = dict["SubscriptionId"] as? String {
            self.subscriptionId = value
        }
        if let value = dict["TopicName"] as? String {
            self.topicName = value
        }
    }
}

public class GetSubscriptionResponseBody : Tea.TeaModel {
    public var application: String?

    public var comment: String?

    public var createTime: Int64?

    public var creator: String?

    public var projectName: String?

    public var requestId: String?

    public var state: Int32?

    public var subscriptionId: String?

    public var success: Bool?

    public var topicName: String?

    public var type: String?

    public var updateTime: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.application != nil {
            map["Application"] = self.application!
        }
        if self.comment != nil {
            map["Comment"] = self.comment!
        }
        if self.createTime != nil {
            map["CreateTime"] = self.createTime!
        }
        if self.creator != nil {
            map["Creator"] = self.creator!
        }
        if self.projectName != nil {
            map["ProjectName"] = self.projectName!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.state != nil {
            map["State"] = self.state!
        }
        if self.subscriptionId != nil {
            map["SubscriptionId"] = self.subscriptionId!
        }
        if self.success != nil {
            map["Success"] = self.success!
        }
        if self.topicName != nil {
            map["TopicName"] = self.topicName!
        }
        if self.type != nil {
            map["Type"] = self.type!
        }
        if self.updateTime != nil {
            map["UpdateTime"] = self.updateTime!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Application"] as? String {
            self.application = value
        }
        if let value = dict["Comment"] as? String {
            self.comment = value
        }
        if let value = dict["CreateTime"] as? Int64 {
            self.createTime = value
        }
        if let value = dict["Creator"] as? String {
            self.creator = value
        }
        if let value = dict["ProjectName"] as? String {
            self.projectName = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["State"] as? Int32 {
            self.state = value
        }
        if let value = dict["SubscriptionId"] as? String {
            self.subscriptionId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
        if let value = dict["TopicName"] as? String {
            self.topicName = value
        }
        if let value = dict["Type"] as? String {
            self.type = value
        }
        if let value = dict["UpdateTime"] as? Int64 {
            self.updateTime = value
        }
    }
}

public class GetSubscriptionResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetSubscriptionResponseBody?

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
            var model = GetSubscriptionResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetTopicRequest : Tea.TeaModel {
    public var projectName: String?

    public var topicName: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.projectName != nil {
            map["ProjectName"] = self.projectName!
        }
        if self.topicName != nil {
            map["TopicName"] = self.topicName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ProjectName"] as? String {
            self.projectName = value
        }
        if let value = dict["TopicName"] as? String {
            self.topicName = value
        }
    }
}

public class GetTopicResponseBody : Tea.TeaModel {
    public var comment: String?

    public var createTime: String?

    public var creator: String?

    public var enableSchemaRegistry: Bool?

    public var expandMode: Bool?

    public var lifecycle: Int32?

    public var projectName: String?

    public var recordSchema: String?

    public var recordType: String?

    public var requestId: String?

    public var shardCount: Int32?

    public var storage: Int64?

    public var success: Bool?

    public var topicName: String?

    public var updateTime: String?

    public override init() {
        super.init()
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
            map["Comment"] = self.comment!
        }
        if self.createTime != nil {
            map["CreateTime"] = self.createTime!
        }
        if self.creator != nil {
            map["Creator"] = self.creator!
        }
        if self.enableSchemaRegistry != nil {
            map["EnableSchemaRegistry"] = self.enableSchemaRegistry!
        }
        if self.expandMode != nil {
            map["ExpandMode"] = self.expandMode!
        }
        if self.lifecycle != nil {
            map["Lifecycle"] = self.lifecycle!
        }
        if self.projectName != nil {
            map["ProjectName"] = self.projectName!
        }
        if self.recordSchema != nil {
            map["RecordSchema"] = self.recordSchema!
        }
        if self.recordType != nil {
            map["RecordType"] = self.recordType!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.shardCount != nil {
            map["ShardCount"] = self.shardCount!
        }
        if self.storage != nil {
            map["Storage"] = self.storage!
        }
        if self.success != nil {
            map["Success"] = self.success!
        }
        if self.topicName != nil {
            map["TopicName"] = self.topicName!
        }
        if self.updateTime != nil {
            map["UpdateTime"] = self.updateTime!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Comment"] as? String {
            self.comment = value
        }
        if let value = dict["CreateTime"] as? String {
            self.createTime = value
        }
        if let value = dict["Creator"] as? String {
            self.creator = value
        }
        if let value = dict["EnableSchemaRegistry"] as? Bool {
            self.enableSchemaRegistry = value
        }
        if let value = dict["ExpandMode"] as? Bool {
            self.expandMode = value
        }
        if let value = dict["Lifecycle"] as? Int32 {
            self.lifecycle = value
        }
        if let value = dict["ProjectName"] as? String {
            self.projectName = value
        }
        if let value = dict["RecordSchema"] as? String {
            self.recordSchema = value
        }
        if let value = dict["RecordType"] as? String {
            self.recordType = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["ShardCount"] as? Int32 {
            self.shardCount = value
        }
        if let value = dict["Storage"] as? Int64 {
            self.storage = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
        if let value = dict["TopicName"] as? String {
            self.topicName = value
        }
        if let value = dict["UpdateTime"] as? String {
            self.updateTime = value
        }
    }
}

public class GetTopicResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetTopicResponseBody?

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
            var model = GetTopicResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ListConnectorsRequest : Tea.TeaModel {
    public var keyword: String?

    public var maxResults: Int32?

    public var nextToken: String?

    public var projectName: String?

    public var pure: Bool?

    public var skip: Int32?

    public var topicName: String?

    public override init() {
        super.init()
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
            map["Keyword"] = self.keyword!
        }
        if self.maxResults != nil {
            map["MaxResults"] = self.maxResults!
        }
        if self.nextToken != nil {
            map["NextToken"] = self.nextToken!
        }
        if self.projectName != nil {
            map["ProjectName"] = self.projectName!
        }
        if self.pure != nil {
            map["Pure"] = self.pure!
        }
        if self.skip != nil {
            map["Skip"] = self.skip!
        }
        if self.topicName != nil {
            map["TopicName"] = self.topicName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Keyword"] as? String {
            self.keyword = value
        }
        if let value = dict["MaxResults"] as? Int32 {
            self.maxResults = value
        }
        if let value = dict["NextToken"] as? String {
            self.nextToken = value
        }
        if let value = dict["ProjectName"] as? String {
            self.projectName = value
        }
        if let value = dict["Pure"] as? Bool {
            self.pure = value
        }
        if let value = dict["Skip"] as? Int32 {
            self.skip = value
        }
        if let value = dict["TopicName"] as? String {
            self.topicName = value
        }
    }
}

public class ListConnectorsResponseBody : Tea.TeaModel {
    public class List : Tea.TeaModel {
        public class Connector : Tea.TeaModel {
            public var columnFields: String?

            public var config: String?

            public var connectorId: String?

            public var createTime: String?

            public var creator: String?

            public var doneTime: String?

            public var projectName: String?

            public var state: String?

            public var subscriptionId: String?

            public var topicName: String?

            public var type: String?

            public var updateTime: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.columnFields != nil {
                    map["ColumnFields"] = self.columnFields!
                }
                if self.config != nil {
                    map["Config"] = self.config!
                }
                if self.connectorId != nil {
                    map["ConnectorId"] = self.connectorId!
                }
                if self.createTime != nil {
                    map["CreateTime"] = self.createTime!
                }
                if self.creator != nil {
                    map["Creator"] = self.creator!
                }
                if self.doneTime != nil {
                    map["DoneTime"] = self.doneTime!
                }
                if self.projectName != nil {
                    map["ProjectName"] = self.projectName!
                }
                if self.state != nil {
                    map["State"] = self.state!
                }
                if self.subscriptionId != nil {
                    map["SubscriptionId"] = self.subscriptionId!
                }
                if self.topicName != nil {
                    map["TopicName"] = self.topicName!
                }
                if self.type != nil {
                    map["Type"] = self.type!
                }
                if self.updateTime != nil {
                    map["UpdateTime"] = self.updateTime!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["ColumnFields"] as? String {
                    self.columnFields = value
                }
                if let value = dict["Config"] as? String {
                    self.config = value
                }
                if let value = dict["ConnectorId"] as? String {
                    self.connectorId = value
                }
                if let value = dict["CreateTime"] as? String {
                    self.createTime = value
                }
                if let value = dict["Creator"] as? String {
                    self.creator = value
                }
                if let value = dict["DoneTime"] as? String {
                    self.doneTime = value
                }
                if let value = dict["ProjectName"] as? String {
                    self.projectName = value
                }
                if let value = dict["State"] as? String {
                    self.state = value
                }
                if let value = dict["SubscriptionId"] as? String {
                    self.subscriptionId = value
                }
                if let value = dict["TopicName"] as? String {
                    self.topicName = value
                }
                if let value = dict["Type"] as? String {
                    self.type = value
                }
                if let value = dict["UpdateTime"] as? String {
                    self.updateTime = value
                }
            }
        }
        public var connector: [ListConnectorsResponseBody.List.Connector]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.connector != nil {
                var tmp : [Any] = []
                for k in self.connector! {
                    tmp.append(k.toMap())
                }
                map["Connector"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Connector"] as? [Any?] {
                var tmp : [ListConnectorsResponseBody.List.Connector] = []
                for v in value {
                    if v != nil {
                        var model = ListConnectorsResponseBody.List.Connector()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.connector = tmp
            }
        }
    }
    public var list: ListConnectorsResponseBody.List?

    public var maxResults: Int32?

    public var nextToken: String?

    public var requestId: String?

    public var success: Bool?

    public var totalCount: Int32?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.list?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.list != nil {
            map["List"] = self.list?.toMap()
        }
        if self.maxResults != nil {
            map["MaxResults"] = self.maxResults!
        }
        if self.nextToken != nil {
            map["NextToken"] = self.nextToken!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.success != nil {
            map["Success"] = self.success!
        }
        if self.totalCount != nil {
            map["TotalCount"] = self.totalCount!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["List"] as? [String: Any?] {
            var model = ListConnectorsResponseBody.List()
            model.fromMap(value)
            self.list = model
        }
        if let value = dict["MaxResults"] as? Int32 {
            self.maxResults = value
        }
        if let value = dict["NextToken"] as? String {
            self.nextToken = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
        if let value = dict["TotalCount"] as? Int32 {
            self.totalCount = value
        }
    }
}

public class ListConnectorsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListConnectorsResponseBody?

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
            var model = ListConnectorsResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ListGroupsRequest : Tea.TeaModel {
    public var keyword: String?

    public var maxResults: Int32?

    public var nextToken: String?

    public var projectName: String?

    public var pure: Bool?

    public var skip: Int32?

    public override init() {
        super.init()
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
            map["Keyword"] = self.keyword!
        }
        if self.maxResults != nil {
            map["MaxResults"] = self.maxResults!
        }
        if self.nextToken != nil {
            map["NextToken"] = self.nextToken!
        }
        if self.projectName != nil {
            map["ProjectName"] = self.projectName!
        }
        if self.pure != nil {
            map["Pure"] = self.pure!
        }
        if self.skip != nil {
            map["Skip"] = self.skip!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Keyword"] as? String {
            self.keyword = value
        }
        if let value = dict["MaxResults"] as? Int32 {
            self.maxResults = value
        }
        if let value = dict["NextToken"] as? String {
            self.nextToken = value
        }
        if let value = dict["ProjectName"] as? String {
            self.projectName = value
        }
        if let value = dict["Pure"] as? Bool {
            self.pure = value
        }
        if let value = dict["Skip"] as? Int32 {
            self.skip = value
        }
    }
}

public class ListGroupsResponseBody : Tea.TeaModel {
    public class List : Tea.TeaModel {
        public var comment: String?

        public var createTime: Int64?

        public var creator: String?

        public var groupName: String?

        public var projectName: String?

        public var topicList: [String]?

        public var updateTime: Int64?

        public override init() {
            super.init()
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
                map["Comment"] = self.comment!
            }
            if self.createTime != nil {
                map["CreateTime"] = self.createTime!
            }
            if self.creator != nil {
                map["Creator"] = self.creator!
            }
            if self.groupName != nil {
                map["GroupName"] = self.groupName!
            }
            if self.projectName != nil {
                map["ProjectName"] = self.projectName!
            }
            if self.topicList != nil {
                map["TopicList"] = self.topicList!
            }
            if self.updateTime != nil {
                map["UpdateTime"] = self.updateTime!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Comment"] as? String {
                self.comment = value
            }
            if let value = dict["CreateTime"] as? Int64 {
                self.createTime = value
            }
            if let value = dict["Creator"] as? String {
                self.creator = value
            }
            if let value = dict["GroupName"] as? String {
                self.groupName = value
            }
            if let value = dict["ProjectName"] as? String {
                self.projectName = value
            }
            if let value = dict["TopicList"] as? [String] {
                self.topicList = value
            }
            if let value = dict["UpdateTime"] as? Int64 {
                self.updateTime = value
            }
        }
    }
    public var list: [ListGroupsResponseBody.List]?

    public var maxResults: Int32?

    public var nextToken: String?

    public var requestId: String?

    public var success: Bool?

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
        if self.list != nil {
            var tmp : [Any] = []
            for k in self.list! {
                tmp.append(k.toMap())
            }
            map["List"] = tmp
        }
        if self.maxResults != nil {
            map["MaxResults"] = self.maxResults!
        }
        if self.nextToken != nil {
            map["NextToken"] = self.nextToken!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.success != nil {
            map["Success"] = self.success!
        }
        if self.totalCount != nil {
            map["TotalCount"] = self.totalCount!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["List"] as? [Any?] {
            var tmp : [ListGroupsResponseBody.List] = []
            for v in value {
                if v != nil {
                    var model = ListGroupsResponseBody.List()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.list = tmp
        }
        if let value = dict["MaxResults"] as? Int32 {
            self.maxResults = value
        }
        if let value = dict["NextToken"] as? String {
            self.nextToken = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
        if let value = dict["TotalCount"] as? Int32 {
            self.totalCount = value
        }
    }
}

public class ListGroupsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListGroupsResponseBody?

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
            var model = ListGroupsResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ListProjectsRequest : Tea.TeaModel {
    public var keyword: String?

    public var maxResults: Int32?

    public var nextToken: String?

    public var pure: Bool?

    public var skip: Int32?

    public override init() {
        super.init()
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
            map["Keyword"] = self.keyword!
        }
        if self.maxResults != nil {
            map["MaxResults"] = self.maxResults!
        }
        if self.nextToken != nil {
            map["NextToken"] = self.nextToken!
        }
        if self.pure != nil {
            map["Pure"] = self.pure!
        }
        if self.skip != nil {
            map["Skip"] = self.skip!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Keyword"] as? String {
            self.keyword = value
        }
        if let value = dict["MaxResults"] as? Int32 {
            self.maxResults = value
        }
        if let value = dict["NextToken"] as? String {
            self.nextToken = value
        }
        if let value = dict["Pure"] as? Bool {
            self.pure = value
        }
        if let value = dict["Skip"] as? Int32 {
            self.skip = value
        }
    }
}

public class ListProjectsResponseBody : Tea.TeaModel {
    public class List : Tea.TeaModel {
        public class Project : Tea.TeaModel {
            public var comment: String?

            public var createTime: Int64?

            public var creator: String?

            public var projectName: String?

            public var updateTime: Int64?

            public override init() {
                super.init()
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
                    map["Comment"] = self.comment!
                }
                if self.createTime != nil {
                    map["CreateTime"] = self.createTime!
                }
                if self.creator != nil {
                    map["Creator"] = self.creator!
                }
                if self.projectName != nil {
                    map["ProjectName"] = self.projectName!
                }
                if self.updateTime != nil {
                    map["UpdateTime"] = self.updateTime!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["Comment"] as? String {
                    self.comment = value
                }
                if let value = dict["CreateTime"] as? Int64 {
                    self.createTime = value
                }
                if let value = dict["Creator"] as? String {
                    self.creator = value
                }
                if let value = dict["ProjectName"] as? String {
                    self.projectName = value
                }
                if let value = dict["UpdateTime"] as? Int64 {
                    self.updateTime = value
                }
            }
        }
        public var project: [ListProjectsResponseBody.List.Project]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.project != nil {
                var tmp : [Any] = []
                for k in self.project! {
                    tmp.append(k.toMap())
                }
                map["Project"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Project"] as? [Any?] {
                var tmp : [ListProjectsResponseBody.List.Project] = []
                for v in value {
                    if v != nil {
                        var model = ListProjectsResponseBody.List.Project()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.project = tmp
            }
        }
    }
    public var list: ListProjectsResponseBody.List?

    public var maxResults: Int32?

    public var nextToken: String?

    public var requestId: String?

    public var success: Bool?

    public var totalCount: Int32?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.list?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.list != nil {
            map["List"] = self.list?.toMap()
        }
        if self.maxResults != nil {
            map["MaxResults"] = self.maxResults!
        }
        if self.nextToken != nil {
            map["NextToken"] = self.nextToken!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.success != nil {
            map["Success"] = self.success!
        }
        if self.totalCount != nil {
            map["TotalCount"] = self.totalCount!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["List"] as? [String: Any?] {
            var model = ListProjectsResponseBody.List()
            model.fromMap(value)
            self.list = model
        }
        if let value = dict["MaxResults"] as? Int32 {
            self.maxResults = value
        }
        if let value = dict["NextToken"] as? String {
            self.nextToken = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
        if let value = dict["TotalCount"] as? Int32 {
            self.totalCount = value
        }
    }
}

public class ListProjectsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListProjectsResponseBody?

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
            var model = ListProjectsResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ListSchemasRequest : Tea.TeaModel {
    public var maxResults: Int32?

    public var nextToken: String?

    public var projectName: String?

    public var skip: Int32?

    public var topicName: String?

    public override init() {
        super.init()
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
            map["MaxResults"] = self.maxResults!
        }
        if self.nextToken != nil {
            map["NextToken"] = self.nextToken!
        }
        if self.projectName != nil {
            map["ProjectName"] = self.projectName!
        }
        if self.skip != nil {
            map["Skip"] = self.skip!
        }
        if self.topicName != nil {
            map["TopicName"] = self.topicName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["MaxResults"] as? Int32 {
            self.maxResults = value
        }
        if let value = dict["NextToken"] as? String {
            self.nextToken = value
        }
        if let value = dict["ProjectName"] as? String {
            self.projectName = value
        }
        if let value = dict["Skip"] as? Int32 {
            self.skip = value
        }
        if let value = dict["TopicName"] as? String {
            self.topicName = value
        }
    }
}

public class ListSchemasResponseBody : Tea.TeaModel {
    public class List : Tea.TeaModel {
        public var createTime: Int64?

        public var creator: String?

        public var projectName: String?

        public var recordSchema: String?

        public var topicName: String?

        public var versionId: Int32?

        public override init() {
            super.init()
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
                map["CreateTime"] = self.createTime!
            }
            if self.creator != nil {
                map["Creator"] = self.creator!
            }
            if self.projectName != nil {
                map["ProjectName"] = self.projectName!
            }
            if self.recordSchema != nil {
                map["RecordSchema"] = self.recordSchema!
            }
            if self.topicName != nil {
                map["TopicName"] = self.topicName!
            }
            if self.versionId != nil {
                map["VersionId"] = self.versionId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["CreateTime"] as? Int64 {
                self.createTime = value
            }
            if let value = dict["Creator"] as? String {
                self.creator = value
            }
            if let value = dict["ProjectName"] as? String {
                self.projectName = value
            }
            if let value = dict["RecordSchema"] as? String {
                self.recordSchema = value
            }
            if let value = dict["TopicName"] as? String {
                self.topicName = value
            }
            if let value = dict["VersionId"] as? Int32 {
                self.versionId = value
            }
        }
    }
    public var list: [ListSchemasResponseBody.List]?

    public var maxResults: Int32?

    public var nextToken: String?

    public var requestId: String?

    public var success: Bool?

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
        if self.list != nil {
            var tmp : [Any] = []
            for k in self.list! {
                tmp.append(k.toMap())
            }
            map["List"] = tmp
        }
        if self.maxResults != nil {
            map["MaxResults"] = self.maxResults!
        }
        if self.nextToken != nil {
            map["NextToken"] = self.nextToken!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.success != nil {
            map["Success"] = self.success!
        }
        if self.totalCount != nil {
            map["TotalCount"] = self.totalCount!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["List"] as? [Any?] {
            var tmp : [ListSchemasResponseBody.List] = []
            for v in value {
                if v != nil {
                    var model = ListSchemasResponseBody.List()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.list = tmp
        }
        if let value = dict["MaxResults"] as? Int32 {
            self.maxResults = value
        }
        if let value = dict["NextToken"] as? String {
            self.nextToken = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
        if let value = dict["TotalCount"] as? Int32 {
            self.totalCount = value
        }
    }
}

public class ListSchemasResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListSchemasResponseBody?

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
            var model = ListSchemasResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ListSubscriptionsRequest : Tea.TeaModel {
    public var keyword: String?

    public var maxResults: Int32?

    public var nextToken: String?

    public var projectName: String?

    public var skip: Int32?

    public var topicName: String?

    public override init() {
        super.init()
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
            map["Keyword"] = self.keyword!
        }
        if self.maxResults != nil {
            map["MaxResults"] = self.maxResults!
        }
        if self.nextToken != nil {
            map["NextToken"] = self.nextToken!
        }
        if self.projectName != nil {
            map["ProjectName"] = self.projectName!
        }
        if self.skip != nil {
            map["Skip"] = self.skip!
        }
        if self.topicName != nil {
            map["TopicName"] = self.topicName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Keyword"] as? String {
            self.keyword = value
        }
        if let value = dict["MaxResults"] as? Int32 {
            self.maxResults = value
        }
        if let value = dict["NextToken"] as? String {
            self.nextToken = value
        }
        if let value = dict["ProjectName"] as? String {
            self.projectName = value
        }
        if let value = dict["Skip"] as? Int32 {
            self.skip = value
        }
        if let value = dict["TopicName"] as? String {
            self.topicName = value
        }
    }
}

public class ListSubscriptionsResponseBody : Tea.TeaModel {
    public class List : Tea.TeaModel {
        public class Subscription : Tea.TeaModel {
            public var application: String?

            public var comment: String?

            public var createTime: Int64?

            public var creator: String?

            public var projectName: String?

            public var state: Int32?

            public var subscriptionId: String?

            public var topicName: String?

            public var type: String?

            public var updateTime: Int64?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.application != nil {
                    map["Application"] = self.application!
                }
                if self.comment != nil {
                    map["Comment"] = self.comment!
                }
                if self.createTime != nil {
                    map["CreateTime"] = self.createTime!
                }
                if self.creator != nil {
                    map["Creator"] = self.creator!
                }
                if self.projectName != nil {
                    map["ProjectName"] = self.projectName!
                }
                if self.state != nil {
                    map["State"] = self.state!
                }
                if self.subscriptionId != nil {
                    map["SubscriptionId"] = self.subscriptionId!
                }
                if self.topicName != nil {
                    map["TopicName"] = self.topicName!
                }
                if self.type != nil {
                    map["Type"] = self.type!
                }
                if self.updateTime != nil {
                    map["UpdateTime"] = self.updateTime!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["Application"] as? String {
                    self.application = value
                }
                if let value = dict["Comment"] as? String {
                    self.comment = value
                }
                if let value = dict["CreateTime"] as? Int64 {
                    self.createTime = value
                }
                if let value = dict["Creator"] as? String {
                    self.creator = value
                }
                if let value = dict["ProjectName"] as? String {
                    self.projectName = value
                }
                if let value = dict["State"] as? Int32 {
                    self.state = value
                }
                if let value = dict["SubscriptionId"] as? String {
                    self.subscriptionId = value
                }
                if let value = dict["TopicName"] as? String {
                    self.topicName = value
                }
                if let value = dict["Type"] as? String {
                    self.type = value
                }
                if let value = dict["UpdateTime"] as? Int64 {
                    self.updateTime = value
                }
            }
        }
        public var subscription: [ListSubscriptionsResponseBody.List.Subscription]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.subscription != nil {
                var tmp : [Any] = []
                for k in self.subscription! {
                    tmp.append(k.toMap())
                }
                map["Subscription"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Subscription"] as? [Any?] {
                var tmp : [ListSubscriptionsResponseBody.List.Subscription] = []
                for v in value {
                    if v != nil {
                        var model = ListSubscriptionsResponseBody.List.Subscription()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.subscription = tmp
            }
        }
    }
    public var list: ListSubscriptionsResponseBody.List?

    public var maxResults: Int32?

    public var nextToken: String?

    public var requestId: String?

    public var success: Bool?

    public var totalCount: Int32?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.list?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.list != nil {
            map["List"] = self.list?.toMap()
        }
        if self.maxResults != nil {
            map["MaxResults"] = self.maxResults!
        }
        if self.nextToken != nil {
            map["NextToken"] = self.nextToken!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.success != nil {
            map["Success"] = self.success!
        }
        if self.totalCount != nil {
            map["TotalCount"] = self.totalCount!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["List"] as? [String: Any?] {
            var model = ListSubscriptionsResponseBody.List()
            model.fromMap(value)
            self.list = model
        }
        if let value = dict["MaxResults"] as? Int32 {
            self.maxResults = value
        }
        if let value = dict["NextToken"] as? String {
            self.nextToken = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
        if let value = dict["TotalCount"] as? Int32 {
            self.totalCount = value
        }
    }
}

public class ListSubscriptionsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListSubscriptionsResponseBody?

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
            var model = ListSubscriptionsResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ListTopicsRequest : Tea.TeaModel {
    public var keyword: String?

    public var maxResults: Int32?

    public var nextToken: String?

    public var projectName: String?

    public var pure: Bool?

    public var skip: Int32?

    public override init() {
        super.init()
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
            map["Keyword"] = self.keyword!
        }
        if self.maxResults != nil {
            map["MaxResults"] = self.maxResults!
        }
        if self.nextToken != nil {
            map["NextToken"] = self.nextToken!
        }
        if self.projectName != nil {
            map["ProjectName"] = self.projectName!
        }
        if self.pure != nil {
            map["Pure"] = self.pure!
        }
        if self.skip != nil {
            map["Skip"] = self.skip!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Keyword"] as? String {
            self.keyword = value
        }
        if let value = dict["MaxResults"] as? Int32 {
            self.maxResults = value
        }
        if let value = dict["NextToken"] as? String {
            self.nextToken = value
        }
        if let value = dict["ProjectName"] as? String {
            self.projectName = value
        }
        if let value = dict["Pure"] as? Bool {
            self.pure = value
        }
        if let value = dict["Skip"] as? Int32 {
            self.skip = value
        }
    }
}

public class ListTopicsResponseBody : Tea.TeaModel {
    public class List : Tea.TeaModel {
        public class Topic : Tea.TeaModel {
            public var comment: String?

            public var createTime: Int64?

            public var creator: String?

            public var enableSchemaRegistry: String?

            public var expandMode: String?

            public var lifecycle: Int32?

            public var projectName: String?

            public var recordSchema: String?

            public var recordType: String?

            public var shardCount: Int32?

            public var storage: Int64?

            public var topicName: String?

            public var updateTime: Int64?

            public override init() {
                super.init()
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
                    map["Comment"] = self.comment!
                }
                if self.createTime != nil {
                    map["CreateTime"] = self.createTime!
                }
                if self.creator != nil {
                    map["Creator"] = self.creator!
                }
                if self.enableSchemaRegistry != nil {
                    map["EnableSchemaRegistry"] = self.enableSchemaRegistry!
                }
                if self.expandMode != nil {
                    map["ExpandMode"] = self.expandMode!
                }
                if self.lifecycle != nil {
                    map["Lifecycle"] = self.lifecycle!
                }
                if self.projectName != nil {
                    map["ProjectName"] = self.projectName!
                }
                if self.recordSchema != nil {
                    map["RecordSchema"] = self.recordSchema!
                }
                if self.recordType != nil {
                    map["RecordType"] = self.recordType!
                }
                if self.shardCount != nil {
                    map["ShardCount"] = self.shardCount!
                }
                if self.storage != nil {
                    map["Storage"] = self.storage!
                }
                if self.topicName != nil {
                    map["TopicName"] = self.topicName!
                }
                if self.updateTime != nil {
                    map["UpdateTime"] = self.updateTime!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["Comment"] as? String {
                    self.comment = value
                }
                if let value = dict["CreateTime"] as? Int64 {
                    self.createTime = value
                }
                if let value = dict["Creator"] as? String {
                    self.creator = value
                }
                if let value = dict["EnableSchemaRegistry"] as? String {
                    self.enableSchemaRegistry = value
                }
                if let value = dict["ExpandMode"] as? String {
                    self.expandMode = value
                }
                if let value = dict["Lifecycle"] as? Int32 {
                    self.lifecycle = value
                }
                if let value = dict["ProjectName"] as? String {
                    self.projectName = value
                }
                if let value = dict["RecordSchema"] as? String {
                    self.recordSchema = value
                }
                if let value = dict["RecordType"] as? String {
                    self.recordType = value
                }
                if let value = dict["ShardCount"] as? Int32 {
                    self.shardCount = value
                }
                if let value = dict["Storage"] as? Int64 {
                    self.storage = value
                }
                if let value = dict["TopicName"] as? String {
                    self.topicName = value
                }
                if let value = dict["UpdateTime"] as? Int64 {
                    self.updateTime = value
                }
            }
        }
        public var topic: [ListTopicsResponseBody.List.Topic]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.topic != nil {
                var tmp : [Any] = []
                for k in self.topic! {
                    tmp.append(k.toMap())
                }
                map["Topic"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Topic"] as? [Any?] {
                var tmp : [ListTopicsResponseBody.List.Topic] = []
                for v in value {
                    if v != nil {
                        var model = ListTopicsResponseBody.List.Topic()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.topic = tmp
            }
        }
    }
    public var list: ListTopicsResponseBody.List?

    public var maxResults: Int32?

    public var nextToken: String?

    public var requestId: String?

    public var success: Bool?

    public var totalCount: Int32?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.list?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.list != nil {
            map["List"] = self.list?.toMap()
        }
        if self.maxResults != nil {
            map["MaxResults"] = self.maxResults!
        }
        if self.nextToken != nil {
            map["NextToken"] = self.nextToken!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.success != nil {
            map["Success"] = self.success!
        }
        if self.totalCount != nil {
            map["TotalCount"] = self.totalCount!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["List"] as? [String: Any?] {
            var model = ListTopicsResponseBody.List()
            model.fromMap(value)
            self.list = model
        }
        if let value = dict["MaxResults"] as? Int32 {
            self.maxResults = value
        }
        if let value = dict["NextToken"] as? String {
            self.nextToken = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
        if let value = dict["TotalCount"] as? Int32 {
            self.totalCount = value
        }
    }
}

public class ListTopicsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListTopicsResponseBody?

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
            var model = ListTopicsResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class PutRecordsRequest : Tea.TeaModel {
    public class Records : Tea.TeaModel {
        public var attributes: [String: String]?

        public var data: [String]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.attributes != nil {
                map["Attributes"] = self.attributes!
            }
            if self.data != nil {
                map["Data"] = self.data!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Attributes"] as? [String: String] {
                self.attributes = value
            }
            if let value = dict["Data"] as? [String] {
                self.data = value
            }
        }
    }
    public var projectName: String?

    public var records: [PutRecordsRequest.Records]?

    public var shardId: String?

    public var topicName: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.projectName != nil {
            map["ProjectName"] = self.projectName!
        }
        if self.records != nil {
            var tmp : [Any] = []
            for k in self.records! {
                tmp.append(k.toMap())
            }
            map["Records"] = tmp
        }
        if self.shardId != nil {
            map["ShardId"] = self.shardId!
        }
        if self.topicName != nil {
            map["TopicName"] = self.topicName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ProjectName"] as? String {
            self.projectName = value
        }
        if let value = dict["Records"] as? [Any?] {
            var tmp : [PutRecordsRequest.Records] = []
            for v in value {
                if v != nil {
                    var model = PutRecordsRequest.Records()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.records = tmp
        }
        if let value = dict["ShardId"] as? String {
            self.shardId = value
        }
        if let value = dict["TopicName"] as? String {
            self.topicName = value
        }
    }
}

public class PutRecordsShrinkRequest : Tea.TeaModel {
    public var projectName: String?

    public var recordsShrink: String?

    public var shardId: String?

    public var topicName: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.projectName != nil {
            map["ProjectName"] = self.projectName!
        }
        if self.recordsShrink != nil {
            map["Records"] = self.recordsShrink!
        }
        if self.shardId != nil {
            map["ShardId"] = self.shardId!
        }
        if self.topicName != nil {
            map["TopicName"] = self.topicName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ProjectName"] as? String {
            self.projectName = value
        }
        if let value = dict["Records"] as? String {
            self.recordsShrink = value
        }
        if let value = dict["ShardId"] as? String {
            self.shardId = value
        }
        if let value = dict["TopicName"] as? String {
            self.topicName = value
        }
    }
}

public class PutRecordsResponseBody : Tea.TeaModel {
    public var requestId: String?

    public var shardId: String?

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
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.shardId != nil {
            map["ShardId"] = self.shardId!
        }
        if self.success != nil {
            map["Success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["ShardId"] as? String {
            self.shardId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
    }
}

public class PutRecordsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: PutRecordsResponseBody?

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
            var model = PutRecordsResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}
