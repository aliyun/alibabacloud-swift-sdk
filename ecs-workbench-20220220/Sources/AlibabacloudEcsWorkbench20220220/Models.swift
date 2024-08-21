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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("InstanceId") {
            self.instanceId = dict["InstanceId"] as! String
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("ExpirationDays") {
                self.expirationDays = dict["ExpirationDays"] as! Int32
            }
            if dict.keys.contains("InstanceId") {
                self.instanceId = dict["InstanceId"] as! String
            }
            if dict.keys.contains("ParentId") {
                self.parentId = dict["ParentId"] as! String
            }
            if dict.keys.contains("RecordStorageTarget") {
                self.recordStorageTarget = dict["RecordStorageTarget"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Message") {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Root") {
            var model = GetInstanceRecordConfigResponseBody.Root()
            model.fromMap(dict["Root"] as! [String: Any])
            self.root = model
        }
        if dict.keys.contains("Success") {
            self.success = dict["Success"] as! Bool
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = GetInstanceRecordConfigResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("InstanceId") {
            self.instanceId = dict["InstanceId"] as! String
        }
        if dict.keys.contains("PageNumber") {
            self.pageNumber = dict["PageNumber"] as! Int32
        }
        if dict.keys.contains("PageSize") {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
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

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("AccountId") {
                    self.accountId = dict["AccountId"] as! Int64
                }
                if dict.keys.contains("ExpireTime") {
                    self.expireTime = dict["ExpireTime"] as! String
                }
                if dict.keys.contains("GmtCreate") {
                    self.gmtCreate = dict["GmtCreate"] as! String
                }
                if dict.keys.contains("InstanceId") {
                    self.instanceId = dict["InstanceId"] as! String
                }
                if dict.keys.contains("InstanceRecordUrl") {
                    self.instanceRecordUrl = dict["InstanceRecordUrl"] as! String
                }
                if dict.keys.contains("RecordDurationMillis") {
                    self.recordDurationMillis = dict["RecordDurationMillis"] as! Int64
                }
                if dict.keys.contains("Status") {
                    self.status = dict["Status"] as! String
                }
                if dict.keys.contains("TerminalSessionToken") {
                    self.terminalSessionToken = dict["TerminalSessionToken"] as! String
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("RecordList") {
                var tmp : [ListInstanceRecordsResponseBody.Root.RecordList] = []
                for v in dict["RecordList"] as! [Any] {
                    var model = ListInstanceRecordsResponseBody.Root.RecordList()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.recordList = tmp
            }
            if dict.keys.contains("TotalCount") {
                self.totalCount = dict["TotalCount"] as! Int32
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Message") {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Root") {
            var model = ListInstanceRecordsResponseBody.Root()
            model.fromMap(dict["Root"] as! [String: Any])
            self.root = model
        }
        if dict.keys.contains("Success") {
            self.success = dict["Success"] as! Bool
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = ListInstanceRecordsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class LoginInstanceRequest : Tea.TeaModel {
    public class InstanceLoginInfo : Tea.TeaModel {
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

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("ClusterId") {
                        self.clusterId = dict["ClusterId"] as! String
                    }
                    if dict.keys.contains("ClusterName") {
                        self.clusterName = dict["ClusterName"] as! String
                    }
                    if dict.keys.contains("ContainerName") {
                        self.containerName = dict["ContainerName"] as! String
                    }
                    if dict.keys.contains("Deployment") {
                        self.deployment = dict["Deployment"] as! String
                    }
                    if dict.keys.contains("Endpoint") {
                        self.endpoint = dict["Endpoint"] as! String
                    }
                    if dict.keys.contains("Headers") {
                        self.headers = dict["Headers"] as! [String: Any]
                    }
                    if dict.keys.contains("Namespace") {
                        self.namespace = dict["Namespace"] as! String
                    }
                    if dict.keys.contains("PodName") {
                        self.podName = dict["PodName"] as! String
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

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("AudioMuteSeconds") {
                    self.audioMuteSeconds = dict["AudioMuteSeconds"] as! Int32
                }
                if dict.keys.contains("ContainerInfo") {
                    var model = LoginInstanceRequest.InstanceLoginInfo.Options.ContainerInfo()
                    model.fromMap(dict["ContainerInfo"] as! [String: Any])
                    self.containerInfo = model
                }
                if dict.keys.contains("FixedHeight") {
                    self.fixedHeight = dict["FixedHeight"] as! Int32
                }
                if dict.keys.contains("FixedWidth") {
                    self.fixedWidth = dict["FixedWidth"] as! Int32
                }
                if dict.keys.contains("NotificationEventTypes") {
                    self.notificationEventTypes = dict["NotificationEventTypes"] as! String
                }
                if dict.keys.contains("NotificationRecipientUrl") {
                    self.notificationRecipientUrl = dict["NotificationRecipientUrl"] as! String
                }
                if dict.keys.contains("NotificationRetryIntervalSeconds") {
                    self.notificationRetryIntervalSeconds = dict["NotificationRetryIntervalSeconds"] as! Int32
                }
                if dict.keys.contains("NotificationRetryLimit") {
                    self.notificationRetryLimit = dict["NotificationRetryLimit"] as! Int32
                }
                if dict.keys.contains("OperationDisableSeconds") {
                    self.operationDisableSeconds = dict["OperationDisableSeconds"] as! Int32
                }
                if dict.keys.contains("SessionControl") {
                    self.sessionControl = dict["SessionControl"] as! String
                }
                if dict.keys.contains("VideoFreezeSeconds") {
                    self.videoFreezeSeconds = dict["VideoFreezeSeconds"] as! Int32
                }
            }
        }
        public var authenticationType: String?

        public var certificate: String?

        public var credentialToken: String?

        public var dockerContainerName: String?

        public var dockerExec: String?

        public var durationSeconds: Int64?

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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("AuthenticationType") {
                self.authenticationType = dict["AuthenticationType"] as! String
            }
            if dict.keys.contains("Certificate") {
                self.certificate = dict["Certificate"] as! String
            }
            if dict.keys.contains("CredentialToken") {
                self.credentialToken = dict["CredentialToken"] as! String
            }
            if dict.keys.contains("DockerContainerName") {
                self.dockerContainerName = dict["DockerContainerName"] as! String
            }
            if dict.keys.contains("DockerExec") {
                self.dockerExec = dict["DockerExec"] as! String
            }
            if dict.keys.contains("DurationSeconds") {
                self.durationSeconds = dict["DurationSeconds"] as! Int64
            }
            if dict.keys.contains("ExpireTime") {
                self.expireTime = dict["ExpireTime"] as! String
            }
            if dict.keys.contains("Host") {
                self.host = dict["Host"] as! String
            }
            if dict.keys.contains("InstanceId") {
                self.instanceId = dict["InstanceId"] as! String
            }
            if dict.keys.contains("InstanceType") {
                self.instanceType = dict["InstanceType"] as! String
            }
            if dict.keys.contains("LoginByInstanceCredential") {
                self.loginByInstanceCredential = dict["LoginByInstanceCredential"] as! Bool
            }
            if dict.keys.contains("LoginByInstanceShortcut") {
                self.loginByInstanceShortcut = dict["LoginByInstanceShortcut"] as! Bool
            }
            if dict.keys.contains("NetworkAccessMode") {
                self.networkAccessMode = dict["NetworkAccessMode"] as! String
            }
            if dict.keys.contains("Options") {
                var model = LoginInstanceRequest.InstanceLoginInfo.Options()
                model.fromMap(dict["Options"] as! [String: Any])
                self.options = model
            }
            if dict.keys.contains("PassPhrase") {
                self.passPhrase = dict["PassPhrase"] as! String
            }
            if dict.keys.contains("Password") {
                self.password = dict["Password"] as! String
            }
            if dict.keys.contains("Port") {
                self.port = dict["Port"] as! Int32
            }
            if dict.keys.contains("Protocol") {
                self.protocol_ = dict["Protocol"] as! String
            }
            if dict.keys.contains("RegionId") {
                self.regionId = dict["RegionId"] as! String
            }
            if dict.keys.contains("ResourceGroupId") {
                self.resourceGroupId = dict["ResourceGroupId"] as! String
            }
            if dict.keys.contains("ShortcutToken") {
                self.shortcutToken = dict["ShortcutToken"] as! String
            }
            if dict.keys.contains("Username") {
                self.username = dict["Username"] as! String
            }
            if dict.keys.contains("VpcId") {
                self.vpcId = dict["VpcId"] as! String
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("PartnerId") {
                self.partnerId = dict["PartnerId"] as! String
            }
            if dict.keys.contains("PartnerName") {
                self.partnerName = dict["PartnerName"] as! String
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

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("LoginLimit") {
                    self.loginLimit = dict["LoginLimit"] as! Int64
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("AccountId") {
                self.accountId = dict["AccountId"] as! Int64
            }
            if dict.keys.contains("AccountPlatform") {
                self.accountPlatform = dict["AccountPlatform"] as! String
            }
            if dict.keys.contains("AccountStructure") {
                self.accountStructure = dict["AccountStructure"] as! String
            }
            if dict.keys.contains("DurationSeconds") {
                self.durationSeconds = dict["DurationSeconds"] as! Int64
            }
            if dict.keys.contains("EmpId") {
                self.empId = dict["EmpId"] as! String
            }
            if dict.keys.contains("ExpireTime") {
                self.expireTime = dict["ExpireTime"] as! String
            }
            if dict.keys.contains("LoginName") {
                self.loginName = dict["LoginName"] as! String
            }
            if dict.keys.contains("Options") {
                var model = LoginInstanceRequest.UserAccount.Options()
                model.fromMap(dict["Options"] as! [String: Any])
                self.options = model
            }
            if dict.keys.contains("ParentId") {
                self.parentId = dict["ParentId"] as! Int64
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("InstanceLoginInfo") {
            var model = LoginInstanceRequest.InstanceLoginInfo()
            model.fromMap(dict["InstanceLoginInfo"] as! [String: Any])
            self.instanceLoginInfo = model
        }
        if dict.keys.contains("PartnerInfo") {
            var model = LoginInstanceRequest.PartnerInfo()
            model.fromMap(dict["PartnerInfo"] as! [String: Any])
            self.partnerInfo = model
        }
        if dict.keys.contains("UserAccount") {
            var model = LoginInstanceRequest.UserAccount()
            model.fromMap(dict["UserAccount"] as! [String: Any])
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

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("LoginFormActionUrl") {
                    self.loginFormActionUrl = dict["LoginFormActionUrl"] as! String
                }
                if dict.keys.contains("LoginUrl") {
                    self.loginUrl = dict["LoginUrl"] as! String
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

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("DefaultViewUrl") {
                        self.defaultViewUrl = dict["DefaultViewUrl"] as! String
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

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("InstanceId") {
                    self.instanceId = dict["InstanceId"] as! String
                }
                if dict.keys.contains("InstanceLoginToken") {
                    self.instanceLoginToken = dict["InstanceLoginToken"] as! String
                }
                if dict.keys.contains("InstanceLoginView") {
                    var model = LoginInstanceResponseBody.Root.InstanceLoginInfoList.InstanceLoginView()
                    model.fromMap(dict["InstanceLoginView"] as! [String: Any])
                    self.instanceLoginView = model
                }
                if dict.keys.contains("LoginSuccess") {
                    self.loginSuccess = dict["LoginSuccess"] as! Bool
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

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("BaseUrl") {
                    self.baseUrl = dict["BaseUrl"] as! String
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("DisposableAccount") {
                var model = LoginInstanceResponseBody.Root.DisposableAccount()
                model.fromMap(dict["DisposableAccount"] as! [String: Any])
                self.disposableAccount = model
            }
            if dict.keys.contains("InstanceLoginInfoList") {
                var tmp : [LoginInstanceResponseBody.Root.InstanceLoginInfoList] = []
                for v in dict["InstanceLoginInfoList"] as! [Any] {
                    var model = LoginInstanceResponseBody.Root.InstanceLoginInfoList()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.instanceLoginInfoList = tmp
            }
            if dict.keys.contains("SessionControl") {
                var model = LoginInstanceResponseBody.Root.SessionControl()
                model.fromMap(dict["SessionControl"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Message") {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Root") {
            var model = LoginInstanceResponseBody.Root()
            model.fromMap(dict["Root"] as! [String: Any])
            self.root = model
        }
        if dict.keys.contains("Success") {
            self.success = dict["Success"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = LoginInstanceResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override init() {
        super.init()
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
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Enabled") {
            self.enabled = dict["Enabled"] as! Bool
        }
        if dict.keys.contains("ExpirationDays") {
            self.expirationDays = dict["ExpirationDays"] as! Int32
        }
        if dict.keys.contains("InstanceId") {
            self.instanceId = dict["InstanceId"] as! String
        }
        if dict.keys.contains("RecordStorageTarget") {
            self.recordStorageTarget = dict["RecordStorageTarget"] as! String
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Message") {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Root") {
            self.root = dict["Root"] as! Bool
        }
        if dict.keys.contains("Success") {
            self.success = dict["Success"] as! Bool
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = SetInstanceRecordConfigResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("InstanceId") {
            self.instanceId = dict["InstanceId"] as! String
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("TerminalSessionToken") {
            self.terminalSessionToken = dict["TerminalSessionToken"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Message") {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Root") {
            self.root = dict["Root"] as! Bool
        }
        if dict.keys.contains("Success") {
            self.success = dict["Success"] as! Bool
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = ViewInstanceRecordsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}
