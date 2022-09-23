import Foundation
import Tea
import TeaUtils
import AlibabacloudOpenApi
import AlibabaCloudOpenApiUtil
import AlibabacloudEndpointUtil

public class CreateContainerGroupRequest : Tea.TeaModel {
    public class DnsConfig : Tea.TeaModel {
        public class Option : Tea.TeaModel {
            public var name: String?

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
                if self.name != nil {
                    map["Name"] = self.name!
                }
                if self.value != nil {
                    map["Value"] = self.value!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("Name") {
                    self.name = dict["Name"] as! String
                }
                if dict.keys.contains("Value") {
                    self.value = dict["Value"] as! String
                }
            }
        }
        public var nameServer: [String]?

        public var option: [CreateContainerGroupRequest.DnsConfig.Option]?

        public var search: [String]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.nameServer != nil {
                map["NameServer"] = self.nameServer!
            }
            if self.option != nil {
                var tmp : [Any] = []
                for k in self.option! {
                    tmp.append(k.toMap())
                }
                map["Option"] = tmp
            }
            if self.search != nil {
                map["Search"] = self.search!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("NameServer") {
                self.nameServer = dict["NameServer"] as! [String]
            }
            if dict.keys.contains("Option") {
                self.option = dict["Option"] as! [CreateContainerGroupRequest.DnsConfig.Option]
            }
            if dict.keys.contains("Search") {
                self.search = dict["Search"] as! [String]
            }
        }
    }
    public class HostSecurityContext : Tea.TeaModel {
        public class Sysctl : Tea.TeaModel {
            public var name: String?

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
                if self.name != nil {
                    map["Name"] = self.name!
                }
                if self.value != nil {
                    map["Value"] = self.value!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("Name") {
                    self.name = dict["Name"] as! String
                }
                if dict.keys.contains("Value") {
                    self.value = dict["Value"] as! String
                }
            }
        }
        public var sysctl: [CreateContainerGroupRequest.HostSecurityContext.Sysctl]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.sysctl != nil {
                var tmp : [Any] = []
                for k in self.sysctl! {
                    tmp.append(k.toMap())
                }
                map["Sysctl"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Sysctl") {
                self.sysctl = dict["Sysctl"] as! [CreateContainerGroupRequest.HostSecurityContext.Sysctl]
            }
        }
    }
    public class SecurityContext : Tea.TeaModel {
        public class Sysctl : Tea.TeaModel {
            public var name: String?

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
                if self.name != nil {
                    map["Name"] = self.name!
                }
                if self.value != nil {
                    map["Value"] = self.value!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("Name") {
                    self.name = dict["Name"] as! String
                }
                if dict.keys.contains("Value") {
                    self.value = dict["Value"] as! String
                }
            }
        }
        public var sysctl: [CreateContainerGroupRequest.SecurityContext.Sysctl]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.sysctl != nil {
                var tmp : [Any] = []
                for k in self.sysctl! {
                    tmp.append(k.toMap())
                }
                map["Sysctl"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Sysctl") {
                self.sysctl = dict["Sysctl"] as! [CreateContainerGroupRequest.SecurityContext.Sysctl]
            }
        }
    }
    public class AcrRegistryInfo : Tea.TeaModel {
        public var domain: [String]?

        public var instanceId: String?

        public var instanceName: String?

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
            if self.domain != nil {
                map["Domain"] = self.domain!
            }
            if self.instanceId != nil {
                map["InstanceId"] = self.instanceId!
            }
            if self.instanceName != nil {
                map["InstanceName"] = self.instanceName!
            }
            if self.regionId != nil {
                map["RegionId"] = self.regionId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Domain") {
                self.domain = dict["Domain"] as! [String]
            }
            if dict.keys.contains("InstanceId") {
                self.instanceId = dict["InstanceId"] as! String
            }
            if dict.keys.contains("InstanceName") {
                self.instanceName = dict["InstanceName"] as! String
            }
            if dict.keys.contains("RegionId") {
                self.regionId = dict["RegionId"] as! String
            }
        }
    }
    public class Arn : Tea.TeaModel {
        public var assumeRoleFor: String?

        public var roleArn: String?

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
            if self.assumeRoleFor != nil {
                map["AssumeRoleFor"] = self.assumeRoleFor!
            }
            if self.roleArn != nil {
                map["RoleArn"] = self.roleArn!
            }
            if self.roleType != nil {
                map["RoleType"] = self.roleType!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("AssumeRoleFor") {
                self.assumeRoleFor = dict["AssumeRoleFor"] as! String
            }
            if dict.keys.contains("RoleArn") {
                self.roleArn = dict["RoleArn"] as! String
            }
            if dict.keys.contains("RoleType") {
                self.roleType = dict["RoleType"] as! String
            }
        }
    }
    public class Container : Tea.TeaModel {
        public class LivenessProbe : Tea.TeaModel {
            public class Exec : Tea.TeaModel {
                public var command: [String]?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.command != nil {
                        map["Command"] = self.command!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("Command") {
                        self.command = dict["Command"] as! [String]
                    }
                }
            }
            public class HttpGet : Tea.TeaModel {
                public var path: String?

                public var port: Int32?

                public var scheme: String?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.path != nil {
                        map["Path"] = self.path!
                    }
                    if self.port != nil {
                        map["Port"] = self.port!
                    }
                    if self.scheme != nil {
                        map["Scheme"] = self.scheme!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("Path") {
                        self.path = dict["Path"] as! String
                    }
                    if dict.keys.contains("Port") {
                        self.port = dict["Port"] as! Int32
                    }
                    if dict.keys.contains("Scheme") {
                        self.scheme = dict["Scheme"] as! String
                    }
                }
            }
            public class TcpSocket : Tea.TeaModel {
                public var port: Int32?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.port != nil {
                        map["Port"] = self.port!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("Port") {
                        self.port = dict["Port"] as! Int32
                    }
                }
            }
            public var exec: CreateContainerGroupRequest.Container.LivenessProbe.Exec?

            public var failureThreshold: Int32?

            public var httpGet: CreateContainerGroupRequest.Container.LivenessProbe.HttpGet?

            public var initialDelaySeconds: Int32?

            public var periodSeconds: Int32?

            public var successThreshold: Int32?

            public var tcpSocket: CreateContainerGroupRequest.Container.LivenessProbe.TcpSocket?

            public var timeoutSeconds: Int32?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
                try self.validateRequired(self.exec, "exec")
                try self.exec?.validate()
                try self.validateRequired(self.httpGet, "httpGet")
                try self.httpGet?.validate()
                try self.validateRequired(self.tcpSocket, "tcpSocket")
                try self.tcpSocket?.validate()
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.exec != nil {
                    map["Exec"] = self.exec?.toMap()
                }
                if self.failureThreshold != nil {
                    map["FailureThreshold"] = self.failureThreshold!
                }
                if self.httpGet != nil {
                    map["HttpGet"] = self.httpGet?.toMap()
                }
                if self.initialDelaySeconds != nil {
                    map["InitialDelaySeconds"] = self.initialDelaySeconds!
                }
                if self.periodSeconds != nil {
                    map["PeriodSeconds"] = self.periodSeconds!
                }
                if self.successThreshold != nil {
                    map["SuccessThreshold"] = self.successThreshold!
                }
                if self.tcpSocket != nil {
                    map["TcpSocket"] = self.tcpSocket?.toMap()
                }
                if self.timeoutSeconds != nil {
                    map["TimeoutSeconds"] = self.timeoutSeconds!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("Exec") {
                    var model = CreateContainerGroupRequest.Container.LivenessProbe.Exec()
                    model.fromMap(dict["Exec"] as! [String: Any])
                    self.exec = model
                }
                if dict.keys.contains("FailureThreshold") {
                    self.failureThreshold = dict["FailureThreshold"] as! Int32
                }
                if dict.keys.contains("HttpGet") {
                    var model = CreateContainerGroupRequest.Container.LivenessProbe.HttpGet()
                    model.fromMap(dict["HttpGet"] as! [String: Any])
                    self.httpGet = model
                }
                if dict.keys.contains("InitialDelaySeconds") {
                    self.initialDelaySeconds = dict["InitialDelaySeconds"] as! Int32
                }
                if dict.keys.contains("PeriodSeconds") {
                    self.periodSeconds = dict["PeriodSeconds"] as! Int32
                }
                if dict.keys.contains("SuccessThreshold") {
                    self.successThreshold = dict["SuccessThreshold"] as! Int32
                }
                if dict.keys.contains("TcpSocket") {
                    var model = CreateContainerGroupRequest.Container.LivenessProbe.TcpSocket()
                    model.fromMap(dict["TcpSocket"] as! [String: Any])
                    self.tcpSocket = model
                }
                if dict.keys.contains("TimeoutSeconds") {
                    self.timeoutSeconds = dict["TimeoutSeconds"] as! Int32
                }
            }
        }
        public class ReadinessProbe : Tea.TeaModel {
            public class Exec : Tea.TeaModel {
                public var command: [String]?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.command != nil {
                        map["Command"] = self.command!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("Command") {
                        self.command = dict["Command"] as! [String]
                    }
                }
            }
            public class HttpGet : Tea.TeaModel {
                public var path: String?

                public var port: Int32?

                public var scheme: String?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.path != nil {
                        map["Path"] = self.path!
                    }
                    if self.port != nil {
                        map["Port"] = self.port!
                    }
                    if self.scheme != nil {
                        map["Scheme"] = self.scheme!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("Path") {
                        self.path = dict["Path"] as! String
                    }
                    if dict.keys.contains("Port") {
                        self.port = dict["Port"] as! Int32
                    }
                    if dict.keys.contains("Scheme") {
                        self.scheme = dict["Scheme"] as! String
                    }
                }
            }
            public class TcpSocket : Tea.TeaModel {
                public var port: Int32?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.port != nil {
                        map["Port"] = self.port!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("Port") {
                        self.port = dict["Port"] as! Int32
                    }
                }
            }
            public var exec: CreateContainerGroupRequest.Container.ReadinessProbe.Exec?

            public var failureThreshold: Int32?

            public var httpGet: CreateContainerGroupRequest.Container.ReadinessProbe.HttpGet?

            public var initialDelaySeconds: Int32?

            public var periodSeconds: Int32?

            public var successThreshold: Int32?

            public var tcpSocket: CreateContainerGroupRequest.Container.ReadinessProbe.TcpSocket?

            public var timeoutSeconds: Int32?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
                try self.validateRequired(self.exec, "exec")
                try self.exec?.validate()
                try self.validateRequired(self.httpGet, "httpGet")
                try self.httpGet?.validate()
                try self.validateRequired(self.tcpSocket, "tcpSocket")
                try self.tcpSocket?.validate()
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.exec != nil {
                    map["Exec"] = self.exec?.toMap()
                }
                if self.failureThreshold != nil {
                    map["FailureThreshold"] = self.failureThreshold!
                }
                if self.httpGet != nil {
                    map["HttpGet"] = self.httpGet?.toMap()
                }
                if self.initialDelaySeconds != nil {
                    map["InitialDelaySeconds"] = self.initialDelaySeconds!
                }
                if self.periodSeconds != nil {
                    map["PeriodSeconds"] = self.periodSeconds!
                }
                if self.successThreshold != nil {
                    map["SuccessThreshold"] = self.successThreshold!
                }
                if self.tcpSocket != nil {
                    map["TcpSocket"] = self.tcpSocket?.toMap()
                }
                if self.timeoutSeconds != nil {
                    map["TimeoutSeconds"] = self.timeoutSeconds!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("Exec") {
                    var model = CreateContainerGroupRequest.Container.ReadinessProbe.Exec()
                    model.fromMap(dict["Exec"] as! [String: Any])
                    self.exec = model
                }
                if dict.keys.contains("FailureThreshold") {
                    self.failureThreshold = dict["FailureThreshold"] as! Int32
                }
                if dict.keys.contains("HttpGet") {
                    var model = CreateContainerGroupRequest.Container.ReadinessProbe.HttpGet()
                    model.fromMap(dict["HttpGet"] as! [String: Any])
                    self.httpGet = model
                }
                if dict.keys.contains("InitialDelaySeconds") {
                    self.initialDelaySeconds = dict["InitialDelaySeconds"] as! Int32
                }
                if dict.keys.contains("PeriodSeconds") {
                    self.periodSeconds = dict["PeriodSeconds"] as! Int32
                }
                if dict.keys.contains("SuccessThreshold") {
                    self.successThreshold = dict["SuccessThreshold"] as! Int32
                }
                if dict.keys.contains("TcpSocket") {
                    var model = CreateContainerGroupRequest.Container.ReadinessProbe.TcpSocket()
                    model.fromMap(dict["TcpSocket"] as! [String: Any])
                    self.tcpSocket = model
                }
                if dict.keys.contains("TimeoutSeconds") {
                    self.timeoutSeconds = dict["TimeoutSeconds"] as! Int32
                }
            }
        }
        public class SecurityContext : Tea.TeaModel {
            public class Capability : Tea.TeaModel {
                public var add: [String]?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.add != nil {
                        map["Add"] = self.add!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("Add") {
                        self.add = dict["Add"] as! [String]
                    }
                }
            }
            public var capability: CreateContainerGroupRequest.Container.SecurityContext.Capability?

            public var readOnlyRootFilesystem: Bool?

            public var runAsUser: Int64?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
                try self.validateRequired(self.capability, "capability")
                try self.capability?.validate()
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.capability != nil {
                    map["Capability"] = self.capability?.toMap()
                }
                if self.readOnlyRootFilesystem != nil {
                    map["ReadOnlyRootFilesystem"] = self.readOnlyRootFilesystem!
                }
                if self.runAsUser != nil {
                    map["RunAsUser"] = self.runAsUser!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("Capability") {
                    var model = CreateContainerGroupRequest.Container.SecurityContext.Capability()
                    model.fromMap(dict["Capability"] as! [String: Any])
                    self.capability = model
                }
                if dict.keys.contains("ReadOnlyRootFilesystem") {
                    self.readOnlyRootFilesystem = dict["ReadOnlyRootFilesystem"] as! Bool
                }
                if dict.keys.contains("RunAsUser") {
                    self.runAsUser = dict["RunAsUser"] as! Int64
                }
            }
        }
        public class EnvironmentVar : Tea.TeaModel {
            public class FieldRef : Tea.TeaModel {
                public var fieldPath: String?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.fieldPath != nil {
                        map["FieldPath"] = self.fieldPath!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("FieldPath") {
                        self.fieldPath = dict["FieldPath"] as! String
                    }
                }
            }
            public var fieldRef: CreateContainerGroupRequest.Container.EnvironmentVar.FieldRef?

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
                try self.validateRequired(self.fieldRef, "fieldRef")
                try self.fieldRef?.validate()
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.fieldRef != nil {
                    map["FieldRef"] = self.fieldRef?.toMap()
                }
                if self.key != nil {
                    map["Key"] = self.key!
                }
                if self.value != nil {
                    map["Value"] = self.value!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("FieldRef") {
                    var model = CreateContainerGroupRequest.Container.EnvironmentVar.FieldRef()
                    model.fromMap(dict["FieldRef"] as! [String: Any])
                    self.fieldRef = model
                }
                if dict.keys.contains("Key") {
                    self.key = dict["Key"] as! String
                }
                if dict.keys.contains("Value") {
                    self.value = dict["Value"] as! String
                }
            }
        }
        public class LifecyclePostStartHandlerHttpGetHttpHeader : Tea.TeaModel {
            public var name: String?

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
                if self.name != nil {
                    map["Name"] = self.name!
                }
                if self.value != nil {
                    map["Value"] = self.value!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("Name") {
                    self.name = dict["Name"] as! String
                }
                if dict.keys.contains("Value") {
                    self.value = dict["Value"] as! String
                }
            }
        }
        public class LifecyclePreStopHandlerHttpGetHttpHeader : Tea.TeaModel {
            public var name: String?

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
                if self.name != nil {
                    map["Name"] = self.name!
                }
                if self.value != nil {
                    map["Value"] = self.value!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("Name") {
                    self.name = dict["Name"] as! String
                }
                if dict.keys.contains("Value") {
                    self.value = dict["Value"] as! String
                }
            }
        }
        public class Port : Tea.TeaModel {
            public var port: Int32?

            public var protocol_: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.port != nil {
                    map["Port"] = self.port!
                }
                if self.protocol_ != nil {
                    map["Protocol"] = self.protocol_!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("Port") {
                    self.port = dict["Port"] as! Int32
                }
                if dict.keys.contains("Protocol") {
                    self.protocol_ = dict["Protocol"] as! String
                }
            }
        }
        public class VolumeMount : Tea.TeaModel {
            public var mountPath: String?

            public var mountPropagation: String?

            public var name: String?

            public var readOnly: Bool?

            public var subPath: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.mountPath != nil {
                    map["MountPath"] = self.mountPath!
                }
                if self.mountPropagation != nil {
                    map["MountPropagation"] = self.mountPropagation!
                }
                if self.name != nil {
                    map["Name"] = self.name!
                }
                if self.readOnly != nil {
                    map["ReadOnly"] = self.readOnly!
                }
                if self.subPath != nil {
                    map["SubPath"] = self.subPath!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("MountPath") {
                    self.mountPath = dict["MountPath"] as! String
                }
                if dict.keys.contains("MountPropagation") {
                    self.mountPropagation = dict["MountPropagation"] as! String
                }
                if dict.keys.contains("Name") {
                    self.name = dict["Name"] as! String
                }
                if dict.keys.contains("ReadOnly") {
                    self.readOnly = dict["ReadOnly"] as! Bool
                }
                if dict.keys.contains("SubPath") {
                    self.subPath = dict["SubPath"] as! String
                }
            }
        }
        public var livenessProbe: CreateContainerGroupRequest.Container.LivenessProbe?

        public var readinessProbe: CreateContainerGroupRequest.Container.ReadinessProbe?

        public var securityContext: CreateContainerGroupRequest.Container.SecurityContext?

        public var arg: [String]?

        public var command: [String]?

        public var cpu: Double?

        public var environmentVar: [CreateContainerGroupRequest.Container.EnvironmentVar]?

        public var gpu: Int32?

        public var image: String?

        public var imagePullPolicy: String?

        public var lifecyclePostStartHandlerExec: [String]?

        public var lifecyclePostStartHandlerHttpGetHost: String?

        public var lifecyclePostStartHandlerHttpGetHttpHeader: [CreateContainerGroupRequest.Container.LifecyclePostStartHandlerHttpGetHttpHeader]?

        public var lifecyclePostStartHandlerHttpGetPath: String?

        public var lifecyclePostStartHandlerHttpGetPort: Int32?

        public var lifecyclePostStartHandlerHttpGetScheme: String?

        public var lifecyclePostStartHandlerTcpSocketHost: String?

        public var lifecyclePostStartHandlerTcpSocketPort: Int32?

        public var lifecyclePreStopHandlerExec: [String]?

        public var lifecyclePreStopHandlerHttpGetHost: String?

        public var lifecyclePreStopHandlerHttpGetHttpHeader: [CreateContainerGroupRequest.Container.LifecyclePreStopHandlerHttpGetHttpHeader]?

        public var lifecyclePreStopHandlerHttpGetPath: String?

        public var lifecyclePreStopHandlerHttpGetPort: Int32?

        public var lifecyclePreStopHandlerHttpGetScheme: String?

        public var lifecyclePreStopHandlerTcpSocketHost: String?

        public var lifecyclePreStopHandlerTcpSocketPort: Int32?

        public var memory: Double?

        public var name: String?

        public var port: [CreateContainerGroupRequest.Container.Port]?

        public var stdin: Bool?

        public var stdinOnce: Bool?

        public var terminationMessagePath: String?

        public var terminationMessagePolicy: String?

        public var tty: Bool?

        public var volumeMount: [CreateContainerGroupRequest.Container.VolumeMount]?

        public var workingDir: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.validateRequired(self.livenessProbe, "livenessProbe")
            try self.livenessProbe?.validate()
            try self.validateRequired(self.readinessProbe, "readinessProbe")
            try self.readinessProbe?.validate()
            try self.validateRequired(self.securityContext, "securityContext")
            try self.securityContext?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.livenessProbe != nil {
                map["LivenessProbe"] = self.livenessProbe?.toMap()
            }
            if self.readinessProbe != nil {
                map["ReadinessProbe"] = self.readinessProbe?.toMap()
            }
            if self.securityContext != nil {
                map["SecurityContext"] = self.securityContext?.toMap()
            }
            if self.arg != nil {
                map["Arg"] = self.arg!
            }
            if self.command != nil {
                map["Command"] = self.command!
            }
            if self.cpu != nil {
                map["Cpu"] = self.cpu!
            }
            if self.environmentVar != nil {
                var tmp : [Any] = []
                for k in self.environmentVar! {
                    tmp.append(k.toMap())
                }
                map["EnvironmentVar"] = tmp
            }
            if self.gpu != nil {
                map["Gpu"] = self.gpu!
            }
            if self.image != nil {
                map["Image"] = self.image!
            }
            if self.imagePullPolicy != nil {
                map["ImagePullPolicy"] = self.imagePullPolicy!
            }
            if self.lifecyclePostStartHandlerExec != nil {
                map["LifecyclePostStartHandlerExec"] = self.lifecyclePostStartHandlerExec!
            }
            if self.lifecyclePostStartHandlerHttpGetHost != nil {
                map["LifecyclePostStartHandlerHttpGetHost"] = self.lifecyclePostStartHandlerHttpGetHost!
            }
            if self.lifecyclePostStartHandlerHttpGetHttpHeader != nil {
                var tmp : [Any] = []
                for k in self.lifecyclePostStartHandlerHttpGetHttpHeader! {
                    tmp.append(k.toMap())
                }
                map["LifecyclePostStartHandlerHttpGetHttpHeader"] = tmp
            }
            if self.lifecyclePostStartHandlerHttpGetPath != nil {
                map["LifecyclePostStartHandlerHttpGetPath"] = self.lifecyclePostStartHandlerHttpGetPath!
            }
            if self.lifecyclePostStartHandlerHttpGetPort != nil {
                map["LifecyclePostStartHandlerHttpGetPort"] = self.lifecyclePostStartHandlerHttpGetPort!
            }
            if self.lifecyclePostStartHandlerHttpGetScheme != nil {
                map["LifecyclePostStartHandlerHttpGetScheme"] = self.lifecyclePostStartHandlerHttpGetScheme!
            }
            if self.lifecyclePostStartHandlerTcpSocketHost != nil {
                map["LifecyclePostStartHandlerTcpSocketHost"] = self.lifecyclePostStartHandlerTcpSocketHost!
            }
            if self.lifecyclePostStartHandlerTcpSocketPort != nil {
                map["LifecyclePostStartHandlerTcpSocketPort"] = self.lifecyclePostStartHandlerTcpSocketPort!
            }
            if self.lifecyclePreStopHandlerExec != nil {
                map["LifecyclePreStopHandlerExec"] = self.lifecyclePreStopHandlerExec!
            }
            if self.lifecyclePreStopHandlerHttpGetHost != nil {
                map["LifecyclePreStopHandlerHttpGetHost"] = self.lifecyclePreStopHandlerHttpGetHost!
            }
            if self.lifecyclePreStopHandlerHttpGetHttpHeader != nil {
                var tmp : [Any] = []
                for k in self.lifecyclePreStopHandlerHttpGetHttpHeader! {
                    tmp.append(k.toMap())
                }
                map["LifecyclePreStopHandlerHttpGetHttpHeader"] = tmp
            }
            if self.lifecyclePreStopHandlerHttpGetPath != nil {
                map["LifecyclePreStopHandlerHttpGetPath"] = self.lifecyclePreStopHandlerHttpGetPath!
            }
            if self.lifecyclePreStopHandlerHttpGetPort != nil {
                map["LifecyclePreStopHandlerHttpGetPort"] = self.lifecyclePreStopHandlerHttpGetPort!
            }
            if self.lifecyclePreStopHandlerHttpGetScheme != nil {
                map["LifecyclePreStopHandlerHttpGetScheme"] = self.lifecyclePreStopHandlerHttpGetScheme!
            }
            if self.lifecyclePreStopHandlerTcpSocketHost != nil {
                map["LifecyclePreStopHandlerTcpSocketHost"] = self.lifecyclePreStopHandlerTcpSocketHost!
            }
            if self.lifecyclePreStopHandlerTcpSocketPort != nil {
                map["LifecyclePreStopHandlerTcpSocketPort"] = self.lifecyclePreStopHandlerTcpSocketPort!
            }
            if self.memory != nil {
                map["Memory"] = self.memory!
            }
            if self.name != nil {
                map["Name"] = self.name!
            }
            if self.port != nil {
                var tmp : [Any] = []
                for k in self.port! {
                    tmp.append(k.toMap())
                }
                map["Port"] = tmp
            }
            if self.stdin != nil {
                map["Stdin"] = self.stdin!
            }
            if self.stdinOnce != nil {
                map["StdinOnce"] = self.stdinOnce!
            }
            if self.terminationMessagePath != nil {
                map["TerminationMessagePath"] = self.terminationMessagePath!
            }
            if self.terminationMessagePolicy != nil {
                map["TerminationMessagePolicy"] = self.terminationMessagePolicy!
            }
            if self.tty != nil {
                map["Tty"] = self.tty!
            }
            if self.volumeMount != nil {
                var tmp : [Any] = []
                for k in self.volumeMount! {
                    tmp.append(k.toMap())
                }
                map["VolumeMount"] = tmp
            }
            if self.workingDir != nil {
                map["WorkingDir"] = self.workingDir!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("LivenessProbe") {
                var model = CreateContainerGroupRequest.Container.LivenessProbe()
                model.fromMap(dict["LivenessProbe"] as! [String: Any])
                self.livenessProbe = model
            }
            if dict.keys.contains("ReadinessProbe") {
                var model = CreateContainerGroupRequest.Container.ReadinessProbe()
                model.fromMap(dict["ReadinessProbe"] as! [String: Any])
                self.readinessProbe = model
            }
            if dict.keys.contains("SecurityContext") {
                var model = CreateContainerGroupRequest.Container.SecurityContext()
                model.fromMap(dict["SecurityContext"] as! [String: Any])
                self.securityContext = model
            }
            if dict.keys.contains("Arg") {
                self.arg = dict["Arg"] as! [String]
            }
            if dict.keys.contains("Command") {
                self.command = dict["Command"] as! [String]
            }
            if dict.keys.contains("Cpu") {
                self.cpu = dict["Cpu"] as! Double
            }
            if dict.keys.contains("EnvironmentVar") {
                self.environmentVar = dict["EnvironmentVar"] as! [CreateContainerGroupRequest.Container.EnvironmentVar]
            }
            if dict.keys.contains("Gpu") {
                self.gpu = dict["Gpu"] as! Int32
            }
            if dict.keys.contains("Image") {
                self.image = dict["Image"] as! String
            }
            if dict.keys.contains("ImagePullPolicy") {
                self.imagePullPolicy = dict["ImagePullPolicy"] as! String
            }
            if dict.keys.contains("LifecyclePostStartHandlerExec") {
                self.lifecyclePostStartHandlerExec = dict["LifecyclePostStartHandlerExec"] as! [String]
            }
            if dict.keys.contains("LifecyclePostStartHandlerHttpGetHost") {
                self.lifecyclePostStartHandlerHttpGetHost = dict["LifecyclePostStartHandlerHttpGetHost"] as! String
            }
            if dict.keys.contains("LifecyclePostStartHandlerHttpGetHttpHeader") {
                self.lifecyclePostStartHandlerHttpGetHttpHeader = dict["LifecyclePostStartHandlerHttpGetHttpHeader"] as! [CreateContainerGroupRequest.Container.LifecyclePostStartHandlerHttpGetHttpHeader]
            }
            if dict.keys.contains("LifecyclePostStartHandlerHttpGetPath") {
                self.lifecyclePostStartHandlerHttpGetPath = dict["LifecyclePostStartHandlerHttpGetPath"] as! String
            }
            if dict.keys.contains("LifecyclePostStartHandlerHttpGetPort") {
                self.lifecyclePostStartHandlerHttpGetPort = dict["LifecyclePostStartHandlerHttpGetPort"] as! Int32
            }
            if dict.keys.contains("LifecyclePostStartHandlerHttpGetScheme") {
                self.lifecyclePostStartHandlerHttpGetScheme = dict["LifecyclePostStartHandlerHttpGetScheme"] as! String
            }
            if dict.keys.contains("LifecyclePostStartHandlerTcpSocketHost") {
                self.lifecyclePostStartHandlerTcpSocketHost = dict["LifecyclePostStartHandlerTcpSocketHost"] as! String
            }
            if dict.keys.contains("LifecyclePostStartHandlerTcpSocketPort") {
                self.lifecyclePostStartHandlerTcpSocketPort = dict["LifecyclePostStartHandlerTcpSocketPort"] as! Int32
            }
            if dict.keys.contains("LifecyclePreStopHandlerExec") {
                self.lifecyclePreStopHandlerExec = dict["LifecyclePreStopHandlerExec"] as! [String]
            }
            if dict.keys.contains("LifecyclePreStopHandlerHttpGetHost") {
                self.lifecyclePreStopHandlerHttpGetHost = dict["LifecyclePreStopHandlerHttpGetHost"] as! String
            }
            if dict.keys.contains("LifecyclePreStopHandlerHttpGetHttpHeader") {
                self.lifecyclePreStopHandlerHttpGetHttpHeader = dict["LifecyclePreStopHandlerHttpGetHttpHeader"] as! [CreateContainerGroupRequest.Container.LifecyclePreStopHandlerHttpGetHttpHeader]
            }
            if dict.keys.contains("LifecyclePreStopHandlerHttpGetPath") {
                self.lifecyclePreStopHandlerHttpGetPath = dict["LifecyclePreStopHandlerHttpGetPath"] as! String
            }
            if dict.keys.contains("LifecyclePreStopHandlerHttpGetPort") {
                self.lifecyclePreStopHandlerHttpGetPort = dict["LifecyclePreStopHandlerHttpGetPort"] as! Int32
            }
            if dict.keys.contains("LifecyclePreStopHandlerHttpGetScheme") {
                self.lifecyclePreStopHandlerHttpGetScheme = dict["LifecyclePreStopHandlerHttpGetScheme"] as! String
            }
            if dict.keys.contains("LifecyclePreStopHandlerTcpSocketHost") {
                self.lifecyclePreStopHandlerTcpSocketHost = dict["LifecyclePreStopHandlerTcpSocketHost"] as! String
            }
            if dict.keys.contains("LifecyclePreStopHandlerTcpSocketPort") {
                self.lifecyclePreStopHandlerTcpSocketPort = dict["LifecyclePreStopHandlerTcpSocketPort"] as! Int32
            }
            if dict.keys.contains("Memory") {
                self.memory = dict["Memory"] as! Double
            }
            if dict.keys.contains("Name") {
                self.name = dict["Name"] as! String
            }
            if dict.keys.contains("Port") {
                self.port = dict["Port"] as! [CreateContainerGroupRequest.Container.Port]
            }
            if dict.keys.contains("Stdin") {
                self.stdin = dict["Stdin"] as! Bool
            }
            if dict.keys.contains("StdinOnce") {
                self.stdinOnce = dict["StdinOnce"] as! Bool
            }
            if dict.keys.contains("TerminationMessagePath") {
                self.terminationMessagePath = dict["TerminationMessagePath"] as! String
            }
            if dict.keys.contains("TerminationMessagePolicy") {
                self.terminationMessagePolicy = dict["TerminationMessagePolicy"] as! String
            }
            if dict.keys.contains("Tty") {
                self.tty = dict["Tty"] as! Bool
            }
            if dict.keys.contains("VolumeMount") {
                self.volumeMount = dict["VolumeMount"] as! [CreateContainerGroupRequest.Container.VolumeMount]
            }
            if dict.keys.contains("WorkingDir") {
                self.workingDir = dict["WorkingDir"] as! String
            }
        }
    }
    public class HostAliase : Tea.TeaModel {
        public var hostname: [String]?

        public var ip: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.hostname != nil {
                map["Hostname"] = self.hostname!
            }
            if self.ip != nil {
                map["Ip"] = self.ip!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Hostname") {
                self.hostname = dict["Hostname"] as! [String]
            }
            if dict.keys.contains("Ip") {
                self.ip = dict["Ip"] as! String
            }
        }
    }
    public class ImageRegistryCredential : Tea.TeaModel {
        public var password: String?

        public var server: String?

        public var userName: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.password != nil {
                map["Password"] = self.password!
            }
            if self.server != nil {
                map["Server"] = self.server!
            }
            if self.userName != nil {
                map["UserName"] = self.userName!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Password") {
                self.password = dict["Password"] as! String
            }
            if dict.keys.contains("Server") {
                self.server = dict["Server"] as! String
            }
            if dict.keys.contains("UserName") {
                self.userName = dict["UserName"] as! String
            }
        }
    }
    public class InitContainer : Tea.TeaModel {
        public class SecurityContext : Tea.TeaModel {
            public class Capability : Tea.TeaModel {
                public var add: [String]?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.add != nil {
                        map["Add"] = self.add!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("Add") {
                        self.add = dict["Add"] as! [String]
                    }
                }
            }
            public var capability: CreateContainerGroupRequest.InitContainer.SecurityContext.Capability?

            public var readOnlyRootFilesystem: Bool?

            public var runAsUser: Int64?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
                try self.validateRequired(self.capability, "capability")
                try self.capability?.validate()
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.capability != nil {
                    map["Capability"] = self.capability?.toMap()
                }
                if self.readOnlyRootFilesystem != nil {
                    map["ReadOnlyRootFilesystem"] = self.readOnlyRootFilesystem!
                }
                if self.runAsUser != nil {
                    map["RunAsUser"] = self.runAsUser!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("Capability") {
                    var model = CreateContainerGroupRequest.InitContainer.SecurityContext.Capability()
                    model.fromMap(dict["Capability"] as! [String: Any])
                    self.capability = model
                }
                if dict.keys.contains("ReadOnlyRootFilesystem") {
                    self.readOnlyRootFilesystem = dict["ReadOnlyRootFilesystem"] as! Bool
                }
                if dict.keys.contains("RunAsUser") {
                    self.runAsUser = dict["RunAsUser"] as! Int64
                }
            }
        }
        public class EnvironmentVar : Tea.TeaModel {
            public class FieldRef : Tea.TeaModel {
                public var fieldPath: String?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.fieldPath != nil {
                        map["FieldPath"] = self.fieldPath!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("FieldPath") {
                        self.fieldPath = dict["FieldPath"] as! String
                    }
                }
            }
            public var fieldRef: CreateContainerGroupRequest.InitContainer.EnvironmentVar.FieldRef?

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
                try self.validateRequired(self.fieldRef, "fieldRef")
                try self.fieldRef?.validate()
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.fieldRef != nil {
                    map["FieldRef"] = self.fieldRef?.toMap()
                }
                if self.key != nil {
                    map["Key"] = self.key!
                }
                if self.value != nil {
                    map["Value"] = self.value!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("FieldRef") {
                    var model = CreateContainerGroupRequest.InitContainer.EnvironmentVar.FieldRef()
                    model.fromMap(dict["FieldRef"] as! [String: Any])
                    self.fieldRef = model
                }
                if dict.keys.contains("Key") {
                    self.key = dict["Key"] as! String
                }
                if dict.keys.contains("Value") {
                    self.value = dict["Value"] as! String
                }
            }
        }
        public class Port : Tea.TeaModel {
            public var port: Int32?

            public var protocol_: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.port != nil {
                    map["Port"] = self.port!
                }
                if self.protocol_ != nil {
                    map["Protocol"] = self.protocol_!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("Port") {
                    self.port = dict["Port"] as! Int32
                }
                if dict.keys.contains("Protocol") {
                    self.protocol_ = dict["Protocol"] as! String
                }
            }
        }
        public class VolumeMount : Tea.TeaModel {
            public var mountPath: String?

            public var mountPropagation: String?

            public var name: String?

            public var readOnly: Bool?

            public var subPath: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.mountPath != nil {
                    map["MountPath"] = self.mountPath!
                }
                if self.mountPropagation != nil {
                    map["MountPropagation"] = self.mountPropagation!
                }
                if self.name != nil {
                    map["Name"] = self.name!
                }
                if self.readOnly != nil {
                    map["ReadOnly"] = self.readOnly!
                }
                if self.subPath != nil {
                    map["SubPath"] = self.subPath!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("MountPath") {
                    self.mountPath = dict["MountPath"] as! String
                }
                if dict.keys.contains("MountPropagation") {
                    self.mountPropagation = dict["MountPropagation"] as! String
                }
                if dict.keys.contains("Name") {
                    self.name = dict["Name"] as! String
                }
                if dict.keys.contains("ReadOnly") {
                    self.readOnly = dict["ReadOnly"] as! Bool
                }
                if dict.keys.contains("SubPath") {
                    self.subPath = dict["SubPath"] as! String
                }
            }
        }
        public var securityContext: CreateContainerGroupRequest.InitContainer.SecurityContext?

        public var arg: [String]?

        public var command: [String]?

        public var cpu: Double?

        public var environmentVar: [CreateContainerGroupRequest.InitContainer.EnvironmentVar]?

        public var gpu: Int32?

        public var image: String?

        public var imagePullPolicy: String?

        public var memory: Double?

        public var name: String?

        public var port: [CreateContainerGroupRequest.InitContainer.Port]?

        public var terminationMessagePath: String?

        public var terminationMessagePolicy: String?

        public var volumeMount: [CreateContainerGroupRequest.InitContainer.VolumeMount]?

        public var workingDir: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.validateRequired(self.securityContext, "securityContext")
            try self.securityContext?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.securityContext != nil {
                map["SecurityContext"] = self.securityContext?.toMap()
            }
            if self.arg != nil {
                map["Arg"] = self.arg!
            }
            if self.command != nil {
                map["Command"] = self.command!
            }
            if self.cpu != nil {
                map["Cpu"] = self.cpu!
            }
            if self.environmentVar != nil {
                var tmp : [Any] = []
                for k in self.environmentVar! {
                    tmp.append(k.toMap())
                }
                map["EnvironmentVar"] = tmp
            }
            if self.gpu != nil {
                map["Gpu"] = self.gpu!
            }
            if self.image != nil {
                map["Image"] = self.image!
            }
            if self.imagePullPolicy != nil {
                map["ImagePullPolicy"] = self.imagePullPolicy!
            }
            if self.memory != nil {
                map["Memory"] = self.memory!
            }
            if self.name != nil {
                map["Name"] = self.name!
            }
            if self.port != nil {
                var tmp : [Any] = []
                for k in self.port! {
                    tmp.append(k.toMap())
                }
                map["Port"] = tmp
            }
            if self.terminationMessagePath != nil {
                map["TerminationMessagePath"] = self.terminationMessagePath!
            }
            if self.terminationMessagePolicy != nil {
                map["TerminationMessagePolicy"] = self.terminationMessagePolicy!
            }
            if self.volumeMount != nil {
                var tmp : [Any] = []
                for k in self.volumeMount! {
                    tmp.append(k.toMap())
                }
                map["VolumeMount"] = tmp
            }
            if self.workingDir != nil {
                map["WorkingDir"] = self.workingDir!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("SecurityContext") {
                var model = CreateContainerGroupRequest.InitContainer.SecurityContext()
                model.fromMap(dict["SecurityContext"] as! [String: Any])
                self.securityContext = model
            }
            if dict.keys.contains("Arg") {
                self.arg = dict["Arg"] as! [String]
            }
            if dict.keys.contains("Command") {
                self.command = dict["Command"] as! [String]
            }
            if dict.keys.contains("Cpu") {
                self.cpu = dict["Cpu"] as! Double
            }
            if dict.keys.contains("EnvironmentVar") {
                self.environmentVar = dict["EnvironmentVar"] as! [CreateContainerGroupRequest.InitContainer.EnvironmentVar]
            }
            if dict.keys.contains("Gpu") {
                self.gpu = dict["Gpu"] as! Int32
            }
            if dict.keys.contains("Image") {
                self.image = dict["Image"] as! String
            }
            if dict.keys.contains("ImagePullPolicy") {
                self.imagePullPolicy = dict["ImagePullPolicy"] as! String
            }
            if dict.keys.contains("Memory") {
                self.memory = dict["Memory"] as! Double
            }
            if dict.keys.contains("Name") {
                self.name = dict["Name"] as! String
            }
            if dict.keys.contains("Port") {
                self.port = dict["Port"] as! [CreateContainerGroupRequest.InitContainer.Port]
            }
            if dict.keys.contains("TerminationMessagePath") {
                self.terminationMessagePath = dict["TerminationMessagePath"] as! String
            }
            if dict.keys.contains("TerminationMessagePolicy") {
                self.terminationMessagePolicy = dict["TerminationMessagePolicy"] as! String
            }
            if dict.keys.contains("VolumeMount") {
                self.volumeMount = dict["VolumeMount"] as! [CreateContainerGroupRequest.InitContainer.VolumeMount]
            }
            if dict.keys.contains("WorkingDir") {
                self.workingDir = dict["WorkingDir"] as! String
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Key") {
                self.key = dict["Key"] as! String
            }
            if dict.keys.contains("Value") {
                self.value = dict["Value"] as! String
            }
        }
    }
    public class Volume : Tea.TeaModel {
        public class ConfigFileVolume : Tea.TeaModel {
            public class ConfigFileToPath : Tea.TeaModel {
                public var content: String?

                public var mode: Int32?

                public var path: String?

                public override init() {
                    super.init()
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
                    if self.mode != nil {
                        map["Mode"] = self.mode!
                    }
                    if self.path != nil {
                        map["Path"] = self.path!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("Content") {
                        self.content = dict["Content"] as! String
                    }
                    if dict.keys.contains("Mode") {
                        self.mode = dict["Mode"] as! Int32
                    }
                    if dict.keys.contains("Path") {
                        self.path = dict["Path"] as! String
                    }
                }
            }
            public var configFileToPath: [CreateContainerGroupRequest.Volume.ConfigFileVolume.ConfigFileToPath]?

            public var defaultMode: Int32?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.configFileToPath != nil {
                    var tmp : [Any] = []
                    for k in self.configFileToPath! {
                        tmp.append(k.toMap())
                    }
                    map["ConfigFileToPath"] = tmp
                }
                if self.defaultMode != nil {
                    map["DefaultMode"] = self.defaultMode!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("ConfigFileToPath") {
                    self.configFileToPath = dict["ConfigFileToPath"] as! [CreateContainerGroupRequest.Volume.ConfigFileVolume.ConfigFileToPath]
                }
                if dict.keys.contains("DefaultMode") {
                    self.defaultMode = dict["DefaultMode"] as! Int32
                }
            }
        }
        public class DiskVolume : Tea.TeaModel {
            public var diskId: String?

            public var diskSize: Int32?

            public var fsType: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.diskId != nil {
                    map["DiskId"] = self.diskId!
                }
                if self.diskSize != nil {
                    map["DiskSize"] = self.diskSize!
                }
                if self.fsType != nil {
                    map["FsType"] = self.fsType!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("DiskId") {
                    self.diskId = dict["DiskId"] as! String
                }
                if dict.keys.contains("DiskSize") {
                    self.diskSize = dict["DiskSize"] as! Int32
                }
                if dict.keys.contains("FsType") {
                    self.fsType = dict["FsType"] as! String
                }
            }
        }
        public class EmptyDirVolume : Tea.TeaModel {
            public var medium: String?

            public var sizeLimit: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.medium != nil {
                    map["Medium"] = self.medium!
                }
                if self.sizeLimit != nil {
                    map["SizeLimit"] = self.sizeLimit!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("Medium") {
                    self.medium = dict["Medium"] as! String
                }
                if dict.keys.contains("SizeLimit") {
                    self.sizeLimit = dict["SizeLimit"] as! String
                }
            }
        }
        public class FlexVolume : Tea.TeaModel {
            public var driver: String?

            public var fsType: String?

            public var options: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.driver != nil {
                    map["Driver"] = self.driver!
                }
                if self.fsType != nil {
                    map["FsType"] = self.fsType!
                }
                if self.options != nil {
                    map["Options"] = self.options!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("Driver") {
                    self.driver = dict["Driver"] as! String
                }
                if dict.keys.contains("FsType") {
                    self.fsType = dict["FsType"] as! String
                }
                if dict.keys.contains("Options") {
                    self.options = dict["Options"] as! String
                }
            }
        }
        public class HostPathVolume : Tea.TeaModel {
            public var path: String?

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
                if self.path != nil {
                    map["Path"] = self.path!
                }
                if self.type != nil {
                    map["Type"] = self.type!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("Path") {
                    self.path = dict["Path"] as! String
                }
                if dict.keys.contains("Type") {
                    self.type = dict["Type"] as! String
                }
            }
        }
        public class NFSVolume : Tea.TeaModel {
            public var path: String?

            public var readOnly: Bool?

            public var server: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.path != nil {
                    map["Path"] = self.path!
                }
                if self.readOnly != nil {
                    map["ReadOnly"] = self.readOnly!
                }
                if self.server != nil {
                    map["Server"] = self.server!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("Path") {
                    self.path = dict["Path"] as! String
                }
                if dict.keys.contains("ReadOnly") {
                    self.readOnly = dict["ReadOnly"] as! Bool
                }
                if dict.keys.contains("Server") {
                    self.server = dict["Server"] as! String
                }
            }
        }
        public var configFileVolume: CreateContainerGroupRequest.Volume.ConfigFileVolume?

        public var diskVolume: CreateContainerGroupRequest.Volume.DiskVolume?

        public var emptyDirVolume: CreateContainerGroupRequest.Volume.EmptyDirVolume?

        public var flexVolume: CreateContainerGroupRequest.Volume.FlexVolume?

        public var hostPathVolume: CreateContainerGroupRequest.Volume.HostPathVolume?

        public var NFSVolume: CreateContainerGroupRequest.Volume.NFSVolume?

        public var name: String?

        public var type: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.validateRequired(self.configFileVolume, "configFileVolume")
            try self.configFileVolume?.validate()
            try self.validateRequired(self.diskVolume, "diskVolume")
            try self.diskVolume?.validate()
            try self.validateRequired(self.emptyDirVolume, "emptyDirVolume")
            try self.emptyDirVolume?.validate()
            try self.validateRequired(self.flexVolume, "flexVolume")
            try self.flexVolume?.validate()
            try self.validateRequired(self.hostPathVolume, "hostPathVolume")
            try self.hostPathVolume?.validate()
            try self.validateRequired(self.NFSVolume, "NFSVolume")
            try self.NFSVolume?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.configFileVolume != nil {
                map["ConfigFileVolume"] = self.configFileVolume?.toMap()
            }
            if self.diskVolume != nil {
                map["DiskVolume"] = self.diskVolume?.toMap()
            }
            if self.emptyDirVolume != nil {
                map["EmptyDirVolume"] = self.emptyDirVolume?.toMap()
            }
            if self.flexVolume != nil {
                map["FlexVolume"] = self.flexVolume?.toMap()
            }
            if self.hostPathVolume != nil {
                map["HostPathVolume"] = self.hostPathVolume?.toMap()
            }
            if self.NFSVolume != nil {
                map["NFSVolume"] = self.NFSVolume?.toMap()
            }
            if self.name != nil {
                map["Name"] = self.name!
            }
            if self.type != nil {
                map["Type"] = self.type!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("ConfigFileVolume") {
                var model = CreateContainerGroupRequest.Volume.ConfigFileVolume()
                model.fromMap(dict["ConfigFileVolume"] as! [String: Any])
                self.configFileVolume = model
            }
            if dict.keys.contains("DiskVolume") {
                var model = CreateContainerGroupRequest.Volume.DiskVolume()
                model.fromMap(dict["DiskVolume"] as! [String: Any])
                self.diskVolume = model
            }
            if dict.keys.contains("EmptyDirVolume") {
                var model = CreateContainerGroupRequest.Volume.EmptyDirVolume()
                model.fromMap(dict["EmptyDirVolume"] as! [String: Any])
                self.emptyDirVolume = model
            }
            if dict.keys.contains("FlexVolume") {
                var model = CreateContainerGroupRequest.Volume.FlexVolume()
                model.fromMap(dict["FlexVolume"] as! [String: Any])
                self.flexVolume = model
            }
            if dict.keys.contains("HostPathVolume") {
                var model = CreateContainerGroupRequest.Volume.HostPathVolume()
                model.fromMap(dict["HostPathVolume"] as! [String: Any])
                self.hostPathVolume = model
            }
            if dict.keys.contains("NFSVolume") {
                var model = CreateContainerGroupRequest.Volume.NFSVolume()
                model.fromMap(dict["NFSVolume"] as! [String: Any])
                self.NFSVolume = model
            }
            if dict.keys.contains("Name") {
                self.name = dict["Name"] as! String
            }
            if dict.keys.contains("Type") {
                self.type = dict["Type"] as! String
            }
        }
    }
    public var dnsConfig: CreateContainerGroupRequest.DnsConfig?

    public var hostSecurityContext: CreateContainerGroupRequest.HostSecurityContext?

    public var securityContext: CreateContainerGroupRequest.SecurityContext?

    public var acrRegistryInfo: [CreateContainerGroupRequest.AcrRegistryInfo]?

    public var activeDeadlineSeconds: Int64?

    public var arn: [CreateContainerGroupRequest.Arn]?

    public var autoCreateEip: Bool?

    public var autoMatchImageCache: Bool?

    public var clientToken: String?

    public var container: [CreateContainerGroupRequest.Container]?

    public var containerGroupName: String?

    public var corePattern: String?

    public var cpu: Double?

    public var cpuOptionsCore: Int32?

    public var cpuOptionsNuma: String?

    public var cpuOptionsThreadsPerCore: Int32?

    public var dnsPolicy: String?

    public var egressBandwidth: Int64?

    public var eipBandwidth: Int32?

    public var eipCommonBandwidthPackage: String?

    public var eipISP: String?

    public var eipInstanceId: String?

    public var ephemeralStorage: Int32?

    public var hostAliase: [CreateContainerGroupRequest.HostAliase]?

    public var hostName: String?

    public var imageAccelerateMode: String?

    public var imageRegistryCredential: [CreateContainerGroupRequest.ImageRegistryCredential]?

    public var imageSnapshotId: String?

    public var ingressBandwidth: Int64?

    public var initContainer: [CreateContainerGroupRequest.InitContainer]?

    public var insecureRegistry: String?

    public var instanceType: String?

    public var ipv6AddressCount: Int32?

    public var ipv6GatewayBandwidth: String?

    public var ipv6GatewayBandwidthEnable: Bool?

    public var memory: Double?

    public var ntpServer: [String]?

    public var ownerAccount: String?

    public var ownerId: Int64?

    public var plainHttpRegistry: String?

    public var productOnEciMode: String?

    public var ramRoleName: String?

    public var regionId: String?

    public var resourceGroupId: String?

    public var resourceOwnerAccount: String?

    public var resourceOwnerId: Int64?

    public var restartPolicy: String?

    public var scheduleStrategy: String?

    public var secondaryENIPolicy: String?

    public var securityGroupId: String?

    public var shareProcessNamespace: Bool?

    public var slsEnable: Bool?

    public var spotDuration: Int64?

    public var spotPriceLimit: Double?

    public var spotStrategy: String?

    public var strictSpot: Bool?

    public var tag: [CreateContainerGroupRequest.Tag]?

    public var tenantSecurityGroupId: String?

    public var tenantVSwitchId: String?

    public var terminationGracePeriodSeconds: Int64?

    public var vSwitchId: String?

    public var volume: [CreateContainerGroupRequest.Volume]?

    public var zoneId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.dnsConfig?.validate()
        try self.hostSecurityContext?.validate()
        try self.securityContext?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.dnsConfig != nil {
            map["DnsConfig"] = self.dnsConfig?.toMap()
        }
        if self.hostSecurityContext != nil {
            map["HostSecurityContext"] = self.hostSecurityContext?.toMap()
        }
        if self.securityContext != nil {
            map["SecurityContext"] = self.securityContext?.toMap()
        }
        if self.acrRegistryInfo != nil {
            var tmp : [Any] = []
            for k in self.acrRegistryInfo! {
                tmp.append(k.toMap())
            }
            map["AcrRegistryInfo"] = tmp
        }
        if self.activeDeadlineSeconds != nil {
            map["ActiveDeadlineSeconds"] = self.activeDeadlineSeconds!
        }
        if self.arn != nil {
            var tmp : [Any] = []
            for k in self.arn! {
                tmp.append(k.toMap())
            }
            map["Arn"] = tmp
        }
        if self.autoCreateEip != nil {
            map["AutoCreateEip"] = self.autoCreateEip!
        }
        if self.autoMatchImageCache != nil {
            map["AutoMatchImageCache"] = self.autoMatchImageCache!
        }
        if self.clientToken != nil {
            map["ClientToken"] = self.clientToken!
        }
        if self.container != nil {
            var tmp : [Any] = []
            for k in self.container! {
                tmp.append(k.toMap())
            }
            map["Container"] = tmp
        }
        if self.containerGroupName != nil {
            map["ContainerGroupName"] = self.containerGroupName!
        }
        if self.corePattern != nil {
            map["CorePattern"] = self.corePattern!
        }
        if self.cpu != nil {
            map["Cpu"] = self.cpu!
        }
        if self.cpuOptionsCore != nil {
            map["CpuOptionsCore"] = self.cpuOptionsCore!
        }
        if self.cpuOptionsNuma != nil {
            map["CpuOptionsNuma"] = self.cpuOptionsNuma!
        }
        if self.cpuOptionsThreadsPerCore != nil {
            map["CpuOptionsThreadsPerCore"] = self.cpuOptionsThreadsPerCore!
        }
        if self.dnsPolicy != nil {
            map["DnsPolicy"] = self.dnsPolicy!
        }
        if self.egressBandwidth != nil {
            map["EgressBandwidth"] = self.egressBandwidth!
        }
        if self.eipBandwidth != nil {
            map["EipBandwidth"] = self.eipBandwidth!
        }
        if self.eipCommonBandwidthPackage != nil {
            map["EipCommonBandwidthPackage"] = self.eipCommonBandwidthPackage!
        }
        if self.eipISP != nil {
            map["EipISP"] = self.eipISP!
        }
        if self.eipInstanceId != nil {
            map["EipInstanceId"] = self.eipInstanceId!
        }
        if self.ephemeralStorage != nil {
            map["EphemeralStorage"] = self.ephemeralStorage!
        }
        if self.hostAliase != nil {
            var tmp : [Any] = []
            for k in self.hostAliase! {
                tmp.append(k.toMap())
            }
            map["HostAliase"] = tmp
        }
        if self.hostName != nil {
            map["HostName"] = self.hostName!
        }
        if self.imageAccelerateMode != nil {
            map["ImageAccelerateMode"] = self.imageAccelerateMode!
        }
        if self.imageRegistryCredential != nil {
            var tmp : [Any] = []
            for k in self.imageRegistryCredential! {
                tmp.append(k.toMap())
            }
            map["ImageRegistryCredential"] = tmp
        }
        if self.imageSnapshotId != nil {
            map["ImageSnapshotId"] = self.imageSnapshotId!
        }
        if self.ingressBandwidth != nil {
            map["IngressBandwidth"] = self.ingressBandwidth!
        }
        if self.initContainer != nil {
            var tmp : [Any] = []
            for k in self.initContainer! {
                tmp.append(k.toMap())
            }
            map["InitContainer"] = tmp
        }
        if self.insecureRegistry != nil {
            map["InsecureRegistry"] = self.insecureRegistry!
        }
        if self.instanceType != nil {
            map["InstanceType"] = self.instanceType!
        }
        if self.ipv6AddressCount != nil {
            map["Ipv6AddressCount"] = self.ipv6AddressCount!
        }
        if self.ipv6GatewayBandwidth != nil {
            map["Ipv6GatewayBandwidth"] = self.ipv6GatewayBandwidth!
        }
        if self.ipv6GatewayBandwidthEnable != nil {
            map["Ipv6GatewayBandwidthEnable"] = self.ipv6GatewayBandwidthEnable!
        }
        if self.memory != nil {
            map["Memory"] = self.memory!
        }
        if self.ntpServer != nil {
            map["NtpServer"] = self.ntpServer!
        }
        if self.ownerAccount != nil {
            map["OwnerAccount"] = self.ownerAccount!
        }
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        if self.plainHttpRegistry != nil {
            map["PlainHttpRegistry"] = self.plainHttpRegistry!
        }
        if self.productOnEciMode != nil {
            map["ProductOnEciMode"] = self.productOnEciMode!
        }
        if self.ramRoleName != nil {
            map["RamRoleName"] = self.ramRoleName!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.resourceGroupId != nil {
            map["ResourceGroupId"] = self.resourceGroupId!
        }
        if self.resourceOwnerAccount != nil {
            map["ResourceOwnerAccount"] = self.resourceOwnerAccount!
        }
        if self.resourceOwnerId != nil {
            map["ResourceOwnerId"] = self.resourceOwnerId!
        }
        if self.restartPolicy != nil {
            map["RestartPolicy"] = self.restartPolicy!
        }
        if self.scheduleStrategy != nil {
            map["ScheduleStrategy"] = self.scheduleStrategy!
        }
        if self.secondaryENIPolicy != nil {
            map["SecondaryENIPolicy"] = self.secondaryENIPolicy!
        }
        if self.securityGroupId != nil {
            map["SecurityGroupId"] = self.securityGroupId!
        }
        if self.shareProcessNamespace != nil {
            map["ShareProcessNamespace"] = self.shareProcessNamespace!
        }
        if self.slsEnable != nil {
            map["SlsEnable"] = self.slsEnable!
        }
        if self.spotDuration != nil {
            map["SpotDuration"] = self.spotDuration!
        }
        if self.spotPriceLimit != nil {
            map["SpotPriceLimit"] = self.spotPriceLimit!
        }
        if self.spotStrategy != nil {
            map["SpotStrategy"] = self.spotStrategy!
        }
        if self.strictSpot != nil {
            map["StrictSpot"] = self.strictSpot!
        }
        if self.tag != nil {
            var tmp : [Any] = []
            for k in self.tag! {
                tmp.append(k.toMap())
            }
            map["Tag"] = tmp
        }
        if self.tenantSecurityGroupId != nil {
            map["TenantSecurityGroupId"] = self.tenantSecurityGroupId!
        }
        if self.tenantVSwitchId != nil {
            map["TenantVSwitchId"] = self.tenantVSwitchId!
        }
        if self.terminationGracePeriodSeconds != nil {
            map["TerminationGracePeriodSeconds"] = self.terminationGracePeriodSeconds!
        }
        if self.vSwitchId != nil {
            map["VSwitchId"] = self.vSwitchId!
        }
        if self.volume != nil {
            var tmp : [Any] = []
            for k in self.volume! {
                tmp.append(k.toMap())
            }
            map["Volume"] = tmp
        }
        if self.zoneId != nil {
            map["ZoneId"] = self.zoneId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DnsConfig") {
            var model = CreateContainerGroupRequest.DnsConfig()
            model.fromMap(dict["DnsConfig"] as! [String: Any])
            self.dnsConfig = model
        }
        if dict.keys.contains("HostSecurityContext") {
            var model = CreateContainerGroupRequest.HostSecurityContext()
            model.fromMap(dict["HostSecurityContext"] as! [String: Any])
            self.hostSecurityContext = model
        }
        if dict.keys.contains("SecurityContext") {
            var model = CreateContainerGroupRequest.SecurityContext()
            model.fromMap(dict["SecurityContext"] as! [String: Any])
            self.securityContext = model
        }
        if dict.keys.contains("AcrRegistryInfo") {
            self.acrRegistryInfo = dict["AcrRegistryInfo"] as! [CreateContainerGroupRequest.AcrRegistryInfo]
        }
        if dict.keys.contains("ActiveDeadlineSeconds") {
            self.activeDeadlineSeconds = dict["ActiveDeadlineSeconds"] as! Int64
        }
        if dict.keys.contains("Arn") {
            self.arn = dict["Arn"] as! [CreateContainerGroupRequest.Arn]
        }
        if dict.keys.contains("AutoCreateEip") {
            self.autoCreateEip = dict["AutoCreateEip"] as! Bool
        }
        if dict.keys.contains("AutoMatchImageCache") {
            self.autoMatchImageCache = dict["AutoMatchImageCache"] as! Bool
        }
        if dict.keys.contains("ClientToken") {
            self.clientToken = dict["ClientToken"] as! String
        }
        if dict.keys.contains("Container") {
            self.container = dict["Container"] as! [CreateContainerGroupRequest.Container]
        }
        if dict.keys.contains("ContainerGroupName") {
            self.containerGroupName = dict["ContainerGroupName"] as! String
        }
        if dict.keys.contains("CorePattern") {
            self.corePattern = dict["CorePattern"] as! String
        }
        if dict.keys.contains("Cpu") {
            self.cpu = dict["Cpu"] as! Double
        }
        if dict.keys.contains("CpuOptionsCore") {
            self.cpuOptionsCore = dict["CpuOptionsCore"] as! Int32
        }
        if dict.keys.contains("CpuOptionsNuma") {
            self.cpuOptionsNuma = dict["CpuOptionsNuma"] as! String
        }
        if dict.keys.contains("CpuOptionsThreadsPerCore") {
            self.cpuOptionsThreadsPerCore = dict["CpuOptionsThreadsPerCore"] as! Int32
        }
        if dict.keys.contains("DnsPolicy") {
            self.dnsPolicy = dict["DnsPolicy"] as! String
        }
        if dict.keys.contains("EgressBandwidth") {
            self.egressBandwidth = dict["EgressBandwidth"] as! Int64
        }
        if dict.keys.contains("EipBandwidth") {
            self.eipBandwidth = dict["EipBandwidth"] as! Int32
        }
        if dict.keys.contains("EipCommonBandwidthPackage") {
            self.eipCommonBandwidthPackage = dict["EipCommonBandwidthPackage"] as! String
        }
        if dict.keys.contains("EipISP") {
            self.eipISP = dict["EipISP"] as! String
        }
        if dict.keys.contains("EipInstanceId") {
            self.eipInstanceId = dict["EipInstanceId"] as! String
        }
        if dict.keys.contains("EphemeralStorage") {
            self.ephemeralStorage = dict["EphemeralStorage"] as! Int32
        }
        if dict.keys.contains("HostAliase") {
            self.hostAliase = dict["HostAliase"] as! [CreateContainerGroupRequest.HostAliase]
        }
        if dict.keys.contains("HostName") {
            self.hostName = dict["HostName"] as! String
        }
        if dict.keys.contains("ImageAccelerateMode") {
            self.imageAccelerateMode = dict["ImageAccelerateMode"] as! String
        }
        if dict.keys.contains("ImageRegistryCredential") {
            self.imageRegistryCredential = dict["ImageRegistryCredential"] as! [CreateContainerGroupRequest.ImageRegistryCredential]
        }
        if dict.keys.contains("ImageSnapshotId") {
            self.imageSnapshotId = dict["ImageSnapshotId"] as! String
        }
        if dict.keys.contains("IngressBandwidth") {
            self.ingressBandwidth = dict["IngressBandwidth"] as! Int64
        }
        if dict.keys.contains("InitContainer") {
            self.initContainer = dict["InitContainer"] as! [CreateContainerGroupRequest.InitContainer]
        }
        if dict.keys.contains("InsecureRegistry") {
            self.insecureRegistry = dict["InsecureRegistry"] as! String
        }
        if dict.keys.contains("InstanceType") {
            self.instanceType = dict["InstanceType"] as! String
        }
        if dict.keys.contains("Ipv6AddressCount") {
            self.ipv6AddressCount = dict["Ipv6AddressCount"] as! Int32
        }
        if dict.keys.contains("Ipv6GatewayBandwidth") {
            self.ipv6GatewayBandwidth = dict["Ipv6GatewayBandwidth"] as! String
        }
        if dict.keys.contains("Ipv6GatewayBandwidthEnable") {
            self.ipv6GatewayBandwidthEnable = dict["Ipv6GatewayBandwidthEnable"] as! Bool
        }
        if dict.keys.contains("Memory") {
            self.memory = dict["Memory"] as! Double
        }
        if dict.keys.contains("NtpServer") {
            self.ntpServer = dict["NtpServer"] as! [String]
        }
        if dict.keys.contains("OwnerAccount") {
            self.ownerAccount = dict["OwnerAccount"] as! String
        }
        if dict.keys.contains("OwnerId") {
            self.ownerId = dict["OwnerId"] as! Int64
        }
        if dict.keys.contains("PlainHttpRegistry") {
            self.plainHttpRegistry = dict["PlainHttpRegistry"] as! String
        }
        if dict.keys.contains("ProductOnEciMode") {
            self.productOnEciMode = dict["ProductOnEciMode"] as! String
        }
        if dict.keys.contains("RamRoleName") {
            self.ramRoleName = dict["RamRoleName"] as! String
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("ResourceGroupId") {
            self.resourceGroupId = dict["ResourceGroupId"] as! String
        }
        if dict.keys.contains("ResourceOwnerAccount") {
            self.resourceOwnerAccount = dict["ResourceOwnerAccount"] as! String
        }
        if dict.keys.contains("ResourceOwnerId") {
            self.resourceOwnerId = dict["ResourceOwnerId"] as! Int64
        }
        if dict.keys.contains("RestartPolicy") {
            self.restartPolicy = dict["RestartPolicy"] as! String
        }
        if dict.keys.contains("ScheduleStrategy") {
            self.scheduleStrategy = dict["ScheduleStrategy"] as! String
        }
        if dict.keys.contains("SecondaryENIPolicy") {
            self.secondaryENIPolicy = dict["SecondaryENIPolicy"] as! String
        }
        if dict.keys.contains("SecurityGroupId") {
            self.securityGroupId = dict["SecurityGroupId"] as! String
        }
        if dict.keys.contains("ShareProcessNamespace") {
            self.shareProcessNamespace = dict["ShareProcessNamespace"] as! Bool
        }
        if dict.keys.contains("SlsEnable") {
            self.slsEnable = dict["SlsEnable"] as! Bool
        }
        if dict.keys.contains("SpotDuration") {
            self.spotDuration = dict["SpotDuration"] as! Int64
        }
        if dict.keys.contains("SpotPriceLimit") {
            self.spotPriceLimit = dict["SpotPriceLimit"] as! Double
        }
        if dict.keys.contains("SpotStrategy") {
            self.spotStrategy = dict["SpotStrategy"] as! String
        }
        if dict.keys.contains("StrictSpot") {
            self.strictSpot = dict["StrictSpot"] as! Bool
        }
        if dict.keys.contains("Tag") {
            self.tag = dict["Tag"] as! [CreateContainerGroupRequest.Tag]
        }
        if dict.keys.contains("TenantSecurityGroupId") {
            self.tenantSecurityGroupId = dict["TenantSecurityGroupId"] as! String
        }
        if dict.keys.contains("TenantVSwitchId") {
            self.tenantVSwitchId = dict["TenantVSwitchId"] as! String
        }
        if dict.keys.contains("TerminationGracePeriodSeconds") {
            self.terminationGracePeriodSeconds = dict["TerminationGracePeriodSeconds"] as! Int64
        }
        if dict.keys.contains("VSwitchId") {
            self.vSwitchId = dict["VSwitchId"] as! String
        }
        if dict.keys.contains("Volume") {
            self.volume = dict["Volume"] as! [CreateContainerGroupRequest.Volume]
        }
        if dict.keys.contains("ZoneId") {
            self.zoneId = dict["ZoneId"] as! String
        }
    }
}

public class CreateContainerGroupResponseBody : Tea.TeaModel {
    public var containerGroupId: String?

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
        if self.containerGroupId != nil {
            map["ContainerGroupId"] = self.containerGroupId!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ContainerGroupId") {
            self.containerGroupId = dict["ContainerGroupId"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class CreateContainerGroupResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateContainerGroupResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = CreateContainerGroupResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class CreateImageCacheRequest : Tea.TeaModel {
    public class AcrRegistryInfo : Tea.TeaModel {
        public var domain: [String]?

        public var instanceId: String?

        public var instanceName: String?

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
            if self.domain != nil {
                map["Domain"] = self.domain!
            }
            if self.instanceId != nil {
                map["InstanceId"] = self.instanceId!
            }
            if self.instanceName != nil {
                map["InstanceName"] = self.instanceName!
            }
            if self.regionId != nil {
                map["RegionId"] = self.regionId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Domain") {
                self.domain = dict["Domain"] as! [String]
            }
            if dict.keys.contains("InstanceId") {
                self.instanceId = dict["InstanceId"] as! String
            }
            if dict.keys.contains("InstanceName") {
                self.instanceName = dict["InstanceName"] as! String
            }
            if dict.keys.contains("RegionId") {
                self.regionId = dict["RegionId"] as! String
            }
        }
    }
    public class ImageRegistryCredential : Tea.TeaModel {
        public var password: String?

        public var server: String?

        public var userName: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.password != nil {
                map["Password"] = self.password!
            }
            if self.server != nil {
                map["Server"] = self.server!
            }
            if self.userName != nil {
                map["UserName"] = self.userName!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Password") {
                self.password = dict["Password"] as! String
            }
            if dict.keys.contains("Server") {
                self.server = dict["Server"] as! String
            }
            if dict.keys.contains("UserName") {
                self.userName = dict["UserName"] as! String
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Key") {
                self.key = dict["Key"] as! String
            }
            if dict.keys.contains("Value") {
                self.value = dict["Value"] as! String
            }
        }
    }
    public var acrRegistryInfo: [CreateImageCacheRequest.AcrRegistryInfo]?

    public var annotations: String?

    public var autoMatchImageCache: Bool?

    public var clientToken: String?

    public var eipInstanceId: String?

    public var eliminationStrategy: String?

    public var flash: Bool?

    public var flashCopyCount: Int32?

    public var image: [String]?

    public var imageCacheName: String?

    public var imageCacheSize: Int32?

    public var imageRegistryCredential: [CreateImageCacheRequest.ImageRegistryCredential]?

    public var insecureRegistry: String?

    public var ownerAccount: String?

    public var ownerId: Int64?

    public var plainHttpRegistry: String?

    public var regionId: String?

    public var resourceGroupId: String?

    public var resourceOwnerAccount: String?

    public var resourceOwnerId: Int64?

    public var retentionDays: Int32?

    public var securityGroupId: String?

    public var standardCopyCount: Int32?

    public var tag: [CreateImageCacheRequest.Tag]?

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
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.acrRegistryInfo != nil {
            var tmp : [Any] = []
            for k in self.acrRegistryInfo! {
                tmp.append(k.toMap())
            }
            map["AcrRegistryInfo"] = tmp
        }
        if self.annotations != nil {
            map["Annotations"] = self.annotations!
        }
        if self.autoMatchImageCache != nil {
            map["AutoMatchImageCache"] = self.autoMatchImageCache!
        }
        if self.clientToken != nil {
            map["ClientToken"] = self.clientToken!
        }
        if self.eipInstanceId != nil {
            map["EipInstanceId"] = self.eipInstanceId!
        }
        if self.eliminationStrategy != nil {
            map["EliminationStrategy"] = self.eliminationStrategy!
        }
        if self.flash != nil {
            map["Flash"] = self.flash!
        }
        if self.flashCopyCount != nil {
            map["FlashCopyCount"] = self.flashCopyCount!
        }
        if self.image != nil {
            map["Image"] = self.image!
        }
        if self.imageCacheName != nil {
            map["ImageCacheName"] = self.imageCacheName!
        }
        if self.imageCacheSize != nil {
            map["ImageCacheSize"] = self.imageCacheSize!
        }
        if self.imageRegistryCredential != nil {
            var tmp : [Any] = []
            for k in self.imageRegistryCredential! {
                tmp.append(k.toMap())
            }
            map["ImageRegistryCredential"] = tmp
        }
        if self.insecureRegistry != nil {
            map["InsecureRegistry"] = self.insecureRegistry!
        }
        if self.ownerAccount != nil {
            map["OwnerAccount"] = self.ownerAccount!
        }
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        if self.plainHttpRegistry != nil {
            map["PlainHttpRegistry"] = self.plainHttpRegistry!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.resourceGroupId != nil {
            map["ResourceGroupId"] = self.resourceGroupId!
        }
        if self.resourceOwnerAccount != nil {
            map["ResourceOwnerAccount"] = self.resourceOwnerAccount!
        }
        if self.resourceOwnerId != nil {
            map["ResourceOwnerId"] = self.resourceOwnerId!
        }
        if self.retentionDays != nil {
            map["RetentionDays"] = self.retentionDays!
        }
        if self.securityGroupId != nil {
            map["SecurityGroupId"] = self.securityGroupId!
        }
        if self.standardCopyCount != nil {
            map["StandardCopyCount"] = self.standardCopyCount!
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
        if self.zoneId != nil {
            map["ZoneId"] = self.zoneId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AcrRegistryInfo") {
            self.acrRegistryInfo = dict["AcrRegistryInfo"] as! [CreateImageCacheRequest.AcrRegistryInfo]
        }
        if dict.keys.contains("Annotations") {
            self.annotations = dict["Annotations"] as! String
        }
        if dict.keys.contains("AutoMatchImageCache") {
            self.autoMatchImageCache = dict["AutoMatchImageCache"] as! Bool
        }
        if dict.keys.contains("ClientToken") {
            self.clientToken = dict["ClientToken"] as! String
        }
        if dict.keys.contains("EipInstanceId") {
            self.eipInstanceId = dict["EipInstanceId"] as! String
        }
        if dict.keys.contains("EliminationStrategy") {
            self.eliminationStrategy = dict["EliminationStrategy"] as! String
        }
        if dict.keys.contains("Flash") {
            self.flash = dict["Flash"] as! Bool
        }
        if dict.keys.contains("FlashCopyCount") {
            self.flashCopyCount = dict["FlashCopyCount"] as! Int32
        }
        if dict.keys.contains("Image") {
            self.image = dict["Image"] as! [String]
        }
        if dict.keys.contains("ImageCacheName") {
            self.imageCacheName = dict["ImageCacheName"] as! String
        }
        if dict.keys.contains("ImageCacheSize") {
            self.imageCacheSize = dict["ImageCacheSize"] as! Int32
        }
        if dict.keys.contains("ImageRegistryCredential") {
            self.imageRegistryCredential = dict["ImageRegistryCredential"] as! [CreateImageCacheRequest.ImageRegistryCredential]
        }
        if dict.keys.contains("InsecureRegistry") {
            self.insecureRegistry = dict["InsecureRegistry"] as! String
        }
        if dict.keys.contains("OwnerAccount") {
            self.ownerAccount = dict["OwnerAccount"] as! String
        }
        if dict.keys.contains("OwnerId") {
            self.ownerId = dict["OwnerId"] as! Int64
        }
        if dict.keys.contains("PlainHttpRegistry") {
            self.plainHttpRegistry = dict["PlainHttpRegistry"] as! String
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("ResourceGroupId") {
            self.resourceGroupId = dict["ResourceGroupId"] as! String
        }
        if dict.keys.contains("ResourceOwnerAccount") {
            self.resourceOwnerAccount = dict["ResourceOwnerAccount"] as! String
        }
        if dict.keys.contains("ResourceOwnerId") {
            self.resourceOwnerId = dict["ResourceOwnerId"] as! Int64
        }
        if dict.keys.contains("RetentionDays") {
            self.retentionDays = dict["RetentionDays"] as! Int32
        }
        if dict.keys.contains("SecurityGroupId") {
            self.securityGroupId = dict["SecurityGroupId"] as! String
        }
        if dict.keys.contains("StandardCopyCount") {
            self.standardCopyCount = dict["StandardCopyCount"] as! Int32
        }
        if dict.keys.contains("Tag") {
            self.tag = dict["Tag"] as! [CreateImageCacheRequest.Tag]
        }
        if dict.keys.contains("VSwitchId") {
            self.vSwitchId = dict["VSwitchId"] as! String
        }
        if dict.keys.contains("ZoneId") {
            self.zoneId = dict["ZoneId"] as! String
        }
    }
}

public class CreateImageCacheResponseBody : Tea.TeaModel {
    public var containerGroupId: String?

    public var imageCacheId: String?

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
        if self.containerGroupId != nil {
            map["ContainerGroupId"] = self.containerGroupId!
        }
        if self.imageCacheId != nil {
            map["ImageCacheId"] = self.imageCacheId!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ContainerGroupId") {
            self.containerGroupId = dict["ContainerGroupId"] as! String
        }
        if dict.keys.contains("ImageCacheId") {
            self.imageCacheId = dict["ImageCacheId"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class CreateImageCacheResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateImageCacheResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = CreateImageCacheResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class CreateInstanceOpsTaskRequest : Tea.TeaModel {
    public var containerGroupId: String?

    public var opsType: String?

    public var opsValue: String?

    public var ownerAccount: String?

    public var ownerId: Int64?

    public var regionId: String?

    public var resourceOwnerAccount: String?

    public var resourceOwnerId: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.containerGroupId != nil {
            map["ContainerGroupId"] = self.containerGroupId!
        }
        if self.opsType != nil {
            map["OpsType"] = self.opsType!
        }
        if self.opsValue != nil {
            map["OpsValue"] = self.opsValue!
        }
        if self.ownerAccount != nil {
            map["OwnerAccount"] = self.ownerAccount!
        }
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.resourceOwnerAccount != nil {
            map["ResourceOwnerAccount"] = self.resourceOwnerAccount!
        }
        if self.resourceOwnerId != nil {
            map["ResourceOwnerId"] = self.resourceOwnerId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ContainerGroupId") {
            self.containerGroupId = dict["ContainerGroupId"] as! String
        }
        if dict.keys.contains("OpsType") {
            self.opsType = dict["OpsType"] as! String
        }
        if dict.keys.contains("OpsValue") {
            self.opsValue = dict["OpsValue"] as! String
        }
        if dict.keys.contains("OwnerAccount") {
            self.ownerAccount = dict["OwnerAccount"] as! String
        }
        if dict.keys.contains("OwnerId") {
            self.ownerId = dict["OwnerId"] as! Int64
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("ResourceOwnerAccount") {
            self.resourceOwnerAccount = dict["ResourceOwnerAccount"] as! String
        }
        if dict.keys.contains("ResourceOwnerId") {
            self.resourceOwnerId = dict["ResourceOwnerId"] as! Int64
        }
    }
}

public class CreateInstanceOpsTaskResponseBody : Tea.TeaModel {
    public var requestId: String?

    public var result: String?

    public override init() {
        super.init()
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
        if self.result != nil {
            map["Result"] = self.result!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Result") {
            self.result = dict["Result"] as! String
        }
    }
}

public class CreateInstanceOpsTaskResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateInstanceOpsTaskResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = CreateInstanceOpsTaskResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class CreateVirtualNodeRequest : Tea.TeaModel {
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Key") {
                self.key = dict["Key"] as! String
            }
            if dict.keys.contains("Value") {
                self.value = dict["Value"] as! String
            }
        }
    }
    public class Taint : Tea.TeaModel {
        public var effect: String?

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
            if self.effect != nil {
                map["Effect"] = self.effect!
            }
            if self.key != nil {
                map["Key"] = self.key!
            }
            if self.value != nil {
                map["Value"] = self.value!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Effect") {
                self.effect = dict["Effect"] as! String
            }
            if dict.keys.contains("Key") {
                self.key = dict["Key"] as! String
            }
            if dict.keys.contains("Value") {
                self.value = dict["Value"] as! String
            }
        }
    }
    public var clientToken: String?

    public var eipInstanceId: String?

    public var enablePublicNetwork: Bool?

    public var kubeConfig: String?

    public var ownerAccount: String?

    public var ownerId: Int64?

    public var regionId: String?

    public var resourceGroupId: String?

    public var resourceOwnerAccount: String?

    public var resourceOwnerId: Int64?

    public var rotateCertificateEnabled: Bool?

    public var securityGroupId: String?

    public var tag: [CreateVirtualNodeRequest.Tag]?

    public var taint: [CreateVirtualNodeRequest.Taint]?

    public var tlsBootstrapEnabled: Bool?

    public var vSwitchId: String?

    public var virtualNodeName: String?

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
        if self.clientToken != nil {
            map["ClientToken"] = self.clientToken!
        }
        if self.eipInstanceId != nil {
            map["EipInstanceId"] = self.eipInstanceId!
        }
        if self.enablePublicNetwork != nil {
            map["EnablePublicNetwork"] = self.enablePublicNetwork!
        }
        if self.kubeConfig != nil {
            map["KubeConfig"] = self.kubeConfig!
        }
        if self.ownerAccount != nil {
            map["OwnerAccount"] = self.ownerAccount!
        }
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.resourceGroupId != nil {
            map["ResourceGroupId"] = self.resourceGroupId!
        }
        if self.resourceOwnerAccount != nil {
            map["ResourceOwnerAccount"] = self.resourceOwnerAccount!
        }
        if self.resourceOwnerId != nil {
            map["ResourceOwnerId"] = self.resourceOwnerId!
        }
        if self.rotateCertificateEnabled != nil {
            map["RotateCertificateEnabled"] = self.rotateCertificateEnabled!
        }
        if self.securityGroupId != nil {
            map["SecurityGroupId"] = self.securityGroupId!
        }
        if self.tag != nil {
            var tmp : [Any] = []
            for k in self.tag! {
                tmp.append(k.toMap())
            }
            map["Tag"] = tmp
        }
        if self.taint != nil {
            var tmp : [Any] = []
            for k in self.taint! {
                tmp.append(k.toMap())
            }
            map["Taint"] = tmp
        }
        if self.tlsBootstrapEnabled != nil {
            map["TlsBootstrapEnabled"] = self.tlsBootstrapEnabled!
        }
        if self.vSwitchId != nil {
            map["VSwitchId"] = self.vSwitchId!
        }
        if self.virtualNodeName != nil {
            map["VirtualNodeName"] = self.virtualNodeName!
        }
        if self.zoneId != nil {
            map["ZoneId"] = self.zoneId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ClientToken") {
            self.clientToken = dict["ClientToken"] as! String
        }
        if dict.keys.contains("EipInstanceId") {
            self.eipInstanceId = dict["EipInstanceId"] as! String
        }
        if dict.keys.contains("EnablePublicNetwork") {
            self.enablePublicNetwork = dict["EnablePublicNetwork"] as! Bool
        }
        if dict.keys.contains("KubeConfig") {
            self.kubeConfig = dict["KubeConfig"] as! String
        }
        if dict.keys.contains("OwnerAccount") {
            self.ownerAccount = dict["OwnerAccount"] as! String
        }
        if dict.keys.contains("OwnerId") {
            self.ownerId = dict["OwnerId"] as! Int64
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("ResourceGroupId") {
            self.resourceGroupId = dict["ResourceGroupId"] as! String
        }
        if dict.keys.contains("ResourceOwnerAccount") {
            self.resourceOwnerAccount = dict["ResourceOwnerAccount"] as! String
        }
        if dict.keys.contains("ResourceOwnerId") {
            self.resourceOwnerId = dict["ResourceOwnerId"] as! Int64
        }
        if dict.keys.contains("RotateCertificateEnabled") {
            self.rotateCertificateEnabled = dict["RotateCertificateEnabled"] as! Bool
        }
        if dict.keys.contains("SecurityGroupId") {
            self.securityGroupId = dict["SecurityGroupId"] as! String
        }
        if dict.keys.contains("Tag") {
            self.tag = dict["Tag"] as! [CreateVirtualNodeRequest.Tag]
        }
        if dict.keys.contains("Taint") {
            self.taint = dict["Taint"] as! [CreateVirtualNodeRequest.Taint]
        }
        if dict.keys.contains("TlsBootstrapEnabled") {
            self.tlsBootstrapEnabled = dict["TlsBootstrapEnabled"] as! Bool
        }
        if dict.keys.contains("VSwitchId") {
            self.vSwitchId = dict["VSwitchId"] as! String
        }
        if dict.keys.contains("VirtualNodeName") {
            self.virtualNodeName = dict["VirtualNodeName"] as! String
        }
        if dict.keys.contains("ZoneId") {
            self.zoneId = dict["ZoneId"] as! String
        }
    }
}

public class CreateVirtualNodeResponseBody : Tea.TeaModel {
    public var requestId: String?

    public var virtualNodeId: String?

    public override init() {
        super.init()
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
        if self.virtualNodeId != nil {
            map["VirtualNodeId"] = self.virtualNodeId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("VirtualNodeId") {
            self.virtualNodeId = dict["VirtualNodeId"] as! String
        }
    }
}

public class CreateVirtualNodeResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateVirtualNodeResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = CreateVirtualNodeResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DeleteContainerGroupRequest : Tea.TeaModel {
    public var clientToken: String?

    public var containerGroupId: String?

    public var ownerAccount: String?

    public var ownerId: Int64?

    public var regionId: String?

    public var resourceOwnerAccount: String?

    public var resourceOwnerId: Int64?

    public override init() {
        super.init()
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
        if self.containerGroupId != nil {
            map["ContainerGroupId"] = self.containerGroupId!
        }
        if self.ownerAccount != nil {
            map["OwnerAccount"] = self.ownerAccount!
        }
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.resourceOwnerAccount != nil {
            map["ResourceOwnerAccount"] = self.resourceOwnerAccount!
        }
        if self.resourceOwnerId != nil {
            map["ResourceOwnerId"] = self.resourceOwnerId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ClientToken") {
            self.clientToken = dict["ClientToken"] as! String
        }
        if dict.keys.contains("ContainerGroupId") {
            self.containerGroupId = dict["ContainerGroupId"] as! String
        }
        if dict.keys.contains("OwnerAccount") {
            self.ownerAccount = dict["OwnerAccount"] as! String
        }
        if dict.keys.contains("OwnerId") {
            self.ownerId = dict["OwnerId"] as! Int64
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("ResourceOwnerAccount") {
            self.resourceOwnerAccount = dict["ResourceOwnerAccount"] as! String
        }
        if dict.keys.contains("ResourceOwnerId") {
            self.resourceOwnerId = dict["ResourceOwnerId"] as! Int64
        }
    }
}

public class DeleteContainerGroupResponseBody : Tea.TeaModel {
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

public class DeleteContainerGroupResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteContainerGroupResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = DeleteContainerGroupResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DeleteImageCacheRequest : Tea.TeaModel {
    public var clientToken: String?

    public var imageCacheId: String?

    public var ownerAccount: String?

    public var ownerId: Int64?

    public var regionId: String?

    public var resourceOwnerAccount: String?

    public var resourceOwnerId: Int64?

    public override init() {
        super.init()
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
        if self.imageCacheId != nil {
            map["ImageCacheId"] = self.imageCacheId!
        }
        if self.ownerAccount != nil {
            map["OwnerAccount"] = self.ownerAccount!
        }
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.resourceOwnerAccount != nil {
            map["ResourceOwnerAccount"] = self.resourceOwnerAccount!
        }
        if self.resourceOwnerId != nil {
            map["ResourceOwnerId"] = self.resourceOwnerId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ClientToken") {
            self.clientToken = dict["ClientToken"] as! String
        }
        if dict.keys.contains("ImageCacheId") {
            self.imageCacheId = dict["ImageCacheId"] as! String
        }
        if dict.keys.contains("OwnerAccount") {
            self.ownerAccount = dict["OwnerAccount"] as! String
        }
        if dict.keys.contains("OwnerId") {
            self.ownerId = dict["OwnerId"] as! Int64
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("ResourceOwnerAccount") {
            self.resourceOwnerAccount = dict["ResourceOwnerAccount"] as! String
        }
        if dict.keys.contains("ResourceOwnerId") {
            self.resourceOwnerId = dict["ResourceOwnerId"] as! Int64
        }
    }
}

public class DeleteImageCacheResponseBody : Tea.TeaModel {
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

public class DeleteImageCacheResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteImageCacheResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = DeleteImageCacheResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DeleteVirtualNodeRequest : Tea.TeaModel {
    public var clientToken: String?

    public var ownerAccount: String?

    public var ownerId: Int64?

    public var regionId: String?

    public var resourceOwnerAccount: String?

    public var resourceOwnerId: Int64?

    public var virtualNodeId: String?

    public override init() {
        super.init()
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
        if self.ownerAccount != nil {
            map["OwnerAccount"] = self.ownerAccount!
        }
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.resourceOwnerAccount != nil {
            map["ResourceOwnerAccount"] = self.resourceOwnerAccount!
        }
        if self.resourceOwnerId != nil {
            map["ResourceOwnerId"] = self.resourceOwnerId!
        }
        if self.virtualNodeId != nil {
            map["VirtualNodeId"] = self.virtualNodeId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ClientToken") {
            self.clientToken = dict["ClientToken"] as! String
        }
        if dict.keys.contains("OwnerAccount") {
            self.ownerAccount = dict["OwnerAccount"] as! String
        }
        if dict.keys.contains("OwnerId") {
            self.ownerId = dict["OwnerId"] as! Int64
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("ResourceOwnerAccount") {
            self.resourceOwnerAccount = dict["ResourceOwnerAccount"] as! String
        }
        if dict.keys.contains("ResourceOwnerId") {
            self.resourceOwnerId = dict["ResourceOwnerId"] as! Int64
        }
        if dict.keys.contains("VirtualNodeId") {
            self.virtualNodeId = dict["VirtualNodeId"] as! String
        }
    }
}

public class DeleteVirtualNodeResponseBody : Tea.TeaModel {
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

public class DeleteVirtualNodeResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteVirtualNodeResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = DeleteVirtualNodeResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeAvailableResourceRequest : Tea.TeaModel {
    public class DestinationResource : Tea.TeaModel {
        public var category: String?

        public var cores: Double?

        public var memory: Double?

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
            if self.category != nil {
                map["Category"] = self.category!
            }
            if self.cores != nil {
                map["Cores"] = self.cores!
            }
            if self.memory != nil {
                map["Memory"] = self.memory!
            }
            if self.value != nil {
                map["Value"] = self.value!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Category") {
                self.category = dict["Category"] as! String
            }
            if dict.keys.contains("Cores") {
                self.cores = dict["Cores"] as! Double
            }
            if dict.keys.contains("Memory") {
                self.memory = dict["Memory"] as! Double
            }
            if dict.keys.contains("Value") {
                self.value = dict["Value"] as! String
            }
        }
    }
    public class SpotResource : Tea.TeaModel {
        public var spotDuration: Int32?

        public var spotPriceLimit: Double?

        public var spotStrategy: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.spotDuration != nil {
                map["SpotDuration"] = self.spotDuration!
            }
            if self.spotPriceLimit != nil {
                map["SpotPriceLimit"] = self.spotPriceLimit!
            }
            if self.spotStrategy != nil {
                map["SpotStrategy"] = self.spotStrategy!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("SpotDuration") {
                self.spotDuration = dict["SpotDuration"] as! Int32
            }
            if dict.keys.contains("SpotPriceLimit") {
                self.spotPriceLimit = dict["SpotPriceLimit"] as! Double
            }
            if dict.keys.contains("SpotStrategy") {
                self.spotStrategy = dict["SpotStrategy"] as! String
            }
        }
    }
    public var destinationResource: DescribeAvailableResourceRequest.DestinationResource?

    public var ownerAccount: String?

    public var ownerId: Int64?

    public var regionId: String?

    public var resourceOwnerAccount: String?

    public var resourceOwnerId: Int64?

    public var spotResource: DescribeAvailableResourceRequest.SpotResource?

    public var zoneId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.destinationResource?.validate()
        try self.spotResource?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.destinationResource != nil {
            map["DestinationResource"] = self.destinationResource?.toMap()
        }
        if self.ownerAccount != nil {
            map["OwnerAccount"] = self.ownerAccount!
        }
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.resourceOwnerAccount != nil {
            map["ResourceOwnerAccount"] = self.resourceOwnerAccount!
        }
        if self.resourceOwnerId != nil {
            map["ResourceOwnerId"] = self.resourceOwnerId!
        }
        if self.spotResource != nil {
            map["SpotResource"] = self.spotResource?.toMap()
        }
        if self.zoneId != nil {
            map["ZoneId"] = self.zoneId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DestinationResource") {
            var model = DescribeAvailableResourceRequest.DestinationResource()
            model.fromMap(dict["DestinationResource"] as! [String: Any])
            self.destinationResource = model
        }
        if dict.keys.contains("OwnerAccount") {
            self.ownerAccount = dict["OwnerAccount"] as! String
        }
        if dict.keys.contains("OwnerId") {
            self.ownerId = dict["OwnerId"] as! Int64
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("ResourceOwnerAccount") {
            self.resourceOwnerAccount = dict["ResourceOwnerAccount"] as! String
        }
        if dict.keys.contains("ResourceOwnerId") {
            self.resourceOwnerId = dict["ResourceOwnerId"] as! Int64
        }
        if dict.keys.contains("SpotResource") {
            var model = DescribeAvailableResourceRequest.SpotResource()
            model.fromMap(dict["SpotResource"] as! [String: Any])
            self.spotResource = model
        }
        if dict.keys.contains("ZoneId") {
            self.zoneId = dict["ZoneId"] as! String
        }
    }
}

public class DescribeAvailableResourceResponseBody : Tea.TeaModel {
    public class AvailableZones : Tea.TeaModel {
        public class AvailableZone : Tea.TeaModel {
            public class AvailableResources : Tea.TeaModel {
                public class AvailableResource : Tea.TeaModel {
                    public class SupportedResources : Tea.TeaModel {
                        public class SupportedResource : Tea.TeaModel {
                            public var statusCategory: String?

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
                                if self.statusCategory != nil {
                                    map["StatusCategory"] = self.statusCategory!
                                }
                                if self.value != nil {
                                    map["Value"] = self.value!
                                }
                                return map
                            }

                            public override func fromMap(_ dict: [String: Any]) -> Void {
                                if dict.keys.contains("StatusCategory") {
                                    self.statusCategory = dict["StatusCategory"] as! String
                                }
                                if dict.keys.contains("Value") {
                                    self.value = dict["Value"] as! String
                                }
                            }
                        }
                        public var supportedResource: [DescribeAvailableResourceResponseBody.AvailableZones.AvailableZone.AvailableResources.AvailableResource.SupportedResources.SupportedResource]?

                        public override init() {
                            super.init()
                        }

                        public init(_ dict: [String: Any]) {
                            super.init()
                            self.fromMap(dict)
                        }

                        public override func validate() throws -> Void {
                        }

                        public override func toMap() -> [String : Any] {
                            var map = super.toMap()
                            if self.supportedResource != nil {
                                var tmp : [Any] = []
                                for k in self.supportedResource! {
                                    tmp.append(k.toMap())
                                }
                                map["SupportedResource"] = tmp
                            }
                            return map
                        }

                        public override func fromMap(_ dict: [String: Any]) -> Void {
                            if dict.keys.contains("SupportedResource") {
                                self.supportedResource = dict["SupportedResource"] as! [DescribeAvailableResourceResponseBody.AvailableZones.AvailableZone.AvailableResources.AvailableResource.SupportedResources.SupportedResource]
                            }
                        }
                    }
                    public var supportedResources: DescribeAvailableResourceResponseBody.AvailableZones.AvailableZone.AvailableResources.AvailableResource.SupportedResources?

                    public var type: String?

                    public override init() {
                        super.init()
                    }

                    public init(_ dict: [String: Any]) {
                        super.init()
                        self.fromMap(dict)
                    }

                    public override func validate() throws -> Void {
                        try self.supportedResources?.validate()
                    }

                    public override func toMap() -> [String : Any] {
                        var map = super.toMap()
                        if self.supportedResources != nil {
                            map["SupportedResources"] = self.supportedResources?.toMap()
                        }
                        if self.type != nil {
                            map["Type"] = self.type!
                        }
                        return map
                    }

                    public override func fromMap(_ dict: [String: Any]) -> Void {
                        if dict.keys.contains("SupportedResources") {
                            var model = DescribeAvailableResourceResponseBody.AvailableZones.AvailableZone.AvailableResources.AvailableResource.SupportedResources()
                            model.fromMap(dict["SupportedResources"] as! [String: Any])
                            self.supportedResources = model
                        }
                        if dict.keys.contains("Type") {
                            self.type = dict["Type"] as! String
                        }
                    }
                }
                public var availableResource: [DescribeAvailableResourceResponseBody.AvailableZones.AvailableZone.AvailableResources.AvailableResource]?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.availableResource != nil {
                        var tmp : [Any] = []
                        for k in self.availableResource! {
                            tmp.append(k.toMap())
                        }
                        map["AvailableResource"] = tmp
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("AvailableResource") {
                        self.availableResource = dict["AvailableResource"] as! [DescribeAvailableResourceResponseBody.AvailableZones.AvailableZone.AvailableResources.AvailableResource]
                    }
                }
            }
            public var availableResources: DescribeAvailableResourceResponseBody.AvailableZones.AvailableZone.AvailableResources?

            public var regionId: String?

            public var zoneId: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
                try self.availableResources?.validate()
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.availableResources != nil {
                    map["AvailableResources"] = self.availableResources?.toMap()
                }
                if self.regionId != nil {
                    map["RegionId"] = self.regionId!
                }
                if self.zoneId != nil {
                    map["ZoneId"] = self.zoneId!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("AvailableResources") {
                    var model = DescribeAvailableResourceResponseBody.AvailableZones.AvailableZone.AvailableResources()
                    model.fromMap(dict["AvailableResources"] as! [String: Any])
                    self.availableResources = model
                }
                if dict.keys.contains("RegionId") {
                    self.regionId = dict["RegionId"] as! String
                }
                if dict.keys.contains("ZoneId") {
                    self.zoneId = dict["ZoneId"] as! String
                }
            }
        }
        public var availableZone: [DescribeAvailableResourceResponseBody.AvailableZones.AvailableZone]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.availableZone != nil {
                var tmp : [Any] = []
                for k in self.availableZone! {
                    tmp.append(k.toMap())
                }
                map["AvailableZone"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("AvailableZone") {
                self.availableZone = dict["AvailableZone"] as! [DescribeAvailableResourceResponseBody.AvailableZones.AvailableZone]
            }
        }
    }
    public var availableZones: DescribeAvailableResourceResponseBody.AvailableZones?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.availableZones?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.availableZones != nil {
            map["AvailableZones"] = self.availableZones?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AvailableZones") {
            var model = DescribeAvailableResourceResponseBody.AvailableZones()
            model.fromMap(dict["AvailableZones"] as! [String: Any])
            self.availableZones = model
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class DescribeAvailableResourceResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeAvailableResourceResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = DescribeAvailableResourceResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeContainerGroupEventsRequest : Tea.TeaModel {
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Key") {
                self.key = dict["Key"] as! String
            }
            if dict.keys.contains("Value") {
                self.value = dict["Value"] as! String
            }
        }
    }
    public var containerGroupIds: String?

    public var eventSource: String?

    public var limit: Int32?

    public var nextToken: String?

    public var regionId: String?

    public var resourceGroupId: String?

    public var sinceSecond: Int32?

    public var tag: [DescribeContainerGroupEventsRequest.Tag]?

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
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.containerGroupIds != nil {
            map["ContainerGroupIds"] = self.containerGroupIds!
        }
        if self.eventSource != nil {
            map["EventSource"] = self.eventSource!
        }
        if self.limit != nil {
            map["Limit"] = self.limit!
        }
        if self.nextToken != nil {
            map["NextToken"] = self.nextToken!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.resourceGroupId != nil {
            map["ResourceGroupId"] = self.resourceGroupId!
        }
        if self.sinceSecond != nil {
            map["SinceSecond"] = self.sinceSecond!
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
        if self.zoneId != nil {
            map["ZoneId"] = self.zoneId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ContainerGroupIds") {
            self.containerGroupIds = dict["ContainerGroupIds"] as! String
        }
        if dict.keys.contains("EventSource") {
            self.eventSource = dict["EventSource"] as! String
        }
        if dict.keys.contains("Limit") {
            self.limit = dict["Limit"] as! Int32
        }
        if dict.keys.contains("NextToken") {
            self.nextToken = dict["NextToken"] as! String
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("ResourceGroupId") {
            self.resourceGroupId = dict["ResourceGroupId"] as! String
        }
        if dict.keys.contains("SinceSecond") {
            self.sinceSecond = dict["SinceSecond"] as! Int32
        }
        if dict.keys.contains("Tag") {
            self.tag = dict["Tag"] as! [DescribeContainerGroupEventsRequest.Tag]
        }
        if dict.keys.contains("VSwitchId") {
            self.vSwitchId = dict["VSwitchId"] as! String
        }
        if dict.keys.contains("ZoneId") {
            self.zoneId = dict["ZoneId"] as! String
        }
    }
}

public class DescribeContainerGroupEventsResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class Events : Tea.TeaModel {
            public class Metadata : Tea.TeaModel {
                public var name: String?

                public var namespace: String?

                public override init() {
                    super.init()
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
                    if self.namespace != nil {
                        map["Namespace"] = self.namespace!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("Name") {
                        self.name = dict["Name"] as! String
                    }
                    if dict.keys.contains("Namespace") {
                        self.namespace = dict["Namespace"] as! String
                    }
                }
            }
            public class Source : Tea.TeaModel {
                public var component: String?

                public var host: String?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.component != nil {
                        map["Component"] = self.component!
                    }
                    if self.host != nil {
                        map["Host"] = self.host!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("Component") {
                        self.component = dict["Component"] as! String
                    }
                    if dict.keys.contains("Host") {
                        self.host = dict["Host"] as! String
                    }
                }
            }
            public class InvolvedObject : Tea.TeaModel {
                public var apiVersion: String?

                public var kind: String?

                public var name: String?

                public var namespace: String?

                public var uid: String?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.apiVersion != nil {
                        map["ApiVersion"] = self.apiVersion!
                    }
                    if self.kind != nil {
                        map["Kind"] = self.kind!
                    }
                    if self.name != nil {
                        map["Name"] = self.name!
                    }
                    if self.namespace != nil {
                        map["Namespace"] = self.namespace!
                    }
                    if self.uid != nil {
                        map["Uid"] = self.uid!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("ApiVersion") {
                        self.apiVersion = dict["ApiVersion"] as! String
                    }
                    if dict.keys.contains("Kind") {
                        self.kind = dict["Kind"] as! String
                    }
                    if dict.keys.contains("Name") {
                        self.name = dict["Name"] as! String
                    }
                    if dict.keys.contains("Namespace") {
                        self.namespace = dict["Namespace"] as! String
                    }
                    if dict.keys.contains("Uid") {
                        self.uid = dict["Uid"] as! String
                    }
                }
            }
            public var count: Int32?

            public var firstTimestamp: String?

            public var lastTimestamp: String?

            public var message: String?

            public var metadata: DescribeContainerGroupEventsResponseBody.Data.Events.Metadata?

            public var reason: String?

            public var reportingComponent: String?

            public var reportingInstance: String?

            public var source: DescribeContainerGroupEventsResponseBody.Data.Events.Source?

            public var type: String?

            public var involvedObject: DescribeContainerGroupEventsResponseBody.Data.Events.InvolvedObject?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
                try self.metadata?.validate()
                try self.source?.validate()
                try self.involvedObject?.validate()
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.count != nil {
                    map["Count"] = self.count!
                }
                if self.firstTimestamp != nil {
                    map["FirstTimestamp"] = self.firstTimestamp!
                }
                if self.lastTimestamp != nil {
                    map["LastTimestamp"] = self.lastTimestamp!
                }
                if self.message != nil {
                    map["Message"] = self.message!
                }
                if self.metadata != nil {
                    map["Metadata"] = self.metadata?.toMap()
                }
                if self.reason != nil {
                    map["Reason"] = self.reason!
                }
                if self.reportingComponent != nil {
                    map["ReportingComponent"] = self.reportingComponent!
                }
                if self.reportingInstance != nil {
                    map["ReportingInstance"] = self.reportingInstance!
                }
                if self.source != nil {
                    map["Source"] = self.source?.toMap()
                }
                if self.type != nil {
                    map["Type"] = self.type!
                }
                if self.involvedObject != nil {
                    map["involvedObject"] = self.involvedObject?.toMap()
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("Count") {
                    self.count = dict["Count"] as! Int32
                }
                if dict.keys.contains("FirstTimestamp") {
                    self.firstTimestamp = dict["FirstTimestamp"] as! String
                }
                if dict.keys.contains("LastTimestamp") {
                    self.lastTimestamp = dict["LastTimestamp"] as! String
                }
                if dict.keys.contains("Message") {
                    self.message = dict["Message"] as! String
                }
                if dict.keys.contains("Metadata") {
                    var model = DescribeContainerGroupEventsResponseBody.Data.Events.Metadata()
                    model.fromMap(dict["Metadata"] as! [String: Any])
                    self.metadata = model
                }
                if dict.keys.contains("Reason") {
                    self.reason = dict["Reason"] as! String
                }
                if dict.keys.contains("ReportingComponent") {
                    self.reportingComponent = dict["ReportingComponent"] as! String
                }
                if dict.keys.contains("ReportingInstance") {
                    self.reportingInstance = dict["ReportingInstance"] as! String
                }
                if dict.keys.contains("Source") {
                    var model = DescribeContainerGroupEventsResponseBody.Data.Events.Source()
                    model.fromMap(dict["Source"] as! [String: Any])
                    self.source = model
                }
                if dict.keys.contains("Type") {
                    self.type = dict["Type"] as! String
                }
                if dict.keys.contains("involvedObject") {
                    var model = DescribeContainerGroupEventsResponseBody.Data.Events.InvolvedObject()
                    model.fromMap(dict["involvedObject"] as! [String: Any])
                    self.involvedObject = model
                }
            }
        }
        public var containerGroupId: String?

        public var events: [DescribeContainerGroupEventsResponseBody.Data.Events]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.containerGroupId != nil {
                map["ContainerGroupId"] = self.containerGroupId!
            }
            if self.events != nil {
                var tmp : [Any] = []
                for k in self.events! {
                    tmp.append(k.toMap())
                }
                map["Events"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("ContainerGroupId") {
                self.containerGroupId = dict["ContainerGroupId"] as! String
            }
            if dict.keys.contains("Events") {
                self.events = dict["Events"] as! [DescribeContainerGroupEventsResponseBody.Data.Events]
            }
        }
    }
    public var data: [DescribeContainerGroupEventsResponseBody.Data]?

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
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.totalCount != nil {
            map["TotalCount"] = self.totalCount!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Data") {
            self.data = dict["Data"] as! [DescribeContainerGroupEventsResponseBody.Data]
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("TotalCount") {
            self.totalCount = dict["TotalCount"] as! Int32
        }
    }
}

public class DescribeContainerGroupEventsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeContainerGroupEventsResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = DescribeContainerGroupEventsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeContainerGroupMetricRequest : Tea.TeaModel {
    public var containerGroupId: String?

    public var endTime: String?

    public var ownerAccount: String?

    public var ownerId: Int64?

    public var period: String?

    public var regionId: String?

    public var resourceOwnerAccount: String?

    public var resourceOwnerId: Int64?

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
        if self.containerGroupId != nil {
            map["ContainerGroupId"] = self.containerGroupId!
        }
        if self.endTime != nil {
            map["EndTime"] = self.endTime!
        }
        if self.ownerAccount != nil {
            map["OwnerAccount"] = self.ownerAccount!
        }
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        if self.period != nil {
            map["Period"] = self.period!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.resourceOwnerAccount != nil {
            map["ResourceOwnerAccount"] = self.resourceOwnerAccount!
        }
        if self.resourceOwnerId != nil {
            map["ResourceOwnerId"] = self.resourceOwnerId!
        }
        if self.startTime != nil {
            map["StartTime"] = self.startTime!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ContainerGroupId") {
            self.containerGroupId = dict["ContainerGroupId"] as! String
        }
        if dict.keys.contains("EndTime") {
            self.endTime = dict["EndTime"] as! String
        }
        if dict.keys.contains("OwnerAccount") {
            self.ownerAccount = dict["OwnerAccount"] as! String
        }
        if dict.keys.contains("OwnerId") {
            self.ownerId = dict["OwnerId"] as! Int64
        }
        if dict.keys.contains("Period") {
            self.period = dict["Period"] as! String
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("ResourceOwnerAccount") {
            self.resourceOwnerAccount = dict["ResourceOwnerAccount"] as! String
        }
        if dict.keys.contains("ResourceOwnerId") {
            self.resourceOwnerId = dict["ResourceOwnerId"] as! Int64
        }
        if dict.keys.contains("StartTime") {
            self.startTime = dict["StartTime"] as! String
        }
    }
}

public class DescribeContainerGroupMetricResponseBody : Tea.TeaModel {
    public class Records : Tea.TeaModel {
        public class CPU : Tea.TeaModel {
            public var limit: Int64?

            public var load: Int64?

            public var usageCoreNanoSeconds: Int64?

            public var usageNanoCores: Int64?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.limit != nil {
                    map["Limit"] = self.limit!
                }
                if self.load != nil {
                    map["Load"] = self.load!
                }
                if self.usageCoreNanoSeconds != nil {
                    map["UsageCoreNanoSeconds"] = self.usageCoreNanoSeconds!
                }
                if self.usageNanoCores != nil {
                    map["UsageNanoCores"] = self.usageNanoCores!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("Limit") {
                    self.limit = dict["Limit"] as! Int64
                }
                if dict.keys.contains("Load") {
                    self.load = dict["Load"] as! Int64
                }
                if dict.keys.contains("UsageCoreNanoSeconds") {
                    self.usageCoreNanoSeconds = dict["UsageCoreNanoSeconds"] as! Int64
                }
                if dict.keys.contains("UsageNanoCores") {
                    self.usageNanoCores = dict["UsageNanoCores"] as! Int64
                }
            }
        }
        public class Containers : Tea.TeaModel {
            public class CPU : Tea.TeaModel {
                public var limit: Int64?

                public var load: Int64?

                public var usageCoreNanoSeconds: Int64?

                public var usageNanoCores: Int64?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.limit != nil {
                        map["Limit"] = self.limit!
                    }
                    if self.load != nil {
                        map["Load"] = self.load!
                    }
                    if self.usageCoreNanoSeconds != nil {
                        map["UsageCoreNanoSeconds"] = self.usageCoreNanoSeconds!
                    }
                    if self.usageNanoCores != nil {
                        map["UsageNanoCores"] = self.usageNanoCores!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("Limit") {
                        self.limit = dict["Limit"] as! Int64
                    }
                    if dict.keys.contains("Load") {
                        self.load = dict["Load"] as! Int64
                    }
                    if dict.keys.contains("UsageCoreNanoSeconds") {
                        self.usageCoreNanoSeconds = dict["UsageCoreNanoSeconds"] as! Int64
                    }
                    if dict.keys.contains("UsageNanoCores") {
                        self.usageNanoCores = dict["UsageNanoCores"] as! Int64
                    }
                }
            }
            public class Memory : Tea.TeaModel {
                public var availableBytes: Int64?

                public var cache: Int64?

                public var rss: Int64?

                public var usageBytes: Int64?

                public var workingSet: Int64?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.availableBytes != nil {
                        map["AvailableBytes"] = self.availableBytes!
                    }
                    if self.cache != nil {
                        map["Cache"] = self.cache!
                    }
                    if self.rss != nil {
                        map["Rss"] = self.rss!
                    }
                    if self.usageBytes != nil {
                        map["UsageBytes"] = self.usageBytes!
                    }
                    if self.workingSet != nil {
                        map["WorkingSet"] = self.workingSet!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("AvailableBytes") {
                        self.availableBytes = dict["AvailableBytes"] as! Int64
                    }
                    if dict.keys.contains("Cache") {
                        self.cache = dict["Cache"] as! Int64
                    }
                    if dict.keys.contains("Rss") {
                        self.rss = dict["Rss"] as! Int64
                    }
                    if dict.keys.contains("UsageBytes") {
                        self.usageBytes = dict["UsageBytes"] as! Int64
                    }
                    if dict.keys.contains("WorkingSet") {
                        self.workingSet = dict["WorkingSet"] as! Int64
                    }
                }
            }
            public var CPU: DescribeContainerGroupMetricResponseBody.Records.Containers.CPU?

            public var memory: DescribeContainerGroupMetricResponseBody.Records.Containers.Memory?

            public var name: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
                try self.CPU?.validate()
                try self.memory?.validate()
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.CPU != nil {
                    map["CPU"] = self.CPU?.toMap()
                }
                if self.memory != nil {
                    map["Memory"] = self.memory?.toMap()
                }
                if self.name != nil {
                    map["Name"] = self.name!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("CPU") {
                    var model = DescribeContainerGroupMetricResponseBody.Records.Containers.CPU()
                    model.fromMap(dict["CPU"] as! [String: Any])
                    self.CPU = model
                }
                if dict.keys.contains("Memory") {
                    var model = DescribeContainerGroupMetricResponseBody.Records.Containers.Memory()
                    model.fromMap(dict["Memory"] as! [String: Any])
                    self.memory = model
                }
                if dict.keys.contains("Name") {
                    self.name = dict["Name"] as! String
                }
            }
        }
        public class Disk : Tea.TeaModel {
            public var device: String?

            public var readBytes: Int64?

            public var readIO: Int64?

            public var writeBytes: Int64?

            public var writeIO: Int64?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.device != nil {
                    map["Device"] = self.device!
                }
                if self.readBytes != nil {
                    map["ReadBytes"] = self.readBytes!
                }
                if self.readIO != nil {
                    map["ReadIO"] = self.readIO!
                }
                if self.writeBytes != nil {
                    map["WriteBytes"] = self.writeBytes!
                }
                if self.writeIO != nil {
                    map["WriteIO"] = self.writeIO!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("Device") {
                    self.device = dict["Device"] as! String
                }
                if dict.keys.contains("ReadBytes") {
                    self.readBytes = dict["ReadBytes"] as! Int64
                }
                if dict.keys.contains("ReadIO") {
                    self.readIO = dict["ReadIO"] as! Int64
                }
                if dict.keys.contains("WriteBytes") {
                    self.writeBytes = dict["WriteBytes"] as! Int64
                }
                if dict.keys.contains("WriteIO") {
                    self.writeIO = dict["WriteIO"] as! Int64
                }
            }
        }
        public class Filesystem : Tea.TeaModel {
            public var available: Int64?

            public var capacity: Int64?

            public var category: String?

            public var fsName: String?

            public var usage: Int64?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.available != nil {
                    map["Available"] = self.available!
                }
                if self.capacity != nil {
                    map["Capacity"] = self.capacity!
                }
                if self.category != nil {
                    map["Category"] = self.category!
                }
                if self.fsName != nil {
                    map["FsName"] = self.fsName!
                }
                if self.usage != nil {
                    map["Usage"] = self.usage!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("Available") {
                    self.available = dict["Available"] as! Int64
                }
                if dict.keys.contains("Capacity") {
                    self.capacity = dict["Capacity"] as! Int64
                }
                if dict.keys.contains("Category") {
                    self.category = dict["Category"] as! String
                }
                if dict.keys.contains("FsName") {
                    self.fsName = dict["FsName"] as! String
                }
                if dict.keys.contains("Usage") {
                    self.usage = dict["Usage"] as! Int64
                }
            }
        }
        public class Memory : Tea.TeaModel {
            public var availableBytes: Int64?

            public var cache: Int64?

            public var rss: Int64?

            public var usageBytes: Int64?

            public var workingSet: Int64?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.availableBytes != nil {
                    map["AvailableBytes"] = self.availableBytes!
                }
                if self.cache != nil {
                    map["Cache"] = self.cache!
                }
                if self.rss != nil {
                    map["Rss"] = self.rss!
                }
                if self.usageBytes != nil {
                    map["UsageBytes"] = self.usageBytes!
                }
                if self.workingSet != nil {
                    map["WorkingSet"] = self.workingSet!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("AvailableBytes") {
                    self.availableBytes = dict["AvailableBytes"] as! Int64
                }
                if dict.keys.contains("Cache") {
                    self.cache = dict["Cache"] as! Int64
                }
                if dict.keys.contains("Rss") {
                    self.rss = dict["Rss"] as! Int64
                }
                if dict.keys.contains("UsageBytes") {
                    self.usageBytes = dict["UsageBytes"] as! Int64
                }
                if dict.keys.contains("WorkingSet") {
                    self.workingSet = dict["WorkingSet"] as! Int64
                }
            }
        }
        public class Network : Tea.TeaModel {
            public class Interfaces : Tea.TeaModel {
                public var name: String?

                public var rxBytes: Int64?

                public var rxDrops: Int64?

                public var rxErrors: Int64?

                public var rxPackets: Int64?

                public var txBytes: Int64?

                public var txDrops: Int64?

                public var txErrors: Int64?

                public var txPackets: Int64?

                public override init() {
                    super.init()
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
                    if self.rxBytes != nil {
                        map["RxBytes"] = self.rxBytes!
                    }
                    if self.rxDrops != nil {
                        map["RxDrops"] = self.rxDrops!
                    }
                    if self.rxErrors != nil {
                        map["RxErrors"] = self.rxErrors!
                    }
                    if self.rxPackets != nil {
                        map["RxPackets"] = self.rxPackets!
                    }
                    if self.txBytes != nil {
                        map["TxBytes"] = self.txBytes!
                    }
                    if self.txDrops != nil {
                        map["TxDrops"] = self.txDrops!
                    }
                    if self.txErrors != nil {
                        map["TxErrors"] = self.txErrors!
                    }
                    if self.txPackets != nil {
                        map["TxPackets"] = self.txPackets!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("Name") {
                        self.name = dict["Name"] as! String
                    }
                    if dict.keys.contains("RxBytes") {
                        self.rxBytes = dict["RxBytes"] as! Int64
                    }
                    if dict.keys.contains("RxDrops") {
                        self.rxDrops = dict["RxDrops"] as! Int64
                    }
                    if dict.keys.contains("RxErrors") {
                        self.rxErrors = dict["RxErrors"] as! Int64
                    }
                    if dict.keys.contains("RxPackets") {
                        self.rxPackets = dict["RxPackets"] as! Int64
                    }
                    if dict.keys.contains("TxBytes") {
                        self.txBytes = dict["TxBytes"] as! Int64
                    }
                    if dict.keys.contains("TxDrops") {
                        self.txDrops = dict["TxDrops"] as! Int64
                    }
                    if dict.keys.contains("TxErrors") {
                        self.txErrors = dict["TxErrors"] as! Int64
                    }
                    if dict.keys.contains("TxPackets") {
                        self.txPackets = dict["TxPackets"] as! Int64
                    }
                }
            }
            public var interfaces: [DescribeContainerGroupMetricResponseBody.Records.Network.Interfaces]?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.interfaces != nil {
                    var tmp : [Any] = []
                    for k in self.interfaces! {
                        tmp.append(k.toMap())
                    }
                    map["Interfaces"] = tmp
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("Interfaces") {
                    self.interfaces = dict["Interfaces"] as! [DescribeContainerGroupMetricResponseBody.Records.Network.Interfaces]
                }
            }
        }
        public var CPU: DescribeContainerGroupMetricResponseBody.Records.CPU?

        public var containers: [DescribeContainerGroupMetricResponseBody.Records.Containers]?

        public var disk: [DescribeContainerGroupMetricResponseBody.Records.Disk]?

        public var filesystem: [DescribeContainerGroupMetricResponseBody.Records.Filesystem]?

        public var memory: DescribeContainerGroupMetricResponseBody.Records.Memory?

        public var network: DescribeContainerGroupMetricResponseBody.Records.Network?

        public var timestamp: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.CPU?.validate()
            try self.memory?.validate()
            try self.network?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.CPU != nil {
                map["CPU"] = self.CPU?.toMap()
            }
            if self.containers != nil {
                var tmp : [Any] = []
                for k in self.containers! {
                    tmp.append(k.toMap())
                }
                map["Containers"] = tmp
            }
            if self.disk != nil {
                var tmp : [Any] = []
                for k in self.disk! {
                    tmp.append(k.toMap())
                }
                map["Disk"] = tmp
            }
            if self.filesystem != nil {
                var tmp : [Any] = []
                for k in self.filesystem! {
                    tmp.append(k.toMap())
                }
                map["Filesystem"] = tmp
            }
            if self.memory != nil {
                map["Memory"] = self.memory?.toMap()
            }
            if self.network != nil {
                map["Network"] = self.network?.toMap()
            }
            if self.timestamp != nil {
                map["Timestamp"] = self.timestamp!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("CPU") {
                var model = DescribeContainerGroupMetricResponseBody.Records.CPU()
                model.fromMap(dict["CPU"] as! [String: Any])
                self.CPU = model
            }
            if dict.keys.contains("Containers") {
                self.containers = dict["Containers"] as! [DescribeContainerGroupMetricResponseBody.Records.Containers]
            }
            if dict.keys.contains("Disk") {
                self.disk = dict["Disk"] as! [DescribeContainerGroupMetricResponseBody.Records.Disk]
            }
            if dict.keys.contains("Filesystem") {
                self.filesystem = dict["Filesystem"] as! [DescribeContainerGroupMetricResponseBody.Records.Filesystem]
            }
            if dict.keys.contains("Memory") {
                var model = DescribeContainerGroupMetricResponseBody.Records.Memory()
                model.fromMap(dict["Memory"] as! [String: Any])
                self.memory = model
            }
            if dict.keys.contains("Network") {
                var model = DescribeContainerGroupMetricResponseBody.Records.Network()
                model.fromMap(dict["Network"] as! [String: Any])
                self.network = model
            }
            if dict.keys.contains("Timestamp") {
                self.timestamp = dict["Timestamp"] as! String
            }
        }
    }
    public var containerGroupId: String?

    public var records: [DescribeContainerGroupMetricResponseBody.Records]?

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
        if self.containerGroupId != nil {
            map["ContainerGroupId"] = self.containerGroupId!
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
        if dict.keys.contains("ContainerGroupId") {
            self.containerGroupId = dict["ContainerGroupId"] as! String
        }
        if dict.keys.contains("Records") {
            self.records = dict["Records"] as! [DescribeContainerGroupMetricResponseBody.Records]
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class DescribeContainerGroupMetricResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeContainerGroupMetricResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = DescribeContainerGroupMetricResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeContainerGroupPriceRequest : Tea.TeaModel {
    public var cpu: Double?

    public var ephemeralStorage: Int32?

    public var instanceType: String?

    public var memory: Double?

    public var ownerAccount: String?

    public var ownerId: Int64?

    public var regionId: String?

    public var resourceOwnerAccount: String?

    public var resourceOwnerId: Int64?

    public var spotPriceLimit: Double?

    public var spotStrategy: String?

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
        if self.cpu != nil {
            map["Cpu"] = self.cpu!
        }
        if self.ephemeralStorage != nil {
            map["EphemeralStorage"] = self.ephemeralStorage!
        }
        if self.instanceType != nil {
            map["InstanceType"] = self.instanceType!
        }
        if self.memory != nil {
            map["Memory"] = self.memory!
        }
        if self.ownerAccount != nil {
            map["OwnerAccount"] = self.ownerAccount!
        }
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.resourceOwnerAccount != nil {
            map["ResourceOwnerAccount"] = self.resourceOwnerAccount!
        }
        if self.resourceOwnerId != nil {
            map["ResourceOwnerId"] = self.resourceOwnerId!
        }
        if self.spotPriceLimit != nil {
            map["SpotPriceLimit"] = self.spotPriceLimit!
        }
        if self.spotStrategy != nil {
            map["SpotStrategy"] = self.spotStrategy!
        }
        if self.zoneId != nil {
            map["ZoneId"] = self.zoneId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Cpu") {
            self.cpu = dict["Cpu"] as! Double
        }
        if dict.keys.contains("EphemeralStorage") {
            self.ephemeralStorage = dict["EphemeralStorage"] as! Int32
        }
        if dict.keys.contains("InstanceType") {
            self.instanceType = dict["InstanceType"] as! String
        }
        if dict.keys.contains("Memory") {
            self.memory = dict["Memory"] as! Double
        }
        if dict.keys.contains("OwnerAccount") {
            self.ownerAccount = dict["OwnerAccount"] as! String
        }
        if dict.keys.contains("OwnerId") {
            self.ownerId = dict["OwnerId"] as! Int64
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("ResourceOwnerAccount") {
            self.resourceOwnerAccount = dict["ResourceOwnerAccount"] as! String
        }
        if dict.keys.contains("ResourceOwnerId") {
            self.resourceOwnerId = dict["ResourceOwnerId"] as! Int64
        }
        if dict.keys.contains("SpotPriceLimit") {
            self.spotPriceLimit = dict["SpotPriceLimit"] as! Double
        }
        if dict.keys.contains("SpotStrategy") {
            self.spotStrategy = dict["SpotStrategy"] as! String
        }
        if dict.keys.contains("ZoneId") {
            self.zoneId = dict["ZoneId"] as! String
        }
    }
}

public class DescribeContainerGroupPriceResponseBody : Tea.TeaModel {
    public class PriceInfo : Tea.TeaModel {
        public class Price : Tea.TeaModel {
            public class DetailInfos : Tea.TeaModel {
                public class DetailInfo : Tea.TeaModel {
                    public class Rules : Tea.TeaModel {
                        public class Rule : Tea.TeaModel {
                            public var description_: String?

                            public var ruleId: Int64?

                            public override init() {
                                super.init()
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
                                if self.ruleId != nil {
                                    map["RuleId"] = self.ruleId!
                                }
                                return map
                            }

                            public override func fromMap(_ dict: [String: Any]) -> Void {
                                if dict.keys.contains("Description") {
                                    self.description_ = dict["Description"] as! String
                                }
                                if dict.keys.contains("RuleId") {
                                    self.ruleId = dict["RuleId"] as! Int64
                                }
                            }
                        }
                        public var rule: [DescribeContainerGroupPriceResponseBody.PriceInfo.Price.DetailInfos.DetailInfo.Rules.Rule]?

                        public override init() {
                            super.init()
                        }

                        public init(_ dict: [String: Any]) {
                            super.init()
                            self.fromMap(dict)
                        }

                        public override func validate() throws -> Void {
                        }

                        public override func toMap() -> [String : Any] {
                            var map = super.toMap()
                            if self.rule != nil {
                                var tmp : [Any] = []
                                for k in self.rule! {
                                    tmp.append(k.toMap())
                                }
                                map["Rule"] = tmp
                            }
                            return map
                        }

                        public override func fromMap(_ dict: [String: Any]) -> Void {
                            if dict.keys.contains("Rule") {
                                self.rule = dict["Rule"] as! [DescribeContainerGroupPriceResponseBody.PriceInfo.Price.DetailInfos.DetailInfo.Rules.Rule]
                            }
                        }
                    }
                    public var discountPrice: Double?

                    public var originalPrice: Double?

                    public var resource: String?

                    public var rules: DescribeContainerGroupPriceResponseBody.PriceInfo.Price.DetailInfos.DetailInfo.Rules?

                    public var tradePrice: Double?

                    public override init() {
                        super.init()
                    }

                    public init(_ dict: [String: Any]) {
                        super.init()
                        self.fromMap(dict)
                    }

                    public override func validate() throws -> Void {
                        try self.rules?.validate()
                    }

                    public override func toMap() -> [String : Any] {
                        var map = super.toMap()
                        if self.discountPrice != nil {
                            map["DiscountPrice"] = self.discountPrice!
                        }
                        if self.originalPrice != nil {
                            map["OriginalPrice"] = self.originalPrice!
                        }
                        if self.resource != nil {
                            map["Resource"] = self.resource!
                        }
                        if self.rules != nil {
                            map["Rules"] = self.rules?.toMap()
                        }
                        if self.tradePrice != nil {
                            map["TradePrice"] = self.tradePrice!
                        }
                        return map
                    }

                    public override func fromMap(_ dict: [String: Any]) -> Void {
                        if dict.keys.contains("DiscountPrice") {
                            self.discountPrice = dict["DiscountPrice"] as! Double
                        }
                        if dict.keys.contains("OriginalPrice") {
                            self.originalPrice = dict["OriginalPrice"] as! Double
                        }
                        if dict.keys.contains("Resource") {
                            self.resource = dict["Resource"] as! String
                        }
                        if dict.keys.contains("Rules") {
                            var model = DescribeContainerGroupPriceResponseBody.PriceInfo.Price.DetailInfos.DetailInfo.Rules()
                            model.fromMap(dict["Rules"] as! [String: Any])
                            self.rules = model
                        }
                        if dict.keys.contains("TradePrice") {
                            self.tradePrice = dict["TradePrice"] as! Double
                        }
                    }
                }
                public var detailInfo: [DescribeContainerGroupPriceResponseBody.PriceInfo.Price.DetailInfos.DetailInfo]?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.detailInfo != nil {
                        var tmp : [Any] = []
                        for k in self.detailInfo! {
                            tmp.append(k.toMap())
                        }
                        map["DetailInfo"] = tmp
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("DetailInfo") {
                        self.detailInfo = dict["DetailInfo"] as! [DescribeContainerGroupPriceResponseBody.PriceInfo.Price.DetailInfos.DetailInfo]
                    }
                }
            }
            public var currency: String?

            public var detailInfos: DescribeContainerGroupPriceResponseBody.PriceInfo.Price.DetailInfos?

            public var discountPrice: Double?

            public var originalPrice: Double?

            public var tradePrice: Double?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
                try self.detailInfos?.validate()
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.currency != nil {
                    map["Currency"] = self.currency!
                }
                if self.detailInfos != nil {
                    map["DetailInfos"] = self.detailInfos?.toMap()
                }
                if self.discountPrice != nil {
                    map["DiscountPrice"] = self.discountPrice!
                }
                if self.originalPrice != nil {
                    map["OriginalPrice"] = self.originalPrice!
                }
                if self.tradePrice != nil {
                    map["TradePrice"] = self.tradePrice!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("Currency") {
                    self.currency = dict["Currency"] as! String
                }
                if dict.keys.contains("DetailInfos") {
                    var model = DescribeContainerGroupPriceResponseBody.PriceInfo.Price.DetailInfos()
                    model.fromMap(dict["DetailInfos"] as! [String: Any])
                    self.detailInfos = model
                }
                if dict.keys.contains("DiscountPrice") {
                    self.discountPrice = dict["DiscountPrice"] as! Double
                }
                if dict.keys.contains("OriginalPrice") {
                    self.originalPrice = dict["OriginalPrice"] as! Double
                }
                if dict.keys.contains("TradePrice") {
                    self.tradePrice = dict["TradePrice"] as! Double
                }
            }
        }
        public class Rules : Tea.TeaModel {
            public class Rule : Tea.TeaModel {
                public var description_: String?

                public var ruleId: Int64?

                public override init() {
                    super.init()
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
                    if self.ruleId != nil {
                        map["RuleId"] = self.ruleId!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("Description") {
                        self.description_ = dict["Description"] as! String
                    }
                    if dict.keys.contains("RuleId") {
                        self.ruleId = dict["RuleId"] as! Int64
                    }
                }
            }
            public var rule: [DescribeContainerGroupPriceResponseBody.PriceInfo.Rules.Rule]?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.rule != nil {
                    var tmp : [Any] = []
                    for k in self.rule! {
                        tmp.append(k.toMap())
                    }
                    map["Rule"] = tmp
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("Rule") {
                    self.rule = dict["Rule"] as! [DescribeContainerGroupPriceResponseBody.PriceInfo.Rules.Rule]
                }
            }
        }
        public class SpotPrices : Tea.TeaModel {
            public class SpotPrice : Tea.TeaModel {
                public var instanceType: String?

                public var originPrice: Double?

                public var spotPrice: Double?

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
                    if self.instanceType != nil {
                        map["InstanceType"] = self.instanceType!
                    }
                    if self.originPrice != nil {
                        map["OriginPrice"] = self.originPrice!
                    }
                    if self.spotPrice != nil {
                        map["SpotPrice"] = self.spotPrice!
                    }
                    if self.zoneId != nil {
                        map["ZoneId"] = self.zoneId!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("InstanceType") {
                        self.instanceType = dict["InstanceType"] as! String
                    }
                    if dict.keys.contains("OriginPrice") {
                        self.originPrice = dict["OriginPrice"] as! Double
                    }
                    if dict.keys.contains("SpotPrice") {
                        self.spotPrice = dict["SpotPrice"] as! Double
                    }
                    if dict.keys.contains("ZoneId") {
                        self.zoneId = dict["ZoneId"] as! String
                    }
                }
            }
            public var spotPrice: [DescribeContainerGroupPriceResponseBody.PriceInfo.SpotPrices.SpotPrice]?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.spotPrice != nil {
                    var tmp : [Any] = []
                    for k in self.spotPrice! {
                        tmp.append(k.toMap())
                    }
                    map["SpotPrice"] = tmp
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("SpotPrice") {
                    self.spotPrice = dict["SpotPrice"] as! [DescribeContainerGroupPriceResponseBody.PriceInfo.SpotPrices.SpotPrice]
                }
            }
        }
        public var price: DescribeContainerGroupPriceResponseBody.PriceInfo.Price?

        public var rules: DescribeContainerGroupPriceResponseBody.PriceInfo.Rules?

        public var spotPrices: DescribeContainerGroupPriceResponseBody.PriceInfo.SpotPrices?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.price?.validate()
            try self.rules?.validate()
            try self.spotPrices?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.price != nil {
                map["Price"] = self.price?.toMap()
            }
            if self.rules != nil {
                map["Rules"] = self.rules?.toMap()
            }
            if self.spotPrices != nil {
                map["SpotPrices"] = self.spotPrices?.toMap()
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Price") {
                var model = DescribeContainerGroupPriceResponseBody.PriceInfo.Price()
                model.fromMap(dict["Price"] as! [String: Any])
                self.price = model
            }
            if dict.keys.contains("Rules") {
                var model = DescribeContainerGroupPriceResponseBody.PriceInfo.Rules()
                model.fromMap(dict["Rules"] as! [String: Any])
                self.rules = model
            }
            if dict.keys.contains("SpotPrices") {
                var model = DescribeContainerGroupPriceResponseBody.PriceInfo.SpotPrices()
                model.fromMap(dict["SpotPrices"] as! [String: Any])
                self.spotPrices = model
            }
        }
    }
    public var priceInfo: DescribeContainerGroupPriceResponseBody.PriceInfo?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.priceInfo?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.priceInfo != nil {
            map["PriceInfo"] = self.priceInfo?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("PriceInfo") {
            var model = DescribeContainerGroupPriceResponseBody.PriceInfo()
            model.fromMap(dict["PriceInfo"] as! [String: Any])
            self.priceInfo = model
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class DescribeContainerGroupPriceResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeContainerGroupPriceResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = DescribeContainerGroupPriceResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeContainerGroupStatusRequest : Tea.TeaModel {
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Key") {
                self.key = dict["Key"] as! String
            }
            if dict.keys.contains("Value") {
                self.value = dict["Value"] as! String
            }
        }
    }
    public var containerGroupIds: String?

    public var limit: Int32?

    public var nextToken: String?

    public var regionId: String?

    public var resourceGroupId: String?

    public var sinceSecond: Int32?

    public var tag: [DescribeContainerGroupStatusRequest.Tag]?

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
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.containerGroupIds != nil {
            map["ContainerGroupIds"] = self.containerGroupIds!
        }
        if self.limit != nil {
            map["Limit"] = self.limit!
        }
        if self.nextToken != nil {
            map["NextToken"] = self.nextToken!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.resourceGroupId != nil {
            map["ResourceGroupId"] = self.resourceGroupId!
        }
        if self.sinceSecond != nil {
            map["SinceSecond"] = self.sinceSecond!
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
        if self.zoneId != nil {
            map["ZoneId"] = self.zoneId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ContainerGroupIds") {
            self.containerGroupIds = dict["ContainerGroupIds"] as! String
        }
        if dict.keys.contains("Limit") {
            self.limit = dict["Limit"] as! Int32
        }
        if dict.keys.contains("NextToken") {
            self.nextToken = dict["NextToken"] as! String
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("ResourceGroupId") {
            self.resourceGroupId = dict["ResourceGroupId"] as! String
        }
        if dict.keys.contains("SinceSecond") {
            self.sinceSecond = dict["SinceSecond"] as! Int32
        }
        if dict.keys.contains("Tag") {
            self.tag = dict["Tag"] as! [DescribeContainerGroupStatusRequest.Tag]
        }
        if dict.keys.contains("VSwitchId") {
            self.vSwitchId = dict["VSwitchId"] as! String
        }
        if dict.keys.contains("ZoneId") {
            self.zoneId = dict["ZoneId"] as! String
        }
    }
}

public class DescribeContainerGroupStatusResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class PodStatus : Tea.TeaModel {
            public class Conditions : Tea.TeaModel {
                public var message: String?

                public var reason: String?

                public var lastTransitionTime: String?

                public var status: String?

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
                    if self.message != nil {
                        map["Message"] = self.message!
                    }
                    if self.reason != nil {
                        map["Reason"] = self.reason!
                    }
                    if self.lastTransitionTime != nil {
                        map["lastTransitionTime"] = self.lastTransitionTime!
                    }
                    if self.status != nil {
                        map["status"] = self.status!
                    }
                    if self.type != nil {
                        map["type"] = self.type!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("Message") {
                        self.message = dict["Message"] as! String
                    }
                    if dict.keys.contains("Reason") {
                        self.reason = dict["Reason"] as! String
                    }
                    if dict.keys.contains("lastTransitionTime") {
                        self.lastTransitionTime = dict["lastTransitionTime"] as! String
                    }
                    if dict.keys.contains("status") {
                        self.status = dict["status"] as! String
                    }
                    if dict.keys.contains("type") {
                        self.type = dict["type"] as! String
                    }
                }
            }
            public class ContainerStatuses : Tea.TeaModel {
                public class LastState : Tea.TeaModel {
                    public class Running : Tea.TeaModel {
                        public var startedAtstartedAt: String?

                        public override init() {
                            super.init()
                        }

                        public init(_ dict: [String: Any]) {
                            super.init()
                            self.fromMap(dict)
                        }

                        public override func validate() throws -> Void {
                        }

                        public override func toMap() -> [String : Any] {
                            var map = super.toMap()
                            if self.startedAtstartedAt != nil {
                                map["StartedAtstartedAt"] = self.startedAtstartedAt!
                            }
                            return map
                        }

                        public override func fromMap(_ dict: [String: Any]) -> Void {
                            if dict.keys.contains("StartedAtstartedAt") {
                                self.startedAtstartedAt = dict["StartedAtstartedAt"] as! String
                            }
                        }
                    }
                    public class Terminated : Tea.TeaModel {
                        public var containerID: String?

                        public var exitCode: Int32?

                        public var finishedAt: String?

                        public var message: String?

                        public var reason: String?

                        public var signal: Int32?

                        public var startedAt: String?

                        public override init() {
                            super.init()
                        }

                        public init(_ dict: [String: Any]) {
                            super.init()
                            self.fromMap(dict)
                        }

                        public override func validate() throws -> Void {
                        }

                        public override func toMap() -> [String : Any] {
                            var map = super.toMap()
                            if self.containerID != nil {
                                map["ContainerID"] = self.containerID!
                            }
                            if self.exitCode != nil {
                                map["ExitCode"] = self.exitCode!
                            }
                            if self.finishedAt != nil {
                                map["FinishedAt"] = self.finishedAt!
                            }
                            if self.message != nil {
                                map["Message"] = self.message!
                            }
                            if self.reason != nil {
                                map["Reason"] = self.reason!
                            }
                            if self.signal != nil {
                                map["Signal"] = self.signal!
                            }
                            if self.startedAt != nil {
                                map["StartedAt"] = self.startedAt!
                            }
                            return map
                        }

                        public override func fromMap(_ dict: [String: Any]) -> Void {
                            if dict.keys.contains("ContainerID") {
                                self.containerID = dict["ContainerID"] as! String
                            }
                            if dict.keys.contains("ExitCode") {
                                self.exitCode = dict["ExitCode"] as! Int32
                            }
                            if dict.keys.contains("FinishedAt") {
                                self.finishedAt = dict["FinishedAt"] as! String
                            }
                            if dict.keys.contains("Message") {
                                self.message = dict["Message"] as! String
                            }
                            if dict.keys.contains("Reason") {
                                self.reason = dict["Reason"] as! String
                            }
                            if dict.keys.contains("Signal") {
                                self.signal = dict["Signal"] as! Int32
                            }
                            if dict.keys.contains("StartedAt") {
                                self.startedAt = dict["StartedAt"] as! String
                            }
                        }
                    }
                    public class Waiting : Tea.TeaModel {
                        public var message: String?

                        public var reason: String?

                        public override init() {
                            super.init()
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
                                map["Message"] = self.message!
                            }
                            if self.reason != nil {
                                map["Reason"] = self.reason!
                            }
                            return map
                        }

                        public override func fromMap(_ dict: [String: Any]) -> Void {
                            if dict.keys.contains("Message") {
                                self.message = dict["Message"] as! String
                            }
                            if dict.keys.contains("Reason") {
                                self.reason = dict["Reason"] as! String
                            }
                        }
                    }
                    public var running: DescribeContainerGroupStatusResponseBody.Data.PodStatus.ContainerStatuses.LastState.Running?

                    public var terminated: DescribeContainerGroupStatusResponseBody.Data.PodStatus.ContainerStatuses.LastState.Terminated?

                    public var waiting: DescribeContainerGroupStatusResponseBody.Data.PodStatus.ContainerStatuses.LastState.Waiting?

                    public override init() {
                        super.init()
                    }

                    public init(_ dict: [String: Any]) {
                        super.init()
                        self.fromMap(dict)
                    }

                    public override func validate() throws -> Void {
                        try self.running?.validate()
                        try self.terminated?.validate()
                        try self.waiting?.validate()
                    }

                    public override func toMap() -> [String : Any] {
                        var map = super.toMap()
                        if self.running != nil {
                            map["Running"] = self.running?.toMap()
                        }
                        if self.terminated != nil {
                            map["Terminated"] = self.terminated?.toMap()
                        }
                        if self.waiting != nil {
                            map["Waiting"] = self.waiting?.toMap()
                        }
                        return map
                    }

                    public override func fromMap(_ dict: [String: Any]) -> Void {
                        if dict.keys.contains("Running") {
                            var model = DescribeContainerGroupStatusResponseBody.Data.PodStatus.ContainerStatuses.LastState.Running()
                            model.fromMap(dict["Running"] as! [String: Any])
                            self.running = model
                        }
                        if dict.keys.contains("Terminated") {
                            var model = DescribeContainerGroupStatusResponseBody.Data.PodStatus.ContainerStatuses.LastState.Terminated()
                            model.fromMap(dict["Terminated"] as! [String: Any])
                            self.terminated = model
                        }
                        if dict.keys.contains("Waiting") {
                            var model = DescribeContainerGroupStatusResponseBody.Data.PodStatus.ContainerStatuses.LastState.Waiting()
                            model.fromMap(dict["Waiting"] as! [String: Any])
                            self.waiting = model
                        }
                    }
                }
                public class State : Tea.TeaModel {
                    public class Running : Tea.TeaModel {
                        public var startedAtstartedAt: String?

                        public override init() {
                            super.init()
                        }

                        public init(_ dict: [String: Any]) {
                            super.init()
                            self.fromMap(dict)
                        }

                        public override func validate() throws -> Void {
                        }

                        public override func toMap() -> [String : Any] {
                            var map = super.toMap()
                            if self.startedAtstartedAt != nil {
                                map["StartedAtstartedAt"] = self.startedAtstartedAt!
                            }
                            return map
                        }

                        public override func fromMap(_ dict: [String: Any]) -> Void {
                            if dict.keys.contains("StartedAtstartedAt") {
                                self.startedAtstartedAt = dict["StartedAtstartedAt"] as! String
                            }
                        }
                    }
                    public class Terminated : Tea.TeaModel {
                        public var containerID: String?

                        public var exitCode: Int32?

                        public var finishedAt: String?

                        public var message: String?

                        public var reason: String?

                        public var signal: Int32?

                        public var startedAt: String?

                        public override init() {
                            super.init()
                        }

                        public init(_ dict: [String: Any]) {
                            super.init()
                            self.fromMap(dict)
                        }

                        public override func validate() throws -> Void {
                        }

                        public override func toMap() -> [String : Any] {
                            var map = super.toMap()
                            if self.containerID != nil {
                                map["ContainerID"] = self.containerID!
                            }
                            if self.exitCode != nil {
                                map["ExitCode"] = self.exitCode!
                            }
                            if self.finishedAt != nil {
                                map["FinishedAt"] = self.finishedAt!
                            }
                            if self.message != nil {
                                map["Message"] = self.message!
                            }
                            if self.reason != nil {
                                map["Reason"] = self.reason!
                            }
                            if self.signal != nil {
                                map["Signal"] = self.signal!
                            }
                            if self.startedAt != nil {
                                map["StartedAt"] = self.startedAt!
                            }
                            return map
                        }

                        public override func fromMap(_ dict: [String: Any]) -> Void {
                            if dict.keys.contains("ContainerID") {
                                self.containerID = dict["ContainerID"] as! String
                            }
                            if dict.keys.contains("ExitCode") {
                                self.exitCode = dict["ExitCode"] as! Int32
                            }
                            if dict.keys.contains("FinishedAt") {
                                self.finishedAt = dict["FinishedAt"] as! String
                            }
                            if dict.keys.contains("Message") {
                                self.message = dict["Message"] as! String
                            }
                            if dict.keys.contains("Reason") {
                                self.reason = dict["Reason"] as! String
                            }
                            if dict.keys.contains("Signal") {
                                self.signal = dict["Signal"] as! Int32
                            }
                            if dict.keys.contains("StartedAt") {
                                self.startedAt = dict["StartedAt"] as! String
                            }
                        }
                    }
                    public class Waiting : Tea.TeaModel {
                        public var message: String?

                        public var reason: String?

                        public override init() {
                            super.init()
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
                                map["Message"] = self.message!
                            }
                            if self.reason != nil {
                                map["Reason"] = self.reason!
                            }
                            return map
                        }

                        public override func fromMap(_ dict: [String: Any]) -> Void {
                            if dict.keys.contains("Message") {
                                self.message = dict["Message"] as! String
                            }
                            if dict.keys.contains("Reason") {
                                self.reason = dict["Reason"] as! String
                            }
                        }
                    }
                    public var running: DescribeContainerGroupStatusResponseBody.Data.PodStatus.ContainerStatuses.State.Running?

                    public var terminated: DescribeContainerGroupStatusResponseBody.Data.PodStatus.ContainerStatuses.State.Terminated?

                    public var waiting: DescribeContainerGroupStatusResponseBody.Data.PodStatus.ContainerStatuses.State.Waiting?

                    public override init() {
                        super.init()
                    }

                    public init(_ dict: [String: Any]) {
                        super.init()
                        self.fromMap(dict)
                    }

                    public override func validate() throws -> Void {
                        try self.running?.validate()
                        try self.terminated?.validate()
                        try self.waiting?.validate()
                    }

                    public override func toMap() -> [String : Any] {
                        var map = super.toMap()
                        if self.running != nil {
                            map["Running"] = self.running?.toMap()
                        }
                        if self.terminated != nil {
                            map["Terminated"] = self.terminated?.toMap()
                        }
                        if self.waiting != nil {
                            map["Waiting"] = self.waiting?.toMap()
                        }
                        return map
                    }

                    public override func fromMap(_ dict: [String: Any]) -> Void {
                        if dict.keys.contains("Running") {
                            var model = DescribeContainerGroupStatusResponseBody.Data.PodStatus.ContainerStatuses.State.Running()
                            model.fromMap(dict["Running"] as! [String: Any])
                            self.running = model
                        }
                        if dict.keys.contains("Terminated") {
                            var model = DescribeContainerGroupStatusResponseBody.Data.PodStatus.ContainerStatuses.State.Terminated()
                            model.fromMap(dict["Terminated"] as! [String: Any])
                            self.terminated = model
                        }
                        if dict.keys.contains("Waiting") {
                            var model = DescribeContainerGroupStatusResponseBody.Data.PodStatus.ContainerStatuses.State.Waiting()
                            model.fromMap(dict["Waiting"] as! [String: Any])
                            self.waiting = model
                        }
                    }
                }
                public var image: String?

                public var imageID: String?

                public var lastState: DescribeContainerGroupStatusResponseBody.Data.PodStatus.ContainerStatuses.LastState?

                public var name: String?

                public var ready: Bool?

                public var restartCount: Int32?

                public var started: Bool?

                public var state: DescribeContainerGroupStatusResponseBody.Data.PodStatus.ContainerStatuses.State?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                    try self.lastState?.validate()
                    try self.state?.validate()
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.image != nil {
                        map["Image"] = self.image!
                    }
                    if self.imageID != nil {
                        map["ImageID"] = self.imageID!
                    }
                    if self.lastState != nil {
                        map["LastState"] = self.lastState?.toMap()
                    }
                    if self.name != nil {
                        map["Name"] = self.name!
                    }
                    if self.ready != nil {
                        map["Ready"] = self.ready!
                    }
                    if self.restartCount != nil {
                        map["RestartCount"] = self.restartCount!
                    }
                    if self.started != nil {
                        map["Started"] = self.started!
                    }
                    if self.state != nil {
                        map["State"] = self.state?.toMap()
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("Image") {
                        self.image = dict["Image"] as! String
                    }
                    if dict.keys.contains("ImageID") {
                        self.imageID = dict["ImageID"] as! String
                    }
                    if dict.keys.contains("LastState") {
                        var model = DescribeContainerGroupStatusResponseBody.Data.PodStatus.ContainerStatuses.LastState()
                        model.fromMap(dict["LastState"] as! [String: Any])
                        self.lastState = model
                    }
                    if dict.keys.contains("Name") {
                        self.name = dict["Name"] as! String
                    }
                    if dict.keys.contains("Ready") {
                        self.ready = dict["Ready"] as! Bool
                    }
                    if dict.keys.contains("RestartCount") {
                        self.restartCount = dict["RestartCount"] as! Int32
                    }
                    if dict.keys.contains("Started") {
                        self.started = dict["Started"] as! Bool
                    }
                    if dict.keys.contains("State") {
                        var model = DescribeContainerGroupStatusResponseBody.Data.PodStatus.ContainerStatuses.State()
                        model.fromMap(dict["State"] as! [String: Any])
                        self.state = model
                    }
                }
            }
            public class PodIps : Tea.TeaModel {
                public var ip: String?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.ip != nil {
                        map["Ip"] = self.ip!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("Ip") {
                        self.ip = dict["Ip"] as! String
                    }
                }
            }
            public var conditions: [DescribeContainerGroupStatusResponseBody.Data.PodStatus.Conditions]?

            public var containerStatuses: [DescribeContainerGroupStatusResponseBody.Data.PodStatus.ContainerStatuses]?

            public var hostIp: String?

            public var phase: String?

            public var podIp: String?

            public var podIps: [DescribeContainerGroupStatusResponseBody.Data.PodStatus.PodIps]?

            public var qosClass: String?

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
                if self.conditions != nil {
                    var tmp : [Any] = []
                    for k in self.conditions! {
                        tmp.append(k.toMap())
                    }
                    map["Conditions"] = tmp
                }
                if self.containerStatuses != nil {
                    var tmp : [Any] = []
                    for k in self.containerStatuses! {
                        tmp.append(k.toMap())
                    }
                    map["ContainerStatuses"] = tmp
                }
                if self.hostIp != nil {
                    map["HostIp"] = self.hostIp!
                }
                if self.phase != nil {
                    map["Phase"] = self.phase!
                }
                if self.podIp != nil {
                    map["PodIp"] = self.podIp!
                }
                if self.podIps != nil {
                    var tmp : [Any] = []
                    for k in self.podIps! {
                        tmp.append(k.toMap())
                    }
                    map["PodIps"] = tmp
                }
                if self.qosClass != nil {
                    map["QosClass"] = self.qosClass!
                }
                if self.startTime != nil {
                    map["StartTime"] = self.startTime!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("Conditions") {
                    self.conditions = dict["Conditions"] as! [DescribeContainerGroupStatusResponseBody.Data.PodStatus.Conditions]
                }
                if dict.keys.contains("ContainerStatuses") {
                    self.containerStatuses = dict["ContainerStatuses"] as! [DescribeContainerGroupStatusResponseBody.Data.PodStatus.ContainerStatuses]
                }
                if dict.keys.contains("HostIp") {
                    self.hostIp = dict["HostIp"] as! String
                }
                if dict.keys.contains("Phase") {
                    self.phase = dict["Phase"] as! String
                }
                if dict.keys.contains("PodIp") {
                    self.podIp = dict["PodIp"] as! String
                }
                if dict.keys.contains("PodIps") {
                    self.podIps = dict["PodIps"] as! [DescribeContainerGroupStatusResponseBody.Data.PodStatus.PodIps]
                }
                if dict.keys.contains("QosClass") {
                    self.qosClass = dict["QosClass"] as! String
                }
                if dict.keys.contains("StartTime") {
                    self.startTime = dict["StartTime"] as! String
                }
            }
        }
        public var containerGroupId: String?

        public var name: String?

        public var namespace: String?

        public var podStatus: DescribeContainerGroupStatusResponseBody.Data.PodStatus?

        public var status: String?

        public var uuid: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.podStatus?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.containerGroupId != nil {
                map["ContainerGroupId"] = self.containerGroupId!
            }
            if self.name != nil {
                map["Name"] = self.name!
            }
            if self.namespace != nil {
                map["Namespace"] = self.namespace!
            }
            if self.podStatus != nil {
                map["PodStatus"] = self.podStatus?.toMap()
            }
            if self.status != nil {
                map["Status"] = self.status!
            }
            if self.uuid != nil {
                map["uuid"] = self.uuid!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("ContainerGroupId") {
                self.containerGroupId = dict["ContainerGroupId"] as! String
            }
            if dict.keys.contains("Name") {
                self.name = dict["Name"] as! String
            }
            if dict.keys.contains("Namespace") {
                self.namespace = dict["Namespace"] as! String
            }
            if dict.keys.contains("PodStatus") {
                var model = DescribeContainerGroupStatusResponseBody.Data.PodStatus()
                model.fromMap(dict["PodStatus"] as! [String: Any])
                self.podStatus = model
            }
            if dict.keys.contains("Status") {
                self.status = dict["Status"] as! String
            }
            if dict.keys.contains("uuid") {
                self.uuid = dict["uuid"] as! String
            }
        }
    }
    public var data: [DescribeContainerGroupStatusResponseBody.Data]?

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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Data") {
            self.data = dict["Data"] as! [DescribeContainerGroupStatusResponseBody.Data]
        }
        if dict.keys.contains("NextToken") {
            self.nextToken = dict["NextToken"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("TotalCount") {
            self.totalCount = dict["TotalCount"] as! Int32
        }
    }
}

public class DescribeContainerGroupStatusResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeContainerGroupStatusResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = DescribeContainerGroupStatusResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeContainerGroupsRequest : Tea.TeaModel {
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Key") {
                self.key = dict["Key"] as! String
            }
            if dict.keys.contains("Value") {
                self.value = dict["Value"] as! String
            }
        }
    }
    public var containerGroupIds: String?

    public var containerGroupName: String?

    public var limit: Int32?

    public var nextToken: String?

    public var ownerAccount: String?

    public var ownerId: Int64?

    public var regionId: String?

    public var resourceGroupId: String?

    public var resourceOwnerAccount: String?

    public var resourceOwnerId: Int64?

    public var status: String?

    public var tag: [DescribeContainerGroupsRequest.Tag]?

    public var vSwitchId: String?

    public var withEvent: Bool?

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
        if self.containerGroupIds != nil {
            map["ContainerGroupIds"] = self.containerGroupIds!
        }
        if self.containerGroupName != nil {
            map["ContainerGroupName"] = self.containerGroupName!
        }
        if self.limit != nil {
            map["Limit"] = self.limit!
        }
        if self.nextToken != nil {
            map["NextToken"] = self.nextToken!
        }
        if self.ownerAccount != nil {
            map["OwnerAccount"] = self.ownerAccount!
        }
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.resourceGroupId != nil {
            map["ResourceGroupId"] = self.resourceGroupId!
        }
        if self.resourceOwnerAccount != nil {
            map["ResourceOwnerAccount"] = self.resourceOwnerAccount!
        }
        if self.resourceOwnerId != nil {
            map["ResourceOwnerId"] = self.resourceOwnerId!
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
        if self.vSwitchId != nil {
            map["VSwitchId"] = self.vSwitchId!
        }
        if self.withEvent != nil {
            map["WithEvent"] = self.withEvent!
        }
        if self.zoneId != nil {
            map["ZoneId"] = self.zoneId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ContainerGroupIds") {
            self.containerGroupIds = dict["ContainerGroupIds"] as! String
        }
        if dict.keys.contains("ContainerGroupName") {
            self.containerGroupName = dict["ContainerGroupName"] as! String
        }
        if dict.keys.contains("Limit") {
            self.limit = dict["Limit"] as! Int32
        }
        if dict.keys.contains("NextToken") {
            self.nextToken = dict["NextToken"] as! String
        }
        if dict.keys.contains("OwnerAccount") {
            self.ownerAccount = dict["OwnerAccount"] as! String
        }
        if dict.keys.contains("OwnerId") {
            self.ownerId = dict["OwnerId"] as! Int64
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("ResourceGroupId") {
            self.resourceGroupId = dict["ResourceGroupId"] as! String
        }
        if dict.keys.contains("ResourceOwnerAccount") {
            self.resourceOwnerAccount = dict["ResourceOwnerAccount"] as! String
        }
        if dict.keys.contains("ResourceOwnerId") {
            self.resourceOwnerId = dict["ResourceOwnerId"] as! Int64
        }
        if dict.keys.contains("Status") {
            self.status = dict["Status"] as! String
        }
        if dict.keys.contains("Tag") {
            self.tag = dict["Tag"] as! [DescribeContainerGroupsRequest.Tag]
        }
        if dict.keys.contains("VSwitchId") {
            self.vSwitchId = dict["VSwitchId"] as! String
        }
        if dict.keys.contains("WithEvent") {
            self.withEvent = dict["WithEvent"] as! Bool
        }
        if dict.keys.contains("ZoneId") {
            self.zoneId = dict["ZoneId"] as! String
        }
    }
}

public class DescribeContainerGroupsResponseBody : Tea.TeaModel {
    public class ContainerGroups : Tea.TeaModel {
        public class Containers : Tea.TeaModel {
            public class CurrentState : Tea.TeaModel {
                public var detailStatus: String?

                public var exitCode: Int32?

                public var finishTime: String?

                public var message: String?

                public var reason: String?

                public var signal: Int32?

                public var startTime: String?

                public var state: String?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.detailStatus != nil {
                        map["DetailStatus"] = self.detailStatus!
                    }
                    if self.exitCode != nil {
                        map["ExitCode"] = self.exitCode!
                    }
                    if self.finishTime != nil {
                        map["FinishTime"] = self.finishTime!
                    }
                    if self.message != nil {
                        map["Message"] = self.message!
                    }
                    if self.reason != nil {
                        map["Reason"] = self.reason!
                    }
                    if self.signal != nil {
                        map["Signal"] = self.signal!
                    }
                    if self.startTime != nil {
                        map["StartTime"] = self.startTime!
                    }
                    if self.state != nil {
                        map["State"] = self.state!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("DetailStatus") {
                        self.detailStatus = dict["DetailStatus"] as! String
                    }
                    if dict.keys.contains("ExitCode") {
                        self.exitCode = dict["ExitCode"] as! Int32
                    }
                    if dict.keys.contains("FinishTime") {
                        self.finishTime = dict["FinishTime"] as! String
                    }
                    if dict.keys.contains("Message") {
                        self.message = dict["Message"] as! String
                    }
                    if dict.keys.contains("Reason") {
                        self.reason = dict["Reason"] as! String
                    }
                    if dict.keys.contains("Signal") {
                        self.signal = dict["Signal"] as! Int32
                    }
                    if dict.keys.contains("StartTime") {
                        self.startTime = dict["StartTime"] as! String
                    }
                    if dict.keys.contains("State") {
                        self.state = dict["State"] as! String
                    }
                }
            }
            public class EnvironmentVars : Tea.TeaModel {
                public class ValueFrom : Tea.TeaModel {
                    public class FieldRef : Tea.TeaModel {
                        public var fieldPath: String?

                        public override init() {
                            super.init()
                        }

                        public init(_ dict: [String: Any]) {
                            super.init()
                            self.fromMap(dict)
                        }

                        public override func validate() throws -> Void {
                        }

                        public override func toMap() -> [String : Any] {
                            var map = super.toMap()
                            if self.fieldPath != nil {
                                map["FieldPath"] = self.fieldPath!
                            }
                            return map
                        }

                        public override func fromMap(_ dict: [String: Any]) -> Void {
                            if dict.keys.contains("FieldPath") {
                                self.fieldPath = dict["FieldPath"] as! String
                            }
                        }
                    }
                    public var fieldRef: DescribeContainerGroupsResponseBody.ContainerGroups.Containers.EnvironmentVars.ValueFrom.FieldRef?

                    public override init() {
                        super.init()
                    }

                    public init(_ dict: [String: Any]) {
                        super.init()
                        self.fromMap(dict)
                    }

                    public override func validate() throws -> Void {
                        try self.fieldRef?.validate()
                    }

                    public override func toMap() -> [String : Any] {
                        var map = super.toMap()
                        if self.fieldRef != nil {
                            map["FieldRef"] = self.fieldRef?.toMap()
                        }
                        return map
                    }

                    public override func fromMap(_ dict: [String: Any]) -> Void {
                        if dict.keys.contains("FieldRef") {
                            var model = DescribeContainerGroupsResponseBody.ContainerGroups.Containers.EnvironmentVars.ValueFrom.FieldRef()
                            model.fromMap(dict["FieldRef"] as! [String: Any])
                            self.fieldRef = model
                        }
                    }
                }
                public var key: String?

                public var value: String?

                public var valueFrom: DescribeContainerGroupsResponseBody.ContainerGroups.Containers.EnvironmentVars.ValueFrom?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                    try self.valueFrom?.validate()
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.key != nil {
                        map["Key"] = self.key!
                    }
                    if self.value != nil {
                        map["Value"] = self.value!
                    }
                    if self.valueFrom != nil {
                        map["ValueFrom"] = self.valueFrom?.toMap()
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
                    if dict.keys.contains("ValueFrom") {
                        var model = DescribeContainerGroupsResponseBody.ContainerGroups.Containers.EnvironmentVars.ValueFrom()
                        model.fromMap(dict["ValueFrom"] as! [String: Any])
                        self.valueFrom = model
                    }
                }
            }
            public class LivenessProbe : Tea.TeaModel {
                public class HttpGet : Tea.TeaModel {
                    public var path: String?

                    public var port: Int32?

                    public var scheme: String?

                    public override init() {
                        super.init()
                    }

                    public init(_ dict: [String: Any]) {
                        super.init()
                        self.fromMap(dict)
                    }

                    public override func validate() throws -> Void {
                    }

                    public override func toMap() -> [String : Any] {
                        var map = super.toMap()
                        if self.path != nil {
                            map["Path"] = self.path!
                        }
                        if self.port != nil {
                            map["Port"] = self.port!
                        }
                        if self.scheme != nil {
                            map["Scheme"] = self.scheme!
                        }
                        return map
                    }

                    public override func fromMap(_ dict: [String: Any]) -> Void {
                        if dict.keys.contains("Path") {
                            self.path = dict["Path"] as! String
                        }
                        if dict.keys.contains("Port") {
                            self.port = dict["Port"] as! Int32
                        }
                        if dict.keys.contains("Scheme") {
                            self.scheme = dict["Scheme"] as! String
                        }
                    }
                }
                public class TcpSocket : Tea.TeaModel {
                    public var host: String?

                    public var port: Int32?

                    public override init() {
                        super.init()
                    }

                    public init(_ dict: [String: Any]) {
                        super.init()
                        self.fromMap(dict)
                    }

                    public override func validate() throws -> Void {
                    }

                    public override func toMap() -> [String : Any] {
                        var map = super.toMap()
                        if self.host != nil {
                            map["Host"] = self.host!
                        }
                        if self.port != nil {
                            map["Port"] = self.port!
                        }
                        return map
                    }

                    public override func fromMap(_ dict: [String: Any]) -> Void {
                        if dict.keys.contains("Host") {
                            self.host = dict["Host"] as! String
                        }
                        if dict.keys.contains("Port") {
                            self.port = dict["Port"] as! Int32
                        }
                    }
                }
                public var execs: [String]?

                public var failureThreshold: Int32?

                public var httpGet: DescribeContainerGroupsResponseBody.ContainerGroups.Containers.LivenessProbe.HttpGet?

                public var initialDelaySeconds: Int32?

                public var periodSeconds: Int32?

                public var successThreshold: Int32?

                public var tcpSocket: DescribeContainerGroupsResponseBody.ContainerGroups.Containers.LivenessProbe.TcpSocket?

                public var timeoutSeconds: Int32?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                    try self.httpGet?.validate()
                    try self.tcpSocket?.validate()
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.execs != nil {
                        map["Execs"] = self.execs!
                    }
                    if self.failureThreshold != nil {
                        map["FailureThreshold"] = self.failureThreshold!
                    }
                    if self.httpGet != nil {
                        map["HttpGet"] = self.httpGet?.toMap()
                    }
                    if self.initialDelaySeconds != nil {
                        map["InitialDelaySeconds"] = self.initialDelaySeconds!
                    }
                    if self.periodSeconds != nil {
                        map["PeriodSeconds"] = self.periodSeconds!
                    }
                    if self.successThreshold != nil {
                        map["SuccessThreshold"] = self.successThreshold!
                    }
                    if self.tcpSocket != nil {
                        map["TcpSocket"] = self.tcpSocket?.toMap()
                    }
                    if self.timeoutSeconds != nil {
                        map["TimeoutSeconds"] = self.timeoutSeconds!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("Execs") {
                        self.execs = dict["Execs"] as! [String]
                    }
                    if dict.keys.contains("FailureThreshold") {
                        self.failureThreshold = dict["FailureThreshold"] as! Int32
                    }
                    if dict.keys.contains("HttpGet") {
                        var model = DescribeContainerGroupsResponseBody.ContainerGroups.Containers.LivenessProbe.HttpGet()
                        model.fromMap(dict["HttpGet"] as! [String: Any])
                        self.httpGet = model
                    }
                    if dict.keys.contains("InitialDelaySeconds") {
                        self.initialDelaySeconds = dict["InitialDelaySeconds"] as! Int32
                    }
                    if dict.keys.contains("PeriodSeconds") {
                        self.periodSeconds = dict["PeriodSeconds"] as! Int32
                    }
                    if dict.keys.contains("SuccessThreshold") {
                        self.successThreshold = dict["SuccessThreshold"] as! Int32
                    }
                    if dict.keys.contains("TcpSocket") {
                        var model = DescribeContainerGroupsResponseBody.ContainerGroups.Containers.LivenessProbe.TcpSocket()
                        model.fromMap(dict["TcpSocket"] as! [String: Any])
                        self.tcpSocket = model
                    }
                    if dict.keys.contains("TimeoutSeconds") {
                        self.timeoutSeconds = dict["TimeoutSeconds"] as! Int32
                    }
                }
            }
            public class Ports : Tea.TeaModel {
                public var port: Int32?

                public var protocol_: String?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.port != nil {
                        map["Port"] = self.port!
                    }
                    if self.protocol_ != nil {
                        map["Protocol"] = self.protocol_!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("Port") {
                        self.port = dict["Port"] as! Int32
                    }
                    if dict.keys.contains("Protocol") {
                        self.protocol_ = dict["Protocol"] as! String
                    }
                }
            }
            public class PreviousState : Tea.TeaModel {
                public var detailStatus: String?

                public var exitCode: Int32?

                public var finishTime: String?

                public var message: String?

                public var reason: String?

                public var signal: Int32?

                public var startTime: String?

                public var state: String?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.detailStatus != nil {
                        map["DetailStatus"] = self.detailStatus!
                    }
                    if self.exitCode != nil {
                        map["ExitCode"] = self.exitCode!
                    }
                    if self.finishTime != nil {
                        map["FinishTime"] = self.finishTime!
                    }
                    if self.message != nil {
                        map["Message"] = self.message!
                    }
                    if self.reason != nil {
                        map["Reason"] = self.reason!
                    }
                    if self.signal != nil {
                        map["Signal"] = self.signal!
                    }
                    if self.startTime != nil {
                        map["StartTime"] = self.startTime!
                    }
                    if self.state != nil {
                        map["State"] = self.state!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("DetailStatus") {
                        self.detailStatus = dict["DetailStatus"] as! String
                    }
                    if dict.keys.contains("ExitCode") {
                        self.exitCode = dict["ExitCode"] as! Int32
                    }
                    if dict.keys.contains("FinishTime") {
                        self.finishTime = dict["FinishTime"] as! String
                    }
                    if dict.keys.contains("Message") {
                        self.message = dict["Message"] as! String
                    }
                    if dict.keys.contains("Reason") {
                        self.reason = dict["Reason"] as! String
                    }
                    if dict.keys.contains("Signal") {
                        self.signal = dict["Signal"] as! Int32
                    }
                    if dict.keys.contains("StartTime") {
                        self.startTime = dict["StartTime"] as! String
                    }
                    if dict.keys.contains("State") {
                        self.state = dict["State"] as! String
                    }
                }
            }
            public class ReadinessProbe : Tea.TeaModel {
                public class HttpGet : Tea.TeaModel {
                    public var path: String?

                    public var port: Int32?

                    public var scheme: String?

                    public override init() {
                        super.init()
                    }

                    public init(_ dict: [String: Any]) {
                        super.init()
                        self.fromMap(dict)
                    }

                    public override func validate() throws -> Void {
                    }

                    public override func toMap() -> [String : Any] {
                        var map = super.toMap()
                        if self.path != nil {
                            map["Path"] = self.path!
                        }
                        if self.port != nil {
                            map["Port"] = self.port!
                        }
                        if self.scheme != nil {
                            map["Scheme"] = self.scheme!
                        }
                        return map
                    }

                    public override func fromMap(_ dict: [String: Any]) -> Void {
                        if dict.keys.contains("Path") {
                            self.path = dict["Path"] as! String
                        }
                        if dict.keys.contains("Port") {
                            self.port = dict["Port"] as! Int32
                        }
                        if dict.keys.contains("Scheme") {
                            self.scheme = dict["Scheme"] as! String
                        }
                    }
                }
                public class TcpSocket : Tea.TeaModel {
                    public var host: String?

                    public var port: Int32?

                    public override init() {
                        super.init()
                    }

                    public init(_ dict: [String: Any]) {
                        super.init()
                        self.fromMap(dict)
                    }

                    public override func validate() throws -> Void {
                    }

                    public override func toMap() -> [String : Any] {
                        var map = super.toMap()
                        if self.host != nil {
                            map["Host"] = self.host!
                        }
                        if self.port != nil {
                            map["Port"] = self.port!
                        }
                        return map
                    }

                    public override func fromMap(_ dict: [String: Any]) -> Void {
                        if dict.keys.contains("Host") {
                            self.host = dict["Host"] as! String
                        }
                        if dict.keys.contains("Port") {
                            self.port = dict["Port"] as! Int32
                        }
                    }
                }
                public var execs: [String]?

                public var failureThreshold: Int32?

                public var httpGet: DescribeContainerGroupsResponseBody.ContainerGroups.Containers.ReadinessProbe.HttpGet?

                public var initialDelaySeconds: Int32?

                public var periodSeconds: Int32?

                public var successThreshold: Int32?

                public var tcpSocket: DescribeContainerGroupsResponseBody.ContainerGroups.Containers.ReadinessProbe.TcpSocket?

                public var timeoutSeconds: Int32?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                    try self.httpGet?.validate()
                    try self.tcpSocket?.validate()
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.execs != nil {
                        map["Execs"] = self.execs!
                    }
                    if self.failureThreshold != nil {
                        map["FailureThreshold"] = self.failureThreshold!
                    }
                    if self.httpGet != nil {
                        map["HttpGet"] = self.httpGet?.toMap()
                    }
                    if self.initialDelaySeconds != nil {
                        map["InitialDelaySeconds"] = self.initialDelaySeconds!
                    }
                    if self.periodSeconds != nil {
                        map["PeriodSeconds"] = self.periodSeconds!
                    }
                    if self.successThreshold != nil {
                        map["SuccessThreshold"] = self.successThreshold!
                    }
                    if self.tcpSocket != nil {
                        map["TcpSocket"] = self.tcpSocket?.toMap()
                    }
                    if self.timeoutSeconds != nil {
                        map["TimeoutSeconds"] = self.timeoutSeconds!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("Execs") {
                        self.execs = dict["Execs"] as! [String]
                    }
                    if dict.keys.contains("FailureThreshold") {
                        self.failureThreshold = dict["FailureThreshold"] as! Int32
                    }
                    if dict.keys.contains("HttpGet") {
                        var model = DescribeContainerGroupsResponseBody.ContainerGroups.Containers.ReadinessProbe.HttpGet()
                        model.fromMap(dict["HttpGet"] as! [String: Any])
                        self.httpGet = model
                    }
                    if dict.keys.contains("InitialDelaySeconds") {
                        self.initialDelaySeconds = dict["InitialDelaySeconds"] as! Int32
                    }
                    if dict.keys.contains("PeriodSeconds") {
                        self.periodSeconds = dict["PeriodSeconds"] as! Int32
                    }
                    if dict.keys.contains("SuccessThreshold") {
                        self.successThreshold = dict["SuccessThreshold"] as! Int32
                    }
                    if dict.keys.contains("TcpSocket") {
                        var model = DescribeContainerGroupsResponseBody.ContainerGroups.Containers.ReadinessProbe.TcpSocket()
                        model.fromMap(dict["TcpSocket"] as! [String: Any])
                        self.tcpSocket = model
                    }
                    if dict.keys.contains("TimeoutSeconds") {
                        self.timeoutSeconds = dict["TimeoutSeconds"] as! Int32
                    }
                }
            }
            public class SecurityContext : Tea.TeaModel {
                public class Capability : Tea.TeaModel {
                    public var adds: [String]?

                    public override init() {
                        super.init()
                    }

                    public init(_ dict: [String: Any]) {
                        super.init()
                        self.fromMap(dict)
                    }

                    public override func validate() throws -> Void {
                    }

                    public override func toMap() -> [String : Any] {
                        var map = super.toMap()
                        if self.adds != nil {
                            map["Adds"] = self.adds!
                        }
                        return map
                    }

                    public override func fromMap(_ dict: [String: Any]) -> Void {
                        if dict.keys.contains("Adds") {
                            self.adds = dict["Adds"] as! [String]
                        }
                    }
                }
                public var capability: DescribeContainerGroupsResponseBody.ContainerGroups.Containers.SecurityContext.Capability?

                public var readOnlyRootFilesystem: Bool?

                public var runAsUser: Int64?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                    try self.capability?.validate()
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.capability != nil {
                        map["Capability"] = self.capability?.toMap()
                    }
                    if self.readOnlyRootFilesystem != nil {
                        map["ReadOnlyRootFilesystem"] = self.readOnlyRootFilesystem!
                    }
                    if self.runAsUser != nil {
                        map["RunAsUser"] = self.runAsUser!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("Capability") {
                        var model = DescribeContainerGroupsResponseBody.ContainerGroups.Containers.SecurityContext.Capability()
                        model.fromMap(dict["Capability"] as! [String: Any])
                        self.capability = model
                    }
                    if dict.keys.contains("ReadOnlyRootFilesystem") {
                        self.readOnlyRootFilesystem = dict["ReadOnlyRootFilesystem"] as! Bool
                    }
                    if dict.keys.contains("RunAsUser") {
                        self.runAsUser = dict["RunAsUser"] as! Int64
                    }
                }
            }
            public class VolumeMounts : Tea.TeaModel {
                public var mountPath: String?

                public var mountPropagation: String?

                public var name: String?

                public var readOnly: Bool?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.mountPath != nil {
                        map["MountPath"] = self.mountPath!
                    }
                    if self.mountPropagation != nil {
                        map["MountPropagation"] = self.mountPropagation!
                    }
                    if self.name != nil {
                        map["Name"] = self.name!
                    }
                    if self.readOnly != nil {
                        map["ReadOnly"] = self.readOnly!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("MountPath") {
                        self.mountPath = dict["MountPath"] as! String
                    }
                    if dict.keys.contains("MountPropagation") {
                        self.mountPropagation = dict["MountPropagation"] as! String
                    }
                    if dict.keys.contains("Name") {
                        self.name = dict["Name"] as! String
                    }
                    if dict.keys.contains("ReadOnly") {
                        self.readOnly = dict["ReadOnly"] as! Bool
                    }
                }
            }
            public var args: [String]?

            public var commands: [String]?

            public var cpu: Double?

            public var currentState: DescribeContainerGroupsResponseBody.ContainerGroups.Containers.CurrentState?

            public var environmentVars: [DescribeContainerGroupsResponseBody.ContainerGroups.Containers.EnvironmentVars]?

            public var gpu: Int32?

            public var image: String?

            public var imagePullPolicy: String?

            public var livenessProbe: DescribeContainerGroupsResponseBody.ContainerGroups.Containers.LivenessProbe?

            public var memory: Double?

            public var name: String?

            public var ports: [DescribeContainerGroupsResponseBody.ContainerGroups.Containers.Ports]?

            public var previousState: DescribeContainerGroupsResponseBody.ContainerGroups.Containers.PreviousState?

            public var readinessProbe: DescribeContainerGroupsResponseBody.ContainerGroups.Containers.ReadinessProbe?

            public var ready: Bool?

            public var restartCount: Int32?

            public var securityContext: DescribeContainerGroupsResponseBody.ContainerGroups.Containers.SecurityContext?

            public var stdin: Bool?

            public var stdinOnce: Bool?

            public var tty: Bool?

            public var volumeMounts: [DescribeContainerGroupsResponseBody.ContainerGroups.Containers.VolumeMounts]?

            public var workingDir: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
                try self.currentState?.validate()
                try self.livenessProbe?.validate()
                try self.previousState?.validate()
                try self.readinessProbe?.validate()
                try self.securityContext?.validate()
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.args != nil {
                    map["Args"] = self.args!
                }
                if self.commands != nil {
                    map["Commands"] = self.commands!
                }
                if self.cpu != nil {
                    map["Cpu"] = self.cpu!
                }
                if self.currentState != nil {
                    map["CurrentState"] = self.currentState?.toMap()
                }
                if self.environmentVars != nil {
                    var tmp : [Any] = []
                    for k in self.environmentVars! {
                        tmp.append(k.toMap())
                    }
                    map["EnvironmentVars"] = tmp
                }
                if self.gpu != nil {
                    map["Gpu"] = self.gpu!
                }
                if self.image != nil {
                    map["Image"] = self.image!
                }
                if self.imagePullPolicy != nil {
                    map["ImagePullPolicy"] = self.imagePullPolicy!
                }
                if self.livenessProbe != nil {
                    map["LivenessProbe"] = self.livenessProbe?.toMap()
                }
                if self.memory != nil {
                    map["Memory"] = self.memory!
                }
                if self.name != nil {
                    map["Name"] = self.name!
                }
                if self.ports != nil {
                    var tmp : [Any] = []
                    for k in self.ports! {
                        tmp.append(k.toMap())
                    }
                    map["Ports"] = tmp
                }
                if self.previousState != nil {
                    map["PreviousState"] = self.previousState?.toMap()
                }
                if self.readinessProbe != nil {
                    map["ReadinessProbe"] = self.readinessProbe?.toMap()
                }
                if self.ready != nil {
                    map["Ready"] = self.ready!
                }
                if self.restartCount != nil {
                    map["RestartCount"] = self.restartCount!
                }
                if self.securityContext != nil {
                    map["SecurityContext"] = self.securityContext?.toMap()
                }
                if self.stdin != nil {
                    map["Stdin"] = self.stdin!
                }
                if self.stdinOnce != nil {
                    map["StdinOnce"] = self.stdinOnce!
                }
                if self.tty != nil {
                    map["Tty"] = self.tty!
                }
                if self.volumeMounts != nil {
                    var tmp : [Any] = []
                    for k in self.volumeMounts! {
                        tmp.append(k.toMap())
                    }
                    map["VolumeMounts"] = tmp
                }
                if self.workingDir != nil {
                    map["WorkingDir"] = self.workingDir!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("Args") {
                    self.args = dict["Args"] as! [String]
                }
                if dict.keys.contains("Commands") {
                    self.commands = dict["Commands"] as! [String]
                }
                if dict.keys.contains("Cpu") {
                    self.cpu = dict["Cpu"] as! Double
                }
                if dict.keys.contains("CurrentState") {
                    var model = DescribeContainerGroupsResponseBody.ContainerGroups.Containers.CurrentState()
                    model.fromMap(dict["CurrentState"] as! [String: Any])
                    self.currentState = model
                }
                if dict.keys.contains("EnvironmentVars") {
                    self.environmentVars = dict["EnvironmentVars"] as! [DescribeContainerGroupsResponseBody.ContainerGroups.Containers.EnvironmentVars]
                }
                if dict.keys.contains("Gpu") {
                    self.gpu = dict["Gpu"] as! Int32
                }
                if dict.keys.contains("Image") {
                    self.image = dict["Image"] as! String
                }
                if dict.keys.contains("ImagePullPolicy") {
                    self.imagePullPolicy = dict["ImagePullPolicy"] as! String
                }
                if dict.keys.contains("LivenessProbe") {
                    var model = DescribeContainerGroupsResponseBody.ContainerGroups.Containers.LivenessProbe()
                    model.fromMap(dict["LivenessProbe"] as! [String: Any])
                    self.livenessProbe = model
                }
                if dict.keys.contains("Memory") {
                    self.memory = dict["Memory"] as! Double
                }
                if dict.keys.contains("Name") {
                    self.name = dict["Name"] as! String
                }
                if dict.keys.contains("Ports") {
                    self.ports = dict["Ports"] as! [DescribeContainerGroupsResponseBody.ContainerGroups.Containers.Ports]
                }
                if dict.keys.contains("PreviousState") {
                    var model = DescribeContainerGroupsResponseBody.ContainerGroups.Containers.PreviousState()
                    model.fromMap(dict["PreviousState"] as! [String: Any])
                    self.previousState = model
                }
                if dict.keys.contains("ReadinessProbe") {
                    var model = DescribeContainerGroupsResponseBody.ContainerGroups.Containers.ReadinessProbe()
                    model.fromMap(dict["ReadinessProbe"] as! [String: Any])
                    self.readinessProbe = model
                }
                if dict.keys.contains("Ready") {
                    self.ready = dict["Ready"] as! Bool
                }
                if dict.keys.contains("RestartCount") {
                    self.restartCount = dict["RestartCount"] as! Int32
                }
                if dict.keys.contains("SecurityContext") {
                    var model = DescribeContainerGroupsResponseBody.ContainerGroups.Containers.SecurityContext()
                    model.fromMap(dict["SecurityContext"] as! [String: Any])
                    self.securityContext = model
                }
                if dict.keys.contains("Stdin") {
                    self.stdin = dict["Stdin"] as! Bool
                }
                if dict.keys.contains("StdinOnce") {
                    self.stdinOnce = dict["StdinOnce"] as! Bool
                }
                if dict.keys.contains("Tty") {
                    self.tty = dict["Tty"] as! Bool
                }
                if dict.keys.contains("VolumeMounts") {
                    self.volumeMounts = dict["VolumeMounts"] as! [DescribeContainerGroupsResponseBody.ContainerGroups.Containers.VolumeMounts]
                }
                if dict.keys.contains("WorkingDir") {
                    self.workingDir = dict["WorkingDir"] as! String
                }
            }
        }
        public class DnsConfig : Tea.TeaModel {
            public class Options : Tea.TeaModel {
                public var name: String?

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
                    if self.name != nil {
                        map["Name"] = self.name!
                    }
                    if self.value != nil {
                        map["Value"] = self.value!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("Name") {
                        self.name = dict["Name"] as! String
                    }
                    if dict.keys.contains("Value") {
                        self.value = dict["Value"] as! String
                    }
                }
            }
            public var nameServers: [String]?

            public var options: [DescribeContainerGroupsResponseBody.ContainerGroups.DnsConfig.Options]?

            public var searches: [String]?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.nameServers != nil {
                    map["NameServers"] = self.nameServers!
                }
                if self.options != nil {
                    var tmp : [Any] = []
                    for k in self.options! {
                        tmp.append(k.toMap())
                    }
                    map["Options"] = tmp
                }
                if self.searches != nil {
                    map["Searches"] = self.searches!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("NameServers") {
                    self.nameServers = dict["NameServers"] as! [String]
                }
                if dict.keys.contains("Options") {
                    self.options = dict["Options"] as! [DescribeContainerGroupsResponseBody.ContainerGroups.DnsConfig.Options]
                }
                if dict.keys.contains("Searches") {
                    self.searches = dict["Searches"] as! [String]
                }
            }
        }
        public class EciSecurityContext : Tea.TeaModel {
            public class Sysctls : Tea.TeaModel {
                public var name: String?

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
                    if self.name != nil {
                        map["Name"] = self.name!
                    }
                    if self.value != nil {
                        map["Value"] = self.value!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("Name") {
                        self.name = dict["Name"] as! String
                    }
                    if dict.keys.contains("Value") {
                        self.value = dict["Value"] as! String
                    }
                }
            }
            public var sysctls: [DescribeContainerGroupsResponseBody.ContainerGroups.EciSecurityContext.Sysctls]?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.sysctls != nil {
                    var tmp : [Any] = []
                    for k in self.sysctls! {
                        tmp.append(k.toMap())
                    }
                    map["Sysctls"] = tmp
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("Sysctls") {
                    self.sysctls = dict["Sysctls"] as! [DescribeContainerGroupsResponseBody.ContainerGroups.EciSecurityContext.Sysctls]
                }
            }
        }
        public class Events : Tea.TeaModel {
            public var count: Int32?

            public var firstTimestamp: String?

            public var lastTimestamp: String?

            public var message: String?

            public var name: String?

            public var reason: String?

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
                if self.count != nil {
                    map["Count"] = self.count!
                }
                if self.firstTimestamp != nil {
                    map["FirstTimestamp"] = self.firstTimestamp!
                }
                if self.lastTimestamp != nil {
                    map["LastTimestamp"] = self.lastTimestamp!
                }
                if self.message != nil {
                    map["Message"] = self.message!
                }
                if self.name != nil {
                    map["Name"] = self.name!
                }
                if self.reason != nil {
                    map["Reason"] = self.reason!
                }
                if self.type != nil {
                    map["Type"] = self.type!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("Count") {
                    self.count = dict["Count"] as! Int32
                }
                if dict.keys.contains("FirstTimestamp") {
                    self.firstTimestamp = dict["FirstTimestamp"] as! String
                }
                if dict.keys.contains("LastTimestamp") {
                    self.lastTimestamp = dict["LastTimestamp"] as! String
                }
                if dict.keys.contains("Message") {
                    self.message = dict["Message"] as! String
                }
                if dict.keys.contains("Name") {
                    self.name = dict["Name"] as! String
                }
                if dict.keys.contains("Reason") {
                    self.reason = dict["Reason"] as! String
                }
                if dict.keys.contains("Type") {
                    self.type = dict["Type"] as! String
                }
            }
        }
        public class HostAliases : Tea.TeaModel {
            public var hostnames: [String]?

            public var ip: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.hostnames != nil {
                    map["Hostnames"] = self.hostnames!
                }
                if self.ip != nil {
                    map["Ip"] = self.ip!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("Hostnames") {
                    self.hostnames = dict["Hostnames"] as! [String]
                }
                if dict.keys.contains("Ip") {
                    self.ip = dict["Ip"] as! String
                }
            }
        }
        public class InitContainers : Tea.TeaModel {
            public class CurrentState : Tea.TeaModel {
                public var detailStatus: String?

                public var exitCode: Int32?

                public var finishTime: String?

                public var message: String?

                public var reason: String?

                public var signal: Int32?

                public var startTime: String?

                public var state: String?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.detailStatus != nil {
                        map["DetailStatus"] = self.detailStatus!
                    }
                    if self.exitCode != nil {
                        map["ExitCode"] = self.exitCode!
                    }
                    if self.finishTime != nil {
                        map["FinishTime"] = self.finishTime!
                    }
                    if self.message != nil {
                        map["Message"] = self.message!
                    }
                    if self.reason != nil {
                        map["Reason"] = self.reason!
                    }
                    if self.signal != nil {
                        map["Signal"] = self.signal!
                    }
                    if self.startTime != nil {
                        map["StartTime"] = self.startTime!
                    }
                    if self.state != nil {
                        map["State"] = self.state!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("DetailStatus") {
                        self.detailStatus = dict["DetailStatus"] as! String
                    }
                    if dict.keys.contains("ExitCode") {
                        self.exitCode = dict["ExitCode"] as! Int32
                    }
                    if dict.keys.contains("FinishTime") {
                        self.finishTime = dict["FinishTime"] as! String
                    }
                    if dict.keys.contains("Message") {
                        self.message = dict["Message"] as! String
                    }
                    if dict.keys.contains("Reason") {
                        self.reason = dict["Reason"] as! String
                    }
                    if dict.keys.contains("Signal") {
                        self.signal = dict["Signal"] as! Int32
                    }
                    if dict.keys.contains("StartTime") {
                        self.startTime = dict["StartTime"] as! String
                    }
                    if dict.keys.contains("State") {
                        self.state = dict["State"] as! String
                    }
                }
            }
            public class EnvironmentVars : Tea.TeaModel {
                public class ValueFrom : Tea.TeaModel {
                    public class FieldRef : Tea.TeaModel {
                        public var fieldPath: String?

                        public override init() {
                            super.init()
                        }

                        public init(_ dict: [String: Any]) {
                            super.init()
                            self.fromMap(dict)
                        }

                        public override func validate() throws -> Void {
                        }

                        public override func toMap() -> [String : Any] {
                            var map = super.toMap()
                            if self.fieldPath != nil {
                                map["FieldPath"] = self.fieldPath!
                            }
                            return map
                        }

                        public override func fromMap(_ dict: [String: Any]) -> Void {
                            if dict.keys.contains("FieldPath") {
                                self.fieldPath = dict["FieldPath"] as! String
                            }
                        }
                    }
                    public var fieldRef: DescribeContainerGroupsResponseBody.ContainerGroups.InitContainers.EnvironmentVars.ValueFrom.FieldRef?

                    public override init() {
                        super.init()
                    }

                    public init(_ dict: [String: Any]) {
                        super.init()
                        self.fromMap(dict)
                    }

                    public override func validate() throws -> Void {
                        try self.fieldRef?.validate()
                    }

                    public override func toMap() -> [String : Any] {
                        var map = super.toMap()
                        if self.fieldRef != nil {
                            map["FieldRef"] = self.fieldRef?.toMap()
                        }
                        return map
                    }

                    public override func fromMap(_ dict: [String: Any]) -> Void {
                        if dict.keys.contains("FieldRef") {
                            var model = DescribeContainerGroupsResponseBody.ContainerGroups.InitContainers.EnvironmentVars.ValueFrom.FieldRef()
                            model.fromMap(dict["FieldRef"] as! [String: Any])
                            self.fieldRef = model
                        }
                    }
                }
                public var key: String?

                public var value: String?

                public var valueFrom: DescribeContainerGroupsResponseBody.ContainerGroups.InitContainers.EnvironmentVars.ValueFrom?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                    try self.valueFrom?.validate()
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.key != nil {
                        map["Key"] = self.key!
                    }
                    if self.value != nil {
                        map["Value"] = self.value!
                    }
                    if self.valueFrom != nil {
                        map["ValueFrom"] = self.valueFrom?.toMap()
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
                    if dict.keys.contains("ValueFrom") {
                        var model = DescribeContainerGroupsResponseBody.ContainerGroups.InitContainers.EnvironmentVars.ValueFrom()
                        model.fromMap(dict["ValueFrom"] as! [String: Any])
                        self.valueFrom = model
                    }
                }
            }
            public class Ports : Tea.TeaModel {
                public var port: Int32?

                public var protocol_: String?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.port != nil {
                        map["Port"] = self.port!
                    }
                    if self.protocol_ != nil {
                        map["Protocol"] = self.protocol_!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("Port") {
                        self.port = dict["Port"] as! Int32
                    }
                    if dict.keys.contains("Protocol") {
                        self.protocol_ = dict["Protocol"] as! String
                    }
                }
            }
            public class PreviousState : Tea.TeaModel {
                public var detailStatus: String?

                public var exitCode: Int32?

                public var finishTime: String?

                public var message: String?

                public var reason: String?

                public var signal: Int32?

                public var startTime: String?

                public var state: String?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.detailStatus != nil {
                        map["DetailStatus"] = self.detailStatus!
                    }
                    if self.exitCode != nil {
                        map["ExitCode"] = self.exitCode!
                    }
                    if self.finishTime != nil {
                        map["FinishTime"] = self.finishTime!
                    }
                    if self.message != nil {
                        map["Message"] = self.message!
                    }
                    if self.reason != nil {
                        map["Reason"] = self.reason!
                    }
                    if self.signal != nil {
                        map["Signal"] = self.signal!
                    }
                    if self.startTime != nil {
                        map["StartTime"] = self.startTime!
                    }
                    if self.state != nil {
                        map["State"] = self.state!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("DetailStatus") {
                        self.detailStatus = dict["DetailStatus"] as! String
                    }
                    if dict.keys.contains("ExitCode") {
                        self.exitCode = dict["ExitCode"] as! Int32
                    }
                    if dict.keys.contains("FinishTime") {
                        self.finishTime = dict["FinishTime"] as! String
                    }
                    if dict.keys.contains("Message") {
                        self.message = dict["Message"] as! String
                    }
                    if dict.keys.contains("Reason") {
                        self.reason = dict["Reason"] as! String
                    }
                    if dict.keys.contains("Signal") {
                        self.signal = dict["Signal"] as! Int32
                    }
                    if dict.keys.contains("StartTime") {
                        self.startTime = dict["StartTime"] as! String
                    }
                    if dict.keys.contains("State") {
                        self.state = dict["State"] as! String
                    }
                }
            }
            public class SecurityContext : Tea.TeaModel {
                public class Capability : Tea.TeaModel {
                    public var adds: [String]?

                    public override init() {
                        super.init()
                    }

                    public init(_ dict: [String: Any]) {
                        super.init()
                        self.fromMap(dict)
                    }

                    public override func validate() throws -> Void {
                    }

                    public override func toMap() -> [String : Any] {
                        var map = super.toMap()
                        if self.adds != nil {
                            map["Adds"] = self.adds!
                        }
                        return map
                    }

                    public override func fromMap(_ dict: [String: Any]) -> Void {
                        if dict.keys.contains("Adds") {
                            self.adds = dict["Adds"] as! [String]
                        }
                    }
                }
                public var capability: DescribeContainerGroupsResponseBody.ContainerGroups.InitContainers.SecurityContext.Capability?

                public var readOnlyRootFilesystem: Bool?

                public var runAsUser: Int64?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                    try self.capability?.validate()
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.capability != nil {
                        map["Capability"] = self.capability?.toMap()
                    }
                    if self.readOnlyRootFilesystem != nil {
                        map["ReadOnlyRootFilesystem"] = self.readOnlyRootFilesystem!
                    }
                    if self.runAsUser != nil {
                        map["RunAsUser"] = self.runAsUser!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("Capability") {
                        var model = DescribeContainerGroupsResponseBody.ContainerGroups.InitContainers.SecurityContext.Capability()
                        model.fromMap(dict["Capability"] as! [String: Any])
                        self.capability = model
                    }
                    if dict.keys.contains("ReadOnlyRootFilesystem") {
                        self.readOnlyRootFilesystem = dict["ReadOnlyRootFilesystem"] as! Bool
                    }
                    if dict.keys.contains("RunAsUser") {
                        self.runAsUser = dict["RunAsUser"] as! Int64
                    }
                }
            }
            public class VolumeMounts : Tea.TeaModel {
                public var mountPath: String?

                public var mountPropagation: String?

                public var name: String?

                public var readOnly: Bool?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.mountPath != nil {
                        map["MountPath"] = self.mountPath!
                    }
                    if self.mountPropagation != nil {
                        map["MountPropagation"] = self.mountPropagation!
                    }
                    if self.name != nil {
                        map["Name"] = self.name!
                    }
                    if self.readOnly != nil {
                        map["ReadOnly"] = self.readOnly!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("MountPath") {
                        self.mountPath = dict["MountPath"] as! String
                    }
                    if dict.keys.contains("MountPropagation") {
                        self.mountPropagation = dict["MountPropagation"] as! String
                    }
                    if dict.keys.contains("Name") {
                        self.name = dict["Name"] as! String
                    }
                    if dict.keys.contains("ReadOnly") {
                        self.readOnly = dict["ReadOnly"] as! Bool
                    }
                }
            }
            public var args: [String]?

            public var command: [String]?

            public var cpu: Double?

            public var currentState: DescribeContainerGroupsResponseBody.ContainerGroups.InitContainers.CurrentState?

            public var environmentVars: [DescribeContainerGroupsResponseBody.ContainerGroups.InitContainers.EnvironmentVars]?

            public var gpu: Int32?

            public var image: String?

            public var imagePullPolicy: String?

            public var memory: Double?

            public var name: String?

            public var ports: [DescribeContainerGroupsResponseBody.ContainerGroups.InitContainers.Ports]?

            public var previousState: DescribeContainerGroupsResponseBody.ContainerGroups.InitContainers.PreviousState?

            public var ready: Bool?

            public var restartCount: Int32?

            public var securityContext: DescribeContainerGroupsResponseBody.ContainerGroups.InitContainers.SecurityContext?

            public var volumeMounts: [DescribeContainerGroupsResponseBody.ContainerGroups.InitContainers.VolumeMounts]?

            public var workingDir: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
                try self.currentState?.validate()
                try self.previousState?.validate()
                try self.securityContext?.validate()
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.args != nil {
                    map["Args"] = self.args!
                }
                if self.command != nil {
                    map["Command"] = self.command!
                }
                if self.cpu != nil {
                    map["Cpu"] = self.cpu!
                }
                if self.currentState != nil {
                    map["CurrentState"] = self.currentState?.toMap()
                }
                if self.environmentVars != nil {
                    var tmp : [Any] = []
                    for k in self.environmentVars! {
                        tmp.append(k.toMap())
                    }
                    map["EnvironmentVars"] = tmp
                }
                if self.gpu != nil {
                    map["Gpu"] = self.gpu!
                }
                if self.image != nil {
                    map["Image"] = self.image!
                }
                if self.imagePullPolicy != nil {
                    map["ImagePullPolicy"] = self.imagePullPolicy!
                }
                if self.memory != nil {
                    map["Memory"] = self.memory!
                }
                if self.name != nil {
                    map["Name"] = self.name!
                }
                if self.ports != nil {
                    var tmp : [Any] = []
                    for k in self.ports! {
                        tmp.append(k.toMap())
                    }
                    map["Ports"] = tmp
                }
                if self.previousState != nil {
                    map["PreviousState"] = self.previousState?.toMap()
                }
                if self.ready != nil {
                    map["Ready"] = self.ready!
                }
                if self.restartCount != nil {
                    map["RestartCount"] = self.restartCount!
                }
                if self.securityContext != nil {
                    map["SecurityContext"] = self.securityContext?.toMap()
                }
                if self.volumeMounts != nil {
                    var tmp : [Any] = []
                    for k in self.volumeMounts! {
                        tmp.append(k.toMap())
                    }
                    map["VolumeMounts"] = tmp
                }
                if self.workingDir != nil {
                    map["WorkingDir"] = self.workingDir!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("Args") {
                    self.args = dict["Args"] as! [String]
                }
                if dict.keys.contains("Command") {
                    self.command = dict["Command"] as! [String]
                }
                if dict.keys.contains("Cpu") {
                    self.cpu = dict["Cpu"] as! Double
                }
                if dict.keys.contains("CurrentState") {
                    var model = DescribeContainerGroupsResponseBody.ContainerGroups.InitContainers.CurrentState()
                    model.fromMap(dict["CurrentState"] as! [String: Any])
                    self.currentState = model
                }
                if dict.keys.contains("EnvironmentVars") {
                    self.environmentVars = dict["EnvironmentVars"] as! [DescribeContainerGroupsResponseBody.ContainerGroups.InitContainers.EnvironmentVars]
                }
                if dict.keys.contains("Gpu") {
                    self.gpu = dict["Gpu"] as! Int32
                }
                if dict.keys.contains("Image") {
                    self.image = dict["Image"] as! String
                }
                if dict.keys.contains("ImagePullPolicy") {
                    self.imagePullPolicy = dict["ImagePullPolicy"] as! String
                }
                if dict.keys.contains("Memory") {
                    self.memory = dict["Memory"] as! Double
                }
                if dict.keys.contains("Name") {
                    self.name = dict["Name"] as! String
                }
                if dict.keys.contains("Ports") {
                    self.ports = dict["Ports"] as! [DescribeContainerGroupsResponseBody.ContainerGroups.InitContainers.Ports]
                }
                if dict.keys.contains("PreviousState") {
                    var model = DescribeContainerGroupsResponseBody.ContainerGroups.InitContainers.PreviousState()
                    model.fromMap(dict["PreviousState"] as! [String: Any])
                    self.previousState = model
                }
                if dict.keys.contains("Ready") {
                    self.ready = dict["Ready"] as! Bool
                }
                if dict.keys.contains("RestartCount") {
                    self.restartCount = dict["RestartCount"] as! Int32
                }
                if dict.keys.contains("SecurityContext") {
                    var model = DescribeContainerGroupsResponseBody.ContainerGroups.InitContainers.SecurityContext()
                    model.fromMap(dict["SecurityContext"] as! [String: Any])
                    self.securityContext = model
                }
                if dict.keys.contains("VolumeMounts") {
                    self.volumeMounts = dict["VolumeMounts"] as! [DescribeContainerGroupsResponseBody.ContainerGroups.InitContainers.VolumeMounts]
                }
                if dict.keys.contains("WorkingDir") {
                    self.workingDir = dict["WorkingDir"] as! String
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

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("Key") {
                    self.key = dict["Key"] as! String
                }
                if dict.keys.contains("Value") {
                    self.value = dict["Value"] as! String
                }
            }
        }
        public class Volumes : Tea.TeaModel {
            public class ConfigFileVolumeConfigFileToPaths : Tea.TeaModel {
                public var content: String?

                public var path: String?

                public override init() {
                    super.init()
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
                    if self.path != nil {
                        map["Path"] = self.path!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("Content") {
                        self.content = dict["Content"] as! String
                    }
                    if dict.keys.contains("Path") {
                        self.path = dict["Path"] as! String
                    }
                }
            }
            public var configFileVolumeConfigFileToPaths: [DescribeContainerGroupsResponseBody.ContainerGroups.Volumes.ConfigFileVolumeConfigFileToPaths]?

            public var diskVolumeDiskId: String?

            public var diskVolumeFsType: String?

            public var flexVolumeDriver: String?

            public var flexVolumeFsType: String?

            public var flexVolumeOptions: String?

            public var NFSVolumePath: String?

            public var NFSVolumeReadOnly: Bool?

            public var NFSVolumeServer: String?

            public var name: String?

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
                if self.configFileVolumeConfigFileToPaths != nil {
                    var tmp : [Any] = []
                    for k in self.configFileVolumeConfigFileToPaths! {
                        tmp.append(k.toMap())
                    }
                    map["ConfigFileVolumeConfigFileToPaths"] = tmp
                }
                if self.diskVolumeDiskId != nil {
                    map["DiskVolumeDiskId"] = self.diskVolumeDiskId!
                }
                if self.diskVolumeFsType != nil {
                    map["DiskVolumeFsType"] = self.diskVolumeFsType!
                }
                if self.flexVolumeDriver != nil {
                    map["FlexVolumeDriver"] = self.flexVolumeDriver!
                }
                if self.flexVolumeFsType != nil {
                    map["FlexVolumeFsType"] = self.flexVolumeFsType!
                }
                if self.flexVolumeOptions != nil {
                    map["FlexVolumeOptions"] = self.flexVolumeOptions!
                }
                if self.NFSVolumePath != nil {
                    map["NFSVolumePath"] = self.NFSVolumePath!
                }
                if self.NFSVolumeReadOnly != nil {
                    map["NFSVolumeReadOnly"] = self.NFSVolumeReadOnly!
                }
                if self.NFSVolumeServer != nil {
                    map["NFSVolumeServer"] = self.NFSVolumeServer!
                }
                if self.name != nil {
                    map["Name"] = self.name!
                }
                if self.type != nil {
                    map["Type"] = self.type!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("ConfigFileVolumeConfigFileToPaths") {
                    self.configFileVolumeConfigFileToPaths = dict["ConfigFileVolumeConfigFileToPaths"] as! [DescribeContainerGroupsResponseBody.ContainerGroups.Volumes.ConfigFileVolumeConfigFileToPaths]
                }
                if dict.keys.contains("DiskVolumeDiskId") {
                    self.diskVolumeDiskId = dict["DiskVolumeDiskId"] as! String
                }
                if dict.keys.contains("DiskVolumeFsType") {
                    self.diskVolumeFsType = dict["DiskVolumeFsType"] as! String
                }
                if dict.keys.contains("FlexVolumeDriver") {
                    self.flexVolumeDriver = dict["FlexVolumeDriver"] as! String
                }
                if dict.keys.contains("FlexVolumeFsType") {
                    self.flexVolumeFsType = dict["FlexVolumeFsType"] as! String
                }
                if dict.keys.contains("FlexVolumeOptions") {
                    self.flexVolumeOptions = dict["FlexVolumeOptions"] as! String
                }
                if dict.keys.contains("NFSVolumePath") {
                    self.NFSVolumePath = dict["NFSVolumePath"] as! String
                }
                if dict.keys.contains("NFSVolumeReadOnly") {
                    self.NFSVolumeReadOnly = dict["NFSVolumeReadOnly"] as! Bool
                }
                if dict.keys.contains("NFSVolumeServer") {
                    self.NFSVolumeServer = dict["NFSVolumeServer"] as! String
                }
                if dict.keys.contains("Name") {
                    self.name = dict["Name"] as! String
                }
                if dict.keys.contains("Type") {
                    self.type = dict["Type"] as! String
                }
            }
        }
        public var containerGroupId: String?

        public var containerGroupName: String?

        public var containers: [DescribeContainerGroupsResponseBody.ContainerGroups.Containers]?

        public var cpu: Double?

        public var creationTime: String?

        public var discount: Int32?

        public var dnsConfig: DescribeContainerGroupsResponseBody.ContainerGroups.DnsConfig?

        public var eciSecurityContext: DescribeContainerGroupsResponseBody.ContainerGroups.EciSecurityContext?

        public var eniInstanceId: String?

        public var ephemeralStorage: Int32?

        public var events: [DescribeContainerGroupsResponseBody.ContainerGroups.Events]?

        public var expiredTime: String?

        public var failedTime: String?

        public var hostAliases: [DescribeContainerGroupsResponseBody.ContainerGroups.HostAliases]?

        public var initContainers: [DescribeContainerGroupsResponseBody.ContainerGroups.InitContainers]?

        public var instanceType: String?

        public var internetIp: String?

        public var intranetIp: String?

        public var ipv6Address: String?

        public var memory: Double?

        public var ramRoleName: String?

        public var regionId: String?

        public var resourceGroupId: String?

        public var restartPolicy: String?

        public var securityGroupId: String?

        public var spotPriceLimit: Double?

        public var spotStrategy: String?

        public var status: String?

        public var succeededTime: String?

        public var tags: [DescribeContainerGroupsResponseBody.ContainerGroups.Tags]?

        public var tenantEniInstanceId: String?

        public var tenantEniIp: String?

        public var tenantSecurityGroupId: String?

        public var tenantVSwitchId: String?

        public var vSwitchId: String?

        public var volumes: [DescribeContainerGroupsResponseBody.ContainerGroups.Volumes]?

        public var vpcId: String?

        public var zoneId: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.dnsConfig?.validate()
            try self.eciSecurityContext?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.containerGroupId != nil {
                map["ContainerGroupId"] = self.containerGroupId!
            }
            if self.containerGroupName != nil {
                map["ContainerGroupName"] = self.containerGroupName!
            }
            if self.containers != nil {
                var tmp : [Any] = []
                for k in self.containers! {
                    tmp.append(k.toMap())
                }
                map["Containers"] = tmp
            }
            if self.cpu != nil {
                map["Cpu"] = self.cpu!
            }
            if self.creationTime != nil {
                map["CreationTime"] = self.creationTime!
            }
            if self.discount != nil {
                map["Discount"] = self.discount!
            }
            if self.dnsConfig != nil {
                map["DnsConfig"] = self.dnsConfig?.toMap()
            }
            if self.eciSecurityContext != nil {
                map["EciSecurityContext"] = self.eciSecurityContext?.toMap()
            }
            if self.eniInstanceId != nil {
                map["EniInstanceId"] = self.eniInstanceId!
            }
            if self.ephemeralStorage != nil {
                map["EphemeralStorage"] = self.ephemeralStorage!
            }
            if self.events != nil {
                var tmp : [Any] = []
                for k in self.events! {
                    tmp.append(k.toMap())
                }
                map["Events"] = tmp
            }
            if self.expiredTime != nil {
                map["ExpiredTime"] = self.expiredTime!
            }
            if self.failedTime != nil {
                map["FailedTime"] = self.failedTime!
            }
            if self.hostAliases != nil {
                var tmp : [Any] = []
                for k in self.hostAliases! {
                    tmp.append(k.toMap())
                }
                map["HostAliases"] = tmp
            }
            if self.initContainers != nil {
                var tmp : [Any] = []
                for k in self.initContainers! {
                    tmp.append(k.toMap())
                }
                map["InitContainers"] = tmp
            }
            if self.instanceType != nil {
                map["InstanceType"] = self.instanceType!
            }
            if self.internetIp != nil {
                map["InternetIp"] = self.internetIp!
            }
            if self.intranetIp != nil {
                map["IntranetIp"] = self.intranetIp!
            }
            if self.ipv6Address != nil {
                map["Ipv6Address"] = self.ipv6Address!
            }
            if self.memory != nil {
                map["Memory"] = self.memory!
            }
            if self.ramRoleName != nil {
                map["RamRoleName"] = self.ramRoleName!
            }
            if self.regionId != nil {
                map["RegionId"] = self.regionId!
            }
            if self.resourceGroupId != nil {
                map["ResourceGroupId"] = self.resourceGroupId!
            }
            if self.restartPolicy != nil {
                map["RestartPolicy"] = self.restartPolicy!
            }
            if self.securityGroupId != nil {
                map["SecurityGroupId"] = self.securityGroupId!
            }
            if self.spotPriceLimit != nil {
                map["SpotPriceLimit"] = self.spotPriceLimit!
            }
            if self.spotStrategy != nil {
                map["SpotStrategy"] = self.spotStrategy!
            }
            if self.status != nil {
                map["Status"] = self.status!
            }
            if self.succeededTime != nil {
                map["SucceededTime"] = self.succeededTime!
            }
            if self.tags != nil {
                var tmp : [Any] = []
                for k in self.tags! {
                    tmp.append(k.toMap())
                }
                map["Tags"] = tmp
            }
            if self.tenantEniInstanceId != nil {
                map["TenantEniInstanceId"] = self.tenantEniInstanceId!
            }
            if self.tenantEniIp != nil {
                map["TenantEniIp"] = self.tenantEniIp!
            }
            if self.tenantSecurityGroupId != nil {
                map["TenantSecurityGroupId"] = self.tenantSecurityGroupId!
            }
            if self.tenantVSwitchId != nil {
                map["TenantVSwitchId"] = self.tenantVSwitchId!
            }
            if self.vSwitchId != nil {
                map["VSwitchId"] = self.vSwitchId!
            }
            if self.volumes != nil {
                var tmp : [Any] = []
                for k in self.volumes! {
                    tmp.append(k.toMap())
                }
                map["Volumes"] = tmp
            }
            if self.vpcId != nil {
                map["VpcId"] = self.vpcId!
            }
            if self.zoneId != nil {
                map["ZoneId"] = self.zoneId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("ContainerGroupId") {
                self.containerGroupId = dict["ContainerGroupId"] as! String
            }
            if dict.keys.contains("ContainerGroupName") {
                self.containerGroupName = dict["ContainerGroupName"] as! String
            }
            if dict.keys.contains("Containers") {
                self.containers = dict["Containers"] as! [DescribeContainerGroupsResponseBody.ContainerGroups.Containers]
            }
            if dict.keys.contains("Cpu") {
                self.cpu = dict["Cpu"] as! Double
            }
            if dict.keys.contains("CreationTime") {
                self.creationTime = dict["CreationTime"] as! String
            }
            if dict.keys.contains("Discount") {
                self.discount = dict["Discount"] as! Int32
            }
            if dict.keys.contains("DnsConfig") {
                var model = DescribeContainerGroupsResponseBody.ContainerGroups.DnsConfig()
                model.fromMap(dict["DnsConfig"] as! [String: Any])
                self.dnsConfig = model
            }
            if dict.keys.contains("EciSecurityContext") {
                var model = DescribeContainerGroupsResponseBody.ContainerGroups.EciSecurityContext()
                model.fromMap(dict["EciSecurityContext"] as! [String: Any])
                self.eciSecurityContext = model
            }
            if dict.keys.contains("EniInstanceId") {
                self.eniInstanceId = dict["EniInstanceId"] as! String
            }
            if dict.keys.contains("EphemeralStorage") {
                self.ephemeralStorage = dict["EphemeralStorage"] as! Int32
            }
            if dict.keys.contains("Events") {
                self.events = dict["Events"] as! [DescribeContainerGroupsResponseBody.ContainerGroups.Events]
            }
            if dict.keys.contains("ExpiredTime") {
                self.expiredTime = dict["ExpiredTime"] as! String
            }
            if dict.keys.contains("FailedTime") {
                self.failedTime = dict["FailedTime"] as! String
            }
            if dict.keys.contains("HostAliases") {
                self.hostAliases = dict["HostAliases"] as! [DescribeContainerGroupsResponseBody.ContainerGroups.HostAliases]
            }
            if dict.keys.contains("InitContainers") {
                self.initContainers = dict["InitContainers"] as! [DescribeContainerGroupsResponseBody.ContainerGroups.InitContainers]
            }
            if dict.keys.contains("InstanceType") {
                self.instanceType = dict["InstanceType"] as! String
            }
            if dict.keys.contains("InternetIp") {
                self.internetIp = dict["InternetIp"] as! String
            }
            if dict.keys.contains("IntranetIp") {
                self.intranetIp = dict["IntranetIp"] as! String
            }
            if dict.keys.contains("Ipv6Address") {
                self.ipv6Address = dict["Ipv6Address"] as! String
            }
            if dict.keys.contains("Memory") {
                self.memory = dict["Memory"] as! Double
            }
            if dict.keys.contains("RamRoleName") {
                self.ramRoleName = dict["RamRoleName"] as! String
            }
            if dict.keys.contains("RegionId") {
                self.regionId = dict["RegionId"] as! String
            }
            if dict.keys.contains("ResourceGroupId") {
                self.resourceGroupId = dict["ResourceGroupId"] as! String
            }
            if dict.keys.contains("RestartPolicy") {
                self.restartPolicy = dict["RestartPolicy"] as! String
            }
            if dict.keys.contains("SecurityGroupId") {
                self.securityGroupId = dict["SecurityGroupId"] as! String
            }
            if dict.keys.contains("SpotPriceLimit") {
                self.spotPriceLimit = dict["SpotPriceLimit"] as! Double
            }
            if dict.keys.contains("SpotStrategy") {
                self.spotStrategy = dict["SpotStrategy"] as! String
            }
            if dict.keys.contains("Status") {
                self.status = dict["Status"] as! String
            }
            if dict.keys.contains("SucceededTime") {
                self.succeededTime = dict["SucceededTime"] as! String
            }
            if dict.keys.contains("Tags") {
                self.tags = dict["Tags"] as! [DescribeContainerGroupsResponseBody.ContainerGroups.Tags]
            }
            if dict.keys.contains("TenantEniInstanceId") {
                self.tenantEniInstanceId = dict["TenantEniInstanceId"] as! String
            }
            if dict.keys.contains("TenantEniIp") {
                self.tenantEniIp = dict["TenantEniIp"] as! String
            }
            if dict.keys.contains("TenantSecurityGroupId") {
                self.tenantSecurityGroupId = dict["TenantSecurityGroupId"] as! String
            }
            if dict.keys.contains("TenantVSwitchId") {
                self.tenantVSwitchId = dict["TenantVSwitchId"] as! String
            }
            if dict.keys.contains("VSwitchId") {
                self.vSwitchId = dict["VSwitchId"] as! String
            }
            if dict.keys.contains("Volumes") {
                self.volumes = dict["Volumes"] as! [DescribeContainerGroupsResponseBody.ContainerGroups.Volumes]
            }
            if dict.keys.contains("VpcId") {
                self.vpcId = dict["VpcId"] as! String
            }
            if dict.keys.contains("ZoneId") {
                self.zoneId = dict["ZoneId"] as! String
            }
        }
    }
    public var containerGroups: [DescribeContainerGroupsResponseBody.ContainerGroups]?

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
        if self.containerGroups != nil {
            var tmp : [Any] = []
            for k in self.containerGroups! {
                tmp.append(k.toMap())
            }
            map["ContainerGroups"] = tmp
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ContainerGroups") {
            self.containerGroups = dict["ContainerGroups"] as! [DescribeContainerGroupsResponseBody.ContainerGroups]
        }
        if dict.keys.contains("NextToken") {
            self.nextToken = dict["NextToken"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("TotalCount") {
            self.totalCount = dict["TotalCount"] as! Int32
        }
    }
}

public class DescribeContainerGroupsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeContainerGroupsResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = DescribeContainerGroupsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeContainerLogRequest : Tea.TeaModel {
    public var containerGroupId: String?

    public var containerName: String?

    public var lastTime: Bool?

    public var limitBytes: Int64?

    public var ownerAccount: String?

    public var ownerId: Int64?

    public var regionId: String?

    public var resourceOwnerAccount: String?

    public var resourceOwnerId: Int64?

    public var sinceSeconds: Int32?

    public var startTime: String?

    public var tail: Int32?

    public var timestamps: Bool?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.containerGroupId != nil {
            map["ContainerGroupId"] = self.containerGroupId!
        }
        if self.containerName != nil {
            map["ContainerName"] = self.containerName!
        }
        if self.lastTime != nil {
            map["LastTime"] = self.lastTime!
        }
        if self.limitBytes != nil {
            map["LimitBytes"] = self.limitBytes!
        }
        if self.ownerAccount != nil {
            map["OwnerAccount"] = self.ownerAccount!
        }
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.resourceOwnerAccount != nil {
            map["ResourceOwnerAccount"] = self.resourceOwnerAccount!
        }
        if self.resourceOwnerId != nil {
            map["ResourceOwnerId"] = self.resourceOwnerId!
        }
        if self.sinceSeconds != nil {
            map["SinceSeconds"] = self.sinceSeconds!
        }
        if self.startTime != nil {
            map["StartTime"] = self.startTime!
        }
        if self.tail != nil {
            map["Tail"] = self.tail!
        }
        if self.timestamps != nil {
            map["Timestamps"] = self.timestamps!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ContainerGroupId") {
            self.containerGroupId = dict["ContainerGroupId"] as! String
        }
        if dict.keys.contains("ContainerName") {
            self.containerName = dict["ContainerName"] as! String
        }
        if dict.keys.contains("LastTime") {
            self.lastTime = dict["LastTime"] as! Bool
        }
        if dict.keys.contains("LimitBytes") {
            self.limitBytes = dict["LimitBytes"] as! Int64
        }
        if dict.keys.contains("OwnerAccount") {
            self.ownerAccount = dict["OwnerAccount"] as! String
        }
        if dict.keys.contains("OwnerId") {
            self.ownerId = dict["OwnerId"] as! Int64
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("ResourceOwnerAccount") {
            self.resourceOwnerAccount = dict["ResourceOwnerAccount"] as! String
        }
        if dict.keys.contains("ResourceOwnerId") {
            self.resourceOwnerId = dict["ResourceOwnerId"] as! Int64
        }
        if dict.keys.contains("SinceSeconds") {
            self.sinceSeconds = dict["SinceSeconds"] as! Int32
        }
        if dict.keys.contains("StartTime") {
            self.startTime = dict["StartTime"] as! String
        }
        if dict.keys.contains("Tail") {
            self.tail = dict["Tail"] as! Int32
        }
        if dict.keys.contains("Timestamps") {
            self.timestamps = dict["Timestamps"] as! Bool
        }
    }
}

public class DescribeContainerLogResponseBody : Tea.TeaModel {
    public var containerName: String?

    public var content: String?

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
        if self.containerName != nil {
            map["ContainerName"] = self.containerName!
        }
        if self.content != nil {
            map["Content"] = self.content!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ContainerName") {
            self.containerName = dict["ContainerName"] as! String
        }
        if dict.keys.contains("Content") {
            self.content = dict["Content"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class DescribeContainerLogResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeContainerLogResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = DescribeContainerLogResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeImageCachesRequest : Tea.TeaModel {
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Key") {
                self.key = dict["Key"] as! String
            }
            if dict.keys.contains("Value") {
                self.value = dict["Value"] as! String
            }
        }
    }
    public var image: String?

    public var imageCacheId: String?

    public var imageCacheName: String?

    public var matchImage: [String]?

    public var ownerAccount: String?

    public var ownerId: Int64?

    public var regionId: String?

    public var resourceGroupId: String?

    public var resourceOwnerAccount: String?

    public var resourceOwnerId: Int64?

    public var snapshotId: String?

    public var tag: [DescribeImageCachesRequest.Tag]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.image != nil {
            map["Image"] = self.image!
        }
        if self.imageCacheId != nil {
            map["ImageCacheId"] = self.imageCacheId!
        }
        if self.imageCacheName != nil {
            map["ImageCacheName"] = self.imageCacheName!
        }
        if self.matchImage != nil {
            map["MatchImage"] = self.matchImage!
        }
        if self.ownerAccount != nil {
            map["OwnerAccount"] = self.ownerAccount!
        }
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.resourceGroupId != nil {
            map["ResourceGroupId"] = self.resourceGroupId!
        }
        if self.resourceOwnerAccount != nil {
            map["ResourceOwnerAccount"] = self.resourceOwnerAccount!
        }
        if self.resourceOwnerId != nil {
            map["ResourceOwnerId"] = self.resourceOwnerId!
        }
        if self.snapshotId != nil {
            map["SnapshotId"] = self.snapshotId!
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Image") {
            self.image = dict["Image"] as! String
        }
        if dict.keys.contains("ImageCacheId") {
            self.imageCacheId = dict["ImageCacheId"] as! String
        }
        if dict.keys.contains("ImageCacheName") {
            self.imageCacheName = dict["ImageCacheName"] as! String
        }
        if dict.keys.contains("MatchImage") {
            self.matchImage = dict["MatchImage"] as! [String]
        }
        if dict.keys.contains("OwnerAccount") {
            self.ownerAccount = dict["OwnerAccount"] as! String
        }
        if dict.keys.contains("OwnerId") {
            self.ownerId = dict["OwnerId"] as! Int64
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("ResourceGroupId") {
            self.resourceGroupId = dict["ResourceGroupId"] as! String
        }
        if dict.keys.contains("ResourceOwnerAccount") {
            self.resourceOwnerAccount = dict["ResourceOwnerAccount"] as! String
        }
        if dict.keys.contains("ResourceOwnerId") {
            self.resourceOwnerId = dict["ResourceOwnerId"] as! Int64
        }
        if dict.keys.contains("SnapshotId") {
            self.snapshotId = dict["SnapshotId"] as! String
        }
        if dict.keys.contains("Tag") {
            self.tag = dict["Tag"] as! [DescribeImageCachesRequest.Tag]
        }
    }
}

public class DescribeImageCachesResponseBody : Tea.TeaModel {
    public class ImageCaches : Tea.TeaModel {
        public class Events : Tea.TeaModel {
            public var count: Int32?

            public var firstTimestamp: String?

            public var lastTimestamp: String?

            public var message: String?

            public var name: String?

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
                if self.count != nil {
                    map["Count"] = self.count!
                }
                if self.firstTimestamp != nil {
                    map["FirstTimestamp"] = self.firstTimestamp!
                }
                if self.lastTimestamp != nil {
                    map["LastTimestamp"] = self.lastTimestamp!
                }
                if self.message != nil {
                    map["Message"] = self.message!
                }
                if self.name != nil {
                    map["Name"] = self.name!
                }
                if self.type != nil {
                    map["Type"] = self.type!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("Count") {
                    self.count = dict["Count"] as! Int32
                }
                if dict.keys.contains("FirstTimestamp") {
                    self.firstTimestamp = dict["FirstTimestamp"] as! String
                }
                if dict.keys.contains("LastTimestamp") {
                    self.lastTimestamp = dict["LastTimestamp"] as! String
                }
                if dict.keys.contains("Message") {
                    self.message = dict["Message"] as! String
                }
                if dict.keys.contains("Name") {
                    self.name = dict["Name"] as! String
                }
                if dict.keys.contains("Type") {
                    self.type = dict["Type"] as! String
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

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("Key") {
                    self.key = dict["Key"] as! String
                }
                if dict.keys.contains("Value") {
                    self.value = dict["Value"] as! String
                }
            }
        }
        public var containerGroupId: String?

        public var creationTime: String?

        public var eliminationStrategy: String?

        public var events: [DescribeImageCachesResponseBody.ImageCaches.Events]?

        public var expireDateTime: String?

        public var flashSnapshotId: String?

        public var imageCacheId: String?

        public var imageCacheName: String?

        public var imageCacheSize: Int32?

        public var images: [String]?

        public var lastMatchedTime: String?

        public var progress: String?

        public var regionId: String?

        public var resourceGroupId: String?

        public var snapshotId: String?

        public var status: String?

        public var tags: [DescribeImageCachesResponseBody.ImageCaches.Tags]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.containerGroupId != nil {
                map["ContainerGroupId"] = self.containerGroupId!
            }
            if self.creationTime != nil {
                map["CreationTime"] = self.creationTime!
            }
            if self.eliminationStrategy != nil {
                map["EliminationStrategy"] = self.eliminationStrategy!
            }
            if self.events != nil {
                var tmp : [Any] = []
                for k in self.events! {
                    tmp.append(k.toMap())
                }
                map["Events"] = tmp
            }
            if self.expireDateTime != nil {
                map["ExpireDateTime"] = self.expireDateTime!
            }
            if self.flashSnapshotId != nil {
                map["FlashSnapshotId"] = self.flashSnapshotId!
            }
            if self.imageCacheId != nil {
                map["ImageCacheId"] = self.imageCacheId!
            }
            if self.imageCacheName != nil {
                map["ImageCacheName"] = self.imageCacheName!
            }
            if self.imageCacheSize != nil {
                map["ImageCacheSize"] = self.imageCacheSize!
            }
            if self.images != nil {
                map["Images"] = self.images!
            }
            if self.lastMatchedTime != nil {
                map["LastMatchedTime"] = self.lastMatchedTime!
            }
            if self.progress != nil {
                map["Progress"] = self.progress!
            }
            if self.regionId != nil {
                map["RegionId"] = self.regionId!
            }
            if self.resourceGroupId != nil {
                map["ResourceGroupId"] = self.resourceGroupId!
            }
            if self.snapshotId != nil {
                map["SnapshotId"] = self.snapshotId!
            }
            if self.status != nil {
                map["Status"] = self.status!
            }
            if self.tags != nil {
                var tmp : [Any] = []
                for k in self.tags! {
                    tmp.append(k.toMap())
                }
                map["Tags"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("ContainerGroupId") {
                self.containerGroupId = dict["ContainerGroupId"] as! String
            }
            if dict.keys.contains("CreationTime") {
                self.creationTime = dict["CreationTime"] as! String
            }
            if dict.keys.contains("EliminationStrategy") {
                self.eliminationStrategy = dict["EliminationStrategy"] as! String
            }
            if dict.keys.contains("Events") {
                self.events = dict["Events"] as! [DescribeImageCachesResponseBody.ImageCaches.Events]
            }
            if dict.keys.contains("ExpireDateTime") {
                self.expireDateTime = dict["ExpireDateTime"] as! String
            }
            if dict.keys.contains("FlashSnapshotId") {
                self.flashSnapshotId = dict["FlashSnapshotId"] as! String
            }
            if dict.keys.contains("ImageCacheId") {
                self.imageCacheId = dict["ImageCacheId"] as! String
            }
            if dict.keys.contains("ImageCacheName") {
                self.imageCacheName = dict["ImageCacheName"] as! String
            }
            if dict.keys.contains("ImageCacheSize") {
                self.imageCacheSize = dict["ImageCacheSize"] as! Int32
            }
            if dict.keys.contains("Images") {
                self.images = dict["Images"] as! [String]
            }
            if dict.keys.contains("LastMatchedTime") {
                self.lastMatchedTime = dict["LastMatchedTime"] as! String
            }
            if dict.keys.contains("Progress") {
                self.progress = dict["Progress"] as! String
            }
            if dict.keys.contains("RegionId") {
                self.regionId = dict["RegionId"] as! String
            }
            if dict.keys.contains("ResourceGroupId") {
                self.resourceGroupId = dict["ResourceGroupId"] as! String
            }
            if dict.keys.contains("SnapshotId") {
                self.snapshotId = dict["SnapshotId"] as! String
            }
            if dict.keys.contains("Status") {
                self.status = dict["Status"] as! String
            }
            if dict.keys.contains("Tags") {
                self.tags = dict["Tags"] as! [DescribeImageCachesResponseBody.ImageCaches.Tags]
            }
        }
    }
    public var imageCaches: [DescribeImageCachesResponseBody.ImageCaches]?

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
        if self.imageCaches != nil {
            var tmp : [Any] = []
            for k in self.imageCaches! {
                tmp.append(k.toMap())
            }
            map["ImageCaches"] = tmp
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ImageCaches") {
            self.imageCaches = dict["ImageCaches"] as! [DescribeImageCachesResponseBody.ImageCaches]
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class DescribeImageCachesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeImageCachesResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = DescribeImageCachesResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeInstanceOpsRecordsRequest : Tea.TeaModel {
    public var containerGroupId: String?

    public var opsType: String?

    public var ownerAccount: String?

    public var ownerId: Int64?

    public var regionId: String?

    public var resourceOwnerAccount: String?

    public var resourceOwnerId: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.containerGroupId != nil {
            map["ContainerGroupId"] = self.containerGroupId!
        }
        if self.opsType != nil {
            map["OpsType"] = self.opsType!
        }
        if self.ownerAccount != nil {
            map["OwnerAccount"] = self.ownerAccount!
        }
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.resourceOwnerAccount != nil {
            map["ResourceOwnerAccount"] = self.resourceOwnerAccount!
        }
        if self.resourceOwnerId != nil {
            map["ResourceOwnerId"] = self.resourceOwnerId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ContainerGroupId") {
            self.containerGroupId = dict["ContainerGroupId"] as! String
        }
        if dict.keys.contains("OpsType") {
            self.opsType = dict["OpsType"] as! String
        }
        if dict.keys.contains("OwnerAccount") {
            self.ownerAccount = dict["OwnerAccount"] as! String
        }
        if dict.keys.contains("OwnerId") {
            self.ownerId = dict["OwnerId"] as! Int64
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("ResourceOwnerAccount") {
            self.resourceOwnerAccount = dict["ResourceOwnerAccount"] as! String
        }
        if dict.keys.contains("ResourceOwnerId") {
            self.resourceOwnerId = dict["ResourceOwnerId"] as! Int64
        }
    }
}

public class DescribeInstanceOpsRecordsResponseBody : Tea.TeaModel {
    public class Records : Tea.TeaModel {
        public var createTime: String?

        public var expireTime: String?

        public var opsStatus: String?

        public var opsType: String?

        public var resultContent: String?

        public var resultType: String?

        public override init() {
            super.init()
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
            if self.expireTime != nil {
                map["ExpireTime"] = self.expireTime!
            }
            if self.opsStatus != nil {
                map["OpsStatus"] = self.opsStatus!
            }
            if self.opsType != nil {
                map["OpsType"] = self.opsType!
            }
            if self.resultContent != nil {
                map["ResultContent"] = self.resultContent!
            }
            if self.resultType != nil {
                map["ResultType"] = self.resultType!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("CreateTime") {
                self.createTime = dict["CreateTime"] as! String
            }
            if dict.keys.contains("ExpireTime") {
                self.expireTime = dict["ExpireTime"] as! String
            }
            if dict.keys.contains("OpsStatus") {
                self.opsStatus = dict["OpsStatus"] as! String
            }
            if dict.keys.contains("OpsType") {
                self.opsType = dict["OpsType"] as! String
            }
            if dict.keys.contains("ResultContent") {
                self.resultContent = dict["ResultContent"] as! String
            }
            if dict.keys.contains("ResultType") {
                self.resultType = dict["ResultType"] as! String
            }
        }
    }
    public var records: [DescribeInstanceOpsRecordsResponseBody.Records]?

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
            self.records = dict["Records"] as! [DescribeInstanceOpsRecordsResponseBody.Records]
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class DescribeInstanceOpsRecordsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeInstanceOpsRecordsResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = DescribeInstanceOpsRecordsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeMultiContainerGroupMetricRequest : Tea.TeaModel {
    public var containerGroupIds: String?

    public var metricType: String?

    public var ownerAccount: String?

    public var ownerId: Int64?

    public var regionId: String?

    public var resourceGroupId: String?

    public var resourceOwnerAccount: String?

    public var resourceOwnerId: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.containerGroupIds != nil {
            map["ContainerGroupIds"] = self.containerGroupIds!
        }
        if self.metricType != nil {
            map["MetricType"] = self.metricType!
        }
        if self.ownerAccount != nil {
            map["OwnerAccount"] = self.ownerAccount!
        }
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.resourceGroupId != nil {
            map["ResourceGroupId"] = self.resourceGroupId!
        }
        if self.resourceOwnerAccount != nil {
            map["ResourceOwnerAccount"] = self.resourceOwnerAccount!
        }
        if self.resourceOwnerId != nil {
            map["ResourceOwnerId"] = self.resourceOwnerId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ContainerGroupIds") {
            self.containerGroupIds = dict["ContainerGroupIds"] as! String
        }
        if dict.keys.contains("MetricType") {
            self.metricType = dict["MetricType"] as! String
        }
        if dict.keys.contains("OwnerAccount") {
            self.ownerAccount = dict["OwnerAccount"] as! String
        }
        if dict.keys.contains("OwnerId") {
            self.ownerId = dict["OwnerId"] as! Int64
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("ResourceGroupId") {
            self.resourceGroupId = dict["ResourceGroupId"] as! String
        }
        if dict.keys.contains("ResourceOwnerAccount") {
            self.resourceOwnerAccount = dict["ResourceOwnerAccount"] as! String
        }
        if dict.keys.contains("ResourceOwnerId") {
            self.resourceOwnerId = dict["ResourceOwnerId"] as! Int64
        }
    }
}

public class DescribeMultiContainerGroupMetricResponseBody : Tea.TeaModel {
    public class MonitorDatas : Tea.TeaModel {
        public class Records : Tea.TeaModel {
            public class CPU : Tea.TeaModel {
                public var limit: Int64?

                public var load: Int64?

                public var usageCoreNanoSeconds: Int64?

                public var usageNanoCores: Int64?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.limit != nil {
                        map["Limit"] = self.limit!
                    }
                    if self.load != nil {
                        map["Load"] = self.load!
                    }
                    if self.usageCoreNanoSeconds != nil {
                        map["UsageCoreNanoSeconds"] = self.usageCoreNanoSeconds!
                    }
                    if self.usageNanoCores != nil {
                        map["UsageNanoCores"] = self.usageNanoCores!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("Limit") {
                        self.limit = dict["Limit"] as! Int64
                    }
                    if dict.keys.contains("Load") {
                        self.load = dict["Load"] as! Int64
                    }
                    if dict.keys.contains("UsageCoreNanoSeconds") {
                        self.usageCoreNanoSeconds = dict["UsageCoreNanoSeconds"] as! Int64
                    }
                    if dict.keys.contains("UsageNanoCores") {
                        self.usageNanoCores = dict["UsageNanoCores"] as! Int64
                    }
                }
            }
            public class Containers : Tea.TeaModel {
                public class CPU : Tea.TeaModel {
                    public var limit: Int64?

                    public var load: Int64?

                    public var usageCoreNanoSeconds: Int64?

                    public var usageNanoCores: Int64?

                    public override init() {
                        super.init()
                    }

                    public init(_ dict: [String: Any]) {
                        super.init()
                        self.fromMap(dict)
                    }

                    public override func validate() throws -> Void {
                    }

                    public override func toMap() -> [String : Any] {
                        var map = super.toMap()
                        if self.limit != nil {
                            map["Limit"] = self.limit!
                        }
                        if self.load != nil {
                            map["Load"] = self.load!
                        }
                        if self.usageCoreNanoSeconds != nil {
                            map["UsageCoreNanoSeconds"] = self.usageCoreNanoSeconds!
                        }
                        if self.usageNanoCores != nil {
                            map["UsageNanoCores"] = self.usageNanoCores!
                        }
                        return map
                    }

                    public override func fromMap(_ dict: [String: Any]) -> Void {
                        if dict.keys.contains("Limit") {
                            self.limit = dict["Limit"] as! Int64
                        }
                        if dict.keys.contains("Load") {
                            self.load = dict["Load"] as! Int64
                        }
                        if dict.keys.contains("UsageCoreNanoSeconds") {
                            self.usageCoreNanoSeconds = dict["UsageCoreNanoSeconds"] as! Int64
                        }
                        if dict.keys.contains("UsageNanoCores") {
                            self.usageNanoCores = dict["UsageNanoCores"] as! Int64
                        }
                    }
                }
                public class Memory : Tea.TeaModel {
                    public var availableBytes: Int64?

                    public var cache: Int64?

                    public var rss: Int64?

                    public var usageBytes: Int64?

                    public var workingSet: Int64?

                    public override init() {
                        super.init()
                    }

                    public init(_ dict: [String: Any]) {
                        super.init()
                        self.fromMap(dict)
                    }

                    public override func validate() throws -> Void {
                    }

                    public override func toMap() -> [String : Any] {
                        var map = super.toMap()
                        if self.availableBytes != nil {
                            map["AvailableBytes"] = self.availableBytes!
                        }
                        if self.cache != nil {
                            map["Cache"] = self.cache!
                        }
                        if self.rss != nil {
                            map["Rss"] = self.rss!
                        }
                        if self.usageBytes != nil {
                            map["UsageBytes"] = self.usageBytes!
                        }
                        if self.workingSet != nil {
                            map["WorkingSet"] = self.workingSet!
                        }
                        return map
                    }

                    public override func fromMap(_ dict: [String: Any]) -> Void {
                        if dict.keys.contains("AvailableBytes") {
                            self.availableBytes = dict["AvailableBytes"] as! Int64
                        }
                        if dict.keys.contains("Cache") {
                            self.cache = dict["Cache"] as! Int64
                        }
                        if dict.keys.contains("Rss") {
                            self.rss = dict["Rss"] as! Int64
                        }
                        if dict.keys.contains("UsageBytes") {
                            self.usageBytes = dict["UsageBytes"] as! Int64
                        }
                        if dict.keys.contains("WorkingSet") {
                            self.workingSet = dict["WorkingSet"] as! Int64
                        }
                    }
                }
                public var CPU: DescribeMultiContainerGroupMetricResponseBody.MonitorDatas.Records.Containers.CPU?

                public var memory: DescribeMultiContainerGroupMetricResponseBody.MonitorDatas.Records.Containers.Memory?

                public var name: String?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                    try self.CPU?.validate()
                    try self.memory?.validate()
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.CPU != nil {
                        map["CPU"] = self.CPU?.toMap()
                    }
                    if self.memory != nil {
                        map["Memory"] = self.memory?.toMap()
                    }
                    if self.name != nil {
                        map["Name"] = self.name!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("CPU") {
                        var model = DescribeMultiContainerGroupMetricResponseBody.MonitorDatas.Records.Containers.CPU()
                        model.fromMap(dict["CPU"] as! [String: Any])
                        self.CPU = model
                    }
                    if dict.keys.contains("Memory") {
                        var model = DescribeMultiContainerGroupMetricResponseBody.MonitorDatas.Records.Containers.Memory()
                        model.fromMap(dict["Memory"] as! [String: Any])
                        self.memory = model
                    }
                    if dict.keys.contains("Name") {
                        self.name = dict["Name"] as! String
                    }
                }
            }
            public class Disk : Tea.TeaModel {
                public var device: String?

                public var readBytes: Int64?

                public var readIo: Int64?

                public var writeBytes: Int64?

                public var writeIo: Int64?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.device != nil {
                        map["Device"] = self.device!
                    }
                    if self.readBytes != nil {
                        map["ReadBytes"] = self.readBytes!
                    }
                    if self.readIo != nil {
                        map["ReadIo"] = self.readIo!
                    }
                    if self.writeBytes != nil {
                        map["WriteBytes"] = self.writeBytes!
                    }
                    if self.writeIo != nil {
                        map["WriteIo"] = self.writeIo!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("Device") {
                        self.device = dict["Device"] as! String
                    }
                    if dict.keys.contains("ReadBytes") {
                        self.readBytes = dict["ReadBytes"] as! Int64
                    }
                    if dict.keys.contains("ReadIo") {
                        self.readIo = dict["ReadIo"] as! Int64
                    }
                    if dict.keys.contains("WriteBytes") {
                        self.writeBytes = dict["WriteBytes"] as! Int64
                    }
                    if dict.keys.contains("WriteIo") {
                        self.writeIo = dict["WriteIo"] as! Int64
                    }
                }
            }
            public class Filesystem : Tea.TeaModel {
                public var available: Int64?

                public var capacity: Int64?

                public var fsName: String?

                public var usage: Int64?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.available != nil {
                        map["Available"] = self.available!
                    }
                    if self.capacity != nil {
                        map["Capacity"] = self.capacity!
                    }
                    if self.fsName != nil {
                        map["FsName"] = self.fsName!
                    }
                    if self.usage != nil {
                        map["Usage"] = self.usage!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("Available") {
                        self.available = dict["Available"] as! Int64
                    }
                    if dict.keys.contains("Capacity") {
                        self.capacity = dict["Capacity"] as! Int64
                    }
                    if dict.keys.contains("FsName") {
                        self.fsName = dict["FsName"] as! String
                    }
                    if dict.keys.contains("Usage") {
                        self.usage = dict["Usage"] as! Int64
                    }
                }
            }
            public class Memory : Tea.TeaModel {
                public var availableBytes: Int64?

                public var cache: Int64?

                public var rss: Int64?

                public var usageBytes: Int64?

                public var workingSet: Int64?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.availableBytes != nil {
                        map["AvailableBytes"] = self.availableBytes!
                    }
                    if self.cache != nil {
                        map["Cache"] = self.cache!
                    }
                    if self.rss != nil {
                        map["Rss"] = self.rss!
                    }
                    if self.usageBytes != nil {
                        map["UsageBytes"] = self.usageBytes!
                    }
                    if self.workingSet != nil {
                        map["WorkingSet"] = self.workingSet!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("AvailableBytes") {
                        self.availableBytes = dict["AvailableBytes"] as! Int64
                    }
                    if dict.keys.contains("Cache") {
                        self.cache = dict["Cache"] as! Int64
                    }
                    if dict.keys.contains("Rss") {
                        self.rss = dict["Rss"] as! Int64
                    }
                    if dict.keys.contains("UsageBytes") {
                        self.usageBytes = dict["UsageBytes"] as! Int64
                    }
                    if dict.keys.contains("WorkingSet") {
                        self.workingSet = dict["WorkingSet"] as! Int64
                    }
                }
            }
            public class Network : Tea.TeaModel {
                public class Interfaces : Tea.TeaModel {
                    public var name: String?

                    public var rxBytes: Int64?

                    public var rxDrops: Int64?

                    public var rxErrors: Int64?

                    public var rxPackets: Int64?

                    public var txBytes: Int64?

                    public var txDrops: Int64?

                    public var txErrors: Int64?

                    public var txPackets: Int64?

                    public override init() {
                        super.init()
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
                        if self.rxBytes != nil {
                            map["RxBytes"] = self.rxBytes!
                        }
                        if self.rxDrops != nil {
                            map["RxDrops"] = self.rxDrops!
                        }
                        if self.rxErrors != nil {
                            map["RxErrors"] = self.rxErrors!
                        }
                        if self.rxPackets != nil {
                            map["RxPackets"] = self.rxPackets!
                        }
                        if self.txBytes != nil {
                            map["TxBytes"] = self.txBytes!
                        }
                        if self.txDrops != nil {
                            map["TxDrops"] = self.txDrops!
                        }
                        if self.txErrors != nil {
                            map["TxErrors"] = self.txErrors!
                        }
                        if self.txPackets != nil {
                            map["TxPackets"] = self.txPackets!
                        }
                        return map
                    }

                    public override func fromMap(_ dict: [String: Any]) -> Void {
                        if dict.keys.contains("Name") {
                            self.name = dict["Name"] as! String
                        }
                        if dict.keys.contains("RxBytes") {
                            self.rxBytes = dict["RxBytes"] as! Int64
                        }
                        if dict.keys.contains("RxDrops") {
                            self.rxDrops = dict["RxDrops"] as! Int64
                        }
                        if dict.keys.contains("RxErrors") {
                            self.rxErrors = dict["RxErrors"] as! Int64
                        }
                        if dict.keys.contains("RxPackets") {
                            self.rxPackets = dict["RxPackets"] as! Int64
                        }
                        if dict.keys.contains("TxBytes") {
                            self.txBytes = dict["TxBytes"] as! Int64
                        }
                        if dict.keys.contains("TxDrops") {
                            self.txDrops = dict["TxDrops"] as! Int64
                        }
                        if dict.keys.contains("TxErrors") {
                            self.txErrors = dict["TxErrors"] as! Int64
                        }
                        if dict.keys.contains("TxPackets") {
                            self.txPackets = dict["TxPackets"] as! Int64
                        }
                    }
                }
                public var interfaces: [DescribeMultiContainerGroupMetricResponseBody.MonitorDatas.Records.Network.Interfaces]?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.interfaces != nil {
                        var tmp : [Any] = []
                        for k in self.interfaces! {
                            tmp.append(k.toMap())
                        }
                        map["Interfaces"] = tmp
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("Interfaces") {
                        self.interfaces = dict["Interfaces"] as! [DescribeMultiContainerGroupMetricResponseBody.MonitorDatas.Records.Network.Interfaces]
                    }
                }
            }
            public var CPU: DescribeMultiContainerGroupMetricResponseBody.MonitorDatas.Records.CPU?

            public var containers: [DescribeMultiContainerGroupMetricResponseBody.MonitorDatas.Records.Containers]?

            public var disk: [DescribeMultiContainerGroupMetricResponseBody.MonitorDatas.Records.Disk]?

            public var filesystem: [DescribeMultiContainerGroupMetricResponseBody.MonitorDatas.Records.Filesystem]?

            public var memory: DescribeMultiContainerGroupMetricResponseBody.MonitorDatas.Records.Memory?

            public var network: DescribeMultiContainerGroupMetricResponseBody.MonitorDatas.Records.Network?

            public var timestamp: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
                try self.CPU?.validate()
                try self.memory?.validate()
                try self.network?.validate()
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.CPU != nil {
                    map["CPU"] = self.CPU?.toMap()
                }
                if self.containers != nil {
                    var tmp : [Any] = []
                    for k in self.containers! {
                        tmp.append(k.toMap())
                    }
                    map["Containers"] = tmp
                }
                if self.disk != nil {
                    var tmp : [Any] = []
                    for k in self.disk! {
                        tmp.append(k.toMap())
                    }
                    map["Disk"] = tmp
                }
                if self.filesystem != nil {
                    var tmp : [Any] = []
                    for k in self.filesystem! {
                        tmp.append(k.toMap())
                    }
                    map["Filesystem"] = tmp
                }
                if self.memory != nil {
                    map["Memory"] = self.memory?.toMap()
                }
                if self.network != nil {
                    map["Network"] = self.network?.toMap()
                }
                if self.timestamp != nil {
                    map["Timestamp"] = self.timestamp!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("CPU") {
                    var model = DescribeMultiContainerGroupMetricResponseBody.MonitorDatas.Records.CPU()
                    model.fromMap(dict["CPU"] as! [String: Any])
                    self.CPU = model
                }
                if dict.keys.contains("Containers") {
                    self.containers = dict["Containers"] as! [DescribeMultiContainerGroupMetricResponseBody.MonitorDatas.Records.Containers]
                }
                if dict.keys.contains("Disk") {
                    self.disk = dict["Disk"] as! [DescribeMultiContainerGroupMetricResponseBody.MonitorDatas.Records.Disk]
                }
                if dict.keys.contains("Filesystem") {
                    self.filesystem = dict["Filesystem"] as! [DescribeMultiContainerGroupMetricResponseBody.MonitorDatas.Records.Filesystem]
                }
                if dict.keys.contains("Memory") {
                    var model = DescribeMultiContainerGroupMetricResponseBody.MonitorDatas.Records.Memory()
                    model.fromMap(dict["Memory"] as! [String: Any])
                    self.memory = model
                }
                if dict.keys.contains("Network") {
                    var model = DescribeMultiContainerGroupMetricResponseBody.MonitorDatas.Records.Network()
                    model.fromMap(dict["Network"] as! [String: Any])
                    self.network = model
                }
                if dict.keys.contains("Timestamp") {
                    self.timestamp = dict["Timestamp"] as! String
                }
            }
        }
        public var containerGroupId: String?

        public var records: [DescribeMultiContainerGroupMetricResponseBody.MonitorDatas.Records]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.containerGroupId != nil {
                map["ContainerGroupId"] = self.containerGroupId!
            }
            if self.records != nil {
                var tmp : [Any] = []
                for k in self.records! {
                    tmp.append(k.toMap())
                }
                map["Records"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("ContainerGroupId") {
                self.containerGroupId = dict["ContainerGroupId"] as! String
            }
            if dict.keys.contains("Records") {
                self.records = dict["Records"] as! [DescribeMultiContainerGroupMetricResponseBody.MonitorDatas.Records]
            }
        }
    }
    public var monitorDatas: [DescribeMultiContainerGroupMetricResponseBody.MonitorDatas]?

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
        if self.monitorDatas != nil {
            var tmp : [Any] = []
            for k in self.monitorDatas! {
                tmp.append(k.toMap())
            }
            map["MonitorDatas"] = tmp
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("MonitorDatas") {
            self.monitorDatas = dict["MonitorDatas"] as! [DescribeMultiContainerGroupMetricResponseBody.MonitorDatas]
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class DescribeMultiContainerGroupMetricResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeMultiContainerGroupMetricResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = DescribeMultiContainerGroupMetricResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeRegionsRequest : Tea.TeaModel {
    public var ownerAccount: String?

    public var ownerId: Int64?

    public var regionId: String?

    public var resourceOwnerAccount: String?

    public var resourceOwnerId: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.ownerAccount != nil {
            map["OwnerAccount"] = self.ownerAccount!
        }
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.resourceOwnerAccount != nil {
            map["ResourceOwnerAccount"] = self.resourceOwnerAccount!
        }
        if self.resourceOwnerId != nil {
            map["ResourceOwnerId"] = self.resourceOwnerId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("OwnerAccount") {
            self.ownerAccount = dict["OwnerAccount"] as! String
        }
        if dict.keys.contains("OwnerId") {
            self.ownerId = dict["OwnerId"] as! Int64
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("ResourceOwnerAccount") {
            self.resourceOwnerAccount = dict["ResourceOwnerAccount"] as! String
        }
        if dict.keys.contains("ResourceOwnerId") {
            self.resourceOwnerId = dict["ResourceOwnerId"] as! Int64
        }
    }
}

public class DescribeRegionsResponseBody : Tea.TeaModel {
    public class Regions : Tea.TeaModel {
        public var recommendZones: [String]?

        public var regionEndpoint: String?

        public var regionId: String?

        public var zones: [String]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.recommendZones != nil {
                map["RecommendZones"] = self.recommendZones!
            }
            if self.regionEndpoint != nil {
                map["RegionEndpoint"] = self.regionEndpoint!
            }
            if self.regionId != nil {
                map["RegionId"] = self.regionId!
            }
            if self.zones != nil {
                map["Zones"] = self.zones!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("RecommendZones") {
                self.recommendZones = dict["RecommendZones"] as! [String]
            }
            if dict.keys.contains("RegionEndpoint") {
                self.regionEndpoint = dict["RegionEndpoint"] as! String
            }
            if dict.keys.contains("RegionId") {
                self.regionId = dict["RegionId"] as! String
            }
            if dict.keys.contains("Zones") {
                self.zones = dict["Zones"] as! [String]
            }
        }
    }
    public var regions: [DescribeRegionsResponseBody.Regions]?

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
        if self.regions != nil {
            var tmp : [Any] = []
            for k in self.regions! {
                tmp.append(k.toMap())
            }
            map["Regions"] = tmp
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Regions") {
            self.regions = dict["Regions"] as! [DescribeRegionsResponseBody.Regions]
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
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
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = DescribeRegionsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeVirtualNodesRequest : Tea.TeaModel {
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Key") {
                self.key = dict["Key"] as! String
            }
            if dict.keys.contains("Value") {
                self.value = dict["Value"] as! String
            }
        }
    }
    public var clientToken: String?

    public var limit: Int64?

    public var nextToken: String?

    public var ownerAccount: String?

    public var ownerId: Int64?

    public var regionId: String?

    public var resourceGroupId: String?

    public var resourceOwnerAccount: String?

    public var resourceOwnerId: Int64?

    public var securityGroupId: String?

    public var status: String?

    public var tag: [DescribeVirtualNodesRequest.Tag]?

    public var vSwitchId: String?

    public var virtualNodeIds: String?

    public var virtualNodeName: String?

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
        if self.clientToken != nil {
            map["ClientToken"] = self.clientToken!
        }
        if self.limit != nil {
            map["Limit"] = self.limit!
        }
        if self.nextToken != nil {
            map["NextToken"] = self.nextToken!
        }
        if self.ownerAccount != nil {
            map["OwnerAccount"] = self.ownerAccount!
        }
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.resourceGroupId != nil {
            map["ResourceGroupId"] = self.resourceGroupId!
        }
        if self.resourceOwnerAccount != nil {
            map["ResourceOwnerAccount"] = self.resourceOwnerAccount!
        }
        if self.resourceOwnerId != nil {
            map["ResourceOwnerId"] = self.resourceOwnerId!
        }
        if self.securityGroupId != nil {
            map["SecurityGroupId"] = self.securityGroupId!
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
        if self.vSwitchId != nil {
            map["VSwitchId"] = self.vSwitchId!
        }
        if self.virtualNodeIds != nil {
            map["VirtualNodeIds"] = self.virtualNodeIds!
        }
        if self.virtualNodeName != nil {
            map["VirtualNodeName"] = self.virtualNodeName!
        }
        if self.zoneId != nil {
            map["ZoneId"] = self.zoneId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ClientToken") {
            self.clientToken = dict["ClientToken"] as! String
        }
        if dict.keys.contains("Limit") {
            self.limit = dict["Limit"] as! Int64
        }
        if dict.keys.contains("NextToken") {
            self.nextToken = dict["NextToken"] as! String
        }
        if dict.keys.contains("OwnerAccount") {
            self.ownerAccount = dict["OwnerAccount"] as! String
        }
        if dict.keys.contains("OwnerId") {
            self.ownerId = dict["OwnerId"] as! Int64
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("ResourceGroupId") {
            self.resourceGroupId = dict["ResourceGroupId"] as! String
        }
        if dict.keys.contains("ResourceOwnerAccount") {
            self.resourceOwnerAccount = dict["ResourceOwnerAccount"] as! String
        }
        if dict.keys.contains("ResourceOwnerId") {
            self.resourceOwnerId = dict["ResourceOwnerId"] as! Int64
        }
        if dict.keys.contains("SecurityGroupId") {
            self.securityGroupId = dict["SecurityGroupId"] as! String
        }
        if dict.keys.contains("Status") {
            self.status = dict["Status"] as! String
        }
        if dict.keys.contains("Tag") {
            self.tag = dict["Tag"] as! [DescribeVirtualNodesRequest.Tag]
        }
        if dict.keys.contains("VSwitchId") {
            self.vSwitchId = dict["VSwitchId"] as! String
        }
        if dict.keys.contains("VirtualNodeIds") {
            self.virtualNodeIds = dict["VirtualNodeIds"] as! String
        }
        if dict.keys.contains("VirtualNodeName") {
            self.virtualNodeName = dict["VirtualNodeName"] as! String
        }
        if dict.keys.contains("ZoneId") {
            self.zoneId = dict["ZoneId"] as! String
        }
    }
}

public class DescribeVirtualNodesResponseBody : Tea.TeaModel {
    public class VirtualNodes : Tea.TeaModel {
        public class Events : Tea.TeaModel {
            public var count: Int32?

            public var firstTimestamp: String?

            public var lastTimestamp: String?

            public var message: String?

            public var name: String?

            public var reason: String?

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
                if self.count != nil {
                    map["Count"] = self.count!
                }
                if self.firstTimestamp != nil {
                    map["FirstTimestamp"] = self.firstTimestamp!
                }
                if self.lastTimestamp != nil {
                    map["LastTimestamp"] = self.lastTimestamp!
                }
                if self.message != nil {
                    map["Message"] = self.message!
                }
                if self.name != nil {
                    map["Name"] = self.name!
                }
                if self.reason != nil {
                    map["Reason"] = self.reason!
                }
                if self.type != nil {
                    map["Type"] = self.type!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("Count") {
                    self.count = dict["Count"] as! Int32
                }
                if dict.keys.contains("FirstTimestamp") {
                    self.firstTimestamp = dict["FirstTimestamp"] as! String
                }
                if dict.keys.contains("LastTimestamp") {
                    self.lastTimestamp = dict["LastTimestamp"] as! String
                }
                if dict.keys.contains("Message") {
                    self.message = dict["Message"] as! String
                }
                if dict.keys.contains("Name") {
                    self.name = dict["Name"] as! String
                }
                if dict.keys.contains("Reason") {
                    self.reason = dict["Reason"] as! String
                }
                if dict.keys.contains("Type") {
                    self.type = dict["Type"] as! String
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

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("Key") {
                    self.key = dict["Key"] as! String
                }
                if dict.keys.contains("Value") {
                    self.value = dict["Value"] as! String
                }
            }
        }
        public var clusterId: String?

        public var cpu: Double?

        public var creationTime: String?

        public var eniInstanceId: String?

        public var events: [DescribeVirtualNodesResponseBody.VirtualNodes.Events]?

        public var internetIp: String?

        public var intranetIp: String?

        public var memory: Double?

        public var ramRoleName: String?

        public var regionId: String?

        public var resourceGroupId: String?

        public var securityGroupId: String?

        public var status: String?

        public var tags: [DescribeVirtualNodesResponseBody.VirtualNodes.Tags]?

        public var vSwitchId: String?

        public var virtualNodeId: String?

        public var virtualNodeName: String?

        public var vpcId: String?

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
            if self.clusterId != nil {
                map["ClusterId"] = self.clusterId!
            }
            if self.cpu != nil {
                map["Cpu"] = self.cpu!
            }
            if self.creationTime != nil {
                map["CreationTime"] = self.creationTime!
            }
            if self.eniInstanceId != nil {
                map["EniInstanceId"] = self.eniInstanceId!
            }
            if self.events != nil {
                var tmp : [Any] = []
                for k in self.events! {
                    tmp.append(k.toMap())
                }
                map["Events"] = tmp
            }
            if self.internetIp != nil {
                map["InternetIp"] = self.internetIp!
            }
            if self.intranetIp != nil {
                map["IntranetIp"] = self.intranetIp!
            }
            if self.memory != nil {
                map["Memory"] = self.memory!
            }
            if self.ramRoleName != nil {
                map["RamRoleName"] = self.ramRoleName!
            }
            if self.regionId != nil {
                map["RegionId"] = self.regionId!
            }
            if self.resourceGroupId != nil {
                map["ResourceGroupId"] = self.resourceGroupId!
            }
            if self.securityGroupId != nil {
                map["SecurityGroupId"] = self.securityGroupId!
            }
            if self.status != nil {
                map["Status"] = self.status!
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
            if self.virtualNodeId != nil {
                map["VirtualNodeId"] = self.virtualNodeId!
            }
            if self.virtualNodeName != nil {
                map["VirtualNodeName"] = self.virtualNodeName!
            }
            if self.vpcId != nil {
                map["VpcId"] = self.vpcId!
            }
            if self.zoneId != nil {
                map["ZoneId"] = self.zoneId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("ClusterId") {
                self.clusterId = dict["ClusterId"] as! String
            }
            if dict.keys.contains("Cpu") {
                self.cpu = dict["Cpu"] as! Double
            }
            if dict.keys.contains("CreationTime") {
                self.creationTime = dict["CreationTime"] as! String
            }
            if dict.keys.contains("EniInstanceId") {
                self.eniInstanceId = dict["EniInstanceId"] as! String
            }
            if dict.keys.contains("Events") {
                self.events = dict["Events"] as! [DescribeVirtualNodesResponseBody.VirtualNodes.Events]
            }
            if dict.keys.contains("InternetIp") {
                self.internetIp = dict["InternetIp"] as! String
            }
            if dict.keys.contains("IntranetIp") {
                self.intranetIp = dict["IntranetIp"] as! String
            }
            if dict.keys.contains("Memory") {
                self.memory = dict["Memory"] as! Double
            }
            if dict.keys.contains("RamRoleName") {
                self.ramRoleName = dict["RamRoleName"] as! String
            }
            if dict.keys.contains("RegionId") {
                self.regionId = dict["RegionId"] as! String
            }
            if dict.keys.contains("ResourceGroupId") {
                self.resourceGroupId = dict["ResourceGroupId"] as! String
            }
            if dict.keys.contains("SecurityGroupId") {
                self.securityGroupId = dict["SecurityGroupId"] as! String
            }
            if dict.keys.contains("Status") {
                self.status = dict["Status"] as! String
            }
            if dict.keys.contains("Tags") {
                self.tags = dict["Tags"] as! [DescribeVirtualNodesResponseBody.VirtualNodes.Tags]
            }
            if dict.keys.contains("VSwitchId") {
                self.vSwitchId = dict["VSwitchId"] as! String
            }
            if dict.keys.contains("VirtualNodeId") {
                self.virtualNodeId = dict["VirtualNodeId"] as! String
            }
            if dict.keys.contains("VirtualNodeName") {
                self.virtualNodeName = dict["VirtualNodeName"] as! String
            }
            if dict.keys.contains("VpcId") {
                self.vpcId = dict["VpcId"] as! String
            }
            if dict.keys.contains("ZoneId") {
                self.zoneId = dict["ZoneId"] as! String
            }
        }
    }
    public var nextToken: String?

    public var requestId: String?

    public var totalCount: Int32?

    public var virtualNodes: [DescribeVirtualNodesResponseBody.VirtualNodes]?

    public override init() {
        super.init()
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
        if self.totalCount != nil {
            map["TotalCount"] = self.totalCount!
        }
        if self.virtualNodes != nil {
            var tmp : [Any] = []
            for k in self.virtualNodes! {
                tmp.append(k.toMap())
            }
            map["VirtualNodes"] = tmp
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("NextToken") {
            self.nextToken = dict["NextToken"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("TotalCount") {
            self.totalCount = dict["TotalCount"] as! Int32
        }
        if dict.keys.contains("VirtualNodes") {
            self.virtualNodes = dict["VirtualNodes"] as! [DescribeVirtualNodesResponseBody.VirtualNodes]
        }
    }
}

public class DescribeVirtualNodesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeVirtualNodesResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = DescribeVirtualNodesResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ExecContainerCommandRequest : Tea.TeaModel {
    public var command: String?

    public var containerGroupId: String?

    public var containerName: String?

    public var ownerAccount: String?

    public var ownerId: Int64?

    public var regionId: String?

    public var resourceOwnerAccount: String?

    public var resourceOwnerId: Int64?

    public var stdin: Bool?

    public var sync: Bool?

    public var TTY: Bool?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.command != nil {
            map["Command"] = self.command!
        }
        if self.containerGroupId != nil {
            map["ContainerGroupId"] = self.containerGroupId!
        }
        if self.containerName != nil {
            map["ContainerName"] = self.containerName!
        }
        if self.ownerAccount != nil {
            map["OwnerAccount"] = self.ownerAccount!
        }
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.resourceOwnerAccount != nil {
            map["ResourceOwnerAccount"] = self.resourceOwnerAccount!
        }
        if self.resourceOwnerId != nil {
            map["ResourceOwnerId"] = self.resourceOwnerId!
        }
        if self.stdin != nil {
            map["Stdin"] = self.stdin!
        }
        if self.sync != nil {
            map["Sync"] = self.sync!
        }
        if self.TTY != nil {
            map["TTY"] = self.TTY!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Command") {
            self.command = dict["Command"] as! String
        }
        if dict.keys.contains("ContainerGroupId") {
            self.containerGroupId = dict["ContainerGroupId"] as! String
        }
        if dict.keys.contains("ContainerName") {
            self.containerName = dict["ContainerName"] as! String
        }
        if dict.keys.contains("OwnerAccount") {
            self.ownerAccount = dict["OwnerAccount"] as! String
        }
        if dict.keys.contains("OwnerId") {
            self.ownerId = dict["OwnerId"] as! Int64
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("ResourceOwnerAccount") {
            self.resourceOwnerAccount = dict["ResourceOwnerAccount"] as! String
        }
        if dict.keys.contains("ResourceOwnerId") {
            self.resourceOwnerId = dict["ResourceOwnerId"] as! Int64
        }
        if dict.keys.contains("Stdin") {
            self.stdin = dict["Stdin"] as! Bool
        }
        if dict.keys.contains("Sync") {
            self.sync = dict["Sync"] as! Bool
        }
        if dict.keys.contains("TTY") {
            self.TTY = dict["TTY"] as! Bool
        }
    }
}

public class ExecContainerCommandResponseBody : Tea.TeaModel {
    public var httpUrl: String?

    public var requestId: String?

    public var syncResponse: String?

    public var webSocketUri: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.httpUrl != nil {
            map["HttpUrl"] = self.httpUrl!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.syncResponse != nil {
            map["SyncResponse"] = self.syncResponse!
        }
        if self.webSocketUri != nil {
            map["WebSocketUri"] = self.webSocketUri!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("HttpUrl") {
            self.httpUrl = dict["HttpUrl"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("SyncResponse") {
            self.syncResponse = dict["SyncResponse"] as! String
        }
        if dict.keys.contains("WebSocketUri") {
            self.webSocketUri = dict["WebSocketUri"] as! String
        }
    }
}

public class ExecContainerCommandResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ExecContainerCommandResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = ExecContainerCommandResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListUsageRequest : Tea.TeaModel {
    public var ownerAccount: String?

    public var ownerId: Int64?

    public var regionId: String?

    public var resourceOwnerAccount: String?

    public var resourceOwnerId: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.ownerAccount != nil {
            map["OwnerAccount"] = self.ownerAccount!
        }
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.resourceOwnerAccount != nil {
            map["ResourceOwnerAccount"] = self.resourceOwnerAccount!
        }
        if self.resourceOwnerId != nil {
            map["ResourceOwnerId"] = self.resourceOwnerId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("OwnerAccount") {
            self.ownerAccount = dict["OwnerAccount"] as! String
        }
        if dict.keys.contains("OwnerId") {
            self.ownerId = dict["OwnerId"] as! Int64
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("ResourceOwnerAccount") {
            self.resourceOwnerAccount = dict["ResourceOwnerAccount"] as! String
        }
        if dict.keys.contains("ResourceOwnerId") {
            self.resourceOwnerId = dict["ResourceOwnerId"] as! Int64
        }
    }
}

public class ListUsageResponseBody : Tea.TeaModel {
    public var attributes: [String: Any]?

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
        if self.attributes != nil {
            map["Attributes"] = self.attributes!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Attributes") {
            self.attributes = dict["Attributes"] as! [String: Any]
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class ListUsageResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListUsageResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = ListUsageResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ResizeContainerGroupVolumeRequest : Tea.TeaModel {
    public var clientToken: String?

    public var containerGroupId: String?

    public var newSize: Int64?

    public var ownerAccount: String?

    public var ownerId: Int64?

    public var regionId: String?

    public var resourceOwnerAccount: String?

    public var resourceOwnerId: Int64?

    public var volumeName: String?

    public override init() {
        super.init()
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
        if self.containerGroupId != nil {
            map["ContainerGroupId"] = self.containerGroupId!
        }
        if self.newSize != nil {
            map["NewSize"] = self.newSize!
        }
        if self.ownerAccount != nil {
            map["OwnerAccount"] = self.ownerAccount!
        }
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.resourceOwnerAccount != nil {
            map["ResourceOwnerAccount"] = self.resourceOwnerAccount!
        }
        if self.resourceOwnerId != nil {
            map["ResourceOwnerId"] = self.resourceOwnerId!
        }
        if self.volumeName != nil {
            map["VolumeName"] = self.volumeName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ClientToken") {
            self.clientToken = dict["ClientToken"] as! String
        }
        if dict.keys.contains("ContainerGroupId") {
            self.containerGroupId = dict["ContainerGroupId"] as! String
        }
        if dict.keys.contains("NewSize") {
            self.newSize = dict["NewSize"] as! Int64
        }
        if dict.keys.contains("OwnerAccount") {
            self.ownerAccount = dict["OwnerAccount"] as! String
        }
        if dict.keys.contains("OwnerId") {
            self.ownerId = dict["OwnerId"] as! Int64
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("ResourceOwnerAccount") {
            self.resourceOwnerAccount = dict["ResourceOwnerAccount"] as! String
        }
        if dict.keys.contains("ResourceOwnerId") {
            self.resourceOwnerId = dict["ResourceOwnerId"] as! Int64
        }
        if dict.keys.contains("VolumeName") {
            self.volumeName = dict["VolumeName"] as! String
        }
    }
}

public class ResizeContainerGroupVolumeResponseBody : Tea.TeaModel {
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

public class ResizeContainerGroupVolumeResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ResizeContainerGroupVolumeResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = ResizeContainerGroupVolumeResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class RestartContainerGroupRequest : Tea.TeaModel {
    public var clientToken: String?

    public var containerGroupId: String?

    public var ownerAccount: String?

    public var ownerId: Int64?

    public var regionId: String?

    public var resourceOwnerAccount: String?

    public var resourceOwnerId: Int64?

    public override init() {
        super.init()
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
        if self.containerGroupId != nil {
            map["ContainerGroupId"] = self.containerGroupId!
        }
        if self.ownerAccount != nil {
            map["OwnerAccount"] = self.ownerAccount!
        }
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.resourceOwnerAccount != nil {
            map["ResourceOwnerAccount"] = self.resourceOwnerAccount!
        }
        if self.resourceOwnerId != nil {
            map["ResourceOwnerId"] = self.resourceOwnerId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ClientToken") {
            self.clientToken = dict["ClientToken"] as! String
        }
        if dict.keys.contains("ContainerGroupId") {
            self.containerGroupId = dict["ContainerGroupId"] as! String
        }
        if dict.keys.contains("OwnerAccount") {
            self.ownerAccount = dict["OwnerAccount"] as! String
        }
        if dict.keys.contains("OwnerId") {
            self.ownerId = dict["OwnerId"] as! Int64
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("ResourceOwnerAccount") {
            self.resourceOwnerAccount = dict["ResourceOwnerAccount"] as! String
        }
        if dict.keys.contains("ResourceOwnerId") {
            self.resourceOwnerId = dict["ResourceOwnerId"] as! Int64
        }
    }
}

public class RestartContainerGroupResponseBody : Tea.TeaModel {
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

public class RestartContainerGroupResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: RestartContainerGroupResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = RestartContainerGroupResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class UpdateContainerGroupRequest : Tea.TeaModel {
    public class DnsConfig : Tea.TeaModel {
        public class Option : Tea.TeaModel {
            public var name: String?

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
                if self.name != nil {
                    map["Name"] = self.name!
                }
                if self.value != nil {
                    map["Value"] = self.value!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("Name") {
                    self.name = dict["Name"] as! String
                }
                if dict.keys.contains("Value") {
                    self.value = dict["Value"] as! String
                }
            }
        }
        public var nameServer: [String]?

        public var option: [UpdateContainerGroupRequest.DnsConfig.Option]?

        public var search: [String]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.nameServer != nil {
                map["NameServer"] = self.nameServer!
            }
            if self.option != nil {
                var tmp : [Any] = []
                for k in self.option! {
                    tmp.append(k.toMap())
                }
                map["Option"] = tmp
            }
            if self.search != nil {
                map["Search"] = self.search!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("NameServer") {
                self.nameServer = dict["NameServer"] as! [String]
            }
            if dict.keys.contains("Option") {
                self.option = dict["Option"] as! [UpdateContainerGroupRequest.DnsConfig.Option]
            }
            if dict.keys.contains("Search") {
                self.search = dict["Search"] as! [String]
            }
        }
    }
    public class AcrRegistryInfo : Tea.TeaModel {
        public var domain: [String]?

        public var instanceId: String?

        public var instanceName: String?

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
            if self.domain != nil {
                map["Domain"] = self.domain!
            }
            if self.instanceId != nil {
                map["InstanceId"] = self.instanceId!
            }
            if self.instanceName != nil {
                map["InstanceName"] = self.instanceName!
            }
            if self.regionId != nil {
                map["RegionId"] = self.regionId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Domain") {
                self.domain = dict["Domain"] as! [String]
            }
            if dict.keys.contains("InstanceId") {
                self.instanceId = dict["InstanceId"] as! String
            }
            if dict.keys.contains("InstanceName") {
                self.instanceName = dict["InstanceName"] as! String
            }
            if dict.keys.contains("RegionId") {
                self.regionId = dict["RegionId"] as! String
            }
        }
    }
    public class Container : Tea.TeaModel {
        public class LivenessProbe : Tea.TeaModel {
            public class Exec : Tea.TeaModel {
                public var command: [String]?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.command != nil {
                        map["Command"] = self.command!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("Command") {
                        self.command = dict["Command"] as! [String]
                    }
                }
            }
            public class HttpGet : Tea.TeaModel {
                public var path: String?

                public var port: Int32?

                public var scheme: String?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.path != nil {
                        map["Path"] = self.path!
                    }
                    if self.port != nil {
                        map["Port"] = self.port!
                    }
                    if self.scheme != nil {
                        map["Scheme"] = self.scheme!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("Path") {
                        self.path = dict["Path"] as! String
                    }
                    if dict.keys.contains("Port") {
                        self.port = dict["Port"] as! Int32
                    }
                    if dict.keys.contains("Scheme") {
                        self.scheme = dict["Scheme"] as! String
                    }
                }
            }
            public class TcpSocket : Tea.TeaModel {
                public var port: Int32?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.port != nil {
                        map["Port"] = self.port!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("Port") {
                        self.port = dict["Port"] as! Int32
                    }
                }
            }
            public var exec: UpdateContainerGroupRequest.Container.LivenessProbe.Exec?

            public var failureThreshold: Int32?

            public var httpGet: UpdateContainerGroupRequest.Container.LivenessProbe.HttpGet?

            public var initialDelaySeconds: Int32?

            public var periodSeconds: Int32?

            public var successThreshold: Int32?

            public var tcpSocket: UpdateContainerGroupRequest.Container.LivenessProbe.TcpSocket?

            public var timeoutSeconds: Int32?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
                try self.validateRequired(self.exec, "exec")
                try self.exec?.validate()
                try self.validateRequired(self.httpGet, "httpGet")
                try self.httpGet?.validate()
                try self.validateRequired(self.tcpSocket, "tcpSocket")
                try self.tcpSocket?.validate()
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.exec != nil {
                    map["Exec"] = self.exec?.toMap()
                }
                if self.failureThreshold != nil {
                    map["FailureThreshold"] = self.failureThreshold!
                }
                if self.httpGet != nil {
                    map["HttpGet"] = self.httpGet?.toMap()
                }
                if self.initialDelaySeconds != nil {
                    map["InitialDelaySeconds"] = self.initialDelaySeconds!
                }
                if self.periodSeconds != nil {
                    map["PeriodSeconds"] = self.periodSeconds!
                }
                if self.successThreshold != nil {
                    map["SuccessThreshold"] = self.successThreshold!
                }
                if self.tcpSocket != nil {
                    map["TcpSocket"] = self.tcpSocket?.toMap()
                }
                if self.timeoutSeconds != nil {
                    map["TimeoutSeconds"] = self.timeoutSeconds!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("Exec") {
                    var model = UpdateContainerGroupRequest.Container.LivenessProbe.Exec()
                    model.fromMap(dict["Exec"] as! [String: Any])
                    self.exec = model
                }
                if dict.keys.contains("FailureThreshold") {
                    self.failureThreshold = dict["FailureThreshold"] as! Int32
                }
                if dict.keys.contains("HttpGet") {
                    var model = UpdateContainerGroupRequest.Container.LivenessProbe.HttpGet()
                    model.fromMap(dict["HttpGet"] as! [String: Any])
                    self.httpGet = model
                }
                if dict.keys.contains("InitialDelaySeconds") {
                    self.initialDelaySeconds = dict["InitialDelaySeconds"] as! Int32
                }
                if dict.keys.contains("PeriodSeconds") {
                    self.periodSeconds = dict["PeriodSeconds"] as! Int32
                }
                if dict.keys.contains("SuccessThreshold") {
                    self.successThreshold = dict["SuccessThreshold"] as! Int32
                }
                if dict.keys.contains("TcpSocket") {
                    var model = UpdateContainerGroupRequest.Container.LivenessProbe.TcpSocket()
                    model.fromMap(dict["TcpSocket"] as! [String: Any])
                    self.tcpSocket = model
                }
                if dict.keys.contains("TimeoutSeconds") {
                    self.timeoutSeconds = dict["TimeoutSeconds"] as! Int32
                }
            }
        }
        public class ReadinessProbe : Tea.TeaModel {
            public class Exec : Tea.TeaModel {
                public var command: [String]?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.command != nil {
                        map["Command"] = self.command!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("Command") {
                        self.command = dict["Command"] as! [String]
                    }
                }
            }
            public class HttpGet : Tea.TeaModel {
                public var path: String?

                public var port: Int32?

                public var scheme: String?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.path != nil {
                        map["Path"] = self.path!
                    }
                    if self.port != nil {
                        map["Port"] = self.port!
                    }
                    if self.scheme != nil {
                        map["Scheme"] = self.scheme!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("Path") {
                        self.path = dict["Path"] as! String
                    }
                    if dict.keys.contains("Port") {
                        self.port = dict["Port"] as! Int32
                    }
                    if dict.keys.contains("Scheme") {
                        self.scheme = dict["Scheme"] as! String
                    }
                }
            }
            public class TcpSocket : Tea.TeaModel {
                public var port: Int32?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.port != nil {
                        map["Port"] = self.port!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("Port") {
                        self.port = dict["Port"] as! Int32
                    }
                }
            }
            public var exec: UpdateContainerGroupRequest.Container.ReadinessProbe.Exec?

            public var failureThreshold: Int32?

            public var httpGet: UpdateContainerGroupRequest.Container.ReadinessProbe.HttpGet?

            public var initialDelaySeconds: Int32?

            public var periodSeconds: Int32?

            public var successThreshold: Int32?

            public var tcpSocket: UpdateContainerGroupRequest.Container.ReadinessProbe.TcpSocket?

            public var timeoutSeconds: Int32?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
                try self.validateRequired(self.exec, "exec")
                try self.exec?.validate()
                try self.validateRequired(self.httpGet, "httpGet")
                try self.httpGet?.validate()
                try self.validateRequired(self.tcpSocket, "tcpSocket")
                try self.tcpSocket?.validate()
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.exec != nil {
                    map["Exec"] = self.exec?.toMap()
                }
                if self.failureThreshold != nil {
                    map["FailureThreshold"] = self.failureThreshold!
                }
                if self.httpGet != nil {
                    map["HttpGet"] = self.httpGet?.toMap()
                }
                if self.initialDelaySeconds != nil {
                    map["InitialDelaySeconds"] = self.initialDelaySeconds!
                }
                if self.periodSeconds != nil {
                    map["PeriodSeconds"] = self.periodSeconds!
                }
                if self.successThreshold != nil {
                    map["SuccessThreshold"] = self.successThreshold!
                }
                if self.tcpSocket != nil {
                    map["TcpSocket"] = self.tcpSocket?.toMap()
                }
                if self.timeoutSeconds != nil {
                    map["TimeoutSeconds"] = self.timeoutSeconds!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("Exec") {
                    var model = UpdateContainerGroupRequest.Container.ReadinessProbe.Exec()
                    model.fromMap(dict["Exec"] as! [String: Any])
                    self.exec = model
                }
                if dict.keys.contains("FailureThreshold") {
                    self.failureThreshold = dict["FailureThreshold"] as! Int32
                }
                if dict.keys.contains("HttpGet") {
                    var model = UpdateContainerGroupRequest.Container.ReadinessProbe.HttpGet()
                    model.fromMap(dict["HttpGet"] as! [String: Any])
                    self.httpGet = model
                }
                if dict.keys.contains("InitialDelaySeconds") {
                    self.initialDelaySeconds = dict["InitialDelaySeconds"] as! Int32
                }
                if dict.keys.contains("PeriodSeconds") {
                    self.periodSeconds = dict["PeriodSeconds"] as! Int32
                }
                if dict.keys.contains("SuccessThreshold") {
                    self.successThreshold = dict["SuccessThreshold"] as! Int32
                }
                if dict.keys.contains("TcpSocket") {
                    var model = UpdateContainerGroupRequest.Container.ReadinessProbe.TcpSocket()
                    model.fromMap(dict["TcpSocket"] as! [String: Any])
                    self.tcpSocket = model
                }
                if dict.keys.contains("TimeoutSeconds") {
                    self.timeoutSeconds = dict["TimeoutSeconds"] as! Int32
                }
            }
        }
        public class SecurityContext : Tea.TeaModel {
            public class Capability : Tea.TeaModel {
                public var add: [String]?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.add != nil {
                        map["Add"] = self.add!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("Add") {
                        self.add = dict["Add"] as! [String]
                    }
                }
            }
            public var capability: UpdateContainerGroupRequest.Container.SecurityContext.Capability?

            public var readOnlyRootFilesystem: Bool?

            public var runAsUser: Int64?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
                try self.validateRequired(self.capability, "capability")
                try self.capability?.validate()
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.capability != nil {
                    map["Capability"] = self.capability?.toMap()
                }
                if self.readOnlyRootFilesystem != nil {
                    map["ReadOnlyRootFilesystem"] = self.readOnlyRootFilesystem!
                }
                if self.runAsUser != nil {
                    map["RunAsUser"] = self.runAsUser!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("Capability") {
                    var model = UpdateContainerGroupRequest.Container.SecurityContext.Capability()
                    model.fromMap(dict["Capability"] as! [String: Any])
                    self.capability = model
                }
                if dict.keys.contains("ReadOnlyRootFilesystem") {
                    self.readOnlyRootFilesystem = dict["ReadOnlyRootFilesystem"] as! Bool
                }
                if dict.keys.contains("RunAsUser") {
                    self.runAsUser = dict["RunAsUser"] as! Int64
                }
            }
        }
        public class EnvironmentVar : Tea.TeaModel {
            public class FieldRef : Tea.TeaModel {
                public var fieldPath: String?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.fieldPath != nil {
                        map["FieldPath"] = self.fieldPath!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("FieldPath") {
                        self.fieldPath = dict["FieldPath"] as! String
                    }
                }
            }
            public var fieldRef: UpdateContainerGroupRequest.Container.EnvironmentVar.FieldRef?

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
                try self.validateRequired(self.fieldRef, "fieldRef")
                try self.fieldRef?.validate()
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.fieldRef != nil {
                    map["FieldRef"] = self.fieldRef?.toMap()
                }
                if self.key != nil {
                    map["Key"] = self.key!
                }
                if self.value != nil {
                    map["Value"] = self.value!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("FieldRef") {
                    var model = UpdateContainerGroupRequest.Container.EnvironmentVar.FieldRef()
                    model.fromMap(dict["FieldRef"] as! [String: Any])
                    self.fieldRef = model
                }
                if dict.keys.contains("Key") {
                    self.key = dict["Key"] as! String
                }
                if dict.keys.contains("Value") {
                    self.value = dict["Value"] as! String
                }
            }
        }
        public class LifecyclePostStartHandlerHttpGetHttpHeaders : Tea.TeaModel {
            public var name: String?

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
                if self.name != nil {
                    map["Name"] = self.name!
                }
                if self.value != nil {
                    map["Value"] = self.value!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("Name") {
                    self.name = dict["Name"] as! String
                }
                if dict.keys.contains("Value") {
                    self.value = dict["Value"] as! String
                }
            }
        }
        public class LifecyclePreStopHandlerHttpGetHttpHeader : Tea.TeaModel {
            public var name: String?

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
                if self.name != nil {
                    map["Name"] = self.name!
                }
                if self.value != nil {
                    map["Value"] = self.value!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("Name") {
                    self.name = dict["Name"] as! String
                }
                if dict.keys.contains("Value") {
                    self.value = dict["Value"] as! String
                }
            }
        }
        public class Port : Tea.TeaModel {
            public var port: Int32?

            public var protocol_: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.port != nil {
                    map["Port"] = self.port!
                }
                if self.protocol_ != nil {
                    map["Protocol"] = self.protocol_!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("Port") {
                    self.port = dict["Port"] as! Int32
                }
                if dict.keys.contains("Protocol") {
                    self.protocol_ = dict["Protocol"] as! String
                }
            }
        }
        public class VolumeMount : Tea.TeaModel {
            public var mountPath: String?

            public var mountPropagation: String?

            public var name: String?

            public var readOnly: Bool?

            public var subPath: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.mountPath != nil {
                    map["MountPath"] = self.mountPath!
                }
                if self.mountPropagation != nil {
                    map["MountPropagation"] = self.mountPropagation!
                }
                if self.name != nil {
                    map["Name"] = self.name!
                }
                if self.readOnly != nil {
                    map["ReadOnly"] = self.readOnly!
                }
                if self.subPath != nil {
                    map["SubPath"] = self.subPath!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("MountPath") {
                    self.mountPath = dict["MountPath"] as! String
                }
                if dict.keys.contains("MountPropagation") {
                    self.mountPropagation = dict["MountPropagation"] as! String
                }
                if dict.keys.contains("Name") {
                    self.name = dict["Name"] as! String
                }
                if dict.keys.contains("ReadOnly") {
                    self.readOnly = dict["ReadOnly"] as! Bool
                }
                if dict.keys.contains("SubPath") {
                    self.subPath = dict["SubPath"] as! String
                }
            }
        }
        public var livenessProbe: UpdateContainerGroupRequest.Container.LivenessProbe?

        public var readinessProbe: UpdateContainerGroupRequest.Container.ReadinessProbe?

        public var securityContext: UpdateContainerGroupRequest.Container.SecurityContext?

        public var arg: [String]?

        public var command: [String]?

        public var cpu: Double?

        public var environmentVar: [UpdateContainerGroupRequest.Container.EnvironmentVar]?

        public var gpu: Int32?

        public var image: String?

        public var imagePullPolicy: String?

        public var lifecyclePostStartHandlerExec: [String]?

        public var lifecyclePostStartHandlerHttpGetHost: String?

        public var lifecyclePostStartHandlerHttpGetHttpHeaders: [UpdateContainerGroupRequest.Container.LifecyclePostStartHandlerHttpGetHttpHeaders]?

        public var lifecyclePostStartHandlerHttpGetPath: String?

        public var lifecyclePostStartHandlerHttpGetPort: Int32?

        public var lifecyclePostStartHandlerHttpGetScheme: String?

        public var lifecyclePostStartHandlerTcpSocketHost: String?

        public var lifecyclePostStartHandlerTcpSocketPort: Int32?

        public var lifecyclePreStopHandlerExec: [String]?

        public var lifecyclePreStopHandlerHttpGetHost: String?

        public var lifecyclePreStopHandlerHttpGetHttpHeader: [UpdateContainerGroupRequest.Container.LifecyclePreStopHandlerHttpGetHttpHeader]?

        public var lifecyclePreStopHandlerHttpGetPath: String?

        public var lifecyclePreStopHandlerHttpGetPort: Int32?

        public var lifecyclePreStopHandlerHttpGetScheme: String?

        public var lifecyclePreStopHandlerTcpSocketHost: String?

        public var lifecyclePreStopHandlerTcpSocketPort: Int32?

        public var memory: Double?

        public var name: String?

        public var port: [UpdateContainerGroupRequest.Container.Port]?

        public var stdin: Bool?

        public var stdinOnce: Bool?

        public var tty: Bool?

        public var volumeMount: [UpdateContainerGroupRequest.Container.VolumeMount]?

        public var workingDir: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.validateRequired(self.livenessProbe, "livenessProbe")
            try self.livenessProbe?.validate()
            try self.validateRequired(self.readinessProbe, "readinessProbe")
            try self.readinessProbe?.validate()
            try self.validateRequired(self.securityContext, "securityContext")
            try self.securityContext?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.livenessProbe != nil {
                map["LivenessProbe"] = self.livenessProbe?.toMap()
            }
            if self.readinessProbe != nil {
                map["ReadinessProbe"] = self.readinessProbe?.toMap()
            }
            if self.securityContext != nil {
                map["SecurityContext"] = self.securityContext?.toMap()
            }
            if self.arg != nil {
                map["Arg"] = self.arg!
            }
            if self.command != nil {
                map["Command"] = self.command!
            }
            if self.cpu != nil {
                map["Cpu"] = self.cpu!
            }
            if self.environmentVar != nil {
                var tmp : [Any] = []
                for k in self.environmentVar! {
                    tmp.append(k.toMap())
                }
                map["EnvironmentVar"] = tmp
            }
            if self.gpu != nil {
                map["Gpu"] = self.gpu!
            }
            if self.image != nil {
                map["Image"] = self.image!
            }
            if self.imagePullPolicy != nil {
                map["ImagePullPolicy"] = self.imagePullPolicy!
            }
            if self.lifecyclePostStartHandlerExec != nil {
                map["LifecyclePostStartHandlerExec"] = self.lifecyclePostStartHandlerExec!
            }
            if self.lifecyclePostStartHandlerHttpGetHost != nil {
                map["LifecyclePostStartHandlerHttpGetHost"] = self.lifecyclePostStartHandlerHttpGetHost!
            }
            if self.lifecyclePostStartHandlerHttpGetHttpHeaders != nil {
                var tmp : [Any] = []
                for k in self.lifecyclePostStartHandlerHttpGetHttpHeaders! {
                    tmp.append(k.toMap())
                }
                map["LifecyclePostStartHandlerHttpGetHttpHeaders"] = tmp
            }
            if self.lifecyclePostStartHandlerHttpGetPath != nil {
                map["LifecyclePostStartHandlerHttpGetPath"] = self.lifecyclePostStartHandlerHttpGetPath!
            }
            if self.lifecyclePostStartHandlerHttpGetPort != nil {
                map["LifecyclePostStartHandlerHttpGetPort"] = self.lifecyclePostStartHandlerHttpGetPort!
            }
            if self.lifecyclePostStartHandlerHttpGetScheme != nil {
                map["LifecyclePostStartHandlerHttpGetScheme"] = self.lifecyclePostStartHandlerHttpGetScheme!
            }
            if self.lifecyclePostStartHandlerTcpSocketHost != nil {
                map["LifecyclePostStartHandlerTcpSocketHost"] = self.lifecyclePostStartHandlerTcpSocketHost!
            }
            if self.lifecyclePostStartHandlerTcpSocketPort != nil {
                map["LifecyclePostStartHandlerTcpSocketPort"] = self.lifecyclePostStartHandlerTcpSocketPort!
            }
            if self.lifecyclePreStopHandlerExec != nil {
                map["LifecyclePreStopHandlerExec"] = self.lifecyclePreStopHandlerExec!
            }
            if self.lifecyclePreStopHandlerHttpGetHost != nil {
                map["LifecyclePreStopHandlerHttpGetHost"] = self.lifecyclePreStopHandlerHttpGetHost!
            }
            if self.lifecyclePreStopHandlerHttpGetHttpHeader != nil {
                var tmp : [Any] = []
                for k in self.lifecyclePreStopHandlerHttpGetHttpHeader! {
                    tmp.append(k.toMap())
                }
                map["LifecyclePreStopHandlerHttpGetHttpHeader"] = tmp
            }
            if self.lifecyclePreStopHandlerHttpGetPath != nil {
                map["LifecyclePreStopHandlerHttpGetPath"] = self.lifecyclePreStopHandlerHttpGetPath!
            }
            if self.lifecyclePreStopHandlerHttpGetPort != nil {
                map["LifecyclePreStopHandlerHttpGetPort"] = self.lifecyclePreStopHandlerHttpGetPort!
            }
            if self.lifecyclePreStopHandlerHttpGetScheme != nil {
                map["LifecyclePreStopHandlerHttpGetScheme"] = self.lifecyclePreStopHandlerHttpGetScheme!
            }
            if self.lifecyclePreStopHandlerTcpSocketHost != nil {
                map["LifecyclePreStopHandlerTcpSocketHost"] = self.lifecyclePreStopHandlerTcpSocketHost!
            }
            if self.lifecyclePreStopHandlerTcpSocketPort != nil {
                map["LifecyclePreStopHandlerTcpSocketPort"] = self.lifecyclePreStopHandlerTcpSocketPort!
            }
            if self.memory != nil {
                map["Memory"] = self.memory!
            }
            if self.name != nil {
                map["Name"] = self.name!
            }
            if self.port != nil {
                var tmp : [Any] = []
                for k in self.port! {
                    tmp.append(k.toMap())
                }
                map["Port"] = tmp
            }
            if self.stdin != nil {
                map["Stdin"] = self.stdin!
            }
            if self.stdinOnce != nil {
                map["StdinOnce"] = self.stdinOnce!
            }
            if self.tty != nil {
                map["Tty"] = self.tty!
            }
            if self.volumeMount != nil {
                var tmp : [Any] = []
                for k in self.volumeMount! {
                    tmp.append(k.toMap())
                }
                map["VolumeMount"] = tmp
            }
            if self.workingDir != nil {
                map["WorkingDir"] = self.workingDir!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("LivenessProbe") {
                var model = UpdateContainerGroupRequest.Container.LivenessProbe()
                model.fromMap(dict["LivenessProbe"] as! [String: Any])
                self.livenessProbe = model
            }
            if dict.keys.contains("ReadinessProbe") {
                var model = UpdateContainerGroupRequest.Container.ReadinessProbe()
                model.fromMap(dict["ReadinessProbe"] as! [String: Any])
                self.readinessProbe = model
            }
            if dict.keys.contains("SecurityContext") {
                var model = UpdateContainerGroupRequest.Container.SecurityContext()
                model.fromMap(dict["SecurityContext"] as! [String: Any])
                self.securityContext = model
            }
            if dict.keys.contains("Arg") {
                self.arg = dict["Arg"] as! [String]
            }
            if dict.keys.contains("Command") {
                self.command = dict["Command"] as! [String]
            }
            if dict.keys.contains("Cpu") {
                self.cpu = dict["Cpu"] as! Double
            }
            if dict.keys.contains("EnvironmentVar") {
                self.environmentVar = dict["EnvironmentVar"] as! [UpdateContainerGroupRequest.Container.EnvironmentVar]
            }
            if dict.keys.contains("Gpu") {
                self.gpu = dict["Gpu"] as! Int32
            }
            if dict.keys.contains("Image") {
                self.image = dict["Image"] as! String
            }
            if dict.keys.contains("ImagePullPolicy") {
                self.imagePullPolicy = dict["ImagePullPolicy"] as! String
            }
            if dict.keys.contains("LifecyclePostStartHandlerExec") {
                self.lifecyclePostStartHandlerExec = dict["LifecyclePostStartHandlerExec"] as! [String]
            }
            if dict.keys.contains("LifecyclePostStartHandlerHttpGetHost") {
                self.lifecyclePostStartHandlerHttpGetHost = dict["LifecyclePostStartHandlerHttpGetHost"] as! String
            }
            if dict.keys.contains("LifecyclePostStartHandlerHttpGetHttpHeaders") {
                self.lifecyclePostStartHandlerHttpGetHttpHeaders = dict["LifecyclePostStartHandlerHttpGetHttpHeaders"] as! [UpdateContainerGroupRequest.Container.LifecyclePostStartHandlerHttpGetHttpHeaders]
            }
            if dict.keys.contains("LifecyclePostStartHandlerHttpGetPath") {
                self.lifecyclePostStartHandlerHttpGetPath = dict["LifecyclePostStartHandlerHttpGetPath"] as! String
            }
            if dict.keys.contains("LifecyclePostStartHandlerHttpGetPort") {
                self.lifecyclePostStartHandlerHttpGetPort = dict["LifecyclePostStartHandlerHttpGetPort"] as! Int32
            }
            if dict.keys.contains("LifecyclePostStartHandlerHttpGetScheme") {
                self.lifecyclePostStartHandlerHttpGetScheme = dict["LifecyclePostStartHandlerHttpGetScheme"] as! String
            }
            if dict.keys.contains("LifecyclePostStartHandlerTcpSocketHost") {
                self.lifecyclePostStartHandlerTcpSocketHost = dict["LifecyclePostStartHandlerTcpSocketHost"] as! String
            }
            if dict.keys.contains("LifecyclePostStartHandlerTcpSocketPort") {
                self.lifecyclePostStartHandlerTcpSocketPort = dict["LifecyclePostStartHandlerTcpSocketPort"] as! Int32
            }
            if dict.keys.contains("LifecyclePreStopHandlerExec") {
                self.lifecyclePreStopHandlerExec = dict["LifecyclePreStopHandlerExec"] as! [String]
            }
            if dict.keys.contains("LifecyclePreStopHandlerHttpGetHost") {
                self.lifecyclePreStopHandlerHttpGetHost = dict["LifecyclePreStopHandlerHttpGetHost"] as! String
            }
            if dict.keys.contains("LifecyclePreStopHandlerHttpGetHttpHeader") {
                self.lifecyclePreStopHandlerHttpGetHttpHeader = dict["LifecyclePreStopHandlerHttpGetHttpHeader"] as! [UpdateContainerGroupRequest.Container.LifecyclePreStopHandlerHttpGetHttpHeader]
            }
            if dict.keys.contains("LifecyclePreStopHandlerHttpGetPath") {
                self.lifecyclePreStopHandlerHttpGetPath = dict["LifecyclePreStopHandlerHttpGetPath"] as! String
            }
            if dict.keys.contains("LifecyclePreStopHandlerHttpGetPort") {
                self.lifecyclePreStopHandlerHttpGetPort = dict["LifecyclePreStopHandlerHttpGetPort"] as! Int32
            }
            if dict.keys.contains("LifecyclePreStopHandlerHttpGetScheme") {
                self.lifecyclePreStopHandlerHttpGetScheme = dict["LifecyclePreStopHandlerHttpGetScheme"] as! String
            }
            if dict.keys.contains("LifecyclePreStopHandlerTcpSocketHost") {
                self.lifecyclePreStopHandlerTcpSocketHost = dict["LifecyclePreStopHandlerTcpSocketHost"] as! String
            }
            if dict.keys.contains("LifecyclePreStopHandlerTcpSocketPort") {
                self.lifecyclePreStopHandlerTcpSocketPort = dict["LifecyclePreStopHandlerTcpSocketPort"] as! Int32
            }
            if dict.keys.contains("Memory") {
                self.memory = dict["Memory"] as! Double
            }
            if dict.keys.contains("Name") {
                self.name = dict["Name"] as! String
            }
            if dict.keys.contains("Port") {
                self.port = dict["Port"] as! [UpdateContainerGroupRequest.Container.Port]
            }
            if dict.keys.contains("Stdin") {
                self.stdin = dict["Stdin"] as! Bool
            }
            if dict.keys.contains("StdinOnce") {
                self.stdinOnce = dict["StdinOnce"] as! Bool
            }
            if dict.keys.contains("Tty") {
                self.tty = dict["Tty"] as! Bool
            }
            if dict.keys.contains("VolumeMount") {
                self.volumeMount = dict["VolumeMount"] as! [UpdateContainerGroupRequest.Container.VolumeMount]
            }
            if dict.keys.contains("WorkingDir") {
                self.workingDir = dict["WorkingDir"] as! String
            }
        }
    }
    public class ImageRegistryCredential : Tea.TeaModel {
        public var password: String?

        public var server: String?

        public var userName: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.password != nil {
                map["Password"] = self.password!
            }
            if self.server != nil {
                map["Server"] = self.server!
            }
            if self.userName != nil {
                map["UserName"] = self.userName!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Password") {
                self.password = dict["Password"] as! String
            }
            if dict.keys.contains("Server") {
                self.server = dict["Server"] as! String
            }
            if dict.keys.contains("UserName") {
                self.userName = dict["UserName"] as! String
            }
        }
    }
    public class InitContainer : Tea.TeaModel {
        public class SecurityContext : Tea.TeaModel {
            public class Capability : Tea.TeaModel {
                public var add: [String]?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.add != nil {
                        map["Add"] = self.add!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("Add") {
                        self.add = dict["Add"] as! [String]
                    }
                }
            }
            public var capability: UpdateContainerGroupRequest.InitContainer.SecurityContext.Capability?

            public var readOnlyRootFilesystem: Bool?

            public var runAsUser: Int64?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
                try self.validateRequired(self.capability, "capability")
                try self.capability?.validate()
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.capability != nil {
                    map["Capability"] = self.capability?.toMap()
                }
                if self.readOnlyRootFilesystem != nil {
                    map["ReadOnlyRootFilesystem"] = self.readOnlyRootFilesystem!
                }
                if self.runAsUser != nil {
                    map["RunAsUser"] = self.runAsUser!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("Capability") {
                    var model = UpdateContainerGroupRequest.InitContainer.SecurityContext.Capability()
                    model.fromMap(dict["Capability"] as! [String: Any])
                    self.capability = model
                }
                if dict.keys.contains("ReadOnlyRootFilesystem") {
                    self.readOnlyRootFilesystem = dict["ReadOnlyRootFilesystem"] as! Bool
                }
                if dict.keys.contains("RunAsUser") {
                    self.runAsUser = dict["RunAsUser"] as! Int64
                }
            }
        }
        public class EnvironmentVar : Tea.TeaModel {
            public class FieldRef : Tea.TeaModel {
                public var fieldPath: String?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.fieldPath != nil {
                        map["FieldPath"] = self.fieldPath!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("FieldPath") {
                        self.fieldPath = dict["FieldPath"] as! String
                    }
                }
            }
            public var fieldRef: UpdateContainerGroupRequest.InitContainer.EnvironmentVar.FieldRef?

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
                try self.validateRequired(self.fieldRef, "fieldRef")
                try self.fieldRef?.validate()
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.fieldRef != nil {
                    map["FieldRef"] = self.fieldRef?.toMap()
                }
                if self.key != nil {
                    map["Key"] = self.key!
                }
                if self.value != nil {
                    map["Value"] = self.value!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("FieldRef") {
                    var model = UpdateContainerGroupRequest.InitContainer.EnvironmentVar.FieldRef()
                    model.fromMap(dict["FieldRef"] as! [String: Any])
                    self.fieldRef = model
                }
                if dict.keys.contains("Key") {
                    self.key = dict["Key"] as! String
                }
                if dict.keys.contains("Value") {
                    self.value = dict["Value"] as! String
                }
            }
        }
        public class Port : Tea.TeaModel {
            public var port: Int32?

            public var protocol_: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.port != nil {
                    map["Port"] = self.port!
                }
                if self.protocol_ != nil {
                    map["Protocol"] = self.protocol_!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("Port") {
                    self.port = dict["Port"] as! Int32
                }
                if dict.keys.contains("Protocol") {
                    self.protocol_ = dict["Protocol"] as! String
                }
            }
        }
        public class VolumeMount : Tea.TeaModel {
            public var mountPath: String?

            public var mountPropagation: String?

            public var name: String?

            public var readOnly: Bool?

            public var subPath: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.mountPath != nil {
                    map["MountPath"] = self.mountPath!
                }
                if self.mountPropagation != nil {
                    map["MountPropagation"] = self.mountPropagation!
                }
                if self.name != nil {
                    map["Name"] = self.name!
                }
                if self.readOnly != nil {
                    map["ReadOnly"] = self.readOnly!
                }
                if self.subPath != nil {
                    map["SubPath"] = self.subPath!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("MountPath") {
                    self.mountPath = dict["MountPath"] as! String
                }
                if dict.keys.contains("MountPropagation") {
                    self.mountPropagation = dict["MountPropagation"] as! String
                }
                if dict.keys.contains("Name") {
                    self.name = dict["Name"] as! String
                }
                if dict.keys.contains("ReadOnly") {
                    self.readOnly = dict["ReadOnly"] as! Bool
                }
                if dict.keys.contains("SubPath") {
                    self.subPath = dict["SubPath"] as! String
                }
            }
        }
        public var securityContext: UpdateContainerGroupRequest.InitContainer.SecurityContext?

        public var arg: [String]?

        public var command: [String]?

        public var cpu: Double?

        public var environmentVar: [UpdateContainerGroupRequest.InitContainer.EnvironmentVar]?

        public var gpu: Int32?

        public var image: String?

        public var imagePullPolicy: String?

        public var memory: Double?

        public var name: String?

        public var port: [UpdateContainerGroupRequest.InitContainer.Port]?

        public var stdin: Bool?

        public var stdinOnce: Bool?

        public var tty: Bool?

        public var volumeMount: [UpdateContainerGroupRequest.InitContainer.VolumeMount]?

        public var workingDir: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.validateRequired(self.securityContext, "securityContext")
            try self.securityContext?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.securityContext != nil {
                map["SecurityContext"] = self.securityContext?.toMap()
            }
            if self.arg != nil {
                map["Arg"] = self.arg!
            }
            if self.command != nil {
                map["Command"] = self.command!
            }
            if self.cpu != nil {
                map["Cpu"] = self.cpu!
            }
            if self.environmentVar != nil {
                var tmp : [Any] = []
                for k in self.environmentVar! {
                    tmp.append(k.toMap())
                }
                map["EnvironmentVar"] = tmp
            }
            if self.gpu != nil {
                map["Gpu"] = self.gpu!
            }
            if self.image != nil {
                map["Image"] = self.image!
            }
            if self.imagePullPolicy != nil {
                map["ImagePullPolicy"] = self.imagePullPolicy!
            }
            if self.memory != nil {
                map["Memory"] = self.memory!
            }
            if self.name != nil {
                map["Name"] = self.name!
            }
            if self.port != nil {
                var tmp : [Any] = []
                for k in self.port! {
                    tmp.append(k.toMap())
                }
                map["Port"] = tmp
            }
            if self.stdin != nil {
                map["Stdin"] = self.stdin!
            }
            if self.stdinOnce != nil {
                map["StdinOnce"] = self.stdinOnce!
            }
            if self.tty != nil {
                map["Tty"] = self.tty!
            }
            if self.volumeMount != nil {
                var tmp : [Any] = []
                for k in self.volumeMount! {
                    tmp.append(k.toMap())
                }
                map["VolumeMount"] = tmp
            }
            if self.workingDir != nil {
                map["WorkingDir"] = self.workingDir!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("SecurityContext") {
                var model = UpdateContainerGroupRequest.InitContainer.SecurityContext()
                model.fromMap(dict["SecurityContext"] as! [String: Any])
                self.securityContext = model
            }
            if dict.keys.contains("Arg") {
                self.arg = dict["Arg"] as! [String]
            }
            if dict.keys.contains("Command") {
                self.command = dict["Command"] as! [String]
            }
            if dict.keys.contains("Cpu") {
                self.cpu = dict["Cpu"] as! Double
            }
            if dict.keys.contains("EnvironmentVar") {
                self.environmentVar = dict["EnvironmentVar"] as! [UpdateContainerGroupRequest.InitContainer.EnvironmentVar]
            }
            if dict.keys.contains("Gpu") {
                self.gpu = dict["Gpu"] as! Int32
            }
            if dict.keys.contains("Image") {
                self.image = dict["Image"] as! String
            }
            if dict.keys.contains("ImagePullPolicy") {
                self.imagePullPolicy = dict["ImagePullPolicy"] as! String
            }
            if dict.keys.contains("Memory") {
                self.memory = dict["Memory"] as! Double
            }
            if dict.keys.contains("Name") {
                self.name = dict["Name"] as! String
            }
            if dict.keys.contains("Port") {
                self.port = dict["Port"] as! [UpdateContainerGroupRequest.InitContainer.Port]
            }
            if dict.keys.contains("Stdin") {
                self.stdin = dict["Stdin"] as! Bool
            }
            if dict.keys.contains("StdinOnce") {
                self.stdinOnce = dict["StdinOnce"] as! Bool
            }
            if dict.keys.contains("Tty") {
                self.tty = dict["Tty"] as! Bool
            }
            if dict.keys.contains("VolumeMount") {
                self.volumeMount = dict["VolumeMount"] as! [UpdateContainerGroupRequest.InitContainer.VolumeMount]
            }
            if dict.keys.contains("WorkingDir") {
                self.workingDir = dict["WorkingDir"] as! String
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Key") {
                self.key = dict["Key"] as! String
            }
            if dict.keys.contains("Value") {
                self.value = dict["Value"] as! String
            }
        }
    }
    public class Volume : Tea.TeaModel {
        public class ConfigFileVolume : Tea.TeaModel {
            public class ConfigFileToPath : Tea.TeaModel {
                public var content: String?

                public var path: String?

                public override init() {
                    super.init()
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
                    if self.path != nil {
                        map["Path"] = self.path!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("Content") {
                        self.content = dict["Content"] as! String
                    }
                    if dict.keys.contains("Path") {
                        self.path = dict["Path"] as! String
                    }
                }
            }
            public var configFileToPath: [UpdateContainerGroupRequest.Volume.ConfigFileVolume.ConfigFileToPath]?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.configFileToPath != nil {
                    var tmp : [Any] = []
                    for k in self.configFileToPath! {
                        tmp.append(k.toMap())
                    }
                    map["ConfigFileToPath"] = tmp
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("ConfigFileToPath") {
                    self.configFileToPath = dict["ConfigFileToPath"] as! [UpdateContainerGroupRequest.Volume.ConfigFileVolume.ConfigFileToPath]
                }
            }
        }
        public class EmptyDirVolume : Tea.TeaModel {
            public var medium: String?

            public var sizeLimit: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.medium != nil {
                    map["Medium"] = self.medium!
                }
                if self.sizeLimit != nil {
                    map["SizeLimit"] = self.sizeLimit!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("Medium") {
                    self.medium = dict["Medium"] as! String
                }
                if dict.keys.contains("SizeLimit") {
                    self.sizeLimit = dict["SizeLimit"] as! String
                }
            }
        }
        public class FlexVolume : Tea.TeaModel {
            public var driver: String?

            public var fsType: String?

            public var options: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.driver != nil {
                    map["Driver"] = self.driver!
                }
                if self.fsType != nil {
                    map["FsType"] = self.fsType!
                }
                if self.options != nil {
                    map["Options"] = self.options!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("Driver") {
                    self.driver = dict["Driver"] as! String
                }
                if dict.keys.contains("FsType") {
                    self.fsType = dict["FsType"] as! String
                }
                if dict.keys.contains("Options") {
                    self.options = dict["Options"] as! String
                }
            }
        }
        public class HostPathVolume : Tea.TeaModel {
            public var path: String?

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
                if self.path != nil {
                    map["Path"] = self.path!
                }
                if self.type != nil {
                    map["Type"] = self.type!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("Path") {
                    self.path = dict["Path"] as! String
                }
                if dict.keys.contains("Type") {
                    self.type = dict["Type"] as! String
                }
            }
        }
        public class NFSVolume : Tea.TeaModel {
            public var path: String?

            public var readOnly: Bool?

            public var server: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.path != nil {
                    map["Path"] = self.path!
                }
                if self.readOnly != nil {
                    map["ReadOnly"] = self.readOnly!
                }
                if self.server != nil {
                    map["Server"] = self.server!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("Path") {
                    self.path = dict["Path"] as! String
                }
                if dict.keys.contains("ReadOnly") {
                    self.readOnly = dict["ReadOnly"] as! Bool
                }
                if dict.keys.contains("Server") {
                    self.server = dict["Server"] as! String
                }
            }
        }
        public var configFileVolume: UpdateContainerGroupRequest.Volume.ConfigFileVolume?

        public var emptyDirVolume: UpdateContainerGroupRequest.Volume.EmptyDirVolume?

        public var flexVolume: UpdateContainerGroupRequest.Volume.FlexVolume?

        public var hostPathVolume: UpdateContainerGroupRequest.Volume.HostPathVolume?

        public var NFSVolume: UpdateContainerGroupRequest.Volume.NFSVolume?

        public var name: String?

        public var type: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.validateRequired(self.configFileVolume, "configFileVolume")
            try self.configFileVolume?.validate()
            try self.validateRequired(self.emptyDirVolume, "emptyDirVolume")
            try self.emptyDirVolume?.validate()
            try self.validateRequired(self.flexVolume, "flexVolume")
            try self.flexVolume?.validate()
            try self.validateRequired(self.hostPathVolume, "hostPathVolume")
            try self.hostPathVolume?.validate()
            try self.validateRequired(self.NFSVolume, "NFSVolume")
            try self.NFSVolume?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.configFileVolume != nil {
                map["ConfigFileVolume"] = self.configFileVolume?.toMap()
            }
            if self.emptyDirVolume != nil {
                map["EmptyDirVolume"] = self.emptyDirVolume?.toMap()
            }
            if self.flexVolume != nil {
                map["FlexVolume"] = self.flexVolume?.toMap()
            }
            if self.hostPathVolume != nil {
                map["HostPathVolume"] = self.hostPathVolume?.toMap()
            }
            if self.NFSVolume != nil {
                map["NFSVolume"] = self.NFSVolume?.toMap()
            }
            if self.name != nil {
                map["Name"] = self.name!
            }
            if self.type != nil {
                map["Type"] = self.type!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("ConfigFileVolume") {
                var model = UpdateContainerGroupRequest.Volume.ConfigFileVolume()
                model.fromMap(dict["ConfigFileVolume"] as! [String: Any])
                self.configFileVolume = model
            }
            if dict.keys.contains("EmptyDirVolume") {
                var model = UpdateContainerGroupRequest.Volume.EmptyDirVolume()
                model.fromMap(dict["EmptyDirVolume"] as! [String: Any])
                self.emptyDirVolume = model
            }
            if dict.keys.contains("FlexVolume") {
                var model = UpdateContainerGroupRequest.Volume.FlexVolume()
                model.fromMap(dict["FlexVolume"] as! [String: Any])
                self.flexVolume = model
            }
            if dict.keys.contains("HostPathVolume") {
                var model = UpdateContainerGroupRequest.Volume.HostPathVolume()
                model.fromMap(dict["HostPathVolume"] as! [String: Any])
                self.hostPathVolume = model
            }
            if dict.keys.contains("NFSVolume") {
                var model = UpdateContainerGroupRequest.Volume.NFSVolume()
                model.fromMap(dict["NFSVolume"] as! [String: Any])
                self.NFSVolume = model
            }
            if dict.keys.contains("Name") {
                self.name = dict["Name"] as! String
            }
            if dict.keys.contains("Type") {
                self.type = dict["Type"] as! String
            }
        }
    }
    public var dnsConfig: UpdateContainerGroupRequest.DnsConfig?

    public var acrRegistryInfo: [UpdateContainerGroupRequest.AcrRegistryInfo]?

    public var clientToken: String?

    public var container: [UpdateContainerGroupRequest.Container]?

    public var containerGroupId: String?

    public var cpu: Double?

    public var imageRegistryCredential: [UpdateContainerGroupRequest.ImageRegistryCredential]?

    public var initContainer: [UpdateContainerGroupRequest.InitContainer]?

    public var memory: Double?

    public var ownerAccount: String?

    public var ownerId: Int64?

    public var regionId: String?

    public var resourceGroupId: String?

    public var resourceOwnerAccount: String?

    public var resourceOwnerId: Int64?

    public var restartPolicy: String?

    public var tag: [UpdateContainerGroupRequest.Tag]?

    public var updateType: String?

    public var volume: [UpdateContainerGroupRequest.Volume]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.dnsConfig?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.dnsConfig != nil {
            map["DnsConfig"] = self.dnsConfig?.toMap()
        }
        if self.acrRegistryInfo != nil {
            var tmp : [Any] = []
            for k in self.acrRegistryInfo! {
                tmp.append(k.toMap())
            }
            map["AcrRegistryInfo"] = tmp
        }
        if self.clientToken != nil {
            map["ClientToken"] = self.clientToken!
        }
        if self.container != nil {
            var tmp : [Any] = []
            for k in self.container! {
                tmp.append(k.toMap())
            }
            map["Container"] = tmp
        }
        if self.containerGroupId != nil {
            map["ContainerGroupId"] = self.containerGroupId!
        }
        if self.cpu != nil {
            map["Cpu"] = self.cpu!
        }
        if self.imageRegistryCredential != nil {
            var tmp : [Any] = []
            for k in self.imageRegistryCredential! {
                tmp.append(k.toMap())
            }
            map["ImageRegistryCredential"] = tmp
        }
        if self.initContainer != nil {
            var tmp : [Any] = []
            for k in self.initContainer! {
                tmp.append(k.toMap())
            }
            map["InitContainer"] = tmp
        }
        if self.memory != nil {
            map["Memory"] = self.memory!
        }
        if self.ownerAccount != nil {
            map["OwnerAccount"] = self.ownerAccount!
        }
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.resourceGroupId != nil {
            map["ResourceGroupId"] = self.resourceGroupId!
        }
        if self.resourceOwnerAccount != nil {
            map["ResourceOwnerAccount"] = self.resourceOwnerAccount!
        }
        if self.resourceOwnerId != nil {
            map["ResourceOwnerId"] = self.resourceOwnerId!
        }
        if self.restartPolicy != nil {
            map["RestartPolicy"] = self.restartPolicy!
        }
        if self.tag != nil {
            var tmp : [Any] = []
            for k in self.tag! {
                tmp.append(k.toMap())
            }
            map["Tag"] = tmp
        }
        if self.updateType != nil {
            map["UpdateType"] = self.updateType!
        }
        if self.volume != nil {
            var tmp : [Any] = []
            for k in self.volume! {
                tmp.append(k.toMap())
            }
            map["Volume"] = tmp
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DnsConfig") {
            var model = UpdateContainerGroupRequest.DnsConfig()
            model.fromMap(dict["DnsConfig"] as! [String: Any])
            self.dnsConfig = model
        }
        if dict.keys.contains("AcrRegistryInfo") {
            self.acrRegistryInfo = dict["AcrRegistryInfo"] as! [UpdateContainerGroupRequest.AcrRegistryInfo]
        }
        if dict.keys.contains("ClientToken") {
            self.clientToken = dict["ClientToken"] as! String
        }
        if dict.keys.contains("Container") {
            self.container = dict["Container"] as! [UpdateContainerGroupRequest.Container]
        }
        if dict.keys.contains("ContainerGroupId") {
            self.containerGroupId = dict["ContainerGroupId"] as! String
        }
        if dict.keys.contains("Cpu") {
            self.cpu = dict["Cpu"] as! Double
        }
        if dict.keys.contains("ImageRegistryCredential") {
            self.imageRegistryCredential = dict["ImageRegistryCredential"] as! [UpdateContainerGroupRequest.ImageRegistryCredential]
        }
        if dict.keys.contains("InitContainer") {
            self.initContainer = dict["InitContainer"] as! [UpdateContainerGroupRequest.InitContainer]
        }
        if dict.keys.contains("Memory") {
            self.memory = dict["Memory"] as! Double
        }
        if dict.keys.contains("OwnerAccount") {
            self.ownerAccount = dict["OwnerAccount"] as! String
        }
        if dict.keys.contains("OwnerId") {
            self.ownerId = dict["OwnerId"] as! Int64
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("ResourceGroupId") {
            self.resourceGroupId = dict["ResourceGroupId"] as! String
        }
        if dict.keys.contains("ResourceOwnerAccount") {
            self.resourceOwnerAccount = dict["ResourceOwnerAccount"] as! String
        }
        if dict.keys.contains("ResourceOwnerId") {
            self.resourceOwnerId = dict["ResourceOwnerId"] as! Int64
        }
        if dict.keys.contains("RestartPolicy") {
            self.restartPolicy = dict["RestartPolicy"] as! String
        }
        if dict.keys.contains("Tag") {
            self.tag = dict["Tag"] as! [UpdateContainerGroupRequest.Tag]
        }
        if dict.keys.contains("UpdateType") {
            self.updateType = dict["UpdateType"] as! String
        }
        if dict.keys.contains("Volume") {
            self.volume = dict["Volume"] as! [UpdateContainerGroupRequest.Volume]
        }
    }
}

public class UpdateContainerGroupResponseBody : Tea.TeaModel {
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

public class UpdateContainerGroupResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpdateContainerGroupResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = UpdateContainerGroupResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class UpdateImageCacheRequest : Tea.TeaModel {
    public class AcrRegistryInfo : Tea.TeaModel {
        public var domain: [String]?

        public var instanceId: String?

        public var instanceName: String?

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
            if self.domain != nil {
                map["Domain"] = self.domain!
            }
            if self.instanceId != nil {
                map["InstanceId"] = self.instanceId!
            }
            if self.instanceName != nil {
                map["InstanceName"] = self.instanceName!
            }
            if self.regionId != nil {
                map["RegionId"] = self.regionId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Domain") {
                self.domain = dict["Domain"] as! [String]
            }
            if dict.keys.contains("InstanceId") {
                self.instanceId = dict["InstanceId"] as! String
            }
            if dict.keys.contains("InstanceName") {
                self.instanceName = dict["InstanceName"] as! String
            }
            if dict.keys.contains("RegionId") {
                self.regionId = dict["RegionId"] as! String
            }
        }
    }
    public class ImageRegistryCredential : Tea.TeaModel {
        public var password: String?

        public var server: String?

        public var userName: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.password != nil {
                map["Password"] = self.password!
            }
            if self.server != nil {
                map["Server"] = self.server!
            }
            if self.userName != nil {
                map["UserName"] = self.userName!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Password") {
                self.password = dict["Password"] as! String
            }
            if dict.keys.contains("Server") {
                self.server = dict["Server"] as! String
            }
            if dict.keys.contains("UserName") {
                self.userName = dict["UserName"] as! String
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Key") {
                self.key = dict["Key"] as! String
            }
            if dict.keys.contains("Value") {
                self.value = dict["Value"] as! String
            }
        }
    }
    public var acrRegistryInfo: [UpdateImageCacheRequest.AcrRegistryInfo]?

    public var autoMatchImageCache: Bool?

    public var clientToken: String?

    public var eipInstanceId: String?

    public var eliminationStrategy: String?

    public var flash: Bool?

    public var flashCopyCount: Int32?

    public var image: [String]?

    public var imageCacheId: String?

    public var imageCacheName: String?

    public var imageCacheSize: Int32?

    public var imageRegistryCredential: [UpdateImageCacheRequest.ImageRegistryCredential]?

    public var ownerAccount: String?

    public var ownerId: Int64?

    public var regionId: String?

    public var resourceGroupId: String?

    public var resourceOwnerAccount: String?

    public var resourceOwnerId: Int64?

    public var retentionDays: Int32?

    public var securityGroupId: String?

    public var standardCopyCount: Int32?

    public var tag: [UpdateImageCacheRequest.Tag]?

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
        if self.acrRegistryInfo != nil {
            var tmp : [Any] = []
            for k in self.acrRegistryInfo! {
                tmp.append(k.toMap())
            }
            map["AcrRegistryInfo"] = tmp
        }
        if self.autoMatchImageCache != nil {
            map["AutoMatchImageCache"] = self.autoMatchImageCache!
        }
        if self.clientToken != nil {
            map["ClientToken"] = self.clientToken!
        }
        if self.eipInstanceId != nil {
            map["EipInstanceId"] = self.eipInstanceId!
        }
        if self.eliminationStrategy != nil {
            map["EliminationStrategy"] = self.eliminationStrategy!
        }
        if self.flash != nil {
            map["Flash"] = self.flash!
        }
        if self.flashCopyCount != nil {
            map["FlashCopyCount"] = self.flashCopyCount!
        }
        if self.image != nil {
            map["Image"] = self.image!
        }
        if self.imageCacheId != nil {
            map["ImageCacheId"] = self.imageCacheId!
        }
        if self.imageCacheName != nil {
            map["ImageCacheName"] = self.imageCacheName!
        }
        if self.imageCacheSize != nil {
            map["ImageCacheSize"] = self.imageCacheSize!
        }
        if self.imageRegistryCredential != nil {
            var tmp : [Any] = []
            for k in self.imageRegistryCredential! {
                tmp.append(k.toMap())
            }
            map["ImageRegistryCredential"] = tmp
        }
        if self.ownerAccount != nil {
            map["OwnerAccount"] = self.ownerAccount!
        }
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.resourceGroupId != nil {
            map["ResourceGroupId"] = self.resourceGroupId!
        }
        if self.resourceOwnerAccount != nil {
            map["ResourceOwnerAccount"] = self.resourceOwnerAccount!
        }
        if self.resourceOwnerId != nil {
            map["ResourceOwnerId"] = self.resourceOwnerId!
        }
        if self.retentionDays != nil {
            map["RetentionDays"] = self.retentionDays!
        }
        if self.securityGroupId != nil {
            map["SecurityGroupId"] = self.securityGroupId!
        }
        if self.standardCopyCount != nil {
            map["StandardCopyCount"] = self.standardCopyCount!
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AcrRegistryInfo") {
            self.acrRegistryInfo = dict["AcrRegistryInfo"] as! [UpdateImageCacheRequest.AcrRegistryInfo]
        }
        if dict.keys.contains("AutoMatchImageCache") {
            self.autoMatchImageCache = dict["AutoMatchImageCache"] as! Bool
        }
        if dict.keys.contains("ClientToken") {
            self.clientToken = dict["ClientToken"] as! String
        }
        if dict.keys.contains("EipInstanceId") {
            self.eipInstanceId = dict["EipInstanceId"] as! String
        }
        if dict.keys.contains("EliminationStrategy") {
            self.eliminationStrategy = dict["EliminationStrategy"] as! String
        }
        if dict.keys.contains("Flash") {
            self.flash = dict["Flash"] as! Bool
        }
        if dict.keys.contains("FlashCopyCount") {
            self.flashCopyCount = dict["FlashCopyCount"] as! Int32
        }
        if dict.keys.contains("Image") {
            self.image = dict["Image"] as! [String]
        }
        if dict.keys.contains("ImageCacheId") {
            self.imageCacheId = dict["ImageCacheId"] as! String
        }
        if dict.keys.contains("ImageCacheName") {
            self.imageCacheName = dict["ImageCacheName"] as! String
        }
        if dict.keys.contains("ImageCacheSize") {
            self.imageCacheSize = dict["ImageCacheSize"] as! Int32
        }
        if dict.keys.contains("ImageRegistryCredential") {
            self.imageRegistryCredential = dict["ImageRegistryCredential"] as! [UpdateImageCacheRequest.ImageRegistryCredential]
        }
        if dict.keys.contains("OwnerAccount") {
            self.ownerAccount = dict["OwnerAccount"] as! String
        }
        if dict.keys.contains("OwnerId") {
            self.ownerId = dict["OwnerId"] as! Int64
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("ResourceGroupId") {
            self.resourceGroupId = dict["ResourceGroupId"] as! String
        }
        if dict.keys.contains("ResourceOwnerAccount") {
            self.resourceOwnerAccount = dict["ResourceOwnerAccount"] as! String
        }
        if dict.keys.contains("ResourceOwnerId") {
            self.resourceOwnerId = dict["ResourceOwnerId"] as! Int64
        }
        if dict.keys.contains("RetentionDays") {
            self.retentionDays = dict["RetentionDays"] as! Int32
        }
        if dict.keys.contains("SecurityGroupId") {
            self.securityGroupId = dict["SecurityGroupId"] as! String
        }
        if dict.keys.contains("StandardCopyCount") {
            self.standardCopyCount = dict["StandardCopyCount"] as! Int32
        }
        if dict.keys.contains("Tag") {
            self.tag = dict["Tag"] as! [UpdateImageCacheRequest.Tag]
        }
        if dict.keys.contains("VSwitchId") {
            self.vSwitchId = dict["VSwitchId"] as! String
        }
    }
}

public class UpdateImageCacheResponseBody : Tea.TeaModel {
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

public class UpdateImageCacheResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpdateImageCacheResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = UpdateImageCacheResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class UpdateVirtualNodeRequest : Tea.TeaModel {
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Key") {
                self.key = dict["Key"] as! String
            }
            if dict.keys.contains("Value") {
                self.value = dict["Value"] as! String
            }
        }
    }
    public var clientToken: String?

    public var ownerAccount: String?

    public var ownerId: Int64?

    public var regionId: String?

    public var resourceGroupId: String?

    public var resourceOwnerAccount: String?

    public var resourceOwnerId: Int64?

    public var securityGroupId: String?

    public var tag: [UpdateVirtualNodeRequest.Tag]?

    public var vSwitchId: String?

    public var virtualNodeId: String?

    public var virtualNodeName: String?

    public override init() {
        super.init()
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
        if self.ownerAccount != nil {
            map["OwnerAccount"] = self.ownerAccount!
        }
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.resourceGroupId != nil {
            map["ResourceGroupId"] = self.resourceGroupId!
        }
        if self.resourceOwnerAccount != nil {
            map["ResourceOwnerAccount"] = self.resourceOwnerAccount!
        }
        if self.resourceOwnerId != nil {
            map["ResourceOwnerId"] = self.resourceOwnerId!
        }
        if self.securityGroupId != nil {
            map["SecurityGroupId"] = self.securityGroupId!
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
        if self.virtualNodeId != nil {
            map["VirtualNodeId"] = self.virtualNodeId!
        }
        if self.virtualNodeName != nil {
            map["VirtualNodeName"] = self.virtualNodeName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ClientToken") {
            self.clientToken = dict["ClientToken"] as! String
        }
        if dict.keys.contains("OwnerAccount") {
            self.ownerAccount = dict["OwnerAccount"] as! String
        }
        if dict.keys.contains("OwnerId") {
            self.ownerId = dict["OwnerId"] as! Int64
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("ResourceGroupId") {
            self.resourceGroupId = dict["ResourceGroupId"] as! String
        }
        if dict.keys.contains("ResourceOwnerAccount") {
            self.resourceOwnerAccount = dict["ResourceOwnerAccount"] as! String
        }
        if dict.keys.contains("ResourceOwnerId") {
            self.resourceOwnerId = dict["ResourceOwnerId"] as! Int64
        }
        if dict.keys.contains("SecurityGroupId") {
            self.securityGroupId = dict["SecurityGroupId"] as! String
        }
        if dict.keys.contains("Tag") {
            self.tag = dict["Tag"] as! [UpdateVirtualNodeRequest.Tag]
        }
        if dict.keys.contains("VSwitchId") {
            self.vSwitchId = dict["VSwitchId"] as! String
        }
        if dict.keys.contains("VirtualNodeId") {
            self.virtualNodeId = dict["VirtualNodeId"] as! String
        }
        if dict.keys.contains("VirtualNodeName") {
            self.virtualNodeName = dict["VirtualNodeName"] as! String
        }
    }
}

public class UpdateVirtualNodeResponseBody : Tea.TeaModel {
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

public class UpdateVirtualNodeResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpdateVirtualNodeResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = UpdateVirtualNodeResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}
