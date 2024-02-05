import Foundation
import Tea
import TeaUtils
import AlibabacloudOpenApi
import AlibabaCloudOpenApiUtil
import AlibabacloudEndpointUtil

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
                    if dict.keys.contains("ClusterId") && dict["ClusterId"] != nil {
                        self.clusterId = dict["ClusterId"] as! String
                    }
                    if dict.keys.contains("ClusterName") && dict["ClusterName"] != nil {
                        self.clusterName = dict["ClusterName"] as! String
                    }
                    if dict.keys.contains("ContainerName") && dict["ContainerName"] != nil {
                        self.containerName = dict["ContainerName"] as! String
                    }
                    if dict.keys.contains("Deployment") && dict["Deployment"] != nil {
                        self.deployment = dict["Deployment"] as! String
                    }
                    if dict.keys.contains("Endpoint") && dict["Endpoint"] != nil {
                        self.endpoint = dict["Endpoint"] as! String
                    }
                    if dict.keys.contains("Headers") && dict["Headers"] != nil {
                        self.headers = dict["Headers"] as! [String: Any]
                    }
                    if dict.keys.contains("Namespace") && dict["Namespace"] != nil {
                        self.namespace = dict["Namespace"] as! String
                    }
                    if dict.keys.contains("PodName") && dict["PodName"] != nil {
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
                if dict.keys.contains("AudioMuteSeconds") && dict["AudioMuteSeconds"] != nil {
                    self.audioMuteSeconds = dict["AudioMuteSeconds"] as! Int32
                }
                if dict.keys.contains("ContainerInfo") && dict["ContainerInfo"] != nil {
                    var model = LoginInstanceRequest.InstanceLoginInfo.Options.ContainerInfo()
                    model.fromMap(dict["ContainerInfo"] as! [String: Any])
                    self.containerInfo = model
                }
                if dict.keys.contains("FixedHeight") && dict["FixedHeight"] != nil {
                    self.fixedHeight = dict["FixedHeight"] as! Int32
                }
                if dict.keys.contains("FixedWidth") && dict["FixedWidth"] != nil {
                    self.fixedWidth = dict["FixedWidth"] as! Int32
                }
                if dict.keys.contains("NotificationEventTypes") && dict["NotificationEventTypes"] != nil {
                    self.notificationEventTypes = dict["NotificationEventTypes"] as! String
                }
                if dict.keys.contains("NotificationRecipientUrl") && dict["NotificationRecipientUrl"] != nil {
                    self.notificationRecipientUrl = dict["NotificationRecipientUrl"] as! String
                }
                if dict.keys.contains("NotificationRetryIntervalSeconds") && dict["NotificationRetryIntervalSeconds"] != nil {
                    self.notificationRetryIntervalSeconds = dict["NotificationRetryIntervalSeconds"] as! Int32
                }
                if dict.keys.contains("NotificationRetryLimit") && dict["NotificationRetryLimit"] != nil {
                    self.notificationRetryLimit = dict["NotificationRetryLimit"] as! Int32
                }
                if dict.keys.contains("OperationDisableSeconds") && dict["OperationDisableSeconds"] != nil {
                    self.operationDisableSeconds = dict["OperationDisableSeconds"] as! Int32
                }
                if dict.keys.contains("SessionControl") && dict["SessionControl"] != nil {
                    self.sessionControl = dict["SessionControl"] as! String
                }
                if dict.keys.contains("VideoFreezeSeconds") && dict["VideoFreezeSeconds"] != nil {
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
            if dict.keys.contains("AuthenticationType") && dict["AuthenticationType"] != nil {
                self.authenticationType = dict["AuthenticationType"] as! String
            }
            if dict.keys.contains("Certificate") && dict["Certificate"] != nil {
                self.certificate = dict["Certificate"] as! String
            }
            if dict.keys.contains("CredentialToken") && dict["CredentialToken"] != nil {
                self.credentialToken = dict["CredentialToken"] as! String
            }
            if dict.keys.contains("DockerContainerName") && dict["DockerContainerName"] != nil {
                self.dockerContainerName = dict["DockerContainerName"] as! String
            }
            if dict.keys.contains("DockerExec") && dict["DockerExec"] != nil {
                self.dockerExec = dict["DockerExec"] as! String
            }
            if dict.keys.contains("DurationSeconds") && dict["DurationSeconds"] != nil {
                self.durationSeconds = dict["DurationSeconds"] as! Int64
            }
            if dict.keys.contains("ExpireTime") && dict["ExpireTime"] != nil {
                self.expireTime = dict["ExpireTime"] as! String
            }
            if dict.keys.contains("Host") && dict["Host"] != nil {
                self.host = dict["Host"] as! String
            }
            if dict.keys.contains("InstanceId") && dict["InstanceId"] != nil {
                self.instanceId = dict["InstanceId"] as! String
            }
            if dict.keys.contains("InstanceType") && dict["InstanceType"] != nil {
                self.instanceType = dict["InstanceType"] as! String
            }
            if dict.keys.contains("LoginByInstanceCredential") && dict["LoginByInstanceCredential"] != nil {
                self.loginByInstanceCredential = dict["LoginByInstanceCredential"] as! Bool
            }
            if dict.keys.contains("LoginByInstanceShortcut") && dict["LoginByInstanceShortcut"] != nil {
                self.loginByInstanceShortcut = dict["LoginByInstanceShortcut"] as! Bool
            }
            if dict.keys.contains("NetworkAccessMode") && dict["NetworkAccessMode"] != nil {
                self.networkAccessMode = dict["NetworkAccessMode"] as! String
            }
            if dict.keys.contains("Options") && dict["Options"] != nil {
                var model = LoginInstanceRequest.InstanceLoginInfo.Options()
                model.fromMap(dict["Options"] as! [String: Any])
                self.options = model
            }
            if dict.keys.contains("PassPhrase") && dict["PassPhrase"] != nil {
                self.passPhrase = dict["PassPhrase"] as! String
            }
            if dict.keys.contains("Password") && dict["Password"] != nil {
                self.password = dict["Password"] as! String
            }
            if dict.keys.contains("Port") && dict["Port"] != nil {
                self.port = dict["Port"] as! Int32
            }
            if dict.keys.contains("Protocol") && dict["Protocol"] != nil {
                self.protocol_ = dict["Protocol"] as! String
            }
            if dict.keys.contains("RegionId") && dict["RegionId"] != nil {
                self.regionId = dict["RegionId"] as! String
            }
            if dict.keys.contains("ResourceGroupId") && dict["ResourceGroupId"] != nil {
                self.resourceGroupId = dict["ResourceGroupId"] as! String
            }
            if dict.keys.contains("ShortcutToken") && dict["ShortcutToken"] != nil {
                self.shortcutToken = dict["ShortcutToken"] as! String
            }
            if dict.keys.contains("Username") && dict["Username"] != nil {
                self.username = dict["Username"] as! String
            }
            if dict.keys.contains("VpcId") && dict["VpcId"] != nil {
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
            if dict.keys.contains("PartnerId") && dict["PartnerId"] != nil {
                self.partnerId = dict["PartnerId"] as! String
            }
            if dict.keys.contains("PartnerName") && dict["PartnerName"] != nil {
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
                if dict.keys.contains("LoginLimit") && dict["LoginLimit"] != nil {
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
            if dict.keys.contains("AccountId") && dict["AccountId"] != nil {
                self.accountId = dict["AccountId"] as! Int64
            }
            if dict.keys.contains("AccountPlatform") && dict["AccountPlatform"] != nil {
                self.accountPlatform = dict["AccountPlatform"] as! String
            }
            if dict.keys.contains("AccountStructure") && dict["AccountStructure"] != nil {
                self.accountStructure = dict["AccountStructure"] as! String
            }
            if dict.keys.contains("DurationSeconds") && dict["DurationSeconds"] != nil {
                self.durationSeconds = dict["DurationSeconds"] as! Int64
            }
            if dict.keys.contains("EmpId") && dict["EmpId"] != nil {
                self.empId = dict["EmpId"] as! String
            }
            if dict.keys.contains("ExpireTime") && dict["ExpireTime"] != nil {
                self.expireTime = dict["ExpireTime"] as! String
            }
            if dict.keys.contains("LoginName") && dict["LoginName"] != nil {
                self.loginName = dict["LoginName"] as! String
            }
            if dict.keys.contains("Options") && dict["Options"] != nil {
                var model = LoginInstanceRequest.UserAccount.Options()
                model.fromMap(dict["Options"] as! [String: Any])
                self.options = model
            }
            if dict.keys.contains("ParentId") && dict["ParentId"] != nil {
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
        if dict.keys.contains("InstanceLoginInfo") && dict["InstanceLoginInfo"] != nil {
            var model = LoginInstanceRequest.InstanceLoginInfo()
            model.fromMap(dict["InstanceLoginInfo"] as! [String: Any])
            self.instanceLoginInfo = model
        }
        if dict.keys.contains("PartnerInfo") && dict["PartnerInfo"] != nil {
            var model = LoginInstanceRequest.PartnerInfo()
            model.fromMap(dict["PartnerInfo"] as! [String: Any])
            self.partnerInfo = model
        }
        if dict.keys.contains("UserAccount") && dict["UserAccount"] != nil {
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
                if dict.keys.contains("LoginFormActionUrl") && dict["LoginFormActionUrl"] != nil {
                    self.loginFormActionUrl = dict["LoginFormActionUrl"] as! String
                }
                if dict.keys.contains("LoginUrl") && dict["LoginUrl"] != nil {
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
                    if dict.keys.contains("DefaultViewUrl") && dict["DefaultViewUrl"] != nil {
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
                if dict.keys.contains("InstanceId") && dict["InstanceId"] != nil {
                    self.instanceId = dict["InstanceId"] as! String
                }
                if dict.keys.contains("InstanceLoginToken") && dict["InstanceLoginToken"] != nil {
                    self.instanceLoginToken = dict["InstanceLoginToken"] as! String
                }
                if dict.keys.contains("InstanceLoginView") && dict["InstanceLoginView"] != nil {
                    var model = LoginInstanceResponseBody.Root.InstanceLoginInfoList.InstanceLoginView()
                    model.fromMap(dict["InstanceLoginView"] as! [String: Any])
                    self.instanceLoginView = model
                }
                if dict.keys.contains("LoginSuccess") && dict["LoginSuccess"] != nil {
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
                if dict.keys.contains("BaseUrl") && dict["BaseUrl"] != nil {
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
            if dict.keys.contains("DisposableAccount") && dict["DisposableAccount"] != nil {
                var model = LoginInstanceResponseBody.Root.DisposableAccount()
                model.fromMap(dict["DisposableAccount"] as! [String: Any])
                self.disposableAccount = model
            }
            if dict.keys.contains("InstanceLoginInfoList") && dict["InstanceLoginInfoList"] != nil {
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
            if dict.keys.contains("SessionControl") && dict["SessionControl"] != nil {
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
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Message") && dict["Message"] != nil {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Root") && dict["Root"] != nil {
            var model = LoginInstanceResponseBody.Root()
            model.fromMap(dict["Root"] as! [String: Any])
            self.root = model
        }
        if dict.keys.contains("Success") && dict["Success"] != nil {
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
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = LoginInstanceResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}
