import Foundation
import Tea
import TeaUtils
import AlibabacloudOpenApi
import AlibabaCloudOpenApiUtil
import AlibabacloudEndpointUtil

public class DataImageRegionDistributeMapValue : Tea.TeaModel {
    public var distributeStatus: String?

    public var progress: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.distributeStatus != nil {
            map["DistributeStatus"] = self.distributeStatus!
        }
        if self.progress != nil {
            map["Progress"] = self.progress!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["DistributeStatus"] as? String {
            self.distributeStatus = value
        }
        if let value = dict["Progress"] as? String {
            self.progress = value
        }
    }
}

public class AttachKeyPairRequest : Tea.TeaModel {
    public var instanceIds: [String]?

    public var keyPairId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.instanceIds != nil {
            map["InstanceIds"] = self.instanceIds!
        }
        if self.keyPairId != nil {
            map["KeyPairId"] = self.keyPairId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["InstanceIds"] as? [String] {
            self.instanceIds = value
        }
        if let value = dict["KeyPairId"] as? String {
            self.keyPairId = value
        }
    }
}

public class AttachKeyPairResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var attachedInstanceIds: [String]?

        public var failCount: Int32?

        public var keyPairId: String?

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
            if self.attachedInstanceIds != nil {
                map["AttachedInstanceIds"] = self.attachedInstanceIds!
            }
            if self.failCount != nil {
                map["FailCount"] = self.failCount!
            }
            if self.keyPairId != nil {
                map["KeyPairId"] = self.keyPairId!
            }
            if self.totalCount != nil {
                map["TotalCount"] = self.totalCount!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["AttachedInstanceIds"] as? [String] {
                self.attachedInstanceIds = value
            }
            if let value = dict["FailCount"] as? Int32 {
                self.failCount = value
            }
            if let value = dict["KeyPairId"] as? String {
                self.keyPairId = value
            }
            if let value = dict["TotalCount"] as? Int32 {
                self.totalCount = value
            }
        }
    }
    public var data: AttachKeyPairResponseBody.Data?

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
            var model = AttachKeyPairResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class AttachKeyPairResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: AttachKeyPairResponseBody?

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
            var model = AttachKeyPairResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class AuthorizeAndroidInstanceRequest : Tea.TeaModel {
    public var androidInstanceIds: [String]?

    public var authorizeUserId: String?

    public var unAuthorizeUserId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.androidInstanceIds != nil {
            map["AndroidInstanceIds"] = self.androidInstanceIds!
        }
        if self.authorizeUserId != nil {
            map["AuthorizeUserId"] = self.authorizeUserId!
        }
        if self.unAuthorizeUserId != nil {
            map["UnAuthorizeUserId"] = self.unAuthorizeUserId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AndroidInstanceIds"] as? [String] {
            self.androidInstanceIds = value
        }
        if let value = dict["AuthorizeUserId"] as? String {
            self.authorizeUserId = value
        }
        if let value = dict["UnAuthorizeUserId"] as? String {
            self.unAuthorizeUserId = value
        }
    }
}

public class AuthorizeAndroidInstanceResponseBody : Tea.TeaModel {
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

public class AuthorizeAndroidInstanceResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: AuthorizeAndroidInstanceResponseBody?

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
            var model = AuthorizeAndroidInstanceResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class BackupFileRequest : Tea.TeaModel {
    public var androidInstanceIdList: [String]?

    public var backupAll: Bool?

    public var backupFileName: String?

    public var backupFilePath: String?

    public var description_: String?

    public var sourceAppList: [String]?

    public var sourceFilePathList: [String]?

    public var uploadEndpoint: String?

    public var uploadType: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.androidInstanceIdList != nil {
            map["AndroidInstanceIdList"] = self.androidInstanceIdList!
        }
        if self.backupAll != nil {
            map["BackupAll"] = self.backupAll!
        }
        if self.backupFileName != nil {
            map["BackupFileName"] = self.backupFileName!
        }
        if self.backupFilePath != nil {
            map["BackupFilePath"] = self.backupFilePath!
        }
        if self.description_ != nil {
            map["Description"] = self.description_!
        }
        if self.sourceAppList != nil {
            map["SourceAppList"] = self.sourceAppList!
        }
        if self.sourceFilePathList != nil {
            map["SourceFilePathList"] = self.sourceFilePathList!
        }
        if self.uploadEndpoint != nil {
            map["UploadEndpoint"] = self.uploadEndpoint!
        }
        if self.uploadType != nil {
            map["UploadType"] = self.uploadType!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AndroidInstanceIdList"] as? [String] {
            self.androidInstanceIdList = value
        }
        if let value = dict["BackupAll"] as? Bool {
            self.backupAll = value
        }
        if let value = dict["BackupFileName"] as? String {
            self.backupFileName = value
        }
        if let value = dict["BackupFilePath"] as? String {
            self.backupFilePath = value
        }
        if let value = dict["Description"] as? String {
            self.description_ = value
        }
        if let value = dict["SourceAppList"] as? [String] {
            self.sourceAppList = value
        }
        if let value = dict["SourceFilePathList"] as? [String] {
            self.sourceFilePathList = value
        }
        if let value = dict["UploadEndpoint"] as? String {
            self.uploadEndpoint = value
        }
        if let value = dict["UploadType"] as? String {
            self.uploadType = value
        }
    }
}

public class BackupFileResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var androidInstanceId: String?

        public var backupFileId: String?

        public var backupFileName: String?

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
            if self.androidInstanceId != nil {
                map["AndroidInstanceId"] = self.androidInstanceId!
            }
            if self.backupFileId != nil {
                map["BackupFileId"] = self.backupFileId!
            }
            if self.backupFileName != nil {
                map["BackupFileName"] = self.backupFileName!
            }
            if self.taskId != nil {
                map["TaskId"] = self.taskId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["AndroidInstanceId"] as? String {
                self.androidInstanceId = value
            }
            if let value = dict["BackupFileId"] as? String {
                self.backupFileId = value
            }
            if let value = dict["BackupFileName"] as? String {
                self.backupFileName = value
            }
            if let value = dict["TaskId"] as? String {
                self.taskId = value
            }
        }
    }
    public var count: Int64?

    public var data: [BackupFileResponseBody.Data]?

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
        if self.count != nil {
            map["Count"] = self.count!
        }
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
        if self.taskId != nil {
            map["TaskId"] = self.taskId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Count"] as? Int64 {
            self.count = value
        }
        if let value = dict["Data"] as? [Any?] {
            var tmp : [BackupFileResponseBody.Data] = []
            for v in value {
                if v != nil {
                    var model = BackupFileResponseBody.Data()
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
        if let value = dict["TaskId"] as? String {
            self.taskId = value
        }
    }
}

public class BackupFileResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: BackupFileResponseBody?

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
            var model = BackupFileResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class BatchGetAcpConnectionTicketRequest : Tea.TeaModel {
    public class InstanceTasks : Tea.TeaModel {
        public var instanceId: String?

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
            if self.instanceId != nil {
                map["InstanceId"] = self.instanceId!
            }
            if self.taskId != nil {
                map["TaskId"] = self.taskId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["InstanceId"] as? String {
                self.instanceId = value
            }
            if let value = dict["TaskId"] as? String {
                self.taskId = value
            }
        }
    }
    public var endUserId: String?

    public var instanceGroupId: String?

    public var instanceIds: [String]?

    public var instanceTasks: [BatchGetAcpConnectionTicketRequest.InstanceTasks]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.endUserId != nil {
            map["EndUserId"] = self.endUserId!
        }
        if self.instanceGroupId != nil {
            map["InstanceGroupId"] = self.instanceGroupId!
        }
        if self.instanceIds != nil {
            map["InstanceIds"] = self.instanceIds!
        }
        if self.instanceTasks != nil {
            var tmp : [Any] = []
            for k in self.instanceTasks! {
                tmp.append(k.toMap())
            }
            map["InstanceTasks"] = tmp
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["EndUserId"] as? String {
            self.endUserId = value
        }
        if let value = dict["InstanceGroupId"] as? String {
            self.instanceGroupId = value
        }
        if let value = dict["InstanceIds"] as? [String] {
            self.instanceIds = value
        }
        if let value = dict["InstanceTasks"] as? [Any?] {
            var tmp : [BatchGetAcpConnectionTicketRequest.InstanceTasks] = []
            for v in value {
                if v != nil {
                    var model = BatchGetAcpConnectionTicketRequest.InstanceTasks()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.instanceTasks = tmp
        }
    }
}

public class BatchGetAcpConnectionTicketResponseBody : Tea.TeaModel {
    public class InstanceConnectionModels : Tea.TeaModel {
        public var appInstanceGroupId: String?

        public var appInstanceId: String?

        public var errorCode: String?

        public var instanceId: String?

        public var persistentAppInstanceId: String?

        public var taskId: String?

        public var taskStatus: String?

        public var ticket: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.appInstanceGroupId != nil {
                map["AppInstanceGroupId"] = self.appInstanceGroupId!
            }
            if self.appInstanceId != nil {
                map["AppInstanceId"] = self.appInstanceId!
            }
            if self.errorCode != nil {
                map["ErrorCode"] = self.errorCode!
            }
            if self.instanceId != nil {
                map["InstanceId"] = self.instanceId!
            }
            if self.persistentAppInstanceId != nil {
                map["PersistentAppInstanceId"] = self.persistentAppInstanceId!
            }
            if self.taskId != nil {
                map["TaskId"] = self.taskId!
            }
            if self.taskStatus != nil {
                map["TaskStatus"] = self.taskStatus!
            }
            if self.ticket != nil {
                map["Ticket"] = self.ticket!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["AppInstanceGroupId"] as? String {
                self.appInstanceGroupId = value
            }
            if let value = dict["AppInstanceId"] as? String {
                self.appInstanceId = value
            }
            if let value = dict["ErrorCode"] as? String {
                self.errorCode = value
            }
            if let value = dict["InstanceId"] as? String {
                self.instanceId = value
            }
            if let value = dict["PersistentAppInstanceId"] as? String {
                self.persistentAppInstanceId = value
            }
            if let value = dict["TaskId"] as? String {
                self.taskId = value
            }
            if let value = dict["TaskStatus"] as? String {
                self.taskStatus = value
            }
            if let value = dict["Ticket"] as? String {
                self.ticket = value
            }
        }
    }
    public var instanceConnectionModels: [BatchGetAcpConnectionTicketResponseBody.InstanceConnectionModels]?

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
        if self.instanceConnectionModels != nil {
            var tmp : [Any] = []
            for k in self.instanceConnectionModels! {
                tmp.append(k.toMap())
            }
            map["InstanceConnectionModels"] = tmp
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["InstanceConnectionModels"] as? [Any?] {
            var tmp : [BatchGetAcpConnectionTicketResponseBody.InstanceConnectionModels] = []
            for v in value {
                if v != nil {
                    var model = BatchGetAcpConnectionTicketResponseBody.InstanceConnectionModels()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.instanceConnectionModels = tmp
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class BatchGetAcpConnectionTicketResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: BatchGetAcpConnectionTicketResponseBody?

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
            var model = BatchGetAcpConnectionTicketResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ChangeCloudPhoneNodeRequest : Tea.TeaModel {
    public var instanceType: String?

    public var nodeId: String?

    public var phoneCount: Int32?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.instanceType != nil {
            map["InstanceType"] = self.instanceType!
        }
        if self.nodeId != nil {
            map["NodeId"] = self.nodeId!
        }
        if self.phoneCount != nil {
            map["PhoneCount"] = self.phoneCount!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["InstanceType"] as? String {
            self.instanceType = value
        }
        if let value = dict["NodeId"] as? String {
            self.nodeId = value
        }
        if let value = dict["PhoneCount"] as? Int32 {
            self.phoneCount = value
        }
    }
}

public class ChangeCloudPhoneNodeResponseBody : Tea.TeaModel {
    public class NodeInfos : Tea.TeaModel {
        public class InstanceInfos : Tea.TeaModel {
            public var instanceId: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.instanceId != nil {
                    map["InstanceId"] = self.instanceId!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["InstanceId"] as? String {
                    self.instanceId = value
                }
            }
        }
        public var instanceInfos: [ChangeCloudPhoneNodeResponseBody.NodeInfos.InstanceInfos]?

        public var nodeId: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.instanceInfos != nil {
                var tmp : [Any] = []
                for k in self.instanceInfos! {
                    tmp.append(k.toMap())
                }
                map["InstanceInfos"] = tmp
            }
            if self.nodeId != nil {
                map["NodeId"] = self.nodeId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["InstanceInfos"] as? [Any?] {
                var tmp : [ChangeCloudPhoneNodeResponseBody.NodeInfos.InstanceInfos] = []
                for v in value {
                    if v != nil {
                        var model = ChangeCloudPhoneNodeResponseBody.NodeInfos.InstanceInfos()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.instanceInfos = tmp
            }
            if let value = dict["NodeId"] as? String {
                self.nodeId = value
            }
        }
    }
    public var nodeInfos: [ChangeCloudPhoneNodeResponseBody.NodeInfos]?

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
        if self.nodeInfos != nil {
            var tmp : [Any] = []
            for k in self.nodeInfos! {
                tmp.append(k.toMap())
            }
            map["NodeInfos"] = tmp
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["NodeInfos"] as? [Any?] {
            var tmp : [ChangeCloudPhoneNodeResponseBody.NodeInfos] = []
            for v in value {
                if v != nil {
                    var model = ChangeCloudPhoneNodeResponseBody.NodeInfos()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.nodeInfos = tmp
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class ChangeCloudPhoneNodeResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ChangeCloudPhoneNodeResponseBody?

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
            var model = ChangeCloudPhoneNodeResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class CheckResourceStockRequest : Tea.TeaModel {
    public var acpSpecId: String?

    public var amount: Int32?

    public var bizRegionId: String?

    public var gpuAcceleration: Bool?

    public var zoneId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.acpSpecId != nil {
            map["AcpSpecId"] = self.acpSpecId!
        }
        if self.amount != nil {
            map["Amount"] = self.amount!
        }
        if self.bizRegionId != nil {
            map["BizRegionId"] = self.bizRegionId!
        }
        if self.gpuAcceleration != nil {
            map["GpuAcceleration"] = self.gpuAcceleration!
        }
        if self.zoneId != nil {
            map["ZoneId"] = self.zoneId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AcpSpecId"] as? String {
            self.acpSpecId = value
        }
        if let value = dict["Amount"] as? Int32 {
            self.amount = value
        }
        if let value = dict["BizRegionId"] as? String {
            self.bizRegionId = value
        }
        if let value = dict["GpuAcceleration"] as? Bool {
            self.gpuAcceleration = value
        }
        if let value = dict["ZoneId"] as? String {
            self.zoneId = value
        }
    }
}

public class CheckResourceStockResponseBody : Tea.TeaModel {
    public class ResourceStockModels : Tea.TeaModel {
        public var regionId: String?

        public var stockStatus: String?

        public var zoneId: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.regionId != nil {
                map["RegionId"] = self.regionId!
            }
            if self.stockStatus != nil {
                map["StockStatus"] = self.stockStatus!
            }
            if self.zoneId != nil {
                map["ZoneId"] = self.zoneId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["RegionId"] as? String {
                self.regionId = value
            }
            if let value = dict["StockStatus"] as? String {
                self.stockStatus = value
            }
            if let value = dict["ZoneId"] as? String {
                self.zoneId = value
            }
        }
    }
    public var requestId: String?

    public var resourceStockModels: [CheckResourceStockResponseBody.ResourceStockModels]?

    public override init() {
        super.init()
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
        if self.resourceStockModels != nil {
            var tmp : [Any] = []
            for k in self.resourceStockModels! {
                tmp.append(k.toMap())
            }
            map["ResourceStockModels"] = tmp
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["ResourceStockModels"] as? [Any?] {
            var tmp : [CheckResourceStockResponseBody.ResourceStockModels] = []
            for v in value {
                if v != nil {
                    var model = CheckResourceStockResponseBody.ResourceStockModels()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.resourceStockModels = tmp
        }
    }
}

public class CheckResourceStockResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CheckResourceStockResponseBody?

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
            var model = CheckResourceStockResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class CreateAndroidInstanceGroupRequest : Tea.TeaModel {
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
    public var amount: Int32?

    public var autoPay: Bool?

    public var autoRenew: Bool?

    public var bizRegionId: String?

    public var chargeType: String?

    public var clientToken: String?

    public var enableIpv6: Bool?

    public var gpuAcceleration: Bool?

    public var imageId: String?

    public var instanceGroupName: String?

    public var instanceGroupSpec: String?

    public var ipv6Bandwidth: Int32?

    public var keyPairId: String?

    public var numberOfInstances: Int32?

    public var officeSiteId: String?

    public var period: Int32?

    public var periodUnit: String?

    public var policyGroupId: String?

    public var tag: [CreateAndroidInstanceGroupRequest.Tag]?

    public var vSwitchId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.amount != nil {
            map["Amount"] = self.amount!
        }
        if self.autoPay != nil {
            map["AutoPay"] = self.autoPay!
        }
        if self.autoRenew != nil {
            map["AutoRenew"] = self.autoRenew!
        }
        if self.bizRegionId != nil {
            map["BizRegionId"] = self.bizRegionId!
        }
        if self.chargeType != nil {
            map["ChargeType"] = self.chargeType!
        }
        if self.clientToken != nil {
            map["ClientToken"] = self.clientToken!
        }
        if self.enableIpv6 != nil {
            map["EnableIpv6"] = self.enableIpv6!
        }
        if self.gpuAcceleration != nil {
            map["GpuAcceleration"] = self.gpuAcceleration!
        }
        if self.imageId != nil {
            map["ImageId"] = self.imageId!
        }
        if self.instanceGroupName != nil {
            map["InstanceGroupName"] = self.instanceGroupName!
        }
        if self.instanceGroupSpec != nil {
            map["InstanceGroupSpec"] = self.instanceGroupSpec!
        }
        if self.ipv6Bandwidth != nil {
            map["Ipv6Bandwidth"] = self.ipv6Bandwidth!
        }
        if self.keyPairId != nil {
            map["KeyPairId"] = self.keyPairId!
        }
        if self.numberOfInstances != nil {
            map["NumberOfInstances"] = self.numberOfInstances!
        }
        if self.officeSiteId != nil {
            map["OfficeSiteId"] = self.officeSiteId!
        }
        if self.period != nil {
            map["Period"] = self.period!
        }
        if self.periodUnit != nil {
            map["PeriodUnit"] = self.periodUnit!
        }
        if self.policyGroupId != nil {
            map["PolicyGroupId"] = self.policyGroupId!
        }
        if self.tag != nil {
            var tmp : [Any] = []
            for k in self.tag! {
                tmp.append(k.toMap())
            }
            map["Tag"] = tmp
        }
        if self.vSwitchId != nil {
            map["VSwitchId"] = self.vSwitchId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Amount"] as? Int32 {
            self.amount = value
        }
        if let value = dict["AutoPay"] as? Bool {
            self.autoPay = value
        }
        if let value = dict["AutoRenew"] as? Bool {
            self.autoRenew = value
        }
        if let value = dict["BizRegionId"] as? String {
            self.bizRegionId = value
        }
        if let value = dict["ChargeType"] as? String {
            self.chargeType = value
        }
        if let value = dict["ClientToken"] as? String {
            self.clientToken = value
        }
        if let value = dict["EnableIpv6"] as? Bool {
            self.enableIpv6 = value
        }
        if let value = dict["GpuAcceleration"] as? Bool {
            self.gpuAcceleration = value
        }
        if let value = dict["ImageId"] as? String {
            self.imageId = value
        }
        if let value = dict["InstanceGroupName"] as? String {
            self.instanceGroupName = value
        }
        if let value = dict["InstanceGroupSpec"] as? String {
            self.instanceGroupSpec = value
        }
        if let value = dict["Ipv6Bandwidth"] as? Int32 {
            self.ipv6Bandwidth = value
        }
        if let value = dict["KeyPairId"] as? String {
            self.keyPairId = value
        }
        if let value = dict["NumberOfInstances"] as? Int32 {
            self.numberOfInstances = value
        }
        if let value = dict["OfficeSiteId"] as? String {
            self.officeSiteId = value
        }
        if let value = dict["Period"] as? Int32 {
            self.period = value
        }
        if let value = dict["PeriodUnit"] as? String {
            self.periodUnit = value
        }
        if let value = dict["PolicyGroupId"] as? String {
            self.policyGroupId = value
        }
        if let value = dict["Tag"] as? [Any?] {
            var tmp : [CreateAndroidInstanceGroupRequest.Tag] = []
            for v in value {
                if v != nil {
                    var model = CreateAndroidInstanceGroupRequest.Tag()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.tag = tmp
        }
        if let value = dict["VSwitchId"] as? String {
            self.vSwitchId = value
        }
    }
}

public class CreateAndroidInstanceGroupResponseBody : Tea.TeaModel {
    public class InstanceGroupInfos : Tea.TeaModel {
        public var instanceGroupId: String?

        public var instanceIds: [String]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.instanceGroupId != nil {
                map["InstanceGroupId"] = self.instanceGroupId!
            }
            if self.instanceIds != nil {
                map["InstanceIds"] = self.instanceIds!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["InstanceGroupId"] as? String {
                self.instanceGroupId = value
            }
            if let value = dict["InstanceIds"] as? [String] {
                self.instanceIds = value
            }
        }
    }
    public var instanceGroupIds: [String]?

    public var instanceGroupInfos: [CreateAndroidInstanceGroupResponseBody.InstanceGroupInfos]?

    public var orderId: String?

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
        if self.instanceGroupIds != nil {
            map["InstanceGroupIds"] = self.instanceGroupIds!
        }
        if self.instanceGroupInfos != nil {
            var tmp : [Any] = []
            for k in self.instanceGroupInfos! {
                tmp.append(k.toMap())
            }
            map["InstanceGroupInfos"] = tmp
        }
        if self.orderId != nil {
            map["OrderId"] = self.orderId!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["InstanceGroupIds"] as? [String] {
            self.instanceGroupIds = value
        }
        if let value = dict["InstanceGroupInfos"] as? [Any?] {
            var tmp : [CreateAndroidInstanceGroupResponseBody.InstanceGroupInfos] = []
            for v in value {
                if v != nil {
                    var model = CreateAndroidInstanceGroupResponseBody.InstanceGroupInfos()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.instanceGroupInfos = tmp
        }
        if let value = dict["OrderId"] as? String {
            self.orderId = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class CreateAndroidInstanceGroupResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateAndroidInstanceGroupResponseBody?

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
            var model = CreateAndroidInstanceGroupResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class CreateAppRequest : Tea.TeaModel {
    public class CustomAppInfo : Tea.TeaModel {
        public var apkSize: String?

        public var downloadUrl: String?

        public var md5: String?

        public var packageName: String?

        public var version: String?

        public var versionCode: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.apkSize != nil {
                map["ApkSize"] = self.apkSize!
            }
            if self.downloadUrl != nil {
                map["DownloadUrl"] = self.downloadUrl!
            }
            if self.md5 != nil {
                map["Md5"] = self.md5!
            }
            if self.packageName != nil {
                map["PackageName"] = self.packageName!
            }
            if self.version != nil {
                map["Version"] = self.version!
            }
            if self.versionCode != nil {
                map["VersionCode"] = self.versionCode!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["ApkSize"] as? String {
                self.apkSize = value
            }
            if let value = dict["DownloadUrl"] as? String {
                self.downloadUrl = value
            }
            if let value = dict["Md5"] as? String {
                self.md5 = value
            }
            if let value = dict["PackageName"] as? String {
                self.packageName = value
            }
            if let value = dict["Version"] as? String {
                self.version = value
            }
            if let value = dict["VersionCode"] as? String {
                self.versionCode = value
            }
        }
    }
    public var appName: String?

    public var bizRegionId: String?

    public var customAppInfo: CreateAppRequest.CustomAppInfo?

    public var description_: String?

    public var fileName: String?

    public var filePath: String?

    public var iconUrl: String?

    public var installParam: String?

    public var ossAppUrl: String?

    public var signApk: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.customAppInfo?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.appName != nil {
            map["AppName"] = self.appName!
        }
        if self.bizRegionId != nil {
            map["BizRegionId"] = self.bizRegionId!
        }
        if self.customAppInfo != nil {
            map["CustomAppInfo"] = self.customAppInfo?.toMap()
        }
        if self.description_ != nil {
            map["Description"] = self.description_!
        }
        if self.fileName != nil {
            map["FileName"] = self.fileName!
        }
        if self.filePath != nil {
            map["FilePath"] = self.filePath!
        }
        if self.iconUrl != nil {
            map["IconUrl"] = self.iconUrl!
        }
        if self.installParam != nil {
            map["InstallParam"] = self.installParam!
        }
        if self.ossAppUrl != nil {
            map["OssAppUrl"] = self.ossAppUrl!
        }
        if self.signApk != nil {
            map["SignApk"] = self.signApk!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AppName"] as? String {
            self.appName = value
        }
        if let value = dict["BizRegionId"] as? String {
            self.bizRegionId = value
        }
        if let value = dict["CustomAppInfo"] as? [String: Any?] {
            var model = CreateAppRequest.CustomAppInfo()
            model.fromMap(value)
            self.customAppInfo = model
        }
        if let value = dict["Description"] as? String {
            self.description_ = value
        }
        if let value = dict["FileName"] as? String {
            self.fileName = value
        }
        if let value = dict["FilePath"] as? String {
            self.filePath = value
        }
        if let value = dict["IconUrl"] as? String {
            self.iconUrl = value
        }
        if let value = dict["InstallParam"] as? String {
            self.installParam = value
        }
        if let value = dict["OssAppUrl"] as? String {
            self.ossAppUrl = value
        }
        if let value = dict["SignApk"] as? String {
            self.signApk = value
        }
    }
}

public class CreateAppShrinkRequest : Tea.TeaModel {
    public var appName: String?

    public var bizRegionId: String?

    public var customAppInfoShrink: String?

    public var description_: String?

    public var fileName: String?

    public var filePath: String?

    public var iconUrl: String?

    public var installParam: String?

    public var ossAppUrl: String?

    public var signApk: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.appName != nil {
            map["AppName"] = self.appName!
        }
        if self.bizRegionId != nil {
            map["BizRegionId"] = self.bizRegionId!
        }
        if self.customAppInfoShrink != nil {
            map["CustomAppInfo"] = self.customAppInfoShrink!
        }
        if self.description_ != nil {
            map["Description"] = self.description_!
        }
        if self.fileName != nil {
            map["FileName"] = self.fileName!
        }
        if self.filePath != nil {
            map["FilePath"] = self.filePath!
        }
        if self.iconUrl != nil {
            map["IconUrl"] = self.iconUrl!
        }
        if self.installParam != nil {
            map["InstallParam"] = self.installParam!
        }
        if self.ossAppUrl != nil {
            map["OssAppUrl"] = self.ossAppUrl!
        }
        if self.signApk != nil {
            map["SignApk"] = self.signApk!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AppName"] as? String {
            self.appName = value
        }
        if let value = dict["BizRegionId"] as? String {
            self.bizRegionId = value
        }
        if let value = dict["CustomAppInfo"] as? String {
            self.customAppInfoShrink = value
        }
        if let value = dict["Description"] as? String {
            self.description_ = value
        }
        if let value = dict["FileName"] as? String {
            self.fileName = value
        }
        if let value = dict["FilePath"] as? String {
            self.filePath = value
        }
        if let value = dict["IconUrl"] as? String {
            self.iconUrl = value
        }
        if let value = dict["InstallParam"] as? String {
            self.installParam = value
        }
        if let value = dict["OssAppUrl"] as? String {
            self.ossAppUrl = value
        }
        if let value = dict["SignApk"] as? String {
            self.signApk = value
        }
    }
}

public class CreateAppResponseBody : Tea.TeaModel {
    public var appId: Int32?

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
        if self.appId != nil {
            map["AppId"] = self.appId!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AppId"] as? Int32 {
            self.appId = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class CreateAppResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateAppResponseBody?

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
            var model = CreateAppResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class CreateCloudPhoneNodeRequest : Tea.TeaModel {
    public class DisplayConfig : Tea.TeaModel {
        public var dpi: Int32?

        public var fps: Int32?

        public var lockResolution: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.dpi != nil {
                map["Dpi"] = self.dpi!
            }
            if self.fps != nil {
                map["Fps"] = self.fps!
            }
            if self.lockResolution != nil {
                map["LockResolution"] = self.lockResolution!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Dpi"] as? Int32 {
                self.dpi = value
            }
            if let value = dict["Fps"] as? Int32 {
                self.fps = value
            }
            if let value = dict["LockResolution"] as? String {
                self.lockResolution = value
            }
        }
    }
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
    public var autoPay: Bool?

    public var autoRenew: Bool?

    public var bizRegionId: String?

    public var chargeType: String?

    public var count: String?

    public var displayConfig: CreateCloudPhoneNodeRequest.DisplayConfig?

    public var imageId: String?

    public var instanceType: String?

    public var networkId: String?

    public var nodeName: String?

    public var period: Int32?

    public var periodUnit: String?

    public var phoneCount: Int32?

    public var resolutionHeight: Int32?

    public var resolutionWidth: Int32?

    public var serverShareDataVolume: Int32?

    public var serverType: String?

    public var streamMode: Int32?

    public var tag: [CreateCloudPhoneNodeRequest.Tag]?

    public var vSwitchId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.displayConfig?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.autoPay != nil {
            map["AutoPay"] = self.autoPay!
        }
        if self.autoRenew != nil {
            map["AutoRenew"] = self.autoRenew!
        }
        if self.bizRegionId != nil {
            map["BizRegionId"] = self.bizRegionId!
        }
        if self.chargeType != nil {
            map["ChargeType"] = self.chargeType!
        }
        if self.count != nil {
            map["Count"] = self.count!
        }
        if self.displayConfig != nil {
            map["DisplayConfig"] = self.displayConfig?.toMap()
        }
        if self.imageId != nil {
            map["ImageId"] = self.imageId!
        }
        if self.instanceType != nil {
            map["InstanceType"] = self.instanceType!
        }
        if self.networkId != nil {
            map["NetworkId"] = self.networkId!
        }
        if self.nodeName != nil {
            map["NodeName"] = self.nodeName!
        }
        if self.period != nil {
            map["Period"] = self.period!
        }
        if self.periodUnit != nil {
            map["PeriodUnit"] = self.periodUnit!
        }
        if self.phoneCount != nil {
            map["PhoneCount"] = self.phoneCount!
        }
        if self.resolutionHeight != nil {
            map["ResolutionHeight"] = self.resolutionHeight!
        }
        if self.resolutionWidth != nil {
            map["ResolutionWidth"] = self.resolutionWidth!
        }
        if self.serverShareDataVolume != nil {
            map["ServerShareDataVolume"] = self.serverShareDataVolume!
        }
        if self.serverType != nil {
            map["ServerType"] = self.serverType!
        }
        if self.streamMode != nil {
            map["StreamMode"] = self.streamMode!
        }
        if self.tag != nil {
            var tmp : [Any] = []
            for k in self.tag! {
                tmp.append(k.toMap())
            }
            map["Tag"] = tmp
        }
        if self.vSwitchId != nil {
            map["VSwitchId"] = self.vSwitchId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AutoPay"] as? Bool {
            self.autoPay = value
        }
        if let value = dict["AutoRenew"] as? Bool {
            self.autoRenew = value
        }
        if let value = dict["BizRegionId"] as? String {
            self.bizRegionId = value
        }
        if let value = dict["ChargeType"] as? String {
            self.chargeType = value
        }
        if let value = dict["Count"] as? String {
            self.count = value
        }
        if let value = dict["DisplayConfig"] as? [String: Any?] {
            var model = CreateCloudPhoneNodeRequest.DisplayConfig()
            model.fromMap(value)
            self.displayConfig = model
        }
        if let value = dict["ImageId"] as? String {
            self.imageId = value
        }
        if let value = dict["InstanceType"] as? String {
            self.instanceType = value
        }
        if let value = dict["NetworkId"] as? String {
            self.networkId = value
        }
        if let value = dict["NodeName"] as? String {
            self.nodeName = value
        }
        if let value = dict["Period"] as? Int32 {
            self.period = value
        }
        if let value = dict["PeriodUnit"] as? String {
            self.periodUnit = value
        }
        if let value = dict["PhoneCount"] as? Int32 {
            self.phoneCount = value
        }
        if let value = dict["ResolutionHeight"] as? Int32 {
            self.resolutionHeight = value
        }
        if let value = dict["ResolutionWidth"] as? Int32 {
            self.resolutionWidth = value
        }
        if let value = dict["ServerShareDataVolume"] as? Int32 {
            self.serverShareDataVolume = value
        }
        if let value = dict["ServerType"] as? String {
            self.serverType = value
        }
        if let value = dict["StreamMode"] as? Int32 {
            self.streamMode = value
        }
        if let value = dict["Tag"] as? [Any?] {
            var tmp : [CreateCloudPhoneNodeRequest.Tag] = []
            for v in value {
                if v != nil {
                    var model = CreateCloudPhoneNodeRequest.Tag()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.tag = tmp
        }
        if let value = dict["VSwitchId"] as? String {
            self.vSwitchId = value
        }
    }
}

public class CreateCloudPhoneNodeShrinkRequest : Tea.TeaModel {
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
    public var autoPay: Bool?

    public var autoRenew: Bool?

    public var bizRegionId: String?

    public var chargeType: String?

    public var count: String?

    public var displayConfigShrink: String?

    public var imageId: String?

    public var instanceType: String?

    public var networkId: String?

    public var nodeName: String?

    public var period: Int32?

    public var periodUnit: String?

    public var phoneCount: Int32?

    public var resolutionHeight: Int32?

    public var resolutionWidth: Int32?

    public var serverShareDataVolume: Int32?

    public var serverType: String?

    public var streamMode: Int32?

    public var tag: [CreateCloudPhoneNodeShrinkRequest.Tag]?

    public var vSwitchId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.autoPay != nil {
            map["AutoPay"] = self.autoPay!
        }
        if self.autoRenew != nil {
            map["AutoRenew"] = self.autoRenew!
        }
        if self.bizRegionId != nil {
            map["BizRegionId"] = self.bizRegionId!
        }
        if self.chargeType != nil {
            map["ChargeType"] = self.chargeType!
        }
        if self.count != nil {
            map["Count"] = self.count!
        }
        if self.displayConfigShrink != nil {
            map["DisplayConfig"] = self.displayConfigShrink!
        }
        if self.imageId != nil {
            map["ImageId"] = self.imageId!
        }
        if self.instanceType != nil {
            map["InstanceType"] = self.instanceType!
        }
        if self.networkId != nil {
            map["NetworkId"] = self.networkId!
        }
        if self.nodeName != nil {
            map["NodeName"] = self.nodeName!
        }
        if self.period != nil {
            map["Period"] = self.period!
        }
        if self.periodUnit != nil {
            map["PeriodUnit"] = self.periodUnit!
        }
        if self.phoneCount != nil {
            map["PhoneCount"] = self.phoneCount!
        }
        if self.resolutionHeight != nil {
            map["ResolutionHeight"] = self.resolutionHeight!
        }
        if self.resolutionWidth != nil {
            map["ResolutionWidth"] = self.resolutionWidth!
        }
        if self.serverShareDataVolume != nil {
            map["ServerShareDataVolume"] = self.serverShareDataVolume!
        }
        if self.serverType != nil {
            map["ServerType"] = self.serverType!
        }
        if self.streamMode != nil {
            map["StreamMode"] = self.streamMode!
        }
        if self.tag != nil {
            var tmp : [Any] = []
            for k in self.tag! {
                tmp.append(k.toMap())
            }
            map["Tag"] = tmp
        }
        if self.vSwitchId != nil {
            map["VSwitchId"] = self.vSwitchId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AutoPay"] as? Bool {
            self.autoPay = value
        }
        if let value = dict["AutoRenew"] as? Bool {
            self.autoRenew = value
        }
        if let value = dict["BizRegionId"] as? String {
            self.bizRegionId = value
        }
        if let value = dict["ChargeType"] as? String {
            self.chargeType = value
        }
        if let value = dict["Count"] as? String {
            self.count = value
        }
        if let value = dict["DisplayConfig"] as? String {
            self.displayConfigShrink = value
        }
        if let value = dict["ImageId"] as? String {
            self.imageId = value
        }
        if let value = dict["InstanceType"] as? String {
            self.instanceType = value
        }
        if let value = dict["NetworkId"] as? String {
            self.networkId = value
        }
        if let value = dict["NodeName"] as? String {
            self.nodeName = value
        }
        if let value = dict["Period"] as? Int32 {
            self.period = value
        }
        if let value = dict["PeriodUnit"] as? String {
            self.periodUnit = value
        }
        if let value = dict["PhoneCount"] as? Int32 {
            self.phoneCount = value
        }
        if let value = dict["ResolutionHeight"] as? Int32 {
            self.resolutionHeight = value
        }
        if let value = dict["ResolutionWidth"] as? Int32 {
            self.resolutionWidth = value
        }
        if let value = dict["ServerShareDataVolume"] as? Int32 {
            self.serverShareDataVolume = value
        }
        if let value = dict["ServerType"] as? String {
            self.serverType = value
        }
        if let value = dict["StreamMode"] as? Int32 {
            self.streamMode = value
        }
        if let value = dict["Tag"] as? [Any?] {
            var tmp : [CreateCloudPhoneNodeShrinkRequest.Tag] = []
            for v in value {
                if v != nil {
                    var model = CreateCloudPhoneNodeShrinkRequest.Tag()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.tag = tmp
        }
        if let value = dict["VSwitchId"] as? String {
            self.vSwitchId = value
        }
    }
}

public class CreateCloudPhoneNodeResponseBody : Tea.TeaModel {
    public class NodeInfos : Tea.TeaModel {
        public var instanceIds: [String]?

        public var nodeId: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.instanceIds != nil {
                map["InstanceIds"] = self.instanceIds!
            }
            if self.nodeId != nil {
                map["NodeId"] = self.nodeId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["InstanceIds"] as? [String] {
                self.instanceIds = value
            }
            if let value = dict["NodeId"] as? String {
                self.nodeId = value
            }
        }
    }
    public var nodeInfos: [CreateCloudPhoneNodeResponseBody.NodeInfos]?

    public var orderId: String?

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
        if self.nodeInfos != nil {
            var tmp : [Any] = []
            for k in self.nodeInfos! {
                tmp.append(k.toMap())
            }
            map["NodeInfos"] = tmp
        }
        if self.orderId != nil {
            map["OrderId"] = self.orderId!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["NodeInfos"] as? [Any?] {
            var tmp : [CreateCloudPhoneNodeResponseBody.NodeInfos] = []
            for v in value {
                if v != nil {
                    var model = CreateCloudPhoneNodeResponseBody.NodeInfos()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.nodeInfos = tmp
        }
        if let value = dict["OrderId"] as? String {
            self.orderId = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class CreateCloudPhoneNodeResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateCloudPhoneNodeResponseBody?

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
            var model = CreateCloudPhoneNodeResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class CreateCustomImageRequest : Tea.TeaModel {
    public var clientToken: String?

    public var description_: String?

    public var imageName: String?

    public var instanceId: String?

    public override init() {
        super.init()
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
            map["ClientToken"] = self.clientToken!
        }
        if self.description_ != nil {
            map["Description"] = self.description_!
        }
        if self.imageName != nil {
            map["ImageName"] = self.imageName!
        }
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ClientToken"] as? String {
            self.clientToken = value
        }
        if let value = dict["Description"] as? String {
            self.description_ = value
        }
        if let value = dict["ImageName"] as? String {
            self.imageName = value
        }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
    }
}

public class CreateCustomImageResponseBody : Tea.TeaModel {
    public var imageId: String?

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
        if self.imageId != nil {
            map["ImageId"] = self.imageId!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ImageId"] as? String {
            self.imageId = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class CreateCustomImageResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateCustomImageResponseBody?

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
            var model = CreateCustomImageResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class CreateKeyPairRequest : Tea.TeaModel {
    public var keyPairName: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.keyPairName != nil {
            map["KeyPairName"] = self.keyPairName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["KeyPairName"] as? String {
            self.keyPairName = value
        }
    }
}

public class CreateKeyPairResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var gmtCreated: String?

        public var keyPairId: String?

        public var keyPairName: String?

        public var privateKeyBody: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.gmtCreated != nil {
                map["GmtCreated"] = self.gmtCreated!
            }
            if self.keyPairId != nil {
                map["KeyPairId"] = self.keyPairId!
            }
            if self.keyPairName != nil {
                map["KeyPairName"] = self.keyPairName!
            }
            if self.privateKeyBody != nil {
                map["PrivateKeyBody"] = self.privateKeyBody!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["GmtCreated"] as? String {
                self.gmtCreated = value
            }
            if let value = dict["KeyPairId"] as? String {
                self.keyPairId = value
            }
            if let value = dict["KeyPairName"] as? String {
                self.keyPairName = value
            }
            if let value = dict["PrivateKeyBody"] as? String {
                self.privateKeyBody = value
            }
        }
    }
    public var data: CreateKeyPairResponseBody.Data?

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
            var model = CreateKeyPairResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class CreateKeyPairResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateKeyPairResponseBody?

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
            var model = CreateKeyPairResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class CreatePolicyGroupRequest : Tea.TeaModel {
    public class NetRedirectPolicy : Tea.TeaModel {
        public class Rules : Tea.TeaModel {
            public var ruleType: String?

            public var target: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.ruleType != nil {
                    map["RuleType"] = self.ruleType!
                }
                if self.target != nil {
                    map["Target"] = self.target!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["RuleType"] as? String {
                    self.ruleType = value
                }
                if let value = dict["Target"] as? String {
                    self.target = value
                }
            }
        }
        public var customProxy: String?

        public var hostAddr: String?

        public var netRedirect: String?

        public var port: String?

        public var proxyPassword: String?

        public var proxyType: String?

        public var proxyUserName: String?

        public var rules: [CreatePolicyGroupRequest.NetRedirectPolicy.Rules]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.customProxy != nil {
                map["CustomProxy"] = self.customProxy!
            }
            if self.hostAddr != nil {
                map["HostAddr"] = self.hostAddr!
            }
            if self.netRedirect != nil {
                map["NetRedirect"] = self.netRedirect!
            }
            if self.port != nil {
                map["Port"] = self.port!
            }
            if self.proxyPassword != nil {
                map["ProxyPassword"] = self.proxyPassword!
            }
            if self.proxyType != nil {
                map["ProxyType"] = self.proxyType!
            }
            if self.proxyUserName != nil {
                map["ProxyUserName"] = self.proxyUserName!
            }
            if self.rules != nil {
                var tmp : [Any] = []
                for k in self.rules! {
                    tmp.append(k.toMap())
                }
                map["Rules"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["CustomProxy"] as? String {
                self.customProxy = value
            }
            if let value = dict["HostAddr"] as? String {
                self.hostAddr = value
            }
            if let value = dict["NetRedirect"] as? String {
                self.netRedirect = value
            }
            if let value = dict["Port"] as? String {
                self.port = value
            }
            if let value = dict["ProxyPassword"] as? String {
                self.proxyPassword = value
            }
            if let value = dict["ProxyType"] as? String {
                self.proxyType = value
            }
            if let value = dict["ProxyUserName"] as? String {
                self.proxyUserName = value
            }
            if let value = dict["Rules"] as? [Any?] {
                var tmp : [CreatePolicyGroupRequest.NetRedirectPolicy.Rules] = []
                for v in value {
                    if v != nil {
                        var model = CreatePolicyGroupRequest.NetRedirectPolicy.Rules()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.rules = tmp
            }
        }
    }
    public class Watermark : Tea.TeaModel {
        public var watermarkColor: Int32?

        public var watermarkCustomText: String?

        public var watermarkFontSize: Int32?

        public var watermarkSwitch: String?

        public var watermarkTransparencyValue: Int32?

        public var watermarkTypes: [String]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.watermarkColor != nil {
                map["WatermarkColor"] = self.watermarkColor!
            }
            if self.watermarkCustomText != nil {
                map["WatermarkCustomText"] = self.watermarkCustomText!
            }
            if self.watermarkFontSize != nil {
                map["WatermarkFontSize"] = self.watermarkFontSize!
            }
            if self.watermarkSwitch != nil {
                map["WatermarkSwitch"] = self.watermarkSwitch!
            }
            if self.watermarkTransparencyValue != nil {
                map["WatermarkTransparencyValue"] = self.watermarkTransparencyValue!
            }
            if self.watermarkTypes != nil {
                map["WatermarkTypes"] = self.watermarkTypes!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["WatermarkColor"] as? Int32 {
                self.watermarkColor = value
            }
            if let value = dict["WatermarkCustomText"] as? String {
                self.watermarkCustomText = value
            }
            if let value = dict["WatermarkFontSize"] as? Int32 {
                self.watermarkFontSize = value
            }
            if let value = dict["WatermarkSwitch"] as? String {
                self.watermarkSwitch = value
            }
            if let value = dict["WatermarkTransparencyValue"] as? Int32 {
                self.watermarkTransparencyValue = value
            }
            if let value = dict["WatermarkTypes"] as? [String] {
                self.watermarkTypes = value
            }
        }
    }
    public var cameraRedirect: String?

    public var clipboard: String?

    public var html5FileTransfer: String?

    public var localDrive: String?

    public var lockResolution: String?

    public var netRedirectPolicy: CreatePolicyGroupRequest.NetRedirectPolicy?

    public var policyGroupName: String?

    public var policyType: String?

    public var resolutionHeight: Int32?

    public var resolutionWidth: Int32?

    public var watermark: CreatePolicyGroupRequest.Watermark?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.netRedirectPolicy?.validate()
        try self.watermark?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.cameraRedirect != nil {
            map["CameraRedirect"] = self.cameraRedirect!
        }
        if self.clipboard != nil {
            map["Clipboard"] = self.clipboard!
        }
        if self.html5FileTransfer != nil {
            map["Html5FileTransfer"] = self.html5FileTransfer!
        }
        if self.localDrive != nil {
            map["LocalDrive"] = self.localDrive!
        }
        if self.lockResolution != nil {
            map["LockResolution"] = self.lockResolution!
        }
        if self.netRedirectPolicy != nil {
            map["NetRedirectPolicy"] = self.netRedirectPolicy?.toMap()
        }
        if self.policyGroupName != nil {
            map["PolicyGroupName"] = self.policyGroupName!
        }
        if self.policyType != nil {
            map["PolicyType"] = self.policyType!
        }
        if self.resolutionHeight != nil {
            map["ResolutionHeight"] = self.resolutionHeight!
        }
        if self.resolutionWidth != nil {
            map["ResolutionWidth"] = self.resolutionWidth!
        }
        if self.watermark != nil {
            map["Watermark"] = self.watermark?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["CameraRedirect"] as? String {
            self.cameraRedirect = value
        }
        if let value = dict["Clipboard"] as? String {
            self.clipboard = value
        }
        if let value = dict["Html5FileTransfer"] as? String {
            self.html5FileTransfer = value
        }
        if let value = dict["LocalDrive"] as? String {
            self.localDrive = value
        }
        if let value = dict["LockResolution"] as? String {
            self.lockResolution = value
        }
        if let value = dict["NetRedirectPolicy"] as? [String: Any?] {
            var model = CreatePolicyGroupRequest.NetRedirectPolicy()
            model.fromMap(value)
            self.netRedirectPolicy = model
        }
        if let value = dict["PolicyGroupName"] as? String {
            self.policyGroupName = value
        }
        if let value = dict["PolicyType"] as? String {
            self.policyType = value
        }
        if let value = dict["ResolutionHeight"] as? Int32 {
            self.resolutionHeight = value
        }
        if let value = dict["ResolutionWidth"] as? Int32 {
            self.resolutionWidth = value
        }
        if let value = dict["Watermark"] as? [String: Any?] {
            var model = CreatePolicyGroupRequest.Watermark()
            model.fromMap(value)
            self.watermark = model
        }
    }
}

public class CreatePolicyGroupShrinkRequest : Tea.TeaModel {
    public var cameraRedirect: String?

    public var clipboard: String?

    public var html5FileTransfer: String?

    public var localDrive: String?

    public var lockResolution: String?

    public var netRedirectPolicyShrink: String?

    public var policyGroupName: String?

    public var policyType: String?

    public var resolutionHeight: Int32?

    public var resolutionWidth: Int32?

    public var watermarkShrink: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.cameraRedirect != nil {
            map["CameraRedirect"] = self.cameraRedirect!
        }
        if self.clipboard != nil {
            map["Clipboard"] = self.clipboard!
        }
        if self.html5FileTransfer != nil {
            map["Html5FileTransfer"] = self.html5FileTransfer!
        }
        if self.localDrive != nil {
            map["LocalDrive"] = self.localDrive!
        }
        if self.lockResolution != nil {
            map["LockResolution"] = self.lockResolution!
        }
        if self.netRedirectPolicyShrink != nil {
            map["NetRedirectPolicy"] = self.netRedirectPolicyShrink!
        }
        if self.policyGroupName != nil {
            map["PolicyGroupName"] = self.policyGroupName!
        }
        if self.policyType != nil {
            map["PolicyType"] = self.policyType!
        }
        if self.resolutionHeight != nil {
            map["ResolutionHeight"] = self.resolutionHeight!
        }
        if self.resolutionWidth != nil {
            map["ResolutionWidth"] = self.resolutionWidth!
        }
        if self.watermarkShrink != nil {
            map["Watermark"] = self.watermarkShrink!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["CameraRedirect"] as? String {
            self.cameraRedirect = value
        }
        if let value = dict["Clipboard"] as? String {
            self.clipboard = value
        }
        if let value = dict["Html5FileTransfer"] as? String {
            self.html5FileTransfer = value
        }
        if let value = dict["LocalDrive"] as? String {
            self.localDrive = value
        }
        if let value = dict["LockResolution"] as? String {
            self.lockResolution = value
        }
        if let value = dict["NetRedirectPolicy"] as? String {
            self.netRedirectPolicyShrink = value
        }
        if let value = dict["PolicyGroupName"] as? String {
            self.policyGroupName = value
        }
        if let value = dict["PolicyType"] as? String {
            self.policyType = value
        }
        if let value = dict["ResolutionHeight"] as? Int32 {
            self.resolutionHeight = value
        }
        if let value = dict["ResolutionWidth"] as? Int32 {
            self.resolutionWidth = value
        }
        if let value = dict["Watermark"] as? String {
            self.watermarkShrink = value
        }
    }
}

public class CreatePolicyGroupResponseBody : Tea.TeaModel {
    public var policyGroupId: String?

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
        if self.policyGroupId != nil {
            map["PolicyGroupId"] = self.policyGroupId!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["PolicyGroupId"] as? String {
            self.policyGroupId = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class CreatePolicyGroupResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreatePolicyGroupResponseBody?

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
            var model = CreatePolicyGroupResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class CreateScreenshotRequest : Tea.TeaModel {
    public var androidInstanceIdList: [String]?

    public var ossBucketName: String?

    public var skipCheckPolicyConfig: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.androidInstanceIdList != nil {
            map["AndroidInstanceIdList"] = self.androidInstanceIdList!
        }
        if self.ossBucketName != nil {
            map["OssBucketName"] = self.ossBucketName!
        }
        if self.skipCheckPolicyConfig != nil {
            map["SkipCheckPolicyConfig"] = self.skipCheckPolicyConfig!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AndroidInstanceIdList"] as? [String] {
            self.androidInstanceIdList = value
        }
        if let value = dict["OssBucketName"] as? String {
            self.ossBucketName = value
        }
        if let value = dict["SkipCheckPolicyConfig"] as? String {
            self.skipCheckPolicyConfig = value
        }
    }
}

public class CreateScreenshotResponseBody : Tea.TeaModel {
    public class Tasks : Tea.TeaModel {
        public var androidInstanceId: String?

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
            if self.androidInstanceId != nil {
                map["AndroidInstanceId"] = self.androidInstanceId!
            }
            if self.taskId != nil {
                map["TaskId"] = self.taskId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["AndroidInstanceId"] as? String {
                self.androidInstanceId = value
            }
            if let value = dict["TaskId"] as? String {
                self.taskId = value
            }
        }
    }
    public var requestId: String?

    public var tasks: [CreateScreenshotResponseBody.Tasks]?

    public override init() {
        super.init()
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
        if self.tasks != nil {
            var tmp : [Any] = []
            for k in self.tasks! {
                tmp.append(k.toMap())
            }
            map["Tasks"] = tmp
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Tasks"] as? [Any?] {
            var tmp : [CreateScreenshotResponseBody.Tasks] = []
            for v in value {
                if v != nil {
                    var model = CreateScreenshotResponseBody.Tasks()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.tasks = tmp
        }
    }
}

public class CreateScreenshotResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateScreenshotResponseBody?

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
            var model = CreateScreenshotResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DeleteAndroidInstanceGroupRequest : Tea.TeaModel {
    public var instanceGroupIds: [String]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.instanceGroupIds != nil {
            map["InstanceGroupIds"] = self.instanceGroupIds!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["InstanceGroupIds"] as? [String] {
            self.instanceGroupIds = value
        }
    }
}

public class DeleteAndroidInstanceGroupResponseBody : Tea.TeaModel {
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

public class DeleteAndroidInstanceGroupResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteAndroidInstanceGroupResponseBody?

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
            var model = DeleteAndroidInstanceGroupResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DeleteAppsRequest : Tea.TeaModel {
    public var appIdList: [String]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.appIdList != nil {
            map["AppIdList"] = self.appIdList!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AppIdList"] as? [String] {
            self.appIdList = value
        }
    }
}

public class DeleteAppsResponseBody : Tea.TeaModel {
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

public class DeleteAppsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteAppsResponseBody?

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
            var model = DeleteAppsResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DeleteBackupFileRequest : Tea.TeaModel {
    public var backupFileIdList: [String]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.backupFileIdList != nil {
            map["BackupFileIdList"] = self.backupFileIdList!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["BackupFileIdList"] as? [String] {
            self.backupFileIdList = value
        }
    }
}

public class DeleteBackupFileResponseBody : Tea.TeaModel {
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

public class DeleteBackupFileResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteBackupFileResponseBody?

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
            var model = DeleteBackupFileResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DeleteCloudPhoneNodesRequest : Tea.TeaModel {
    public var nodeIds: [String]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.nodeIds != nil {
            map["NodeIds"] = self.nodeIds!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["NodeIds"] as? [String] {
            self.nodeIds = value
        }
    }
}

public class DeleteCloudPhoneNodesResponseBody : Tea.TeaModel {
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

public class DeleteCloudPhoneNodesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteCloudPhoneNodesResponseBody?

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
            var model = DeleteCloudPhoneNodesResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DeleteImagesRequest : Tea.TeaModel {
    public var imageIds: [String]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.imageIds != nil {
            map["ImageIds"] = self.imageIds!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ImageIds"] as? [String] {
            self.imageIds = value
        }
    }
}

public class DeleteImagesShrinkRequest : Tea.TeaModel {
    public var imageIdsShrink: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.imageIdsShrink != nil {
            map["ImageIds"] = self.imageIdsShrink!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ImageIds"] as? String {
            self.imageIdsShrink = value
        }
    }
}

public class DeleteImagesResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var failDeleteImageIds: [String]?

        public var successDeleteImageIds: [String]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.failDeleteImageIds != nil {
                map["FailDeleteImageIds"] = self.failDeleteImageIds!
            }
            if self.successDeleteImageIds != nil {
                map["SuccessDeleteImageIds"] = self.successDeleteImageIds!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["FailDeleteImageIds"] as? [String] {
                self.failDeleteImageIds = value
            }
            if let value = dict["SuccessDeleteImageIds"] as? [String] {
                self.successDeleteImageIds = value
            }
        }
    }
    public var data: DeleteImagesResponseBody.Data?

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
            var model = DeleteImagesResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class DeleteImagesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteImagesResponseBody?

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
            var model = DeleteImagesResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DeleteKeyPairsRequest : Tea.TeaModel {
    public var keyPairIds: [String]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.keyPairIds != nil {
            map["KeyPairIds"] = self.keyPairIds!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["KeyPairIds"] as? [String] {
            self.keyPairIds = value
        }
    }
}

public class DeleteKeyPairsResponseBody : Tea.TeaModel {
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

public class DeleteKeyPairsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteKeyPairsResponseBody?

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
            var model = DeleteKeyPairsResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DeletePolicyGroupRequest : Tea.TeaModel {
    public var policyGroupIds: [String]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.policyGroupIds != nil {
            map["PolicyGroupIds"] = self.policyGroupIds!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["PolicyGroupIds"] as? [String] {
            self.policyGroupIds = value
        }
    }
}

public class DeletePolicyGroupResponseBody : Tea.TeaModel {
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

public class DeletePolicyGroupResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeletePolicyGroupResponseBody?

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
            var model = DeletePolicyGroupResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DescribeAndroidInstanceGroupsRequest : Tea.TeaModel {
    public var bizRegionId: String?

    public var chargeType: String?

    public var instanceGroupIds: [String]?

    public var instanceGroupName: String?

    public var keyPairId: String?

    public var maxResults: Int32?

    public var nextToken: String?

    public var policyGroupId: String?

    public var saleMode: String?

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
        if self.bizRegionId != nil {
            map["BizRegionId"] = self.bizRegionId!
        }
        if self.chargeType != nil {
            map["ChargeType"] = self.chargeType!
        }
        if self.instanceGroupIds != nil {
            map["InstanceGroupIds"] = self.instanceGroupIds!
        }
        if self.instanceGroupName != nil {
            map["InstanceGroupName"] = self.instanceGroupName!
        }
        if self.keyPairId != nil {
            map["KeyPairId"] = self.keyPairId!
        }
        if self.maxResults != nil {
            map["MaxResults"] = self.maxResults!
        }
        if self.nextToken != nil {
            map["NextToken"] = self.nextToken!
        }
        if self.policyGroupId != nil {
            map["PolicyGroupId"] = self.policyGroupId!
        }
        if self.saleMode != nil {
            map["SaleMode"] = self.saleMode!
        }
        if self.status != nil {
            map["Status"] = self.status!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["BizRegionId"] as? String {
            self.bizRegionId = value
        }
        if let value = dict["ChargeType"] as? String {
            self.chargeType = value
        }
        if let value = dict["InstanceGroupIds"] as? [String] {
            self.instanceGroupIds = value
        }
        if let value = dict["InstanceGroupName"] as? String {
            self.instanceGroupName = value
        }
        if let value = dict["KeyPairId"] as? String {
            self.keyPairId = value
        }
        if let value = dict["MaxResults"] as? Int32 {
            self.maxResults = value
        }
        if let value = dict["NextToken"] as? String {
            self.nextToken = value
        }
        if let value = dict["PolicyGroupId"] as? String {
            self.policyGroupId = value
        }
        if let value = dict["SaleMode"] as? String {
            self.saleMode = value
        }
        if let value = dict["Status"] as? String {
            self.status = value
        }
    }
}

public class DescribeAndroidInstanceGroupsResponseBody : Tea.TeaModel {
    public class InstanceGroupModel : Tea.TeaModel {
        public class Disks : Tea.TeaModel {
            public var diskSize: Int32?

            public var diskType: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.diskSize != nil {
                    map["DiskSize"] = self.diskSize!
                }
                if self.diskType != nil {
                    map["DiskType"] = self.diskType!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["DiskSize"] as? Int32 {
                    self.diskSize = value
                }
                if let value = dict["DiskType"] as? String {
                    self.diskType = value
                }
            }
        }
        public var appInstanceGroupId: String?

        public var architectureType: String?

        public var availableInstanceAmount: Int32?

        public var chargeType: String?

        public var cpu: String?

        public var disks: [DescribeAndroidInstanceGroupsResponseBody.InstanceGroupModel.Disks]?

        public var enableIpv6: Bool?

        public var errorCode: String?

        public var gmtCreate: String?

        public var gmtExpired: String?

        public var gmtModified: String?

        public var imageId: String?

        public var installedAppList: String?

        public var instanceGroupId: String?

        public var instanceGroupName: String?

        public var instanceGroupSpec: String?

        public var instanceGroupSpecDescribe: String?

        public var instanceGroupStatus: String?

        public var ipv6Bandwidth: Int32?

        public var memory: Int32?

        public var numberOfInstances: String?

        public var officeSiteId: String?

        public var policyGroupId: String?

        public var regionId: String?

        public var renderingType: String?

        public var resolutionHeight: Int32?

        public var resolutionWidth: Int32?

        public var saleMode: String?

        public var systemVersion: String?

        public var vSwitchId: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.appInstanceGroupId != nil {
                map["AppInstanceGroupId"] = self.appInstanceGroupId!
            }
            if self.architectureType != nil {
                map["ArchitectureType"] = self.architectureType!
            }
            if self.availableInstanceAmount != nil {
                map["AvailableInstanceAmount"] = self.availableInstanceAmount!
            }
            if self.chargeType != nil {
                map["ChargeType"] = self.chargeType!
            }
            if self.cpu != nil {
                map["Cpu"] = self.cpu!
            }
            if self.disks != nil {
                var tmp : [Any] = []
                for k in self.disks! {
                    tmp.append(k.toMap())
                }
                map["Disks"] = tmp
            }
            if self.enableIpv6 != nil {
                map["EnableIpv6"] = self.enableIpv6!
            }
            if self.errorCode != nil {
                map["ErrorCode"] = self.errorCode!
            }
            if self.gmtCreate != nil {
                map["GmtCreate"] = self.gmtCreate!
            }
            if self.gmtExpired != nil {
                map["GmtExpired"] = self.gmtExpired!
            }
            if self.gmtModified != nil {
                map["GmtModified"] = self.gmtModified!
            }
            if self.imageId != nil {
                map["ImageId"] = self.imageId!
            }
            if self.installedAppList != nil {
                map["InstalledAppList"] = self.installedAppList!
            }
            if self.instanceGroupId != nil {
                map["InstanceGroupId"] = self.instanceGroupId!
            }
            if self.instanceGroupName != nil {
                map["InstanceGroupName"] = self.instanceGroupName!
            }
            if self.instanceGroupSpec != nil {
                map["InstanceGroupSpec"] = self.instanceGroupSpec!
            }
            if self.instanceGroupSpecDescribe != nil {
                map["InstanceGroupSpecDescribe"] = self.instanceGroupSpecDescribe!
            }
            if self.instanceGroupStatus != nil {
                map["InstanceGroupStatus"] = self.instanceGroupStatus!
            }
            if self.ipv6Bandwidth != nil {
                map["Ipv6Bandwidth"] = self.ipv6Bandwidth!
            }
            if self.memory != nil {
                map["Memory"] = self.memory!
            }
            if self.numberOfInstances != nil {
                map["NumberOfInstances"] = self.numberOfInstances!
            }
            if self.officeSiteId != nil {
                map["OfficeSiteId"] = self.officeSiteId!
            }
            if self.policyGroupId != nil {
                map["PolicyGroupId"] = self.policyGroupId!
            }
            if self.regionId != nil {
                map["RegionId"] = self.regionId!
            }
            if self.renderingType != nil {
                map["RenderingType"] = self.renderingType!
            }
            if self.resolutionHeight != nil {
                map["ResolutionHeight"] = self.resolutionHeight!
            }
            if self.resolutionWidth != nil {
                map["ResolutionWidth"] = self.resolutionWidth!
            }
            if self.saleMode != nil {
                map["SaleMode"] = self.saleMode!
            }
            if self.systemVersion != nil {
                map["SystemVersion"] = self.systemVersion!
            }
            if self.vSwitchId != nil {
                map["VSwitchId"] = self.vSwitchId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["AppInstanceGroupId"] as? String {
                self.appInstanceGroupId = value
            }
            if let value = dict["ArchitectureType"] as? String {
                self.architectureType = value
            }
            if let value = dict["AvailableInstanceAmount"] as? Int32 {
                self.availableInstanceAmount = value
            }
            if let value = dict["ChargeType"] as? String {
                self.chargeType = value
            }
            if let value = dict["Cpu"] as? String {
                self.cpu = value
            }
            if let value = dict["Disks"] as? [Any?] {
                var tmp : [DescribeAndroidInstanceGroupsResponseBody.InstanceGroupModel.Disks] = []
                for v in value {
                    if v != nil {
                        var model = DescribeAndroidInstanceGroupsResponseBody.InstanceGroupModel.Disks()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.disks = tmp
            }
            if let value = dict["EnableIpv6"] as? Bool {
                self.enableIpv6 = value
            }
            if let value = dict["ErrorCode"] as? String {
                self.errorCode = value
            }
            if let value = dict["GmtCreate"] as? String {
                self.gmtCreate = value
            }
            if let value = dict["GmtExpired"] as? String {
                self.gmtExpired = value
            }
            if let value = dict["GmtModified"] as? String {
                self.gmtModified = value
            }
            if let value = dict["ImageId"] as? String {
                self.imageId = value
            }
            if let value = dict["InstalledAppList"] as? String {
                self.installedAppList = value
            }
            if let value = dict["InstanceGroupId"] as? String {
                self.instanceGroupId = value
            }
            if let value = dict["InstanceGroupName"] as? String {
                self.instanceGroupName = value
            }
            if let value = dict["InstanceGroupSpec"] as? String {
                self.instanceGroupSpec = value
            }
            if let value = dict["InstanceGroupSpecDescribe"] as? String {
                self.instanceGroupSpecDescribe = value
            }
            if let value = dict["InstanceGroupStatus"] as? String {
                self.instanceGroupStatus = value
            }
            if let value = dict["Ipv6Bandwidth"] as? Int32 {
                self.ipv6Bandwidth = value
            }
            if let value = dict["Memory"] as? Int32 {
                self.memory = value
            }
            if let value = dict["NumberOfInstances"] as? String {
                self.numberOfInstances = value
            }
            if let value = dict["OfficeSiteId"] as? String {
                self.officeSiteId = value
            }
            if let value = dict["PolicyGroupId"] as? String {
                self.policyGroupId = value
            }
            if let value = dict["RegionId"] as? String {
                self.regionId = value
            }
            if let value = dict["RenderingType"] as? String {
                self.renderingType = value
            }
            if let value = dict["ResolutionHeight"] as? Int32 {
                self.resolutionHeight = value
            }
            if let value = dict["ResolutionWidth"] as? Int32 {
                self.resolutionWidth = value
            }
            if let value = dict["SaleMode"] as? String {
                self.saleMode = value
            }
            if let value = dict["SystemVersion"] as? String {
                self.systemVersion = value
            }
            if let value = dict["VSwitchId"] as? String {
                self.vSwitchId = value
            }
        }
    }
    public var instanceGroupModel: [DescribeAndroidInstanceGroupsResponseBody.InstanceGroupModel]?

    public var nextToken: String?

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
        if self.instanceGroupModel != nil {
            var tmp : [Any] = []
            for k in self.instanceGroupModel! {
                tmp.append(k.toMap())
            }
            map["InstanceGroupModel"] = tmp
        }
        if self.nextToken != nil {
            map["NextToken"] = self.nextToken!
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
        if let value = dict["InstanceGroupModel"] as? [Any?] {
            var tmp : [DescribeAndroidInstanceGroupsResponseBody.InstanceGroupModel] = []
            for v in value {
                if v != nil {
                    var model = DescribeAndroidInstanceGroupsResponseBody.InstanceGroupModel()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.instanceGroupModel = tmp
        }
        if let value = dict["NextToken"] as? String {
            self.nextToken = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["TotalCount"] as? Int32 {
            self.totalCount = value
        }
    }
}

public class DescribeAndroidInstanceGroupsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeAndroidInstanceGroupsResponseBody?

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
            var model = DescribeAndroidInstanceGroupsResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DescribeAndroidInstancesRequest : Tea.TeaModel {
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
    public var androidInstanceIds: [String]?

    public var androidInstanceName: String?

    public var appManagePolicyId: String?

    public var authorizedUserId: String?

    public var bizRegionId: String?

    public var chargeType: String?

    public var instanceGroupId: String?

    public var instanceGroupIds: [String]?

    public var instanceGroupName: String?

    public var keyPairId: String?

    public var maxResults: Int32?

    public var nextToken: String?

    public var nodeId: String?

    public var nodeName: String?

    public var officeSiteIds: [String]?

    public var qosRuleIds: [String]?

    public var saleMode: String?

    public var status: String?

    public var tag: [DescribeAndroidInstancesRequest.Tag]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.androidInstanceIds != nil {
            map["AndroidInstanceIds"] = self.androidInstanceIds!
        }
        if self.androidInstanceName != nil {
            map["AndroidInstanceName"] = self.androidInstanceName!
        }
        if self.appManagePolicyId != nil {
            map["AppManagePolicyId"] = self.appManagePolicyId!
        }
        if self.authorizedUserId != nil {
            map["AuthorizedUserId"] = self.authorizedUserId!
        }
        if self.bizRegionId != nil {
            map["BizRegionId"] = self.bizRegionId!
        }
        if self.chargeType != nil {
            map["ChargeType"] = self.chargeType!
        }
        if self.instanceGroupId != nil {
            map["InstanceGroupId"] = self.instanceGroupId!
        }
        if self.instanceGroupIds != nil {
            map["InstanceGroupIds"] = self.instanceGroupIds!
        }
        if self.instanceGroupName != nil {
            map["InstanceGroupName"] = self.instanceGroupName!
        }
        if self.keyPairId != nil {
            map["KeyPairId"] = self.keyPairId!
        }
        if self.maxResults != nil {
            map["MaxResults"] = self.maxResults!
        }
        if self.nextToken != nil {
            map["NextToken"] = self.nextToken!
        }
        if self.nodeId != nil {
            map["NodeId"] = self.nodeId!
        }
        if self.nodeName != nil {
            map["NodeName"] = self.nodeName!
        }
        if self.officeSiteIds != nil {
            map["OfficeSiteIds"] = self.officeSiteIds!
        }
        if self.qosRuleIds != nil {
            map["QosRuleIds"] = self.qosRuleIds!
        }
        if self.saleMode != nil {
            map["SaleMode"] = self.saleMode!
        }
        if self.status != nil {
            map["Status"] = self.status!
        }
        if self.tag != nil {
            var tmp : [Any] = []
            for k in self.tag! {
                tmp.append(k.toMap())
            }
            map["Tag"] = tmp
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AndroidInstanceIds"] as? [String] {
            self.androidInstanceIds = value
        }
        if let value = dict["AndroidInstanceName"] as? String {
            self.androidInstanceName = value
        }
        if let value = dict["AppManagePolicyId"] as? String {
            self.appManagePolicyId = value
        }
        if let value = dict["AuthorizedUserId"] as? String {
            self.authorizedUserId = value
        }
        if let value = dict["BizRegionId"] as? String {
            self.bizRegionId = value
        }
        if let value = dict["ChargeType"] as? String {
            self.chargeType = value
        }
        if let value = dict["InstanceGroupId"] as? String {
            self.instanceGroupId = value
        }
        if let value = dict["InstanceGroupIds"] as? [String] {
            self.instanceGroupIds = value
        }
        if let value = dict["InstanceGroupName"] as? String {
            self.instanceGroupName = value
        }
        if let value = dict["KeyPairId"] as? String {
            self.keyPairId = value
        }
        if let value = dict["MaxResults"] as? Int32 {
            self.maxResults = value
        }
        if let value = dict["NextToken"] as? String {
            self.nextToken = value
        }
        if let value = dict["NodeId"] as? String {
            self.nodeId = value
        }
        if let value = dict["NodeName"] as? String {
            self.nodeName = value
        }
        if let value = dict["OfficeSiteIds"] as? [String] {
            self.officeSiteIds = value
        }
        if let value = dict["QosRuleIds"] as? [String] {
            self.qosRuleIds = value
        }
        if let value = dict["SaleMode"] as? String {
            self.saleMode = value
        }
        if let value = dict["Status"] as? String {
            self.status = value
        }
        if let value = dict["Tag"] as? [Any?] {
            var tmp : [DescribeAndroidInstancesRequest.Tag] = []
            for v in value {
                if v != nil {
                    var model = DescribeAndroidInstancesRequest.Tag()
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

public class DescribeAndroidInstancesResponseBody : Tea.TeaModel {
    public class InstanceModel : Tea.TeaModel {
        public class AppManagePolicy : Tea.TeaModel {
            public var appManagePolicyId: String?

            public var appManagePolicyName: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.appManagePolicyId != nil {
                    map["AppManagePolicyId"] = self.appManagePolicyId!
                }
                if self.appManagePolicyName != nil {
                    map["AppManagePolicyName"] = self.appManagePolicyName!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["AppManagePolicyId"] as? String {
                    self.appManagePolicyId = value
                }
                if let value = dict["AppManagePolicyName"] as? String {
                    self.appManagePolicyName = value
                }
            }
        }
        public class Disks : Tea.TeaModel {
            public var diskSize: Int32?

            public var diskType: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.diskSize != nil {
                    map["DiskSize"] = self.diskSize!
                }
                if self.diskType != nil {
                    map["DiskType"] = self.diskType!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["DiskSize"] as? Int32 {
                    self.diskSize = value
                }
                if let value = dict["DiskType"] as? String {
                    self.diskType = value
                }
            }
        }
        public class DisplayConfig : Tea.TeaModel {
            public var dpi: Int32?

            public var fps: Int32?

            public var lockResolution: String?

            public var resolutionHeight: Int32?

            public var resolutionWidth: Int32?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.dpi != nil {
                    map["Dpi"] = self.dpi!
                }
                if self.fps != nil {
                    map["Fps"] = self.fps!
                }
                if self.lockResolution != nil {
                    map["LockResolution"] = self.lockResolution!
                }
                if self.resolutionHeight != nil {
                    map["ResolutionHeight"] = self.resolutionHeight!
                }
                if self.resolutionWidth != nil {
                    map["ResolutionWidth"] = self.resolutionWidth!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["Dpi"] as? Int32 {
                    self.dpi = value
                }
                if let value = dict["Fps"] as? Int32 {
                    self.fps = value
                }
                if let value = dict["LockResolution"] as? String {
                    self.lockResolution = value
                }
                if let value = dict["ResolutionHeight"] as? Int32 {
                    self.resolutionHeight = value
                }
                if let value = dict["ResolutionWidth"] as? Int32 {
                    self.resolutionWidth = value
                }
            }
        }
        public class PhoneDataInfo : Tea.TeaModel {
            public var phoneDataId: String?

            public var phoneDataVolume: Int32?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.phoneDataId != nil {
                    map["PhoneDataId"] = self.phoneDataId!
                }
                if self.phoneDataVolume != nil {
                    map["PhoneDataVolume"] = self.phoneDataVolume!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["PhoneDataId"] as? String {
                    self.phoneDataId = value
                }
                if let value = dict["PhoneDataVolume"] as? Int32 {
                    self.phoneDataVolume = value
                }
            }
        }
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
        public var androidInstanceGroupId: String?

        public var androidInstanceGroupName: String?

        public var androidInstanceId: String?

        public var androidInstanceName: String?

        public var androidInstanceStatus: String?

        public var appInstanceGroupId: String?

        public var appInstanceId: String?

        public var appManagePolicy: DescribeAndroidInstancesResponseBody.InstanceModel.AppManagePolicy?

        public var authorizedUserId: String?

        public var bindUserId: String?

        public var chargeType: String?

        public var cpu: String?

        public var disks: [DescribeAndroidInstancesResponseBody.InstanceModel.Disks]?

        public var displayConfig: DescribeAndroidInstancesResponseBody.InstanceModel.DisplayConfig?

        public var errorCode: String?

        public var gmtCreate: String?

        public var gmtExpired: String?

        public var gmtModified: String?

        public var imageId: String?

        public var imageVersion: String?

        public var instanceType: String?

        public var keyPairId: String?

        public var memory: Int32?

        public var networkInterfaceIp: String?

        public var networkInterfaceIpv6Address: String?

        public var officeSiteId: String?

        public var persistentAppInstanceId: String?

        public var phoneDataInfo: DescribeAndroidInstancesResponseBody.InstanceModel.PhoneDataInfo?

        public var policyGroupId: String?

        public var publicIpAddress: String?

        public var publicIpv6Address: String?

        public var qosRuleId: String?

        public var rate: Int32?

        public var regionId: String?

        public var renderingType: String?

        public var sessionStatus: String?

        public var streamMode: Int32?

        public var tags: [DescribeAndroidInstancesResponseBody.InstanceModel.Tags]?

        public var vSwitchId: String?

        public var zoneId: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.appManagePolicy?.validate()
            try self.displayConfig?.validate()
            try self.phoneDataInfo?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.androidInstanceGroupId != nil {
                map["AndroidInstanceGroupId"] = self.androidInstanceGroupId!
            }
            if self.androidInstanceGroupName != nil {
                map["AndroidInstanceGroupName"] = self.androidInstanceGroupName!
            }
            if self.androidInstanceId != nil {
                map["AndroidInstanceId"] = self.androidInstanceId!
            }
            if self.androidInstanceName != nil {
                map["AndroidInstanceName"] = self.androidInstanceName!
            }
            if self.androidInstanceStatus != nil {
                map["AndroidInstanceStatus"] = self.androidInstanceStatus!
            }
            if self.appInstanceGroupId != nil {
                map["AppInstanceGroupId"] = self.appInstanceGroupId!
            }
            if self.appInstanceId != nil {
                map["AppInstanceId"] = self.appInstanceId!
            }
            if self.appManagePolicy != nil {
                map["AppManagePolicy"] = self.appManagePolicy?.toMap()
            }
            if self.authorizedUserId != nil {
                map["AuthorizedUserId"] = self.authorizedUserId!
            }
            if self.bindUserId != nil {
                map["BindUserId"] = self.bindUserId!
            }
            if self.chargeType != nil {
                map["ChargeType"] = self.chargeType!
            }
            if self.cpu != nil {
                map["Cpu"] = self.cpu!
            }
            if self.disks != nil {
                var tmp : [Any] = []
                for k in self.disks! {
                    tmp.append(k.toMap())
                }
                map["Disks"] = tmp
            }
            if self.displayConfig != nil {
                map["DisplayConfig"] = self.displayConfig?.toMap()
            }
            if self.errorCode != nil {
                map["ErrorCode"] = self.errorCode!
            }
            if self.gmtCreate != nil {
                map["GmtCreate"] = self.gmtCreate!
            }
            if self.gmtExpired != nil {
                map["GmtExpired"] = self.gmtExpired!
            }
            if self.gmtModified != nil {
                map["GmtModified"] = self.gmtModified!
            }
            if self.imageId != nil {
                map["ImageId"] = self.imageId!
            }
            if self.imageVersion != nil {
                map["ImageVersion"] = self.imageVersion!
            }
            if self.instanceType != nil {
                map["InstanceType"] = self.instanceType!
            }
            if self.keyPairId != nil {
                map["KeyPairId"] = self.keyPairId!
            }
            if self.memory != nil {
                map["Memory"] = self.memory!
            }
            if self.networkInterfaceIp != nil {
                map["NetworkInterfaceIp"] = self.networkInterfaceIp!
            }
            if self.networkInterfaceIpv6Address != nil {
                map["NetworkInterfaceIpv6Address"] = self.networkInterfaceIpv6Address!
            }
            if self.officeSiteId != nil {
                map["OfficeSiteId"] = self.officeSiteId!
            }
            if self.persistentAppInstanceId != nil {
                map["PersistentAppInstanceId"] = self.persistentAppInstanceId!
            }
            if self.phoneDataInfo != nil {
                map["PhoneDataInfo"] = self.phoneDataInfo?.toMap()
            }
            if self.policyGroupId != nil {
                map["PolicyGroupId"] = self.policyGroupId!
            }
            if self.publicIpAddress != nil {
                map["PublicIpAddress"] = self.publicIpAddress!
            }
            if self.publicIpv6Address != nil {
                map["PublicIpv6Address"] = self.publicIpv6Address!
            }
            if self.qosRuleId != nil {
                map["QosRuleId"] = self.qosRuleId!
            }
            if self.rate != nil {
                map["Rate"] = self.rate!
            }
            if self.regionId != nil {
                map["RegionId"] = self.regionId!
            }
            if self.renderingType != nil {
                map["RenderingType"] = self.renderingType!
            }
            if self.sessionStatus != nil {
                map["SessionStatus"] = self.sessionStatus!
            }
            if self.streamMode != nil {
                map["StreamMode"] = self.streamMode!
            }
            if self.tags != nil {
                var tmp : [Any] = []
                for k in self.tags! {
                    tmp.append(k.toMap())
                }
                map["Tags"] = tmp
            }
            if self.vSwitchId != nil {
                map["VSwitchId"] = self.vSwitchId!
            }
            if self.zoneId != nil {
                map["ZoneId"] = self.zoneId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["AndroidInstanceGroupId"] as? String {
                self.androidInstanceGroupId = value
            }
            if let value = dict["AndroidInstanceGroupName"] as? String {
                self.androidInstanceGroupName = value
            }
            if let value = dict["AndroidInstanceId"] as? String {
                self.androidInstanceId = value
            }
            if let value = dict["AndroidInstanceName"] as? String {
                self.androidInstanceName = value
            }
            if let value = dict["AndroidInstanceStatus"] as? String {
                self.androidInstanceStatus = value
            }
            if let value = dict["AppInstanceGroupId"] as? String {
                self.appInstanceGroupId = value
            }
            if let value = dict["AppInstanceId"] as? String {
                self.appInstanceId = value
            }
            if let value = dict["AppManagePolicy"] as? [String: Any?] {
                var model = DescribeAndroidInstancesResponseBody.InstanceModel.AppManagePolicy()
                model.fromMap(value)
                self.appManagePolicy = model
            }
            if let value = dict["AuthorizedUserId"] as? String {
                self.authorizedUserId = value
            }
            if let value = dict["BindUserId"] as? String {
                self.bindUserId = value
            }
            if let value = dict["ChargeType"] as? String {
                self.chargeType = value
            }
            if let value = dict["Cpu"] as? String {
                self.cpu = value
            }
            if let value = dict["Disks"] as? [Any?] {
                var tmp : [DescribeAndroidInstancesResponseBody.InstanceModel.Disks] = []
                for v in value {
                    if v != nil {
                        var model = DescribeAndroidInstancesResponseBody.InstanceModel.Disks()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.disks = tmp
            }
            if let value = dict["DisplayConfig"] as? [String: Any?] {
                var model = DescribeAndroidInstancesResponseBody.InstanceModel.DisplayConfig()
                model.fromMap(value)
                self.displayConfig = model
            }
            if let value = dict["ErrorCode"] as? String {
                self.errorCode = value
            }
            if let value = dict["GmtCreate"] as? String {
                self.gmtCreate = value
            }
            if let value = dict["GmtExpired"] as? String {
                self.gmtExpired = value
            }
            if let value = dict["GmtModified"] as? String {
                self.gmtModified = value
            }
            if let value = dict["ImageId"] as? String {
                self.imageId = value
            }
            if let value = dict["ImageVersion"] as? String {
                self.imageVersion = value
            }
            if let value = dict["InstanceType"] as? String {
                self.instanceType = value
            }
            if let value = dict["KeyPairId"] as? String {
                self.keyPairId = value
            }
            if let value = dict["Memory"] as? Int32 {
                self.memory = value
            }
            if let value = dict["NetworkInterfaceIp"] as? String {
                self.networkInterfaceIp = value
            }
            if let value = dict["NetworkInterfaceIpv6Address"] as? String {
                self.networkInterfaceIpv6Address = value
            }
            if let value = dict["OfficeSiteId"] as? String {
                self.officeSiteId = value
            }
            if let value = dict["PersistentAppInstanceId"] as? String {
                self.persistentAppInstanceId = value
            }
            if let value = dict["PhoneDataInfo"] as? [String: Any?] {
                var model = DescribeAndroidInstancesResponseBody.InstanceModel.PhoneDataInfo()
                model.fromMap(value)
                self.phoneDataInfo = model
            }
            if let value = dict["PolicyGroupId"] as? String {
                self.policyGroupId = value
            }
            if let value = dict["PublicIpAddress"] as? String {
                self.publicIpAddress = value
            }
            if let value = dict["PublicIpv6Address"] as? String {
                self.publicIpv6Address = value
            }
            if let value = dict["QosRuleId"] as? String {
                self.qosRuleId = value
            }
            if let value = dict["Rate"] as? Int32 {
                self.rate = value
            }
            if let value = dict["RegionId"] as? String {
                self.regionId = value
            }
            if let value = dict["RenderingType"] as? String {
                self.renderingType = value
            }
            if let value = dict["SessionStatus"] as? String {
                self.sessionStatus = value
            }
            if let value = dict["StreamMode"] as? Int32 {
                self.streamMode = value
            }
            if let value = dict["Tags"] as? [Any?] {
                var tmp : [DescribeAndroidInstancesResponseBody.InstanceModel.Tags] = []
                for v in value {
                    if v != nil {
                        var model = DescribeAndroidInstancesResponseBody.InstanceModel.Tags()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.tags = tmp
            }
            if let value = dict["VSwitchId"] as? String {
                self.vSwitchId = value
            }
            if let value = dict["ZoneId"] as? String {
                self.zoneId = value
            }
        }
    }
    public var instanceModel: [DescribeAndroidInstancesResponseBody.InstanceModel]?

    public var nextToken: String?

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
        if self.instanceModel != nil {
            var tmp : [Any] = []
            for k in self.instanceModel! {
                tmp.append(k.toMap())
            }
            map["InstanceModel"] = tmp
        }
        if self.nextToken != nil {
            map["NextToken"] = self.nextToken!
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
        if let value = dict["InstanceModel"] as? [Any?] {
            var tmp : [DescribeAndroidInstancesResponseBody.InstanceModel] = []
            for v in value {
                if v != nil {
                    var model = DescribeAndroidInstancesResponseBody.InstanceModel()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.instanceModel = tmp
        }
        if let value = dict["NextToken"] as? String {
            self.nextToken = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["TotalCount"] as? Int32 {
            self.totalCount = value
        }
    }
}

public class DescribeAndroidInstancesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeAndroidInstancesResponseBody?

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
            var model = DescribeAndroidInstancesResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DescribeAppsRequest : Tea.TeaModel {
    public var appIdList: [String]?

    public var appName: String?

    public var appType: String?

    public var bizRegionId: String?

    public var installationStatus: String?

    public var MD5: String?

    public var maxResults: Int32?

    public var nextToken: String?

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
        if self.appIdList != nil {
            map["AppIdList"] = self.appIdList!
        }
        if self.appName != nil {
            map["AppName"] = self.appName!
        }
        if self.appType != nil {
            map["AppType"] = self.appType!
        }
        if self.bizRegionId != nil {
            map["BizRegionId"] = self.bizRegionId!
        }
        if self.installationStatus != nil {
            map["InstallationStatus"] = self.installationStatus!
        }
        if self.MD5 != nil {
            map["MD5"] = self.MD5!
        }
        if self.maxResults != nil {
            map["MaxResults"] = self.maxResults!
        }
        if self.nextToken != nil {
            map["NextToken"] = self.nextToken!
        }
        if self.status != nil {
            map["Status"] = self.status!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AppIdList"] as? [String] {
            self.appIdList = value
        }
        if let value = dict["AppName"] as? String {
            self.appName = value
        }
        if let value = dict["AppType"] as? String {
            self.appType = value
        }
        if let value = dict["BizRegionId"] as? String {
            self.bizRegionId = value
        }
        if let value = dict["InstallationStatus"] as? String {
            self.installationStatus = value
        }
        if let value = dict["MD5"] as? String {
            self.MD5 = value
        }
        if let value = dict["MaxResults"] as? Int32 {
            self.maxResults = value
        }
        if let value = dict["NextToken"] as? String {
            self.nextToken = value
        }
        if let value = dict["Status"] as? String {
            self.status = value
        }
    }
}

public class DescribeAppsResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var androidAppVersion: String?

        public var apkSize: String?

        public var appId: Int32?

        public var appName: String?

        public var appType: String?

        public var bizRegionId: String?

        public var description_: String?

        public var gmtCreate: String?

        public var gmtModified: String?

        public var iconUrl: String?

        public var installationStatus: String?

        public var instanceGroupList: [String]?

        public var MD5: String?

        public var packageName: String?

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
            if self.androidAppVersion != nil {
                map["AndroidAppVersion"] = self.androidAppVersion!
            }
            if self.apkSize != nil {
                map["ApkSize"] = self.apkSize!
            }
            if self.appId != nil {
                map["AppId"] = self.appId!
            }
            if self.appName != nil {
                map["AppName"] = self.appName!
            }
            if self.appType != nil {
                map["AppType"] = self.appType!
            }
            if self.bizRegionId != nil {
                map["BizRegionId"] = self.bizRegionId!
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
            if self.iconUrl != nil {
                map["IconUrl"] = self.iconUrl!
            }
            if self.installationStatus != nil {
                map["InstallationStatus"] = self.installationStatus!
            }
            if self.instanceGroupList != nil {
                map["InstanceGroupList"] = self.instanceGroupList!
            }
            if self.MD5 != nil {
                map["MD5"] = self.MD5!
            }
            if self.packageName != nil {
                map["PackageName"] = self.packageName!
            }
            if self.status != nil {
                map["Status"] = self.status!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["AndroidAppVersion"] as? String {
                self.androidAppVersion = value
            }
            if let value = dict["ApkSize"] as? String {
                self.apkSize = value
            }
            if let value = dict["AppId"] as? Int32 {
                self.appId = value
            }
            if let value = dict["AppName"] as? String {
                self.appName = value
            }
            if let value = dict["AppType"] as? String {
                self.appType = value
            }
            if let value = dict["BizRegionId"] as? String {
                self.bizRegionId = value
            }
            if let value = dict["Description"] as? String {
                self.description_ = value
            }
            if let value = dict["GmtCreate"] as? String {
                self.gmtCreate = value
            }
            if let value = dict["GmtModified"] as? String {
                self.gmtModified = value
            }
            if let value = dict["IconUrl"] as? String {
                self.iconUrl = value
            }
            if let value = dict["InstallationStatus"] as? String {
                self.installationStatus = value
            }
            if let value = dict["InstanceGroupList"] as? [String] {
                self.instanceGroupList = value
            }
            if let value = dict["MD5"] as? String {
                self.MD5 = value
            }
            if let value = dict["PackageName"] as? String {
                self.packageName = value
            }
            if let value = dict["Status"] as? String {
                self.status = value
            }
        }
    }
    public var data: [DescribeAppsResponseBody.Data]?

    public var nextToken: String?

    public var requestId: String?

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
        if self.data != nil {
            var tmp : [Any] = []
            for k in self.data! {
                tmp.append(k.toMap())
            }
            map["Data"] = tmp
        }
        if self.nextToken != nil {
            map["NextToken"] = self.nextToken!
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
        if let value = dict["Data"] as? [Any?] {
            var tmp : [DescribeAppsResponseBody.Data] = []
            for v in value {
                if v != nil {
                    var model = DescribeAppsResponseBody.Data()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.data = tmp
        }
        if let value = dict["NextToken"] as? String {
            self.nextToken = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["TotalCount"] as? String {
            self.totalCount = value
        }
    }
}

public class DescribeAppsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeAppsResponseBody?

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
            var model = DescribeAppsResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DescribeBackupFilesRequest : Tea.TeaModel {
    public var androidInstanceId: String?

    public var androidInstanceName: String?

    public var backupAll: Bool?

    public var backupFileId: String?

    public var backupFileName: String?

    public var description_: String?

    public var endTime: String?

    public var endUserId: String?

    public var instanceGroupId: String?

    public var maxResults: Int64?

    public var nextToken: String?

    public var startTime: String?

    public var statusList: [String]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.androidInstanceId != nil {
            map["AndroidInstanceId"] = self.androidInstanceId!
        }
        if self.androidInstanceName != nil {
            map["AndroidInstanceName"] = self.androidInstanceName!
        }
        if self.backupAll != nil {
            map["BackupAll"] = self.backupAll!
        }
        if self.backupFileId != nil {
            map["BackupFileId"] = self.backupFileId!
        }
        if self.backupFileName != nil {
            map["BackupFileName"] = self.backupFileName!
        }
        if self.description_ != nil {
            map["Description"] = self.description_!
        }
        if self.endTime != nil {
            map["EndTime"] = self.endTime!
        }
        if self.endUserId != nil {
            map["EndUserId"] = self.endUserId!
        }
        if self.instanceGroupId != nil {
            map["InstanceGroupId"] = self.instanceGroupId!
        }
        if self.maxResults != nil {
            map["MaxResults"] = self.maxResults!
        }
        if self.nextToken != nil {
            map["NextToken"] = self.nextToken!
        }
        if self.startTime != nil {
            map["StartTime"] = self.startTime!
        }
        if self.statusList != nil {
            map["StatusList"] = self.statusList!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AndroidInstanceId"] as? String {
            self.androidInstanceId = value
        }
        if let value = dict["AndroidInstanceName"] as? String {
            self.androidInstanceName = value
        }
        if let value = dict["BackupAll"] as? Bool {
            self.backupAll = value
        }
        if let value = dict["BackupFileId"] as? String {
            self.backupFileId = value
        }
        if let value = dict["BackupFileName"] as? String {
            self.backupFileName = value
        }
        if let value = dict["Description"] as? String {
            self.description_ = value
        }
        if let value = dict["EndTime"] as? String {
            self.endTime = value
        }
        if let value = dict["EndUserId"] as? String {
            self.endUserId = value
        }
        if let value = dict["InstanceGroupId"] as? String {
            self.instanceGroupId = value
        }
        if let value = dict["MaxResults"] as? Int64 {
            self.maxResults = value
        }
        if let value = dict["NextToken"] as? String {
            self.nextToken = value
        }
        if let value = dict["StartTime"] as? String {
            self.startTime = value
        }
        if let value = dict["StatusList"] as? [String] {
            self.statusList = value
        }
    }
}

public class DescribeBackupFilesResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var androidInstanceId: String?

        public var androidInstanceName: String?

        public var backupAll: Bool?

        public var backupFileId: String?

        public var backupFileName: String?

        public var backupFilePath: String?

        public var description_: String?

        public var endUserId: String?

        public var fileSize: Int64?

        public var gmtCreated: String?

        public var gmtModified: String?

        public var instanceGroupId: String?

        public var regionId: String?

        public var sourceAppInfoList: [String]?

        public var sourceFilePathList: [String]?

        public var status: String?

        public var taskId: String?

        public var uploadEndpoint: String?

        public var uploadType: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.androidInstanceId != nil {
                map["AndroidInstanceId"] = self.androidInstanceId!
            }
            if self.androidInstanceName != nil {
                map["AndroidInstanceName"] = self.androidInstanceName!
            }
            if self.backupAll != nil {
                map["BackupAll"] = self.backupAll!
            }
            if self.backupFileId != nil {
                map["BackupFileId"] = self.backupFileId!
            }
            if self.backupFileName != nil {
                map["BackupFileName"] = self.backupFileName!
            }
            if self.backupFilePath != nil {
                map["BackupFilePath"] = self.backupFilePath!
            }
            if self.description_ != nil {
                map["Description"] = self.description_!
            }
            if self.endUserId != nil {
                map["EndUserId"] = self.endUserId!
            }
            if self.fileSize != nil {
                map["FileSize"] = self.fileSize!
            }
            if self.gmtCreated != nil {
                map["GmtCreated"] = self.gmtCreated!
            }
            if self.gmtModified != nil {
                map["GmtModified"] = self.gmtModified!
            }
            if self.instanceGroupId != nil {
                map["InstanceGroupId"] = self.instanceGroupId!
            }
            if self.regionId != nil {
                map["RegionId"] = self.regionId!
            }
            if self.sourceAppInfoList != nil {
                map["SourceAppInfoList"] = self.sourceAppInfoList!
            }
            if self.sourceFilePathList != nil {
                map["SourceFilePathList"] = self.sourceFilePathList!
            }
            if self.status != nil {
                map["Status"] = self.status!
            }
            if self.taskId != nil {
                map["TaskId"] = self.taskId!
            }
            if self.uploadEndpoint != nil {
                map["UploadEndpoint"] = self.uploadEndpoint!
            }
            if self.uploadType != nil {
                map["UploadType"] = self.uploadType!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["AndroidInstanceId"] as? String {
                self.androidInstanceId = value
            }
            if let value = dict["AndroidInstanceName"] as? String {
                self.androidInstanceName = value
            }
            if let value = dict["BackupAll"] as? Bool {
                self.backupAll = value
            }
            if let value = dict["BackupFileId"] as? String {
                self.backupFileId = value
            }
            if let value = dict["BackupFileName"] as? String {
                self.backupFileName = value
            }
            if let value = dict["BackupFilePath"] as? String {
                self.backupFilePath = value
            }
            if let value = dict["Description"] as? String {
                self.description_ = value
            }
            if let value = dict["EndUserId"] as? String {
                self.endUserId = value
            }
            if let value = dict["FileSize"] as? Int64 {
                self.fileSize = value
            }
            if let value = dict["GmtCreated"] as? String {
                self.gmtCreated = value
            }
            if let value = dict["GmtModified"] as? String {
                self.gmtModified = value
            }
            if let value = dict["InstanceGroupId"] as? String {
                self.instanceGroupId = value
            }
            if let value = dict["RegionId"] as? String {
                self.regionId = value
            }
            if let value = dict["SourceAppInfoList"] as? [String] {
                self.sourceAppInfoList = value
            }
            if let value = dict["SourceFilePathList"] as? [String] {
                self.sourceFilePathList = value
            }
            if let value = dict["Status"] as? String {
                self.status = value
            }
            if let value = dict["TaskId"] as? String {
                self.taskId = value
            }
            if let value = dict["UploadEndpoint"] as? String {
                self.uploadEndpoint = value
            }
            if let value = dict["UploadType"] as? String {
                self.uploadType = value
            }
        }
    }
    public var data: [DescribeBackupFilesResponseBody.Data]?

    public var maxResults: String?

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
        if self.data != nil {
            var tmp : [Any] = []
            for k in self.data! {
                tmp.append(k.toMap())
            }
            map["Data"] = tmp
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
        if self.totalCount != nil {
            map["TotalCount"] = self.totalCount!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Data"] as? [Any?] {
            var tmp : [DescribeBackupFilesResponseBody.Data] = []
            for v in value {
                if v != nil {
                    var model = DescribeBackupFilesResponseBody.Data()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.data = tmp
        }
        if let value = dict["MaxResults"] as? String {
            self.maxResults = value
        }
        if let value = dict["NextToken"] as? String {
            self.nextToken = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["TotalCount"] as? Int64 {
            self.totalCount = value
        }
    }
}

public class DescribeBackupFilesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeBackupFilesResponseBody?

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
            var model = DescribeBackupFilesResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DescribeCloudPhoneNodesRequest : Tea.TeaModel {
    public var bizRegionId: String?

    public var chargeType: String?

    public var maxResults: String?

    public var nextToken: String?

    public var nodeIds: [String]?

    public var nodeName: String?

    public var serverType: String?

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
        if self.bizRegionId != nil {
            map["BizRegionId"] = self.bizRegionId!
        }
        if self.chargeType != nil {
            map["ChargeType"] = self.chargeType!
        }
        if self.maxResults != nil {
            map["MaxResults"] = self.maxResults!
        }
        if self.nextToken != nil {
            map["NextToken"] = self.nextToken!
        }
        if self.nodeIds != nil {
            map["NodeIds"] = self.nodeIds!
        }
        if self.nodeName != nil {
            map["NodeName"] = self.nodeName!
        }
        if self.serverType != nil {
            map["ServerType"] = self.serverType!
        }
        if self.status != nil {
            map["Status"] = self.status!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["BizRegionId"] as? String {
            self.bizRegionId = value
        }
        if let value = dict["ChargeType"] as? String {
            self.chargeType = value
        }
        if let value = dict["MaxResults"] as? String {
            self.maxResults = value
        }
        if let value = dict["NextToken"] as? String {
            self.nextToken = value
        }
        if let value = dict["NodeIds"] as? [String] {
            self.nodeIds = value
        }
        if let value = dict["NodeName"] as? String {
            self.nodeName = value
        }
        if let value = dict["ServerType"] as? String {
            self.serverType = value
        }
        if let value = dict["Status"] as? String {
            self.status = value
        }
    }
}

public class DescribeCloudPhoneNodesResponseBody : Tea.TeaModel {
    public class NodeModel : Tea.TeaModel {
        public class NetworkInfos : Tea.TeaModel {
            public var networkId: String?

            public var vSwitchId: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.networkId != nil {
                    map["NetworkId"] = self.networkId!
                }
                if self.vSwitchId != nil {
                    map["VSwitchId"] = self.vSwitchId!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["NetworkId"] as? String {
                    self.networkId = value
                }
                if let value = dict["VSwitchId"] as? String {
                    self.vSwitchId = value
                }
            }
        }
        public class PhoneDataInfo : Tea.TeaModel {
            public var phoneDataId: String?

            public var phoneDataVolume: Int32?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.phoneDataId != nil {
                    map["PhoneDataId"] = self.phoneDataId!
                }
                if self.phoneDataVolume != nil {
                    map["PhoneDataVolume"] = self.phoneDataVolume!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["PhoneDataId"] as? String {
                    self.phoneDataId = value
                }
                if let value = dict["PhoneDataVolume"] as? Int32 {
                    self.phoneDataVolume = value
                }
            }
        }
        public var chargeType: String?

        public var cpu: String?

        public var gmtCreate: String?

        public var gmtExpired: String?

        public var gmtModified: String?

        public var instanceType: String?

        public var memory: Int32?

        public var networkId: String?

        public var networkInfos: [DescribeCloudPhoneNodesResponseBody.NodeModel.NetworkInfos]?

        public var nodeId: String?

        public var nodeName: String?

        public var phoneCount: Int32?

        public var phoneDataInfo: DescribeCloudPhoneNodesResponseBody.NodeModel.PhoneDataInfo?

        public var regionId: String?

        public var resolutionHeight: Int32?

        public var resolutionWidth: Int32?

        public var serverType: String?

        public var shareDataVolume: Int32?

        public var status: String?

        public var vSwitchId: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.phoneDataInfo?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.chargeType != nil {
                map["ChargeType"] = self.chargeType!
            }
            if self.cpu != nil {
                map["Cpu"] = self.cpu!
            }
            if self.gmtCreate != nil {
                map["GmtCreate"] = self.gmtCreate!
            }
            if self.gmtExpired != nil {
                map["GmtExpired"] = self.gmtExpired!
            }
            if self.gmtModified != nil {
                map["GmtModified"] = self.gmtModified!
            }
            if self.instanceType != nil {
                map["InstanceType"] = self.instanceType!
            }
            if self.memory != nil {
                map["Memory"] = self.memory!
            }
            if self.networkId != nil {
                map["NetworkId"] = self.networkId!
            }
            if self.networkInfos != nil {
                var tmp : [Any] = []
                for k in self.networkInfos! {
                    tmp.append(k.toMap())
                }
                map["NetworkInfos"] = tmp
            }
            if self.nodeId != nil {
                map["NodeId"] = self.nodeId!
            }
            if self.nodeName != nil {
                map["NodeName"] = self.nodeName!
            }
            if self.phoneCount != nil {
                map["PhoneCount"] = self.phoneCount!
            }
            if self.phoneDataInfo != nil {
                map["PhoneDataInfo"] = self.phoneDataInfo?.toMap()
            }
            if self.regionId != nil {
                map["RegionId"] = self.regionId!
            }
            if self.resolutionHeight != nil {
                map["ResolutionHeight"] = self.resolutionHeight!
            }
            if self.resolutionWidth != nil {
                map["ResolutionWidth"] = self.resolutionWidth!
            }
            if self.serverType != nil {
                map["ServerType"] = self.serverType!
            }
            if self.shareDataVolume != nil {
                map["ShareDataVolume"] = self.shareDataVolume!
            }
            if self.status != nil {
                map["Status"] = self.status!
            }
            if self.vSwitchId != nil {
                map["VSwitchId"] = self.vSwitchId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["ChargeType"] as? String {
                self.chargeType = value
            }
            if let value = dict["Cpu"] as? String {
                self.cpu = value
            }
            if let value = dict["GmtCreate"] as? String {
                self.gmtCreate = value
            }
            if let value = dict["GmtExpired"] as? String {
                self.gmtExpired = value
            }
            if let value = dict["GmtModified"] as? String {
                self.gmtModified = value
            }
            if let value = dict["InstanceType"] as? String {
                self.instanceType = value
            }
            if let value = dict["Memory"] as? Int32 {
                self.memory = value
            }
            if let value = dict["NetworkId"] as? String {
                self.networkId = value
            }
            if let value = dict["NetworkInfos"] as? [Any?] {
                var tmp : [DescribeCloudPhoneNodesResponseBody.NodeModel.NetworkInfos] = []
                for v in value {
                    if v != nil {
                        var model = DescribeCloudPhoneNodesResponseBody.NodeModel.NetworkInfos()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.networkInfos = tmp
            }
            if let value = dict["NodeId"] as? String {
                self.nodeId = value
            }
            if let value = dict["NodeName"] as? String {
                self.nodeName = value
            }
            if let value = dict["PhoneCount"] as? Int32 {
                self.phoneCount = value
            }
            if let value = dict["PhoneDataInfo"] as? [String: Any?] {
                var model = DescribeCloudPhoneNodesResponseBody.NodeModel.PhoneDataInfo()
                model.fromMap(value)
                self.phoneDataInfo = model
            }
            if let value = dict["RegionId"] as? String {
                self.regionId = value
            }
            if let value = dict["ResolutionHeight"] as? Int32 {
                self.resolutionHeight = value
            }
            if let value = dict["ResolutionWidth"] as? Int32 {
                self.resolutionWidth = value
            }
            if let value = dict["ServerType"] as? String {
                self.serverType = value
            }
            if let value = dict["ShareDataVolume"] as? Int32 {
                self.shareDataVolume = value
            }
            if let value = dict["Status"] as? String {
                self.status = value
            }
            if let value = dict["VSwitchId"] as? String {
                self.vSwitchId = value
            }
        }
    }
    public var maxResults: Int32?

    public var nextToken: String?

    public var nodeModel: [DescribeCloudPhoneNodesResponseBody.NodeModel]?

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
            map["MaxResults"] = self.maxResults!
        }
        if self.nextToken != nil {
            map["NextToken"] = self.nextToken!
        }
        if self.nodeModel != nil {
            var tmp : [Any] = []
            for k in self.nodeModel! {
                tmp.append(k.toMap())
            }
            map["NodeModel"] = tmp
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
        if let value = dict["MaxResults"] as? Int32 {
            self.maxResults = value
        }
        if let value = dict["NextToken"] as? String {
            self.nextToken = value
        }
        if let value = dict["NodeModel"] as? [Any?] {
            var tmp : [DescribeCloudPhoneNodesResponseBody.NodeModel] = []
            for v in value {
                if v != nil {
                    var model = DescribeCloudPhoneNodesResponseBody.NodeModel()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.nodeModel = tmp
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["TotalCount"] as? Int32 {
            self.totalCount = value
        }
    }
}

public class DescribeCloudPhoneNodesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeCloudPhoneNodesResponseBody?

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
            var model = DescribeCloudPhoneNodesResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DescribeDisplayConfigRequest : Tea.TeaModel {
    public var androidInstanceIds: [String]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.androidInstanceIds != nil {
            map["AndroidInstanceIds"] = self.androidInstanceIds!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AndroidInstanceIds"] as? [String] {
            self.androidInstanceIds = value
        }
    }
}

public class DescribeDisplayConfigResponseBody : Tea.TeaModel {
    public class DisplayConfigModel : Tea.TeaModel {
        public var androidInstanceId: String?

        public var dpi: Int32?

        public var fps: Int32?

        public var lockResolution: String?

        public var resolutionHeight: Int32?

        public var resolutionWidth: Int32?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.androidInstanceId != nil {
                map["AndroidInstanceId"] = self.androidInstanceId!
            }
            if self.dpi != nil {
                map["Dpi"] = self.dpi!
            }
            if self.fps != nil {
                map["Fps"] = self.fps!
            }
            if self.lockResolution != nil {
                map["LockResolution"] = self.lockResolution!
            }
            if self.resolutionHeight != nil {
                map["ResolutionHeight"] = self.resolutionHeight!
            }
            if self.resolutionWidth != nil {
                map["ResolutionWidth"] = self.resolutionWidth!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["AndroidInstanceId"] as? String {
                self.androidInstanceId = value
            }
            if let value = dict["Dpi"] as? Int32 {
                self.dpi = value
            }
            if let value = dict["Fps"] as? Int32 {
                self.fps = value
            }
            if let value = dict["LockResolution"] as? String {
                self.lockResolution = value
            }
            if let value = dict["ResolutionHeight"] as? Int32 {
                self.resolutionHeight = value
            }
            if let value = dict["ResolutionWidth"] as? Int32 {
                self.resolutionWidth = value
            }
        }
    }
    public var displayConfigModel: [DescribeDisplayConfigResponseBody.DisplayConfigModel]?

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
        if self.displayConfigModel != nil {
            var tmp : [Any] = []
            for k in self.displayConfigModel! {
                tmp.append(k.toMap())
            }
            map["DisplayConfigModel"] = tmp
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["DisplayConfigModel"] as? [Any?] {
            var tmp : [DescribeDisplayConfigResponseBody.DisplayConfigModel] = []
            for v in value {
                if v != nil {
                    var model = DescribeDisplayConfigResponseBody.DisplayConfigModel()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.displayConfigModel = tmp
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class DescribeDisplayConfigResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeDisplayConfigResponseBody?

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
            var model = DescribeDisplayConfigResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DescribeImageListRequest : Tea.TeaModel {
    public var imageId: String?

    public var imageName: String?

    public var imagePackageType: String?

    public var imageType: String?

    public var maxResults: Int32?

    public var nextToken: String?

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
        if self.imageId != nil {
            map["ImageId"] = self.imageId!
        }
        if self.imageName != nil {
            map["ImageName"] = self.imageName!
        }
        if self.imagePackageType != nil {
            map["ImagePackageType"] = self.imagePackageType!
        }
        if self.imageType != nil {
            map["ImageType"] = self.imageType!
        }
        if self.maxResults != nil {
            map["MaxResults"] = self.maxResults!
        }
        if self.nextToken != nil {
            map["NextToken"] = self.nextToken!
        }
        if self.status != nil {
            map["Status"] = self.status!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ImageId"] as? String {
            self.imageId = value
        }
        if let value = dict["ImageName"] as? String {
            self.imageName = value
        }
        if let value = dict["ImagePackageType"] as? String {
            self.imagePackageType = value
        }
        if let value = dict["ImageType"] as? String {
            self.imageType = value
        }
        if let value = dict["MaxResults"] as? Int32 {
            self.maxResults = value
        }
        if let value = dict["NextToken"] as? String {
            self.nextToken = value
        }
        if let value = dict["Status"] as? String {
            self.status = value
        }
    }
}

public class DescribeImageListResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var aliUid: Int64?

        public var description_: String?

        public var gmtCreate: String?

        public var gmtModified: String?

        public var imageId: String?

        public var imageName: String?

        public var imageRegionDistributeMap: [String: DataImageRegionDistributeMapValue]?

        public var imageRegionList: [String]?

        public var imageType: String?

        public var imageVersion: String?

        public var language: String?

        public var releaseTime: String?

        public var renderingType: String?

        public var status: String?

        public var systemType: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.aliUid != nil {
                map["AliUid"] = self.aliUid!
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
            if self.imageId != nil {
                map["ImageId"] = self.imageId!
            }
            if self.imageName != nil {
                map["ImageName"] = self.imageName!
            }
            if self.imageRegionDistributeMap != nil {
                var tmp : [String: Any] = [:]
                for (k, v) in self.imageRegionDistributeMap! {
                    tmp[k] = v.toMap()
                }
                map["ImageRegionDistributeMap"] = tmp
            }
            if self.imageRegionList != nil {
                map["ImageRegionList"] = self.imageRegionList!
            }
            if self.imageType != nil {
                map["ImageType"] = self.imageType!
            }
            if self.imageVersion != nil {
                map["ImageVersion"] = self.imageVersion!
            }
            if self.language != nil {
                map["Language"] = self.language!
            }
            if self.releaseTime != nil {
                map["ReleaseTime"] = self.releaseTime!
            }
            if self.renderingType != nil {
                map["RenderingType"] = self.renderingType!
            }
            if self.status != nil {
                map["Status"] = self.status!
            }
            if self.systemType != nil {
                map["SystemType"] = self.systemType!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["AliUid"] as? Int64 {
                self.aliUid = value
            }
            if let value = dict["Description"] as? String {
                self.description_ = value
            }
            if let value = dict["GmtCreate"] as? String {
                self.gmtCreate = value
            }
            if let value = dict["GmtModified"] as? String {
                self.gmtModified = value
            }
            if let value = dict["ImageId"] as? String {
                self.imageId = value
            }
            if let value = dict["ImageName"] as? String {
                self.imageName = value
            }
            if let value = dict["ImageRegionDistributeMap"] as? [String: Any?] {
                var tmp : [String: DataImageRegionDistributeMapValue] = [:]
                for (k, v) in value {
                    if v != nil {
                        var model = DataImageRegionDistributeMapValue()
                        model.fromMap(v as? [String: Any?])
                        tmp[k] = model
                    }
                }
                self.imageRegionDistributeMap = tmp
            }
            if let value = dict["ImageRegionList"] as? [String] {
                self.imageRegionList = value
            }
            if let value = dict["ImageType"] as? String {
                self.imageType = value
            }
            if let value = dict["ImageVersion"] as? String {
                self.imageVersion = value
            }
            if let value = dict["Language"] as? String {
                self.language = value
            }
            if let value = dict["ReleaseTime"] as? String {
                self.releaseTime = value
            }
            if let value = dict["RenderingType"] as? String {
                self.renderingType = value
            }
            if let value = dict["Status"] as? String {
                self.status = value
            }
            if let value = dict["SystemType"] as? String {
                self.systemType = value
            }
        }
    }
    public var data: [DescribeImageListResponseBody.Data]?

    public var nextToken: String?

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
        if self.data != nil {
            var tmp : [Any] = []
            for k in self.data! {
                tmp.append(k.toMap())
            }
            map["Data"] = tmp
        }
        if self.nextToken != nil {
            map["NextToken"] = self.nextToken!
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
        if let value = dict["Data"] as? [Any?] {
            var tmp : [DescribeImageListResponseBody.Data] = []
            for v in value {
                if v != nil {
                    var model = DescribeImageListResponseBody.Data()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.data = tmp
        }
        if let value = dict["NextToken"] as? String {
            self.nextToken = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["TotalCount"] as? Int32 {
            self.totalCount = value
        }
    }
}

public class DescribeImageListResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeImageListResponseBody?

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
            var model = DescribeImageListResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DescribeInvocationsRequest : Tea.TeaModel {
    public var instanceIds: [String]?

    public var invocationId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.instanceIds != nil {
            map["InstanceIds"] = self.instanceIds!
        }
        if self.invocationId != nil {
            map["InvocationId"] = self.invocationId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["InstanceIds"] as? [String] {
            self.instanceIds = value
        }
        if let value = dict["InvocationId"] as? String {
            self.invocationId = value
        }
    }
}

public class DescribeInvocationsResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var finishTime: String?

        public var instanceId: String?

        public var invocationId: String?

        public var invocationStatus: String?

        public var output: String?

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
            if self.finishTime != nil {
                map["FinishTime"] = self.finishTime!
            }
            if self.instanceId != nil {
                map["InstanceId"] = self.instanceId!
            }
            if self.invocationId != nil {
                map["InvocationId"] = self.invocationId!
            }
            if self.invocationStatus != nil {
                map["InvocationStatus"] = self.invocationStatus!
            }
            if self.output != nil {
                map["Output"] = self.output!
            }
            if self.startTime != nil {
                map["StartTime"] = self.startTime!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["FinishTime"] as? String {
                self.finishTime = value
            }
            if let value = dict["InstanceId"] as? String {
                self.instanceId = value
            }
            if let value = dict["InvocationId"] as? String {
                self.invocationId = value
            }
            if let value = dict["InvocationStatus"] as? String {
                self.invocationStatus = value
            }
            if let value = dict["Output"] as? String {
                self.output = value
            }
            if let value = dict["StartTime"] as? String {
                self.startTime = value
            }
        }
    }
    public var data: [DescribeInvocationsResponseBody.Data]?

    public var requestId: String?

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
        if self.totalCount != nil {
            map["TotalCount"] = self.totalCount!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Data"] as? [Any?] {
            var tmp : [DescribeInvocationsResponseBody.Data] = []
            for v in value {
                if v != nil {
                    var model = DescribeInvocationsResponseBody.Data()
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
        if let value = dict["TotalCount"] as? String {
            self.totalCount = value
        }
    }
}

public class DescribeInvocationsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeInvocationsResponseBody?

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
            var model = DescribeInvocationsResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DescribeKeyPairsRequest : Tea.TeaModel {
    public var keyPairIds: [String]?

    public var keyPairName: String?

    public var maxResults: Int32?

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
        if self.keyPairIds != nil {
            map["KeyPairIds"] = self.keyPairIds!
        }
        if self.keyPairName != nil {
            map["KeyPairName"] = self.keyPairName!
        }
        if self.maxResults != nil {
            map["MaxResults"] = self.maxResults!
        }
        if self.nextToken != nil {
            map["NextToken"] = self.nextToken!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["KeyPairIds"] as? [String] {
            self.keyPairIds = value
        }
        if let value = dict["KeyPairName"] as? String {
            self.keyPairName = value
        }
        if let value = dict["MaxResults"] as? Int32 {
            self.maxResults = value
        }
        if let value = dict["NextToken"] as? String {
            self.nextToken = value
        }
    }
}

public class DescribeKeyPairsResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var gmtCreated: String?

        public var keyPairId: String?

        public var keyPairName: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.gmtCreated != nil {
                map["GmtCreated"] = self.gmtCreated!
            }
            if self.keyPairId != nil {
                map["KeyPairId"] = self.keyPairId!
            }
            if self.keyPairName != nil {
                map["KeyPairName"] = self.keyPairName!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["GmtCreated"] as? String {
                self.gmtCreated = value
            }
            if let value = dict["KeyPairId"] as? String {
                self.keyPairId = value
            }
            if let value = dict["KeyPairName"] as? String {
                self.keyPairName = value
            }
        }
    }
    public var data: [DescribeKeyPairsResponseBody.Data]?

    public var nextToken: String?

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
        if self.data != nil {
            var tmp : [Any] = []
            for k in self.data! {
                tmp.append(k.toMap())
            }
            map["Data"] = tmp
        }
        if self.nextToken != nil {
            map["NextToken"] = self.nextToken!
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
        if let value = dict["Data"] as? [Any?] {
            var tmp : [DescribeKeyPairsResponseBody.Data] = []
            for v in value {
                if v != nil {
                    var model = DescribeKeyPairsResponseBody.Data()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.data = tmp
        }
        if let value = dict["NextToken"] as? String {
            self.nextToken = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["TotalCount"] as? Int32 {
            self.totalCount = value
        }
    }
}

public class DescribeKeyPairsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeKeyPairsResponseBody?

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
            var model = DescribeKeyPairsResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DescribeRegionsRequest : Tea.TeaModel {
    public var acceptLanguage: String?

    public var saleMode: String?

    public override init() {
        super.init()
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
            map["AcceptLanguage"] = self.acceptLanguage!
        }
        if self.saleMode != nil {
            map["SaleMode"] = self.saleMode!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AcceptLanguage"] as? String {
            self.acceptLanguage = value
        }
        if let value = dict["SaleMode"] as? String {
            self.saleMode = value
        }
    }
}

public class DescribeRegionsResponseBody : Tea.TeaModel {
    public class RegionModels : Tea.TeaModel {
        public var regionId: String?

        public var regionName: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.regionId != nil {
                map["RegionId"] = self.regionId!
            }
            if self.regionName != nil {
                map["RegionName"] = self.regionName!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["RegionId"] as? String {
                self.regionId = value
            }
            if let value = dict["RegionName"] as? String {
                self.regionName = value
            }
        }
    }
    public var regionModels: [DescribeRegionsResponseBody.RegionModels]?

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
        if self.regionModels != nil {
            var tmp : [Any] = []
            for k in self.regionModels! {
                tmp.append(k.toMap())
            }
            map["RegionModels"] = tmp
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RegionModels"] as? [Any?] {
            var tmp : [DescribeRegionsResponseBody.RegionModels] = []
            for v in value {
                if v != nil {
                    var model = DescribeRegionsResponseBody.RegionModels()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.regionModels = tmp
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class DescribeRegionsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeRegionsResponseBody?

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
            var model = DescribeRegionsResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DescribeSpecRequest : Tea.TeaModel {
    public var bizRegionId: String?

    public var matrixSpec: String?

    public var maxResults: Int32?

    public var nextToken: String?

    public var saleMode: String?

    public var specIds: [String]?

    public var specStatus: String?

    public var specType: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.bizRegionId != nil {
            map["BizRegionId"] = self.bizRegionId!
        }
        if self.matrixSpec != nil {
            map["MatrixSpec"] = self.matrixSpec!
        }
        if self.maxResults != nil {
            map["MaxResults"] = self.maxResults!
        }
        if self.nextToken != nil {
            map["NextToken"] = self.nextToken!
        }
        if self.saleMode != nil {
            map["SaleMode"] = self.saleMode!
        }
        if self.specIds != nil {
            map["SpecIds"] = self.specIds!
        }
        if self.specStatus != nil {
            map["SpecStatus"] = self.specStatus!
        }
        if self.specType != nil {
            map["SpecType"] = self.specType!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["BizRegionId"] as? String {
            self.bizRegionId = value
        }
        if let value = dict["MatrixSpec"] as? String {
            self.matrixSpec = value
        }
        if let value = dict["MaxResults"] as? Int32 {
            self.maxResults = value
        }
        if let value = dict["NextToken"] as? String {
            self.nextToken = value
        }
        if let value = dict["SaleMode"] as? String {
            self.saleMode = value
        }
        if let value = dict["SpecIds"] as? [String] {
            self.specIds = value
        }
        if let value = dict["SpecStatus"] as? String {
            self.specStatus = value
        }
        if let value = dict["SpecType"] as? String {
            self.specType = value
        }
    }
}

public class DescribeSpecResponseBody : Tea.TeaModel {
    public class SpecInfoModel : Tea.TeaModel {
        public var core: Int32?

        public var maxPhoneCount: String?

        public var memory: Int32?

        public var minPhoneCount: String?

        public var phoneCount: String?

        public var resolution: String?

        public var specId: String?

        public var specStatus: String?

        public var specType: String?

        public var systemDiskSize: Int32?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.core != nil {
                map["Core"] = self.core!
            }
            if self.maxPhoneCount != nil {
                map["MaxPhoneCount"] = self.maxPhoneCount!
            }
            if self.memory != nil {
                map["Memory"] = self.memory!
            }
            if self.minPhoneCount != nil {
                map["MinPhoneCount"] = self.minPhoneCount!
            }
            if self.phoneCount != nil {
                map["PhoneCount"] = self.phoneCount!
            }
            if self.resolution != nil {
                map["Resolution"] = self.resolution!
            }
            if self.specId != nil {
                map["SpecId"] = self.specId!
            }
            if self.specStatus != nil {
                map["SpecStatus"] = self.specStatus!
            }
            if self.specType != nil {
                map["SpecType"] = self.specType!
            }
            if self.systemDiskSize != nil {
                map["SystemDiskSize"] = self.systemDiskSize!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Core"] as? Int32 {
                self.core = value
            }
            if let value = dict["MaxPhoneCount"] as? String {
                self.maxPhoneCount = value
            }
            if let value = dict["Memory"] as? Int32 {
                self.memory = value
            }
            if let value = dict["MinPhoneCount"] as? String {
                self.minPhoneCount = value
            }
            if let value = dict["PhoneCount"] as? String {
                self.phoneCount = value
            }
            if let value = dict["Resolution"] as? String {
                self.resolution = value
            }
            if let value = dict["SpecId"] as? String {
                self.specId = value
            }
            if let value = dict["SpecStatus"] as? String {
                self.specStatus = value
            }
            if let value = dict["SpecType"] as? String {
                self.specType = value
            }
            if let value = dict["SystemDiskSize"] as? Int32 {
                self.systemDiskSize = value
            }
        }
    }
    public var nextToken: String?

    public var requestId: String?

    public var specInfoModel: [DescribeSpecResponseBody.SpecInfoModel]?

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
        if self.nextToken != nil {
            map["NextToken"] = self.nextToken!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.specInfoModel != nil {
            var tmp : [Any] = []
            for k in self.specInfoModel! {
                tmp.append(k.toMap())
            }
            map["SpecInfoModel"] = tmp
        }
        if self.totalCount != nil {
            map["TotalCount"] = self.totalCount!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["NextToken"] as? String {
            self.nextToken = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["SpecInfoModel"] as? [Any?] {
            var tmp : [DescribeSpecResponseBody.SpecInfoModel] = []
            for v in value {
                if v != nil {
                    var model = DescribeSpecResponseBody.SpecInfoModel()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.specInfoModel = tmp
        }
        if let value = dict["TotalCount"] as? Int32 {
            self.totalCount = value
        }
    }
}

public class DescribeSpecResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeSpecResponseBody?

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
            var model = DescribeSpecResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DescribeTasksRequest : Tea.TeaModel {
    public var instanceId: String?

    public var instanceName: String?

    public var invokeId: String?

    public var level: Int32?

    public var maxResults: Int32?

    public var nextToken: String?

    public var param: String?

    public var parentTaskId: String?

    public var resourceIds: [String]?

    public var taskIds: [String]?

    public var taskStatus: String?

    public var taskStatuses: [String]?

    public var taskType: String?

    public var taskTypes: [String]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.instanceName != nil {
            map["InstanceName"] = self.instanceName!
        }
        if self.invokeId != nil {
            map["InvokeId"] = self.invokeId!
        }
        if self.level != nil {
            map["Level"] = self.level!
        }
        if self.maxResults != nil {
            map["MaxResults"] = self.maxResults!
        }
        if self.nextToken != nil {
            map["NextToken"] = self.nextToken!
        }
        if self.param != nil {
            map["Param"] = self.param!
        }
        if self.parentTaskId != nil {
            map["ParentTaskId"] = self.parentTaskId!
        }
        if self.resourceIds != nil {
            map["ResourceIds"] = self.resourceIds!
        }
        if self.taskIds != nil {
            map["TaskIds"] = self.taskIds!
        }
        if self.taskStatus != nil {
            map["TaskStatus"] = self.taskStatus!
        }
        if self.taskStatuses != nil {
            map["TaskStatuses"] = self.taskStatuses!
        }
        if self.taskType != nil {
            map["TaskType"] = self.taskType!
        }
        if self.taskTypes != nil {
            map["TaskTypes"] = self.taskTypes!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["InstanceName"] as? String {
            self.instanceName = value
        }
        if let value = dict["InvokeId"] as? String {
            self.invokeId = value
        }
        if let value = dict["Level"] as? Int32 {
            self.level = value
        }
        if let value = dict["MaxResults"] as? Int32 {
            self.maxResults = value
        }
        if let value = dict["NextToken"] as? String {
            self.nextToken = value
        }
        if let value = dict["Param"] as? String {
            self.param = value
        }
        if let value = dict["ParentTaskId"] as? String {
            self.parentTaskId = value
        }
        if let value = dict["ResourceIds"] as? [String] {
            self.resourceIds = value
        }
        if let value = dict["TaskIds"] as? [String] {
            self.taskIds = value
        }
        if let value = dict["TaskStatus"] as? String {
            self.taskStatus = value
        }
        if let value = dict["TaskStatuses"] as? [String] {
            self.taskStatuses = value
        }
        if let value = dict["TaskType"] as? String {
            self.taskType = value
        }
        if let value = dict["TaskTypes"] as? [String] {
            self.taskTypes = value
        }
    }
}

public class DescribeTasksResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var errorCode: String?

        public var errorMsg: String?

        public var failedChildCount: Int32?

        public var finishTime: String?

        public var instanceId: String?

        public var instanceName: String?

        public var instanceStatus: String?

        public var invokeId: String?

        public var level: Int32?

        public var operator_: String?

        public var param: String?

        public var parentTaskId: String?

        public var regionId: String?

        public var resourceId: String?

        public var result: String?

        public var runningChildCount: Int32?

        public var startTime: String?

        public var successChildCount: Int32?

        public var taskId: String?

        public var taskStatus: String?

        public var taskType: String?

        public var totalChildCount: Int32?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.errorCode != nil {
                map["ErrorCode"] = self.errorCode!
            }
            if self.errorMsg != nil {
                map["ErrorMsg"] = self.errorMsg!
            }
            if self.failedChildCount != nil {
                map["FailedChildCount"] = self.failedChildCount!
            }
            if self.finishTime != nil {
                map["FinishTime"] = self.finishTime!
            }
            if self.instanceId != nil {
                map["InstanceId"] = self.instanceId!
            }
            if self.instanceName != nil {
                map["InstanceName"] = self.instanceName!
            }
            if self.instanceStatus != nil {
                map["InstanceStatus"] = self.instanceStatus!
            }
            if self.invokeId != nil {
                map["InvokeId"] = self.invokeId!
            }
            if self.level != nil {
                map["Level"] = self.level!
            }
            if self.operator_ != nil {
                map["Operator"] = self.operator_!
            }
            if self.param != nil {
                map["Param"] = self.param!
            }
            if self.parentTaskId != nil {
                map["ParentTaskId"] = self.parentTaskId!
            }
            if self.regionId != nil {
                map["RegionId"] = self.regionId!
            }
            if self.resourceId != nil {
                map["ResourceId"] = self.resourceId!
            }
            if self.result != nil {
                map["Result"] = self.result!
            }
            if self.runningChildCount != nil {
                map["RunningChildCount"] = self.runningChildCount!
            }
            if self.startTime != nil {
                map["StartTime"] = self.startTime!
            }
            if self.successChildCount != nil {
                map["SuccessChildCount"] = self.successChildCount!
            }
            if self.taskId != nil {
                map["TaskId"] = self.taskId!
            }
            if self.taskStatus != nil {
                map["TaskStatus"] = self.taskStatus!
            }
            if self.taskType != nil {
                map["TaskType"] = self.taskType!
            }
            if self.totalChildCount != nil {
                map["TotalChildCount"] = self.totalChildCount!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["ErrorCode"] as? String {
                self.errorCode = value
            }
            if let value = dict["ErrorMsg"] as? String {
                self.errorMsg = value
            }
            if let value = dict["FailedChildCount"] as? Int32 {
                self.failedChildCount = value
            }
            if let value = dict["FinishTime"] as? String {
                self.finishTime = value
            }
            if let value = dict["InstanceId"] as? String {
                self.instanceId = value
            }
            if let value = dict["InstanceName"] as? String {
                self.instanceName = value
            }
            if let value = dict["InstanceStatus"] as? String {
                self.instanceStatus = value
            }
            if let value = dict["InvokeId"] as? String {
                self.invokeId = value
            }
            if let value = dict["Level"] as? Int32 {
                self.level = value
            }
            if let value = dict["Operator"] as? String {
                self.operator_ = value
            }
            if let value = dict["Param"] as? String {
                self.param = value
            }
            if let value = dict["ParentTaskId"] as? String {
                self.parentTaskId = value
            }
            if let value = dict["RegionId"] as? String {
                self.regionId = value
            }
            if let value = dict["ResourceId"] as? String {
                self.resourceId = value
            }
            if let value = dict["Result"] as? String {
                self.result = value
            }
            if let value = dict["RunningChildCount"] as? Int32 {
                self.runningChildCount = value
            }
            if let value = dict["StartTime"] as? String {
                self.startTime = value
            }
            if let value = dict["SuccessChildCount"] as? Int32 {
                self.successChildCount = value
            }
            if let value = dict["TaskId"] as? String {
                self.taskId = value
            }
            if let value = dict["TaskStatus"] as? String {
                self.taskStatus = value
            }
            if let value = dict["TaskType"] as? String {
                self.taskType = value
            }
            if let value = dict["TotalChildCount"] as? Int32 {
                self.totalChildCount = value
            }
        }
    }
    public var data: [DescribeTasksResponseBody.Data]?

    public var nextToken: String?

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
        if self.data != nil {
            var tmp : [Any] = []
            for k in self.data! {
                tmp.append(k.toMap())
            }
            map["Data"] = tmp
        }
        if self.nextToken != nil {
            map["NextToken"] = self.nextToken!
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
        if let value = dict["Data"] as? [Any?] {
            var tmp : [DescribeTasksResponseBody.Data] = []
            for v in value {
                if v != nil {
                    var model = DescribeTasksResponseBody.Data()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.data = tmp
        }
        if let value = dict["NextToken"] as? String {
            self.nextToken = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["TotalCount"] as? Int32 {
            self.totalCount = value
        }
    }
}

public class DescribeTasksResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeTasksResponseBody?

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
            var model = DescribeTasksResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DetachKeyPairRequest : Tea.TeaModel {
    public var instanceIds: [String]?

    public var keyPairId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.instanceIds != nil {
            map["InstanceIds"] = self.instanceIds!
        }
        if self.keyPairId != nil {
            map["KeyPairId"] = self.keyPairId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["InstanceIds"] as? [String] {
            self.instanceIds = value
        }
        if let value = dict["KeyPairId"] as? String {
            self.keyPairId = value
        }
    }
}

public class DetachKeyPairResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var detachedInstanceIds: [String]?

        public var failCount: Int32?

        public var keyPairId: String?

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
            if self.detachedInstanceIds != nil {
                map["DetachedInstanceIds"] = self.detachedInstanceIds!
            }
            if self.failCount != nil {
                map["FailCount"] = self.failCount!
            }
            if self.keyPairId != nil {
                map["KeyPairId"] = self.keyPairId!
            }
            if self.totalCount != nil {
                map["TotalCount"] = self.totalCount!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["DetachedInstanceIds"] as? [String] {
                self.detachedInstanceIds = value
            }
            if let value = dict["FailCount"] as? Int32 {
                self.failCount = value
            }
            if let value = dict["KeyPairId"] as? String {
                self.keyPairId = value
            }
            if let value = dict["TotalCount"] as? Int32 {
                self.totalCount = value
            }
        }
    }
    public var data: DetachKeyPairResponseBody.Data?

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
            var model = DetachKeyPairResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class DetachKeyPairResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DetachKeyPairResponseBody?

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
            var model = DetachKeyPairResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DisconnectAndroidInstanceRequest : Tea.TeaModel {
    public var endUserId: String?

    public var instanceIds: [String]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.endUserId != nil {
            map["EndUserId"] = self.endUserId!
        }
        if self.instanceIds != nil {
            map["InstanceIds"] = self.instanceIds!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["EndUserId"] as? String {
            self.endUserId = value
        }
        if let value = dict["InstanceIds"] as? [String] {
            self.instanceIds = value
        }
    }
}

public class DisconnectAndroidInstanceResponseBody : Tea.TeaModel {
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

public class DisconnectAndroidInstanceResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DisconnectAndroidInstanceResponseBody?

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
            var model = DisconnectAndroidInstanceResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DistributeImageRequest : Tea.TeaModel {
    public var distributeRegionList: [String]?

    public var imageId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.distributeRegionList != nil {
            map["DistributeRegionList"] = self.distributeRegionList!
        }
        if self.imageId != nil {
            map["ImageId"] = self.imageId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["DistributeRegionList"] as? [String] {
            self.distributeRegionList = value
        }
        if let value = dict["ImageId"] as? String {
            self.imageId = value
        }
    }
}

public class DistributeImageResponseBody : Tea.TeaModel {
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

public class DistributeImageResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DistributeImageResponseBody?

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
            var model = DistributeImageResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DowngradeAndroidInstanceGroupRequest : Tea.TeaModel {
    public var androidInstanceIds: [String]?

    public var autoPay: Bool?

    public var instanceGroupId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.androidInstanceIds != nil {
            map["AndroidInstanceIds"] = self.androidInstanceIds!
        }
        if self.autoPay != nil {
            map["AutoPay"] = self.autoPay!
        }
        if self.instanceGroupId != nil {
            map["InstanceGroupId"] = self.instanceGroupId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AndroidInstanceIds"] as? [String] {
            self.androidInstanceIds = value
        }
        if let value = dict["AutoPay"] as? Bool {
            self.autoPay = value
        }
        if let value = dict["InstanceGroupId"] as? String {
            self.instanceGroupId = value
        }
    }
}

public class DowngradeAndroidInstanceGroupResponseBody : Tea.TeaModel {
    public var orderId: String?

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
        if self.orderId != nil {
            map["OrderId"] = self.orderId!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["OrderId"] as? String {
            self.orderId = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class DowngradeAndroidInstanceGroupResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DowngradeAndroidInstanceGroupResponseBody?

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
            var model = DowngradeAndroidInstanceGroupResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class EndCoordinationRequest : Tea.TeaModel {
    public var coordinatorUserId: String?

    public var instanceId: String?

    public var ownerUserId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.coordinatorUserId != nil {
            map["CoordinatorUserId"] = self.coordinatorUserId!
        }
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.ownerUserId != nil {
            map["OwnerUserId"] = self.ownerUserId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["CoordinatorUserId"] as? String {
            self.coordinatorUserId = value
        }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["OwnerUserId"] as? String {
            self.ownerUserId = value
        }
    }
}

public class EndCoordinationResponseBody : Tea.TeaModel {
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

public class EndCoordinationResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: EndCoordinationResponseBody?

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
            var model = EndCoordinationResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ExpandDataVolumeRequest : Tea.TeaModel {
    public var autoPay: Bool?

    public var bizRegionId: String?

    public var nodeIds: [String]?

    public var shareDataVolume: Int32?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.autoPay != nil {
            map["AutoPay"] = self.autoPay!
        }
        if self.bizRegionId != nil {
            map["BizRegionId"] = self.bizRegionId!
        }
        if self.nodeIds != nil {
            map["NodeIds"] = self.nodeIds!
        }
        if self.shareDataVolume != nil {
            map["ShareDataVolume"] = self.shareDataVolume!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AutoPay"] as? Bool {
            self.autoPay = value
        }
        if let value = dict["BizRegionId"] as? String {
            self.bizRegionId = value
        }
        if let value = dict["NodeIds"] as? [String] {
            self.nodeIds = value
        }
        if let value = dict["ShareDataVolume"] as? Int32 {
            self.shareDataVolume = value
        }
    }
}

public class ExpandDataVolumeResponseBody : Tea.TeaModel {
    public var orderId: String?

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
        if self.orderId != nil {
            map["OrderId"] = self.orderId!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["OrderId"] as? String {
            self.orderId = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class ExpandDataVolumeResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ExpandDataVolumeResponseBody?

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
            var model = ExpandDataVolumeResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class FetchFileRequest : Tea.TeaModel {
    public var androidInstanceIdList: [String]?

    public var sourceFilePath: String?

    public var uploadEndpoint: String?

    public var uploadType: String?

    public var uploadUrl: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.androidInstanceIdList != nil {
            map["AndroidInstanceIdList"] = self.androidInstanceIdList!
        }
        if self.sourceFilePath != nil {
            map["SourceFilePath"] = self.sourceFilePath!
        }
        if self.uploadEndpoint != nil {
            map["UploadEndpoint"] = self.uploadEndpoint!
        }
        if self.uploadType != nil {
            map["UploadType"] = self.uploadType!
        }
        if self.uploadUrl != nil {
            map["UploadUrl"] = self.uploadUrl!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AndroidInstanceIdList"] as? [String] {
            self.androidInstanceIdList = value
        }
        if let value = dict["SourceFilePath"] as? String {
            self.sourceFilePath = value
        }
        if let value = dict["UploadEndpoint"] as? String {
            self.uploadEndpoint = value
        }
        if let value = dict["UploadType"] as? String {
            self.uploadType = value
        }
        if let value = dict["UploadUrl"] as? String {
            self.uploadUrl = value
        }
    }
}

public class FetchFileResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var androidInstanceId: String?

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
            if self.androidInstanceId != nil {
                map["AndroidInstanceId"] = self.androidInstanceId!
            }
            if self.taskId != nil {
                map["TaskId"] = self.taskId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["AndroidInstanceId"] as? String {
                self.androidInstanceId = value
            }
            if let value = dict["TaskId"] as? String {
                self.taskId = value
            }
        }
    }
    public var data: [FetchFileResponseBody.Data]?

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
        if self.taskId != nil {
            map["TaskId"] = self.taskId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Data"] as? [Any?] {
            var tmp : [FetchFileResponseBody.Data] = []
            for v in value {
                if v != nil {
                    var model = FetchFileResponseBody.Data()
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
        if let value = dict["TaskId"] as? String {
            self.taskId = value
        }
    }
}

public class FetchFileResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: FetchFileResponseBody?

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
            var model = FetchFileResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GenerateCoordinationCodeRequest : Tea.TeaModel {
    public var instanceId: String?

    public var ownerUserId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.ownerUserId != nil {
            map["OwnerUserId"] = self.ownerUserId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["OwnerUserId"] as? String {
            self.ownerUserId = value
        }
    }
}

public class GenerateCoordinationCodeResponseBody : Tea.TeaModel {
    public var coordinatorCode: String?

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
        if self.coordinatorCode != nil {
            map["CoordinatorCode"] = self.coordinatorCode!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["CoordinatorCode"] as? String {
            self.coordinatorCode = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class GenerateCoordinationCodeResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GenerateCoordinationCodeResponseBody?

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
            var model = GenerateCoordinationCodeResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ImportKeyPairRequest : Tea.TeaModel {
    public var keyPairName: String?

    public var publicKeyBody: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.keyPairName != nil {
            map["KeyPairName"] = self.keyPairName!
        }
        if self.publicKeyBody != nil {
            map["PublicKeyBody"] = self.publicKeyBody!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["KeyPairName"] as? String {
            self.keyPairName = value
        }
        if let value = dict["PublicKeyBody"] as? String {
            self.publicKeyBody = value
        }
    }
}

public class ImportKeyPairResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var gmtCreated: String?

        public var keyPairId: String?

        public var keyPairName: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.gmtCreated != nil {
                map["GmtCreated"] = self.gmtCreated!
            }
            if self.keyPairId != nil {
                map["KeyPairId"] = self.keyPairId!
            }
            if self.keyPairName != nil {
                map["KeyPairName"] = self.keyPairName!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["GmtCreated"] as? String {
                self.gmtCreated = value
            }
            if let value = dict["KeyPairId"] as? String {
                self.keyPairId = value
            }
            if let value = dict["KeyPairName"] as? String {
                self.keyPairName = value
            }
        }
    }
    public var data: ImportKeyPairResponseBody.Data?

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
            var model = ImportKeyPairResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class ImportKeyPairResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ImportKeyPairResponseBody?

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
            var model = ImportKeyPairResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class InstallAppRequest : Tea.TeaModel {
    public var appIdList: [String]?

    public var instanceGroupIdList: [String]?

    public var instanceIdList: [String]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.appIdList != nil {
            map["AppIdList"] = self.appIdList!
        }
        if self.instanceGroupIdList != nil {
            map["InstanceGroupIdList"] = self.instanceGroupIdList!
        }
        if self.instanceIdList != nil {
            map["InstanceIdList"] = self.instanceIdList!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AppIdList"] as? [String] {
            self.appIdList = value
        }
        if let value = dict["InstanceGroupIdList"] as? [String] {
            self.instanceGroupIdList = value
        }
        if let value = dict["InstanceIdList"] as? [String] {
            self.instanceIdList = value
        }
    }
}

public class InstallAppResponseBody : Tea.TeaModel {
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
            map["RequestId"] = self.requestId!
        }
        if self.taskId != nil {
            map["TaskId"] = self.taskId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["TaskId"] as? String {
            self.taskId = value
        }
    }
}

public class InstallAppResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: InstallAppResponseBody?

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
            var model = InstallAppResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ListPolicyGroupsRequest : Tea.TeaModel {
    public var maxResults: Int32?

    public var nextToken: String?

    public var policyGroupIds: [String]?

    public var policyGroupName: String?

    public var policyType: String?

    public override init() {
        super.init()
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
        if self.policyGroupIds != nil {
            map["PolicyGroupIds"] = self.policyGroupIds!
        }
        if self.policyGroupName != nil {
            map["PolicyGroupName"] = self.policyGroupName!
        }
        if self.policyType != nil {
            map["PolicyType"] = self.policyType!
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
        if let value = dict["PolicyGroupIds"] as? [String] {
            self.policyGroupIds = value
        }
        if let value = dict["PolicyGroupName"] as? String {
            self.policyGroupName = value
        }
        if let value = dict["PolicyType"] as? String {
            self.policyType = value
        }
    }
}

public class ListPolicyGroupsResponseBody : Tea.TeaModel {
    public class PolicyGroupModel : Tea.TeaModel {
        public class NetRedirectPolicy : Tea.TeaModel {
            public class Rules : Tea.TeaModel {
                public var ruleType: String?

                public var target: String?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.ruleType != nil {
                        map["RuleType"] = self.ruleType!
                    }
                    if self.target != nil {
                        map["Target"] = self.target!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["RuleType"] as? String {
                        self.ruleType = value
                    }
                    if let value = dict["Target"] as? String {
                        self.target = value
                    }
                }
            }
            public var customProxy: String?

            public var hostAddr: String?

            public var netRedirect: String?

            public var port: String?

            public var proxyPassword: String?

            public var proxyType: String?

            public var proxyUserName: String?

            public var rules: [ListPolicyGroupsResponseBody.PolicyGroupModel.NetRedirectPolicy.Rules]?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.customProxy != nil {
                    map["CustomProxy"] = self.customProxy!
                }
                if self.hostAddr != nil {
                    map["HostAddr"] = self.hostAddr!
                }
                if self.netRedirect != nil {
                    map["NetRedirect"] = self.netRedirect!
                }
                if self.port != nil {
                    map["Port"] = self.port!
                }
                if self.proxyPassword != nil {
                    map["ProxyPassword"] = self.proxyPassword!
                }
                if self.proxyType != nil {
                    map["ProxyType"] = self.proxyType!
                }
                if self.proxyUserName != nil {
                    map["ProxyUserName"] = self.proxyUserName!
                }
                if self.rules != nil {
                    var tmp : [Any] = []
                    for k in self.rules! {
                        tmp.append(k.toMap())
                    }
                    map["Rules"] = tmp
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["CustomProxy"] as? String {
                    self.customProxy = value
                }
                if let value = dict["HostAddr"] as? String {
                    self.hostAddr = value
                }
                if let value = dict["NetRedirect"] as? String {
                    self.netRedirect = value
                }
                if let value = dict["Port"] as? String {
                    self.port = value
                }
                if let value = dict["ProxyPassword"] as? String {
                    self.proxyPassword = value
                }
                if let value = dict["ProxyType"] as? String {
                    self.proxyType = value
                }
                if let value = dict["ProxyUserName"] as? String {
                    self.proxyUserName = value
                }
                if let value = dict["Rules"] as? [Any?] {
                    var tmp : [ListPolicyGroupsResponseBody.PolicyGroupModel.NetRedirectPolicy.Rules] = []
                    for v in value {
                        if v != nil {
                            var model = ListPolicyGroupsResponseBody.PolicyGroupModel.NetRedirectPolicy.Rules()
                            if v != nil {
                                model.fromMap(v as? [String: Any?])
                            }
                            tmp.append(model)
                        }
                    }
                    self.rules = tmp
                }
            }
        }
        public class PolicyRelatedResources : Tea.TeaModel {
            public var androidInstanceGroupIds: [String]?

            public var cloudPhoneMatrixIds: [String]?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.androidInstanceGroupIds != nil {
                    map["AndroidInstanceGroupIds"] = self.androidInstanceGroupIds!
                }
                if self.cloudPhoneMatrixIds != nil {
                    map["CloudPhoneMatrixIds"] = self.cloudPhoneMatrixIds!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["AndroidInstanceGroupIds"] as? [String] {
                    self.androidInstanceGroupIds = value
                }
                if let value = dict["CloudPhoneMatrixIds"] as? [String] {
                    self.cloudPhoneMatrixIds = value
                }
            }
        }
        public class Watermark : Tea.TeaModel {
            public var watermarkColor: Int32?

            public var watermarkCustomText: String?

            public var watermarkFontSize: Int32?

            public var watermarkSwitch: String?

            public var watermarkTransparencyValue: Int32?

            public var watermarkTypes: [String]?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.watermarkColor != nil {
                    map["WatermarkColor"] = self.watermarkColor!
                }
                if self.watermarkCustomText != nil {
                    map["WatermarkCustomText"] = self.watermarkCustomText!
                }
                if self.watermarkFontSize != nil {
                    map["WatermarkFontSize"] = self.watermarkFontSize!
                }
                if self.watermarkSwitch != nil {
                    map["WatermarkSwitch"] = self.watermarkSwitch!
                }
                if self.watermarkTransparencyValue != nil {
                    map["WatermarkTransparencyValue"] = self.watermarkTransparencyValue!
                }
                if self.watermarkTypes != nil {
                    map["WatermarkTypes"] = self.watermarkTypes!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["WatermarkColor"] as? Int32 {
                    self.watermarkColor = value
                }
                if let value = dict["WatermarkCustomText"] as? String {
                    self.watermarkCustomText = value
                }
                if let value = dict["WatermarkFontSize"] as? Int32 {
                    self.watermarkFontSize = value
                }
                if let value = dict["WatermarkSwitch"] as? String {
                    self.watermarkSwitch = value
                }
                if let value = dict["WatermarkTransparencyValue"] as? Int32 {
                    self.watermarkTransparencyValue = value
                }
                if let value = dict["WatermarkTypes"] as? [String] {
                    self.watermarkTypes = value
                }
            }
        }
        public var cameraRedirect: String?

        public var clipboard: String?

        public var gmtCreate: String?

        public var html5FileTransfer: String?

        public var localDrive: String?

        public var lockResolution: String?

        public var netRedirectPolicy: ListPolicyGroupsResponseBody.PolicyGroupModel.NetRedirectPolicy?

        public var policyGroupId: String?

        public var policyGroupName: String?

        public var policyRelatedResources: ListPolicyGroupsResponseBody.PolicyGroupModel.PolicyRelatedResources?

        public var sessionResolutionHeight: Int32?

        public var sessionResolutionWidth: Int32?

        public var watermark: ListPolicyGroupsResponseBody.PolicyGroupModel.Watermark?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.netRedirectPolicy?.validate()
            try self.policyRelatedResources?.validate()
            try self.watermark?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.cameraRedirect != nil {
                map["CameraRedirect"] = self.cameraRedirect!
            }
            if self.clipboard != nil {
                map["Clipboard"] = self.clipboard!
            }
            if self.gmtCreate != nil {
                map["GmtCreate"] = self.gmtCreate!
            }
            if self.html5FileTransfer != nil {
                map["Html5FileTransfer"] = self.html5FileTransfer!
            }
            if self.localDrive != nil {
                map["LocalDrive"] = self.localDrive!
            }
            if self.lockResolution != nil {
                map["LockResolution"] = self.lockResolution!
            }
            if self.netRedirectPolicy != nil {
                map["NetRedirectPolicy"] = self.netRedirectPolicy?.toMap()
            }
            if self.policyGroupId != nil {
                map["PolicyGroupId"] = self.policyGroupId!
            }
            if self.policyGroupName != nil {
                map["PolicyGroupName"] = self.policyGroupName!
            }
            if self.policyRelatedResources != nil {
                map["PolicyRelatedResources"] = self.policyRelatedResources?.toMap()
            }
            if self.sessionResolutionHeight != nil {
                map["SessionResolutionHeight"] = self.sessionResolutionHeight!
            }
            if self.sessionResolutionWidth != nil {
                map["SessionResolutionWidth"] = self.sessionResolutionWidth!
            }
            if self.watermark != nil {
                map["Watermark"] = self.watermark?.toMap()
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["CameraRedirect"] as? String {
                self.cameraRedirect = value
            }
            if let value = dict["Clipboard"] as? String {
                self.clipboard = value
            }
            if let value = dict["GmtCreate"] as? String {
                self.gmtCreate = value
            }
            if let value = dict["Html5FileTransfer"] as? String {
                self.html5FileTransfer = value
            }
            if let value = dict["LocalDrive"] as? String {
                self.localDrive = value
            }
            if let value = dict["LockResolution"] as? String {
                self.lockResolution = value
            }
            if let value = dict["NetRedirectPolicy"] as? [String: Any?] {
                var model = ListPolicyGroupsResponseBody.PolicyGroupModel.NetRedirectPolicy()
                model.fromMap(value)
                self.netRedirectPolicy = model
            }
            if let value = dict["PolicyGroupId"] as? String {
                self.policyGroupId = value
            }
            if let value = dict["PolicyGroupName"] as? String {
                self.policyGroupName = value
            }
            if let value = dict["PolicyRelatedResources"] as? [String: Any?] {
                var model = ListPolicyGroupsResponseBody.PolicyGroupModel.PolicyRelatedResources()
                model.fromMap(value)
                self.policyRelatedResources = model
            }
            if let value = dict["SessionResolutionHeight"] as? Int32 {
                self.sessionResolutionHeight = value
            }
            if let value = dict["SessionResolutionWidth"] as? Int32 {
                self.sessionResolutionWidth = value
            }
            if let value = dict["Watermark"] as? [String: Any?] {
                var model = ListPolicyGroupsResponseBody.PolicyGroupModel.Watermark()
                model.fromMap(value)
                self.watermark = model
            }
        }
    }
    public var nextToken: String?

    public var policyGroupModel: [ListPolicyGroupsResponseBody.PolicyGroupModel]?

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
        if self.nextToken != nil {
            map["NextToken"] = self.nextToken!
        }
        if self.policyGroupModel != nil {
            var tmp : [Any] = []
            for k in self.policyGroupModel! {
                tmp.append(k.toMap())
            }
            map["PolicyGroupModel"] = tmp
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
        if let value = dict["NextToken"] as? String {
            self.nextToken = value
        }
        if let value = dict["PolicyGroupModel"] as? [Any?] {
            var tmp : [ListPolicyGroupsResponseBody.PolicyGroupModel] = []
            for v in value {
                if v != nil {
                    var model = ListPolicyGroupsResponseBody.PolicyGroupModel()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.policyGroupModel = tmp
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["TotalCount"] as? Int32 {
            self.totalCount = value
        }
    }
}

public class ListPolicyGroupsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListPolicyGroupsResponseBody?

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
            var model = ListPolicyGroupsResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ModifyAndroidInstanceRequest : Tea.TeaModel {
    public var androidInstanceId: String?

    public var newAndroidInstanceName: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.androidInstanceId != nil {
            map["AndroidInstanceId"] = self.androidInstanceId!
        }
        if self.newAndroidInstanceName != nil {
            map["NewAndroidInstanceName"] = self.newAndroidInstanceName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AndroidInstanceId"] as? String {
            self.androidInstanceId = value
        }
        if let value = dict["NewAndroidInstanceName"] as? String {
            self.newAndroidInstanceName = value
        }
    }
}

public class ModifyAndroidInstanceResponseBody : Tea.TeaModel {
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

public class ModifyAndroidInstanceResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ModifyAndroidInstanceResponseBody?

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
            var model = ModifyAndroidInstanceResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ModifyAndroidInstanceGroupRequest : Tea.TeaModel {
    public var instanceGroupId: String?

    public var newInstanceGroupName: String?

    public var policyGroupId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.instanceGroupId != nil {
            map["InstanceGroupId"] = self.instanceGroupId!
        }
        if self.newInstanceGroupName != nil {
            map["NewInstanceGroupName"] = self.newInstanceGroupName!
        }
        if self.policyGroupId != nil {
            map["PolicyGroupId"] = self.policyGroupId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["InstanceGroupId"] as? String {
            self.instanceGroupId = value
        }
        if let value = dict["NewInstanceGroupName"] as? String {
            self.newInstanceGroupName = value
        }
        if let value = dict["PolicyGroupId"] as? String {
            self.policyGroupId = value
        }
    }
}

public class ModifyAndroidInstanceGroupResponseBody : Tea.TeaModel {
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

public class ModifyAndroidInstanceGroupResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ModifyAndroidInstanceGroupResponseBody?

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
            var model = ModifyAndroidInstanceGroupResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ModifyAppRequest : Tea.TeaModel {
    public var appId: Int32?

    public var appName: String?

    public var description_: String?

    public var iconUrl: String?

    public override init() {
        super.init()
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
        if self.description_ != nil {
            map["Description"] = self.description_!
        }
        if self.iconUrl != nil {
            map["IconUrl"] = self.iconUrl!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AppId"] as? Int32 {
            self.appId = value
        }
        if let value = dict["AppName"] as? String {
            self.appName = value
        }
        if let value = dict["Description"] as? String {
            self.description_ = value
        }
        if let value = dict["IconUrl"] as? String {
            self.iconUrl = value
        }
    }
}

public class ModifyAppResponseBody : Tea.TeaModel {
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

public class ModifyAppResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ModifyAppResponseBody?

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
            var model = ModifyAppResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ModifyCloudPhoneNodeRequest : Tea.TeaModel {
    public var newNodeName: String?

    public var nodeId: String?

    public var streamMode: Int32?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.newNodeName != nil {
            map["NewNodeName"] = self.newNodeName!
        }
        if self.nodeId != nil {
            map["NodeId"] = self.nodeId!
        }
        if self.streamMode != nil {
            map["StreamMode"] = self.streamMode!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["NewNodeName"] as? String {
            self.newNodeName = value
        }
        if let value = dict["NodeId"] as? String {
            self.nodeId = value
        }
        if let value = dict["StreamMode"] as? Int32 {
            self.streamMode = value
        }
    }
}

public class ModifyCloudPhoneNodeResponseBody : Tea.TeaModel {
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

public class ModifyCloudPhoneNodeResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ModifyCloudPhoneNodeResponseBody?

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
            var model = ModifyCloudPhoneNodeResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ModifyDisplayConfigRequest : Tea.TeaModel {
    public class DisplayConfig : Tea.TeaModel {
        public var dpi: Int32?

        public var fps: Int32?

        public var lockResolution: String?

        public var resolutionHeight: Int32?

        public var resolutionWidth: Int32?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.dpi != nil {
                map["Dpi"] = self.dpi!
            }
            if self.fps != nil {
                map["Fps"] = self.fps!
            }
            if self.lockResolution != nil {
                map["LockResolution"] = self.lockResolution!
            }
            if self.resolutionHeight != nil {
                map["ResolutionHeight"] = self.resolutionHeight!
            }
            if self.resolutionWidth != nil {
                map["ResolutionWidth"] = self.resolutionWidth!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Dpi"] as? Int32 {
                self.dpi = value
            }
            if let value = dict["Fps"] as? Int32 {
                self.fps = value
            }
            if let value = dict["LockResolution"] as? String {
                self.lockResolution = value
            }
            if let value = dict["ResolutionHeight"] as? Int32 {
                self.resolutionHeight = value
            }
            if let value = dict["ResolutionWidth"] as? Int32 {
                self.resolutionWidth = value
            }
        }
    }
    public var androidInstanceIds: [String]?

    public var displayConfig: ModifyDisplayConfigRequest.DisplayConfig?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.displayConfig?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.androidInstanceIds != nil {
            map["AndroidInstanceIds"] = self.androidInstanceIds!
        }
        if self.displayConfig != nil {
            map["DisplayConfig"] = self.displayConfig?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AndroidInstanceIds"] as? [String] {
            self.androidInstanceIds = value
        }
        if let value = dict["DisplayConfig"] as? [String: Any?] {
            var model = ModifyDisplayConfigRequest.DisplayConfig()
            model.fromMap(value)
            self.displayConfig = model
        }
    }
}

public class ModifyDisplayConfigShrinkRequest : Tea.TeaModel {
    public var androidInstanceIds: [String]?

    public var displayConfigShrink: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.androidInstanceIds != nil {
            map["AndroidInstanceIds"] = self.androidInstanceIds!
        }
        if self.displayConfigShrink != nil {
            map["DisplayConfig"] = self.displayConfigShrink!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AndroidInstanceIds"] as? [String] {
            self.androidInstanceIds = value
        }
        if let value = dict["DisplayConfig"] as? String {
            self.displayConfigShrink = value
        }
    }
}

public class ModifyDisplayConfigResponseBody : Tea.TeaModel {
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

public class ModifyDisplayConfigResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ModifyDisplayConfigResponseBody?

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
            var model = ModifyDisplayConfigResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ModifyInstanceChargeTypeRequest : Tea.TeaModel {
    public var autoPay: Bool?

    public var autoRenew: Bool?

    public var chargeType: String?

    public var instanceGroupIds: [String]?

    public var period: Int32?

    public var periodUnit: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.autoPay != nil {
            map["AutoPay"] = self.autoPay!
        }
        if self.autoRenew != nil {
            map["AutoRenew"] = self.autoRenew!
        }
        if self.chargeType != nil {
            map["ChargeType"] = self.chargeType!
        }
        if self.instanceGroupIds != nil {
            map["InstanceGroupIds"] = self.instanceGroupIds!
        }
        if self.period != nil {
            map["Period"] = self.period!
        }
        if self.periodUnit != nil {
            map["PeriodUnit"] = self.periodUnit!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AutoPay"] as? Bool {
            self.autoPay = value
        }
        if let value = dict["AutoRenew"] as? Bool {
            self.autoRenew = value
        }
        if let value = dict["ChargeType"] as? String {
            self.chargeType = value
        }
        if let value = dict["InstanceGroupIds"] as? [String] {
            self.instanceGroupIds = value
        }
        if let value = dict["Period"] as? Int32 {
            self.period = value
        }
        if let value = dict["PeriodUnit"] as? String {
            self.periodUnit = value
        }
    }
}

public class ModifyInstanceChargeTypeResponseBody : Tea.TeaModel {
    public var instanceGroupIds: [String]?

    public var orderId: String?

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
        if self.instanceGroupIds != nil {
            map["InstanceGroupIds"] = self.instanceGroupIds!
        }
        if self.orderId != nil {
            map["OrderId"] = self.orderId!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["InstanceGroupIds"] as? [String] {
            self.instanceGroupIds = value
        }
        if let value = dict["OrderId"] as? String {
            self.orderId = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class ModifyInstanceChargeTypeResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ModifyInstanceChargeTypeResponseBody?

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
            var model = ModifyInstanceChargeTypeResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ModifyKeyPairNameRequest : Tea.TeaModel {
    public var keyPairId: String?

    public var newKeyPairName: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.keyPairId != nil {
            map["KeyPairId"] = self.keyPairId!
        }
        if self.newKeyPairName != nil {
            map["NewKeyPairName"] = self.newKeyPairName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["KeyPairId"] as? String {
            self.keyPairId = value
        }
        if let value = dict["NewKeyPairName"] as? String {
            self.newKeyPairName = value
        }
    }
}

public class ModifyKeyPairNameResponseBody : Tea.TeaModel {
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

public class ModifyKeyPairNameResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ModifyKeyPairNameResponseBody?

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
            var model = ModifyKeyPairNameResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ModifyPolicyGroupRequest : Tea.TeaModel {
    public class NetRedirectPolicy : Tea.TeaModel {
        public class Rules : Tea.TeaModel {
            public var ruleType: String?

            public var target: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.ruleType != nil {
                    map["RuleType"] = self.ruleType!
                }
                if self.target != nil {
                    map["Target"] = self.target!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["RuleType"] as? String {
                    self.ruleType = value
                }
                if let value = dict["Target"] as? String {
                    self.target = value
                }
            }
        }
        public var customProxy: String?

        public var hostAddr: String?

        public var netRedirect: String?

        public var port: String?

        public var proxyPassword: String?

        public var proxyType: String?

        public var proxyUserName: String?

        public var rules: [ModifyPolicyGroupRequest.NetRedirectPolicy.Rules]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.customProxy != nil {
                map["CustomProxy"] = self.customProxy!
            }
            if self.hostAddr != nil {
                map["HostAddr"] = self.hostAddr!
            }
            if self.netRedirect != nil {
                map["NetRedirect"] = self.netRedirect!
            }
            if self.port != nil {
                map["Port"] = self.port!
            }
            if self.proxyPassword != nil {
                map["ProxyPassword"] = self.proxyPassword!
            }
            if self.proxyType != nil {
                map["ProxyType"] = self.proxyType!
            }
            if self.proxyUserName != nil {
                map["ProxyUserName"] = self.proxyUserName!
            }
            if self.rules != nil {
                var tmp : [Any] = []
                for k in self.rules! {
                    tmp.append(k.toMap())
                }
                map["Rules"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["CustomProxy"] as? String {
                self.customProxy = value
            }
            if let value = dict["HostAddr"] as? String {
                self.hostAddr = value
            }
            if let value = dict["NetRedirect"] as? String {
                self.netRedirect = value
            }
            if let value = dict["Port"] as? String {
                self.port = value
            }
            if let value = dict["ProxyPassword"] as? String {
                self.proxyPassword = value
            }
            if let value = dict["ProxyType"] as? String {
                self.proxyType = value
            }
            if let value = dict["ProxyUserName"] as? String {
                self.proxyUserName = value
            }
            if let value = dict["Rules"] as? [Any?] {
                var tmp : [ModifyPolicyGroupRequest.NetRedirectPolicy.Rules] = []
                for v in value {
                    if v != nil {
                        var model = ModifyPolicyGroupRequest.NetRedirectPolicy.Rules()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.rules = tmp
            }
        }
    }
    public class Watermark : Tea.TeaModel {
        public var watermarkColor: Int32?

        public var watermarkCustomText: String?

        public var watermarkFontSize: Int32?

        public var watermarkSwitch: String?

        public var watermarkTransparencyValue: Int32?

        public var watermarkTypes: [String]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.watermarkColor != nil {
                map["WatermarkColor"] = self.watermarkColor!
            }
            if self.watermarkCustomText != nil {
                map["WatermarkCustomText"] = self.watermarkCustomText!
            }
            if self.watermarkFontSize != nil {
                map["WatermarkFontSize"] = self.watermarkFontSize!
            }
            if self.watermarkSwitch != nil {
                map["WatermarkSwitch"] = self.watermarkSwitch!
            }
            if self.watermarkTransparencyValue != nil {
                map["WatermarkTransparencyValue"] = self.watermarkTransparencyValue!
            }
            if self.watermarkTypes != nil {
                map["WatermarkTypes"] = self.watermarkTypes!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["WatermarkColor"] as? Int32 {
                self.watermarkColor = value
            }
            if let value = dict["WatermarkCustomText"] as? String {
                self.watermarkCustomText = value
            }
            if let value = dict["WatermarkFontSize"] as? Int32 {
                self.watermarkFontSize = value
            }
            if let value = dict["WatermarkSwitch"] as? String {
                self.watermarkSwitch = value
            }
            if let value = dict["WatermarkTransparencyValue"] as? Int32 {
                self.watermarkTransparencyValue = value
            }
            if let value = dict["WatermarkTypes"] as? [String] {
                self.watermarkTypes = value
            }
        }
    }
    public var cameraRedirect: String?

    public var clipboard: String?

    public var html5FileTransfer: String?

    public var localDrive: String?

    public var lockResolution: String?

    public var netRedirectPolicy: ModifyPolicyGroupRequest.NetRedirectPolicy?

    public var policyGroupId: String?

    public var policyGroupName: String?

    public var resolutionHeight: Int32?

    public var resolutionWidth: Int32?

    public var watermark: ModifyPolicyGroupRequest.Watermark?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.netRedirectPolicy?.validate()
        try self.watermark?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.cameraRedirect != nil {
            map["CameraRedirect"] = self.cameraRedirect!
        }
        if self.clipboard != nil {
            map["Clipboard"] = self.clipboard!
        }
        if self.html5FileTransfer != nil {
            map["Html5FileTransfer"] = self.html5FileTransfer!
        }
        if self.localDrive != nil {
            map["LocalDrive"] = self.localDrive!
        }
        if self.lockResolution != nil {
            map["LockResolution"] = self.lockResolution!
        }
        if self.netRedirectPolicy != nil {
            map["NetRedirectPolicy"] = self.netRedirectPolicy?.toMap()
        }
        if self.policyGroupId != nil {
            map["PolicyGroupId"] = self.policyGroupId!
        }
        if self.policyGroupName != nil {
            map["PolicyGroupName"] = self.policyGroupName!
        }
        if self.resolutionHeight != nil {
            map["ResolutionHeight"] = self.resolutionHeight!
        }
        if self.resolutionWidth != nil {
            map["ResolutionWidth"] = self.resolutionWidth!
        }
        if self.watermark != nil {
            map["Watermark"] = self.watermark?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["CameraRedirect"] as? String {
            self.cameraRedirect = value
        }
        if let value = dict["Clipboard"] as? String {
            self.clipboard = value
        }
        if let value = dict["Html5FileTransfer"] as? String {
            self.html5FileTransfer = value
        }
        if let value = dict["LocalDrive"] as? String {
            self.localDrive = value
        }
        if let value = dict["LockResolution"] as? String {
            self.lockResolution = value
        }
        if let value = dict["NetRedirectPolicy"] as? [String: Any?] {
            var model = ModifyPolicyGroupRequest.NetRedirectPolicy()
            model.fromMap(value)
            self.netRedirectPolicy = model
        }
        if let value = dict["PolicyGroupId"] as? String {
            self.policyGroupId = value
        }
        if let value = dict["PolicyGroupName"] as? String {
            self.policyGroupName = value
        }
        if let value = dict["ResolutionHeight"] as? Int32 {
            self.resolutionHeight = value
        }
        if let value = dict["ResolutionWidth"] as? Int32 {
            self.resolutionWidth = value
        }
        if let value = dict["Watermark"] as? [String: Any?] {
            var model = ModifyPolicyGroupRequest.Watermark()
            model.fromMap(value)
            self.watermark = model
        }
    }
}

public class ModifyPolicyGroupShrinkRequest : Tea.TeaModel {
    public var cameraRedirect: String?

    public var clipboard: String?

    public var html5FileTransfer: String?

    public var localDrive: String?

    public var lockResolution: String?

    public var netRedirectPolicyShrink: String?

    public var policyGroupId: String?

    public var policyGroupName: String?

    public var resolutionHeight: Int32?

    public var resolutionWidth: Int32?

    public var watermarkShrink: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.cameraRedirect != nil {
            map["CameraRedirect"] = self.cameraRedirect!
        }
        if self.clipboard != nil {
            map["Clipboard"] = self.clipboard!
        }
        if self.html5FileTransfer != nil {
            map["Html5FileTransfer"] = self.html5FileTransfer!
        }
        if self.localDrive != nil {
            map["LocalDrive"] = self.localDrive!
        }
        if self.lockResolution != nil {
            map["LockResolution"] = self.lockResolution!
        }
        if self.netRedirectPolicyShrink != nil {
            map["NetRedirectPolicy"] = self.netRedirectPolicyShrink!
        }
        if self.policyGroupId != nil {
            map["PolicyGroupId"] = self.policyGroupId!
        }
        if self.policyGroupName != nil {
            map["PolicyGroupName"] = self.policyGroupName!
        }
        if self.resolutionHeight != nil {
            map["ResolutionHeight"] = self.resolutionHeight!
        }
        if self.resolutionWidth != nil {
            map["ResolutionWidth"] = self.resolutionWidth!
        }
        if self.watermarkShrink != nil {
            map["Watermark"] = self.watermarkShrink!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["CameraRedirect"] as? String {
            self.cameraRedirect = value
        }
        if let value = dict["Clipboard"] as? String {
            self.clipboard = value
        }
        if let value = dict["Html5FileTransfer"] as? String {
            self.html5FileTransfer = value
        }
        if let value = dict["LocalDrive"] as? String {
            self.localDrive = value
        }
        if let value = dict["LockResolution"] as? String {
            self.lockResolution = value
        }
        if let value = dict["NetRedirectPolicy"] as? String {
            self.netRedirectPolicyShrink = value
        }
        if let value = dict["PolicyGroupId"] as? String {
            self.policyGroupId = value
        }
        if let value = dict["PolicyGroupName"] as? String {
            self.policyGroupName = value
        }
        if let value = dict["ResolutionHeight"] as? Int32 {
            self.resolutionHeight = value
        }
        if let value = dict["ResolutionWidth"] as? Int32 {
            self.resolutionWidth = value
        }
        if let value = dict["Watermark"] as? String {
            self.watermarkShrink = value
        }
    }
}

public class ModifyPolicyGroupResponseBody : Tea.TeaModel {
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

public class ModifyPolicyGroupResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ModifyPolicyGroupResponseBody?

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
            var model = ModifyPolicyGroupResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class OperateAppRequest : Tea.TeaModel {
    public var appId: Int32?

    public var instanceIdList: [String]?

    public var operateType: String?

    public override init() {
        super.init()
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
        if self.instanceIdList != nil {
            map["InstanceIdList"] = self.instanceIdList!
        }
        if self.operateType != nil {
            map["OperateType"] = self.operateType!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AppId"] as? Int32 {
            self.appId = value
        }
        if let value = dict["InstanceIdList"] as? [String] {
            self.instanceIdList = value
        }
        if let value = dict["OperateType"] as? String {
            self.operateType = value
        }
    }
}

public class OperateAppResponseBody : Tea.TeaModel {
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
            map["RequestId"] = self.requestId!
        }
        if self.taskId != nil {
            map["TaskId"] = self.taskId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["TaskId"] as? String {
            self.taskId = value
        }
    }
}

public class OperateAppResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: OperateAppResponseBody?

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
            var model = OperateAppResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class RebootAndroidInstancesInGroupRequest : Tea.TeaModel {
    public var androidInstanceIds: [String]?

    public var forceStop: Bool?

    public var saleMode: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.androidInstanceIds != nil {
            map["AndroidInstanceIds"] = self.androidInstanceIds!
        }
        if self.forceStop != nil {
            map["ForceStop"] = self.forceStop!
        }
        if self.saleMode != nil {
            map["SaleMode"] = self.saleMode!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AndroidInstanceIds"] as? [String] {
            self.androidInstanceIds = value
        }
        if let value = dict["ForceStop"] as? Bool {
            self.forceStop = value
        }
        if let value = dict["SaleMode"] as? String {
            self.saleMode = value
        }
    }
}

public class RebootAndroidInstancesInGroupResponseBody : Tea.TeaModel {
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

public class RebootAndroidInstancesInGroupResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: RebootAndroidInstancesInGroupResponseBody?

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
            var model = RebootAndroidInstancesInGroupResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class RecoveryFileRequest : Tea.TeaModel {
    public var androidInstanceIdList: [String]?

    public var backupAll: Bool?

    public var backupFileId: String?

    public var backupFilePath: String?

    public var uploadEndpoint: String?

    public var uploadType: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.androidInstanceIdList != nil {
            map["AndroidInstanceIdList"] = self.androidInstanceIdList!
        }
        if self.backupAll != nil {
            map["BackupAll"] = self.backupAll!
        }
        if self.backupFileId != nil {
            map["BackupFileId"] = self.backupFileId!
        }
        if self.backupFilePath != nil {
            map["BackupFilePath"] = self.backupFilePath!
        }
        if self.uploadEndpoint != nil {
            map["UploadEndpoint"] = self.uploadEndpoint!
        }
        if self.uploadType != nil {
            map["UploadType"] = self.uploadType!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AndroidInstanceIdList"] as? [String] {
            self.androidInstanceIdList = value
        }
        if let value = dict["BackupAll"] as? Bool {
            self.backupAll = value
        }
        if let value = dict["BackupFileId"] as? String {
            self.backupFileId = value
        }
        if let value = dict["BackupFilePath"] as? String {
            self.backupFilePath = value
        }
        if let value = dict["UploadEndpoint"] as? String {
            self.uploadEndpoint = value
        }
        if let value = dict["UploadType"] as? String {
            self.uploadType = value
        }
    }
}

public class RecoveryFileResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var androidInstanceId: String?

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
            if self.androidInstanceId != nil {
                map["AndroidInstanceId"] = self.androidInstanceId!
            }
            if self.taskId != nil {
                map["TaskId"] = self.taskId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["AndroidInstanceId"] as? String {
                self.androidInstanceId = value
            }
            if let value = dict["TaskId"] as? String {
                self.taskId = value
            }
        }
    }
    public var count: Int64?

    public var data: [RecoveryFileResponseBody.Data]?

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
        if self.count != nil {
            map["Count"] = self.count!
        }
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
        if self.taskId != nil {
            map["TaskId"] = self.taskId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Count"] as? Int64 {
            self.count = value
        }
        if let value = dict["Data"] as? [Any?] {
            var tmp : [RecoveryFileResponseBody.Data] = []
            for v in value {
                if v != nil {
                    var model = RecoveryFileResponseBody.Data()
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
        if let value = dict["TaskId"] as? String {
            self.taskId = value
        }
    }
}

public class RecoveryFileResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: RecoveryFileResponseBody?

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
            var model = RecoveryFileResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class RenewAndroidInstanceGroupsRequest : Tea.TeaModel {
    public var autoPay: Bool?

    public var instanceGroupIds: [String]?

    public var period: Int32?

    public var periodUnit: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.autoPay != nil {
            map["AutoPay"] = self.autoPay!
        }
        if self.instanceGroupIds != nil {
            map["InstanceGroupIds"] = self.instanceGroupIds!
        }
        if self.period != nil {
            map["Period"] = self.period!
        }
        if self.periodUnit != nil {
            map["PeriodUnit"] = self.periodUnit!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AutoPay"] as? Bool {
            self.autoPay = value
        }
        if let value = dict["InstanceGroupIds"] as? [String] {
            self.instanceGroupIds = value
        }
        if let value = dict["Period"] as? Int32 {
            self.period = value
        }
        if let value = dict["PeriodUnit"] as? String {
            self.periodUnit = value
        }
    }
}

public class RenewAndroidInstanceGroupsResponseBody : Tea.TeaModel {
    public var orderId: String?

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
        if self.orderId != nil {
            map["OrderId"] = self.orderId!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["OrderId"] as? String {
            self.orderId = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class RenewAndroidInstanceGroupsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: RenewAndroidInstanceGroupsResponseBody?

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
            var model = RenewAndroidInstanceGroupsResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class RenewCloudPhoneNodesRequest : Tea.TeaModel {
    public var autoPay: Bool?

    public var autoRenew: Bool?

    public var nodeIds: [String]?

    public var period: Int32?

    public var periodUnit: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.autoPay != nil {
            map["AutoPay"] = self.autoPay!
        }
        if self.autoRenew != nil {
            map["AutoRenew"] = self.autoRenew!
        }
        if self.nodeIds != nil {
            map["NodeIds"] = self.nodeIds!
        }
        if self.period != nil {
            map["Period"] = self.period!
        }
        if self.periodUnit != nil {
            map["PeriodUnit"] = self.periodUnit!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AutoPay"] as? Bool {
            self.autoPay = value
        }
        if let value = dict["AutoRenew"] as? Bool {
            self.autoRenew = value
        }
        if let value = dict["NodeIds"] as? [String] {
            self.nodeIds = value
        }
        if let value = dict["Period"] as? Int32 {
            self.period = value
        }
        if let value = dict["PeriodUnit"] as? String {
            self.periodUnit = value
        }
    }
}

public class RenewCloudPhoneNodesResponseBody : Tea.TeaModel {
    public var orderId: String?

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
        if self.orderId != nil {
            map["OrderId"] = self.orderId!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["OrderId"] as? String {
            self.orderId = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class RenewCloudPhoneNodesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: RenewCloudPhoneNodesResponseBody?

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
            var model = RenewCloudPhoneNodesResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ResetAndroidInstancesInGroupRequest : Tea.TeaModel {
    public var androidInstanceIds: [String]?

    public var saleMode: String?

    public var settingResetType: Int32?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.androidInstanceIds != nil {
            map["AndroidInstanceIds"] = self.androidInstanceIds!
        }
        if self.saleMode != nil {
            map["SaleMode"] = self.saleMode!
        }
        if self.settingResetType != nil {
            map["SettingResetType"] = self.settingResetType!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AndroidInstanceIds"] as? [String] {
            self.androidInstanceIds = value
        }
        if let value = dict["SaleMode"] as? String {
            self.saleMode = value
        }
        if let value = dict["SettingResetType"] as? Int32 {
            self.settingResetType = value
        }
    }
}

public class ResetAndroidInstancesInGroupResponseBody : Tea.TeaModel {
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

public class ResetAndroidInstancesInGroupResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ResetAndroidInstancesInGroupResponseBody?

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
            var model = ResetAndroidInstancesInGroupResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class RunCommandRequest : Tea.TeaModel {
    public var commandContent: String?

    public var contentEncoding: String?

    public var instanceIds: [String]?

    public var timeout: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.commandContent != nil {
            map["CommandContent"] = self.commandContent!
        }
        if self.contentEncoding != nil {
            map["ContentEncoding"] = self.contentEncoding!
        }
        if self.instanceIds != nil {
            map["InstanceIds"] = self.instanceIds!
        }
        if self.timeout != nil {
            map["Timeout"] = self.timeout!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["CommandContent"] as? String {
            self.commandContent = value
        }
        if let value = dict["ContentEncoding"] as? String {
            self.contentEncoding = value
        }
        if let value = dict["InstanceIds"] as? [String] {
            self.instanceIds = value
        }
        if let value = dict["Timeout"] as? Int64 {
            self.timeout = value
        }
    }
}

public class RunCommandResponseBody : Tea.TeaModel {
    public var invokeId: String?

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
        if self.invokeId != nil {
            map["InvokeId"] = self.invokeId!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["InvokeId"] as? String {
            self.invokeId = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class RunCommandResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: RunCommandResponseBody?

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
            var model = RunCommandResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class SendFileRequest : Tea.TeaModel {
    public var androidInstanceIdList: [String]?

    public var sourceFilePath: String?

    public var targetFileName: String?

    public var uploadEndpoint: String?

    public var uploadType: String?

    public var uploadUrl: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.androidInstanceIdList != nil {
            map["AndroidInstanceIdList"] = self.androidInstanceIdList!
        }
        if self.sourceFilePath != nil {
            map["SourceFilePath"] = self.sourceFilePath!
        }
        if self.targetFileName != nil {
            map["TargetFileName"] = self.targetFileName!
        }
        if self.uploadEndpoint != nil {
            map["UploadEndpoint"] = self.uploadEndpoint!
        }
        if self.uploadType != nil {
            map["UploadType"] = self.uploadType!
        }
        if self.uploadUrl != nil {
            map["UploadUrl"] = self.uploadUrl!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AndroidInstanceIdList"] as? [String] {
            self.androidInstanceIdList = value
        }
        if let value = dict["SourceFilePath"] as? String {
            self.sourceFilePath = value
        }
        if let value = dict["TargetFileName"] as? String {
            self.targetFileName = value
        }
        if let value = dict["UploadEndpoint"] as? String {
            self.uploadEndpoint = value
        }
        if let value = dict["UploadType"] as? String {
            self.uploadType = value
        }
        if let value = dict["UploadUrl"] as? String {
            self.uploadUrl = value
        }
    }
}

public class SendFileResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var androidInstanceId: String?

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
            if self.androidInstanceId != nil {
                map["AndroidInstanceId"] = self.androidInstanceId!
            }
            if self.taskId != nil {
                map["TaskId"] = self.taskId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["AndroidInstanceId"] as? String {
                self.androidInstanceId = value
            }
            if let value = dict["TaskId"] as? String {
                self.taskId = value
            }
        }
    }
    public var data: [SendFileResponseBody.Data]?

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
        if self.taskId != nil {
            map["TaskId"] = self.taskId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Data"] as? [Any?] {
            var tmp : [SendFileResponseBody.Data] = []
            for v in value {
                if v != nil {
                    var model = SendFileResponseBody.Data()
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
        if let value = dict["TaskId"] as? String {
            self.taskId = value
        }
    }
}

public class SendFileResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: SendFileResponseBody?

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
            var model = SendFileResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class SetAdbSecureRequest : Tea.TeaModel {
    public var instanceIds: [String]?

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
        if self.instanceIds != nil {
            map["InstanceIds"] = self.instanceIds!
        }
        if self.status != nil {
            map["Status"] = self.status!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["InstanceIds"] as? [String] {
            self.instanceIds = value
        }
        if let value = dict["Status"] as? Int32 {
            self.status = value
        }
    }
}

public class SetAdbSecureResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var failCount: Int32?

        public var instanceIds: [String]?

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
            if self.failCount != nil {
                map["FailCount"] = self.failCount!
            }
            if self.instanceIds != nil {
                map["InstanceIds"] = self.instanceIds!
            }
            if self.totalCount != nil {
                map["TotalCount"] = self.totalCount!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["FailCount"] as? Int32 {
                self.failCount = value
            }
            if let value = dict["InstanceIds"] as? [String] {
                self.instanceIds = value
            }
            if let value = dict["TotalCount"] as? Int32 {
                self.totalCount = value
            }
        }
    }
    public var data: SetAdbSecureResponseBody.Data?

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
            var model = SetAdbSecureResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class SetAdbSecureResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: SetAdbSecureResponseBody?

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
            var model = SetAdbSecureResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class StartAndroidInstanceRequest : Tea.TeaModel {
    public var androidInstanceIds: [String]?

    public var saleMode: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.androidInstanceIds != nil {
            map["AndroidInstanceIds"] = self.androidInstanceIds!
        }
        if self.saleMode != nil {
            map["SaleMode"] = self.saleMode!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AndroidInstanceIds"] as? [String] {
            self.androidInstanceIds = value
        }
        if let value = dict["SaleMode"] as? String {
            self.saleMode = value
        }
    }
}

public class StartAndroidInstanceResponseBody : Tea.TeaModel {
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

public class StartAndroidInstanceResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: StartAndroidInstanceResponseBody?

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
            var model = StartAndroidInstanceResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class StopAndroidInstanceRequest : Tea.TeaModel {
    public var androidInstanceIds: [String]?

    public var forceStop: Bool?

    public var saleMode: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.androidInstanceIds != nil {
            map["AndroidInstanceIds"] = self.androidInstanceIds!
        }
        if self.forceStop != nil {
            map["ForceStop"] = self.forceStop!
        }
        if self.saleMode != nil {
            map["SaleMode"] = self.saleMode!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AndroidInstanceIds"] as? [String] {
            self.androidInstanceIds = value
        }
        if let value = dict["ForceStop"] as? Bool {
            self.forceStop = value
        }
        if let value = dict["SaleMode"] as? String {
            self.saleMode = value
        }
    }
}

public class StopAndroidInstanceResponseBody : Tea.TeaModel {
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

public class StopAndroidInstanceResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: StopAndroidInstanceResponseBody?

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
            var model = StopAndroidInstanceResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class UninstallAppRequest : Tea.TeaModel {
    public var appIdList: [String]?

    public var instanceGroupIdList: [String]?

    public var instanceIdList: [String]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.appIdList != nil {
            map["AppIdList"] = self.appIdList!
        }
        if self.instanceGroupIdList != nil {
            map["InstanceGroupIdList"] = self.instanceGroupIdList!
        }
        if self.instanceIdList != nil {
            map["InstanceIdList"] = self.instanceIdList!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AppIdList"] as? [String] {
            self.appIdList = value
        }
        if let value = dict["InstanceGroupIdList"] as? [String] {
            self.instanceGroupIdList = value
        }
        if let value = dict["InstanceIdList"] as? [String] {
            self.instanceIdList = value
        }
    }
}

public class UninstallAppResponseBody : Tea.TeaModel {
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
            map["RequestId"] = self.requestId!
        }
        if self.taskId != nil {
            map["TaskId"] = self.taskId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["TaskId"] as? String {
            self.taskId = value
        }
    }
}

public class UninstallAppResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UninstallAppResponseBody?

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
            var model = UninstallAppResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class UpdateCustomImageNameRequest : Tea.TeaModel {
    public var imageId: String?

    public var imageName: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.imageId != nil {
            map["ImageId"] = self.imageId!
        }
        if self.imageName != nil {
            map["ImageName"] = self.imageName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ImageId"] as? String {
            self.imageId = value
        }
        if let value = dict["ImageName"] as? String {
            self.imageName = value
        }
    }
}

public class UpdateCustomImageNameResponseBody : Tea.TeaModel {
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

public class UpdateCustomImageNameResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpdateCustomImageNameResponseBody?

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
            var model = UpdateCustomImageNameResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class UpdateInstanceGroupImageRequest : Tea.TeaModel {
    public var imageId: String?

    public var instanceGroupIds: [String]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.imageId != nil {
            map["ImageId"] = self.imageId!
        }
        if self.instanceGroupIds != nil {
            map["InstanceGroupIds"] = self.instanceGroupIds!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ImageId"] as? String {
            self.imageId = value
        }
        if let value = dict["InstanceGroupIds"] as? [String] {
            self.instanceGroupIds = value
        }
    }
}

public class UpdateInstanceGroupImageResponseBody : Tea.TeaModel {
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

public class UpdateInstanceGroupImageResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpdateInstanceGroupImageResponseBody?

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
            var model = UpdateInstanceGroupImageResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class UpdateInstanceImageRequest : Tea.TeaModel {
    public var imageId: String?

    public var instanceIdList: [String]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.imageId != nil {
            map["ImageId"] = self.imageId!
        }
        if self.instanceIdList != nil {
            map["InstanceIdList"] = self.instanceIdList!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ImageId"] as? String {
            self.imageId = value
        }
        if let value = dict["InstanceIdList"] as? [String] {
            self.instanceIdList = value
        }
    }
}

public class UpdateInstanceImageResponseBody : Tea.TeaModel {
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
            map["RequestId"] = self.requestId!
        }
        if self.taskId != nil {
            map["TaskId"] = self.taskId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["TaskId"] as? String {
            self.taskId = value
        }
    }
}

public class UpdateInstanceImageResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpdateInstanceImageResponseBody?

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
            var model = UpdateInstanceImageResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class UpgradeAndroidInstanceGroupRequest : Tea.TeaModel {
    public var autoPay: Bool?

    public var increaseNumberOfInstance: Int32?

    public var instanceGroupId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.autoPay != nil {
            map["AutoPay"] = self.autoPay!
        }
        if self.increaseNumberOfInstance != nil {
            map["IncreaseNumberOfInstance"] = self.increaseNumberOfInstance!
        }
        if self.instanceGroupId != nil {
            map["InstanceGroupId"] = self.instanceGroupId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AutoPay"] as? Bool {
            self.autoPay = value
        }
        if let value = dict["IncreaseNumberOfInstance"] as? Int32 {
            self.increaseNumberOfInstance = value
        }
        if let value = dict["InstanceGroupId"] as? String {
            self.instanceGroupId = value
        }
    }
}

public class UpgradeAndroidInstanceGroupResponseBody : Tea.TeaModel {
    public var instanceIds: String?

    public var orderId: String?

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
        if self.instanceIds != nil {
            map["InstanceIds"] = self.instanceIds!
        }
        if self.orderId != nil {
            map["OrderId"] = self.orderId!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["InstanceIds"] as? String {
            self.instanceIds = value
        }
        if let value = dict["OrderId"] as? String {
            self.orderId = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class UpgradeAndroidInstanceGroupResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpgradeAndroidInstanceGroupResponseBody?

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
            var model = UpgradeAndroidInstanceGroupResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}
