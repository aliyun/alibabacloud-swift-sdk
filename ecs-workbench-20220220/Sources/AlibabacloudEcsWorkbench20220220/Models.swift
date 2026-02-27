import Foundation
import Tea
import TeaUtils
import AlibabacloudOpenApi
import AlibabaCloudOpenApiUtil
import AlibabacloudEndpointUtil

public class GetInstanceRecordConfigRequest : Tea.TeaModel {
    public var instanceId: String?

    public var regionId: String?

    public override init() {
        super.init()
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
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
    }
}

public class GetInstanceRecordConfigResponseBody : Tea.TeaModel {
    public class Root : Tea.TeaModel {
        public var expirationDays: Int32?

        public var instanceId: String?

        public var parentId: String?

        public var recordStorageTarget: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.expirationDays != nil {
                map["ExpirationDays"] = self.expirationDays!
            }
            if self.instanceId != nil {
                map["InstanceId"] = self.instanceId!
            }
            if self.parentId != nil {
                map["ParentId"] = self.parentId!
            }
            if self.recordStorageTarget != nil {
                map["RecordStorageTarget"] = self.recordStorageTarget!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["ExpirationDays"] as? Int32 {
                self.expirationDays = value
            }
            if let value = dict["InstanceId"] as? String {
                self.instanceId = value
            }
            if let value = dict["ParentId"] as? String {
                self.parentId = value
            }
            if let value = dict["RecordStorageTarget"] as? String {
                self.recordStorageTarget = value
            }
        }
    }
    public var code: String?

    public var message: String?

    public var requestId: String?

    public var root: GetInstanceRecordConfigResponseBody.Root?

    public var success: Bool?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.root?.validate()
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
        if self.root != nil {
            map["Root"] = self.root?.toMap()
        }
        if self.success != nil {
            map["Success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Root"] as? [String: Any?] {
            var model = GetInstanceRecordConfigResponseBody.Root()
            model.fromMap(value)
            self.root = model
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
    }
}

public class GetInstanceRecordConfigResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetInstanceRecordConfigResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = GetInstanceRecordConfigResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ListInstanceRecordsRequest : Tea.TeaModel {
    public var instanceId: String?

    public var pageNumber: Int32?

    public var pageSize: Int32?

    public var regionId: String?

    public override init() {
        super.init()
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
        if self.pageNumber != nil {
            map["PageNumber"] = self.pageNumber!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["PageNumber"] as? Int32 {
            self.pageNumber = value
        }
        if let value = dict["PageSize"] as? Int32 {
            self.pageSize = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
    }
}

public class ListInstanceRecordsResponseBody : Tea.TeaModel {
    public class Root : Tea.TeaModel {
        public class RecordList : Tea.TeaModel {
            public var accountId: Int64?

            public var expireTime: String?

            public var gmtCreate: String?

            public var instanceId: String?

            public var instanceRecordUrl: String?

            public var recordDurationMillis: Int64?

            public var status: String?

            public var terminalSessionToken: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.accountId != nil {
                    map["AccountId"] = self.accountId!
                }
                if self.expireTime != nil {
                    map["ExpireTime"] = self.expireTime!
                }
                if self.gmtCreate != nil {
                    map["GmtCreate"] = self.gmtCreate!
                }
                if self.instanceId != nil {
                    map["InstanceId"] = self.instanceId!
                }
                if self.instanceRecordUrl != nil {
                    map["InstanceRecordUrl"] = self.instanceRecordUrl!
                }
                if self.recordDurationMillis != nil {
                    map["RecordDurationMillis"] = self.recordDurationMillis!
                }
                if self.status != nil {
                    map["Status"] = self.status!
                }
                if self.terminalSessionToken != nil {
                    map["TerminalSessionToken"] = self.terminalSessionToken!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["AccountId"] as? Int64 {
                    self.accountId = value
                }
                if let value = dict["ExpireTime"] as? String {
                    self.expireTime = value
                }
                if let value = dict["GmtCreate"] as? String {
                    self.gmtCreate = value
                }
                if let value = dict["InstanceId"] as? String {
                    self.instanceId = value
                }
                if let value = dict["InstanceRecordUrl"] as? String {
                    self.instanceRecordUrl = value
                }
                if let value = dict["RecordDurationMillis"] as? Int64 {
                    self.recordDurationMillis = value
                }
                if let value = dict["Status"] as? String {
                    self.status = value
                }
                if let value = dict["TerminalSessionToken"] as? String {
                    self.terminalSessionToken = value
                }
            }
        }
        public var recordList: [ListInstanceRecordsResponseBody.Root.RecordList]?

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
            if self.recordList != nil {
                var tmp : [Any] = []
                for k in self.recordList! {
                    tmp.append(k.toMap())
                }
                map["RecordList"] = tmp
            }
            if self.totalCount != nil {
                map["TotalCount"] = self.totalCount!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["RecordList"] as? [Any?] {
                var tmp : [ListInstanceRecordsResponseBody.Root.RecordList] = []
                for v in value {
                    if v != nil {
                        var model = ListInstanceRecordsResponseBody.Root.RecordList()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.recordList = tmp
            }
            if let value = dict["TotalCount"] as? Int32 {
                self.totalCount = value
            }
        }
    }
    public var code: String?

    public var message: String?

    public var requestId: String?

    public var root: ListInstanceRecordsResponseBody.Root?

    public var success: Bool?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.root?.validate()
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
        if self.root != nil {
            map["Root"] = self.root?.toMap()
        }
        if self.success != nil {
            map["Success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Root"] as? [String: Any?] {
            var model = ListInstanceRecordsResponseBody.Root()
            model.fromMap(value)
            self.root = model
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
    }
}

public class ListInstanceRecordsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListInstanceRecordsResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = ListInstanceRecordsResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ListTerminalCommandsRequest : Tea.TeaModel {
    public var pageNumber: Int32?

    public var pageSize: Int32?

    public var regionId: String?

    public var terminalSessionToken: String?

    public override init() {
        super.init()
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
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.terminalSessionToken != nil {
            map["TerminalSessionToken"] = self.terminalSessionToken!
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
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["TerminalSessionToken"] as? String {
            self.terminalSessionToken = value
        }
    }
}

public class ListTerminalCommandsResponseBody : Tea.TeaModel {
    public class TerminalCommandList : Tea.TeaModel {
        public var commandLine: String?

        public var createTime: String?

        public var executePath: String?

        public var loginUser: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.commandLine != nil {
                map["CommandLine"] = self.commandLine!
            }
            if self.createTime != nil {
                map["CreateTime"] = self.createTime!
            }
            if self.executePath != nil {
                map["ExecutePath"] = self.executePath!
            }
            if self.loginUser != nil {
                map["LoginUser"] = self.loginUser!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["CommandLine"] as? String {
                self.commandLine = value
            }
            if let value = dict["CreateTime"] as? String {
                self.createTime = value
            }
            if let value = dict["ExecutePath"] as? String {
                self.executePath = value
            }
            if let value = dict["LoginUser"] as? String {
                self.loginUser = value
            }
        }
    }
    public var pageNumber: Int32?

    public var pageSize: Int32?

    public var requestId: String?

    public var terminalCommandList: [ListTerminalCommandsResponseBody.TerminalCommandList]?

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
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.terminalCommandList != nil {
            var tmp : [Any] = []
            for k in self.terminalCommandList! {
                tmp.append(k.toMap())
            }
            map["TerminalCommandList"] = tmp
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
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["TerminalCommandList"] as? [Any?] {
            var tmp : [ListTerminalCommandsResponseBody.TerminalCommandList] = []
            for v in value {
                if v != nil {
                    var model = ListTerminalCommandsResponseBody.TerminalCommandList()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.terminalCommandList = tmp
        }
        if let value = dict["TotalCount"] as? Int32 {
            self.totalCount = value
        }
    }
}

public class ListTerminalCommandsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListTerminalCommandsResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = ListTerminalCommandsResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class LoginInstanceRequest : Tea.TeaModel {
    public class InstanceLoginInfo : Tea.TeaModel {
        public class EncryptionOptions : Tea.TeaModel {
            public var enabled: Bool?

            public var KMSKeyId: String?

            public var mode: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.enabled != nil {
                    map["Enabled"] = self.enabled!
                }
                if self.KMSKeyId != nil {
                    map["KMSKeyId"] = self.KMSKeyId!
                }
                if self.mode != nil {
                    map["Mode"] = self.mode!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["Enabled"] as? Bool {
                    self.enabled = value
                }
                if let value = dict["KMSKeyId"] as? String {
                    self.KMSKeyId = value
                }
                if let value = dict["Mode"] as? String {
                    self.mode = value
                }
            }
        }
        public class Options : Tea.TeaModel {
            public class ContainerInfo : Tea.TeaModel {
                public var clusterId: String?

                public var clusterName: String?

                public var containerName: String?

                public var deployment: String?

                public var endpoint: String?

                public var headers: [String: Any]?

                public var namespace: String?

                public var podName: String?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.clusterId != nil {
                        map["ClusterId"] = self.clusterId!
                    }
                    if self.clusterName != nil {
                        map["ClusterName"] = self.clusterName!
                    }
                    if self.containerName != nil {
                        map["ContainerName"] = self.containerName!
                    }
                    if self.deployment != nil {
                        map["Deployment"] = self.deployment!
                    }
                    if self.endpoint != nil {
                        map["Endpoint"] = self.endpoint!
                    }
                    if self.headers != nil {
                        map["Headers"] = self.headers!
                    }
                    if self.namespace != nil {
                        map["Namespace"] = self.namespace!
                    }
                    if self.podName != nil {
                        map["PodName"] = self.podName!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["ClusterId"] as? String {
                        self.clusterId = value
                    }
                    if let value = dict["ClusterName"] as? String {
                        self.clusterName = value
                    }
                    if let value = dict["ContainerName"] as? String {
                        self.containerName = value
                    }
                    if let value = dict["Deployment"] as? String {
                        self.deployment = value
                    }
                    if let value = dict["Endpoint"] as? String {
                        self.endpoint = value
                    }
                    if let value = dict["Headers"] as? [String: Any] {
                        self.headers = value
                    }
                    if let value = dict["Namespace"] as? String {
                        self.namespace = value
                    }
                    if let value = dict["PodName"] as? String {
                        self.podName = value
                    }
                }
            }
            public var audioMuteSeconds: Int32?

            public var containerInfo: LoginInstanceRequest.InstanceLoginInfo.Options.ContainerInfo?

            public var fixedHeight: Int32?

            public var fixedWidth: Int32?

            public var notificationEventTypes: String?

            public var notificationRecipientUrl: String?

            public var notificationRetryIntervalSeconds: Int32?

            public var notificationRetryLimit: Int32?

            public var operationDisableSeconds: Int32?

            public var sessionControl: String?

            public var videoFreezeSeconds: Int32?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
                try self.containerInfo?.validate()
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.audioMuteSeconds != nil {
                    map["AudioMuteSeconds"] = self.audioMuteSeconds!
                }
                if self.containerInfo != nil {
                    map["ContainerInfo"] = self.containerInfo?.toMap()
                }
                if self.fixedHeight != nil {
                    map["FixedHeight"] = self.fixedHeight!
                }
                if self.fixedWidth != nil {
                    map["FixedWidth"] = self.fixedWidth!
                }
                if self.notificationEventTypes != nil {
                    map["NotificationEventTypes"] = self.notificationEventTypes!
                }
                if self.notificationRecipientUrl != nil {
                    map["NotificationRecipientUrl"] = self.notificationRecipientUrl!
                }
                if self.notificationRetryIntervalSeconds != nil {
                    map["NotificationRetryIntervalSeconds"] = self.notificationRetryIntervalSeconds!
                }
                if self.notificationRetryLimit != nil {
                    map["NotificationRetryLimit"] = self.notificationRetryLimit!
                }
                if self.operationDisableSeconds != nil {
                    map["OperationDisableSeconds"] = self.operationDisableSeconds!
                }
                if self.sessionControl != nil {
                    map["SessionControl"] = self.sessionControl!
                }
                if self.videoFreezeSeconds != nil {
                    map["VideoFreezeSeconds"] = self.videoFreezeSeconds!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["AudioMuteSeconds"] as? Int32 {
                    self.audioMuteSeconds = value
                }
                if let value = dict["ContainerInfo"] as? [String: Any?] {
                    var model = LoginInstanceRequest.InstanceLoginInfo.Options.ContainerInfo()
                    model.fromMap(value)
                    self.containerInfo = model
                }
                if let value = dict["FixedHeight"] as? Int32 {
                    self.fixedHeight = value
                }
                if let value = dict["FixedWidth"] as? Int32 {
                    self.fixedWidth = value
                }
                if let value = dict["NotificationEventTypes"] as? String {
                    self.notificationEventTypes = value
                }
                if let value = dict["NotificationRecipientUrl"] as? String {
                    self.notificationRecipientUrl = value
                }
                if let value = dict["NotificationRetryIntervalSeconds"] as? Int32 {
                    self.notificationRetryIntervalSeconds = value
                }
                if let value = dict["NotificationRetryLimit"] as? Int32 {
                    self.notificationRetryLimit = value
                }
                if let value = dict["OperationDisableSeconds"] as? Int32 {
                    self.operationDisableSeconds = value
                }
                if let value = dict["SessionControl"] as? String {
                    self.sessionControl = value
                }
                if let value = dict["VideoFreezeSeconds"] as? Int32 {
                    self.videoFreezeSeconds = value
                }
            }
        }
        public var authenticationType: String?

        public var certificate: String?

        public var credentialToken: String?

        public var dockerContainerName: String?

        public var dockerExec: String?

        public var durationSeconds: Int64?

        public var encryptionOptions: LoginInstanceRequest.InstanceLoginInfo.EncryptionOptions?

        public var expireTime: String?

        public var host: String?

        public var instanceId: String?

        public var instanceType: String?

        public var loginByInstanceCredential: Bool?

        public var loginByInstanceShortcut: Bool?

        public var networkAccessMode: String?

        public var options: LoginInstanceRequest.InstanceLoginInfo.Options?

        public var passPhrase: String?

        public var password: String?

        public var port: Int32?

        public var protocol_: String?

        public var regionId: String?

        public var resourceGroupId: String?

        public var shortcutToken: String?

        public var username: String?

        public var vpcId: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.encryptionOptions?.validate()
            try self.options?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.authenticationType != nil {
                map["AuthenticationType"] = self.authenticationType!
            }
            if self.certificate != nil {
                map["Certificate"] = self.certificate!
            }
            if self.credentialToken != nil {
                map["CredentialToken"] = self.credentialToken!
            }
            if self.dockerContainerName != nil {
                map["DockerContainerName"] = self.dockerContainerName!
            }
            if self.dockerExec != nil {
                map["DockerExec"] = self.dockerExec!
            }
            if self.durationSeconds != nil {
                map["DurationSeconds"] = self.durationSeconds!
            }
            if self.encryptionOptions != nil {
                map["EncryptionOptions"] = self.encryptionOptions?.toMap()
            }
            if self.expireTime != nil {
                map["ExpireTime"] = self.expireTime!
            }
            if self.host != nil {
                map["Host"] = self.host!
            }
            if self.instanceId != nil {
                map["InstanceId"] = self.instanceId!
            }
            if self.instanceType != nil {
                map["InstanceType"] = self.instanceType!
            }
            if self.loginByInstanceCredential != nil {
                map["LoginByInstanceCredential"] = self.loginByInstanceCredential!
            }
            if self.loginByInstanceShortcut != nil {
                map["LoginByInstanceShortcut"] = self.loginByInstanceShortcut!
            }
            if self.networkAccessMode != nil {
                map["NetworkAccessMode"] = self.networkAccessMode!
            }
            if self.options != nil {
                map["Options"] = self.options?.toMap()
            }
            if self.passPhrase != nil {
                map["PassPhrase"] = self.passPhrase!
            }
            if self.password != nil {
                map["Password"] = self.password!
            }
            if self.port != nil {
                map["Port"] = self.port!
            }
            if self.protocol_ != nil {
                map["Protocol"] = self.protocol_!
            }
            if self.regionId != nil {
                map["RegionId"] = self.regionId!
            }
            if self.resourceGroupId != nil {
                map["ResourceGroupId"] = self.resourceGroupId!
            }
            if self.shortcutToken != nil {
                map["ShortcutToken"] = self.shortcutToken!
            }
            if self.username != nil {
                map["Username"] = self.username!
            }
            if self.vpcId != nil {
                map["VpcId"] = self.vpcId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["AuthenticationType"] as? String {
                self.authenticationType = value
            }
            if let value = dict["Certificate"] as? String {
                self.certificate = value
            }
            if let value = dict["CredentialToken"] as? String {
                self.credentialToken = value
            }
            if let value = dict["DockerContainerName"] as? String {
                self.dockerContainerName = value
            }
            if let value = dict["DockerExec"] as? String {
                self.dockerExec = value
            }
            if let value = dict["DurationSeconds"] as? Int64 {
                self.durationSeconds = value
            }
            if let value = dict["EncryptionOptions"] as? [String: Any?] {
                var model = LoginInstanceRequest.InstanceLoginInfo.EncryptionOptions()
                model.fromMap(value)
                self.encryptionOptions = model
            }
            if let value = dict["ExpireTime"] as? String {
                self.expireTime = value
            }
            if let value = dict["Host"] as? String {
                self.host = value
            }
            if let value = dict["InstanceId"] as? String {
                self.instanceId = value
            }
            if let value = dict["InstanceType"] as? String {
                self.instanceType = value
            }
            if let value = dict["LoginByInstanceCredential"] as? Bool {
                self.loginByInstanceCredential = value
            }
            if let value = dict["LoginByInstanceShortcut"] as? Bool {
                self.loginByInstanceShortcut = value
            }
            if let value = dict["NetworkAccessMode"] as? String {
                self.networkAccessMode = value
            }
            if let value = dict["Options"] as? [String: Any?] {
                var model = LoginInstanceRequest.InstanceLoginInfo.Options()
                model.fromMap(value)
                self.options = model
            }
            if let value = dict["PassPhrase"] as? String {
                self.passPhrase = value
            }
            if let value = dict["Password"] as? String {
                self.password = value
            }
            if let value = dict["Port"] as? Int32 {
                self.port = value
            }
            if let value = dict["Protocol"] as? String {
                self.protocol_ = value
            }
            if let value = dict["RegionId"] as? String {
                self.regionId = value
            }
            if let value = dict["ResourceGroupId"] as? String {
                self.resourceGroupId = value
            }
            if let value = dict["ShortcutToken"] as? String {
                self.shortcutToken = value
            }
            if let value = dict["Username"] as? String {
                self.username = value
            }
            if let value = dict["VpcId"] as? String {
                self.vpcId = value
            }
        }
    }
    public class PartnerInfo : Tea.TeaModel {
        public var partnerId: String?

        public var partnerName: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.partnerId != nil {
                map["PartnerId"] = self.partnerId!
            }
            if self.partnerName != nil {
                map["PartnerName"] = self.partnerName!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["PartnerId"] as? String {
                self.partnerId = value
            }
            if let value = dict["PartnerName"] as? String {
                self.partnerName = value
            }
        }
    }
    public class UserAccount : Tea.TeaModel {
        public class Options : Tea.TeaModel {
            public var loginLimit: Int64?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.loginLimit != nil {
                    map["LoginLimit"] = self.loginLimit!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["LoginLimit"] as? Int64 {
                    self.loginLimit = value
                }
            }
        }
        public var accountId: Int64?

        public var accountPlatform: String?

        public var accountStructure: String?

        public var durationSeconds: Int64?

        public var empId: String?

        public var expireTime: String?

        public var loginName: String?

        public var options: LoginInstanceRequest.UserAccount.Options?

        public var parentId: Int64?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.options?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.accountId != nil {
                map["AccountId"] = self.accountId!
            }
            if self.accountPlatform != nil {
                map["AccountPlatform"] = self.accountPlatform!
            }
            if self.accountStructure != nil {
                map["AccountStructure"] = self.accountStructure!
            }
            if self.durationSeconds != nil {
                map["DurationSeconds"] = self.durationSeconds!
            }
            if self.empId != nil {
                map["EmpId"] = self.empId!
            }
            if self.expireTime != nil {
                map["ExpireTime"] = self.expireTime!
            }
            if self.loginName != nil {
                map["LoginName"] = self.loginName!
            }
            if self.options != nil {
                map["Options"] = self.options?.toMap()
            }
            if self.parentId != nil {
                map["ParentId"] = self.parentId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["AccountId"] as? Int64 {
                self.accountId = value
            }
            if let value = dict["AccountPlatform"] as? String {
                self.accountPlatform = value
            }
            if let value = dict["AccountStructure"] as? String {
                self.accountStructure = value
            }
            if let value = dict["DurationSeconds"] as? Int64 {
                self.durationSeconds = value
            }
            if let value = dict["EmpId"] as? String {
                self.empId = value
            }
            if let value = dict["ExpireTime"] as? String {
                self.expireTime = value
            }
            if let value = dict["LoginName"] as? String {
                self.loginName = value
            }
            if let value = dict["Options"] as? [String: Any?] {
                var model = LoginInstanceRequest.UserAccount.Options()
                model.fromMap(value)
                self.options = model
            }
            if let value = dict["ParentId"] as? Int64 {
                self.parentId = value
            }
        }
    }
    public var instanceLoginInfo: LoginInstanceRequest.InstanceLoginInfo?

    public var partnerInfo: LoginInstanceRequest.PartnerInfo?

    public var userAccount: LoginInstanceRequest.UserAccount?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.instanceLoginInfo?.validate()
        try self.partnerInfo?.validate()
        try self.userAccount?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.instanceLoginInfo != nil {
            map["InstanceLoginInfo"] = self.instanceLoginInfo?.toMap()
        }
        if self.partnerInfo != nil {
            map["PartnerInfo"] = self.partnerInfo?.toMap()
        }
        if self.userAccount != nil {
            map["UserAccount"] = self.userAccount?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["InstanceLoginInfo"] as? [String: Any?] {
            var model = LoginInstanceRequest.InstanceLoginInfo()
            model.fromMap(value)
            self.instanceLoginInfo = model
        }
        if let value = dict["PartnerInfo"] as? [String: Any?] {
            var model = LoginInstanceRequest.PartnerInfo()
            model.fromMap(value)
            self.partnerInfo = model
        }
        if let value = dict["UserAccount"] as? [String: Any?] {
            var model = LoginInstanceRequest.UserAccount()
            model.fromMap(value)
            self.userAccount = model
        }
    }
}

public class LoginInstanceResponseBody : Tea.TeaModel {
    public class Root : Tea.TeaModel {
        public class DisposableAccount : Tea.TeaModel {
            public var loginFormActionUrl: String?

            public var loginUrl: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.loginFormActionUrl != nil {
                    map["LoginFormActionUrl"] = self.loginFormActionUrl!
                }
                if self.loginUrl != nil {
                    map["LoginUrl"] = self.loginUrl!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["LoginFormActionUrl"] as? String {
                    self.loginFormActionUrl = value
                }
                if let value = dict["LoginUrl"] as? String {
                    self.loginUrl = value
                }
            }
        }
        public class InstanceLoginInfoList : Tea.TeaModel {
            public class InstanceLoginView : Tea.TeaModel {
                public var defaultViewUrl: String?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.defaultViewUrl != nil {
                        map["DefaultViewUrl"] = self.defaultViewUrl!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["DefaultViewUrl"] as? String {
                        self.defaultViewUrl = value
                    }
                }
            }
            public var instanceId: String?

            public var instanceLoginToken: String?

            public var instanceLoginView: LoginInstanceResponseBody.Root.InstanceLoginInfoList.InstanceLoginView?

            public var loginSuccess: Bool?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
                try self.instanceLoginView?.validate()
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.instanceId != nil {
                    map["InstanceId"] = self.instanceId!
                }
                if self.instanceLoginToken != nil {
                    map["InstanceLoginToken"] = self.instanceLoginToken!
                }
                if self.instanceLoginView != nil {
                    map["InstanceLoginView"] = self.instanceLoginView?.toMap()
                }
                if self.loginSuccess != nil {
                    map["LoginSuccess"] = self.loginSuccess!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["InstanceId"] as? String {
                    self.instanceId = value
                }
                if let value = dict["InstanceLoginToken"] as? String {
                    self.instanceLoginToken = value
                }
                if let value = dict["InstanceLoginView"] as? [String: Any?] {
                    var model = LoginInstanceResponseBody.Root.InstanceLoginInfoList.InstanceLoginView()
                    model.fromMap(value)
                    self.instanceLoginView = model
                }
                if let value = dict["LoginSuccess"] as? Bool {
                    self.loginSuccess = value
                }
            }
        }
        public class SessionControl : Tea.TeaModel {
            public var baseUrl: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.baseUrl != nil {
                    map["BaseUrl"] = self.baseUrl!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["BaseUrl"] as? String {
                    self.baseUrl = value
                }
            }
        }
        public var disposableAccount: LoginInstanceResponseBody.Root.DisposableAccount?

        public var instanceLoginInfoList: [LoginInstanceResponseBody.Root.InstanceLoginInfoList]?

        public var sessionControl: LoginInstanceResponseBody.Root.SessionControl?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.disposableAccount?.validate()
            try self.sessionControl?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.disposableAccount != nil {
                map["DisposableAccount"] = self.disposableAccount?.toMap()
            }
            if self.instanceLoginInfoList != nil {
                var tmp : [Any] = []
                for k in self.instanceLoginInfoList! {
                    tmp.append(k.toMap())
                }
                map["InstanceLoginInfoList"] = tmp
            }
            if self.sessionControl != nil {
                map["SessionControl"] = self.sessionControl?.toMap()
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["DisposableAccount"] as? [String: Any?] {
                var model = LoginInstanceResponseBody.Root.DisposableAccount()
                model.fromMap(value)
                self.disposableAccount = model
            }
            if let value = dict["InstanceLoginInfoList"] as? [Any?] {
                var tmp : [LoginInstanceResponseBody.Root.InstanceLoginInfoList] = []
                for v in value {
                    if v != nil {
                        var model = LoginInstanceResponseBody.Root.InstanceLoginInfoList()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.instanceLoginInfoList = tmp
            }
            if let value = dict["SessionControl"] as? [String: Any?] {
                var model = LoginInstanceResponseBody.Root.SessionControl()
                model.fromMap(value)
                self.sessionControl = model
            }
        }
    }
    public var code: String?

    public var message: String?

    public var requestId: String?

    public var root: LoginInstanceResponseBody.Root?

    public var success: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.root?.validate()
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
        if self.root != nil {
            map["Root"] = self.root?.toMap()
        }
        if self.success != nil {
            map["Success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Root"] as? [String: Any?] {
            var model = LoginInstanceResponseBody.Root()
            model.fromMap(value)
            self.root = model
        }
        if let value = dict["Success"] as? String {
            self.success = value
        }
    }
}

public class LoginInstanceResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: LoginInstanceResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = LoginInstanceResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class SetInstanceRecordConfigRequest : Tea.TeaModel {
    public var enabled: Bool?

    public var expirationDays: Int32?

    public var instanceId: String?

    public var recordStorageTarget: String?

    public var regionId: String?

    public var resourceRegionId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.enabled != nil {
            map["Enabled"] = self.enabled!
        }
        if self.expirationDays != nil {
            map["ExpirationDays"] = self.expirationDays!
        }
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.recordStorageTarget != nil {
            map["RecordStorageTarget"] = self.recordStorageTarget!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.resourceRegionId != nil {
            map["ResourceRegionId"] = self.resourceRegionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Enabled"] as? Bool {
            self.enabled = value
        }
        if let value = dict["ExpirationDays"] as? Int32 {
            self.expirationDays = value
        }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["RecordStorageTarget"] as? String {
            self.recordStorageTarget = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["ResourceRegionId"] as? String {
            self.resourceRegionId = value
        }
    }
}

public class SetInstanceRecordConfigResponseBody : Tea.TeaModel {
    public var code: String?

    public var message: String?

    public var requestId: String?

    public var root: Bool?

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
        if self.root != nil {
            map["Root"] = self.root!
        }
        if self.success != nil {
            map["Success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Root"] as? Bool {
            self.root = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
    }
}

public class SetInstanceRecordConfigResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: SetInstanceRecordConfigResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = SetInstanceRecordConfigResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ViewInstanceRecordsRequest : Tea.TeaModel {
    public var instanceId: String?

    public var regionId: String?

    public var terminalSessionToken: String?

    public override init() {
        super.init()
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
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.terminalSessionToken != nil {
            map["TerminalSessionToken"] = self.terminalSessionToken!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["TerminalSessionToken"] as? String {
            self.terminalSessionToken = value
        }
    }
}

public class ViewInstanceRecordsResponseBody : Tea.TeaModel {
    public var code: String?

    public var message: String?

    public var requestId: String?

    public var root: Bool?

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
        if self.root != nil {
            map["Root"] = self.root!
        }
        if self.success != nil {
            map["Success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Root"] as? Bool {
            self.root = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
    }
}

public class ViewInstanceRecordsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ViewInstanceRecordsResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = ViewInstanceRecordsResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}
