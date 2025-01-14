import Foundation
import Tea
import TeaUtils
import AlibabacloudOpenApi
import AlibabaCloudOpenApiUtil
import AlibabacloudEndpointUtil

public class AuthReportInterval : Tea.TeaModel {
    public var timeUnit: String?

    public var value: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.timeUnit != nil {
            map["TimeUnit"] = self.timeUnit!
        }
        if self.value != nil {
            map["Value"] = self.value!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("TimeUnit") {
            self.timeUnit = dict["TimeUnit"] as! String
        }
        if dict.keys.contains("Value") {
            self.value = dict["Value"] as! Int64
        }
    }
}

public class DisposalContent : Tea.TeaModel {
    public var alertContent: String?

    public var alertTitle: String?

    public var notifyActions: [String]?

    public var prohibitActions: [String]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.alertContent != nil {
            map["AlertContent"] = self.alertContent!
        }
        if self.alertTitle != nil {
            map["AlertTitle"] = self.alertTitle!
        }
        if self.notifyActions != nil {
            map["NotifyActions"] = self.notifyActions!
        }
        if self.prohibitActions != nil {
            map["ProhibitActions"] = self.prohibitActions!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AlertContent") {
            self.alertContent = dict["AlertContent"] as! String
        }
        if dict.keys.contains("AlertTitle") {
            self.alertTitle = dict["AlertTitle"] as! String
        }
        if dict.keys.contains("NotifyActions") {
            self.notifyActions = dict["NotifyActions"] as! [String]
        }
        if dict.keys.contains("ProhibitActions") {
            self.prohibitActions = dict["ProhibitActions"] as! [String]
        }
    }
}

public class RecoveryContent : Tea.TeaModel {
    public var authReportInterval: AuthReportInterval?

    public var recoveryActions: [String]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.authReportInterval?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.authReportInterval != nil {
            map["AuthReportInterval"] = self.authReportInterval?.toMap()
        }
        if self.recoveryActions != nil {
            map["RecoveryActions"] = self.recoveryActions!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AuthReportInterval") {
            var model = AuthReportInterval()
            model.fromMap(dict["AuthReportInterval"] as! [String: Any])
            self.authReportInterval = model
        }
        if dict.keys.contains("RecoveryActions") {
            self.recoveryActions = dict["RecoveryActions"] as! [String]
        }
    }
}

public class Rule : Tea.TeaModel {
    public var combinator: String?

    public var id: String?

    public var name: String?

    public var operator_: String?

    public var ruleSubType: String?

    public var ruleType: String?

    public var rules: [Rule]?

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
        if self.combinator != nil {
            map["Combinator"] = self.combinator!
        }
        if self.id != nil {
            map["Id"] = self.id!
        }
        if self.name != nil {
            map["Name"] = self.name!
        }
        if self.operator_ != nil {
            map["Operator"] = self.operator_!
        }
        if self.ruleSubType != nil {
            map["RuleSubType"] = self.ruleSubType!
        }
        if self.ruleType != nil {
            map["RuleType"] = self.ruleType!
        }
        if self.rules != nil {
            var tmp : [Any] = []
            for k in self.rules! {
                tmp.append(k.toMap())
            }
            map["Rules"] = tmp
        }
        if self.values != nil {
            map["Values"] = self.values!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Combinator") {
            self.combinator = dict["Combinator"] as! String
        }
        if dict.keys.contains("Id") {
            self.id = dict["Id"] as! String
        }
        if dict.keys.contains("Name") {
            self.name = dict["Name"] as! String
        }
        if dict.keys.contains("Operator") {
            self.operator_ = dict["Operator"] as! String
        }
        if dict.keys.contains("RuleSubType") {
            self.ruleSubType = dict["RuleSubType"] as! String
        }
        if dict.keys.contains("RuleType") {
            self.ruleType = dict["RuleType"] as! String
        }
        if dict.keys.contains("Rules") {
            var tmp : [Rule] = []
            for v in dict["Rules"] as! [Any] {
                var model = Rule()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.rules = tmp
        }
        if dict.keys.contains("Values") {
            self.values = dict["Values"] as! [String]
        }
    }
}

public class AttachApplication2ConnectorRequest : Tea.TeaModel {
    public var applicationIds: [String]?

    public var connectorId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.applicationIds != nil {
            map["ApplicationIds"] = self.applicationIds!
        }
        if self.connectorId != nil {
            map["ConnectorId"] = self.connectorId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ApplicationIds") {
            self.applicationIds = dict["ApplicationIds"] as! [String]
        }
        if dict.keys.contains("ConnectorId") {
            self.connectorId = dict["ConnectorId"] as! String
        }
    }
}

public class AttachApplication2ConnectorShrinkRequest : Tea.TeaModel {
    public var applicationIdsShrink: String?

    public var connectorId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.applicationIdsShrink != nil {
            map["ApplicationIds"] = self.applicationIdsShrink!
        }
        if self.connectorId != nil {
            map["ConnectorId"] = self.connectorId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ApplicationIds") {
            self.applicationIdsShrink = dict["ApplicationIds"] as! String
        }
        if dict.keys.contains("ConnectorId") {
            self.connectorId = dict["ConnectorId"] as! String
        }
    }
}

public class AttachApplication2ConnectorResponseBody : Tea.TeaModel {
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

public class AttachApplication2ConnectorResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: AttachApplication2ConnectorResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = AttachApplication2ConnectorResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class AttachPolicy2ApprovalProcessRequest : Tea.TeaModel {
    public var policyId: String?

    public var policyType: String?

    public var processId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.policyId != nil {
            map["PolicyId"] = self.policyId!
        }
        if self.policyType != nil {
            map["PolicyType"] = self.policyType!
        }
        if self.processId != nil {
            map["ProcessId"] = self.processId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("PolicyId") {
            self.policyId = dict["PolicyId"] as! String
        }
        if dict.keys.contains("PolicyType") {
            self.policyType = dict["PolicyType"] as! String
        }
        if dict.keys.contains("ProcessId") {
            self.processId = dict["ProcessId"] as! String
        }
    }
}

public class AttachPolicy2ApprovalProcessResponseBody : Tea.TeaModel {
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

public class AttachPolicy2ApprovalProcessResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: AttachPolicy2ApprovalProcessResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = AttachPolicy2ApprovalProcessResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class CreateApprovalProcessRequest : Tea.TeaModel {
    public class MatchSchemas : Tea.TeaModel {
        public var appUninstallSchemaId: String?

        public var deviceRegistrationSchemaId: String?

        public var dlpSendSchemaId: String?

        public var domainBlacklistSchemaId: String?

        public var domainWhitelistSchemaId: String?

        public var peripheralBlockSchemaId: String?

        public var softwareBlockSchemaId: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.appUninstallSchemaId != nil {
                map["AppUninstallSchemaId"] = self.appUninstallSchemaId!
            }
            if self.deviceRegistrationSchemaId != nil {
                map["DeviceRegistrationSchemaId"] = self.deviceRegistrationSchemaId!
            }
            if self.dlpSendSchemaId != nil {
                map["DlpSendSchemaId"] = self.dlpSendSchemaId!
            }
            if self.domainBlacklistSchemaId != nil {
                map["DomainBlacklistSchemaId"] = self.domainBlacklistSchemaId!
            }
            if self.domainWhitelistSchemaId != nil {
                map["DomainWhitelistSchemaId"] = self.domainWhitelistSchemaId!
            }
            if self.peripheralBlockSchemaId != nil {
                map["PeripheralBlockSchemaId"] = self.peripheralBlockSchemaId!
            }
            if self.softwareBlockSchemaId != nil {
                map["SoftwareBlockSchemaId"] = self.softwareBlockSchemaId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("AppUninstallSchemaId") {
                self.appUninstallSchemaId = dict["AppUninstallSchemaId"] as! String
            }
            if dict.keys.contains("DeviceRegistrationSchemaId") {
                self.deviceRegistrationSchemaId = dict["DeviceRegistrationSchemaId"] as! String
            }
            if dict.keys.contains("DlpSendSchemaId") {
                self.dlpSendSchemaId = dict["DlpSendSchemaId"] as! String
            }
            if dict.keys.contains("DomainBlacklistSchemaId") {
                self.domainBlacklistSchemaId = dict["DomainBlacklistSchemaId"] as! String
            }
            if dict.keys.contains("DomainWhitelistSchemaId") {
                self.domainWhitelistSchemaId = dict["DomainWhitelistSchemaId"] as! String
            }
            if dict.keys.contains("PeripheralBlockSchemaId") {
                self.peripheralBlockSchemaId = dict["PeripheralBlockSchemaId"] as! String
            }
            if dict.keys.contains("SoftwareBlockSchemaId") {
                self.softwareBlockSchemaId = dict["SoftwareBlockSchemaId"] as! String
            }
        }
    }
    public var description_: String?

    public var matchSchemas: CreateApprovalProcessRequest.MatchSchemas?

    public var processName: String?

    public var processNodes: [[String]]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.matchSchemas?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.description_ != nil {
            map["Description"] = self.description_!
        }
        if self.matchSchemas != nil {
            map["MatchSchemas"] = self.matchSchemas?.toMap()
        }
        if self.processName != nil {
            map["ProcessName"] = self.processName!
        }
        if self.processNodes != nil {
            map["ProcessNodes"] = self.processNodes!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Description") {
            self.description_ = dict["Description"] as! String
        }
        if dict.keys.contains("MatchSchemas") {
            var model = CreateApprovalProcessRequest.MatchSchemas()
            model.fromMap(dict["MatchSchemas"] as! [String: Any])
            self.matchSchemas = model
        }
        if dict.keys.contains("ProcessName") {
            self.processName = dict["ProcessName"] as! String
        }
        if dict.keys.contains("ProcessNodes") {
            self.processNodes = dict["ProcessNodes"] as! [[String]]
        }
    }
}

public class CreateApprovalProcessShrinkRequest : Tea.TeaModel {
    public var description_: String?

    public var matchSchemasShrink: String?

    public var processName: String?

    public var processNodes: [[String]]?

    public override init() {
        super.init()
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
        if self.matchSchemasShrink != nil {
            map["MatchSchemas"] = self.matchSchemasShrink!
        }
        if self.processName != nil {
            map["ProcessName"] = self.processName!
        }
        if self.processNodes != nil {
            map["ProcessNodes"] = self.processNodes!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Description") {
            self.description_ = dict["Description"] as! String
        }
        if dict.keys.contains("MatchSchemas") {
            self.matchSchemasShrink = dict["MatchSchemas"] as! String
        }
        if dict.keys.contains("ProcessName") {
            self.processName = dict["ProcessName"] as! String
        }
        if dict.keys.contains("ProcessNodes") {
            self.processNodes = dict["ProcessNodes"] as! [[String]]
        }
    }
}

public class CreateApprovalProcessResponseBody : Tea.TeaModel {
    public class Process : Tea.TeaModel {
        public class AppUninstallPolicies : Tea.TeaModel {
            public var policyIds: [String]?

            public var schemaId: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.policyIds != nil {
                    map["PolicyIds"] = self.policyIds!
                }
                if self.schemaId != nil {
                    map["SchemaId"] = self.schemaId!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("PolicyIds") {
                    self.policyIds = dict["PolicyIds"] as! [String]
                }
                if dict.keys.contains("SchemaId") {
                    self.schemaId = dict["SchemaId"] as! String
                }
            }
        }
        public class DeviceRegistrationPolicies : Tea.TeaModel {
            public var policyIds: [String]?

            public var schemaId: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.policyIds != nil {
                    map["PolicyIds"] = self.policyIds!
                }
                if self.schemaId != nil {
                    map["SchemaId"] = self.schemaId!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("PolicyIds") {
                    self.policyIds = dict["PolicyIds"] as! [String]
                }
                if dict.keys.contains("SchemaId") {
                    self.schemaId = dict["SchemaId"] as! String
                }
            }
        }
        public class DlpSendPolicies : Tea.TeaModel {
            public var policyIds: [String]?

            public var schemaId: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.policyIds != nil {
                    map["PolicyIds"] = self.policyIds!
                }
                if self.schemaId != nil {
                    map["SchemaId"] = self.schemaId!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("PolicyIds") {
                    self.policyIds = dict["PolicyIds"] as! [String]
                }
                if dict.keys.contains("SchemaId") {
                    self.schemaId = dict["SchemaId"] as! String
                }
            }
        }
        public class DomainBlacklistPolicies : Tea.TeaModel {
            public var policyIds: [String]?

            public var schemaId: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.policyIds != nil {
                    map["PolicyIds"] = self.policyIds!
                }
                if self.schemaId != nil {
                    map["SchemaId"] = self.schemaId!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("PolicyIds") {
                    self.policyIds = dict["PolicyIds"] as! [String]
                }
                if dict.keys.contains("SchemaId") {
                    self.schemaId = dict["SchemaId"] as! String
                }
            }
        }
        public class DomainWhitelistPolicies : Tea.TeaModel {
            public var policyIds: [String]?

            public var schemaId: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.policyIds != nil {
                    map["PolicyIds"] = self.policyIds!
                }
                if self.schemaId != nil {
                    map["SchemaId"] = self.schemaId!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("PolicyIds") {
                    self.policyIds = dict["PolicyIds"] as! [String]
                }
                if dict.keys.contains("SchemaId") {
                    self.schemaId = dict["SchemaId"] as! String
                }
            }
        }
        public class PeripheralBlockPolicies : Tea.TeaModel {
            public var policyIds: [String]?

            public var schemaId: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.policyIds != nil {
                    map["PolicyIds"] = self.policyIds!
                }
                if self.schemaId != nil {
                    map["SchemaId"] = self.schemaId!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("PolicyIds") {
                    self.policyIds = dict["PolicyIds"] as! [String]
                }
                if dict.keys.contains("SchemaId") {
                    self.schemaId = dict["SchemaId"] as! String
                }
            }
        }
        public class ProcessNodes : Tea.TeaModel {
            public var saseUserId: String?

            public var username: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.saseUserId != nil {
                    map["SaseUserId"] = self.saseUserId!
                }
                if self.username != nil {
                    map["Username"] = self.username!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("SaseUserId") {
                    self.saseUserId = dict["SaseUserId"] as! String
                }
                if dict.keys.contains("Username") {
                    self.username = dict["Username"] as! String
                }
            }
        }
        public class SoftwareBlockPolicies : Tea.TeaModel {
            public var policyIds: [String]?

            public var schemaId: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.policyIds != nil {
                    map["PolicyIds"] = self.policyIds!
                }
                if self.schemaId != nil {
                    map["SchemaId"] = self.schemaId!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("PolicyIds") {
                    self.policyIds = dict["PolicyIds"] as! [String]
                }
                if dict.keys.contains("SchemaId") {
                    self.schemaId = dict["SchemaId"] as! String
                }
            }
        }
        public var appUninstallPolicies: CreateApprovalProcessResponseBody.Process.AppUninstallPolicies?

        public var createTime: String?

        public var description_: String?

        public var deviceRegistrationPolicies: CreateApprovalProcessResponseBody.Process.DeviceRegistrationPolicies?

        public var dlpSendPolicies: CreateApprovalProcessResponseBody.Process.DlpSendPolicies?

        public var domainBlacklistPolicies: CreateApprovalProcessResponseBody.Process.DomainBlacklistPolicies?

        public var domainWhitelistPolicies: CreateApprovalProcessResponseBody.Process.DomainWhitelistPolicies?

        public var peripheralBlockPolicies: CreateApprovalProcessResponseBody.Process.PeripheralBlockPolicies?

        public var processId: String?

        public var processName: String?

        public var processNodes: [[CreateApprovalProcessResponseBody.Process.ProcessNodes]]?

        public var softwareBlockPolicies: CreateApprovalProcessResponseBody.Process.SoftwareBlockPolicies?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.appUninstallPolicies?.validate()
            try self.deviceRegistrationPolicies?.validate()
            try self.dlpSendPolicies?.validate()
            try self.domainBlacklistPolicies?.validate()
            try self.domainWhitelistPolicies?.validate()
            try self.peripheralBlockPolicies?.validate()
            try self.softwareBlockPolicies?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.appUninstallPolicies != nil {
                map["AppUninstallPolicies"] = self.appUninstallPolicies?.toMap()
            }
            if self.createTime != nil {
                map["CreateTime"] = self.createTime!
            }
            if self.description_ != nil {
                map["Description"] = self.description_!
            }
            if self.deviceRegistrationPolicies != nil {
                map["DeviceRegistrationPolicies"] = self.deviceRegistrationPolicies?.toMap()
            }
            if self.dlpSendPolicies != nil {
                map["DlpSendPolicies"] = self.dlpSendPolicies?.toMap()
            }
            if self.domainBlacklistPolicies != nil {
                map["DomainBlacklistPolicies"] = self.domainBlacklistPolicies?.toMap()
            }
            if self.domainWhitelistPolicies != nil {
                map["DomainWhitelistPolicies"] = self.domainWhitelistPolicies?.toMap()
            }
            if self.peripheralBlockPolicies != nil {
                map["PeripheralBlockPolicies"] = self.peripheralBlockPolicies?.toMap()
            }
            if self.processId != nil {
                map["ProcessId"] = self.processId!
            }
            if self.processName != nil {
                map["ProcessName"] = self.processName!
            }
            if self.processNodes != nil {
                var tmp : [Any] = []
                for k in self.processNodes! {
                    var l1 : [Any] = []
                    for k1 in k {
                        l1.append(k1.toMap())
                    }
                    tmp.append(l1)
                }
                map["ProcessNodes"] = tmp
            }
            if self.softwareBlockPolicies != nil {
                map["SoftwareBlockPolicies"] = self.softwareBlockPolicies?.toMap()
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("AppUninstallPolicies") {
                var model = CreateApprovalProcessResponseBody.Process.AppUninstallPolicies()
                model.fromMap(dict["AppUninstallPolicies"] as! [String: Any])
                self.appUninstallPolicies = model
            }
            if dict.keys.contains("CreateTime") {
                self.createTime = dict["CreateTime"] as! String
            }
            if dict.keys.contains("Description") {
                self.description_ = dict["Description"] as! String
            }
            if dict.keys.contains("DeviceRegistrationPolicies") {
                var model = CreateApprovalProcessResponseBody.Process.DeviceRegistrationPolicies()
                model.fromMap(dict["DeviceRegistrationPolicies"] as! [String: Any])
                self.deviceRegistrationPolicies = model
            }
            if dict.keys.contains("DlpSendPolicies") {
                var model = CreateApprovalProcessResponseBody.Process.DlpSendPolicies()
                model.fromMap(dict["DlpSendPolicies"] as! [String: Any])
                self.dlpSendPolicies = model
            }
            if dict.keys.contains("DomainBlacklistPolicies") {
                var model = CreateApprovalProcessResponseBody.Process.DomainBlacklistPolicies()
                model.fromMap(dict["DomainBlacklistPolicies"] as! [String: Any])
                self.domainBlacklistPolicies = model
            }
            if dict.keys.contains("DomainWhitelistPolicies") {
                var model = CreateApprovalProcessResponseBody.Process.DomainWhitelistPolicies()
                model.fromMap(dict["DomainWhitelistPolicies"] as! [String: Any])
                self.domainWhitelistPolicies = model
            }
            if dict.keys.contains("PeripheralBlockPolicies") {
                var model = CreateApprovalProcessResponseBody.Process.PeripheralBlockPolicies()
                model.fromMap(dict["PeripheralBlockPolicies"] as! [String: Any])
                self.peripheralBlockPolicies = model
            }
            if dict.keys.contains("ProcessId") {
                self.processId = dict["ProcessId"] as! String
            }
            if dict.keys.contains("ProcessName") {
                self.processName = dict["ProcessName"] as! String
            }
            if dict.keys.contains("ProcessNodes") {
                var tmp : [[CreateApprovalProcessResponseBody.Process.ProcessNodes]] = []
                for v in dict["ProcessNodes"] as! [Any] {
                    var l1 : [CreateApprovalProcessResponseBody.Process.ProcessNodes] = []
                    for v1 in v as! [Any] {
                        var model = CreateApprovalProcessResponseBody.Process.ProcessNodes()
                        if v1 != nil {
                            model.fromMap(v1 as! [String: Any])
                        }
                        l1.append(model)
                    }
                    tmp.append(l1)
                }
                self.processNodes = tmp
            }
            if dict.keys.contains("SoftwareBlockPolicies") {
                var model = CreateApprovalProcessResponseBody.Process.SoftwareBlockPolicies()
                model.fromMap(dict["SoftwareBlockPolicies"] as! [String: Any])
                self.softwareBlockPolicies = model
            }
        }
    }
    public var process: CreateApprovalProcessResponseBody.Process?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.process?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.process != nil {
            map["Process"] = self.process?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Process") {
            var model = CreateApprovalProcessResponseBody.Process()
            model.fromMap(dict["Process"] as! [String: Any])
            self.process = model
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class CreateApprovalProcessResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateApprovalProcessResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = CreateApprovalProcessResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class CreateClientUserRequest : Tea.TeaModel {
    public var departmentId: String?

    public var description_: String?

    public var email: String?

    public var idpConfigId: String?

    public var mobileNumber: String?

    public var password: String?

    public var username: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.departmentId != nil {
            map["DepartmentId"] = self.departmentId!
        }
        if self.description_ != nil {
            map["Description"] = self.description_!
        }
        if self.email != nil {
            map["Email"] = self.email!
        }
        if self.idpConfigId != nil {
            map["IdpConfigId"] = self.idpConfigId!
        }
        if self.mobileNumber != nil {
            map["MobileNumber"] = self.mobileNumber!
        }
        if self.password != nil {
            map["Password"] = self.password!
        }
        if self.username != nil {
            map["Username"] = self.username!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DepartmentId") {
            self.departmentId = dict["DepartmentId"] as! String
        }
        if dict.keys.contains("Description") {
            self.description_ = dict["Description"] as! String
        }
        if dict.keys.contains("Email") {
            self.email = dict["Email"] as! String
        }
        if dict.keys.contains("IdpConfigId") {
            self.idpConfigId = dict["IdpConfigId"] as! String
        }
        if dict.keys.contains("MobileNumber") {
            self.mobileNumber = dict["MobileNumber"] as! String
        }
        if dict.keys.contains("Password") {
            self.password = dict["Password"] as! String
        }
        if dict.keys.contains("Username") {
            self.username = dict["Username"] as! String
        }
    }
}

public class CreateClientUserResponseBody : Tea.TeaModel {
    public var data: String?

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
            map["Data"] = self.data!
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
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class CreateClientUserResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateClientUserResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = CreateClientUserResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class CreateDynamicRouteRequest : Tea.TeaModel {
    public var applicationIds: [String]?

    public var applicationType: String?

    public var description_: String?

    public var dynamicRouteType: String?

    public var name: String?

    public var nextHop: String?

    public var priority: Int32?

    public var regionIds: [String]?

    public var status: String?

    public var tagIds: [String]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.applicationIds != nil {
            map["ApplicationIds"] = self.applicationIds!
        }
        if self.applicationType != nil {
            map["ApplicationType"] = self.applicationType!
        }
        if self.description_ != nil {
            map["Description"] = self.description_!
        }
        if self.dynamicRouteType != nil {
            map["DynamicRouteType"] = self.dynamicRouteType!
        }
        if self.name != nil {
            map["Name"] = self.name!
        }
        if self.nextHop != nil {
            map["NextHop"] = self.nextHop!
        }
        if self.priority != nil {
            map["Priority"] = self.priority!
        }
        if self.regionIds != nil {
            map["RegionIds"] = self.regionIds!
        }
        if self.status != nil {
            map["Status"] = self.status!
        }
        if self.tagIds != nil {
            map["TagIds"] = self.tagIds!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ApplicationIds") {
            self.applicationIds = dict["ApplicationIds"] as! [String]
        }
        if dict.keys.contains("ApplicationType") {
            self.applicationType = dict["ApplicationType"] as! String
        }
        if dict.keys.contains("Description") {
            self.description_ = dict["Description"] as! String
        }
        if dict.keys.contains("DynamicRouteType") {
            self.dynamicRouteType = dict["DynamicRouteType"] as! String
        }
        if dict.keys.contains("Name") {
            self.name = dict["Name"] as! String
        }
        if dict.keys.contains("NextHop") {
            self.nextHop = dict["NextHop"] as! String
        }
        if dict.keys.contains("Priority") {
            self.priority = dict["Priority"] as! Int32
        }
        if dict.keys.contains("RegionIds") {
            self.regionIds = dict["RegionIds"] as! [String]
        }
        if dict.keys.contains("Status") {
            self.status = dict["Status"] as! String
        }
        if dict.keys.contains("TagIds") {
            self.tagIds = dict["TagIds"] as! [String]
        }
    }
}

public class CreateDynamicRouteResponseBody : Tea.TeaModel {
    public var dynamicRouteId: String?

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
        if self.dynamicRouteId != nil {
            map["DynamicRouteId"] = self.dynamicRouteId!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DynamicRouteId") {
            self.dynamicRouteId = dict["DynamicRouteId"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class CreateDynamicRouteResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateDynamicRouteResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = CreateDynamicRouteResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class CreateIdpDepartmentRequest : Tea.TeaModel {
    public var departmentName: String?

    public var idpConfigId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.departmentName != nil {
            map["DepartmentName"] = self.departmentName!
        }
        if self.idpConfigId != nil {
            map["IdpConfigId"] = self.idpConfigId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DepartmentName") {
            self.departmentName = dict["DepartmentName"] as! String
        }
        if dict.keys.contains("IdpConfigId") {
            self.idpConfigId = dict["IdpConfigId"] as! String
        }
    }
}

public class CreateIdpDepartmentResponseBody : Tea.TeaModel {
    public var data: String?

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
            map["Data"] = self.data!
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
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class CreateIdpDepartmentResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateIdpDepartmentResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = CreateIdpDepartmentResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class CreatePrivateAccessApplicationRequest : Tea.TeaModel {
    public class PortRanges : Tea.TeaModel {
        public var begin: Int32?

        public var end: Int32?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.begin != nil {
                map["Begin"] = self.begin!
            }
            if self.end != nil {
                map["End"] = self.end!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Begin") {
                self.begin = dict["Begin"] as! Int32
            }
            if dict.keys.contains("End") {
                self.end = dict["End"] as! Int32
            }
        }
    }
    public var addresses: [String]?

    public var browserAccessStatus: String?

    public var description_: String?

    public var l7ProxyDomainAutomaticPrefix: String?

    public var l7ProxyDomainCustom: String?

    public var name: String?

    public var portRanges: [CreatePrivateAccessApplicationRequest.PortRanges]?

    public var protocol_: String?

    public var status: String?

    public var tagIds: [String]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.addresses != nil {
            map["Addresses"] = self.addresses!
        }
        if self.browserAccessStatus != nil {
            map["BrowserAccessStatus"] = self.browserAccessStatus!
        }
        if self.description_ != nil {
            map["Description"] = self.description_!
        }
        if self.l7ProxyDomainAutomaticPrefix != nil {
            map["L7ProxyDomainAutomaticPrefix"] = self.l7ProxyDomainAutomaticPrefix!
        }
        if self.l7ProxyDomainCustom != nil {
            map["L7ProxyDomainCustom"] = self.l7ProxyDomainCustom!
        }
        if self.name != nil {
            map["Name"] = self.name!
        }
        if self.portRanges != nil {
            var tmp : [Any] = []
            for k in self.portRanges! {
                tmp.append(k.toMap())
            }
            map["PortRanges"] = tmp
        }
        if self.protocol_ != nil {
            map["Protocol"] = self.protocol_!
        }
        if self.status != nil {
            map["Status"] = self.status!
        }
        if self.tagIds != nil {
            map["TagIds"] = self.tagIds!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Addresses") {
            self.addresses = dict["Addresses"] as! [String]
        }
        if dict.keys.contains("BrowserAccessStatus") {
            self.browserAccessStatus = dict["BrowserAccessStatus"] as! String
        }
        if dict.keys.contains("Description") {
            self.description_ = dict["Description"] as! String
        }
        if dict.keys.contains("L7ProxyDomainAutomaticPrefix") {
            self.l7ProxyDomainAutomaticPrefix = dict["L7ProxyDomainAutomaticPrefix"] as! String
        }
        if dict.keys.contains("L7ProxyDomainCustom") {
            self.l7ProxyDomainCustom = dict["L7ProxyDomainCustom"] as! String
        }
        if dict.keys.contains("Name") {
            self.name = dict["Name"] as! String
        }
        if dict.keys.contains("PortRanges") {
            var tmp : [CreatePrivateAccessApplicationRequest.PortRanges] = []
            for v in dict["PortRanges"] as! [Any] {
                var model = CreatePrivateAccessApplicationRequest.PortRanges()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.portRanges = tmp
        }
        if dict.keys.contains("Protocol") {
            self.protocol_ = dict["Protocol"] as! String
        }
        if dict.keys.contains("Status") {
            self.status = dict["Status"] as! String
        }
        if dict.keys.contains("TagIds") {
            self.tagIds = dict["TagIds"] as! [String]
        }
    }
}

public class CreatePrivateAccessApplicationResponseBody : Tea.TeaModel {
    public var applicationId: String?

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
        if self.applicationId != nil {
            map["ApplicationId"] = self.applicationId!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ApplicationId") {
            self.applicationId = dict["ApplicationId"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class CreatePrivateAccessApplicationResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreatePrivateAccessApplicationResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = CreatePrivateAccessApplicationResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class CreatePrivateAccessPolicyRequest : Tea.TeaModel {
    public class CustomUserAttributes : Tea.TeaModel {
        public var idpId: Int32?

        public var relation: String?

        public var userGroupType: String?

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
            if self.idpId != nil {
                map["IdpId"] = self.idpId!
            }
            if self.relation != nil {
                map["Relation"] = self.relation!
            }
            if self.userGroupType != nil {
                map["UserGroupType"] = self.userGroupType!
            }
            if self.value != nil {
                map["Value"] = self.value!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("IdpId") {
                self.idpId = dict["IdpId"] as! Int32
            }
            if dict.keys.contains("Relation") {
                self.relation = dict["Relation"] as! String
            }
            if dict.keys.contains("UserGroupType") {
                self.userGroupType = dict["UserGroupType"] as! String
            }
            if dict.keys.contains("Value") {
                self.value = dict["Value"] as! String
            }
        }
    }
    public var applicationIds: [String]?

    public var applicationType: String?

    public var customUserAttributes: [CreatePrivateAccessPolicyRequest.CustomUserAttributes]?

    public var description_: String?

    public var deviceAttributeAction: String?

    public var deviceAttributeId: String?

    public var name: String?

    public var policyAction: String?

    public var priority: Int32?

    public var status: String?

    public var tagIds: [String]?

    public var userGroupIds: [String]?

    public var userGroupMode: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.applicationIds != nil {
            map["ApplicationIds"] = self.applicationIds!
        }
        if self.applicationType != nil {
            map["ApplicationType"] = self.applicationType!
        }
        if self.customUserAttributes != nil {
            var tmp : [Any] = []
            for k in self.customUserAttributes! {
                tmp.append(k.toMap())
            }
            map["CustomUserAttributes"] = tmp
        }
        if self.description_ != nil {
            map["Description"] = self.description_!
        }
        if self.deviceAttributeAction != nil {
            map["DeviceAttributeAction"] = self.deviceAttributeAction!
        }
        if self.deviceAttributeId != nil {
            map["DeviceAttributeId"] = self.deviceAttributeId!
        }
        if self.name != nil {
            map["Name"] = self.name!
        }
        if self.policyAction != nil {
            map["PolicyAction"] = self.policyAction!
        }
        if self.priority != nil {
            map["Priority"] = self.priority!
        }
        if self.status != nil {
            map["Status"] = self.status!
        }
        if self.tagIds != nil {
            map["TagIds"] = self.tagIds!
        }
        if self.userGroupIds != nil {
            map["UserGroupIds"] = self.userGroupIds!
        }
        if self.userGroupMode != nil {
            map["UserGroupMode"] = self.userGroupMode!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ApplicationIds") {
            self.applicationIds = dict["ApplicationIds"] as! [String]
        }
        if dict.keys.contains("ApplicationType") {
            self.applicationType = dict["ApplicationType"] as! String
        }
        if dict.keys.contains("CustomUserAttributes") {
            var tmp : [CreatePrivateAccessPolicyRequest.CustomUserAttributes] = []
            for v in dict["CustomUserAttributes"] as! [Any] {
                var model = CreatePrivateAccessPolicyRequest.CustomUserAttributes()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.customUserAttributes = tmp
        }
        if dict.keys.contains("Description") {
            self.description_ = dict["Description"] as! String
        }
        if dict.keys.contains("DeviceAttributeAction") {
            self.deviceAttributeAction = dict["DeviceAttributeAction"] as! String
        }
        if dict.keys.contains("DeviceAttributeId") {
            self.deviceAttributeId = dict["DeviceAttributeId"] as! String
        }
        if dict.keys.contains("Name") {
            self.name = dict["Name"] as! String
        }
        if dict.keys.contains("PolicyAction") {
            self.policyAction = dict["PolicyAction"] as! String
        }
        if dict.keys.contains("Priority") {
            self.priority = dict["Priority"] as! Int32
        }
        if dict.keys.contains("Status") {
            self.status = dict["Status"] as! String
        }
        if dict.keys.contains("TagIds") {
            self.tagIds = dict["TagIds"] as! [String]
        }
        if dict.keys.contains("UserGroupIds") {
            self.userGroupIds = dict["UserGroupIds"] as! [String]
        }
        if dict.keys.contains("UserGroupMode") {
            self.userGroupMode = dict["UserGroupMode"] as! String
        }
    }
}

public class CreatePrivateAccessPolicyResponseBody : Tea.TeaModel {
    public var policyId: String?

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
        if self.policyId != nil {
            map["PolicyId"] = self.policyId!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("PolicyId") {
            self.policyId = dict["PolicyId"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class CreatePrivateAccessPolicyResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreatePrivateAccessPolicyResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = CreatePrivateAccessPolicyResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class CreatePrivateAccessTagRequest : Tea.TeaModel {
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
        if self.description_ != nil {
            map["Description"] = self.description_!
        }
        if self.name != nil {
            map["Name"] = self.name!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Description") {
            self.description_ = dict["Description"] as! String
        }
        if dict.keys.contains("Name") {
            self.name = dict["Name"] as! String
        }
    }
}

public class CreatePrivateAccessTagResponseBody : Tea.TeaModel {
    public var requestId: String?

    public var tagId: String?

    public override init() {
        super.init()
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
        if self.tagId != nil {
            map["TagId"] = self.tagId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("TagId") {
            self.tagId = dict["TagId"] as! String
        }
    }
}

public class CreatePrivateAccessTagResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreatePrivateAccessTagResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = CreatePrivateAccessTagResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class CreateRegistrationPolicyRequest : Tea.TeaModel {
    public class CompanyLimitCount : Tea.TeaModel {
        public var all: Int32?

        public var mobile: Int32?

        public var PC: Int32?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.all != nil {
                map["All"] = self.all!
            }
            if self.mobile != nil {
                map["Mobile"] = self.mobile!
            }
            if self.PC != nil {
                map["PC"] = self.PC!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("All") {
                self.all = dict["All"] as! Int32
            }
            if dict.keys.contains("Mobile") {
                self.mobile = dict["Mobile"] as! Int32
            }
            if dict.keys.contains("PC") {
                self.PC = dict["PC"] as! Int32
            }
        }
    }
    public class PersonalLimitCount : Tea.TeaModel {
        public var all: Int32?

        public var mobile: Int32?

        public var PC: Int32?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.all != nil {
                map["All"] = self.all!
            }
            if self.mobile != nil {
                map["Mobile"] = self.mobile!
            }
            if self.PC != nil {
                map["PC"] = self.PC!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("All") {
                self.all = dict["All"] as! Int32
            }
            if dict.keys.contains("Mobile") {
                self.mobile = dict["Mobile"] as! Int32
            }
            if dict.keys.contains("PC") {
                self.PC = dict["PC"] as! Int32
            }
        }
    }
    public var companyLimitCount: CreateRegistrationPolicyRequest.CompanyLimitCount?

    public var companyLimitType: String?

    public var description_: String?

    public var matchMode: String?

    public var name: String?

    public var personalLimitCount: CreateRegistrationPolicyRequest.PersonalLimitCount?

    public var personalLimitType: String?

    public var priority: Int64?

    public var status: String?

    public var userGroupIds: [String]?

    public var whitelist: [String]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.companyLimitCount?.validate()
        try self.personalLimitCount?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.companyLimitCount != nil {
            map["CompanyLimitCount"] = self.companyLimitCount?.toMap()
        }
        if self.companyLimitType != nil {
            map["CompanyLimitType"] = self.companyLimitType!
        }
        if self.description_ != nil {
            map["Description"] = self.description_!
        }
        if self.matchMode != nil {
            map["MatchMode"] = self.matchMode!
        }
        if self.name != nil {
            map["Name"] = self.name!
        }
        if self.personalLimitCount != nil {
            map["PersonalLimitCount"] = self.personalLimitCount?.toMap()
        }
        if self.personalLimitType != nil {
            map["PersonalLimitType"] = self.personalLimitType!
        }
        if self.priority != nil {
            map["Priority"] = self.priority!
        }
        if self.status != nil {
            map["Status"] = self.status!
        }
        if self.userGroupIds != nil {
            map["UserGroupIds"] = self.userGroupIds!
        }
        if self.whitelist != nil {
            map["Whitelist"] = self.whitelist!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("CompanyLimitCount") {
            var model = CreateRegistrationPolicyRequest.CompanyLimitCount()
            model.fromMap(dict["CompanyLimitCount"] as! [String: Any])
            self.companyLimitCount = model
        }
        if dict.keys.contains("CompanyLimitType") {
            self.companyLimitType = dict["CompanyLimitType"] as! String
        }
        if dict.keys.contains("Description") {
            self.description_ = dict["Description"] as! String
        }
        if dict.keys.contains("MatchMode") {
            self.matchMode = dict["MatchMode"] as! String
        }
        if dict.keys.contains("Name") {
            self.name = dict["Name"] as! String
        }
        if dict.keys.contains("PersonalLimitCount") {
            var model = CreateRegistrationPolicyRequest.PersonalLimitCount()
            model.fromMap(dict["PersonalLimitCount"] as! [String: Any])
            self.personalLimitCount = model
        }
        if dict.keys.contains("PersonalLimitType") {
            self.personalLimitType = dict["PersonalLimitType"] as! String
        }
        if dict.keys.contains("Priority") {
            self.priority = dict["Priority"] as! Int64
        }
        if dict.keys.contains("Status") {
            self.status = dict["Status"] as! String
        }
        if dict.keys.contains("UserGroupIds") {
            self.userGroupIds = dict["UserGroupIds"] as! [String]
        }
        if dict.keys.contains("Whitelist") {
            self.whitelist = dict["Whitelist"] as! [String]
        }
    }
}

public class CreateRegistrationPolicyShrinkRequest : Tea.TeaModel {
    public var companyLimitCountShrink: String?

    public var companyLimitType: String?

    public var description_: String?

    public var matchMode: String?

    public var name: String?

    public var personalLimitCountShrink: String?

    public var personalLimitType: String?

    public var priority: Int64?

    public var status: String?

    public var userGroupIds: [String]?

    public var whitelist: [String]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.companyLimitCountShrink != nil {
            map["CompanyLimitCount"] = self.companyLimitCountShrink!
        }
        if self.companyLimitType != nil {
            map["CompanyLimitType"] = self.companyLimitType!
        }
        if self.description_ != nil {
            map["Description"] = self.description_!
        }
        if self.matchMode != nil {
            map["MatchMode"] = self.matchMode!
        }
        if self.name != nil {
            map["Name"] = self.name!
        }
        if self.personalLimitCountShrink != nil {
            map["PersonalLimitCount"] = self.personalLimitCountShrink!
        }
        if self.personalLimitType != nil {
            map["PersonalLimitType"] = self.personalLimitType!
        }
        if self.priority != nil {
            map["Priority"] = self.priority!
        }
        if self.status != nil {
            map["Status"] = self.status!
        }
        if self.userGroupIds != nil {
            map["UserGroupIds"] = self.userGroupIds!
        }
        if self.whitelist != nil {
            map["Whitelist"] = self.whitelist!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("CompanyLimitCount") {
            self.companyLimitCountShrink = dict["CompanyLimitCount"] as! String
        }
        if dict.keys.contains("CompanyLimitType") {
            self.companyLimitType = dict["CompanyLimitType"] as! String
        }
        if dict.keys.contains("Description") {
            self.description_ = dict["Description"] as! String
        }
        if dict.keys.contains("MatchMode") {
            self.matchMode = dict["MatchMode"] as! String
        }
        if dict.keys.contains("Name") {
            self.name = dict["Name"] as! String
        }
        if dict.keys.contains("PersonalLimitCount") {
            self.personalLimitCountShrink = dict["PersonalLimitCount"] as! String
        }
        if dict.keys.contains("PersonalLimitType") {
            self.personalLimitType = dict["PersonalLimitType"] as! String
        }
        if dict.keys.contains("Priority") {
            self.priority = dict["Priority"] as! Int64
        }
        if dict.keys.contains("Status") {
            self.status = dict["Status"] as! String
        }
        if dict.keys.contains("UserGroupIds") {
            self.userGroupIds = dict["UserGroupIds"] as! [String]
        }
        if dict.keys.contains("Whitelist") {
            self.whitelist = dict["Whitelist"] as! [String]
        }
    }
}

public class CreateRegistrationPolicyResponseBody : Tea.TeaModel {
    public class Policy : Tea.TeaModel {
        public class LimitDetail : Tea.TeaModel {
            public class LimitCount : Tea.TeaModel {
                public var all: Int32?

                public var mobile: Int32?

                public var PC: Int32?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.all != nil {
                        map["All"] = self.all!
                    }
                    if self.mobile != nil {
                        map["Mobile"] = self.mobile!
                    }
                    if self.PC != nil {
                        map["PC"] = self.PC!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("All") {
                        self.all = dict["All"] as! Int32
                    }
                    if dict.keys.contains("Mobile") {
                        self.mobile = dict["Mobile"] as! Int32
                    }
                    if dict.keys.contains("PC") {
                        self.PC = dict["PC"] as! Int32
                    }
                }
            }
            public var deviceBelong: String?

            public var limitCount: CreateRegistrationPolicyResponseBody.Policy.LimitDetail.LimitCount?

            public var limitType: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
                try self.limitCount?.validate()
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.deviceBelong != nil {
                    map["DeviceBelong"] = self.deviceBelong!
                }
                if self.limitCount != nil {
                    map["LimitCount"] = self.limitCount?.toMap()
                }
                if self.limitType != nil {
                    map["LimitType"] = self.limitType!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("DeviceBelong") {
                    self.deviceBelong = dict["DeviceBelong"] as! String
                }
                if dict.keys.contains("LimitCount") {
                    var model = CreateRegistrationPolicyResponseBody.Policy.LimitDetail.LimitCount()
                    model.fromMap(dict["LimitCount"] as! [String: Any])
                    self.limitCount = model
                }
                if dict.keys.contains("LimitType") {
                    self.limitType = dict["LimitType"] as! String
                }
            }
        }
        public var createTime: String?

        public var description_: String?

        public var limitDetail: [CreateRegistrationPolicyResponseBody.Policy.LimitDetail]?

        public var matchMode: String?

        public var name: String?

        public var policyId: String?

        public var priority: String?

        public var status: String?

        public var userGroupIds: [String]?

        public var whitelist: [String]?

        public override init() {
            super.init()
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
            if self.description_ != nil {
                map["Description"] = self.description_!
            }
            if self.limitDetail != nil {
                var tmp : [Any] = []
                for k in self.limitDetail! {
                    tmp.append(k.toMap())
                }
                map["LimitDetail"] = tmp
            }
            if self.matchMode != nil {
                map["MatchMode"] = self.matchMode!
            }
            if self.name != nil {
                map["Name"] = self.name!
            }
            if self.policyId != nil {
                map["PolicyId"] = self.policyId!
            }
            if self.priority != nil {
                map["Priority"] = self.priority!
            }
            if self.status != nil {
                map["Status"] = self.status!
            }
            if self.userGroupIds != nil {
                map["UserGroupIds"] = self.userGroupIds!
            }
            if self.whitelist != nil {
                map["Whitelist"] = self.whitelist!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("CreateTime") {
                self.createTime = dict["CreateTime"] as! String
            }
            if dict.keys.contains("Description") {
                self.description_ = dict["Description"] as! String
            }
            if dict.keys.contains("LimitDetail") {
                var tmp : [CreateRegistrationPolicyResponseBody.Policy.LimitDetail] = []
                for v in dict["LimitDetail"] as! [Any] {
                    var model = CreateRegistrationPolicyResponseBody.Policy.LimitDetail()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.limitDetail = tmp
            }
            if dict.keys.contains("MatchMode") {
                self.matchMode = dict["MatchMode"] as! String
            }
            if dict.keys.contains("Name") {
                self.name = dict["Name"] as! String
            }
            if dict.keys.contains("PolicyId") {
                self.policyId = dict["PolicyId"] as! String
            }
            if dict.keys.contains("Priority") {
                self.priority = dict["Priority"] as! String
            }
            if dict.keys.contains("Status") {
                self.status = dict["Status"] as! String
            }
            if dict.keys.contains("UserGroupIds") {
                self.userGroupIds = dict["UserGroupIds"] as! [String]
            }
            if dict.keys.contains("Whitelist") {
                self.whitelist = dict["Whitelist"] as! [String]
            }
        }
    }
    public var policy: CreateRegistrationPolicyResponseBody.Policy?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.policy?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.policy != nil {
            map["Policy"] = self.policy?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Policy") {
            var model = CreateRegistrationPolicyResponseBody.Policy()
            model.fromMap(dict["Policy"] as! [String: Any])
            self.policy = model
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class CreateRegistrationPolicyResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateRegistrationPolicyResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = CreateRegistrationPolicyResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class CreateUserGroupRequest : Tea.TeaModel {
    public class Attributes : Tea.TeaModel {
        public var idpId: Int32?

        public var relation: String?

        public var userGroupType: String?

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
            if self.idpId != nil {
                map["IdpId"] = self.idpId!
            }
            if self.relation != nil {
                map["Relation"] = self.relation!
            }
            if self.userGroupType != nil {
                map["UserGroupType"] = self.userGroupType!
            }
            if self.value != nil {
                map["Value"] = self.value!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("IdpId") {
                self.idpId = dict["IdpId"] as! Int32
            }
            if dict.keys.contains("Relation") {
                self.relation = dict["Relation"] as! String
            }
            if dict.keys.contains("UserGroupType") {
                self.userGroupType = dict["UserGroupType"] as! String
            }
            if dict.keys.contains("Value") {
                self.value = dict["Value"] as! String
            }
        }
    }
    public var attributes: [CreateUserGroupRequest.Attributes]?

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
        if self.attributes != nil {
            var tmp : [Any] = []
            for k in self.attributes! {
                tmp.append(k.toMap())
            }
            map["Attributes"] = tmp
        }
        if self.description_ != nil {
            map["Description"] = self.description_!
        }
        if self.name != nil {
            map["Name"] = self.name!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Attributes") {
            var tmp : [CreateUserGroupRequest.Attributes] = []
            for v in dict["Attributes"] as! [Any] {
                var model = CreateUserGroupRequest.Attributes()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.attributes = tmp
        }
        if dict.keys.contains("Description") {
            self.description_ = dict["Description"] as! String
        }
        if dict.keys.contains("Name") {
            self.name = dict["Name"] as! String
        }
    }
}

public class CreateUserGroupResponseBody : Tea.TeaModel {
    public var requestId: String?

    public var userGroupId: String?

    public override init() {
        super.init()
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
        if self.userGroupId != nil {
            map["UserGroupId"] = self.userGroupId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("UserGroupId") {
            self.userGroupId = dict["UserGroupId"] as! String
        }
    }
}

public class CreateUserGroupResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateUserGroupResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = CreateUserGroupResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class CreateWmBaseImageRequest : Tea.TeaModel {
    public var height: Int32?

    public var opacity: Int32?

    public var scale: Int32?

    public var width: Int32?

    public var wmInfoBytesB64: String?

    public var wmInfoSize: Int64?

    public var wmInfoUint: String?

    public var wmType: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.height != nil {
            map["Height"] = self.height!
        }
        if self.opacity != nil {
            map["Opacity"] = self.opacity!
        }
        if self.scale != nil {
            map["Scale"] = self.scale!
        }
        if self.width != nil {
            map["Width"] = self.width!
        }
        if self.wmInfoBytesB64 != nil {
            map["WmInfoBytesB64"] = self.wmInfoBytesB64!
        }
        if self.wmInfoSize != nil {
            map["WmInfoSize"] = self.wmInfoSize!
        }
        if self.wmInfoUint != nil {
            map["WmInfoUint"] = self.wmInfoUint!
        }
        if self.wmType != nil {
            map["WmType"] = self.wmType!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Height") {
            self.height = dict["Height"] as! Int32
        }
        if dict.keys.contains("Opacity") {
            self.opacity = dict["Opacity"] as! Int32
        }
        if dict.keys.contains("Scale") {
            self.scale = dict["Scale"] as! Int32
        }
        if dict.keys.contains("Width") {
            self.width = dict["Width"] as! Int32
        }
        if dict.keys.contains("WmInfoBytesB64") {
            self.wmInfoBytesB64 = dict["WmInfoBytesB64"] as! String
        }
        if dict.keys.contains("WmInfoSize") {
            self.wmInfoSize = dict["WmInfoSize"] as! Int64
        }
        if dict.keys.contains("WmInfoUint") {
            self.wmInfoUint = dict["WmInfoUint"] as! String
        }
        if dict.keys.contains("WmType") {
            self.wmType = dict["WmType"] as! String
        }
    }
}

public class CreateWmBaseImageResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var imageId: String?

        public var imageUrl: String?

        public var imageUrlExp: Int64?

        public override init() {
            super.init()
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
            if self.imageUrl != nil {
                map["ImageUrl"] = self.imageUrl!
            }
            if self.imageUrlExp != nil {
                map["ImageUrlExp"] = self.imageUrlExp!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("ImageId") {
                self.imageId = dict["ImageId"] as! String
            }
            if dict.keys.contains("ImageUrl") {
                self.imageUrl = dict["ImageUrl"] as! String
            }
            if dict.keys.contains("ImageUrlExp") {
                self.imageUrlExp = dict["ImageUrlExp"] as! Int64
            }
        }
    }
    public var data: CreateWmBaseImageResponseBody.Data?

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
            var model = CreateWmBaseImageResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class CreateWmBaseImageResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateWmBaseImageResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = CreateWmBaseImageResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class CreateWmEmbedTaskRequest : Tea.TeaModel {
    public class CsvControl : Tea.TeaModel {
        public var embedBitsNumberInEachTime: Int64?

        public var embedColumn: Int64?

        public var embedDensity: String?

        public var embedPrecision: Int64?

        public var embedTimePosition: String?

        public var method: String?

        public var timeFormat: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.embedBitsNumberInEachTime != nil {
                map["EmbedBitsNumberInEachTime"] = self.embedBitsNumberInEachTime!
            }
            if self.embedColumn != nil {
                map["EmbedColumn"] = self.embedColumn!
            }
            if self.embedDensity != nil {
                map["EmbedDensity"] = self.embedDensity!
            }
            if self.embedPrecision != nil {
                map["EmbedPrecision"] = self.embedPrecision!
            }
            if self.embedTimePosition != nil {
                map["EmbedTimePosition"] = self.embedTimePosition!
            }
            if self.method != nil {
                map["Method"] = self.method!
            }
            if self.timeFormat != nil {
                map["TimeFormat"] = self.timeFormat!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("EmbedBitsNumberInEachTime") {
                self.embedBitsNumberInEachTime = dict["EmbedBitsNumberInEachTime"] as! Int64
            }
            if dict.keys.contains("EmbedColumn") {
                self.embedColumn = dict["EmbedColumn"] as! Int64
            }
            if dict.keys.contains("EmbedDensity") {
                self.embedDensity = dict["EmbedDensity"] as! String
            }
            if dict.keys.contains("EmbedPrecision") {
                self.embedPrecision = dict["EmbedPrecision"] as! Int64
            }
            if dict.keys.contains("EmbedTimePosition") {
                self.embedTimePosition = dict["EmbedTimePosition"] as! String
            }
            if dict.keys.contains("Method") {
                self.method = dict["Method"] as! String
            }
            if dict.keys.contains("TimeFormat") {
                self.timeFormat = dict["TimeFormat"] as! String
            }
        }
    }
    public class DocumentControl : Tea.TeaModel {
        public class BackgroundControl : Tea.TeaModel {
            public class BgInvisibleControl : Tea.TeaModel {
                public var opacity: Int64?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.opacity != nil {
                        map["Opacity"] = self.opacity!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("Opacity") {
                        self.opacity = dict["Opacity"] as! Int64
                    }
                }
            }
            public class BgVisibleControl : Tea.TeaModel {
                public var angle: Int64?

                public var fontColor: String?

                public var fontSize: Int64?

                public var horizontalNumber: Int64?

                public var mode: String?

                public var opacity: Int64?

                public var posX: String?

                public var posY: String?

                public var verticalNumber: Int64?

                public var visibleText: String?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.angle != nil {
                        map["Angle"] = self.angle!
                    }
                    if self.fontColor != nil {
                        map["FontColor"] = self.fontColor!
                    }
                    if self.fontSize != nil {
                        map["FontSize"] = self.fontSize!
                    }
                    if self.horizontalNumber != nil {
                        map["HorizontalNumber"] = self.horizontalNumber!
                    }
                    if self.mode != nil {
                        map["Mode"] = self.mode!
                    }
                    if self.opacity != nil {
                        map["Opacity"] = self.opacity!
                    }
                    if self.posX != nil {
                        map["PosX"] = self.posX!
                    }
                    if self.posY != nil {
                        map["PosY"] = self.posY!
                    }
                    if self.verticalNumber != nil {
                        map["VerticalNumber"] = self.verticalNumber!
                    }
                    if self.visibleText != nil {
                        map["VisibleText"] = self.visibleText!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("Angle") {
                        self.angle = dict["Angle"] as! Int64
                    }
                    if dict.keys.contains("FontColor") {
                        self.fontColor = dict["FontColor"] as! String
                    }
                    if dict.keys.contains("FontSize") {
                        self.fontSize = dict["FontSize"] as! Int64
                    }
                    if dict.keys.contains("HorizontalNumber") {
                        self.horizontalNumber = dict["HorizontalNumber"] as! Int64
                    }
                    if dict.keys.contains("Mode") {
                        self.mode = dict["Mode"] as! String
                    }
                    if dict.keys.contains("Opacity") {
                        self.opacity = dict["Opacity"] as! Int64
                    }
                    if dict.keys.contains("PosX") {
                        self.posX = dict["PosX"] as! String
                    }
                    if dict.keys.contains("PosY") {
                        self.posY = dict["PosY"] as! String
                    }
                    if dict.keys.contains("VerticalNumber") {
                        self.verticalNumber = dict["VerticalNumber"] as! Int64
                    }
                    if dict.keys.contains("VisibleText") {
                        self.visibleText = dict["VisibleText"] as! String
                    }
                }
            }
            public var bgAddInvisible: Bool?

            public var bgAddVisible: Bool?

            public var bgInvisibleControl: CreateWmEmbedTaskRequest.DocumentControl.BackgroundControl.BgInvisibleControl?

            public var bgVisibleControl: CreateWmEmbedTaskRequest.DocumentControl.BackgroundControl.BgVisibleControl?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
                try self.bgInvisibleControl?.validate()
                try self.bgVisibleControl?.validate()
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.bgAddInvisible != nil {
                    map["BgAddInvisible"] = self.bgAddInvisible!
                }
                if self.bgAddVisible != nil {
                    map["BgAddVisible"] = self.bgAddVisible!
                }
                if self.bgInvisibleControl != nil {
                    map["BgInvisibleControl"] = self.bgInvisibleControl?.toMap()
                }
                if self.bgVisibleControl != nil {
                    map["BgVisibleControl"] = self.bgVisibleControl?.toMap()
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("BgAddInvisible") {
                    self.bgAddInvisible = dict["BgAddInvisible"] as! Bool
                }
                if dict.keys.contains("BgAddVisible") {
                    self.bgAddVisible = dict["BgAddVisible"] as! Bool
                }
                if dict.keys.contains("BgInvisibleControl") {
                    var model = CreateWmEmbedTaskRequest.DocumentControl.BackgroundControl.BgInvisibleControl()
                    model.fromMap(dict["BgInvisibleControl"] as! [String: Any])
                    self.bgInvisibleControl = model
                }
                if dict.keys.contains("BgVisibleControl") {
                    var model = CreateWmEmbedTaskRequest.DocumentControl.BackgroundControl.BgVisibleControl()
                    model.fromMap(dict["BgVisibleControl"] as! [String: Any])
                    self.bgVisibleControl = model
                }
            }
        }
        public var backgroundControl: CreateWmEmbedTaskRequest.DocumentControl.BackgroundControl?

        public var invisibleAntiAllCopy: Bool?

        public var invisibleAntiTextCopy: Bool?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.backgroundControl?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.backgroundControl != nil {
                map["BackgroundControl"] = self.backgroundControl?.toMap()
            }
            if self.invisibleAntiAllCopy != nil {
                map["InvisibleAntiAllCopy"] = self.invisibleAntiAllCopy!
            }
            if self.invisibleAntiTextCopy != nil {
                map["InvisibleAntiTextCopy"] = self.invisibleAntiTextCopy!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("BackgroundControl") {
                var model = CreateWmEmbedTaskRequest.DocumentControl.BackgroundControl()
                model.fromMap(dict["BackgroundControl"] as! [String: Any])
                self.backgroundControl = model
            }
            if dict.keys.contains("InvisibleAntiAllCopy") {
                self.invisibleAntiAllCopy = dict["InvisibleAntiAllCopy"] as! Bool
            }
            if dict.keys.contains("InvisibleAntiTextCopy") {
                self.invisibleAntiTextCopy = dict["InvisibleAntiTextCopy"] as! Bool
            }
        }
    }
    public var csvControl: CreateWmEmbedTaskRequest.CsvControl?

    public var documentControl: CreateWmEmbedTaskRequest.DocumentControl?

    public var fileUrl: String?

    public var filename: String?

    public var imageEmbedJpegQuality: Int64?

    public var imageEmbedLevel: Int64?

    public var videoBitrate: String?

    public var videoIsLong: Bool?

    public var wmInfoBytesB64: String?

    public var wmInfoSize: Int64?

    public var wmInfoUint: String?

    public var wmType: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.csvControl?.validate()
        try self.documentControl?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.csvControl != nil {
            map["CsvControl"] = self.csvControl?.toMap()
        }
        if self.documentControl != nil {
            map["DocumentControl"] = self.documentControl?.toMap()
        }
        if self.fileUrl != nil {
            map["FileUrl"] = self.fileUrl!
        }
        if self.filename != nil {
            map["Filename"] = self.filename!
        }
        if self.imageEmbedJpegQuality != nil {
            map["ImageEmbedJpegQuality"] = self.imageEmbedJpegQuality!
        }
        if self.imageEmbedLevel != nil {
            map["ImageEmbedLevel"] = self.imageEmbedLevel!
        }
        if self.videoBitrate != nil {
            map["VideoBitrate"] = self.videoBitrate!
        }
        if self.videoIsLong != nil {
            map["VideoIsLong"] = self.videoIsLong!
        }
        if self.wmInfoBytesB64 != nil {
            map["WmInfoBytesB64"] = self.wmInfoBytesB64!
        }
        if self.wmInfoSize != nil {
            map["WmInfoSize"] = self.wmInfoSize!
        }
        if self.wmInfoUint != nil {
            map["WmInfoUint"] = self.wmInfoUint!
        }
        if self.wmType != nil {
            map["WmType"] = self.wmType!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("CsvControl") {
            var model = CreateWmEmbedTaskRequest.CsvControl()
            model.fromMap(dict["CsvControl"] as! [String: Any])
            self.csvControl = model
        }
        if dict.keys.contains("DocumentControl") {
            var model = CreateWmEmbedTaskRequest.DocumentControl()
            model.fromMap(dict["DocumentControl"] as! [String: Any])
            self.documentControl = model
        }
        if dict.keys.contains("FileUrl") {
            self.fileUrl = dict["FileUrl"] as! String
        }
        if dict.keys.contains("Filename") {
            self.filename = dict["Filename"] as! String
        }
        if dict.keys.contains("ImageEmbedJpegQuality") {
            self.imageEmbedJpegQuality = dict["ImageEmbedJpegQuality"] as! Int64
        }
        if dict.keys.contains("ImageEmbedLevel") {
            self.imageEmbedLevel = dict["ImageEmbedLevel"] as! Int64
        }
        if dict.keys.contains("VideoBitrate") {
            self.videoBitrate = dict["VideoBitrate"] as! String
        }
        if dict.keys.contains("VideoIsLong") {
            self.videoIsLong = dict["VideoIsLong"] as! Bool
        }
        if dict.keys.contains("WmInfoBytesB64") {
            self.wmInfoBytesB64 = dict["WmInfoBytesB64"] as! String
        }
        if dict.keys.contains("WmInfoSize") {
            self.wmInfoSize = dict["WmInfoSize"] as! Int64
        }
        if dict.keys.contains("WmInfoUint") {
            self.wmInfoUint = dict["WmInfoUint"] as! String
        }
        if dict.keys.contains("WmType") {
            self.wmType = dict["WmType"] as! String
        }
    }
}

public class CreateWmEmbedTaskShrinkRequest : Tea.TeaModel {
    public var csvControlShrink: String?

    public var documentControlShrink: String?

    public var fileUrl: String?

    public var filename: String?

    public var imageEmbedJpegQuality: Int64?

    public var imageEmbedLevel: Int64?

    public var videoBitrate: String?

    public var videoIsLong: Bool?

    public var wmInfoBytesB64: String?

    public var wmInfoSize: Int64?

    public var wmInfoUint: String?

    public var wmType: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.csvControlShrink != nil {
            map["CsvControl"] = self.csvControlShrink!
        }
        if self.documentControlShrink != nil {
            map["DocumentControl"] = self.documentControlShrink!
        }
        if self.fileUrl != nil {
            map["FileUrl"] = self.fileUrl!
        }
        if self.filename != nil {
            map["Filename"] = self.filename!
        }
        if self.imageEmbedJpegQuality != nil {
            map["ImageEmbedJpegQuality"] = self.imageEmbedJpegQuality!
        }
        if self.imageEmbedLevel != nil {
            map["ImageEmbedLevel"] = self.imageEmbedLevel!
        }
        if self.videoBitrate != nil {
            map["VideoBitrate"] = self.videoBitrate!
        }
        if self.videoIsLong != nil {
            map["VideoIsLong"] = self.videoIsLong!
        }
        if self.wmInfoBytesB64 != nil {
            map["WmInfoBytesB64"] = self.wmInfoBytesB64!
        }
        if self.wmInfoSize != nil {
            map["WmInfoSize"] = self.wmInfoSize!
        }
        if self.wmInfoUint != nil {
            map["WmInfoUint"] = self.wmInfoUint!
        }
        if self.wmType != nil {
            map["WmType"] = self.wmType!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("CsvControl") {
            self.csvControlShrink = dict["CsvControl"] as! String
        }
        if dict.keys.contains("DocumentControl") {
            self.documentControlShrink = dict["DocumentControl"] as! String
        }
        if dict.keys.contains("FileUrl") {
            self.fileUrl = dict["FileUrl"] as! String
        }
        if dict.keys.contains("Filename") {
            self.filename = dict["Filename"] as! String
        }
        if dict.keys.contains("ImageEmbedJpegQuality") {
            self.imageEmbedJpegQuality = dict["ImageEmbedJpegQuality"] as! Int64
        }
        if dict.keys.contains("ImageEmbedLevel") {
            self.imageEmbedLevel = dict["ImageEmbedLevel"] as! Int64
        }
        if dict.keys.contains("VideoBitrate") {
            self.videoBitrate = dict["VideoBitrate"] as! String
        }
        if dict.keys.contains("VideoIsLong") {
            self.videoIsLong = dict["VideoIsLong"] as! Bool
        }
        if dict.keys.contains("WmInfoBytesB64") {
            self.wmInfoBytesB64 = dict["WmInfoBytesB64"] as! String
        }
        if dict.keys.contains("WmInfoSize") {
            self.wmInfoSize = dict["WmInfoSize"] as! Int64
        }
        if dict.keys.contains("WmInfoUint") {
            self.wmInfoUint = dict["WmInfoUint"] as! String
        }
        if dict.keys.contains("WmType") {
            self.wmType = dict["WmType"] as! String
        }
    }
}

public class CreateWmEmbedTaskResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
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
            if self.taskId != nil {
                map["TaskId"] = self.taskId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("TaskId") {
                self.taskId = dict["TaskId"] as! String
            }
        }
    }
    public var data: CreateWmEmbedTaskResponseBody.Data?

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
            var model = CreateWmEmbedTaskResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class CreateWmEmbedTaskResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateWmEmbedTaskResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = CreateWmEmbedTaskResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class CreateWmExtractTaskRequest : Tea.TeaModel {
    public class CsvControl : Tea.TeaModel {
        public var embedBitsNumberInEachTime: Int64?

        public var embedColumn: Int64?

        public var embedPrecision: Int64?

        public var embedTimePosition: String?

        public var method: String?

        public var timeFormat: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.embedBitsNumberInEachTime != nil {
                map["EmbedBitsNumberInEachTime"] = self.embedBitsNumberInEachTime!
            }
            if self.embedColumn != nil {
                map["EmbedColumn"] = self.embedColumn!
            }
            if self.embedPrecision != nil {
                map["EmbedPrecision"] = self.embedPrecision!
            }
            if self.embedTimePosition != nil {
                map["EmbedTimePosition"] = self.embedTimePosition!
            }
            if self.method != nil {
                map["Method"] = self.method!
            }
            if self.timeFormat != nil {
                map["TimeFormat"] = self.timeFormat!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("EmbedBitsNumberInEachTime") {
                self.embedBitsNumberInEachTime = dict["EmbedBitsNumberInEachTime"] as! Int64
            }
            if dict.keys.contains("EmbedColumn") {
                self.embedColumn = dict["EmbedColumn"] as! Int64
            }
            if dict.keys.contains("EmbedPrecision") {
                self.embedPrecision = dict["EmbedPrecision"] as! Int64
            }
            if dict.keys.contains("EmbedTimePosition") {
                self.embedTimePosition = dict["EmbedTimePosition"] as! String
            }
            if dict.keys.contains("Method") {
                self.method = dict["Method"] as! String
            }
            if dict.keys.contains("TimeFormat") {
                self.timeFormat = dict["TimeFormat"] as! String
            }
        }
    }
    public var csvControl: CreateWmExtractTaskRequest.CsvControl?

    public var documentIsCapture: Bool?

    public var fileUrl: String?

    public var filename: String?

    public var videoIsLong: Bool?

    public var videoSpeed: String?

    public var wmInfoSize: Int64?

    public var wmType: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.csvControl?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.csvControl != nil {
            map["CsvControl"] = self.csvControl?.toMap()
        }
        if self.documentIsCapture != nil {
            map["DocumentIsCapture"] = self.documentIsCapture!
        }
        if self.fileUrl != nil {
            map["FileUrl"] = self.fileUrl!
        }
        if self.filename != nil {
            map["Filename"] = self.filename!
        }
        if self.videoIsLong != nil {
            map["VideoIsLong"] = self.videoIsLong!
        }
        if self.videoSpeed != nil {
            map["VideoSpeed"] = self.videoSpeed!
        }
        if self.wmInfoSize != nil {
            map["WmInfoSize"] = self.wmInfoSize!
        }
        if self.wmType != nil {
            map["WmType"] = self.wmType!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("CsvControl") {
            var model = CreateWmExtractTaskRequest.CsvControl()
            model.fromMap(dict["CsvControl"] as! [String: Any])
            self.csvControl = model
        }
        if dict.keys.contains("DocumentIsCapture") {
            self.documentIsCapture = dict["DocumentIsCapture"] as! Bool
        }
        if dict.keys.contains("FileUrl") {
            self.fileUrl = dict["FileUrl"] as! String
        }
        if dict.keys.contains("Filename") {
            self.filename = dict["Filename"] as! String
        }
        if dict.keys.contains("VideoIsLong") {
            self.videoIsLong = dict["VideoIsLong"] as! Bool
        }
        if dict.keys.contains("VideoSpeed") {
            self.videoSpeed = dict["VideoSpeed"] as! String
        }
        if dict.keys.contains("WmInfoSize") {
            self.wmInfoSize = dict["WmInfoSize"] as! Int64
        }
        if dict.keys.contains("WmType") {
            self.wmType = dict["WmType"] as! String
        }
    }
}

public class CreateWmExtractTaskShrinkRequest : Tea.TeaModel {
    public var csvControlShrink: String?

    public var documentIsCapture: Bool?

    public var fileUrl: String?

    public var filename: String?

    public var videoIsLong: Bool?

    public var videoSpeed: String?

    public var wmInfoSize: Int64?

    public var wmType: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.csvControlShrink != nil {
            map["CsvControl"] = self.csvControlShrink!
        }
        if self.documentIsCapture != nil {
            map["DocumentIsCapture"] = self.documentIsCapture!
        }
        if self.fileUrl != nil {
            map["FileUrl"] = self.fileUrl!
        }
        if self.filename != nil {
            map["Filename"] = self.filename!
        }
        if self.videoIsLong != nil {
            map["VideoIsLong"] = self.videoIsLong!
        }
        if self.videoSpeed != nil {
            map["VideoSpeed"] = self.videoSpeed!
        }
        if self.wmInfoSize != nil {
            map["WmInfoSize"] = self.wmInfoSize!
        }
        if self.wmType != nil {
            map["WmType"] = self.wmType!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("CsvControl") {
            self.csvControlShrink = dict["CsvControl"] as! String
        }
        if dict.keys.contains("DocumentIsCapture") {
            self.documentIsCapture = dict["DocumentIsCapture"] as! Bool
        }
        if dict.keys.contains("FileUrl") {
            self.fileUrl = dict["FileUrl"] as! String
        }
        if dict.keys.contains("Filename") {
            self.filename = dict["Filename"] as! String
        }
        if dict.keys.contains("VideoIsLong") {
            self.videoIsLong = dict["VideoIsLong"] as! Bool
        }
        if dict.keys.contains("VideoSpeed") {
            self.videoSpeed = dict["VideoSpeed"] as! String
        }
        if dict.keys.contains("WmInfoSize") {
            self.wmInfoSize = dict["WmInfoSize"] as! Int64
        }
        if dict.keys.contains("WmType") {
            self.wmType = dict["WmType"] as! String
        }
    }
}

public class CreateWmExtractTaskResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
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
            if self.taskId != nil {
                map["TaskId"] = self.taskId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("TaskId") {
                self.taskId = dict["TaskId"] as! String
            }
        }
    }
    public var data: CreateWmExtractTaskResponseBody.Data?

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
            var model = CreateWmExtractTaskResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class CreateWmExtractTaskResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateWmExtractTaskResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = CreateWmExtractTaskResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class CreateWmInfoMappingRequest : Tea.TeaModel {
    public var wmInfoBytesB64: String?

    public var wmInfoSize: Int64?

    public var wmType: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.wmInfoBytesB64 != nil {
            map["WmInfoBytesB64"] = self.wmInfoBytesB64!
        }
        if self.wmInfoSize != nil {
            map["WmInfoSize"] = self.wmInfoSize!
        }
        if self.wmType != nil {
            map["WmType"] = self.wmType!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("WmInfoBytesB64") {
            self.wmInfoBytesB64 = dict["WmInfoBytesB64"] as! String
        }
        if dict.keys.contains("WmInfoSize") {
            self.wmInfoSize = dict["WmInfoSize"] as! Int64
        }
        if dict.keys.contains("WmType") {
            self.wmType = dict["WmType"] as! String
        }
    }
}

public class CreateWmInfoMappingResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var wmInfoUint: Int64?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.wmInfoUint != nil {
                map["WmInfoUint"] = self.wmInfoUint!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("WmInfoUint") {
                self.wmInfoUint = dict["WmInfoUint"] as! Int64
            }
        }
    }
    public var data: CreateWmInfoMappingResponseBody.Data?

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
            var model = CreateWmInfoMappingResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class CreateWmInfoMappingResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateWmInfoMappingResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = CreateWmInfoMappingResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DeleteApprovalProcessesRequest : Tea.TeaModel {
    public var processIds: [String]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.processIds != nil {
            map["ProcessIds"] = self.processIds!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ProcessIds") {
            self.processIds = dict["ProcessIds"] as! [String]
        }
    }
}

public class DeleteApprovalProcessesResponseBody : Tea.TeaModel {
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

public class DeleteApprovalProcessesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteApprovalProcessesResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = DeleteApprovalProcessesResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DeleteClientUserRequest : Tea.TeaModel {
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Id") {
            self.id = dict["Id"] as! String
        }
    }
}

public class DeleteClientUserResponseBody : Tea.TeaModel {
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

public class DeleteClientUserResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteClientUserResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = DeleteClientUserResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DeleteDynamicRouteRequest : Tea.TeaModel {
    public var dynamicRouteId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.dynamicRouteId != nil {
            map["DynamicRouteId"] = self.dynamicRouteId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DynamicRouteId") {
            self.dynamicRouteId = dict["DynamicRouteId"] as! String
        }
    }
}

public class DeleteDynamicRouteResponseBody : Tea.TeaModel {
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

public class DeleteDynamicRouteResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteDynamicRouteResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = DeleteDynamicRouteResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DeleteIdpDepartmentRequest : Tea.TeaModel {
    public var departmentId: String?

    public var idpConfigId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.departmentId != nil {
            map["DepartmentId"] = self.departmentId!
        }
        if self.idpConfigId != nil {
            map["IdpConfigId"] = self.idpConfigId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DepartmentId") {
            self.departmentId = dict["DepartmentId"] as! String
        }
        if dict.keys.contains("IdpConfigId") {
            self.idpConfigId = dict["IdpConfigId"] as! String
        }
    }
}

public class DeleteIdpDepartmentResponseBody : Tea.TeaModel {
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

public class DeleteIdpDepartmentResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteIdpDepartmentResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = DeleteIdpDepartmentResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DeletePrivateAccessApplicationRequest : Tea.TeaModel {
    public var applicationId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.applicationId != nil {
            map["ApplicationId"] = self.applicationId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ApplicationId") {
            self.applicationId = dict["ApplicationId"] as! String
        }
    }
}

public class DeletePrivateAccessApplicationResponseBody : Tea.TeaModel {
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

public class DeletePrivateAccessApplicationResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeletePrivateAccessApplicationResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = DeletePrivateAccessApplicationResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DeletePrivateAccessPolicyRequest : Tea.TeaModel {
    public var policyId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.policyId != nil {
            map["PolicyId"] = self.policyId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("PolicyId") {
            self.policyId = dict["PolicyId"] as! String
        }
    }
}

public class DeletePrivateAccessPolicyResponseBody : Tea.TeaModel {
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

public class DeletePrivateAccessPolicyResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeletePrivateAccessPolicyResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = DeletePrivateAccessPolicyResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DeletePrivateAccessTagRequest : Tea.TeaModel {
    public var tagId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.tagId != nil {
            map["TagId"] = self.tagId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("TagId") {
            self.tagId = dict["TagId"] as! String
        }
    }
}

public class DeletePrivateAccessTagResponseBody : Tea.TeaModel {
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

public class DeletePrivateAccessTagResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeletePrivateAccessTagResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = DeletePrivateAccessTagResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DeleteRegistrationPoliciesRequest : Tea.TeaModel {
    public var policyIds: [String]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.policyIds != nil {
            map["PolicyIds"] = self.policyIds!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("PolicyIds") {
            self.policyIds = dict["PolicyIds"] as! [String]
        }
    }
}

public class DeleteRegistrationPoliciesResponseBody : Tea.TeaModel {
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

public class DeleteRegistrationPoliciesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteRegistrationPoliciesResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = DeleteRegistrationPoliciesResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DeleteUserDevicesRequest : Tea.TeaModel {
    public var deviceTags: [String]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.deviceTags != nil {
            map["DeviceTags"] = self.deviceTags!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DeviceTags") {
            self.deviceTags = dict["DeviceTags"] as! [String]
        }
    }
}

public class DeleteUserDevicesResponseBody : Tea.TeaModel {
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

public class DeleteUserDevicesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteUserDevicesResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = DeleteUserDevicesResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DeleteUserGroupRequest : Tea.TeaModel {
    public var userGroupId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.userGroupId != nil {
            map["UserGroupId"] = self.userGroupId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("UserGroupId") {
            self.userGroupId = dict["UserGroupId"] as! String
        }
    }
}

public class DeleteUserGroupResponseBody : Tea.TeaModel {
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

public class DeleteUserGroupResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteUserGroupResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = DeleteUserGroupResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DetachApplication2ConnectorRequest : Tea.TeaModel {
    public var applicationIds: [String]?

    public var connectorId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.applicationIds != nil {
            map["ApplicationIds"] = self.applicationIds!
        }
        if self.connectorId != nil {
            map["ConnectorId"] = self.connectorId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ApplicationIds") {
            self.applicationIds = dict["ApplicationIds"] as! [String]
        }
        if dict.keys.contains("ConnectorId") {
            self.connectorId = dict["ConnectorId"] as! String
        }
    }
}

public class DetachApplication2ConnectorShrinkRequest : Tea.TeaModel {
    public var applicationIdsShrink: String?

    public var connectorId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.applicationIdsShrink != nil {
            map["ApplicationIds"] = self.applicationIdsShrink!
        }
        if self.connectorId != nil {
            map["ConnectorId"] = self.connectorId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ApplicationIds") {
            self.applicationIdsShrink = dict["ApplicationIds"] as! String
        }
        if dict.keys.contains("ConnectorId") {
            self.connectorId = dict["ConnectorId"] as! String
        }
    }
}

public class DetachApplication2ConnectorResponseBody : Tea.TeaModel {
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

public class DetachApplication2ConnectorResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DetachApplication2ConnectorResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = DetachApplication2ConnectorResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DetachPolicy2ApprovalProcessRequest : Tea.TeaModel {
    public var policyId: String?

    public var policyType: String?

    public var processId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.policyId != nil {
            map["PolicyId"] = self.policyId!
        }
        if self.policyType != nil {
            map["PolicyType"] = self.policyType!
        }
        if self.processId != nil {
            map["ProcessId"] = self.processId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("PolicyId") {
            self.policyId = dict["PolicyId"] as! String
        }
        if dict.keys.contains("PolicyType") {
            self.policyType = dict["PolicyType"] as! String
        }
        if dict.keys.contains("ProcessId") {
            self.processId = dict["ProcessId"] as! String
        }
    }
}

public class DetachPolicy2ApprovalProcessResponseBody : Tea.TeaModel {
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

public class DetachPolicy2ApprovalProcessResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DetachPolicy2ApprovalProcessResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = DetachPolicy2ApprovalProcessResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ExportUserDevicesRequest : Tea.TeaModel {
    public var appStatuses: [String]?

    public var department: String?

    public var deviceBelong: String?

    public var deviceStatuses: [String]?

    public var deviceTags: [String]?

    public var deviceTypes: [String]?

    public var dlpStatuses: [String]?

    public var hostname: String?

    public var iaStatuses: [String]?

    public var mac: String?

    public var nacStatuses: [String]?

    public var paStatuses: [String]?

    public var saseUserId: String?

    public var sharingStatus: Bool?

    public var username: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.appStatuses != nil {
            map["AppStatuses"] = self.appStatuses!
        }
        if self.department != nil {
            map["Department"] = self.department!
        }
        if self.deviceBelong != nil {
            map["DeviceBelong"] = self.deviceBelong!
        }
        if self.deviceStatuses != nil {
            map["DeviceStatuses"] = self.deviceStatuses!
        }
        if self.deviceTags != nil {
            map["DeviceTags"] = self.deviceTags!
        }
        if self.deviceTypes != nil {
            map["DeviceTypes"] = self.deviceTypes!
        }
        if self.dlpStatuses != nil {
            map["DlpStatuses"] = self.dlpStatuses!
        }
        if self.hostname != nil {
            map["Hostname"] = self.hostname!
        }
        if self.iaStatuses != nil {
            map["IaStatuses"] = self.iaStatuses!
        }
        if self.mac != nil {
            map["Mac"] = self.mac!
        }
        if self.nacStatuses != nil {
            map["NacStatuses"] = self.nacStatuses!
        }
        if self.paStatuses != nil {
            map["PaStatuses"] = self.paStatuses!
        }
        if self.saseUserId != nil {
            map["SaseUserId"] = self.saseUserId!
        }
        if self.sharingStatus != nil {
            map["SharingStatus"] = self.sharingStatus!
        }
        if self.username != nil {
            map["Username"] = self.username!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AppStatuses") {
            self.appStatuses = dict["AppStatuses"] as! [String]
        }
        if dict.keys.contains("Department") {
            self.department = dict["Department"] as! String
        }
        if dict.keys.contains("DeviceBelong") {
            self.deviceBelong = dict["DeviceBelong"] as! String
        }
        if dict.keys.contains("DeviceStatuses") {
            self.deviceStatuses = dict["DeviceStatuses"] as! [String]
        }
        if dict.keys.contains("DeviceTags") {
            self.deviceTags = dict["DeviceTags"] as! [String]
        }
        if dict.keys.contains("DeviceTypes") {
            self.deviceTypes = dict["DeviceTypes"] as! [String]
        }
        if dict.keys.contains("DlpStatuses") {
            self.dlpStatuses = dict["DlpStatuses"] as! [String]
        }
        if dict.keys.contains("Hostname") {
            self.hostname = dict["Hostname"] as! String
        }
        if dict.keys.contains("IaStatuses") {
            self.iaStatuses = dict["IaStatuses"] as! [String]
        }
        if dict.keys.contains("Mac") {
            self.mac = dict["Mac"] as! String
        }
        if dict.keys.contains("NacStatuses") {
            self.nacStatuses = dict["NacStatuses"] as! [String]
        }
        if dict.keys.contains("PaStatuses") {
            self.paStatuses = dict["PaStatuses"] as! [String]
        }
        if dict.keys.contains("SaseUserId") {
            self.saseUserId = dict["SaseUserId"] as! String
        }
        if dict.keys.contains("SharingStatus") {
            self.sharingStatus = dict["SharingStatus"] as! Bool
        }
        if dict.keys.contains("Username") {
            self.username = dict["Username"] as! String
        }
    }
}

public class ExportUserDevicesResponseBody : Tea.TeaModel {
    public var requestId: String?

    public var signedUrl: String?

    public override init() {
        super.init()
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
        if self.signedUrl != nil {
            map["SignedUrl"] = self.signedUrl!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("SignedUrl") {
            self.signedUrl = dict["SignedUrl"] as! String
        }
    }
}

public class ExportUserDevicesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ExportUserDevicesResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = ExportUserDevicesResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetActiveIdpConfigResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var description_: String?

        public var id: String?

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
            if self.description_ != nil {
                map["Description"] = self.description_!
            }
            if self.id != nil {
                map["Id"] = self.id!
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
            if dict.keys.contains("Description") {
                self.description_ = dict["Description"] as! String
            }
            if dict.keys.contains("Id") {
                self.id = dict["Id"] as! String
            }
            if dict.keys.contains("Name") {
                self.name = dict["Name"] as! String
            }
            if dict.keys.contains("Type") {
                self.type = dict["Type"] as! String
            }
        }
    }
    public var data: GetActiveIdpConfigResponseBody.Data?

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
            var model = GetActiveIdpConfigResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class GetActiveIdpConfigResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetActiveIdpConfigResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = GetActiveIdpConfigResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetApprovalRequest : Tea.TeaModel {
    public var approvalId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.approvalId != nil {
            map["ApprovalId"] = self.approvalId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ApprovalId") {
            self.approvalId = dict["ApprovalId"] as! String
        }
    }
}

public class GetApprovalResponseBody : Tea.TeaModel {
    public class Approval : Tea.TeaModel {
        public class ApprovalProgresses : Tea.TeaModel {
            public class Operators : Tea.TeaModel {
                public var saseUserId: String?

                public var username: String?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.saseUserId != nil {
                        map["SaseUserId"] = self.saseUserId!
                    }
                    if self.username != nil {
                        map["Username"] = self.username!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("SaseUserId") {
                        self.saseUserId = dict["SaseUserId"] as! String
                    }
                    if dict.keys.contains("Username") {
                        self.username = dict["Username"] as! String
                    }
                }
            }
            public var action: String?

            public var comment: String?

            public var executor: String?

            public var operators: [GetApprovalResponseBody.Approval.ApprovalProgresses.Operators]?

            public var status: String?

            public var timestamp: Int64?

            public override init() {
                super.init()
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
                if self.comment != nil {
                    map["Comment"] = self.comment!
                }
                if self.executor != nil {
                    map["Executor"] = self.executor!
                }
                if self.operators != nil {
                    var tmp : [Any] = []
                    for k in self.operators! {
                        tmp.append(k.toMap())
                    }
                    map["Operators"] = tmp
                }
                if self.status != nil {
                    map["Status"] = self.status!
                }
                if self.timestamp != nil {
                    map["Timestamp"] = self.timestamp!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("Action") {
                    self.action = dict["Action"] as! String
                }
                if dict.keys.contains("Comment") {
                    self.comment = dict["Comment"] as! String
                }
                if dict.keys.contains("Executor") {
                    self.executor = dict["Executor"] as! String
                }
                if dict.keys.contains("Operators") {
                    var tmp : [GetApprovalResponseBody.Approval.ApprovalProgresses.Operators] = []
                    for v in dict["Operators"] as! [Any] {
                        var model = GetApprovalResponseBody.Approval.ApprovalProgresses.Operators()
                        if v != nil {
                            model.fromMap(v as! [String: Any])
                        }
                        tmp.append(model)
                    }
                    self.operators = tmp
                }
                if dict.keys.contains("Status") {
                    self.status = dict["Status"] as! String
                }
                if dict.keys.contains("Timestamp") {
                    self.timestamp = dict["Timestamp"] as! Int64
                }
            }
        }
        public var approvalDetail: String?

        public var approvalId: String?

        public var approvalProgresses: [GetApprovalResponseBody.Approval.ApprovalProgresses]?

        public var createTime: String?

        public var creatorDepartment: String?

        public var creatorDevTag: String?

        public var creatorUserId: String?

        public var creatorUsername: String?

        public var endTimestamp: Int64?

        public var policyType: String?

        public var processId: String?

        public var processName: String?

        public var reason: String?

        public var schemaContent: String?

        public var schemaId: String?

        public var schemaName: String?

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
            if self.approvalDetail != nil {
                map["ApprovalDetail"] = self.approvalDetail!
            }
            if self.approvalId != nil {
                map["ApprovalId"] = self.approvalId!
            }
            if self.approvalProgresses != nil {
                var tmp : [Any] = []
                for k in self.approvalProgresses! {
                    tmp.append(k.toMap())
                }
                map["ApprovalProgresses"] = tmp
            }
            if self.createTime != nil {
                map["CreateTime"] = self.createTime!
            }
            if self.creatorDepartment != nil {
                map["CreatorDepartment"] = self.creatorDepartment!
            }
            if self.creatorDevTag != nil {
                map["CreatorDevTag"] = self.creatorDevTag!
            }
            if self.creatorUserId != nil {
                map["CreatorUserId"] = self.creatorUserId!
            }
            if self.creatorUsername != nil {
                map["CreatorUsername"] = self.creatorUsername!
            }
            if self.endTimestamp != nil {
                map["EndTimestamp"] = self.endTimestamp!
            }
            if self.policyType != nil {
                map["PolicyType"] = self.policyType!
            }
            if self.processId != nil {
                map["ProcessId"] = self.processId!
            }
            if self.processName != nil {
                map["ProcessName"] = self.processName!
            }
            if self.reason != nil {
                map["Reason"] = self.reason!
            }
            if self.schemaContent != nil {
                map["SchemaContent"] = self.schemaContent!
            }
            if self.schemaId != nil {
                map["SchemaId"] = self.schemaId!
            }
            if self.schemaName != nil {
                map["SchemaName"] = self.schemaName!
            }
            if self.status != nil {
                map["Status"] = self.status!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("ApprovalDetail") {
                self.approvalDetail = dict["ApprovalDetail"] as! String
            }
            if dict.keys.contains("ApprovalId") {
                self.approvalId = dict["ApprovalId"] as! String
            }
            if dict.keys.contains("ApprovalProgresses") {
                var tmp : [GetApprovalResponseBody.Approval.ApprovalProgresses] = []
                for v in dict["ApprovalProgresses"] as! [Any] {
                    var model = GetApprovalResponseBody.Approval.ApprovalProgresses()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.approvalProgresses = tmp
            }
            if dict.keys.contains("CreateTime") {
                self.createTime = dict["CreateTime"] as! String
            }
            if dict.keys.contains("CreatorDepartment") {
                self.creatorDepartment = dict["CreatorDepartment"] as! String
            }
            if dict.keys.contains("CreatorDevTag") {
                self.creatorDevTag = dict["CreatorDevTag"] as! String
            }
            if dict.keys.contains("CreatorUserId") {
                self.creatorUserId = dict["CreatorUserId"] as! String
            }
            if dict.keys.contains("CreatorUsername") {
                self.creatorUsername = dict["CreatorUsername"] as! String
            }
            if dict.keys.contains("EndTimestamp") {
                self.endTimestamp = dict["EndTimestamp"] as! Int64
            }
            if dict.keys.contains("PolicyType") {
                self.policyType = dict["PolicyType"] as! String
            }
            if dict.keys.contains("ProcessId") {
                self.processId = dict["ProcessId"] as! String
            }
            if dict.keys.contains("ProcessName") {
                self.processName = dict["ProcessName"] as! String
            }
            if dict.keys.contains("Reason") {
                self.reason = dict["Reason"] as! String
            }
            if dict.keys.contains("SchemaContent") {
                self.schemaContent = dict["SchemaContent"] as! String
            }
            if dict.keys.contains("SchemaId") {
                self.schemaId = dict["SchemaId"] as! String
            }
            if dict.keys.contains("SchemaName") {
                self.schemaName = dict["SchemaName"] as! String
            }
            if dict.keys.contains("Status") {
                self.status = dict["Status"] as! String
            }
        }
    }
    public var approval: [GetApprovalResponseBody.Approval]?

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
        if self.approval != nil {
            var tmp : [Any] = []
            for k in self.approval! {
                tmp.append(k.toMap())
            }
            map["Approval"] = tmp
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Approval") {
            var tmp : [GetApprovalResponseBody.Approval] = []
            for v in dict["Approval"] as! [Any] {
                var model = GetApprovalResponseBody.Approval()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.approval = tmp
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class GetApprovalResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetApprovalResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = GetApprovalResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetApprovalProcessRequest : Tea.TeaModel {
    public var processId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.processId != nil {
            map["ProcessId"] = self.processId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ProcessId") {
            self.processId = dict["ProcessId"] as! String
        }
    }
}

public class GetApprovalProcessResponseBody : Tea.TeaModel {
    public class Process : Tea.TeaModel {
        public class AppUninstallPolicies : Tea.TeaModel {
            public var policyIds: [String]?

            public var schemaId: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.policyIds != nil {
                    map["PolicyIds"] = self.policyIds!
                }
                if self.schemaId != nil {
                    map["SchemaId"] = self.schemaId!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("PolicyIds") {
                    self.policyIds = dict["PolicyIds"] as! [String]
                }
                if dict.keys.contains("SchemaId") {
                    self.schemaId = dict["SchemaId"] as! String
                }
            }
        }
        public class DeviceRegistrationPolicies : Tea.TeaModel {
            public var policyIds: [String]?

            public var schemaId: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.policyIds != nil {
                    map["PolicyIds"] = self.policyIds!
                }
                if self.schemaId != nil {
                    map["SchemaId"] = self.schemaId!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("PolicyIds") {
                    self.policyIds = dict["PolicyIds"] as! [String]
                }
                if dict.keys.contains("SchemaId") {
                    self.schemaId = dict["SchemaId"] as! String
                }
            }
        }
        public class DlpSendPolicies : Tea.TeaModel {
            public var policyIds: [String]?

            public var schemaId: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.policyIds != nil {
                    map["PolicyIds"] = self.policyIds!
                }
                if self.schemaId != nil {
                    map["SchemaId"] = self.schemaId!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("PolicyIds") {
                    self.policyIds = dict["PolicyIds"] as! [String]
                }
                if dict.keys.contains("SchemaId") {
                    self.schemaId = dict["SchemaId"] as! String
                }
            }
        }
        public class DomainBlacklistPolicies : Tea.TeaModel {
            public var policyIds: [String]?

            public var schemaId: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.policyIds != nil {
                    map["PolicyIds"] = self.policyIds!
                }
                if self.schemaId != nil {
                    map["SchemaId"] = self.schemaId!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("PolicyIds") {
                    self.policyIds = dict["PolicyIds"] as! [String]
                }
                if dict.keys.contains("SchemaId") {
                    self.schemaId = dict["SchemaId"] as! String
                }
            }
        }
        public class DomainWhitelistPolicies : Tea.TeaModel {
            public var policyIds: [String]?

            public var schemaId: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.policyIds != nil {
                    map["PolicyIds"] = self.policyIds!
                }
                if self.schemaId != nil {
                    map["SchemaId"] = self.schemaId!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("PolicyIds") {
                    self.policyIds = dict["PolicyIds"] as! [String]
                }
                if dict.keys.contains("SchemaId") {
                    self.schemaId = dict["SchemaId"] as! String
                }
            }
        }
        public class PeripheralBlockPolicies : Tea.TeaModel {
            public var policyIds: [String]?

            public var schemaId: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.policyIds != nil {
                    map["PolicyIds"] = self.policyIds!
                }
                if self.schemaId != nil {
                    map["SchemaId"] = self.schemaId!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("PolicyIds") {
                    self.policyIds = dict["PolicyIds"] as! [String]
                }
                if dict.keys.contains("SchemaId") {
                    self.schemaId = dict["SchemaId"] as! String
                }
            }
        }
        public class ProcessNodes : Tea.TeaModel {
            public var saseUserId: String?

            public var username: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.saseUserId != nil {
                    map["SaseUserId"] = self.saseUserId!
                }
                if self.username != nil {
                    map["Username"] = self.username!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("SaseUserId") {
                    self.saseUserId = dict["SaseUserId"] as! String
                }
                if dict.keys.contains("Username") {
                    self.username = dict["Username"] as! String
                }
            }
        }
        public class SoftwareBlockPolicies : Tea.TeaModel {
            public var policyIds: [String]?

            public var schemaId: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.policyIds != nil {
                    map["PolicyIds"] = self.policyIds!
                }
                if self.schemaId != nil {
                    map["SchemaId"] = self.schemaId!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("PolicyIds") {
                    self.policyIds = dict["PolicyIds"] as! [String]
                }
                if dict.keys.contains("SchemaId") {
                    self.schemaId = dict["SchemaId"] as! String
                }
            }
        }
        public var appUninstallPolicies: GetApprovalProcessResponseBody.Process.AppUninstallPolicies?

        public var createTime: String?

        public var description_: String?

        public var deviceRegistrationPolicies: GetApprovalProcessResponseBody.Process.DeviceRegistrationPolicies?

        public var dlpSendPolicies: GetApprovalProcessResponseBody.Process.DlpSendPolicies?

        public var domainBlacklistPolicies: GetApprovalProcessResponseBody.Process.DomainBlacklistPolicies?

        public var domainWhitelistPolicies: GetApprovalProcessResponseBody.Process.DomainWhitelistPolicies?

        public var peripheralBlockPolicies: GetApprovalProcessResponseBody.Process.PeripheralBlockPolicies?

        public var processId: String?

        public var processName: String?

        public var processNodes: [[GetApprovalProcessResponseBody.Process.ProcessNodes]]?

        public var softwareBlockPolicies: GetApprovalProcessResponseBody.Process.SoftwareBlockPolicies?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.appUninstallPolicies?.validate()
            try self.deviceRegistrationPolicies?.validate()
            try self.dlpSendPolicies?.validate()
            try self.domainBlacklistPolicies?.validate()
            try self.domainWhitelistPolicies?.validate()
            try self.peripheralBlockPolicies?.validate()
            try self.softwareBlockPolicies?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.appUninstallPolicies != nil {
                map["AppUninstallPolicies"] = self.appUninstallPolicies?.toMap()
            }
            if self.createTime != nil {
                map["CreateTime"] = self.createTime!
            }
            if self.description_ != nil {
                map["Description"] = self.description_!
            }
            if self.deviceRegistrationPolicies != nil {
                map["DeviceRegistrationPolicies"] = self.deviceRegistrationPolicies?.toMap()
            }
            if self.dlpSendPolicies != nil {
                map["DlpSendPolicies"] = self.dlpSendPolicies?.toMap()
            }
            if self.domainBlacklistPolicies != nil {
                map["DomainBlacklistPolicies"] = self.domainBlacklistPolicies?.toMap()
            }
            if self.domainWhitelistPolicies != nil {
                map["DomainWhitelistPolicies"] = self.domainWhitelistPolicies?.toMap()
            }
            if self.peripheralBlockPolicies != nil {
                map["PeripheralBlockPolicies"] = self.peripheralBlockPolicies?.toMap()
            }
            if self.processId != nil {
                map["ProcessId"] = self.processId!
            }
            if self.processName != nil {
                map["ProcessName"] = self.processName!
            }
            if self.processNodes != nil {
                var tmp : [Any] = []
                for k in self.processNodes! {
                    var l1 : [Any] = []
                    for k1 in k {
                        l1.append(k1.toMap())
                    }
                    tmp.append(l1)
                }
                map["ProcessNodes"] = tmp
            }
            if self.softwareBlockPolicies != nil {
                map["SoftwareBlockPolicies"] = self.softwareBlockPolicies?.toMap()
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("AppUninstallPolicies") {
                var model = GetApprovalProcessResponseBody.Process.AppUninstallPolicies()
                model.fromMap(dict["AppUninstallPolicies"] as! [String: Any])
                self.appUninstallPolicies = model
            }
            if dict.keys.contains("CreateTime") {
                self.createTime = dict["CreateTime"] as! String
            }
            if dict.keys.contains("Description") {
                self.description_ = dict["Description"] as! String
            }
            if dict.keys.contains("DeviceRegistrationPolicies") {
                var model = GetApprovalProcessResponseBody.Process.DeviceRegistrationPolicies()
                model.fromMap(dict["DeviceRegistrationPolicies"] as! [String: Any])
                self.deviceRegistrationPolicies = model
            }
            if dict.keys.contains("DlpSendPolicies") {
                var model = GetApprovalProcessResponseBody.Process.DlpSendPolicies()
                model.fromMap(dict["DlpSendPolicies"] as! [String: Any])
                self.dlpSendPolicies = model
            }
            if dict.keys.contains("DomainBlacklistPolicies") {
                var model = GetApprovalProcessResponseBody.Process.DomainBlacklistPolicies()
                model.fromMap(dict["DomainBlacklistPolicies"] as! [String: Any])
                self.domainBlacklistPolicies = model
            }
            if dict.keys.contains("DomainWhitelistPolicies") {
                var model = GetApprovalProcessResponseBody.Process.DomainWhitelistPolicies()
                model.fromMap(dict["DomainWhitelistPolicies"] as! [String: Any])
                self.domainWhitelistPolicies = model
            }
            if dict.keys.contains("PeripheralBlockPolicies") {
                var model = GetApprovalProcessResponseBody.Process.PeripheralBlockPolicies()
                model.fromMap(dict["PeripheralBlockPolicies"] as! [String: Any])
                self.peripheralBlockPolicies = model
            }
            if dict.keys.contains("ProcessId") {
                self.processId = dict["ProcessId"] as! String
            }
            if dict.keys.contains("ProcessName") {
                self.processName = dict["ProcessName"] as! String
            }
            if dict.keys.contains("ProcessNodes") {
                var tmp : [[GetApprovalProcessResponseBody.Process.ProcessNodes]] = []
                for v in dict["ProcessNodes"] as! [Any] {
                    var l1 : [GetApprovalProcessResponseBody.Process.ProcessNodes] = []
                    for v1 in v as! [Any] {
                        var model = GetApprovalProcessResponseBody.Process.ProcessNodes()
                        if v1 != nil {
                            model.fromMap(v1 as! [String: Any])
                        }
                        l1.append(model)
                    }
                    tmp.append(l1)
                }
                self.processNodes = tmp
            }
            if dict.keys.contains("SoftwareBlockPolicies") {
                var model = GetApprovalProcessResponseBody.Process.SoftwareBlockPolicies()
                model.fromMap(dict["SoftwareBlockPolicies"] as! [String: Any])
                self.softwareBlockPolicies = model
            }
        }
    }
    public var process: GetApprovalProcessResponseBody.Process?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.process?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.process != nil {
            map["Process"] = self.process?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Process") {
            var model = GetApprovalProcessResponseBody.Process()
            model.fromMap(dict["Process"] as! [String: Any])
            self.process = model
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class GetApprovalProcessResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetApprovalProcessResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = GetApprovalProcessResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetApprovalSchemaRequest : Tea.TeaModel {
    public var schemaId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.schemaId != nil {
            map["SchemaId"] = self.schemaId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("SchemaId") {
            self.schemaId = dict["SchemaId"] as! String
        }
    }
}

public class GetApprovalSchemaResponseBody : Tea.TeaModel {
    public class Schema : Tea.TeaModel {
        public var createTime: String?

        public var description_: String?

        public var isDefault: Bool?

        public var policyType: String?

        public var schemaContent: String?

        public var schemaId: String?

        public var schemaName: String?

        public var schemaVersion: Int64?

        public override init() {
            super.init()
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
            if self.description_ != nil {
                map["Description"] = self.description_!
            }
            if self.isDefault != nil {
                map["IsDefault"] = self.isDefault!
            }
            if self.policyType != nil {
                map["PolicyType"] = self.policyType!
            }
            if self.schemaContent != nil {
                map["SchemaContent"] = self.schemaContent!
            }
            if self.schemaId != nil {
                map["SchemaId"] = self.schemaId!
            }
            if self.schemaName != nil {
                map["SchemaName"] = self.schemaName!
            }
            if self.schemaVersion != nil {
                map["SchemaVersion"] = self.schemaVersion!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("CreateTime") {
                self.createTime = dict["CreateTime"] as! String
            }
            if dict.keys.contains("Description") {
                self.description_ = dict["Description"] as! String
            }
            if dict.keys.contains("IsDefault") {
                self.isDefault = dict["IsDefault"] as! Bool
            }
            if dict.keys.contains("PolicyType") {
                self.policyType = dict["PolicyType"] as! String
            }
            if dict.keys.contains("SchemaContent") {
                self.schemaContent = dict["SchemaContent"] as! String
            }
            if dict.keys.contains("SchemaId") {
                self.schemaId = dict["SchemaId"] as! String
            }
            if dict.keys.contains("SchemaName") {
                self.schemaName = dict["SchemaName"] as! String
            }
            if dict.keys.contains("SchemaVersion") {
                self.schemaVersion = dict["SchemaVersion"] as! Int64
            }
        }
    }
    public var requestId: String?

    public var schema: GetApprovalSchemaResponseBody.Schema?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.schema?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.schema != nil {
            map["Schema"] = self.schema?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Schema") {
            var model = GetApprovalSchemaResponseBody.Schema()
            model.fromMap(dict["Schema"] as! [String: Any])
            self.schema = model
        }
    }
}

public class GetApprovalSchemaResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetApprovalSchemaResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = GetApprovalSchemaResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetBootAndAntiUninstallPolicyResponseBody : Tea.TeaModel {
    public class Strategy : Tea.TeaModel {
        public class BlockContent : Tea.TeaModel {
            public class BlockTextEn : Tea.TeaModel {
                public var content: String?

                public var mainButtonText: String?

                public var minorButtonText: String?

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
                    if self.content != nil {
                        map["Content"] = self.content!
                    }
                    if self.mainButtonText != nil {
                        map["MainButtonText"] = self.mainButtonText!
                    }
                    if self.minorButtonText != nil {
                        map["MinorButtonText"] = self.minorButtonText!
                    }
                    if self.title != nil {
                        map["Title"] = self.title!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("Content") {
                        self.content = dict["Content"] as! String
                    }
                    if dict.keys.contains("MainButtonText") {
                        self.mainButtonText = dict["MainButtonText"] as! String
                    }
                    if dict.keys.contains("MinorButtonText") {
                        self.minorButtonText = dict["MinorButtonText"] as! String
                    }
                    if dict.keys.contains("Title") {
                        self.title = dict["Title"] as! String
                    }
                }
            }
            public class BlockTextZh : Tea.TeaModel {
                public var content: String?

                public var mainButtonText: String?

                public var minorButtonText: String?

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
                    if self.content != nil {
                        map["Content"] = self.content!
                    }
                    if self.mainButtonText != nil {
                        map["MainButtonText"] = self.mainButtonText!
                    }
                    if self.minorButtonText != nil {
                        map["MinorButtonText"] = self.minorButtonText!
                    }
                    if self.title != nil {
                        map["Title"] = self.title!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("Content") {
                        self.content = dict["Content"] as! String
                    }
                    if dict.keys.contains("MainButtonText") {
                        self.mainButtonText = dict["MainButtonText"] as! String
                    }
                    if dict.keys.contains("MinorButtonText") {
                        self.minorButtonText = dict["MinorButtonText"] as! String
                    }
                    if dict.keys.contains("Title") {
                        self.title = dict["Title"] as! String
                    }
                }
            }
            public var blockTextEn: GetBootAndAntiUninstallPolicyResponseBody.Strategy.BlockContent.BlockTextEn?

            public var blockTextZh: GetBootAndAntiUninstallPolicyResponseBody.Strategy.BlockContent.BlockTextZh?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
                try self.blockTextEn?.validate()
                try self.blockTextZh?.validate()
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.blockTextEn != nil {
                    map["BlockTextEn"] = self.blockTextEn?.toMap()
                }
                if self.blockTextZh != nil {
                    map["BlockTextZh"] = self.blockTextZh?.toMap()
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("BlockTextEn") {
                    var model = GetBootAndAntiUninstallPolicyResponseBody.Strategy.BlockContent.BlockTextEn()
                    model.fromMap(dict["BlockTextEn"] as! [String: Any])
                    self.blockTextEn = model
                }
                if dict.keys.contains("BlockTextZh") {
                    var model = GetBootAndAntiUninstallPolicyResponseBody.Strategy.BlockContent.BlockTextZh()
                    model.fromMap(dict["BlockTextZh"] as! [String: Any])
                    self.blockTextZh = model
                }
            }
        }
        public var allowReport: Bool?

        public var blockContent: GetBootAndAntiUninstallPolicyResponseBody.Strategy.BlockContent?

        public var createTime: String?

        public var isAntiUninstall: Bool?

        public var isBoot: Bool?

        public var policyId: String?

        public var reportProcessId: String?

        public var updateTime: String?

        public var userGroupIds: [String]?

        public var whitelistUsers: [String]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.blockContent?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.allowReport != nil {
                map["AllowReport"] = self.allowReport!
            }
            if self.blockContent != nil {
                map["BlockContent"] = self.blockContent?.toMap()
            }
            if self.createTime != nil {
                map["CreateTime"] = self.createTime!
            }
            if self.isAntiUninstall != nil {
                map["IsAntiUninstall"] = self.isAntiUninstall!
            }
            if self.isBoot != nil {
                map["IsBoot"] = self.isBoot!
            }
            if self.policyId != nil {
                map["PolicyId"] = self.policyId!
            }
            if self.reportProcessId != nil {
                map["ReportProcessId"] = self.reportProcessId!
            }
            if self.updateTime != nil {
                map["UpdateTime"] = self.updateTime!
            }
            if self.userGroupIds != nil {
                map["UserGroupIds"] = self.userGroupIds!
            }
            if self.whitelistUsers != nil {
                map["WhitelistUsers"] = self.whitelistUsers!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("AllowReport") {
                self.allowReport = dict["AllowReport"] as! Bool
            }
            if dict.keys.contains("BlockContent") {
                var model = GetBootAndAntiUninstallPolicyResponseBody.Strategy.BlockContent()
                model.fromMap(dict["BlockContent"] as! [String: Any])
                self.blockContent = model
            }
            if dict.keys.contains("CreateTime") {
                self.createTime = dict["CreateTime"] as! String
            }
            if dict.keys.contains("IsAntiUninstall") {
                self.isAntiUninstall = dict["IsAntiUninstall"] as! Bool
            }
            if dict.keys.contains("IsBoot") {
                self.isBoot = dict["IsBoot"] as! Bool
            }
            if dict.keys.contains("PolicyId") {
                self.policyId = dict["PolicyId"] as! String
            }
            if dict.keys.contains("ReportProcessId") {
                self.reportProcessId = dict["ReportProcessId"] as! String
            }
            if dict.keys.contains("UpdateTime") {
                self.updateTime = dict["UpdateTime"] as! String
            }
            if dict.keys.contains("UserGroupIds") {
                self.userGroupIds = dict["UserGroupIds"] as! [String]
            }
            if dict.keys.contains("WhitelistUsers") {
                self.whitelistUsers = dict["WhitelistUsers"] as! [String]
            }
        }
    }
    public var requestId: String?

    public var strategy: GetBootAndAntiUninstallPolicyResponseBody.Strategy?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.strategy?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.strategy != nil {
            map["Strategy"] = self.strategy?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Strategy") {
            var model = GetBootAndAntiUninstallPolicyResponseBody.Strategy()
            model.fromMap(dict["Strategy"] as! [String: Any])
            self.strategy = model
        }
    }
}

public class GetBootAndAntiUninstallPolicyResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetBootAndAntiUninstallPolicyResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = GetBootAndAntiUninstallPolicyResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetClientUserRequest : Tea.TeaModel {
    public var idpConfigId: String?

    public var username: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.idpConfigId != nil {
            map["IdpConfigId"] = self.idpConfigId!
        }
        if self.username != nil {
            map["Username"] = self.username!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("IdpConfigId") {
            self.idpConfigId = dict["IdpConfigId"] as! String
        }
        if dict.keys.contains("Username") {
            self.username = dict["Username"] as! String
        }
    }
}

public class GetClientUserResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class Department : Tea.TeaModel {
            public var id: String?

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
                if self.id != nil {
                    map["Id"] = self.id!
                }
                if self.name != nil {
                    map["Name"] = self.name!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("Id") {
                    self.id = dict["Id"] as! String
                }
                if dict.keys.contains("Name") {
                    self.name = dict["Name"] as! String
                }
            }
        }
        public var department: GetClientUserResponseBody.Data.Department?

        public var departmentId: String?

        public var description_: String?

        public var email: String?

        public var id: String?

        public var idpConfigId: String?

        public var mobileNumber: String?

        public var status: String?

        public var userId: String?

        public var username: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.department?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.department != nil {
                map["Department"] = self.department?.toMap()
            }
            if self.departmentId != nil {
                map["DepartmentId"] = self.departmentId!
            }
            if self.description_ != nil {
                map["Description"] = self.description_!
            }
            if self.email != nil {
                map["Email"] = self.email!
            }
            if self.id != nil {
                map["Id"] = self.id!
            }
            if self.idpConfigId != nil {
                map["IdpConfigId"] = self.idpConfigId!
            }
            if self.mobileNumber != nil {
                map["MobileNumber"] = self.mobileNumber!
            }
            if self.status != nil {
                map["Status"] = self.status!
            }
            if self.userId != nil {
                map["UserId"] = self.userId!
            }
            if self.username != nil {
                map["Username"] = self.username!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Department") {
                var model = GetClientUserResponseBody.Data.Department()
                model.fromMap(dict["Department"] as! [String: Any])
                self.department = model
            }
            if dict.keys.contains("DepartmentId") {
                self.departmentId = dict["DepartmentId"] as! String
            }
            if dict.keys.contains("Description") {
                self.description_ = dict["Description"] as! String
            }
            if dict.keys.contains("Email") {
                self.email = dict["Email"] as! String
            }
            if dict.keys.contains("Id") {
                self.id = dict["Id"] as! String
            }
            if dict.keys.contains("IdpConfigId") {
                self.idpConfigId = dict["IdpConfigId"] as! String
            }
            if dict.keys.contains("MobileNumber") {
                self.mobileNumber = dict["MobileNumber"] as! String
            }
            if dict.keys.contains("Status") {
                self.status = dict["Status"] as! String
            }
            if dict.keys.contains("UserId") {
                self.userId = dict["UserId"] as! String
            }
            if dict.keys.contains("Username") {
                self.username = dict["Username"] as! String
            }
        }
    }
    public var data: GetClientUserResponseBody.Data?

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
            var model = GetClientUserResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class GetClientUserResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetClientUserResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = GetClientUserResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetDynamicRouteRequest : Tea.TeaModel {
    public var dynamicRouteId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.dynamicRouteId != nil {
            map["DynamicRouteId"] = self.dynamicRouteId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DynamicRouteId") {
            self.dynamicRouteId = dict["DynamicRouteId"] as! String
        }
    }
}

public class GetDynamicRouteResponseBody : Tea.TeaModel {
    public class DynamicRoute : Tea.TeaModel {
        public var applicationIds: [String]?

        public var applicationType: String?

        public var createTime: String?

        public var description_: String?

        public var dynamicRouteId: String?

        public var dynamicRouteType: String?

        public var name: String?

        public var nextHop: String?

        public var priority: Int32?

        public var regionIds: [String]?

        public var status: String?

        public var tagIds: [String]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.applicationIds != nil {
                map["ApplicationIds"] = self.applicationIds!
            }
            if self.applicationType != nil {
                map["ApplicationType"] = self.applicationType!
            }
            if self.createTime != nil {
                map["CreateTime"] = self.createTime!
            }
            if self.description_ != nil {
                map["Description"] = self.description_!
            }
            if self.dynamicRouteId != nil {
                map["DynamicRouteId"] = self.dynamicRouteId!
            }
            if self.dynamicRouteType != nil {
                map["DynamicRouteType"] = self.dynamicRouteType!
            }
            if self.name != nil {
                map["Name"] = self.name!
            }
            if self.nextHop != nil {
                map["NextHop"] = self.nextHop!
            }
            if self.priority != nil {
                map["Priority"] = self.priority!
            }
            if self.regionIds != nil {
                map["RegionIds"] = self.regionIds!
            }
            if self.status != nil {
                map["Status"] = self.status!
            }
            if self.tagIds != nil {
                map["TagIds"] = self.tagIds!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("ApplicationIds") {
                self.applicationIds = dict["ApplicationIds"] as! [String]
            }
            if dict.keys.contains("ApplicationType") {
                self.applicationType = dict["ApplicationType"] as! String
            }
            if dict.keys.contains("CreateTime") {
                self.createTime = dict["CreateTime"] as! String
            }
            if dict.keys.contains("Description") {
                self.description_ = dict["Description"] as! String
            }
            if dict.keys.contains("DynamicRouteId") {
                self.dynamicRouteId = dict["DynamicRouteId"] as! String
            }
            if dict.keys.contains("DynamicRouteType") {
                self.dynamicRouteType = dict["DynamicRouteType"] as! String
            }
            if dict.keys.contains("Name") {
                self.name = dict["Name"] as! String
            }
            if dict.keys.contains("NextHop") {
                self.nextHop = dict["NextHop"] as! String
            }
            if dict.keys.contains("Priority") {
                self.priority = dict["Priority"] as! Int32
            }
            if dict.keys.contains("RegionIds") {
                self.regionIds = dict["RegionIds"] as! [String]
            }
            if dict.keys.contains("Status") {
                self.status = dict["Status"] as! String
            }
            if dict.keys.contains("TagIds") {
                self.tagIds = dict["TagIds"] as! [String]
            }
        }
    }
    public var dynamicRoute: GetDynamicRouteResponseBody.DynamicRoute?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.dynamicRoute?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.dynamicRoute != nil {
            map["DynamicRoute"] = self.dynamicRoute?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DynamicRoute") {
            var model = GetDynamicRouteResponseBody.DynamicRoute()
            model.fromMap(dict["DynamicRoute"] as! [String: Any])
            self.dynamicRoute = model
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class GetDynamicRouteResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetDynamicRouteResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = GetDynamicRouteResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetIdpConfigRequest : Tea.TeaModel {
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Id") {
            self.id = dict["Id"] as! String
        }
    }
}

public class GetIdpConfigResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var accessKey: String?

        public var accessKeySecret: String?

        public var description_: String?

        public var getGroupUrl: String?

        public var id: String?

        public var idpMetadata: String?

        public var mfaConfigType: String?

        public var mobileLoginType: String?

        public var mobileMfaConfigType: String?

        public var multiIdpInfo: String?

        public var name: String?

        public var pcLoginType: String?

        public var status: String?

        public var type: String?

        public var updateTime: String?

        public var verifyAesKey: String?

        public var verifyToken: String?

        public var verifyUrl: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.accessKey != nil {
                map["AccessKey"] = self.accessKey!
            }
            if self.accessKeySecret != nil {
                map["AccessKeySecret"] = self.accessKeySecret!
            }
            if self.description_ != nil {
                map["Description"] = self.description_!
            }
            if self.getGroupUrl != nil {
                map["GetGroupUrl"] = self.getGroupUrl!
            }
            if self.id != nil {
                map["Id"] = self.id!
            }
            if self.idpMetadata != nil {
                map["IdpMetadata"] = self.idpMetadata!
            }
            if self.mfaConfigType != nil {
                map["MfaConfigType"] = self.mfaConfigType!
            }
            if self.mobileLoginType != nil {
                map["MobileLoginType"] = self.mobileLoginType!
            }
            if self.mobileMfaConfigType != nil {
                map["MobileMfaConfigType"] = self.mobileMfaConfigType!
            }
            if self.multiIdpInfo != nil {
                map["MultiIdpInfo"] = self.multiIdpInfo!
            }
            if self.name != nil {
                map["Name"] = self.name!
            }
            if self.pcLoginType != nil {
                map["PcLoginType"] = self.pcLoginType!
            }
            if self.status != nil {
                map["Status"] = self.status!
            }
            if self.type != nil {
                map["Type"] = self.type!
            }
            if self.updateTime != nil {
                map["UpdateTime"] = self.updateTime!
            }
            if self.verifyAesKey != nil {
                map["VerifyAesKey"] = self.verifyAesKey!
            }
            if self.verifyToken != nil {
                map["VerifyToken"] = self.verifyToken!
            }
            if self.verifyUrl != nil {
                map["VerifyUrl"] = self.verifyUrl!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("AccessKey") {
                self.accessKey = dict["AccessKey"] as! String
            }
            if dict.keys.contains("AccessKeySecret") {
                self.accessKeySecret = dict["AccessKeySecret"] as! String
            }
            if dict.keys.contains("Description") {
                self.description_ = dict["Description"] as! String
            }
            if dict.keys.contains("GetGroupUrl") {
                self.getGroupUrl = dict["GetGroupUrl"] as! String
            }
            if dict.keys.contains("Id") {
                self.id = dict["Id"] as! String
            }
            if dict.keys.contains("IdpMetadata") {
                self.idpMetadata = dict["IdpMetadata"] as! String
            }
            if dict.keys.contains("MfaConfigType") {
                self.mfaConfigType = dict["MfaConfigType"] as! String
            }
            if dict.keys.contains("MobileLoginType") {
                self.mobileLoginType = dict["MobileLoginType"] as! String
            }
            if dict.keys.contains("MobileMfaConfigType") {
                self.mobileMfaConfigType = dict["MobileMfaConfigType"] as! String
            }
            if dict.keys.contains("MultiIdpInfo") {
                self.multiIdpInfo = dict["MultiIdpInfo"] as! String
            }
            if dict.keys.contains("Name") {
                self.name = dict["Name"] as! String
            }
            if dict.keys.contains("PcLoginType") {
                self.pcLoginType = dict["PcLoginType"] as! String
            }
            if dict.keys.contains("Status") {
                self.status = dict["Status"] as! String
            }
            if dict.keys.contains("Type") {
                self.type = dict["Type"] as! String
            }
            if dict.keys.contains("UpdateTime") {
                self.updateTime = dict["UpdateTime"] as! String
            }
            if dict.keys.contains("VerifyAesKey") {
                self.verifyAesKey = dict["VerifyAesKey"] as! String
            }
            if dict.keys.contains("VerifyToken") {
                self.verifyToken = dict["VerifyToken"] as! String
            }
            if dict.keys.contains("VerifyUrl") {
                self.verifyUrl = dict["VerifyUrl"] as! String
            }
        }
    }
    public var data: GetIdpConfigResponseBody.Data?

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
            var model = GetIdpConfigResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class GetIdpConfigResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetIdpConfigResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = GetIdpConfigResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetPrivateAccessApplicationRequest : Tea.TeaModel {
    public var applicationId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.applicationId != nil {
            map["ApplicationId"] = self.applicationId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ApplicationId") {
            self.applicationId = dict["ApplicationId"] as! String
        }
    }
}

public class GetPrivateAccessApplicationResponseBody : Tea.TeaModel {
    public class Application : Tea.TeaModel {
        public class PortRanges : Tea.TeaModel {
            public var begin: Int32?

            public var end: Int32?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.begin != nil {
                    map["Begin"] = self.begin!
                }
                if self.end != nil {
                    map["End"] = self.end!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("Begin") {
                    self.begin = dict["Begin"] as! Int32
                }
                if dict.keys.contains("End") {
                    self.end = dict["End"] as! Int32
                }
            }
        }
        public var addresses: [String]?

        public var applicationId: String?

        public var browserAccessStatus: String?

        public var connectorIds: [String]?

        public var createTime: String?

        public var description_: String?

        public var l7ProxyDomainAutomatic: String?

        public var l7ProxyDomainCustom: String?

        public var name: String?

        public var policyIds: [String]?

        public var portRanges: [GetPrivateAccessApplicationResponseBody.Application.PortRanges]?

        public var protocol_: String?

        public var status: String?

        public var tagIds: [String]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.addresses != nil {
                map["Addresses"] = self.addresses!
            }
            if self.applicationId != nil {
                map["ApplicationId"] = self.applicationId!
            }
            if self.browserAccessStatus != nil {
                map["BrowserAccessStatus"] = self.browserAccessStatus!
            }
            if self.connectorIds != nil {
                map["ConnectorIds"] = self.connectorIds!
            }
            if self.createTime != nil {
                map["CreateTime"] = self.createTime!
            }
            if self.description_ != nil {
                map["Description"] = self.description_!
            }
            if self.l7ProxyDomainAutomatic != nil {
                map["L7ProxyDomainAutomatic"] = self.l7ProxyDomainAutomatic!
            }
            if self.l7ProxyDomainCustom != nil {
                map["L7ProxyDomainCustom"] = self.l7ProxyDomainCustom!
            }
            if self.name != nil {
                map["Name"] = self.name!
            }
            if self.policyIds != nil {
                map["PolicyIds"] = self.policyIds!
            }
            if self.portRanges != nil {
                var tmp : [Any] = []
                for k in self.portRanges! {
                    tmp.append(k.toMap())
                }
                map["PortRanges"] = tmp
            }
            if self.protocol_ != nil {
                map["Protocol"] = self.protocol_!
            }
            if self.status != nil {
                map["Status"] = self.status!
            }
            if self.tagIds != nil {
                map["TagIds"] = self.tagIds!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Addresses") {
                self.addresses = dict["Addresses"] as! [String]
            }
            if dict.keys.contains("ApplicationId") {
                self.applicationId = dict["ApplicationId"] as! String
            }
            if dict.keys.contains("BrowserAccessStatus") {
                self.browserAccessStatus = dict["BrowserAccessStatus"] as! String
            }
            if dict.keys.contains("ConnectorIds") {
                self.connectorIds = dict["ConnectorIds"] as! [String]
            }
            if dict.keys.contains("CreateTime") {
                self.createTime = dict["CreateTime"] as! String
            }
            if dict.keys.contains("Description") {
                self.description_ = dict["Description"] as! String
            }
            if dict.keys.contains("L7ProxyDomainAutomatic") {
                self.l7ProxyDomainAutomatic = dict["L7ProxyDomainAutomatic"] as! String
            }
            if dict.keys.contains("L7ProxyDomainCustom") {
                self.l7ProxyDomainCustom = dict["L7ProxyDomainCustom"] as! String
            }
            if dict.keys.contains("Name") {
                self.name = dict["Name"] as! String
            }
            if dict.keys.contains("PolicyIds") {
                self.policyIds = dict["PolicyIds"] as! [String]
            }
            if dict.keys.contains("PortRanges") {
                var tmp : [GetPrivateAccessApplicationResponseBody.Application.PortRanges] = []
                for v in dict["PortRanges"] as! [Any] {
                    var model = GetPrivateAccessApplicationResponseBody.Application.PortRanges()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.portRanges = tmp
            }
            if dict.keys.contains("Protocol") {
                self.protocol_ = dict["Protocol"] as! String
            }
            if dict.keys.contains("Status") {
                self.status = dict["Status"] as! String
            }
            if dict.keys.contains("TagIds") {
                self.tagIds = dict["TagIds"] as! [String]
            }
        }
    }
    public var application: GetPrivateAccessApplicationResponseBody.Application?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.application?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.application != nil {
            map["Application"] = self.application?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Application") {
            var model = GetPrivateAccessApplicationResponseBody.Application()
            model.fromMap(dict["Application"] as! [String: Any])
            self.application = model
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class GetPrivateAccessApplicationResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetPrivateAccessApplicationResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = GetPrivateAccessApplicationResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetPrivateAccessPolicyRequest : Tea.TeaModel {
    public var policyId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.policyId != nil {
            map["PolicyId"] = self.policyId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("PolicyId") {
            self.policyId = dict["PolicyId"] as! String
        }
    }
}

public class GetPrivateAccessPolicyResponseBody : Tea.TeaModel {
    public class Policy : Tea.TeaModel {
        public class CustomUserAttributes : Tea.TeaModel {
            public var idpId: Int32?

            public var relation: String?

            public var userGroupType: String?

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
                if self.idpId != nil {
                    map["IdpId"] = self.idpId!
                }
                if self.relation != nil {
                    map["Relation"] = self.relation!
                }
                if self.userGroupType != nil {
                    map["UserGroupType"] = self.userGroupType!
                }
                if self.value != nil {
                    map["Value"] = self.value!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("IdpId") {
                    self.idpId = dict["IdpId"] as! Int32
                }
                if dict.keys.contains("Relation") {
                    self.relation = dict["Relation"] as! String
                }
                if dict.keys.contains("UserGroupType") {
                    self.userGroupType = dict["UserGroupType"] as! String
                }
                if dict.keys.contains("Value") {
                    self.value = dict["Value"] as! String
                }
            }
        }
        public var applicationIds: [String]?

        public var applicationType: String?

        public var createTime: String?

        public var customUserAttributes: [GetPrivateAccessPolicyResponseBody.Policy.CustomUserAttributes]?

        public var description_: String?

        public var deviceAttributeAction: String?

        public var deviceAttributeId: String?

        public var name: String?

        public var policyAction: String?

        public var policyId: String?

        public var priority: Int32?

        public var status: String?

        public var tagIds: [String]?

        public var userGroupIds: [String]?

        public var userGroupMode: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.applicationIds != nil {
                map["ApplicationIds"] = self.applicationIds!
            }
            if self.applicationType != nil {
                map["ApplicationType"] = self.applicationType!
            }
            if self.createTime != nil {
                map["CreateTime"] = self.createTime!
            }
            if self.customUserAttributes != nil {
                var tmp : [Any] = []
                for k in self.customUserAttributes! {
                    tmp.append(k.toMap())
                }
                map["CustomUserAttributes"] = tmp
            }
            if self.description_ != nil {
                map["Description"] = self.description_!
            }
            if self.deviceAttributeAction != nil {
                map["DeviceAttributeAction"] = self.deviceAttributeAction!
            }
            if self.deviceAttributeId != nil {
                map["DeviceAttributeId"] = self.deviceAttributeId!
            }
            if self.name != nil {
                map["Name"] = self.name!
            }
            if self.policyAction != nil {
                map["PolicyAction"] = self.policyAction!
            }
            if self.policyId != nil {
                map["PolicyId"] = self.policyId!
            }
            if self.priority != nil {
                map["Priority"] = self.priority!
            }
            if self.status != nil {
                map["Status"] = self.status!
            }
            if self.tagIds != nil {
                map["TagIds"] = self.tagIds!
            }
            if self.userGroupIds != nil {
                map["UserGroupIds"] = self.userGroupIds!
            }
            if self.userGroupMode != nil {
                map["UserGroupMode"] = self.userGroupMode!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("ApplicationIds") {
                self.applicationIds = dict["ApplicationIds"] as! [String]
            }
            if dict.keys.contains("ApplicationType") {
                self.applicationType = dict["ApplicationType"] as! String
            }
            if dict.keys.contains("CreateTime") {
                self.createTime = dict["CreateTime"] as! String
            }
            if dict.keys.contains("CustomUserAttributes") {
                var tmp : [GetPrivateAccessPolicyResponseBody.Policy.CustomUserAttributes] = []
                for v in dict["CustomUserAttributes"] as! [Any] {
                    var model = GetPrivateAccessPolicyResponseBody.Policy.CustomUserAttributes()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.customUserAttributes = tmp
            }
            if dict.keys.contains("Description") {
                self.description_ = dict["Description"] as! String
            }
            if dict.keys.contains("DeviceAttributeAction") {
                self.deviceAttributeAction = dict["DeviceAttributeAction"] as! String
            }
            if dict.keys.contains("DeviceAttributeId") {
                self.deviceAttributeId = dict["DeviceAttributeId"] as! String
            }
            if dict.keys.contains("Name") {
                self.name = dict["Name"] as! String
            }
            if dict.keys.contains("PolicyAction") {
                self.policyAction = dict["PolicyAction"] as! String
            }
            if dict.keys.contains("PolicyId") {
                self.policyId = dict["PolicyId"] as! String
            }
            if dict.keys.contains("Priority") {
                self.priority = dict["Priority"] as! Int32
            }
            if dict.keys.contains("Status") {
                self.status = dict["Status"] as! String
            }
            if dict.keys.contains("TagIds") {
                self.tagIds = dict["TagIds"] as! [String]
            }
            if dict.keys.contains("UserGroupIds") {
                self.userGroupIds = dict["UserGroupIds"] as! [String]
            }
            if dict.keys.contains("UserGroupMode") {
                self.userGroupMode = dict["UserGroupMode"] as! String
            }
        }
    }
    public var policy: GetPrivateAccessPolicyResponseBody.Policy?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.policy?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.policy != nil {
            map["Policy"] = self.policy?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Policy") {
            var model = GetPrivateAccessPolicyResponseBody.Policy()
            model.fromMap(dict["Policy"] as! [String: Any])
            self.policy = model
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class GetPrivateAccessPolicyResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetPrivateAccessPolicyResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = GetPrivateAccessPolicyResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetRegistrationPolicyRequest : Tea.TeaModel {
    public var policyId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.policyId != nil {
            map["PolicyId"] = self.policyId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("PolicyId") {
            self.policyId = dict["PolicyId"] as! String
        }
    }
}

public class GetRegistrationPolicyResponseBody : Tea.TeaModel {
    public class LimitDetail : Tea.TeaModel {
        public class LimitCount : Tea.TeaModel {
            public var all: Int32?

            public var mobile: Int32?

            public var PC: Int32?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.all != nil {
                    map["All"] = self.all!
                }
                if self.mobile != nil {
                    map["Mobile"] = self.mobile!
                }
                if self.PC != nil {
                    map["PC"] = self.PC!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("All") {
                    self.all = dict["All"] as! Int32
                }
                if dict.keys.contains("Mobile") {
                    self.mobile = dict["Mobile"] as! Int32
                }
                if dict.keys.contains("PC") {
                    self.PC = dict["PC"] as! Int32
                }
            }
        }
        public var deviceBelong: String?

        public var limitCount: GetRegistrationPolicyResponseBody.LimitDetail.LimitCount?

        public var limitType: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.limitCount?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.deviceBelong != nil {
                map["DeviceBelong"] = self.deviceBelong!
            }
            if self.limitCount != nil {
                map["LimitCount"] = self.limitCount?.toMap()
            }
            if self.limitType != nil {
                map["LimitType"] = self.limitType!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("DeviceBelong") {
                self.deviceBelong = dict["DeviceBelong"] as! String
            }
            if dict.keys.contains("LimitCount") {
                var model = GetRegistrationPolicyResponseBody.LimitDetail.LimitCount()
                model.fromMap(dict["LimitCount"] as! [String: Any])
                self.limitCount = model
            }
            if dict.keys.contains("LimitType") {
                self.limitType = dict["LimitType"] as! String
            }
        }
    }
    public var createTime: String?

    public var description_: String?

    public var limitDetail: [GetRegistrationPolicyResponseBody.LimitDetail]?

    public var matchMode: String?

    public var name: String?

    public var policyId: String?

    public var priority: Int64?

    public var requestId: String?

    public var status: String?

    public var userGroupIds: [String]?

    public var whitelist: [String]?

    public override init() {
        super.init()
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
        if self.description_ != nil {
            map["Description"] = self.description_!
        }
        if self.limitDetail != nil {
            var tmp : [Any] = []
            for k in self.limitDetail! {
                tmp.append(k.toMap())
            }
            map["LimitDetail"] = tmp
        }
        if self.matchMode != nil {
            map["MatchMode"] = self.matchMode!
        }
        if self.name != nil {
            map["Name"] = self.name!
        }
        if self.policyId != nil {
            map["PolicyId"] = self.policyId!
        }
        if self.priority != nil {
            map["Priority"] = self.priority!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.status != nil {
            map["Status"] = self.status!
        }
        if self.userGroupIds != nil {
            map["UserGroupIds"] = self.userGroupIds!
        }
        if self.whitelist != nil {
            map["Whitelist"] = self.whitelist!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("CreateTime") {
            self.createTime = dict["CreateTime"] as! String
        }
        if dict.keys.contains("Description") {
            self.description_ = dict["Description"] as! String
        }
        if dict.keys.contains("LimitDetail") {
            var tmp : [GetRegistrationPolicyResponseBody.LimitDetail] = []
            for v in dict["LimitDetail"] as! [Any] {
                var model = GetRegistrationPolicyResponseBody.LimitDetail()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.limitDetail = tmp
        }
        if dict.keys.contains("MatchMode") {
            self.matchMode = dict["MatchMode"] as! String
        }
        if dict.keys.contains("Name") {
            self.name = dict["Name"] as! String
        }
        if dict.keys.contains("PolicyId") {
            self.policyId = dict["PolicyId"] as! String
        }
        if dict.keys.contains("Priority") {
            self.priority = dict["Priority"] as! Int64
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Status") {
            self.status = dict["Status"] as! String
        }
        if dict.keys.contains("UserGroupIds") {
            self.userGroupIds = dict["UserGroupIds"] as! [String]
        }
        if dict.keys.contains("Whitelist") {
            self.whitelist = dict["Whitelist"] as! [String]
        }
    }
}

public class GetRegistrationPolicyResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetRegistrationPolicyResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = GetRegistrationPolicyResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetUserDeviceRequest : Tea.TeaModel {
    public var deviceTag: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.deviceTag != nil {
            map["DeviceTag"] = self.deviceTag!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DeviceTag") {
            self.deviceTag = dict["DeviceTag"] as! String
        }
    }
}

public class GetUserDeviceResponseBody : Tea.TeaModel {
    public class Device : Tea.TeaModel {
        public class HistoryUsers : Tea.TeaModel {
            public var saseUserId: String?

            public var username: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.saseUserId != nil {
                    map["SaseUserId"] = self.saseUserId!
                }
                if self.username != nil {
                    map["Username"] = self.username!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("SaseUserId") {
                    self.saseUserId = dict["SaseUserId"] as! String
                }
                if dict.keys.contains("Username") {
                    self.username = dict["Username"] as! String
                }
            }
        }
        public class NetInterfaceInfo : Tea.TeaModel {
            public var mac: String?

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
                if self.mac != nil {
                    map["Mac"] = self.mac!
                }
                if self.name != nil {
                    map["Name"] = self.name!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("Mac") {
                    self.mac = dict["Mac"] as! String
                }
                if dict.keys.contains("Name") {
                    self.name = dict["Name"] as! String
                }
            }
        }
        public var appStatus: String?

        public var appVersion: String?

        public var CPU: String?

        public var createTime: String?

        public var department: String?

        public var deviceBelong: String?

        public var deviceModel: String?

        public var deviceStatus: String?

        public var deviceTag: String?

        public var deviceType: String?

        public var deviceVersion: String?

        public var disk: String?

        public var dlpStatus: String?

        public var historyUsers: [GetUserDeviceResponseBody.Device.HistoryUsers]?

        public var hostname: String?

        public var iaStatus: String?

        public var innerIP: String?

        public var mac: String?

        public var memory: String?

        public var nacStatus: String?

        public var netInterfaceInfo: [GetUserDeviceResponseBody.Device.NetInterfaceInfo]?

        public var paStatus: String?

        public var saseUserId: String?

        public var sharingStatus: Bool?

        public var srcIP: String?

        public var updateTime: String?

        public var username: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.appStatus != nil {
                map["AppStatus"] = self.appStatus!
            }
            if self.appVersion != nil {
                map["AppVersion"] = self.appVersion!
            }
            if self.CPU != nil {
                map["CPU"] = self.CPU!
            }
            if self.createTime != nil {
                map["CreateTime"] = self.createTime!
            }
            if self.department != nil {
                map["Department"] = self.department!
            }
            if self.deviceBelong != nil {
                map["DeviceBelong"] = self.deviceBelong!
            }
            if self.deviceModel != nil {
                map["DeviceModel"] = self.deviceModel!
            }
            if self.deviceStatus != nil {
                map["DeviceStatus"] = self.deviceStatus!
            }
            if self.deviceTag != nil {
                map["DeviceTag"] = self.deviceTag!
            }
            if self.deviceType != nil {
                map["DeviceType"] = self.deviceType!
            }
            if self.deviceVersion != nil {
                map["DeviceVersion"] = self.deviceVersion!
            }
            if self.disk != nil {
                map["Disk"] = self.disk!
            }
            if self.dlpStatus != nil {
                map["DlpStatus"] = self.dlpStatus!
            }
            if self.historyUsers != nil {
                var tmp : [Any] = []
                for k in self.historyUsers! {
                    tmp.append(k.toMap())
                }
                map["HistoryUsers"] = tmp
            }
            if self.hostname != nil {
                map["Hostname"] = self.hostname!
            }
            if self.iaStatus != nil {
                map["IaStatus"] = self.iaStatus!
            }
            if self.innerIP != nil {
                map["InnerIP"] = self.innerIP!
            }
            if self.mac != nil {
                map["Mac"] = self.mac!
            }
            if self.memory != nil {
                map["Memory"] = self.memory!
            }
            if self.nacStatus != nil {
                map["NacStatus"] = self.nacStatus!
            }
            if self.netInterfaceInfo != nil {
                var tmp : [Any] = []
                for k in self.netInterfaceInfo! {
                    tmp.append(k.toMap())
                }
                map["NetInterfaceInfo"] = tmp
            }
            if self.paStatus != nil {
                map["PaStatus"] = self.paStatus!
            }
            if self.saseUserId != nil {
                map["SaseUserId"] = self.saseUserId!
            }
            if self.sharingStatus != nil {
                map["SharingStatus"] = self.sharingStatus!
            }
            if self.srcIP != nil {
                map["SrcIP"] = self.srcIP!
            }
            if self.updateTime != nil {
                map["UpdateTime"] = self.updateTime!
            }
            if self.username != nil {
                map["Username"] = self.username!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("AppStatus") {
                self.appStatus = dict["AppStatus"] as! String
            }
            if dict.keys.contains("AppVersion") {
                self.appVersion = dict["AppVersion"] as! String
            }
            if dict.keys.contains("CPU") {
                self.CPU = dict["CPU"] as! String
            }
            if dict.keys.contains("CreateTime") {
                self.createTime = dict["CreateTime"] as! String
            }
            if dict.keys.contains("Department") {
                self.department = dict["Department"] as! String
            }
            if dict.keys.contains("DeviceBelong") {
                self.deviceBelong = dict["DeviceBelong"] as! String
            }
            if dict.keys.contains("DeviceModel") {
                self.deviceModel = dict["DeviceModel"] as! String
            }
            if dict.keys.contains("DeviceStatus") {
                self.deviceStatus = dict["DeviceStatus"] as! String
            }
            if dict.keys.contains("DeviceTag") {
                self.deviceTag = dict["DeviceTag"] as! String
            }
            if dict.keys.contains("DeviceType") {
                self.deviceType = dict["DeviceType"] as! String
            }
            if dict.keys.contains("DeviceVersion") {
                self.deviceVersion = dict["DeviceVersion"] as! String
            }
            if dict.keys.contains("Disk") {
                self.disk = dict["Disk"] as! String
            }
            if dict.keys.contains("DlpStatus") {
                self.dlpStatus = dict["DlpStatus"] as! String
            }
            if dict.keys.contains("HistoryUsers") {
                var tmp : [GetUserDeviceResponseBody.Device.HistoryUsers] = []
                for v in dict["HistoryUsers"] as! [Any] {
                    var model = GetUserDeviceResponseBody.Device.HistoryUsers()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.historyUsers = tmp
            }
            if dict.keys.contains("Hostname") {
                self.hostname = dict["Hostname"] as! String
            }
            if dict.keys.contains("IaStatus") {
                self.iaStatus = dict["IaStatus"] as! String
            }
            if dict.keys.contains("InnerIP") {
                self.innerIP = dict["InnerIP"] as! String
            }
            if dict.keys.contains("Mac") {
                self.mac = dict["Mac"] as! String
            }
            if dict.keys.contains("Memory") {
                self.memory = dict["Memory"] as! String
            }
            if dict.keys.contains("NacStatus") {
                self.nacStatus = dict["NacStatus"] as! String
            }
            if dict.keys.contains("NetInterfaceInfo") {
                var tmp : [GetUserDeviceResponseBody.Device.NetInterfaceInfo] = []
                for v in dict["NetInterfaceInfo"] as! [Any] {
                    var model = GetUserDeviceResponseBody.Device.NetInterfaceInfo()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.netInterfaceInfo = tmp
            }
            if dict.keys.contains("PaStatus") {
                self.paStatus = dict["PaStatus"] as! String
            }
            if dict.keys.contains("SaseUserId") {
                self.saseUserId = dict["SaseUserId"] as! String
            }
            if dict.keys.contains("SharingStatus") {
                self.sharingStatus = dict["SharingStatus"] as! Bool
            }
            if dict.keys.contains("SrcIP") {
                self.srcIP = dict["SrcIP"] as! String
            }
            if dict.keys.contains("UpdateTime") {
                self.updateTime = dict["UpdateTime"] as! String
            }
            if dict.keys.contains("Username") {
                self.username = dict["Username"] as! String
            }
        }
    }
    public var device: GetUserDeviceResponseBody.Device?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.device?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.device != nil {
            map["Device"] = self.device?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Device") {
            var model = GetUserDeviceResponseBody.Device()
            model.fromMap(dict["Device"] as! [String: Any])
            self.device = model
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class GetUserDeviceResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetUserDeviceResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = GetUserDeviceResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetUserGroupRequest : Tea.TeaModel {
    public var userGroupId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.userGroupId != nil {
            map["UserGroupId"] = self.userGroupId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("UserGroupId") {
            self.userGroupId = dict["UserGroupId"] as! String
        }
    }
}

public class GetUserGroupResponseBody : Tea.TeaModel {
    public class UserGroup : Tea.TeaModel {
        public class Attributes : Tea.TeaModel {
            public var idpId: Int32?

            public var relation: String?

            public var userGroupType: String?

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
                if self.idpId != nil {
                    map["IdpId"] = self.idpId!
                }
                if self.relation != nil {
                    map["Relation"] = self.relation!
                }
                if self.userGroupType != nil {
                    map["UserGroupType"] = self.userGroupType!
                }
                if self.value != nil {
                    map["Value"] = self.value!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("IdpId") {
                    self.idpId = dict["IdpId"] as! Int32
                }
                if dict.keys.contains("Relation") {
                    self.relation = dict["Relation"] as! String
                }
                if dict.keys.contains("UserGroupType") {
                    self.userGroupType = dict["UserGroupType"] as! String
                }
                if dict.keys.contains("Value") {
                    self.value = dict["Value"] as! String
                }
            }
        }
        public var attributes: [GetUserGroupResponseBody.UserGroup.Attributes]?

        public var createTime: String?

        public var description_: String?

        public var name: String?

        public var userGroupId: String?

        public override init() {
            super.init()
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
                var tmp : [Any] = []
                for k in self.attributes! {
                    tmp.append(k.toMap())
                }
                map["Attributes"] = tmp
            }
            if self.createTime != nil {
                map["CreateTime"] = self.createTime!
            }
            if self.description_ != nil {
                map["Description"] = self.description_!
            }
            if self.name != nil {
                map["Name"] = self.name!
            }
            if self.userGroupId != nil {
                map["UserGroupId"] = self.userGroupId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Attributes") {
                var tmp : [GetUserGroupResponseBody.UserGroup.Attributes] = []
                for v in dict["Attributes"] as! [Any] {
                    var model = GetUserGroupResponseBody.UserGroup.Attributes()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.attributes = tmp
            }
            if dict.keys.contains("CreateTime") {
                self.createTime = dict["CreateTime"] as! String
            }
            if dict.keys.contains("Description") {
                self.description_ = dict["Description"] as! String
            }
            if dict.keys.contains("Name") {
                self.name = dict["Name"] as! String
            }
            if dict.keys.contains("UserGroupId") {
                self.userGroupId = dict["UserGroupId"] as! String
            }
        }
    }
    public var requestId: String?

    public var userGroup: GetUserGroupResponseBody.UserGroup?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.userGroup?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.userGroup != nil {
            map["UserGroup"] = self.userGroup?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("UserGroup") {
            var model = GetUserGroupResponseBody.UserGroup()
            model.fromMap(dict["UserGroup"] as! [String: Any])
            self.userGroup = model
        }
    }
}

public class GetUserGroupResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetUserGroupResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = GetUserGroupResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetWmEmbedTaskRequest : Tea.TeaModel {
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
        if self.taskId != nil {
            map["TaskId"] = self.taskId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("TaskId") {
            self.taskId = dict["TaskId"] as! String
        }
    }
}

public class GetWmEmbedTaskResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var fileUrl: String?

        public var fileUrlExp: String?

        public var filename: String?

        public var outFileHashMd5: String?

        public var outFileSize: Int64?

        public var taskId: String?

        public var taskStatus: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.fileUrl != nil {
                map["FileUrl"] = self.fileUrl!
            }
            if self.fileUrlExp != nil {
                map["FileUrlExp"] = self.fileUrlExp!
            }
            if self.filename != nil {
                map["Filename"] = self.filename!
            }
            if self.outFileHashMd5 != nil {
                map["OutFileHashMd5"] = self.outFileHashMd5!
            }
            if self.outFileSize != nil {
                map["OutFileSize"] = self.outFileSize!
            }
            if self.taskId != nil {
                map["TaskId"] = self.taskId!
            }
            if self.taskStatus != nil {
                map["TaskStatus"] = self.taskStatus!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("FileUrl") {
                self.fileUrl = dict["FileUrl"] as! String
            }
            if dict.keys.contains("FileUrlExp") {
                self.fileUrlExp = dict["FileUrlExp"] as! String
            }
            if dict.keys.contains("Filename") {
                self.filename = dict["Filename"] as! String
            }
            if dict.keys.contains("OutFileHashMd5") {
                self.outFileHashMd5 = dict["OutFileHashMd5"] as! String
            }
            if dict.keys.contains("OutFileSize") {
                self.outFileSize = dict["OutFileSize"] as! Int64
            }
            if dict.keys.contains("TaskId") {
                self.taskId = dict["TaskId"] as! String
            }
            if dict.keys.contains("TaskStatus") {
                self.taskStatus = dict["TaskStatus"] as! String
            }
        }
    }
    public var data: GetWmEmbedTaskResponseBody.Data?

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
            var model = GetWmEmbedTaskResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class GetWmEmbedTaskResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetWmEmbedTaskResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = GetWmEmbedTaskResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetWmExtractTaskRequest : Tea.TeaModel {
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
        if self.taskId != nil {
            map["TaskId"] = self.taskId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("TaskId") {
            self.taskId = dict["TaskId"] as! String
        }
    }
}

public class GetWmExtractTaskResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var createTime: String?

        public var filename: String?

        public var status: String?

        public var taskId: String?

        public var wmInfoBytesB64: String?

        public var wmInfoSize: Int64?

        public var wmInfoUint: Int64?

        public var wmType: String?

        public override init() {
            super.init()
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
            if self.filename != nil {
                map["Filename"] = self.filename!
            }
            if self.status != nil {
                map["Status"] = self.status!
            }
            if self.taskId != nil {
                map["TaskId"] = self.taskId!
            }
            if self.wmInfoBytesB64 != nil {
                map["WmInfoBytesB64"] = self.wmInfoBytesB64!
            }
            if self.wmInfoSize != nil {
                map["WmInfoSize"] = self.wmInfoSize!
            }
            if self.wmInfoUint != nil {
                map["WmInfoUint"] = self.wmInfoUint!
            }
            if self.wmType != nil {
                map["WmType"] = self.wmType!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("CreateTime") {
                self.createTime = dict["CreateTime"] as! String
            }
            if dict.keys.contains("Filename") {
                self.filename = dict["Filename"] as! String
            }
            if dict.keys.contains("Status") {
                self.status = dict["Status"] as! String
            }
            if dict.keys.contains("TaskId") {
                self.taskId = dict["TaskId"] as! String
            }
            if dict.keys.contains("WmInfoBytesB64") {
                self.wmInfoBytesB64 = dict["WmInfoBytesB64"] as! String
            }
            if dict.keys.contains("WmInfoSize") {
                self.wmInfoSize = dict["WmInfoSize"] as! Int64
            }
            if dict.keys.contains("WmInfoUint") {
                self.wmInfoUint = dict["WmInfoUint"] as! Int64
            }
            if dict.keys.contains("WmType") {
                self.wmType = dict["WmType"] as! String
            }
        }
    }
    public var data: GetWmExtractTaskResponseBody.Data?

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
            var model = GetWmExtractTaskResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class GetWmExtractTaskResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetWmExtractTaskResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = GetWmExtractTaskResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListApplicationsForPrivateAccessPolicyRequest : Tea.TeaModel {
    public var policyIds: [String]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.policyIds != nil {
            map["PolicyIds"] = self.policyIds!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("PolicyIds") {
            self.policyIds = dict["PolicyIds"] as! [String]
        }
    }
}

public class ListApplicationsForPrivateAccessPolicyResponseBody : Tea.TeaModel {
    public class Polices : Tea.TeaModel {
        public class Applications : Tea.TeaModel {
            public class PortRanges : Tea.TeaModel {
                public var begin: Int32?

                public var end: Int32?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.begin != nil {
                        map["Begin"] = self.begin!
                    }
                    if self.end != nil {
                        map["End"] = self.end!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("Begin") {
                        self.begin = dict["Begin"] as! Int32
                    }
                    if dict.keys.contains("End") {
                        self.end = dict["End"] as! Int32
                    }
                }
            }
            public var addresses: [String]?

            public var applicationId: String?

            public var createTime: String?

            public var description_: String?

            public var name: String?

            public var portRanges: [ListApplicationsForPrivateAccessPolicyResponseBody.Polices.Applications.PortRanges]?

            public var protocol_: String?

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
                if self.addresses != nil {
                    map["Addresses"] = self.addresses!
                }
                if self.applicationId != nil {
                    map["ApplicationId"] = self.applicationId!
                }
                if self.createTime != nil {
                    map["CreateTime"] = self.createTime!
                }
                if self.description_ != nil {
                    map["Description"] = self.description_!
                }
                if self.name != nil {
                    map["Name"] = self.name!
                }
                if self.portRanges != nil {
                    var tmp : [Any] = []
                    for k in self.portRanges! {
                        tmp.append(k.toMap())
                    }
                    map["PortRanges"] = tmp
                }
                if self.protocol_ != nil {
                    map["Protocol"] = self.protocol_!
                }
                if self.status != nil {
                    map["Status"] = self.status!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("Addresses") {
                    self.addresses = dict["Addresses"] as! [String]
                }
                if dict.keys.contains("ApplicationId") {
                    self.applicationId = dict["ApplicationId"] as! String
                }
                if dict.keys.contains("CreateTime") {
                    self.createTime = dict["CreateTime"] as! String
                }
                if dict.keys.contains("Description") {
                    self.description_ = dict["Description"] as! String
                }
                if dict.keys.contains("Name") {
                    self.name = dict["Name"] as! String
                }
                if dict.keys.contains("PortRanges") {
                    var tmp : [ListApplicationsForPrivateAccessPolicyResponseBody.Polices.Applications.PortRanges] = []
                    for v in dict["PortRanges"] as! [Any] {
                        var model = ListApplicationsForPrivateAccessPolicyResponseBody.Polices.Applications.PortRanges()
                        if v != nil {
                            model.fromMap(v as! [String: Any])
                        }
                        tmp.append(model)
                    }
                    self.portRanges = tmp
                }
                if dict.keys.contains("Protocol") {
                    self.protocol_ = dict["Protocol"] as! String
                }
                if dict.keys.contains("Status") {
                    self.status = dict["Status"] as! String
                }
            }
        }
        public var applications: [ListApplicationsForPrivateAccessPolicyResponseBody.Polices.Applications]?

        public var policyId: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.applications != nil {
                var tmp : [Any] = []
                for k in self.applications! {
                    tmp.append(k.toMap())
                }
                map["Applications"] = tmp
            }
            if self.policyId != nil {
                map["PolicyId"] = self.policyId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Applications") {
                var tmp : [ListApplicationsForPrivateAccessPolicyResponseBody.Polices.Applications] = []
                for v in dict["Applications"] as! [Any] {
                    var model = ListApplicationsForPrivateAccessPolicyResponseBody.Polices.Applications()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.applications = tmp
            }
            if dict.keys.contains("PolicyId") {
                self.policyId = dict["PolicyId"] as! String
            }
        }
    }
    public var polices: [ListApplicationsForPrivateAccessPolicyResponseBody.Polices]?

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
        if self.polices != nil {
            var tmp : [Any] = []
            for k in self.polices! {
                tmp.append(k.toMap())
            }
            map["Polices"] = tmp
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Polices") {
            var tmp : [ListApplicationsForPrivateAccessPolicyResponseBody.Polices] = []
            for v in dict["Polices"] as! [Any] {
                var model = ListApplicationsForPrivateAccessPolicyResponseBody.Polices()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.polices = tmp
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class ListApplicationsForPrivateAccessPolicyResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListApplicationsForPrivateAccessPolicyResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = ListApplicationsForPrivateAccessPolicyResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListApplicationsForPrivateAccessTagRequest : Tea.TeaModel {
    public var tagIds: [String]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.tagIds != nil {
            map["TagIds"] = self.tagIds!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("TagIds") {
            self.tagIds = dict["TagIds"] as! [String]
        }
    }
}

public class ListApplicationsForPrivateAccessTagResponseBody : Tea.TeaModel {
    public class Tags : Tea.TeaModel {
        public class Applications : Tea.TeaModel {
            public class PortRanges : Tea.TeaModel {
                public var begin: Int32?

                public var end: Int32?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.begin != nil {
                        map["Begin"] = self.begin!
                    }
                    if self.end != nil {
                        map["End"] = self.end!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("Begin") {
                        self.begin = dict["Begin"] as! Int32
                    }
                    if dict.keys.contains("End") {
                        self.end = dict["End"] as! Int32
                    }
                }
            }
            public var addresses: [String]?

            public var applicationId: String?

            public var createTime: String?

            public var description_: String?

            public var name: String?

            public var portRanges: [ListApplicationsForPrivateAccessTagResponseBody.Tags.Applications.PortRanges]?

            public var protocol_: String?

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
                if self.addresses != nil {
                    map["Addresses"] = self.addresses!
                }
                if self.applicationId != nil {
                    map["ApplicationId"] = self.applicationId!
                }
                if self.createTime != nil {
                    map["CreateTime"] = self.createTime!
                }
                if self.description_ != nil {
                    map["Description"] = self.description_!
                }
                if self.name != nil {
                    map["Name"] = self.name!
                }
                if self.portRanges != nil {
                    var tmp : [Any] = []
                    for k in self.portRanges! {
                        tmp.append(k.toMap())
                    }
                    map["PortRanges"] = tmp
                }
                if self.protocol_ != nil {
                    map["Protocol"] = self.protocol_!
                }
                if self.status != nil {
                    map["Status"] = self.status!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("Addresses") {
                    self.addresses = dict["Addresses"] as! [String]
                }
                if dict.keys.contains("ApplicationId") {
                    self.applicationId = dict["ApplicationId"] as! String
                }
                if dict.keys.contains("CreateTime") {
                    self.createTime = dict["CreateTime"] as! String
                }
                if dict.keys.contains("Description") {
                    self.description_ = dict["Description"] as! String
                }
                if dict.keys.contains("Name") {
                    self.name = dict["Name"] as! String
                }
                if dict.keys.contains("PortRanges") {
                    var tmp : [ListApplicationsForPrivateAccessTagResponseBody.Tags.Applications.PortRanges] = []
                    for v in dict["PortRanges"] as! [Any] {
                        var model = ListApplicationsForPrivateAccessTagResponseBody.Tags.Applications.PortRanges()
                        if v != nil {
                            model.fromMap(v as! [String: Any])
                        }
                        tmp.append(model)
                    }
                    self.portRanges = tmp
                }
                if dict.keys.contains("Protocol") {
                    self.protocol_ = dict["Protocol"] as! String
                }
                if dict.keys.contains("Status") {
                    self.status = dict["Status"] as! String
                }
            }
        }
        public var applications: [ListApplicationsForPrivateAccessTagResponseBody.Tags.Applications]?

        public var tagId: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.applications != nil {
                var tmp : [Any] = []
                for k in self.applications! {
                    tmp.append(k.toMap())
                }
                map["Applications"] = tmp
            }
            if self.tagId != nil {
                map["TagId"] = self.tagId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Applications") {
                var tmp : [ListApplicationsForPrivateAccessTagResponseBody.Tags.Applications] = []
                for v in dict["Applications"] as! [Any] {
                    var model = ListApplicationsForPrivateAccessTagResponseBody.Tags.Applications()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.applications = tmp
            }
            if dict.keys.contains("TagId") {
                self.tagId = dict["TagId"] as! String
            }
        }
    }
    public var requestId: String?

    public var tags: [ListApplicationsForPrivateAccessTagResponseBody.Tags]?

    public override init() {
        super.init()
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
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Tags") {
            var tmp : [ListApplicationsForPrivateAccessTagResponseBody.Tags] = []
            for v in dict["Tags"] as! [Any] {
                var model = ListApplicationsForPrivateAccessTagResponseBody.Tags()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.tags = tmp
        }
    }
}

public class ListApplicationsForPrivateAccessTagResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListApplicationsForPrivateAccessTagResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = ListApplicationsForPrivateAccessTagResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListApprovalProcessesRequest : Tea.TeaModel {
    public var currentPage: Int64?

    public var pageSize: Int64?

    public var policyId: String?

    public var policyType: String?

    public var processIds: [String]?

    public var processName: String?

    public var saseUserId: String?

    public var username: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.currentPage != nil {
            map["CurrentPage"] = self.currentPage!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.policyId != nil {
            map["PolicyId"] = self.policyId!
        }
        if self.policyType != nil {
            map["PolicyType"] = self.policyType!
        }
        if self.processIds != nil {
            map["ProcessIds"] = self.processIds!
        }
        if self.processName != nil {
            map["ProcessName"] = self.processName!
        }
        if self.saseUserId != nil {
            map["SaseUserId"] = self.saseUserId!
        }
        if self.username != nil {
            map["Username"] = self.username!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("CurrentPage") {
            self.currentPage = dict["CurrentPage"] as! Int64
        }
        if dict.keys.contains("PageSize") {
            self.pageSize = dict["PageSize"] as! Int64
        }
        if dict.keys.contains("PolicyId") {
            self.policyId = dict["PolicyId"] as! String
        }
        if dict.keys.contains("PolicyType") {
            self.policyType = dict["PolicyType"] as! String
        }
        if dict.keys.contains("ProcessIds") {
            self.processIds = dict["ProcessIds"] as! [String]
        }
        if dict.keys.contains("ProcessName") {
            self.processName = dict["ProcessName"] as! String
        }
        if dict.keys.contains("SaseUserId") {
            self.saseUserId = dict["SaseUserId"] as! String
        }
        if dict.keys.contains("Username") {
            self.username = dict["Username"] as! String
        }
    }
}

public class ListApprovalProcessesResponseBody : Tea.TeaModel {
    public class Processes : Tea.TeaModel {
        public class AppUninstallPolicies : Tea.TeaModel {
            public var policyIds: [String]?

            public var schemaId: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.policyIds != nil {
                    map["PolicyIds"] = self.policyIds!
                }
                if self.schemaId != nil {
                    map["SchemaId"] = self.schemaId!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("PolicyIds") {
                    self.policyIds = dict["PolicyIds"] as! [String]
                }
                if dict.keys.contains("SchemaId") {
                    self.schemaId = dict["SchemaId"] as! String
                }
            }
        }
        public class DeviceRegistrationPolicies : Tea.TeaModel {
            public var policyIds: [String]?

            public var schemaId: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.policyIds != nil {
                    map["PolicyIds"] = self.policyIds!
                }
                if self.schemaId != nil {
                    map["SchemaId"] = self.schemaId!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("PolicyIds") {
                    self.policyIds = dict["PolicyIds"] as! [String]
                }
                if dict.keys.contains("SchemaId") {
                    self.schemaId = dict["SchemaId"] as! String
                }
            }
        }
        public class DlpSendPolicies : Tea.TeaModel {
            public var policyIds: [String]?

            public var schemaId: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.policyIds != nil {
                    map["PolicyIds"] = self.policyIds!
                }
                if self.schemaId != nil {
                    map["SchemaId"] = self.schemaId!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("PolicyIds") {
                    self.policyIds = dict["PolicyIds"] as! [String]
                }
                if dict.keys.contains("SchemaId") {
                    self.schemaId = dict["SchemaId"] as! String
                }
            }
        }
        public class DomainBlacklistPolicies : Tea.TeaModel {
            public var policyIds: [String]?

            public var schemaId: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.policyIds != nil {
                    map["PolicyIds"] = self.policyIds!
                }
                if self.schemaId != nil {
                    map["SchemaId"] = self.schemaId!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("PolicyIds") {
                    self.policyIds = dict["PolicyIds"] as! [String]
                }
                if dict.keys.contains("SchemaId") {
                    self.schemaId = dict["SchemaId"] as! String
                }
            }
        }
        public class DomainWhitelistPolicies : Tea.TeaModel {
            public var policyIds: [String]?

            public var schemaId: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.policyIds != nil {
                    map["PolicyIds"] = self.policyIds!
                }
                if self.schemaId != nil {
                    map["SchemaId"] = self.schemaId!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("PolicyIds") {
                    self.policyIds = dict["PolicyIds"] as! [String]
                }
                if dict.keys.contains("SchemaId") {
                    self.schemaId = dict["SchemaId"] as! String
                }
            }
        }
        public class PeripheralBlockPolicies : Tea.TeaModel {
            public var policyIds: [String]?

            public var schemaId: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.policyIds != nil {
                    map["PolicyIds"] = self.policyIds!
                }
                if self.schemaId != nil {
                    map["SchemaId"] = self.schemaId!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("PolicyIds") {
                    self.policyIds = dict["PolicyIds"] as! [String]
                }
                if dict.keys.contains("SchemaId") {
                    self.schemaId = dict["SchemaId"] as! String
                }
            }
        }
        public class ProcessNodes : Tea.TeaModel {
            public var saseUserId: String?

            public var username: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.saseUserId != nil {
                    map["SaseUserId"] = self.saseUserId!
                }
                if self.username != nil {
                    map["Username"] = self.username!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("SaseUserId") {
                    self.saseUserId = dict["SaseUserId"] as! String
                }
                if dict.keys.contains("Username") {
                    self.username = dict["Username"] as! String
                }
            }
        }
        public class SoftwareBlockPolicies : Tea.TeaModel {
            public var policyIds: [String]?

            public var schemaId: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.policyIds != nil {
                    map["PolicyIds"] = self.policyIds!
                }
                if self.schemaId != nil {
                    map["SchemaId"] = self.schemaId!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("PolicyIds") {
                    self.policyIds = dict["PolicyIds"] as! [String]
                }
                if dict.keys.contains("SchemaId") {
                    self.schemaId = dict["SchemaId"] as! String
                }
            }
        }
        public var appUninstallPolicies: ListApprovalProcessesResponseBody.Processes.AppUninstallPolicies?

        public var createTime: String?

        public var description_: String?

        public var deviceRegistrationPolicies: ListApprovalProcessesResponseBody.Processes.DeviceRegistrationPolicies?

        public var dlpSendPolicies: ListApprovalProcessesResponseBody.Processes.DlpSendPolicies?

        public var domainBlacklistPolicies: ListApprovalProcessesResponseBody.Processes.DomainBlacklistPolicies?

        public var domainWhitelistPolicies: ListApprovalProcessesResponseBody.Processes.DomainWhitelistPolicies?

        public var peripheralBlockPolicies: ListApprovalProcessesResponseBody.Processes.PeripheralBlockPolicies?

        public var processId: String?

        public var processName: String?

        public var processNodes: [[ListApprovalProcessesResponseBody.Processes.ProcessNodes]]?

        public var softwareBlockPolicies: ListApprovalProcessesResponseBody.Processes.SoftwareBlockPolicies?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.appUninstallPolicies?.validate()
            try self.deviceRegistrationPolicies?.validate()
            try self.dlpSendPolicies?.validate()
            try self.domainBlacklistPolicies?.validate()
            try self.domainWhitelistPolicies?.validate()
            try self.peripheralBlockPolicies?.validate()
            try self.softwareBlockPolicies?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.appUninstallPolicies != nil {
                map["AppUninstallPolicies"] = self.appUninstallPolicies?.toMap()
            }
            if self.createTime != nil {
                map["CreateTime"] = self.createTime!
            }
            if self.description_ != nil {
                map["Description"] = self.description_!
            }
            if self.deviceRegistrationPolicies != nil {
                map["DeviceRegistrationPolicies"] = self.deviceRegistrationPolicies?.toMap()
            }
            if self.dlpSendPolicies != nil {
                map["DlpSendPolicies"] = self.dlpSendPolicies?.toMap()
            }
            if self.domainBlacklistPolicies != nil {
                map["DomainBlacklistPolicies"] = self.domainBlacklistPolicies?.toMap()
            }
            if self.domainWhitelistPolicies != nil {
                map["DomainWhitelistPolicies"] = self.domainWhitelistPolicies?.toMap()
            }
            if self.peripheralBlockPolicies != nil {
                map["PeripheralBlockPolicies"] = self.peripheralBlockPolicies?.toMap()
            }
            if self.processId != nil {
                map["ProcessId"] = self.processId!
            }
            if self.processName != nil {
                map["ProcessName"] = self.processName!
            }
            if self.processNodes != nil {
                var tmp : [Any] = []
                for k in self.processNodes! {
                    var l1 : [Any] = []
                    for k1 in k {
                        l1.append(k1.toMap())
                    }
                    tmp.append(l1)
                }
                map["ProcessNodes"] = tmp
            }
            if self.softwareBlockPolicies != nil {
                map["SoftwareBlockPolicies"] = self.softwareBlockPolicies?.toMap()
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("AppUninstallPolicies") {
                var model = ListApprovalProcessesResponseBody.Processes.AppUninstallPolicies()
                model.fromMap(dict["AppUninstallPolicies"] as! [String: Any])
                self.appUninstallPolicies = model
            }
            if dict.keys.contains("CreateTime") {
                self.createTime = dict["CreateTime"] as! String
            }
            if dict.keys.contains("Description") {
                self.description_ = dict["Description"] as! String
            }
            if dict.keys.contains("DeviceRegistrationPolicies") {
                var model = ListApprovalProcessesResponseBody.Processes.DeviceRegistrationPolicies()
                model.fromMap(dict["DeviceRegistrationPolicies"] as! [String: Any])
                self.deviceRegistrationPolicies = model
            }
            if dict.keys.contains("DlpSendPolicies") {
                var model = ListApprovalProcessesResponseBody.Processes.DlpSendPolicies()
                model.fromMap(dict["DlpSendPolicies"] as! [String: Any])
                self.dlpSendPolicies = model
            }
            if dict.keys.contains("DomainBlacklistPolicies") {
                var model = ListApprovalProcessesResponseBody.Processes.DomainBlacklistPolicies()
                model.fromMap(dict["DomainBlacklistPolicies"] as! [String: Any])
                self.domainBlacklistPolicies = model
            }
            if dict.keys.contains("DomainWhitelistPolicies") {
                var model = ListApprovalProcessesResponseBody.Processes.DomainWhitelistPolicies()
                model.fromMap(dict["DomainWhitelistPolicies"] as! [String: Any])
                self.domainWhitelistPolicies = model
            }
            if dict.keys.contains("PeripheralBlockPolicies") {
                var model = ListApprovalProcessesResponseBody.Processes.PeripheralBlockPolicies()
                model.fromMap(dict["PeripheralBlockPolicies"] as! [String: Any])
                self.peripheralBlockPolicies = model
            }
            if dict.keys.contains("ProcessId") {
                self.processId = dict["ProcessId"] as! String
            }
            if dict.keys.contains("ProcessName") {
                self.processName = dict["ProcessName"] as! String
            }
            if dict.keys.contains("ProcessNodes") {
                var tmp : [[ListApprovalProcessesResponseBody.Processes.ProcessNodes]] = []
                for v in dict["ProcessNodes"] as! [Any] {
                    var l1 : [ListApprovalProcessesResponseBody.Processes.ProcessNodes] = []
                    for v1 in v as! [Any] {
                        var model = ListApprovalProcessesResponseBody.Processes.ProcessNodes()
                        if v1 != nil {
                            model.fromMap(v1 as! [String: Any])
                        }
                        l1.append(model)
                    }
                    tmp.append(l1)
                }
                self.processNodes = tmp
            }
            if dict.keys.contains("SoftwareBlockPolicies") {
                var model = ListApprovalProcessesResponseBody.Processes.SoftwareBlockPolicies()
                model.fromMap(dict["SoftwareBlockPolicies"] as! [String: Any])
                self.softwareBlockPolicies = model
            }
        }
    }
    public var processes: [ListApprovalProcessesResponseBody.Processes]?

    public var requestId: String?

    public var totalNum: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.processes != nil {
            var tmp : [Any] = []
            for k in self.processes! {
                tmp.append(k.toMap())
            }
            map["Processes"] = tmp
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.totalNum != nil {
            map["TotalNum"] = self.totalNum!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Processes") {
            var tmp : [ListApprovalProcessesResponseBody.Processes] = []
            for v in dict["Processes"] as! [Any] {
                var model = ListApprovalProcessesResponseBody.Processes()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.processes = tmp
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("TotalNum") {
            self.totalNum = dict["TotalNum"] as! String
        }
    }
}

public class ListApprovalProcessesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListApprovalProcessesResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = ListApprovalProcessesResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListApprovalProcessesForApprovalSchemasRequest : Tea.TeaModel {
    public var schemaIds: [String]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.schemaIds != nil {
            map["SchemaIds"] = self.schemaIds!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("SchemaIds") {
            self.schemaIds = dict["SchemaIds"] as! [String]
        }
    }
}

public class ListApprovalProcessesForApprovalSchemasResponseBody : Tea.TeaModel {
    public class Schemas : Tea.TeaModel {
        public class Processes : Tea.TeaModel {
            public var createTime: String?

            public var description_: String?

            public var processId: String?

            public var processName: String?

            public override init() {
                super.init()
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
                if self.description_ != nil {
                    map["Description"] = self.description_!
                }
                if self.processId != nil {
                    map["ProcessId"] = self.processId!
                }
                if self.processName != nil {
                    map["ProcessName"] = self.processName!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("CreateTime") {
                    self.createTime = dict["CreateTime"] as! String
                }
                if dict.keys.contains("Description") {
                    self.description_ = dict["Description"] as! String
                }
                if dict.keys.contains("ProcessId") {
                    self.processId = dict["ProcessId"] as! String
                }
                if dict.keys.contains("ProcessName") {
                    self.processName = dict["ProcessName"] as! String
                }
            }
        }
        public var processes: [ListApprovalProcessesForApprovalSchemasResponseBody.Schemas.Processes]?

        public var schemaId: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.processes != nil {
                var tmp : [Any] = []
                for k in self.processes! {
                    tmp.append(k.toMap())
                }
                map["Processes"] = tmp
            }
            if self.schemaId != nil {
                map["SchemaId"] = self.schemaId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Processes") {
                var tmp : [ListApprovalProcessesForApprovalSchemasResponseBody.Schemas.Processes] = []
                for v in dict["Processes"] as! [Any] {
                    var model = ListApprovalProcessesForApprovalSchemasResponseBody.Schemas.Processes()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.processes = tmp
            }
            if dict.keys.contains("SchemaId") {
                self.schemaId = dict["SchemaId"] as! String
            }
        }
    }
    public var requestId: String?

    public var schemas: [ListApprovalProcessesForApprovalSchemasResponseBody.Schemas]?

    public override init() {
        super.init()
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
        if self.schemas != nil {
            var tmp : [Any] = []
            for k in self.schemas! {
                tmp.append(k.toMap())
            }
            map["Schemas"] = tmp
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Schemas") {
            var tmp : [ListApprovalProcessesForApprovalSchemasResponseBody.Schemas] = []
            for v in dict["Schemas"] as! [Any] {
                var model = ListApprovalProcessesForApprovalSchemasResponseBody.Schemas()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.schemas = tmp
        }
    }
}

public class ListApprovalProcessesForApprovalSchemasResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListApprovalProcessesForApprovalSchemasResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = ListApprovalProcessesForApprovalSchemasResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListApprovalSchemasRequest : Tea.TeaModel {
    public var currentPage: Int64?

    public var pageSize: Int64?

    public var policyType: String?

    public var schemaIds: [String]?

    public var schemaName: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.currentPage != nil {
            map["CurrentPage"] = self.currentPage!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.policyType != nil {
            map["PolicyType"] = self.policyType!
        }
        if self.schemaIds != nil {
            map["SchemaIds"] = self.schemaIds!
        }
        if self.schemaName != nil {
            map["SchemaName"] = self.schemaName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("CurrentPage") {
            self.currentPage = dict["CurrentPage"] as! Int64
        }
        if dict.keys.contains("PageSize") {
            self.pageSize = dict["PageSize"] as! Int64
        }
        if dict.keys.contains("PolicyType") {
            self.policyType = dict["PolicyType"] as! String
        }
        if dict.keys.contains("SchemaIds") {
            self.schemaIds = dict["SchemaIds"] as! [String]
        }
        if dict.keys.contains("SchemaName") {
            self.schemaName = dict["SchemaName"] as! String
        }
    }
}

public class ListApprovalSchemasResponseBody : Tea.TeaModel {
    public class Schemas : Tea.TeaModel {
        public var createTime: String?

        public var description_: String?

        public var isDefault: Bool?

        public var policyType: String?

        public var schemaContent: String?

        public var schemaId: String?

        public var schemaName: String?

        public var schemaVersion: Int64?

        public override init() {
            super.init()
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
            if self.description_ != nil {
                map["Description"] = self.description_!
            }
            if self.isDefault != nil {
                map["IsDefault"] = self.isDefault!
            }
            if self.policyType != nil {
                map["PolicyType"] = self.policyType!
            }
            if self.schemaContent != nil {
                map["SchemaContent"] = self.schemaContent!
            }
            if self.schemaId != nil {
                map["SchemaId"] = self.schemaId!
            }
            if self.schemaName != nil {
                map["SchemaName"] = self.schemaName!
            }
            if self.schemaVersion != nil {
                map["SchemaVersion"] = self.schemaVersion!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("CreateTime") {
                self.createTime = dict["CreateTime"] as! String
            }
            if dict.keys.contains("Description") {
                self.description_ = dict["Description"] as! String
            }
            if dict.keys.contains("IsDefault") {
                self.isDefault = dict["IsDefault"] as! Bool
            }
            if dict.keys.contains("PolicyType") {
                self.policyType = dict["PolicyType"] as! String
            }
            if dict.keys.contains("SchemaContent") {
                self.schemaContent = dict["SchemaContent"] as! String
            }
            if dict.keys.contains("SchemaId") {
                self.schemaId = dict["SchemaId"] as! String
            }
            if dict.keys.contains("SchemaName") {
                self.schemaName = dict["SchemaName"] as! String
            }
            if dict.keys.contains("SchemaVersion") {
                self.schemaVersion = dict["SchemaVersion"] as! Int64
            }
        }
    }
    public var requestId: String?

    public var schemas: [ListApprovalSchemasResponseBody.Schemas]?

    public var totalNum: String?

    public override init() {
        super.init()
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
        if self.schemas != nil {
            var tmp : [Any] = []
            for k in self.schemas! {
                tmp.append(k.toMap())
            }
            map["Schemas"] = tmp
        }
        if self.totalNum != nil {
            map["TotalNum"] = self.totalNum!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Schemas") {
            var tmp : [ListApprovalSchemasResponseBody.Schemas] = []
            for v in dict["Schemas"] as! [Any] {
                var model = ListApprovalSchemasResponseBody.Schemas()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.schemas = tmp
        }
        if dict.keys.contains("TotalNum") {
            self.totalNum = dict["TotalNum"] as! String
        }
    }
}

public class ListApprovalSchemasResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListApprovalSchemasResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = ListApprovalSchemasResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListApprovalSchemasForApprovalProcessesRequest : Tea.TeaModel {
    public var processIds: [String]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.processIds != nil {
            map["ProcessIds"] = self.processIds!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ProcessIds") {
            self.processIds = dict["ProcessIds"] as! [String]
        }
    }
}

public class ListApprovalSchemasForApprovalProcessesResponseBody : Tea.TeaModel {
    public class Processes : Tea.TeaModel {
        public class Schemas : Tea.TeaModel {
            public var createTime: String?

            public var description_: String?

            public var isDefault: Bool?

            public var policyType: String?

            public var schemaContent: String?

            public var schemaId: String?

            public var schemaName: String?

            public var schemaVersion: Int64?

            public override init() {
                super.init()
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
                if self.description_ != nil {
                    map["Description"] = self.description_!
                }
                if self.isDefault != nil {
                    map["IsDefault"] = self.isDefault!
                }
                if self.policyType != nil {
                    map["PolicyType"] = self.policyType!
                }
                if self.schemaContent != nil {
                    map["SchemaContent"] = self.schemaContent!
                }
                if self.schemaId != nil {
                    map["SchemaId"] = self.schemaId!
                }
                if self.schemaName != nil {
                    map["SchemaName"] = self.schemaName!
                }
                if self.schemaVersion != nil {
                    map["SchemaVersion"] = self.schemaVersion!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("CreateTime") {
                    self.createTime = dict["CreateTime"] as! String
                }
                if dict.keys.contains("Description") {
                    self.description_ = dict["Description"] as! String
                }
                if dict.keys.contains("IsDefault") {
                    self.isDefault = dict["IsDefault"] as! Bool
                }
                if dict.keys.contains("PolicyType") {
                    self.policyType = dict["PolicyType"] as! String
                }
                if dict.keys.contains("SchemaContent") {
                    self.schemaContent = dict["SchemaContent"] as! String
                }
                if dict.keys.contains("SchemaId") {
                    self.schemaId = dict["SchemaId"] as! String
                }
                if dict.keys.contains("SchemaName") {
                    self.schemaName = dict["SchemaName"] as! String
                }
                if dict.keys.contains("SchemaVersion") {
                    self.schemaVersion = dict["SchemaVersion"] as! Int64
                }
            }
        }
        public var processId: String?

        public var schemas: [ListApprovalSchemasForApprovalProcessesResponseBody.Processes.Schemas]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.processId != nil {
                map["ProcessId"] = self.processId!
            }
            if self.schemas != nil {
                var tmp : [Any] = []
                for k in self.schemas! {
                    tmp.append(k.toMap())
                }
                map["Schemas"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("ProcessId") {
                self.processId = dict["ProcessId"] as! String
            }
            if dict.keys.contains("Schemas") {
                var tmp : [ListApprovalSchemasForApprovalProcessesResponseBody.Processes.Schemas] = []
                for v in dict["Schemas"] as! [Any] {
                    var model = ListApprovalSchemasForApprovalProcessesResponseBody.Processes.Schemas()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.schemas = tmp
            }
        }
    }
    public var processes: [ListApprovalSchemasForApprovalProcessesResponseBody.Processes]?

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
        if self.processes != nil {
            var tmp : [Any] = []
            for k in self.processes! {
                tmp.append(k.toMap())
            }
            map["Processes"] = tmp
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Processes") {
            var tmp : [ListApprovalSchemasForApprovalProcessesResponseBody.Processes] = []
            for v in dict["Processes"] as! [Any] {
                var model = ListApprovalSchemasForApprovalProcessesResponseBody.Processes()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.processes = tmp
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class ListApprovalSchemasForApprovalProcessesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListApprovalSchemasForApprovalProcessesResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = ListApprovalSchemasForApprovalProcessesResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListApprovalsRequest : Tea.TeaModel {
    public var approvalIds: [String]?

    public var createEndTime: Int64?

    public var createStartTime: Int64?

    public var creatorDepartment: String?

    public var creatorDevTag: String?

    public var creatorUserId: String?

    public var creatorUsername: String?

    public var currentPage: Int64?

    public var operatorUserId: String?

    public var operatorUsername: String?

    public var pageSize: Int64?

    public var policyType: String?

    public var processId: String?

    public var processName: String?

    public var schemaId: String?

    public var schemaName: String?

    public var statuses: [String]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.approvalIds != nil {
            map["ApprovalIds"] = self.approvalIds!
        }
        if self.createEndTime != nil {
            map["CreateEndTime"] = self.createEndTime!
        }
        if self.createStartTime != nil {
            map["CreateStartTime"] = self.createStartTime!
        }
        if self.creatorDepartment != nil {
            map["CreatorDepartment"] = self.creatorDepartment!
        }
        if self.creatorDevTag != nil {
            map["CreatorDevTag"] = self.creatorDevTag!
        }
        if self.creatorUserId != nil {
            map["CreatorUserId"] = self.creatorUserId!
        }
        if self.creatorUsername != nil {
            map["CreatorUsername"] = self.creatorUsername!
        }
        if self.currentPage != nil {
            map["CurrentPage"] = self.currentPage!
        }
        if self.operatorUserId != nil {
            map["OperatorUserId"] = self.operatorUserId!
        }
        if self.operatorUsername != nil {
            map["OperatorUsername"] = self.operatorUsername!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.policyType != nil {
            map["PolicyType"] = self.policyType!
        }
        if self.processId != nil {
            map["ProcessId"] = self.processId!
        }
        if self.processName != nil {
            map["ProcessName"] = self.processName!
        }
        if self.schemaId != nil {
            map["SchemaId"] = self.schemaId!
        }
        if self.schemaName != nil {
            map["SchemaName"] = self.schemaName!
        }
        if self.statuses != nil {
            map["Statuses"] = self.statuses!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ApprovalIds") {
            self.approvalIds = dict["ApprovalIds"] as! [String]
        }
        if dict.keys.contains("CreateEndTime") {
            self.createEndTime = dict["CreateEndTime"] as! Int64
        }
        if dict.keys.contains("CreateStartTime") {
            self.createStartTime = dict["CreateStartTime"] as! Int64
        }
        if dict.keys.contains("CreatorDepartment") {
            self.creatorDepartment = dict["CreatorDepartment"] as! String
        }
        if dict.keys.contains("CreatorDevTag") {
            self.creatorDevTag = dict["CreatorDevTag"] as! String
        }
        if dict.keys.contains("CreatorUserId") {
            self.creatorUserId = dict["CreatorUserId"] as! String
        }
        if dict.keys.contains("CreatorUsername") {
            self.creatorUsername = dict["CreatorUsername"] as! String
        }
        if dict.keys.contains("CurrentPage") {
            self.currentPage = dict["CurrentPage"] as! Int64
        }
        if dict.keys.contains("OperatorUserId") {
            self.operatorUserId = dict["OperatorUserId"] as! String
        }
        if dict.keys.contains("OperatorUsername") {
            self.operatorUsername = dict["OperatorUsername"] as! String
        }
        if dict.keys.contains("PageSize") {
            self.pageSize = dict["PageSize"] as! Int64
        }
        if dict.keys.contains("PolicyType") {
            self.policyType = dict["PolicyType"] as! String
        }
        if dict.keys.contains("ProcessId") {
            self.processId = dict["ProcessId"] as! String
        }
        if dict.keys.contains("ProcessName") {
            self.processName = dict["ProcessName"] as! String
        }
        if dict.keys.contains("SchemaId") {
            self.schemaId = dict["SchemaId"] as! String
        }
        if dict.keys.contains("SchemaName") {
            self.schemaName = dict["SchemaName"] as! String
        }
        if dict.keys.contains("Statuses") {
            self.statuses = dict["Statuses"] as! [String]
        }
    }
}

public class ListApprovalsResponseBody : Tea.TeaModel {
    public class Approvals : Tea.TeaModel {
        public class ApprovalProgresses : Tea.TeaModel {
            public class Operators : Tea.TeaModel {
                public var saseUserId: String?

                public var username: String?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.saseUserId != nil {
                        map["SaseUserId"] = self.saseUserId!
                    }
                    if self.username != nil {
                        map["Username"] = self.username!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("SaseUserId") {
                        self.saseUserId = dict["SaseUserId"] as! String
                    }
                    if dict.keys.contains("Username") {
                        self.username = dict["Username"] as! String
                    }
                }
            }
            public var action: String?

            public var comment: String?

            public var executor: String?

            public var operators: [ListApprovalsResponseBody.Approvals.ApprovalProgresses.Operators]?

            public var status: String?

            public var timestamp: Int64?

            public override init() {
                super.init()
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
                if self.comment != nil {
                    map["Comment"] = self.comment!
                }
                if self.executor != nil {
                    map["Executor"] = self.executor!
                }
                if self.operators != nil {
                    var tmp : [Any] = []
                    for k in self.operators! {
                        tmp.append(k.toMap())
                    }
                    map["Operators"] = tmp
                }
                if self.status != nil {
                    map["Status"] = self.status!
                }
                if self.timestamp != nil {
                    map["Timestamp"] = self.timestamp!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("Action") {
                    self.action = dict["Action"] as! String
                }
                if dict.keys.contains("Comment") {
                    self.comment = dict["Comment"] as! String
                }
                if dict.keys.contains("Executor") {
                    self.executor = dict["Executor"] as! String
                }
                if dict.keys.contains("Operators") {
                    var tmp : [ListApprovalsResponseBody.Approvals.ApprovalProgresses.Operators] = []
                    for v in dict["Operators"] as! [Any] {
                        var model = ListApprovalsResponseBody.Approvals.ApprovalProgresses.Operators()
                        if v != nil {
                            model.fromMap(v as! [String: Any])
                        }
                        tmp.append(model)
                    }
                    self.operators = tmp
                }
                if dict.keys.contains("Status") {
                    self.status = dict["Status"] as! String
                }
                if dict.keys.contains("Timestamp") {
                    self.timestamp = dict["Timestamp"] as! Int64
                }
            }
        }
        public var approvalDetail: String?

        public var approvalId: String?

        public var approvalProgresses: [ListApprovalsResponseBody.Approvals.ApprovalProgresses]?

        public var createTime: String?

        public var creatorDepartment: String?

        public var creatorDevTag: String?

        public var creatorUserId: String?

        public var creatorUsername: String?

        public var endTimestamp: Int64?

        public var policyType: String?

        public var processId: String?

        public var processName: String?

        public var reason: String?

        public var schemaContent: String?

        public var schemaId: String?

        public var schemaName: String?

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
            if self.approvalDetail != nil {
                map["ApprovalDetail"] = self.approvalDetail!
            }
            if self.approvalId != nil {
                map["ApprovalId"] = self.approvalId!
            }
            if self.approvalProgresses != nil {
                var tmp : [Any] = []
                for k in self.approvalProgresses! {
                    tmp.append(k.toMap())
                }
                map["ApprovalProgresses"] = tmp
            }
            if self.createTime != nil {
                map["CreateTime"] = self.createTime!
            }
            if self.creatorDepartment != nil {
                map["CreatorDepartment"] = self.creatorDepartment!
            }
            if self.creatorDevTag != nil {
                map["CreatorDevTag"] = self.creatorDevTag!
            }
            if self.creatorUserId != nil {
                map["CreatorUserId"] = self.creatorUserId!
            }
            if self.creatorUsername != nil {
                map["CreatorUsername"] = self.creatorUsername!
            }
            if self.endTimestamp != nil {
                map["EndTimestamp"] = self.endTimestamp!
            }
            if self.policyType != nil {
                map["PolicyType"] = self.policyType!
            }
            if self.processId != nil {
                map["ProcessId"] = self.processId!
            }
            if self.processName != nil {
                map["ProcessName"] = self.processName!
            }
            if self.reason != nil {
                map["Reason"] = self.reason!
            }
            if self.schemaContent != nil {
                map["SchemaContent"] = self.schemaContent!
            }
            if self.schemaId != nil {
                map["SchemaId"] = self.schemaId!
            }
            if self.schemaName != nil {
                map["SchemaName"] = self.schemaName!
            }
            if self.status != nil {
                map["Status"] = self.status!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("ApprovalDetail") {
                self.approvalDetail = dict["ApprovalDetail"] as! String
            }
            if dict.keys.contains("ApprovalId") {
                self.approvalId = dict["ApprovalId"] as! String
            }
            if dict.keys.contains("ApprovalProgresses") {
                var tmp : [ListApprovalsResponseBody.Approvals.ApprovalProgresses] = []
                for v in dict["ApprovalProgresses"] as! [Any] {
                    var model = ListApprovalsResponseBody.Approvals.ApprovalProgresses()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.approvalProgresses = tmp
            }
            if dict.keys.contains("CreateTime") {
                self.createTime = dict["CreateTime"] as! String
            }
            if dict.keys.contains("CreatorDepartment") {
                self.creatorDepartment = dict["CreatorDepartment"] as! String
            }
            if dict.keys.contains("CreatorDevTag") {
                self.creatorDevTag = dict["CreatorDevTag"] as! String
            }
            if dict.keys.contains("CreatorUserId") {
                self.creatorUserId = dict["CreatorUserId"] as! String
            }
            if dict.keys.contains("CreatorUsername") {
                self.creatorUsername = dict["CreatorUsername"] as! String
            }
            if dict.keys.contains("EndTimestamp") {
                self.endTimestamp = dict["EndTimestamp"] as! Int64
            }
            if dict.keys.contains("PolicyType") {
                self.policyType = dict["PolicyType"] as! String
            }
            if dict.keys.contains("ProcessId") {
                self.processId = dict["ProcessId"] as! String
            }
            if dict.keys.contains("ProcessName") {
                self.processName = dict["ProcessName"] as! String
            }
            if dict.keys.contains("Reason") {
                self.reason = dict["Reason"] as! String
            }
            if dict.keys.contains("SchemaContent") {
                self.schemaContent = dict["SchemaContent"] as! String
            }
            if dict.keys.contains("SchemaId") {
                self.schemaId = dict["SchemaId"] as! String
            }
            if dict.keys.contains("SchemaName") {
                self.schemaName = dict["SchemaName"] as! String
            }
            if dict.keys.contains("Status") {
                self.status = dict["Status"] as! String
            }
        }
    }
    public var approvals: [ListApprovalsResponseBody.Approvals]?

    public var requestId: String?

    public var totalNum: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.approvals != nil {
            var tmp : [Any] = []
            for k in self.approvals! {
                tmp.append(k.toMap())
            }
            map["Approvals"] = tmp
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.totalNum != nil {
            map["TotalNum"] = self.totalNum!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Approvals") {
            var tmp : [ListApprovalsResponseBody.Approvals] = []
            for v in dict["Approvals"] as! [Any] {
                var model = ListApprovalsResponseBody.Approvals()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.approvals = tmp
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("TotalNum") {
            self.totalNum = dict["TotalNum"] as! String
        }
    }
}

public class ListApprovalsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListApprovalsResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = ListApprovalsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListClientUsersRequest : Tea.TeaModel {
    public var currentPage: Int64?

    public var departmentId: String?

    public var email: String?

    public var idpConfigId: String?

    public var mobileNumber: String?

    public var pageSize: Int64?

    public var status: String?

    public var username: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.currentPage != nil {
            map["CurrentPage"] = self.currentPage!
        }
        if self.departmentId != nil {
            map["DepartmentId"] = self.departmentId!
        }
        if self.email != nil {
            map["Email"] = self.email!
        }
        if self.idpConfigId != nil {
            map["IdpConfigId"] = self.idpConfigId!
        }
        if self.mobileNumber != nil {
            map["MobileNumber"] = self.mobileNumber!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.status != nil {
            map["Status"] = self.status!
        }
        if self.username != nil {
            map["Username"] = self.username!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("CurrentPage") {
            self.currentPage = dict["CurrentPage"] as! Int64
        }
        if dict.keys.contains("DepartmentId") {
            self.departmentId = dict["DepartmentId"] as! String
        }
        if dict.keys.contains("Email") {
            self.email = dict["Email"] as! String
        }
        if dict.keys.contains("IdpConfigId") {
            self.idpConfigId = dict["IdpConfigId"] as! String
        }
        if dict.keys.contains("MobileNumber") {
            self.mobileNumber = dict["MobileNumber"] as! String
        }
        if dict.keys.contains("PageSize") {
            self.pageSize = dict["PageSize"] as! Int64
        }
        if dict.keys.contains("Status") {
            self.status = dict["Status"] as! String
        }
        if dict.keys.contains("Username") {
            self.username = dict["Username"] as! String
        }
    }
}

public class ListClientUsersResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class DataList : Tea.TeaModel {
            public class Department : Tea.TeaModel {
                public var id: String?

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
                    if self.id != nil {
                        map["Id"] = self.id!
                    }
                    if self.name != nil {
                        map["Name"] = self.name!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("Id") {
                        self.id = dict["Id"] as! String
                    }
                    if dict.keys.contains("Name") {
                        self.name = dict["Name"] as! String
                    }
                }
            }
            public var department: ListClientUsersResponseBody.Data.DataList.Department?

            public var departmentId: String?

            public var description_: String?

            public var email: String?

            public var id: String?

            public var idpConfigId: String?

            public var mobileNumber: String?

            public var status: String?

            public var userId: String?

            public var username: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
                try self.department?.validate()
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.department != nil {
                    map["Department"] = self.department?.toMap()
                }
                if self.departmentId != nil {
                    map["DepartmentId"] = self.departmentId!
                }
                if self.description_ != nil {
                    map["Description"] = self.description_!
                }
                if self.email != nil {
                    map["Email"] = self.email!
                }
                if self.id != nil {
                    map["Id"] = self.id!
                }
                if self.idpConfigId != nil {
                    map["IdpConfigId"] = self.idpConfigId!
                }
                if self.mobileNumber != nil {
                    map["MobileNumber"] = self.mobileNumber!
                }
                if self.status != nil {
                    map["Status"] = self.status!
                }
                if self.userId != nil {
                    map["UserId"] = self.userId!
                }
                if self.username != nil {
                    map["Username"] = self.username!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("Department") {
                    var model = ListClientUsersResponseBody.Data.DataList.Department()
                    model.fromMap(dict["Department"] as! [String: Any])
                    self.department = model
                }
                if dict.keys.contains("DepartmentId") {
                    self.departmentId = dict["DepartmentId"] as! String
                }
                if dict.keys.contains("Description") {
                    self.description_ = dict["Description"] as! String
                }
                if dict.keys.contains("Email") {
                    self.email = dict["Email"] as! String
                }
                if dict.keys.contains("Id") {
                    self.id = dict["Id"] as! String
                }
                if dict.keys.contains("IdpConfigId") {
                    self.idpConfigId = dict["IdpConfigId"] as! String
                }
                if dict.keys.contains("MobileNumber") {
                    self.mobileNumber = dict["MobileNumber"] as! String
                }
                if dict.keys.contains("Status") {
                    self.status = dict["Status"] as! String
                }
                if dict.keys.contains("UserId") {
                    self.userId = dict["UserId"] as! String
                }
                if dict.keys.contains("Username") {
                    self.username = dict["Username"] as! String
                }
            }
        }
        public var dataList: [ListClientUsersResponseBody.Data.DataList]?

        public var totalNum: Int64?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.dataList != nil {
                var tmp : [Any] = []
                for k in self.dataList! {
                    tmp.append(k.toMap())
                }
                map["DataList"] = tmp
            }
            if self.totalNum != nil {
                map["TotalNum"] = self.totalNum!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("DataList") {
                var tmp : [ListClientUsersResponseBody.Data.DataList] = []
                for v in dict["DataList"] as! [Any] {
                    var model = ListClientUsersResponseBody.Data.DataList()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.dataList = tmp
            }
            if dict.keys.contains("TotalNum") {
                self.totalNum = dict["TotalNum"] as! Int64
            }
        }
    }
    public var data: ListClientUsersResponseBody.Data?

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
            var model = ListClientUsersResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class ListClientUsersResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListClientUsersResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = ListClientUsersResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListConnectorsRequest : Tea.TeaModel {
    public var connectorIds: [String]?

    public var currentPage: Int32?

    public var name: String?

    public var pageSize: Int32?

    public var status: String?

    public var switchStatus: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.connectorIds != nil {
            map["ConnectorIds"] = self.connectorIds!
        }
        if self.currentPage != nil {
            map["CurrentPage"] = self.currentPage!
        }
        if self.name != nil {
            map["Name"] = self.name!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.status != nil {
            map["Status"] = self.status!
        }
        if self.switchStatus != nil {
            map["SwitchStatus"] = self.switchStatus!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ConnectorIds") {
            self.connectorIds = dict["ConnectorIds"] as! [String]
        }
        if dict.keys.contains("CurrentPage") {
            self.currentPage = dict["CurrentPage"] as! Int32
        }
        if dict.keys.contains("Name") {
            self.name = dict["Name"] as! String
        }
        if dict.keys.contains("PageSize") {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("Status") {
            self.status = dict["Status"] as! String
        }
        if dict.keys.contains("SwitchStatus") {
            self.switchStatus = dict["SwitchStatus"] as! String
        }
    }
}

public class ListConnectorsResponseBody : Tea.TeaModel {
    public class Connectors : Tea.TeaModel {
        public class Applications : Tea.TeaModel {
            public var applicationId: String?

            public var applicationName: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.applicationId != nil {
                    map["ApplicationId"] = self.applicationId!
                }
                if self.applicationName != nil {
                    map["ApplicationName"] = self.applicationName!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("ApplicationId") {
                    self.applicationId = dict["ApplicationId"] as! String
                }
                if dict.keys.contains("ApplicationName") {
                    self.applicationName = dict["ApplicationName"] as! String
                }
            }
        }
        public class ConnectorClients : Tea.TeaModel {
            public var connectionStatus: String?

            public var devTag: String?

            public var hostname: String?

            public var publicIp: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.connectionStatus != nil {
                    map["ConnectionStatus"] = self.connectionStatus!
                }
                if self.devTag != nil {
                    map["DevTag"] = self.devTag!
                }
                if self.hostname != nil {
                    map["Hostname"] = self.hostname!
                }
                if self.publicIp != nil {
                    map["PublicIp"] = self.publicIp!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("ConnectionStatus") {
                    self.connectionStatus = dict["ConnectionStatus"] as! String
                }
                if dict.keys.contains("DevTag") {
                    self.devTag = dict["DevTag"] as! String
                }
                if dict.keys.contains("Hostname") {
                    self.hostname = dict["Hostname"] as! String
                }
                if dict.keys.contains("PublicIp") {
                    self.publicIp = dict["PublicIp"] as! String
                }
            }
        }
        public class UpgradeTime : Tea.TeaModel {
            public var end: String?

            public var start: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.end != nil {
                    map["End"] = self.end!
                }
                if self.start != nil {
                    map["Start"] = self.start!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("End") {
                    self.end = dict["End"] as! String
                }
                if dict.keys.contains("Start") {
                    self.start = dict["Start"] as! String
                }
            }
        }
        public var applications: [ListConnectorsResponseBody.Connectors.Applications]?

        public var connectorClients: [ListConnectorsResponseBody.Connectors.ConnectorClients]?

        public var connectorId: String?

        public var createTime: String?

        public var name: String?

        public var regionId: String?

        public var status: String?

        public var switchStatus: String?

        public var upgradeTime: ListConnectorsResponseBody.Connectors.UpgradeTime?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.upgradeTime?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.applications != nil {
                var tmp : [Any] = []
                for k in self.applications! {
                    tmp.append(k.toMap())
                }
                map["Applications"] = tmp
            }
            if self.connectorClients != nil {
                var tmp : [Any] = []
                for k in self.connectorClients! {
                    tmp.append(k.toMap())
                }
                map["ConnectorClients"] = tmp
            }
            if self.connectorId != nil {
                map["ConnectorId"] = self.connectorId!
            }
            if self.createTime != nil {
                map["CreateTime"] = self.createTime!
            }
            if self.name != nil {
                map["Name"] = self.name!
            }
            if self.regionId != nil {
                map["RegionId"] = self.regionId!
            }
            if self.status != nil {
                map["Status"] = self.status!
            }
            if self.switchStatus != nil {
                map["SwitchStatus"] = self.switchStatus!
            }
            if self.upgradeTime != nil {
                map["UpgradeTime"] = self.upgradeTime?.toMap()
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Applications") {
                var tmp : [ListConnectorsResponseBody.Connectors.Applications] = []
                for v in dict["Applications"] as! [Any] {
                    var model = ListConnectorsResponseBody.Connectors.Applications()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.applications = tmp
            }
            if dict.keys.contains("ConnectorClients") {
                var tmp : [ListConnectorsResponseBody.Connectors.ConnectorClients] = []
                for v in dict["ConnectorClients"] as! [Any] {
                    var model = ListConnectorsResponseBody.Connectors.ConnectorClients()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.connectorClients = tmp
            }
            if dict.keys.contains("ConnectorId") {
                self.connectorId = dict["ConnectorId"] as! String
            }
            if dict.keys.contains("CreateTime") {
                self.createTime = dict["CreateTime"] as! String
            }
            if dict.keys.contains("Name") {
                self.name = dict["Name"] as! String
            }
            if dict.keys.contains("RegionId") {
                self.regionId = dict["RegionId"] as! String
            }
            if dict.keys.contains("Status") {
                self.status = dict["Status"] as! String
            }
            if dict.keys.contains("SwitchStatus") {
                self.switchStatus = dict["SwitchStatus"] as! String
            }
            if dict.keys.contains("UpgradeTime") {
                var model = ListConnectorsResponseBody.Connectors.UpgradeTime()
                model.fromMap(dict["UpgradeTime"] as! [String: Any])
                self.upgradeTime = model
            }
        }
    }
    public var connectors: [ListConnectorsResponseBody.Connectors]?

    public var requestId: String?

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
        if self.connectors != nil {
            var tmp : [Any] = []
            for k in self.connectors! {
                tmp.append(k.toMap())
            }
            map["Connectors"] = tmp
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.totalNum != nil {
            map["TotalNum"] = self.totalNum!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Connectors") {
            var tmp : [ListConnectorsResponseBody.Connectors] = []
            for v in dict["Connectors"] as! [Any] {
                var model = ListConnectorsResponseBody.Connectors()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.connectors = tmp
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("TotalNum") {
            self.totalNum = dict["TotalNum"] as! Int32
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = ListConnectorsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListDynamicRouteRegionsResponseBody : Tea.TeaModel {
    public var regions: [String]?

    public var requestId: String?

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
        if self.regions != nil {
            map["Regions"] = self.regions!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.totalNum != nil {
            map["TotalNum"] = self.totalNum!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Regions") {
            self.regions = dict["Regions"] as! [String]
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("TotalNum") {
            self.totalNum = dict["TotalNum"] as! Int32
        }
    }
}

public class ListDynamicRouteRegionsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListDynamicRouteRegionsResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = ListDynamicRouteRegionsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListDynamicRoutesRequest : Tea.TeaModel {
    public var applicationId: String?

    public var currentPage: Int32?

    public var dynamicRouteIds: [String]?

    public var name: String?

    public var nextHop: String?

    public var pageSize: Int32?

    public var regionIds: [String]?

    public var status: String?

    public var tagId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.applicationId != nil {
            map["ApplicationId"] = self.applicationId!
        }
        if self.currentPage != nil {
            map["CurrentPage"] = self.currentPage!
        }
        if self.dynamicRouteIds != nil {
            map["DynamicRouteIds"] = self.dynamicRouteIds!
        }
        if self.name != nil {
            map["Name"] = self.name!
        }
        if self.nextHop != nil {
            map["NextHop"] = self.nextHop!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.regionIds != nil {
            map["RegionIds"] = self.regionIds!
        }
        if self.status != nil {
            map["Status"] = self.status!
        }
        if self.tagId != nil {
            map["TagId"] = self.tagId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ApplicationId") {
            self.applicationId = dict["ApplicationId"] as! String
        }
        if dict.keys.contains("CurrentPage") {
            self.currentPage = dict["CurrentPage"] as! Int32
        }
        if dict.keys.contains("DynamicRouteIds") {
            self.dynamicRouteIds = dict["DynamicRouteIds"] as! [String]
        }
        if dict.keys.contains("Name") {
            self.name = dict["Name"] as! String
        }
        if dict.keys.contains("NextHop") {
            self.nextHop = dict["NextHop"] as! String
        }
        if dict.keys.contains("PageSize") {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("RegionIds") {
            self.regionIds = dict["RegionIds"] as! [String]
        }
        if dict.keys.contains("Status") {
            self.status = dict["Status"] as! String
        }
        if dict.keys.contains("TagId") {
            self.tagId = dict["TagId"] as! String
        }
    }
}

public class ListDynamicRoutesResponseBody : Tea.TeaModel {
    public class DynamicRoutes : Tea.TeaModel {
        public var applicationIds: [String]?

        public var applicationType: String?

        public var createTime: String?

        public var description_: String?

        public var dynamicRouteId: String?

        public var dynamicRouteType: String?

        public var name: String?

        public var nextHop: String?

        public var priority: Int32?

        public var regionIds: [String]?

        public var status: String?

        public var tagIds: [String]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.applicationIds != nil {
                map["ApplicationIds"] = self.applicationIds!
            }
            if self.applicationType != nil {
                map["ApplicationType"] = self.applicationType!
            }
            if self.createTime != nil {
                map["CreateTime"] = self.createTime!
            }
            if self.description_ != nil {
                map["Description"] = self.description_!
            }
            if self.dynamicRouteId != nil {
                map["DynamicRouteId"] = self.dynamicRouteId!
            }
            if self.dynamicRouteType != nil {
                map["DynamicRouteType"] = self.dynamicRouteType!
            }
            if self.name != nil {
                map["Name"] = self.name!
            }
            if self.nextHop != nil {
                map["NextHop"] = self.nextHop!
            }
            if self.priority != nil {
                map["Priority"] = self.priority!
            }
            if self.regionIds != nil {
                map["RegionIds"] = self.regionIds!
            }
            if self.status != nil {
                map["Status"] = self.status!
            }
            if self.tagIds != nil {
                map["TagIds"] = self.tagIds!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("ApplicationIds") {
                self.applicationIds = dict["ApplicationIds"] as! [String]
            }
            if dict.keys.contains("ApplicationType") {
                self.applicationType = dict["ApplicationType"] as! String
            }
            if dict.keys.contains("CreateTime") {
                self.createTime = dict["CreateTime"] as! String
            }
            if dict.keys.contains("Description") {
                self.description_ = dict["Description"] as! String
            }
            if dict.keys.contains("DynamicRouteId") {
                self.dynamicRouteId = dict["DynamicRouteId"] as! String
            }
            if dict.keys.contains("DynamicRouteType") {
                self.dynamicRouteType = dict["DynamicRouteType"] as! String
            }
            if dict.keys.contains("Name") {
                self.name = dict["Name"] as! String
            }
            if dict.keys.contains("NextHop") {
                self.nextHop = dict["NextHop"] as! String
            }
            if dict.keys.contains("Priority") {
                self.priority = dict["Priority"] as! Int32
            }
            if dict.keys.contains("RegionIds") {
                self.regionIds = dict["RegionIds"] as! [String]
            }
            if dict.keys.contains("Status") {
                self.status = dict["Status"] as! String
            }
            if dict.keys.contains("TagIds") {
                self.tagIds = dict["TagIds"] as! [String]
            }
        }
    }
    public var dynamicRoutes: [ListDynamicRoutesResponseBody.DynamicRoutes]?

    public var requestId: String?

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
        if self.dynamicRoutes != nil {
            var tmp : [Any] = []
            for k in self.dynamicRoutes! {
                tmp.append(k.toMap())
            }
            map["DynamicRoutes"] = tmp
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.totalNum != nil {
            map["TotalNum"] = self.totalNum!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DynamicRoutes") {
            var tmp : [ListDynamicRoutesResponseBody.DynamicRoutes] = []
            for v in dict["DynamicRoutes"] as! [Any] {
                var model = ListDynamicRoutesResponseBody.DynamicRoutes()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.dynamicRoutes = tmp
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("TotalNum") {
            self.totalNum = dict["TotalNum"] as! Int32
        }
    }
}

public class ListDynamicRoutesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListDynamicRoutesResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = ListDynamicRoutesResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListExcessiveDeviceRegistrationApplicationsRequest : Tea.TeaModel {
    public var applicationIds: [String]?

    public var currentPage: Int64?

    public var department: String?

    public var deviceTag: String?

    public var hostname: String?

    public var mac: String?

    public var pageSize: Int64?

    public var saseUserId: String?

    public var statuses: [String]?

    public var username: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.applicationIds != nil {
            map["ApplicationIds"] = self.applicationIds!
        }
        if self.currentPage != nil {
            map["CurrentPage"] = self.currentPage!
        }
        if self.department != nil {
            map["Department"] = self.department!
        }
        if self.deviceTag != nil {
            map["DeviceTag"] = self.deviceTag!
        }
        if self.hostname != nil {
            map["Hostname"] = self.hostname!
        }
        if self.mac != nil {
            map["Mac"] = self.mac!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.saseUserId != nil {
            map["SaseUserId"] = self.saseUserId!
        }
        if self.statuses != nil {
            map["Statuses"] = self.statuses!
        }
        if self.username != nil {
            map["Username"] = self.username!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ApplicationIds") {
            self.applicationIds = dict["ApplicationIds"] as! [String]
        }
        if dict.keys.contains("CurrentPage") {
            self.currentPage = dict["CurrentPage"] as! Int64
        }
        if dict.keys.contains("Department") {
            self.department = dict["Department"] as! String
        }
        if dict.keys.contains("DeviceTag") {
            self.deviceTag = dict["DeviceTag"] as! String
        }
        if dict.keys.contains("Hostname") {
            self.hostname = dict["Hostname"] as! String
        }
        if dict.keys.contains("Mac") {
            self.mac = dict["Mac"] as! String
        }
        if dict.keys.contains("PageSize") {
            self.pageSize = dict["PageSize"] as! Int64
        }
        if dict.keys.contains("SaseUserId") {
            self.saseUserId = dict["SaseUserId"] as! String
        }
        if dict.keys.contains("Statuses") {
            self.statuses = dict["Statuses"] as! [String]
        }
        if dict.keys.contains("Username") {
            self.username = dict["Username"] as! String
        }
    }
}

public class ListExcessiveDeviceRegistrationApplicationsResponseBody : Tea.TeaModel {
    public class Applications : Tea.TeaModel {
        public var applicationId: String?

        public var createTime: String?

        public var department: String?

        public var description_: String?

        public var deviceTag: String?

        public var deviceType: String?

        public var hostname: String?

        public var isUsed: Bool?

        public var mac: String?

        public var saseUserId: String?

        public var status: String?

        public var username: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.applicationId != nil {
                map["ApplicationId"] = self.applicationId!
            }
            if self.createTime != nil {
                map["CreateTime"] = self.createTime!
            }
            if self.department != nil {
                map["Department"] = self.department!
            }
            if self.description_ != nil {
                map["Description"] = self.description_!
            }
            if self.deviceTag != nil {
                map["DeviceTag"] = self.deviceTag!
            }
            if self.deviceType != nil {
                map["DeviceType"] = self.deviceType!
            }
            if self.hostname != nil {
                map["Hostname"] = self.hostname!
            }
            if self.isUsed != nil {
                map["IsUsed"] = self.isUsed!
            }
            if self.mac != nil {
                map["Mac"] = self.mac!
            }
            if self.saseUserId != nil {
                map["SaseUserId"] = self.saseUserId!
            }
            if self.status != nil {
                map["Status"] = self.status!
            }
            if self.username != nil {
                map["Username"] = self.username!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("ApplicationId") {
                self.applicationId = dict["ApplicationId"] as! String
            }
            if dict.keys.contains("CreateTime") {
                self.createTime = dict["CreateTime"] as! String
            }
            if dict.keys.contains("Department") {
                self.department = dict["Department"] as! String
            }
            if dict.keys.contains("Description") {
                self.description_ = dict["Description"] as! String
            }
            if dict.keys.contains("DeviceTag") {
                self.deviceTag = dict["DeviceTag"] as! String
            }
            if dict.keys.contains("DeviceType") {
                self.deviceType = dict["DeviceType"] as! String
            }
            if dict.keys.contains("Hostname") {
                self.hostname = dict["Hostname"] as! String
            }
            if dict.keys.contains("IsUsed") {
                self.isUsed = dict["IsUsed"] as! Bool
            }
            if dict.keys.contains("Mac") {
                self.mac = dict["Mac"] as! String
            }
            if dict.keys.contains("SaseUserId") {
                self.saseUserId = dict["SaseUserId"] as! String
            }
            if dict.keys.contains("Status") {
                self.status = dict["Status"] as! String
            }
            if dict.keys.contains("Username") {
                self.username = dict["Username"] as! String
            }
        }
    }
    public var applications: [ListExcessiveDeviceRegistrationApplicationsResponseBody.Applications]?

    public var requestId: String?

    public var totalNum: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.applications != nil {
            var tmp : [Any] = []
            for k in self.applications! {
                tmp.append(k.toMap())
            }
            map["Applications"] = tmp
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.totalNum != nil {
            map["TotalNum"] = self.totalNum!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Applications") {
            var tmp : [ListExcessiveDeviceRegistrationApplicationsResponseBody.Applications] = []
            for v in dict["Applications"] as! [Any] {
                var model = ListExcessiveDeviceRegistrationApplicationsResponseBody.Applications()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.applications = tmp
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("TotalNum") {
            self.totalNum = dict["TotalNum"] as! Int64
        }
    }
}

public class ListExcessiveDeviceRegistrationApplicationsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListExcessiveDeviceRegistrationApplicationsResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = ListExcessiveDeviceRegistrationApplicationsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListIdpConfigsRequest : Tea.TeaModel {
    public var currentPage: Int64?

    public var include: String?

    public var pageSize: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.currentPage != nil {
            map["CurrentPage"] = self.currentPage!
        }
        if self.include != nil {
            map["Include"] = self.include!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("CurrentPage") {
            self.currentPage = dict["CurrentPage"] as! Int64
        }
        if dict.keys.contains("Include") {
            self.include = dict["Include"] as! String
        }
        if dict.keys.contains("PageSize") {
            self.pageSize = dict["PageSize"] as! Int64
        }
    }
}

public class ListIdpConfigsResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class DataList : Tea.TeaModel {
            public var description_: String?

            public var id: String?

            public var mfa: String?

            public var mobileLoginType: String?

            public var mobileMfaConfigType: String?

            public var multiIdpInfo: String?

            public var name: String?

            public var pcLoginType: String?

            public var status: String?

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
                if self.description_ != nil {
                    map["Description"] = self.description_!
                }
                if self.id != nil {
                    map["Id"] = self.id!
                }
                if self.mfa != nil {
                    map["Mfa"] = self.mfa!
                }
                if self.mobileLoginType != nil {
                    map["MobileLoginType"] = self.mobileLoginType!
                }
                if self.mobileMfaConfigType != nil {
                    map["MobileMfaConfigType"] = self.mobileMfaConfigType!
                }
                if self.multiIdpInfo != nil {
                    map["MultiIdpInfo"] = self.multiIdpInfo!
                }
                if self.name != nil {
                    map["Name"] = self.name!
                }
                if self.pcLoginType != nil {
                    map["PcLoginType"] = self.pcLoginType!
                }
                if self.status != nil {
                    map["Status"] = self.status!
                }
                if self.type != nil {
                    map["Type"] = self.type!
                }
                if self.updateTime != nil {
                    map["UpdateTime"] = self.updateTime!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("Description") {
                    self.description_ = dict["Description"] as! String
                }
                if dict.keys.contains("Id") {
                    self.id = dict["Id"] as! String
                }
                if dict.keys.contains("Mfa") {
                    self.mfa = dict["Mfa"] as! String
                }
                if dict.keys.contains("MobileLoginType") {
                    self.mobileLoginType = dict["MobileLoginType"] as! String
                }
                if dict.keys.contains("MobileMfaConfigType") {
                    self.mobileMfaConfigType = dict["MobileMfaConfigType"] as! String
                }
                if dict.keys.contains("MultiIdpInfo") {
                    self.multiIdpInfo = dict["MultiIdpInfo"] as! String
                }
                if dict.keys.contains("Name") {
                    self.name = dict["Name"] as! String
                }
                if dict.keys.contains("PcLoginType") {
                    self.pcLoginType = dict["PcLoginType"] as! String
                }
                if dict.keys.contains("Status") {
                    self.status = dict["Status"] as! String
                }
                if dict.keys.contains("Type") {
                    self.type = dict["Type"] as! String
                }
                if dict.keys.contains("UpdateTime") {
                    self.updateTime = dict["UpdateTime"] as! String
                }
            }
        }
        public var dataList: [ListIdpConfigsResponseBody.Data.DataList]?

        public var totalNum: Int64?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.dataList != nil {
                var tmp : [Any] = []
                for k in self.dataList! {
                    tmp.append(k.toMap())
                }
                map["DataList"] = tmp
            }
            if self.totalNum != nil {
                map["TotalNum"] = self.totalNum!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("DataList") {
                var tmp : [ListIdpConfigsResponseBody.Data.DataList] = []
                for v in dict["DataList"] as! [Any] {
                    var model = ListIdpConfigsResponseBody.Data.DataList()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.dataList = tmp
            }
            if dict.keys.contains("TotalNum") {
                self.totalNum = dict["TotalNum"] as! Int64
            }
        }
    }
    public var data: ListIdpConfigsResponseBody.Data?

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
            var model = ListIdpConfigsResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class ListIdpConfigsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListIdpConfigsResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = ListIdpConfigsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListIdpDepartmentsRequest : Tea.TeaModel {
    public var currentPage: Int64?

    public var idpConfigId: String?

    public var pageSize: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.currentPage != nil {
            map["CurrentPage"] = self.currentPage!
        }
        if self.idpConfigId != nil {
            map["IdpConfigId"] = self.idpConfigId!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("CurrentPage") {
            self.currentPage = dict["CurrentPage"] as! Int64
        }
        if dict.keys.contains("IdpConfigId") {
            self.idpConfigId = dict["IdpConfigId"] as! String
        }
        if dict.keys.contains("PageSize") {
            self.pageSize = dict["PageSize"] as! Int64
        }
    }
}

public class ListIdpDepartmentsResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class DataList : Tea.TeaModel {
            public var id: String?

            public var idpConfigId: String?

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
                if self.id != nil {
                    map["Id"] = self.id!
                }
                if self.idpConfigId != nil {
                    map["IdpConfigId"] = self.idpConfigId!
                }
                if self.name != nil {
                    map["Name"] = self.name!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("Id") {
                    self.id = dict["Id"] as! String
                }
                if dict.keys.contains("IdpConfigId") {
                    self.idpConfigId = dict["IdpConfigId"] as! String
                }
                if dict.keys.contains("Name") {
                    self.name = dict["Name"] as! String
                }
            }
        }
        public var dataList: [ListIdpDepartmentsResponseBody.Data.DataList]?

        public var totalNum: Int64?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.dataList != nil {
                var tmp : [Any] = []
                for k in self.dataList! {
                    tmp.append(k.toMap())
                }
                map["DataList"] = tmp
            }
            if self.totalNum != nil {
                map["TotalNum"] = self.totalNum!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("DataList") {
                var tmp : [ListIdpDepartmentsResponseBody.Data.DataList] = []
                for v in dict["DataList"] as! [Any] {
                    var model = ListIdpDepartmentsResponseBody.Data.DataList()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.dataList = tmp
            }
            if dict.keys.contains("TotalNum") {
                self.totalNum = dict["TotalNum"] as! Int64
            }
        }
    }
    public var data: ListIdpDepartmentsResponseBody.Data?

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
            var model = ListIdpDepartmentsResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class ListIdpDepartmentsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListIdpDepartmentsResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = ListIdpDepartmentsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListNacUserCertRequest : Tea.TeaModel {
    public var currentPage: String?

    public var department: String?

    public var deviceType: String?

    public var endTime: Int64?

    public var pageSize: String?

    public var startTime: Int64?

    public var status: String?

    public var username: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.currentPage != nil {
            map["CurrentPage"] = self.currentPage!
        }
        if self.department != nil {
            map["Department"] = self.department!
        }
        if self.deviceType != nil {
            map["DeviceType"] = self.deviceType!
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
        if self.status != nil {
            map["Status"] = self.status!
        }
        if self.username != nil {
            map["Username"] = self.username!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("CurrentPage") {
            self.currentPage = dict["CurrentPage"] as! String
        }
        if dict.keys.contains("Department") {
            self.department = dict["Department"] as! String
        }
        if dict.keys.contains("DeviceType") {
            self.deviceType = dict["DeviceType"] as! String
        }
        if dict.keys.contains("EndTime") {
            self.endTime = dict["EndTime"] as! Int64
        }
        if dict.keys.contains("PageSize") {
            self.pageSize = dict["PageSize"] as! String
        }
        if dict.keys.contains("StartTime") {
            self.startTime = dict["StartTime"] as! Int64
        }
        if dict.keys.contains("Status") {
            self.status = dict["Status"] as! String
        }
        if dict.keys.contains("Username") {
            self.username = dict["Username"] as! String
        }
    }
}

public class ListNacUserCertResponseBody : Tea.TeaModel {
    public class DataList : Tea.TeaModel {
        public var aliuid: String?

        public var department: String?

        public var devTag: String?

        public var deviceType: String?

        public var expiredTime: String?

        public var hostname: String?

        public var mac: String?

        public var status: String?

        public var userId: String?

        public var username: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.aliuid != nil {
                map["Aliuid"] = self.aliuid!
            }
            if self.department != nil {
                map["Department"] = self.department!
            }
            if self.devTag != nil {
                map["DevTag"] = self.devTag!
            }
            if self.deviceType != nil {
                map["DeviceType"] = self.deviceType!
            }
            if self.expiredTime != nil {
                map["ExpiredTime"] = self.expiredTime!
            }
            if self.hostname != nil {
                map["Hostname"] = self.hostname!
            }
            if self.mac != nil {
                map["Mac"] = self.mac!
            }
            if self.status != nil {
                map["Status"] = self.status!
            }
            if self.userId != nil {
                map["UserId"] = self.userId!
            }
            if self.username != nil {
                map["Username"] = self.username!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Aliuid") {
                self.aliuid = dict["Aliuid"] as! String
            }
            if dict.keys.contains("Department") {
                self.department = dict["Department"] as! String
            }
            if dict.keys.contains("DevTag") {
                self.devTag = dict["DevTag"] as! String
            }
            if dict.keys.contains("DeviceType") {
                self.deviceType = dict["DeviceType"] as! String
            }
            if dict.keys.contains("ExpiredTime") {
                self.expiredTime = dict["ExpiredTime"] as! String
            }
            if dict.keys.contains("Hostname") {
                self.hostname = dict["Hostname"] as! String
            }
            if dict.keys.contains("Mac") {
                self.mac = dict["Mac"] as! String
            }
            if dict.keys.contains("Status") {
                self.status = dict["Status"] as! String
            }
            if dict.keys.contains("UserId") {
                self.userId = dict["UserId"] as! String
            }
            if dict.keys.contains("Username") {
                self.username = dict["Username"] as! String
            }
        }
    }
    public var code: Int64?

    public var dataList: [ListNacUserCertResponseBody.DataList]?

    public var message: String?

    public var requestId: String?

    public var totalNum: Int64?

    public override init() {
        super.init()
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
        if self.dataList != nil {
            var tmp : [Any] = []
            for k in self.dataList! {
                tmp.append(k.toMap())
            }
            map["DataList"] = tmp
        }
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.totalNum != nil {
            map["TotalNum"] = self.totalNum!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! Int64
        }
        if dict.keys.contains("DataList") {
            var tmp : [ListNacUserCertResponseBody.DataList] = []
            for v in dict["DataList"] as! [Any] {
                var model = ListNacUserCertResponseBody.DataList()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.dataList = tmp
        }
        if dict.keys.contains("Message") {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("TotalNum") {
            self.totalNum = dict["TotalNum"] as! Int64
        }
    }
}

public class ListNacUserCertResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListNacUserCertResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = ListNacUserCertResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListPolicesForPrivateAccessApplicationRequest : Tea.TeaModel {
    public var applicationIds: [String]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.applicationIds != nil {
            map["ApplicationIds"] = self.applicationIds!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ApplicationIds") {
            self.applicationIds = dict["ApplicationIds"] as! [String]
        }
    }
}

public class ListPolicesForPrivateAccessApplicationResponseBody : Tea.TeaModel {
    public class Applications : Tea.TeaModel {
        public class Policies : Tea.TeaModel {
            public class CustomUserAttributes : Tea.TeaModel {
                public var idpId: Int32?

                public var relation: String?

                public var userGroupType: String?

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
                    if self.idpId != nil {
                        map["IdpId"] = self.idpId!
                    }
                    if self.relation != nil {
                        map["Relation"] = self.relation!
                    }
                    if self.userGroupType != nil {
                        map["UserGroupType"] = self.userGroupType!
                    }
                    if self.value != nil {
                        map["Value"] = self.value!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("IdpId") {
                        self.idpId = dict["IdpId"] as! Int32
                    }
                    if dict.keys.contains("Relation") {
                        self.relation = dict["Relation"] as! String
                    }
                    if dict.keys.contains("UserGroupType") {
                        self.userGroupType = dict["UserGroupType"] as! String
                    }
                    if dict.keys.contains("Value") {
                        self.value = dict["Value"] as! String
                    }
                }
            }
            public var applicationType: String?

            public var createTime: String?

            public var customUserAttributes: [ListPolicesForPrivateAccessApplicationResponseBody.Applications.Policies.CustomUserAttributes]?

            public var description_: String?

            public var name: String?

            public var policyAction: String?

            public var policyId: String?

            public var priority: Int32?

            public var status: String?

            public var userGroupType: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.applicationType != nil {
                    map["ApplicationType"] = self.applicationType!
                }
                if self.createTime != nil {
                    map["CreateTime"] = self.createTime!
                }
                if self.customUserAttributes != nil {
                    var tmp : [Any] = []
                    for k in self.customUserAttributes! {
                        tmp.append(k.toMap())
                    }
                    map["CustomUserAttributes"] = tmp
                }
                if self.description_ != nil {
                    map["Description"] = self.description_!
                }
                if self.name != nil {
                    map["Name"] = self.name!
                }
                if self.policyAction != nil {
                    map["PolicyAction"] = self.policyAction!
                }
                if self.policyId != nil {
                    map["PolicyId"] = self.policyId!
                }
                if self.priority != nil {
                    map["Priority"] = self.priority!
                }
                if self.status != nil {
                    map["Status"] = self.status!
                }
                if self.userGroupType != nil {
                    map["UserGroupType"] = self.userGroupType!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("ApplicationType") {
                    self.applicationType = dict["ApplicationType"] as! String
                }
                if dict.keys.contains("CreateTime") {
                    self.createTime = dict["CreateTime"] as! String
                }
                if dict.keys.contains("CustomUserAttributes") {
                    var tmp : [ListPolicesForPrivateAccessApplicationResponseBody.Applications.Policies.CustomUserAttributes] = []
                    for v in dict["CustomUserAttributes"] as! [Any] {
                        var model = ListPolicesForPrivateAccessApplicationResponseBody.Applications.Policies.CustomUserAttributes()
                        if v != nil {
                            model.fromMap(v as! [String: Any])
                        }
                        tmp.append(model)
                    }
                    self.customUserAttributes = tmp
                }
                if dict.keys.contains("Description") {
                    self.description_ = dict["Description"] as! String
                }
                if dict.keys.contains("Name") {
                    self.name = dict["Name"] as! String
                }
                if dict.keys.contains("PolicyAction") {
                    self.policyAction = dict["PolicyAction"] as! String
                }
                if dict.keys.contains("PolicyId") {
                    self.policyId = dict["PolicyId"] as! String
                }
                if dict.keys.contains("Priority") {
                    self.priority = dict["Priority"] as! Int32
                }
                if dict.keys.contains("Status") {
                    self.status = dict["Status"] as! String
                }
                if dict.keys.contains("UserGroupType") {
                    self.userGroupType = dict["UserGroupType"] as! String
                }
            }
        }
        public var applicationId: String?

        public var policies: [ListPolicesForPrivateAccessApplicationResponseBody.Applications.Policies]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.applicationId != nil {
                map["ApplicationId"] = self.applicationId!
            }
            if self.policies != nil {
                var tmp : [Any] = []
                for k in self.policies! {
                    tmp.append(k.toMap())
                }
                map["Policies"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("ApplicationId") {
                self.applicationId = dict["ApplicationId"] as! String
            }
            if dict.keys.contains("Policies") {
                var tmp : [ListPolicesForPrivateAccessApplicationResponseBody.Applications.Policies] = []
                for v in dict["Policies"] as! [Any] {
                    var model = ListPolicesForPrivateAccessApplicationResponseBody.Applications.Policies()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.policies = tmp
            }
        }
    }
    public var applications: [ListPolicesForPrivateAccessApplicationResponseBody.Applications]?

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
        if self.applications != nil {
            var tmp : [Any] = []
            for k in self.applications! {
                tmp.append(k.toMap())
            }
            map["Applications"] = tmp
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Applications") {
            var tmp : [ListPolicesForPrivateAccessApplicationResponseBody.Applications] = []
            for v in dict["Applications"] as! [Any] {
                var model = ListPolicesForPrivateAccessApplicationResponseBody.Applications()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.applications = tmp
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class ListPolicesForPrivateAccessApplicationResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListPolicesForPrivateAccessApplicationResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = ListPolicesForPrivateAccessApplicationResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListPolicesForPrivateAccessTagRequest : Tea.TeaModel {
    public var tagIds: [String]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.tagIds != nil {
            map["TagIds"] = self.tagIds!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("TagIds") {
            self.tagIds = dict["TagIds"] as! [String]
        }
    }
}

public class ListPolicesForPrivateAccessTagResponseBody : Tea.TeaModel {
    public class Tags : Tea.TeaModel {
        public class Polices : Tea.TeaModel {
            public class CustomUserAttributes : Tea.TeaModel {
                public var idpId: Int32?

                public var relation: String?

                public var userGroupType: String?

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
                    if self.idpId != nil {
                        map["IdpId"] = self.idpId!
                    }
                    if self.relation != nil {
                        map["Relation"] = self.relation!
                    }
                    if self.userGroupType != nil {
                        map["UserGroupType"] = self.userGroupType!
                    }
                    if self.value != nil {
                        map["Value"] = self.value!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("IdpId") {
                        self.idpId = dict["IdpId"] as! Int32
                    }
                    if dict.keys.contains("Relation") {
                        self.relation = dict["Relation"] as! String
                    }
                    if dict.keys.contains("UserGroupType") {
                        self.userGroupType = dict["UserGroupType"] as! String
                    }
                    if dict.keys.contains("Value") {
                        self.value = dict["Value"] as! String
                    }
                }
            }
            public var applicationType: String?

            public var createTime: String?

            public var customUserAttributes: [ListPolicesForPrivateAccessTagResponseBody.Tags.Polices.CustomUserAttributes]?

            public var description_: String?

            public var name: String?

            public var policyAction: String?

            public var policyId: String?

            public var priority: Int32?

            public var status: String?

            public var userGroupType: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.applicationType != nil {
                    map["ApplicationType"] = self.applicationType!
                }
                if self.createTime != nil {
                    map["CreateTime"] = self.createTime!
                }
                if self.customUserAttributes != nil {
                    var tmp : [Any] = []
                    for k in self.customUserAttributes! {
                        tmp.append(k.toMap())
                    }
                    map["CustomUserAttributes"] = tmp
                }
                if self.description_ != nil {
                    map["Description"] = self.description_!
                }
                if self.name != nil {
                    map["Name"] = self.name!
                }
                if self.policyAction != nil {
                    map["PolicyAction"] = self.policyAction!
                }
                if self.policyId != nil {
                    map["PolicyId"] = self.policyId!
                }
                if self.priority != nil {
                    map["Priority"] = self.priority!
                }
                if self.status != nil {
                    map["Status"] = self.status!
                }
                if self.userGroupType != nil {
                    map["UserGroupType"] = self.userGroupType!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("ApplicationType") {
                    self.applicationType = dict["ApplicationType"] as! String
                }
                if dict.keys.contains("CreateTime") {
                    self.createTime = dict["CreateTime"] as! String
                }
                if dict.keys.contains("CustomUserAttributes") {
                    var tmp : [ListPolicesForPrivateAccessTagResponseBody.Tags.Polices.CustomUserAttributes] = []
                    for v in dict["CustomUserAttributes"] as! [Any] {
                        var model = ListPolicesForPrivateAccessTagResponseBody.Tags.Polices.CustomUserAttributes()
                        if v != nil {
                            model.fromMap(v as! [String: Any])
                        }
                        tmp.append(model)
                    }
                    self.customUserAttributes = tmp
                }
                if dict.keys.contains("Description") {
                    self.description_ = dict["Description"] as! String
                }
                if dict.keys.contains("Name") {
                    self.name = dict["Name"] as! String
                }
                if dict.keys.contains("PolicyAction") {
                    self.policyAction = dict["PolicyAction"] as! String
                }
                if dict.keys.contains("PolicyId") {
                    self.policyId = dict["PolicyId"] as! String
                }
                if dict.keys.contains("Priority") {
                    self.priority = dict["Priority"] as! Int32
                }
                if dict.keys.contains("Status") {
                    self.status = dict["Status"] as! String
                }
                if dict.keys.contains("UserGroupType") {
                    self.userGroupType = dict["UserGroupType"] as! String
                }
            }
        }
        public var polices: [ListPolicesForPrivateAccessTagResponseBody.Tags.Polices]?

        public var tagId: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.polices != nil {
                var tmp : [Any] = []
                for k in self.polices! {
                    tmp.append(k.toMap())
                }
                map["Polices"] = tmp
            }
            if self.tagId != nil {
                map["TagId"] = self.tagId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Polices") {
                var tmp : [ListPolicesForPrivateAccessTagResponseBody.Tags.Polices] = []
                for v in dict["Polices"] as! [Any] {
                    var model = ListPolicesForPrivateAccessTagResponseBody.Tags.Polices()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.polices = tmp
            }
            if dict.keys.contains("TagId") {
                self.tagId = dict["TagId"] as! String
            }
        }
    }
    public var requestId: String?

    public var tags: [ListPolicesForPrivateAccessTagResponseBody.Tags]?

    public override init() {
        super.init()
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
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Tags") {
            var tmp : [ListPolicesForPrivateAccessTagResponseBody.Tags] = []
            for v in dict["Tags"] as! [Any] {
                var model = ListPolicesForPrivateAccessTagResponseBody.Tags()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.tags = tmp
        }
    }
}

public class ListPolicesForPrivateAccessTagResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListPolicesForPrivateAccessTagResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = ListPolicesForPrivateAccessTagResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListPolicesForUserGroupRequest : Tea.TeaModel {
    public var userGroupIds: [String]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.userGroupIds != nil {
            map["UserGroupIds"] = self.userGroupIds!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("UserGroupIds") {
            self.userGroupIds = dict["UserGroupIds"] as! [String]
        }
    }
}

public class ListPolicesForUserGroupResponseBody : Tea.TeaModel {
    public class UserGroups : Tea.TeaModel {
        public class Polices : Tea.TeaModel {
            public var name: String?

            public var policyId: String?

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
                if self.name != nil {
                    map["Name"] = self.name!
                }
                if self.policyId != nil {
                    map["PolicyId"] = self.policyId!
                }
                if self.policyType != nil {
                    map["PolicyType"] = self.policyType!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("Name") {
                    self.name = dict["Name"] as! String
                }
                if dict.keys.contains("PolicyId") {
                    self.policyId = dict["PolicyId"] as! String
                }
                if dict.keys.contains("PolicyType") {
                    self.policyType = dict["PolicyType"] as! String
                }
            }
        }
        public var polices: [ListPolicesForUserGroupResponseBody.UserGroups.Polices]?

        public var userGroupId: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.polices != nil {
                var tmp : [Any] = []
                for k in self.polices! {
                    tmp.append(k.toMap())
                }
                map["Polices"] = tmp
            }
            if self.userGroupId != nil {
                map["UserGroupId"] = self.userGroupId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Polices") {
                var tmp : [ListPolicesForUserGroupResponseBody.UserGroups.Polices] = []
                for v in dict["Polices"] as! [Any] {
                    var model = ListPolicesForUserGroupResponseBody.UserGroups.Polices()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.polices = tmp
            }
            if dict.keys.contains("UserGroupId") {
                self.userGroupId = dict["UserGroupId"] as! String
            }
        }
    }
    public var requestId: String?

    public var userGroups: [ListPolicesForUserGroupResponseBody.UserGroups]?

    public override init() {
        super.init()
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
        if self.userGroups != nil {
            var tmp : [Any] = []
            for k in self.userGroups! {
                tmp.append(k.toMap())
            }
            map["UserGroups"] = tmp
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("UserGroups") {
            var tmp : [ListPolicesForUserGroupResponseBody.UserGroups] = []
            for v in dict["UserGroups"] as! [Any] {
                var model = ListPolicesForUserGroupResponseBody.UserGroups()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.userGroups = tmp
        }
    }
}

public class ListPolicesForUserGroupResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListPolicesForUserGroupResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = ListPolicesForUserGroupResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListPopTrafficStatisticsRequest : Tea.TeaModel {
    public var endTime: String?

    public var region: String?

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
        if self.endTime != nil {
            map["EndTime"] = self.endTime!
        }
        if self.region != nil {
            map["Region"] = self.region!
        }
        if self.startTime != nil {
            map["StartTime"] = self.startTime!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("EndTime") {
            self.endTime = dict["EndTime"] as! String
        }
        if dict.keys.contains("Region") {
            self.region = dict["Region"] as! String
        }
        if dict.keys.contains("StartTime") {
            self.startTime = dict["StartTime"] as! String
        }
    }
}

public class ListPopTrafficStatisticsResponseBody : Tea.TeaModel {
    public class TrafficData : Tea.TeaModel {
        public class Datapoints : Tea.TeaModel {
            public var average: Double?

            public var dateTime: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.average != nil {
                    map["Average"] = self.average!
                }
                if self.dateTime != nil {
                    map["DateTime"] = self.dateTime!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("Average") {
                    self.average = dict["Average"] as! Double
                }
                if dict.keys.contains("DateTime") {
                    self.dateTime = dict["DateTime"] as! String
                }
            }
        }
        public var datapoints: [ListPopTrafficStatisticsResponseBody.TrafficData.Datapoints]?

        public var metricName: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.datapoints != nil {
                var tmp : [Any] = []
                for k in self.datapoints! {
                    tmp.append(k.toMap())
                }
                map["Datapoints"] = tmp
            }
            if self.metricName != nil {
                map["MetricName"] = self.metricName!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Datapoints") {
                var tmp : [ListPopTrafficStatisticsResponseBody.TrafficData.Datapoints] = []
                for v in dict["Datapoints"] as! [Any] {
                    var model = ListPopTrafficStatisticsResponseBody.TrafficData.Datapoints()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.datapoints = tmp
            }
            if dict.keys.contains("MetricName") {
                self.metricName = dict["MetricName"] as! String
            }
        }
    }
    public var requestId: String?

    public var trafficData: [ListPopTrafficStatisticsResponseBody.TrafficData]?

    public override init() {
        super.init()
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
        if self.trafficData != nil {
            var tmp : [Any] = []
            for k in self.trafficData! {
                tmp.append(k.toMap())
            }
            map["TrafficData"] = tmp
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("TrafficData") {
            var tmp : [ListPopTrafficStatisticsResponseBody.TrafficData] = []
            for v in dict["TrafficData"] as! [Any] {
                var model = ListPopTrafficStatisticsResponseBody.TrafficData()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.trafficData = tmp
        }
    }
}

public class ListPopTrafficStatisticsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListPopTrafficStatisticsResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = ListPopTrafficStatisticsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListPrivateAccessApplicationsRequest : Tea.TeaModel {
    public var accessModes: String?

    public var address: String?

    public var applicationIds: [String]?

    public var connectorId: String?

    public var currentPage: Int32?

    public var name: String?

    public var pageSize: Int32?

    public var policyId: String?

    public var status: String?

    public var tagId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.accessModes != nil {
            map["AccessModes"] = self.accessModes!
        }
        if self.address != nil {
            map["Address"] = self.address!
        }
        if self.applicationIds != nil {
            map["ApplicationIds"] = self.applicationIds!
        }
        if self.connectorId != nil {
            map["ConnectorId"] = self.connectorId!
        }
        if self.currentPage != nil {
            map["CurrentPage"] = self.currentPage!
        }
        if self.name != nil {
            map["Name"] = self.name!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.policyId != nil {
            map["PolicyId"] = self.policyId!
        }
        if self.status != nil {
            map["Status"] = self.status!
        }
        if self.tagId != nil {
            map["TagId"] = self.tagId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AccessModes") {
            self.accessModes = dict["AccessModes"] as! String
        }
        if dict.keys.contains("Address") {
            self.address = dict["Address"] as! String
        }
        if dict.keys.contains("ApplicationIds") {
            self.applicationIds = dict["ApplicationIds"] as! [String]
        }
        if dict.keys.contains("ConnectorId") {
            self.connectorId = dict["ConnectorId"] as! String
        }
        if dict.keys.contains("CurrentPage") {
            self.currentPage = dict["CurrentPage"] as! Int32
        }
        if dict.keys.contains("Name") {
            self.name = dict["Name"] as! String
        }
        if dict.keys.contains("PageSize") {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("PolicyId") {
            self.policyId = dict["PolicyId"] as! String
        }
        if dict.keys.contains("Status") {
            self.status = dict["Status"] as! String
        }
        if dict.keys.contains("TagId") {
            self.tagId = dict["TagId"] as! String
        }
    }
}

public class ListPrivateAccessApplicationsResponseBody : Tea.TeaModel {
    public class Applications : Tea.TeaModel {
        public class PortRanges : Tea.TeaModel {
            public var begin: Int32?

            public var end: Int32?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.begin != nil {
                    map["Begin"] = self.begin!
                }
                if self.end != nil {
                    map["End"] = self.end!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("Begin") {
                    self.begin = dict["Begin"] as! Int32
                }
                if dict.keys.contains("End") {
                    self.end = dict["End"] as! Int32
                }
            }
        }
        public var addresses: [String]?

        public var applicationId: String?

        public var browserAccessStatus: String?

        public var connectorIds: [String]?

        public var createTime: String?

        public var description_: String?

        public var l7ProxyDomainAutomatic: String?

        public var l7ProxyDomainCustom: String?

        public var name: String?

        public var policyIds: [String]?

        public var portRanges: [ListPrivateAccessApplicationsResponseBody.Applications.PortRanges]?

        public var protocol_: String?

        public var status: String?

        public var tagIds: [String]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.addresses != nil {
                map["Addresses"] = self.addresses!
            }
            if self.applicationId != nil {
                map["ApplicationId"] = self.applicationId!
            }
            if self.browserAccessStatus != nil {
                map["BrowserAccessStatus"] = self.browserAccessStatus!
            }
            if self.connectorIds != nil {
                map["ConnectorIds"] = self.connectorIds!
            }
            if self.createTime != nil {
                map["CreateTime"] = self.createTime!
            }
            if self.description_ != nil {
                map["Description"] = self.description_!
            }
            if self.l7ProxyDomainAutomatic != nil {
                map["L7ProxyDomainAutomatic"] = self.l7ProxyDomainAutomatic!
            }
            if self.l7ProxyDomainCustom != nil {
                map["L7ProxyDomainCustom"] = self.l7ProxyDomainCustom!
            }
            if self.name != nil {
                map["Name"] = self.name!
            }
            if self.policyIds != nil {
                map["PolicyIds"] = self.policyIds!
            }
            if self.portRanges != nil {
                var tmp : [Any] = []
                for k in self.portRanges! {
                    tmp.append(k.toMap())
                }
                map["PortRanges"] = tmp
            }
            if self.protocol_ != nil {
                map["Protocol"] = self.protocol_!
            }
            if self.status != nil {
                map["Status"] = self.status!
            }
            if self.tagIds != nil {
                map["TagIds"] = self.tagIds!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Addresses") {
                self.addresses = dict["Addresses"] as! [String]
            }
            if dict.keys.contains("ApplicationId") {
                self.applicationId = dict["ApplicationId"] as! String
            }
            if dict.keys.contains("BrowserAccessStatus") {
                self.browserAccessStatus = dict["BrowserAccessStatus"] as! String
            }
            if dict.keys.contains("ConnectorIds") {
                self.connectorIds = dict["ConnectorIds"] as! [String]
            }
            if dict.keys.contains("CreateTime") {
                self.createTime = dict["CreateTime"] as! String
            }
            if dict.keys.contains("Description") {
                self.description_ = dict["Description"] as! String
            }
            if dict.keys.contains("L7ProxyDomainAutomatic") {
                self.l7ProxyDomainAutomatic = dict["L7ProxyDomainAutomatic"] as! String
            }
            if dict.keys.contains("L7ProxyDomainCustom") {
                self.l7ProxyDomainCustom = dict["L7ProxyDomainCustom"] as! String
            }
            if dict.keys.contains("Name") {
                self.name = dict["Name"] as! String
            }
            if dict.keys.contains("PolicyIds") {
                self.policyIds = dict["PolicyIds"] as! [String]
            }
            if dict.keys.contains("PortRanges") {
                var tmp : [ListPrivateAccessApplicationsResponseBody.Applications.PortRanges] = []
                for v in dict["PortRanges"] as! [Any] {
                    var model = ListPrivateAccessApplicationsResponseBody.Applications.PortRanges()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.portRanges = tmp
            }
            if dict.keys.contains("Protocol") {
                self.protocol_ = dict["Protocol"] as! String
            }
            if dict.keys.contains("Status") {
                self.status = dict["Status"] as! String
            }
            if dict.keys.contains("TagIds") {
                self.tagIds = dict["TagIds"] as! [String]
            }
        }
    }
    public var applications: [ListPrivateAccessApplicationsResponseBody.Applications]?

    public var requestId: String?

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
        if self.applications != nil {
            var tmp : [Any] = []
            for k in self.applications! {
                tmp.append(k.toMap())
            }
            map["Applications"] = tmp
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.totalNum != nil {
            map["TotalNum"] = self.totalNum!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Applications") {
            var tmp : [ListPrivateAccessApplicationsResponseBody.Applications] = []
            for v in dict["Applications"] as! [Any] {
                var model = ListPrivateAccessApplicationsResponseBody.Applications()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.applications = tmp
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("TotalNum") {
            self.totalNum = dict["TotalNum"] as! Int32
        }
    }
}

public class ListPrivateAccessApplicationsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListPrivateAccessApplicationsResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = ListPrivateAccessApplicationsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListPrivateAccessApplicationsForDynamicRouteRequest : Tea.TeaModel {
    public var dynamicRouteIds: [String]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.dynamicRouteIds != nil {
            map["DynamicRouteIds"] = self.dynamicRouteIds!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DynamicRouteIds") {
            self.dynamicRouteIds = dict["DynamicRouteIds"] as! [String]
        }
    }
}

public class ListPrivateAccessApplicationsForDynamicRouteResponseBody : Tea.TeaModel {
    public class DynamicRoutes : Tea.TeaModel {
        public class Applications : Tea.TeaModel {
            public class PortRanges : Tea.TeaModel {
                public var begin: Int32?

                public var end: Int32?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.begin != nil {
                        map["Begin"] = self.begin!
                    }
                    if self.end != nil {
                        map["End"] = self.end!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("Begin") {
                        self.begin = dict["Begin"] as! Int32
                    }
                    if dict.keys.contains("End") {
                        self.end = dict["End"] as! Int32
                    }
                }
            }
            public var addresses: [String]?

            public var applicationId: String?

            public var createTime: String?

            public var description_: String?

            public var name: String?

            public var portRanges: [ListPrivateAccessApplicationsForDynamicRouteResponseBody.DynamicRoutes.Applications.PortRanges]?

            public var protocol_: String?

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
                if self.addresses != nil {
                    map["Addresses"] = self.addresses!
                }
                if self.applicationId != nil {
                    map["ApplicationId"] = self.applicationId!
                }
                if self.createTime != nil {
                    map["CreateTime"] = self.createTime!
                }
                if self.description_ != nil {
                    map["Description"] = self.description_!
                }
                if self.name != nil {
                    map["Name"] = self.name!
                }
                if self.portRanges != nil {
                    var tmp : [Any] = []
                    for k in self.portRanges! {
                        tmp.append(k.toMap())
                    }
                    map["PortRanges"] = tmp
                }
                if self.protocol_ != nil {
                    map["Protocol"] = self.protocol_!
                }
                if self.status != nil {
                    map["Status"] = self.status!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("Addresses") {
                    self.addresses = dict["Addresses"] as! [String]
                }
                if dict.keys.contains("ApplicationId") {
                    self.applicationId = dict["ApplicationId"] as! String
                }
                if dict.keys.contains("CreateTime") {
                    self.createTime = dict["CreateTime"] as! String
                }
                if dict.keys.contains("Description") {
                    self.description_ = dict["Description"] as! String
                }
                if dict.keys.contains("Name") {
                    self.name = dict["Name"] as! String
                }
                if dict.keys.contains("PortRanges") {
                    var tmp : [ListPrivateAccessApplicationsForDynamicRouteResponseBody.DynamicRoutes.Applications.PortRanges] = []
                    for v in dict["PortRanges"] as! [Any] {
                        var model = ListPrivateAccessApplicationsForDynamicRouteResponseBody.DynamicRoutes.Applications.PortRanges()
                        if v != nil {
                            model.fromMap(v as! [String: Any])
                        }
                        tmp.append(model)
                    }
                    self.portRanges = tmp
                }
                if dict.keys.contains("Protocol") {
                    self.protocol_ = dict["Protocol"] as! String
                }
                if dict.keys.contains("Status") {
                    self.status = dict["Status"] as! String
                }
            }
        }
        public var applications: [ListPrivateAccessApplicationsForDynamicRouteResponseBody.DynamicRoutes.Applications]?

        public var dynamicRouteId: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.applications != nil {
                var tmp : [Any] = []
                for k in self.applications! {
                    tmp.append(k.toMap())
                }
                map["Applications"] = tmp
            }
            if self.dynamicRouteId != nil {
                map["DynamicRouteId"] = self.dynamicRouteId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Applications") {
                var tmp : [ListPrivateAccessApplicationsForDynamicRouteResponseBody.DynamicRoutes.Applications] = []
                for v in dict["Applications"] as! [Any] {
                    var model = ListPrivateAccessApplicationsForDynamicRouteResponseBody.DynamicRoutes.Applications()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.applications = tmp
            }
            if dict.keys.contains("DynamicRouteId") {
                self.dynamicRouteId = dict["DynamicRouteId"] as! String
            }
        }
    }
    public var dynamicRoutes: [ListPrivateAccessApplicationsForDynamicRouteResponseBody.DynamicRoutes]?

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
        if self.dynamicRoutes != nil {
            var tmp : [Any] = []
            for k in self.dynamicRoutes! {
                tmp.append(k.toMap())
            }
            map["DynamicRoutes"] = tmp
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DynamicRoutes") {
            var tmp : [ListPrivateAccessApplicationsForDynamicRouteResponseBody.DynamicRoutes] = []
            for v in dict["DynamicRoutes"] as! [Any] {
                var model = ListPrivateAccessApplicationsForDynamicRouteResponseBody.DynamicRoutes()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.dynamicRoutes = tmp
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class ListPrivateAccessApplicationsForDynamicRouteResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListPrivateAccessApplicationsForDynamicRouteResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = ListPrivateAccessApplicationsForDynamicRouteResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListPrivateAccessPolicesRequest : Tea.TeaModel {
    public var applicationId: String?

    public var applicationName: String?

    public var currentPage: Int32?

    public var name: String?

    public var pageSize: Int32?

    public var policyAction: String?

    public var policyIds: [String]?

    public var status: String?

    public var tagId: String?

    public var tagName: String?

    public var userGroupId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.applicationId != nil {
            map["ApplicationId"] = self.applicationId!
        }
        if self.applicationName != nil {
            map["ApplicationName"] = self.applicationName!
        }
        if self.currentPage != nil {
            map["CurrentPage"] = self.currentPage!
        }
        if self.name != nil {
            map["Name"] = self.name!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.policyAction != nil {
            map["PolicyAction"] = self.policyAction!
        }
        if self.policyIds != nil {
            map["PolicyIds"] = self.policyIds!
        }
        if self.status != nil {
            map["Status"] = self.status!
        }
        if self.tagId != nil {
            map["TagId"] = self.tagId!
        }
        if self.tagName != nil {
            map["TagName"] = self.tagName!
        }
        if self.userGroupId != nil {
            map["UserGroupId"] = self.userGroupId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ApplicationId") {
            self.applicationId = dict["ApplicationId"] as! String
        }
        if dict.keys.contains("ApplicationName") {
            self.applicationName = dict["ApplicationName"] as! String
        }
        if dict.keys.contains("CurrentPage") {
            self.currentPage = dict["CurrentPage"] as! Int32
        }
        if dict.keys.contains("Name") {
            self.name = dict["Name"] as! String
        }
        if dict.keys.contains("PageSize") {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("PolicyAction") {
            self.policyAction = dict["PolicyAction"] as! String
        }
        if dict.keys.contains("PolicyIds") {
            self.policyIds = dict["PolicyIds"] as! [String]
        }
        if dict.keys.contains("Status") {
            self.status = dict["Status"] as! String
        }
        if dict.keys.contains("TagId") {
            self.tagId = dict["TagId"] as! String
        }
        if dict.keys.contains("TagName") {
            self.tagName = dict["TagName"] as! String
        }
        if dict.keys.contains("UserGroupId") {
            self.userGroupId = dict["UserGroupId"] as! String
        }
    }
}

public class ListPrivateAccessPolicesResponseBody : Tea.TeaModel {
    public class Polices : Tea.TeaModel {
        public class CustomUserAttributes : Tea.TeaModel {
            public var idpId: Int32?

            public var relation: String?

            public var userGroupType: String?

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
                if self.idpId != nil {
                    map["IdpId"] = self.idpId!
                }
                if self.relation != nil {
                    map["Relation"] = self.relation!
                }
                if self.userGroupType != nil {
                    map["UserGroupType"] = self.userGroupType!
                }
                if self.value != nil {
                    map["Value"] = self.value!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("IdpId") {
                    self.idpId = dict["IdpId"] as! Int32
                }
                if dict.keys.contains("Relation") {
                    self.relation = dict["Relation"] as! String
                }
                if dict.keys.contains("UserGroupType") {
                    self.userGroupType = dict["UserGroupType"] as! String
                }
                if dict.keys.contains("Value") {
                    self.value = dict["Value"] as! String
                }
            }
        }
        public var applicationIds: [String]?

        public var applicationType: String?

        public var createTime: String?

        public var customUserAttributes: [ListPrivateAccessPolicesResponseBody.Polices.CustomUserAttributes]?

        public var description_: String?

        public var deviceAttributeAction: String?

        public var deviceAttributeId: String?

        public var name: String?

        public var policyAction: String?

        public var policyId: String?

        public var priority: Int32?

        public var status: String?

        public var tagIds: [String]?

        public var userGroupIds: [String]?

        public var userGroupMode: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.applicationIds != nil {
                map["ApplicationIds"] = self.applicationIds!
            }
            if self.applicationType != nil {
                map["ApplicationType"] = self.applicationType!
            }
            if self.createTime != nil {
                map["CreateTime"] = self.createTime!
            }
            if self.customUserAttributes != nil {
                var tmp : [Any] = []
                for k in self.customUserAttributes! {
                    tmp.append(k.toMap())
                }
                map["CustomUserAttributes"] = tmp
            }
            if self.description_ != nil {
                map["Description"] = self.description_!
            }
            if self.deviceAttributeAction != nil {
                map["DeviceAttributeAction"] = self.deviceAttributeAction!
            }
            if self.deviceAttributeId != nil {
                map["DeviceAttributeId"] = self.deviceAttributeId!
            }
            if self.name != nil {
                map["Name"] = self.name!
            }
            if self.policyAction != nil {
                map["PolicyAction"] = self.policyAction!
            }
            if self.policyId != nil {
                map["PolicyId"] = self.policyId!
            }
            if self.priority != nil {
                map["Priority"] = self.priority!
            }
            if self.status != nil {
                map["Status"] = self.status!
            }
            if self.tagIds != nil {
                map["TagIds"] = self.tagIds!
            }
            if self.userGroupIds != nil {
                map["UserGroupIds"] = self.userGroupIds!
            }
            if self.userGroupMode != nil {
                map["UserGroupMode"] = self.userGroupMode!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("ApplicationIds") {
                self.applicationIds = dict["ApplicationIds"] as! [String]
            }
            if dict.keys.contains("ApplicationType") {
                self.applicationType = dict["ApplicationType"] as! String
            }
            if dict.keys.contains("CreateTime") {
                self.createTime = dict["CreateTime"] as! String
            }
            if dict.keys.contains("CustomUserAttributes") {
                var tmp : [ListPrivateAccessPolicesResponseBody.Polices.CustomUserAttributes] = []
                for v in dict["CustomUserAttributes"] as! [Any] {
                    var model = ListPrivateAccessPolicesResponseBody.Polices.CustomUserAttributes()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.customUserAttributes = tmp
            }
            if dict.keys.contains("Description") {
                self.description_ = dict["Description"] as! String
            }
            if dict.keys.contains("DeviceAttributeAction") {
                self.deviceAttributeAction = dict["DeviceAttributeAction"] as! String
            }
            if dict.keys.contains("DeviceAttributeId") {
                self.deviceAttributeId = dict["DeviceAttributeId"] as! String
            }
            if dict.keys.contains("Name") {
                self.name = dict["Name"] as! String
            }
            if dict.keys.contains("PolicyAction") {
                self.policyAction = dict["PolicyAction"] as! String
            }
            if dict.keys.contains("PolicyId") {
                self.policyId = dict["PolicyId"] as! String
            }
            if dict.keys.contains("Priority") {
                self.priority = dict["Priority"] as! Int32
            }
            if dict.keys.contains("Status") {
                self.status = dict["Status"] as! String
            }
            if dict.keys.contains("TagIds") {
                self.tagIds = dict["TagIds"] as! [String]
            }
            if dict.keys.contains("UserGroupIds") {
                self.userGroupIds = dict["UserGroupIds"] as! [String]
            }
            if dict.keys.contains("UserGroupMode") {
                self.userGroupMode = dict["UserGroupMode"] as! String
            }
        }
    }
    public var polices: [ListPrivateAccessPolicesResponseBody.Polices]?

    public var requestId: String?

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
        if self.polices != nil {
            var tmp : [Any] = []
            for k in self.polices! {
                tmp.append(k.toMap())
            }
            map["Polices"] = tmp
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.totalNum != nil {
            map["TotalNum"] = self.totalNum!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Polices") {
            var tmp : [ListPrivateAccessPolicesResponseBody.Polices] = []
            for v in dict["Polices"] as! [Any] {
                var model = ListPrivateAccessPolicesResponseBody.Polices()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.polices = tmp
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("TotalNum") {
            self.totalNum = dict["TotalNum"] as! Int32
        }
    }
}

public class ListPrivateAccessPolicesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListPrivateAccessPolicesResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = ListPrivateAccessPolicesResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListPrivateAccessTagsRequest : Tea.TeaModel {
    public var applicationId: String?

    public var currentPage: Int32?

    public var name: String?

    public var pageSize: Int32?

    public var policyId: String?

    public var simpleMode: Bool?

    public var tagIds: [String]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.applicationId != nil {
            map["ApplicationId"] = self.applicationId!
        }
        if self.currentPage != nil {
            map["CurrentPage"] = self.currentPage!
        }
        if self.name != nil {
            map["Name"] = self.name!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.policyId != nil {
            map["PolicyId"] = self.policyId!
        }
        if self.simpleMode != nil {
            map["SimpleMode"] = self.simpleMode!
        }
        if self.tagIds != nil {
            map["TagIds"] = self.tagIds!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ApplicationId") {
            self.applicationId = dict["ApplicationId"] as! String
        }
        if dict.keys.contains("CurrentPage") {
            self.currentPage = dict["CurrentPage"] as! Int32
        }
        if dict.keys.contains("Name") {
            self.name = dict["Name"] as! String
        }
        if dict.keys.contains("PageSize") {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("PolicyId") {
            self.policyId = dict["PolicyId"] as! String
        }
        if dict.keys.contains("SimpleMode") {
            self.simpleMode = dict["SimpleMode"] as! Bool
        }
        if dict.keys.contains("TagIds") {
            self.tagIds = dict["TagIds"] as! [String]
        }
    }
}

public class ListPrivateAccessTagsResponseBody : Tea.TeaModel {
    public class Tags : Tea.TeaModel {
        public var applicationIds: [String]?

        public var createTime: String?

        public var description_: String?

        public var name: String?

        public var policyIds: [String]?

        public var tagId: String?

        public var tagType: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.applicationIds != nil {
                map["ApplicationIds"] = self.applicationIds!
            }
            if self.createTime != nil {
                map["CreateTime"] = self.createTime!
            }
            if self.description_ != nil {
                map["Description"] = self.description_!
            }
            if self.name != nil {
                map["Name"] = self.name!
            }
            if self.policyIds != nil {
                map["PolicyIds"] = self.policyIds!
            }
            if self.tagId != nil {
                map["TagId"] = self.tagId!
            }
            if self.tagType != nil {
                map["TagType"] = self.tagType!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("ApplicationIds") {
                self.applicationIds = dict["ApplicationIds"] as! [String]
            }
            if dict.keys.contains("CreateTime") {
                self.createTime = dict["CreateTime"] as! String
            }
            if dict.keys.contains("Description") {
                self.description_ = dict["Description"] as! String
            }
            if dict.keys.contains("Name") {
                self.name = dict["Name"] as! String
            }
            if dict.keys.contains("PolicyIds") {
                self.policyIds = dict["PolicyIds"] as! [String]
            }
            if dict.keys.contains("TagId") {
                self.tagId = dict["TagId"] as! String
            }
            if dict.keys.contains("TagType") {
                self.tagType = dict["TagType"] as! String
            }
        }
    }
    public var requestId: String?

    public var tags: [ListPrivateAccessTagsResponseBody.Tags]?

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
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.tags != nil {
            var tmp : [Any] = []
            for k in self.tags! {
                tmp.append(k.toMap())
            }
            map["Tags"] = tmp
        }
        if self.totalNum != nil {
            map["TotalNum"] = self.totalNum!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Tags") {
            var tmp : [ListPrivateAccessTagsResponseBody.Tags] = []
            for v in dict["Tags"] as! [Any] {
                var model = ListPrivateAccessTagsResponseBody.Tags()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.tags = tmp
        }
        if dict.keys.contains("TotalNum") {
            self.totalNum = dict["TotalNum"] as! Int32
        }
    }
}

public class ListPrivateAccessTagsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListPrivateAccessTagsResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = ListPrivateAccessTagsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListPrivateAccessTagsForDynamicRouteRequest : Tea.TeaModel {
    public var dynamicRouteIds: [String]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.dynamicRouteIds != nil {
            map["DynamicRouteIds"] = self.dynamicRouteIds!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DynamicRouteIds") {
            self.dynamicRouteIds = dict["DynamicRouteIds"] as! [String]
        }
    }
}

public class ListPrivateAccessTagsForDynamicRouteResponseBody : Tea.TeaModel {
    public class DynamicRoutes : Tea.TeaModel {
        public class Tags : Tea.TeaModel {
            public var createTime: String?

            public var description_: String?

            public var name: String?

            public var tagId: String?

            public var tagType: String?

            public override init() {
                super.init()
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
                if self.description_ != nil {
                    map["Description"] = self.description_!
                }
                if self.name != nil {
                    map["Name"] = self.name!
                }
                if self.tagId != nil {
                    map["TagId"] = self.tagId!
                }
                if self.tagType != nil {
                    map["TagType"] = self.tagType!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("CreateTime") {
                    self.createTime = dict["CreateTime"] as! String
                }
                if dict.keys.contains("Description") {
                    self.description_ = dict["Description"] as! String
                }
                if dict.keys.contains("Name") {
                    self.name = dict["Name"] as! String
                }
                if dict.keys.contains("TagId") {
                    self.tagId = dict["TagId"] as! String
                }
                if dict.keys.contains("TagType") {
                    self.tagType = dict["TagType"] as! String
                }
            }
        }
        public var dynamicRouteId: String?

        public var tags: [ListPrivateAccessTagsForDynamicRouteResponseBody.DynamicRoutes.Tags]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.dynamicRouteId != nil {
                map["DynamicRouteId"] = self.dynamicRouteId!
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
            if dict.keys.contains("DynamicRouteId") {
                self.dynamicRouteId = dict["DynamicRouteId"] as! String
            }
            if dict.keys.contains("Tags") {
                var tmp : [ListPrivateAccessTagsForDynamicRouteResponseBody.DynamicRoutes.Tags] = []
                for v in dict["Tags"] as! [Any] {
                    var model = ListPrivateAccessTagsForDynamicRouteResponseBody.DynamicRoutes.Tags()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.tags = tmp
            }
        }
    }
    public var dynamicRoutes: [ListPrivateAccessTagsForDynamicRouteResponseBody.DynamicRoutes]?

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
        if self.dynamicRoutes != nil {
            var tmp : [Any] = []
            for k in self.dynamicRoutes! {
                tmp.append(k.toMap())
            }
            map["DynamicRoutes"] = tmp
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DynamicRoutes") {
            var tmp : [ListPrivateAccessTagsForDynamicRouteResponseBody.DynamicRoutes] = []
            for v in dict["DynamicRoutes"] as! [Any] {
                var model = ListPrivateAccessTagsForDynamicRouteResponseBody.DynamicRoutes()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.dynamicRoutes = tmp
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class ListPrivateAccessTagsForDynamicRouteResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListPrivateAccessTagsForDynamicRouteResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = ListPrivateAccessTagsForDynamicRouteResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListRegistrationPoliciesRequest : Tea.TeaModel {
    public var companyLimitType: String?

    public var currentPage: Int64?

    public var matchMode: String?

    public var name: String?

    public var pageSize: Int64?

    public var personalLimitType: String?

    public var policyIds: [String]?

    public var status: String?

    public var userGroupId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.companyLimitType != nil {
            map["CompanyLimitType"] = self.companyLimitType!
        }
        if self.currentPage != nil {
            map["CurrentPage"] = self.currentPage!
        }
        if self.matchMode != nil {
            map["MatchMode"] = self.matchMode!
        }
        if self.name != nil {
            map["Name"] = self.name!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.personalLimitType != nil {
            map["PersonalLimitType"] = self.personalLimitType!
        }
        if self.policyIds != nil {
            map["PolicyIds"] = self.policyIds!
        }
        if self.status != nil {
            map["Status"] = self.status!
        }
        if self.userGroupId != nil {
            map["UserGroupId"] = self.userGroupId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("CompanyLimitType") {
            self.companyLimitType = dict["CompanyLimitType"] as! String
        }
        if dict.keys.contains("CurrentPage") {
            self.currentPage = dict["CurrentPage"] as! Int64
        }
        if dict.keys.contains("MatchMode") {
            self.matchMode = dict["MatchMode"] as! String
        }
        if dict.keys.contains("Name") {
            self.name = dict["Name"] as! String
        }
        if dict.keys.contains("PageSize") {
            self.pageSize = dict["PageSize"] as! Int64
        }
        if dict.keys.contains("PersonalLimitType") {
            self.personalLimitType = dict["PersonalLimitType"] as! String
        }
        if dict.keys.contains("PolicyIds") {
            self.policyIds = dict["PolicyIds"] as! [String]
        }
        if dict.keys.contains("Status") {
            self.status = dict["Status"] as! String
        }
        if dict.keys.contains("UserGroupId") {
            self.userGroupId = dict["UserGroupId"] as! String
        }
    }
}

public class ListRegistrationPoliciesResponseBody : Tea.TeaModel {
    public class Policies : Tea.TeaModel {
        public class LimitDetail : Tea.TeaModel {
            public class LimitCount : Tea.TeaModel {
                public var all: Int32?

                public var mobile: Int32?

                public var PC: Int32?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.all != nil {
                        map["All"] = self.all!
                    }
                    if self.mobile != nil {
                        map["Mobile"] = self.mobile!
                    }
                    if self.PC != nil {
                        map["PC"] = self.PC!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("All") {
                        self.all = dict["All"] as! Int32
                    }
                    if dict.keys.contains("Mobile") {
                        self.mobile = dict["Mobile"] as! Int32
                    }
                    if dict.keys.contains("PC") {
                        self.PC = dict["PC"] as! Int32
                    }
                }
            }
            public var deviceBelong: String?

            public var limitCount: ListRegistrationPoliciesResponseBody.Policies.LimitDetail.LimitCount?

            public var limitType: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
                try self.limitCount?.validate()
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.deviceBelong != nil {
                    map["DeviceBelong"] = self.deviceBelong!
                }
                if self.limitCount != nil {
                    map["LimitCount"] = self.limitCount?.toMap()
                }
                if self.limitType != nil {
                    map["LimitType"] = self.limitType!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("DeviceBelong") {
                    self.deviceBelong = dict["DeviceBelong"] as! String
                }
                if dict.keys.contains("LimitCount") {
                    var model = ListRegistrationPoliciesResponseBody.Policies.LimitDetail.LimitCount()
                    model.fromMap(dict["LimitCount"] as! [String: Any])
                    self.limitCount = model
                }
                if dict.keys.contains("LimitType") {
                    self.limitType = dict["LimitType"] as! String
                }
            }
        }
        public var createTime: String?

        public var description_: String?

        public var limitDetail: [ListRegistrationPoliciesResponseBody.Policies.LimitDetail]?

        public var matchMode: String?

        public var name: String?

        public var policyId: String?

        public var priority: Int64?

        public var status: String?

        public var userGroupIds: [String]?

        public var whitelist: [String]?

        public override init() {
            super.init()
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
            if self.description_ != nil {
                map["Description"] = self.description_!
            }
            if self.limitDetail != nil {
                var tmp : [Any] = []
                for k in self.limitDetail! {
                    tmp.append(k.toMap())
                }
                map["LimitDetail"] = tmp
            }
            if self.matchMode != nil {
                map["MatchMode"] = self.matchMode!
            }
            if self.name != nil {
                map["Name"] = self.name!
            }
            if self.policyId != nil {
                map["PolicyId"] = self.policyId!
            }
            if self.priority != nil {
                map["Priority"] = self.priority!
            }
            if self.status != nil {
                map["Status"] = self.status!
            }
            if self.userGroupIds != nil {
                map["UserGroupIds"] = self.userGroupIds!
            }
            if self.whitelist != nil {
                map["Whitelist"] = self.whitelist!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("CreateTime") {
                self.createTime = dict["CreateTime"] as! String
            }
            if dict.keys.contains("Description") {
                self.description_ = dict["Description"] as! String
            }
            if dict.keys.contains("LimitDetail") {
                var tmp : [ListRegistrationPoliciesResponseBody.Policies.LimitDetail] = []
                for v in dict["LimitDetail"] as! [Any] {
                    var model = ListRegistrationPoliciesResponseBody.Policies.LimitDetail()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.limitDetail = tmp
            }
            if dict.keys.contains("MatchMode") {
                self.matchMode = dict["MatchMode"] as! String
            }
            if dict.keys.contains("Name") {
                self.name = dict["Name"] as! String
            }
            if dict.keys.contains("PolicyId") {
                self.policyId = dict["PolicyId"] as! String
            }
            if dict.keys.contains("Priority") {
                self.priority = dict["Priority"] as! Int64
            }
            if dict.keys.contains("Status") {
                self.status = dict["Status"] as! String
            }
            if dict.keys.contains("UserGroupIds") {
                self.userGroupIds = dict["UserGroupIds"] as! [String]
            }
            if dict.keys.contains("Whitelist") {
                self.whitelist = dict["Whitelist"] as! [String]
            }
        }
    }
    public var policies: [ListRegistrationPoliciesResponseBody.Policies]?

    public var requestId: String?

    public var totalNum: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.policies != nil {
            var tmp : [Any] = []
            for k in self.policies! {
                tmp.append(k.toMap())
            }
            map["Policies"] = tmp
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.totalNum != nil {
            map["TotalNum"] = self.totalNum!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Policies") {
            var tmp : [ListRegistrationPoliciesResponseBody.Policies] = []
            for v in dict["Policies"] as! [Any] {
                var model = ListRegistrationPoliciesResponseBody.Policies()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.policies = tmp
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("TotalNum") {
            self.totalNum = dict["TotalNum"] as! String
        }
    }
}

public class ListRegistrationPoliciesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListRegistrationPoliciesResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = ListRegistrationPoliciesResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListRegistrationPoliciesForUserGroupRequest : Tea.TeaModel {
    public var userGroupIds: [String]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.userGroupIds != nil {
            map["UserGroupIds"] = self.userGroupIds!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("UserGroupIds") {
            self.userGroupIds = dict["UserGroupIds"] as! [String]
        }
    }
}

public class ListRegistrationPoliciesForUserGroupResponseBody : Tea.TeaModel {
    public class UserGroups : Tea.TeaModel {
        public class Policies : Tea.TeaModel {
            public class LimitDetail : Tea.TeaModel {
                public class LimitCount : Tea.TeaModel {
                    public var all: String?

                    public var mobile: String?

                    public var PC: String?

                    public override init() {
                        super.init()
                    }

                    public init(_ dict: [String: Any]) {
                        super.init()
                        self.fromMap(dict)
                    }

                    public override func validate() throws -> Void {
                    }

                    public override func toMap() -> [String : Any] {
                        var map = super.toMap()
                        if self.all != nil {
                            map["All"] = self.all!
                        }
                        if self.mobile != nil {
                            map["Mobile"] = self.mobile!
                        }
                        if self.PC != nil {
                            map["PC"] = self.PC!
                        }
                        return map
                    }

                    public override func fromMap(_ dict: [String: Any]) -> Void {
                        if dict.keys.contains("All") {
                            self.all = dict["All"] as! String
                        }
                        if dict.keys.contains("Mobile") {
                            self.mobile = dict["Mobile"] as! String
                        }
                        if dict.keys.contains("PC") {
                            self.PC = dict["PC"] as! String
                        }
                    }
                }
                public var deviceBelong: String?

                public var limitCount: ListRegistrationPoliciesForUserGroupResponseBody.UserGroups.Policies.LimitDetail.LimitCount?

                public var limitType: String?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                    try self.limitCount?.validate()
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.deviceBelong != nil {
                        map["DeviceBelong"] = self.deviceBelong!
                    }
                    if self.limitCount != nil {
                        map["LimitCount"] = self.limitCount?.toMap()
                    }
                    if self.limitType != nil {
                        map["LimitType"] = self.limitType!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("DeviceBelong") {
                        self.deviceBelong = dict["DeviceBelong"] as! String
                    }
                    if dict.keys.contains("LimitCount") {
                        var model = ListRegistrationPoliciesForUserGroupResponseBody.UserGroups.Policies.LimitDetail.LimitCount()
                        model.fromMap(dict["LimitCount"] as! [String: Any])
                        self.limitCount = model
                    }
                    if dict.keys.contains("LimitType") {
                        self.limitType = dict["LimitType"] as! String
                    }
                }
            }
            public var createTime: String?

            public var description_: String?

            public var limitDetail: [ListRegistrationPoliciesForUserGroupResponseBody.UserGroups.Policies.LimitDetail]?

            public var matchMode: String?

            public var name: String?

            public var policyId: String?

            public var priority: Int64?

            public var status: String?

            public var whitelist: [String]?

            public override init() {
                super.init()
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
                if self.description_ != nil {
                    map["Description"] = self.description_!
                }
                if self.limitDetail != nil {
                    var tmp : [Any] = []
                    for k in self.limitDetail! {
                        tmp.append(k.toMap())
                    }
                    map["LimitDetail"] = tmp
                }
                if self.matchMode != nil {
                    map["MatchMode"] = self.matchMode!
                }
                if self.name != nil {
                    map["Name"] = self.name!
                }
                if self.policyId != nil {
                    map["PolicyId"] = self.policyId!
                }
                if self.priority != nil {
                    map["Priority"] = self.priority!
                }
                if self.status != nil {
                    map["Status"] = self.status!
                }
                if self.whitelist != nil {
                    map["Whitelist"] = self.whitelist!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("CreateTime") {
                    self.createTime = dict["CreateTime"] as! String
                }
                if dict.keys.contains("Description") {
                    self.description_ = dict["Description"] as! String
                }
                if dict.keys.contains("LimitDetail") {
                    var tmp : [ListRegistrationPoliciesForUserGroupResponseBody.UserGroups.Policies.LimitDetail] = []
                    for v in dict["LimitDetail"] as! [Any] {
                        var model = ListRegistrationPoliciesForUserGroupResponseBody.UserGroups.Policies.LimitDetail()
                        if v != nil {
                            model.fromMap(v as! [String: Any])
                        }
                        tmp.append(model)
                    }
                    self.limitDetail = tmp
                }
                if dict.keys.contains("MatchMode") {
                    self.matchMode = dict["MatchMode"] as! String
                }
                if dict.keys.contains("Name") {
                    self.name = dict["Name"] as! String
                }
                if dict.keys.contains("PolicyId") {
                    self.policyId = dict["PolicyId"] as! String
                }
                if dict.keys.contains("Priority") {
                    self.priority = dict["Priority"] as! Int64
                }
                if dict.keys.contains("Status") {
                    self.status = dict["Status"] as! String
                }
                if dict.keys.contains("Whitelist") {
                    self.whitelist = dict["Whitelist"] as! [String]
                }
            }
        }
        public var policies: [ListRegistrationPoliciesForUserGroupResponseBody.UserGroups.Policies]?

        public var userGroupId: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.policies != nil {
                var tmp : [Any] = []
                for k in self.policies! {
                    tmp.append(k.toMap())
                }
                map["Policies"] = tmp
            }
            if self.userGroupId != nil {
                map["UserGroupId"] = self.userGroupId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Policies") {
                var tmp : [ListRegistrationPoliciesForUserGroupResponseBody.UserGroups.Policies] = []
                for v in dict["Policies"] as! [Any] {
                    var model = ListRegistrationPoliciesForUserGroupResponseBody.UserGroups.Policies()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.policies = tmp
            }
            if dict.keys.contains("UserGroupId") {
                self.userGroupId = dict["UserGroupId"] as! String
            }
        }
    }
    public var requestId: String?

    public var userGroups: [ListRegistrationPoliciesForUserGroupResponseBody.UserGroups]?

    public override init() {
        super.init()
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
        if self.userGroups != nil {
            var tmp : [Any] = []
            for k in self.userGroups! {
                tmp.append(k.toMap())
            }
            map["UserGroups"] = tmp
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("UserGroups") {
            var tmp : [ListRegistrationPoliciesForUserGroupResponseBody.UserGroups] = []
            for v in dict["UserGroups"] as! [Any] {
                var model = ListRegistrationPoliciesForUserGroupResponseBody.UserGroups()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.userGroups = tmp
        }
    }
}

public class ListRegistrationPoliciesForUserGroupResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListRegistrationPoliciesForUserGroupResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = ListRegistrationPoliciesForUserGroupResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListSoftwareForUserDeviceRequest : Tea.TeaModel {
    public var currentPage: Int64?

    public var deviceTag: String?

    public var pageSize: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.currentPage != nil {
            map["CurrentPage"] = self.currentPage!
        }
        if self.deviceTag != nil {
            map["DeviceTag"] = self.deviceTag!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("CurrentPage") {
            self.currentPage = dict["CurrentPage"] as! Int64
        }
        if dict.keys.contains("DeviceTag") {
            self.deviceTag = dict["DeviceTag"] as! String
        }
        if dict.keys.contains("PageSize") {
            self.pageSize = dict["PageSize"] as! Int64
        }
    }
}

public class ListSoftwareForUserDeviceResponseBody : Tea.TeaModel {
    public class Software : Tea.TeaModel {
        public var inc: String?

        public var installTime: String?

        public var name: String?

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
            if self.inc != nil {
                map["Inc"] = self.inc!
            }
            if self.installTime != nil {
                map["InstallTime"] = self.installTime!
            }
            if self.name != nil {
                map["Name"] = self.name!
            }
            if self.versions != nil {
                map["Versions"] = self.versions!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Inc") {
                self.inc = dict["Inc"] as! String
            }
            if dict.keys.contains("InstallTime") {
                self.installTime = dict["InstallTime"] as! String
            }
            if dict.keys.contains("Name") {
                self.name = dict["Name"] as! String
            }
            if dict.keys.contains("Versions") {
                self.versions = dict["Versions"] as! [String]
            }
        }
    }
    public var requestId: String?

    public var software: [ListSoftwareForUserDeviceResponseBody.Software]?

    public var totalNum: Int64?

    public override init() {
        super.init()
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
        if self.software != nil {
            var tmp : [Any] = []
            for k in self.software! {
                tmp.append(k.toMap())
            }
            map["Software"] = tmp
        }
        if self.totalNum != nil {
            map["TotalNum"] = self.totalNum!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Software") {
            var tmp : [ListSoftwareForUserDeviceResponseBody.Software] = []
            for v in dict["Software"] as! [Any] {
                var model = ListSoftwareForUserDeviceResponseBody.Software()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.software = tmp
        }
        if dict.keys.contains("TotalNum") {
            self.totalNum = dict["TotalNum"] as! Int64
        }
    }
}

public class ListSoftwareForUserDeviceResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListSoftwareForUserDeviceResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = ListSoftwareForUserDeviceResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListTagsForPrivateAccessApplicationRequest : Tea.TeaModel {
    public var applicationIds: [String]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.applicationIds != nil {
            map["ApplicationIds"] = self.applicationIds!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ApplicationIds") {
            self.applicationIds = dict["ApplicationIds"] as! [String]
        }
    }
}

public class ListTagsForPrivateAccessApplicationResponseBody : Tea.TeaModel {
    public class Applications : Tea.TeaModel {
        public class Tags : Tea.TeaModel {
            public var createTime: String?

            public var description_: String?

            public var name: String?

            public var tagId: String?

            public var tagType: String?

            public override init() {
                super.init()
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
                if self.description_ != nil {
                    map["Description"] = self.description_!
                }
                if self.name != nil {
                    map["Name"] = self.name!
                }
                if self.tagId != nil {
                    map["TagId"] = self.tagId!
                }
                if self.tagType != nil {
                    map["TagType"] = self.tagType!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("CreateTime") {
                    self.createTime = dict["CreateTime"] as! String
                }
                if dict.keys.contains("Description") {
                    self.description_ = dict["Description"] as! String
                }
                if dict.keys.contains("Name") {
                    self.name = dict["Name"] as! String
                }
                if dict.keys.contains("TagId") {
                    self.tagId = dict["TagId"] as! String
                }
                if dict.keys.contains("TagType") {
                    self.tagType = dict["TagType"] as! String
                }
            }
        }
        public var applicationId: String?

        public var tags: [ListTagsForPrivateAccessApplicationResponseBody.Applications.Tags]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.applicationId != nil {
                map["ApplicationId"] = self.applicationId!
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
            if dict.keys.contains("ApplicationId") {
                self.applicationId = dict["ApplicationId"] as! String
            }
            if dict.keys.contains("Tags") {
                var tmp : [ListTagsForPrivateAccessApplicationResponseBody.Applications.Tags] = []
                for v in dict["Tags"] as! [Any] {
                    var model = ListTagsForPrivateAccessApplicationResponseBody.Applications.Tags()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.tags = tmp
            }
        }
    }
    public var applications: [ListTagsForPrivateAccessApplicationResponseBody.Applications]?

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
        if self.applications != nil {
            var tmp : [Any] = []
            for k in self.applications! {
                tmp.append(k.toMap())
            }
            map["Applications"] = tmp
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Applications") {
            var tmp : [ListTagsForPrivateAccessApplicationResponseBody.Applications] = []
            for v in dict["Applications"] as! [Any] {
                var model = ListTagsForPrivateAccessApplicationResponseBody.Applications()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.applications = tmp
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class ListTagsForPrivateAccessApplicationResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListTagsForPrivateAccessApplicationResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = ListTagsForPrivateAccessApplicationResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListTagsForPrivateAccessPolicyRequest : Tea.TeaModel {
    public var policyIds: [String]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.policyIds != nil {
            map["PolicyIds"] = self.policyIds!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("PolicyIds") {
            self.policyIds = dict["PolicyIds"] as! [String]
        }
    }
}

public class ListTagsForPrivateAccessPolicyResponseBody : Tea.TeaModel {
    public class Polices : Tea.TeaModel {
        public class Tags : Tea.TeaModel {
            public var createTime: String?

            public var description_: String?

            public var name: String?

            public var tagId: String?

            public var tagType: String?

            public override init() {
                super.init()
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
                if self.description_ != nil {
                    map["Description"] = self.description_!
                }
                if self.name != nil {
                    map["Name"] = self.name!
                }
                if self.tagId != nil {
                    map["TagId"] = self.tagId!
                }
                if self.tagType != nil {
                    map["TagType"] = self.tagType!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("CreateTime") {
                    self.createTime = dict["CreateTime"] as! String
                }
                if dict.keys.contains("Description") {
                    self.description_ = dict["Description"] as! String
                }
                if dict.keys.contains("Name") {
                    self.name = dict["Name"] as! String
                }
                if dict.keys.contains("TagId") {
                    self.tagId = dict["TagId"] as! String
                }
                if dict.keys.contains("TagType") {
                    self.tagType = dict["TagType"] as! String
                }
            }
        }
        public var policyId: String?

        public var tags: [ListTagsForPrivateAccessPolicyResponseBody.Polices.Tags]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.policyId != nil {
                map["PolicyId"] = self.policyId!
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
            if dict.keys.contains("PolicyId") {
                self.policyId = dict["PolicyId"] as! String
            }
            if dict.keys.contains("Tags") {
                var tmp : [ListTagsForPrivateAccessPolicyResponseBody.Polices.Tags] = []
                for v in dict["Tags"] as! [Any] {
                    var model = ListTagsForPrivateAccessPolicyResponseBody.Polices.Tags()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.tags = tmp
            }
        }
    }
    public var polices: [ListTagsForPrivateAccessPolicyResponseBody.Polices]?

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
        if self.polices != nil {
            var tmp : [Any] = []
            for k in self.polices! {
                tmp.append(k.toMap())
            }
            map["Polices"] = tmp
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Polices") {
            var tmp : [ListTagsForPrivateAccessPolicyResponseBody.Polices] = []
            for v in dict["Polices"] as! [Any] {
                var model = ListTagsForPrivateAccessPolicyResponseBody.Polices()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.polices = tmp
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class ListTagsForPrivateAccessPolicyResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListTagsForPrivateAccessPolicyResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = ListTagsForPrivateAccessPolicyResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListUninstallApplicationsRequest : Tea.TeaModel {
    public var applicationIds: [String]?

    public var currentPage: Int64?

    public var department: String?

    public var hostname: String?

    public var mac: String?

    public var pageSize: Int64?

    public var statuses: [String]?

    public var username: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.applicationIds != nil {
            map["ApplicationIds"] = self.applicationIds!
        }
        if self.currentPage != nil {
            map["CurrentPage"] = self.currentPage!
        }
        if self.department != nil {
            map["Department"] = self.department!
        }
        if self.hostname != nil {
            map["Hostname"] = self.hostname!
        }
        if self.mac != nil {
            map["Mac"] = self.mac!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.statuses != nil {
            map["Statuses"] = self.statuses!
        }
        if self.username != nil {
            map["Username"] = self.username!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ApplicationIds") {
            self.applicationIds = dict["ApplicationIds"] as! [String]
        }
        if dict.keys.contains("CurrentPage") {
            self.currentPage = dict["CurrentPage"] as! Int64
        }
        if dict.keys.contains("Department") {
            self.department = dict["Department"] as! String
        }
        if dict.keys.contains("Hostname") {
            self.hostname = dict["Hostname"] as! String
        }
        if dict.keys.contains("Mac") {
            self.mac = dict["Mac"] as! String
        }
        if dict.keys.contains("PageSize") {
            self.pageSize = dict["PageSize"] as! Int64
        }
        if dict.keys.contains("Statuses") {
            self.statuses = dict["Statuses"] as! [String]
        }
        if dict.keys.contains("Username") {
            self.username = dict["Username"] as! String
        }
    }
}

public class ListUninstallApplicationsResponseBody : Tea.TeaModel {
    public class Applications : Tea.TeaModel {
        public var applicationId: String?

        public var createTime: String?

        public var department: String?

        public var devTag: String?

        public var devType: String?

        public var hostname: String?

        public var idpName: String?

        public var isUninstall: Bool?

        public var mac: String?

        public var reason: String?

        public var saseUserId: String?

        public var status: String?

        public var username: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.applicationId != nil {
                map["ApplicationId"] = self.applicationId!
            }
            if self.createTime != nil {
                map["CreateTime"] = self.createTime!
            }
            if self.department != nil {
                map["Department"] = self.department!
            }
            if self.devTag != nil {
                map["DevTag"] = self.devTag!
            }
            if self.devType != nil {
                map["DevType"] = self.devType!
            }
            if self.hostname != nil {
                map["Hostname"] = self.hostname!
            }
            if self.idpName != nil {
                map["IdpName"] = self.idpName!
            }
            if self.isUninstall != nil {
                map["IsUninstall"] = self.isUninstall!
            }
            if self.mac != nil {
                map["Mac"] = self.mac!
            }
            if self.reason != nil {
                map["Reason"] = self.reason!
            }
            if self.saseUserId != nil {
                map["SaseUserId"] = self.saseUserId!
            }
            if self.status != nil {
                map["Status"] = self.status!
            }
            if self.username != nil {
                map["Username"] = self.username!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("ApplicationId") {
                self.applicationId = dict["ApplicationId"] as! String
            }
            if dict.keys.contains("CreateTime") {
                self.createTime = dict["CreateTime"] as! String
            }
            if dict.keys.contains("Department") {
                self.department = dict["Department"] as! String
            }
            if dict.keys.contains("DevTag") {
                self.devTag = dict["DevTag"] as! String
            }
            if dict.keys.contains("DevType") {
                self.devType = dict["DevType"] as! String
            }
            if dict.keys.contains("Hostname") {
                self.hostname = dict["Hostname"] as! String
            }
            if dict.keys.contains("IdpName") {
                self.idpName = dict["IdpName"] as! String
            }
            if dict.keys.contains("IsUninstall") {
                self.isUninstall = dict["IsUninstall"] as! Bool
            }
            if dict.keys.contains("Mac") {
                self.mac = dict["Mac"] as! String
            }
            if dict.keys.contains("Reason") {
                self.reason = dict["Reason"] as! String
            }
            if dict.keys.contains("SaseUserId") {
                self.saseUserId = dict["SaseUserId"] as! String
            }
            if dict.keys.contains("Status") {
                self.status = dict["Status"] as! String
            }
            if dict.keys.contains("Username") {
                self.username = dict["Username"] as! String
            }
        }
    }
    public var applications: [ListUninstallApplicationsResponseBody.Applications]?

    public var requestId: String?

    public var totalNum: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.applications != nil {
            var tmp : [Any] = []
            for k in self.applications! {
                tmp.append(k.toMap())
            }
            map["Applications"] = tmp
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.totalNum != nil {
            map["TotalNum"] = self.totalNum!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Applications") {
            var tmp : [ListUninstallApplicationsResponseBody.Applications] = []
            for v in dict["Applications"] as! [Any] {
                var model = ListUninstallApplicationsResponseBody.Applications()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.applications = tmp
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("TotalNum") {
            self.totalNum = dict["TotalNum"] as! Int64
        }
    }
}

public class ListUninstallApplicationsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListUninstallApplicationsResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = ListUninstallApplicationsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListUserApplicationsRequest : Tea.TeaModel {
    public var currentPage: Int32?

    public var name: String?

    public var pageSize: Int32?

    public var saseUserId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.currentPage != nil {
            map["CurrentPage"] = self.currentPage!
        }
        if self.name != nil {
            map["Name"] = self.name!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.saseUserId != nil {
            map["SaseUserId"] = self.saseUserId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("CurrentPage") {
            self.currentPage = dict["CurrentPage"] as! Int32
        }
        if dict.keys.contains("Name") {
            self.name = dict["Name"] as! String
        }
        if dict.keys.contains("PageSize") {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("SaseUserId") {
            self.saseUserId = dict["SaseUserId"] as! String
        }
    }
}

public class ListUserApplicationsResponseBody : Tea.TeaModel {
    public class Applications : Tea.TeaModel {
        public class PortRanges : Tea.TeaModel {
            public var begin: String?

            public var end: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.begin != nil {
                    map["Begin"] = self.begin!
                }
                if self.end != nil {
                    map["End"] = self.end!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("Begin") {
                    self.begin = dict["Begin"] as! String
                }
                if dict.keys.contains("End") {
                    self.end = dict["End"] as! String
                }
            }
        }
        public var action: String?

        public var addresses: [String]?

        public var applicationId: String?

        public var name: String?

        public var portRanges: [ListUserApplicationsResponseBody.Applications.PortRanges]?

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
            if self.action != nil {
                map["Action"] = self.action!
            }
            if self.addresses != nil {
                map["Addresses"] = self.addresses!
            }
            if self.applicationId != nil {
                map["ApplicationId"] = self.applicationId!
            }
            if self.name != nil {
                map["Name"] = self.name!
            }
            if self.portRanges != nil {
                var tmp : [Any] = []
                for k in self.portRanges! {
                    tmp.append(k.toMap())
                }
                map["PortRanges"] = tmp
            }
            if self.protocol_ != nil {
                map["Protocol"] = self.protocol_!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Action") {
                self.action = dict["Action"] as! String
            }
            if dict.keys.contains("Addresses") {
                self.addresses = dict["Addresses"] as! [String]
            }
            if dict.keys.contains("ApplicationId") {
                self.applicationId = dict["ApplicationId"] as! String
            }
            if dict.keys.contains("Name") {
                self.name = dict["Name"] as! String
            }
            if dict.keys.contains("PortRanges") {
                var tmp : [ListUserApplicationsResponseBody.Applications.PortRanges] = []
                for v in dict["PortRanges"] as! [Any] {
                    var model = ListUserApplicationsResponseBody.Applications.PortRanges()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.portRanges = tmp
            }
            if dict.keys.contains("Protocol") {
                self.protocol_ = dict["Protocol"] as! String
            }
        }
    }
    public var applications: [ListUserApplicationsResponseBody.Applications]?

    public var requestId: String?

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
        if self.applications != nil {
            var tmp : [Any] = []
            for k in self.applications! {
                tmp.append(k.toMap())
            }
            map["Applications"] = tmp
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.totalNum != nil {
            map["TotalNum"] = self.totalNum!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Applications") {
            var tmp : [ListUserApplicationsResponseBody.Applications] = []
            for v in dict["Applications"] as! [Any] {
                var model = ListUserApplicationsResponseBody.Applications()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.applications = tmp
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("TotalNum") {
            self.totalNum = dict["TotalNum"] as! Int32
        }
    }
}

public class ListUserApplicationsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListUserApplicationsResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = ListUserApplicationsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListUserDevicesRequest : Tea.TeaModel {
    public var appStatuses: [String]?

    public var currentPage: Int64?

    public var department: String?

    public var deviceBelong: String?

    public var deviceStatuses: [String]?

    public var deviceTags: [String]?

    public var deviceTypes: [String]?

    public var dlpStatuses: [String]?

    public var hostname: String?

    public var iaStatuses: [String]?

    public var innerIp: String?

    public var mac: String?

    public var nacStatuses: [String]?

    public var paStatuses: [String]?

    public var pageSize: Int64?

    public var saseUserId: String?

    public var sharingStatus: Bool?

    public var sortBy: String?

    public var username: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.appStatuses != nil {
            map["AppStatuses"] = self.appStatuses!
        }
        if self.currentPage != nil {
            map["CurrentPage"] = self.currentPage!
        }
        if self.department != nil {
            map["Department"] = self.department!
        }
        if self.deviceBelong != nil {
            map["DeviceBelong"] = self.deviceBelong!
        }
        if self.deviceStatuses != nil {
            map["DeviceStatuses"] = self.deviceStatuses!
        }
        if self.deviceTags != nil {
            map["DeviceTags"] = self.deviceTags!
        }
        if self.deviceTypes != nil {
            map["DeviceTypes"] = self.deviceTypes!
        }
        if self.dlpStatuses != nil {
            map["DlpStatuses"] = self.dlpStatuses!
        }
        if self.hostname != nil {
            map["Hostname"] = self.hostname!
        }
        if self.iaStatuses != nil {
            map["IaStatuses"] = self.iaStatuses!
        }
        if self.innerIp != nil {
            map["InnerIp"] = self.innerIp!
        }
        if self.mac != nil {
            map["Mac"] = self.mac!
        }
        if self.nacStatuses != nil {
            map["NacStatuses"] = self.nacStatuses!
        }
        if self.paStatuses != nil {
            map["PaStatuses"] = self.paStatuses!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.saseUserId != nil {
            map["SaseUserId"] = self.saseUserId!
        }
        if self.sharingStatus != nil {
            map["SharingStatus"] = self.sharingStatus!
        }
        if self.sortBy != nil {
            map["SortBy"] = self.sortBy!
        }
        if self.username != nil {
            map["Username"] = self.username!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AppStatuses") {
            self.appStatuses = dict["AppStatuses"] as! [String]
        }
        if dict.keys.contains("CurrentPage") {
            self.currentPage = dict["CurrentPage"] as! Int64
        }
        if dict.keys.contains("Department") {
            self.department = dict["Department"] as! String
        }
        if dict.keys.contains("DeviceBelong") {
            self.deviceBelong = dict["DeviceBelong"] as! String
        }
        if dict.keys.contains("DeviceStatuses") {
            self.deviceStatuses = dict["DeviceStatuses"] as! [String]
        }
        if dict.keys.contains("DeviceTags") {
            self.deviceTags = dict["DeviceTags"] as! [String]
        }
        if dict.keys.contains("DeviceTypes") {
            self.deviceTypes = dict["DeviceTypes"] as! [String]
        }
        if dict.keys.contains("DlpStatuses") {
            self.dlpStatuses = dict["DlpStatuses"] as! [String]
        }
        if dict.keys.contains("Hostname") {
            self.hostname = dict["Hostname"] as! String
        }
        if dict.keys.contains("IaStatuses") {
            self.iaStatuses = dict["IaStatuses"] as! [String]
        }
        if dict.keys.contains("InnerIp") {
            self.innerIp = dict["InnerIp"] as! String
        }
        if dict.keys.contains("Mac") {
            self.mac = dict["Mac"] as! String
        }
        if dict.keys.contains("NacStatuses") {
            self.nacStatuses = dict["NacStatuses"] as! [String]
        }
        if dict.keys.contains("PaStatuses") {
            self.paStatuses = dict["PaStatuses"] as! [String]
        }
        if dict.keys.contains("PageSize") {
            self.pageSize = dict["PageSize"] as! Int64
        }
        if dict.keys.contains("SaseUserId") {
            self.saseUserId = dict["SaseUserId"] as! String
        }
        if dict.keys.contains("SharingStatus") {
            self.sharingStatus = dict["SharingStatus"] as! Bool
        }
        if dict.keys.contains("SortBy") {
            self.sortBy = dict["SortBy"] as! String
        }
        if dict.keys.contains("Username") {
            self.username = dict["Username"] as! String
        }
    }
}

public class ListUserDevicesResponseBody : Tea.TeaModel {
    public class Devices : Tea.TeaModel {
        public class NetInterfaceInfo : Tea.TeaModel {
            public var mac: String?

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
                if self.mac != nil {
                    map["Mac"] = self.mac!
                }
                if self.name != nil {
                    map["Name"] = self.name!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("Mac") {
                    self.mac = dict["Mac"] as! String
                }
                if dict.keys.contains("Name") {
                    self.name = dict["Name"] as! String
                }
            }
        }
        public var appStatus: String?

        public var appVersion: String?

        public var CPU: String?

        public var createTime: String?

        public var department: String?

        public var deviceBelong: String?

        public var deviceModel: String?

        public var deviceStatus: String?

        public var deviceTag: String?

        public var deviceType: String?

        public var deviceVersion: String?

        public var disk: String?

        public var dlpStatus: String?

        public var hostname: String?

        public var iaStatus: String?

        public var innerIP: String?

        public var mac: String?

        public var memory: String?

        public var nacStatus: String?

        public var netInterfaceInfo: [ListUserDevicesResponseBody.Devices.NetInterfaceInfo]?

        public var paStatus: String?

        public var saseUserId: String?

        public var sharingStatus: Bool?

        public var srcIP: String?

        public var updateTime: String?

        public var username: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.appStatus != nil {
                map["AppStatus"] = self.appStatus!
            }
            if self.appVersion != nil {
                map["AppVersion"] = self.appVersion!
            }
            if self.CPU != nil {
                map["CPU"] = self.CPU!
            }
            if self.createTime != nil {
                map["CreateTime"] = self.createTime!
            }
            if self.department != nil {
                map["Department"] = self.department!
            }
            if self.deviceBelong != nil {
                map["DeviceBelong"] = self.deviceBelong!
            }
            if self.deviceModel != nil {
                map["DeviceModel"] = self.deviceModel!
            }
            if self.deviceStatus != nil {
                map["DeviceStatus"] = self.deviceStatus!
            }
            if self.deviceTag != nil {
                map["DeviceTag"] = self.deviceTag!
            }
            if self.deviceType != nil {
                map["DeviceType"] = self.deviceType!
            }
            if self.deviceVersion != nil {
                map["DeviceVersion"] = self.deviceVersion!
            }
            if self.disk != nil {
                map["Disk"] = self.disk!
            }
            if self.dlpStatus != nil {
                map["DlpStatus"] = self.dlpStatus!
            }
            if self.hostname != nil {
                map["Hostname"] = self.hostname!
            }
            if self.iaStatus != nil {
                map["IaStatus"] = self.iaStatus!
            }
            if self.innerIP != nil {
                map["InnerIP"] = self.innerIP!
            }
            if self.mac != nil {
                map["Mac"] = self.mac!
            }
            if self.memory != nil {
                map["Memory"] = self.memory!
            }
            if self.nacStatus != nil {
                map["NacStatus"] = self.nacStatus!
            }
            if self.netInterfaceInfo != nil {
                var tmp : [Any] = []
                for k in self.netInterfaceInfo! {
                    tmp.append(k.toMap())
                }
                map["NetInterfaceInfo"] = tmp
            }
            if self.paStatus != nil {
                map["PaStatus"] = self.paStatus!
            }
            if self.saseUserId != nil {
                map["SaseUserId"] = self.saseUserId!
            }
            if self.sharingStatus != nil {
                map["SharingStatus"] = self.sharingStatus!
            }
            if self.srcIP != nil {
                map["SrcIP"] = self.srcIP!
            }
            if self.updateTime != nil {
                map["UpdateTime"] = self.updateTime!
            }
            if self.username != nil {
                map["Username"] = self.username!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("AppStatus") {
                self.appStatus = dict["AppStatus"] as! String
            }
            if dict.keys.contains("AppVersion") {
                self.appVersion = dict["AppVersion"] as! String
            }
            if dict.keys.contains("CPU") {
                self.CPU = dict["CPU"] as! String
            }
            if dict.keys.contains("CreateTime") {
                self.createTime = dict["CreateTime"] as! String
            }
            if dict.keys.contains("Department") {
                self.department = dict["Department"] as! String
            }
            if dict.keys.contains("DeviceBelong") {
                self.deviceBelong = dict["DeviceBelong"] as! String
            }
            if dict.keys.contains("DeviceModel") {
                self.deviceModel = dict["DeviceModel"] as! String
            }
            if dict.keys.contains("DeviceStatus") {
                self.deviceStatus = dict["DeviceStatus"] as! String
            }
            if dict.keys.contains("DeviceTag") {
                self.deviceTag = dict["DeviceTag"] as! String
            }
            if dict.keys.contains("DeviceType") {
                self.deviceType = dict["DeviceType"] as! String
            }
            if dict.keys.contains("DeviceVersion") {
                self.deviceVersion = dict["DeviceVersion"] as! String
            }
            if dict.keys.contains("Disk") {
                self.disk = dict["Disk"] as! String
            }
            if dict.keys.contains("DlpStatus") {
                self.dlpStatus = dict["DlpStatus"] as! String
            }
            if dict.keys.contains("Hostname") {
                self.hostname = dict["Hostname"] as! String
            }
            if dict.keys.contains("IaStatus") {
                self.iaStatus = dict["IaStatus"] as! String
            }
            if dict.keys.contains("InnerIP") {
                self.innerIP = dict["InnerIP"] as! String
            }
            if dict.keys.contains("Mac") {
                self.mac = dict["Mac"] as! String
            }
            if dict.keys.contains("Memory") {
                self.memory = dict["Memory"] as! String
            }
            if dict.keys.contains("NacStatus") {
                self.nacStatus = dict["NacStatus"] as! String
            }
            if dict.keys.contains("NetInterfaceInfo") {
                var tmp : [ListUserDevicesResponseBody.Devices.NetInterfaceInfo] = []
                for v in dict["NetInterfaceInfo"] as! [Any] {
                    var model = ListUserDevicesResponseBody.Devices.NetInterfaceInfo()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.netInterfaceInfo = tmp
            }
            if dict.keys.contains("PaStatus") {
                self.paStatus = dict["PaStatus"] as! String
            }
            if dict.keys.contains("SaseUserId") {
                self.saseUserId = dict["SaseUserId"] as! String
            }
            if dict.keys.contains("SharingStatus") {
                self.sharingStatus = dict["SharingStatus"] as! Bool
            }
            if dict.keys.contains("SrcIP") {
                self.srcIP = dict["SrcIP"] as! String
            }
            if dict.keys.contains("UpdateTime") {
                self.updateTime = dict["UpdateTime"] as! String
            }
            if dict.keys.contains("Username") {
                self.username = dict["Username"] as! String
            }
        }
    }
    public var devices: [ListUserDevicesResponseBody.Devices]?

    public var requestId: String?

    public var totalNum: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.devices != nil {
            var tmp : [Any] = []
            for k in self.devices! {
                tmp.append(k.toMap())
            }
            map["Devices"] = tmp
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.totalNum != nil {
            map["TotalNum"] = self.totalNum!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Devices") {
            var tmp : [ListUserDevicesResponseBody.Devices] = []
            for v in dict["Devices"] as! [Any] {
                var model = ListUserDevicesResponseBody.Devices()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.devices = tmp
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("TotalNum") {
            self.totalNum = dict["TotalNum"] as! Int64
        }
    }
}

public class ListUserDevicesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListUserDevicesResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = ListUserDevicesResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListUserGroupsRequest : Tea.TeaModel {
    public var attributeValue: String?

    public var currentPage: Int32?

    public var name: String?

    public var PAPolicyId: String?

    public var pageSize: Int32?

    public var userGroupIds: [String]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.attributeValue != nil {
            map["AttributeValue"] = self.attributeValue!
        }
        if self.currentPage != nil {
            map["CurrentPage"] = self.currentPage!
        }
        if self.name != nil {
            map["Name"] = self.name!
        }
        if self.PAPolicyId != nil {
            map["PAPolicyId"] = self.PAPolicyId!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.userGroupIds != nil {
            map["UserGroupIds"] = self.userGroupIds!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AttributeValue") {
            self.attributeValue = dict["AttributeValue"] as! String
        }
        if dict.keys.contains("CurrentPage") {
            self.currentPage = dict["CurrentPage"] as! Int32
        }
        if dict.keys.contains("Name") {
            self.name = dict["Name"] as! String
        }
        if dict.keys.contains("PAPolicyId") {
            self.PAPolicyId = dict["PAPolicyId"] as! String
        }
        if dict.keys.contains("PageSize") {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("UserGroupIds") {
            self.userGroupIds = dict["UserGroupIds"] as! [String]
        }
    }
}

public class ListUserGroupsResponseBody : Tea.TeaModel {
    public class UserGroups : Tea.TeaModel {
        public class Attributes : Tea.TeaModel {
            public var idpId: Int32?

            public var relation: String?

            public var userGroupType: String?

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
                if self.idpId != nil {
                    map["IdpId"] = self.idpId!
                }
                if self.relation != nil {
                    map["Relation"] = self.relation!
                }
                if self.userGroupType != nil {
                    map["UserGroupType"] = self.userGroupType!
                }
                if self.value != nil {
                    map["Value"] = self.value!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("IdpId") {
                    self.idpId = dict["IdpId"] as! Int32
                }
                if dict.keys.contains("Relation") {
                    self.relation = dict["Relation"] as! String
                }
                if dict.keys.contains("UserGroupType") {
                    self.userGroupType = dict["UserGroupType"] as! String
                }
                if dict.keys.contains("Value") {
                    self.value = dict["Value"] as! String
                }
            }
        }
        public var attributes: [ListUserGroupsResponseBody.UserGroups.Attributes]?

        public var createTime: String?

        public var description_: String?

        public var name: String?

        public var userGroupId: String?

        public override init() {
            super.init()
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
                var tmp : [Any] = []
                for k in self.attributes! {
                    tmp.append(k.toMap())
                }
                map["Attributes"] = tmp
            }
            if self.createTime != nil {
                map["CreateTime"] = self.createTime!
            }
            if self.description_ != nil {
                map["Description"] = self.description_!
            }
            if self.name != nil {
                map["Name"] = self.name!
            }
            if self.userGroupId != nil {
                map["UserGroupId"] = self.userGroupId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Attributes") {
                var tmp : [ListUserGroupsResponseBody.UserGroups.Attributes] = []
                for v in dict["Attributes"] as! [Any] {
                    var model = ListUserGroupsResponseBody.UserGroups.Attributes()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.attributes = tmp
            }
            if dict.keys.contains("CreateTime") {
                self.createTime = dict["CreateTime"] as! String
            }
            if dict.keys.contains("Description") {
                self.description_ = dict["Description"] as! String
            }
            if dict.keys.contains("Name") {
                self.name = dict["Name"] as! String
            }
            if dict.keys.contains("UserGroupId") {
                self.userGroupId = dict["UserGroupId"] as! String
            }
        }
    }
    public var requestId: String?

    public var totalNum: Int32?

    public var userGroups: [ListUserGroupsResponseBody.UserGroups]?

    public override init() {
        super.init()
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
        if self.totalNum != nil {
            map["TotalNum"] = self.totalNum!
        }
        if self.userGroups != nil {
            var tmp : [Any] = []
            for k in self.userGroups! {
                tmp.append(k.toMap())
            }
            map["UserGroups"] = tmp
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("TotalNum") {
            self.totalNum = dict["TotalNum"] as! Int32
        }
        if dict.keys.contains("UserGroups") {
            var tmp : [ListUserGroupsResponseBody.UserGroups] = []
            for v in dict["UserGroups"] as! [Any] {
                var model = ListUserGroupsResponseBody.UserGroups()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.userGroups = tmp
        }
    }
}

public class ListUserGroupsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListUserGroupsResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = ListUserGroupsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListUserGroupsForPrivateAccessPolicyRequest : Tea.TeaModel {
    public var policyIds: [String]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.policyIds != nil {
            map["PolicyIds"] = self.policyIds!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("PolicyIds") {
            self.policyIds = dict["PolicyIds"] as! [String]
        }
    }
}

public class ListUserGroupsForPrivateAccessPolicyResponseBody : Tea.TeaModel {
    public class Polices : Tea.TeaModel {
        public class UserGroups : Tea.TeaModel {
            public class Attributes : Tea.TeaModel {
                public var idpId: Int32?

                public var relation: String?

                public var userGroupType: String?

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
                    if self.idpId != nil {
                        map["IdpId"] = self.idpId!
                    }
                    if self.relation != nil {
                        map["Relation"] = self.relation!
                    }
                    if self.userGroupType != nil {
                        map["UserGroupType"] = self.userGroupType!
                    }
                    if self.value != nil {
                        map["Value"] = self.value!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("IdpId") {
                        self.idpId = dict["IdpId"] as! Int32
                    }
                    if dict.keys.contains("Relation") {
                        self.relation = dict["Relation"] as! String
                    }
                    if dict.keys.contains("UserGroupType") {
                        self.userGroupType = dict["UserGroupType"] as! String
                    }
                    if dict.keys.contains("Value") {
                        self.value = dict["Value"] as! String
                    }
                }
            }
            public var attributes: [ListUserGroupsForPrivateAccessPolicyResponseBody.Polices.UserGroups.Attributes]?

            public var createTime: String?

            public var description_: String?

            public var name: String?

            public var userGroupId: String?

            public override init() {
                super.init()
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
                    var tmp : [Any] = []
                    for k in self.attributes! {
                        tmp.append(k.toMap())
                    }
                    map["Attributes"] = tmp
                }
                if self.createTime != nil {
                    map["CreateTime"] = self.createTime!
                }
                if self.description_ != nil {
                    map["Description"] = self.description_!
                }
                if self.name != nil {
                    map["Name"] = self.name!
                }
                if self.userGroupId != nil {
                    map["UserGroupId"] = self.userGroupId!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("Attributes") {
                    var tmp : [ListUserGroupsForPrivateAccessPolicyResponseBody.Polices.UserGroups.Attributes] = []
                    for v in dict["Attributes"] as! [Any] {
                        var model = ListUserGroupsForPrivateAccessPolicyResponseBody.Polices.UserGroups.Attributes()
                        if v != nil {
                            model.fromMap(v as! [String: Any])
                        }
                        tmp.append(model)
                    }
                    self.attributes = tmp
                }
                if dict.keys.contains("CreateTime") {
                    self.createTime = dict["CreateTime"] as! String
                }
                if dict.keys.contains("Description") {
                    self.description_ = dict["Description"] as! String
                }
                if dict.keys.contains("Name") {
                    self.name = dict["Name"] as! String
                }
                if dict.keys.contains("UserGroupId") {
                    self.userGroupId = dict["UserGroupId"] as! String
                }
            }
        }
        public var policyId: String?

        public var userGroups: [ListUserGroupsForPrivateAccessPolicyResponseBody.Polices.UserGroups]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.policyId != nil {
                map["PolicyId"] = self.policyId!
            }
            if self.userGroups != nil {
                var tmp : [Any] = []
                for k in self.userGroups! {
                    tmp.append(k.toMap())
                }
                map["UserGroups"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("PolicyId") {
                self.policyId = dict["PolicyId"] as! String
            }
            if dict.keys.contains("UserGroups") {
                var tmp : [ListUserGroupsForPrivateAccessPolicyResponseBody.Polices.UserGroups] = []
                for v in dict["UserGroups"] as! [Any] {
                    var model = ListUserGroupsForPrivateAccessPolicyResponseBody.Polices.UserGroups()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.userGroups = tmp
            }
        }
    }
    public var polices: [ListUserGroupsForPrivateAccessPolicyResponseBody.Polices]?

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
        if self.polices != nil {
            var tmp : [Any] = []
            for k in self.polices! {
                tmp.append(k.toMap())
            }
            map["Polices"] = tmp
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Polices") {
            var tmp : [ListUserGroupsForPrivateAccessPolicyResponseBody.Polices] = []
            for v in dict["Polices"] as! [Any] {
                var model = ListUserGroupsForPrivateAccessPolicyResponseBody.Polices()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.polices = tmp
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class ListUserGroupsForPrivateAccessPolicyResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListUserGroupsForPrivateAccessPolicyResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = ListUserGroupsForPrivateAccessPolicyResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListUserGroupsForRegistrationPolicyRequest : Tea.TeaModel {
    public var policyIds: [String]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.policyIds != nil {
            map["PolicyIds"] = self.policyIds!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("PolicyIds") {
            self.policyIds = dict["PolicyIds"] as! [String]
        }
    }
}

public class ListUserGroupsForRegistrationPolicyResponseBody : Tea.TeaModel {
    public class Policies : Tea.TeaModel {
        public class UserGroups : Tea.TeaModel {
            public class Attributes : Tea.TeaModel {
                public var idpId: Int32?

                public var relation: String?

                public var userGroupType: String?

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
                    if self.idpId != nil {
                        map["IdpId"] = self.idpId!
                    }
                    if self.relation != nil {
                        map["Relation"] = self.relation!
                    }
                    if self.userGroupType != nil {
                        map["UserGroupType"] = self.userGroupType!
                    }
                    if self.value != nil {
                        map["Value"] = self.value!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("IdpId") {
                        self.idpId = dict["IdpId"] as! Int32
                    }
                    if dict.keys.contains("Relation") {
                        self.relation = dict["Relation"] as! String
                    }
                    if dict.keys.contains("UserGroupType") {
                        self.userGroupType = dict["UserGroupType"] as! String
                    }
                    if dict.keys.contains("Value") {
                        self.value = dict["Value"] as! String
                    }
                }
            }
            public var attributes: [ListUserGroupsForRegistrationPolicyResponseBody.Policies.UserGroups.Attributes]?

            public var createTime: String?

            public var description_: String?

            public var name: String?

            public var userGroupId: String?

            public override init() {
                super.init()
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
                    var tmp : [Any] = []
                    for k in self.attributes! {
                        tmp.append(k.toMap())
                    }
                    map["Attributes"] = tmp
                }
                if self.createTime != nil {
                    map["CreateTime"] = self.createTime!
                }
                if self.description_ != nil {
                    map["Description"] = self.description_!
                }
                if self.name != nil {
                    map["Name"] = self.name!
                }
                if self.userGroupId != nil {
                    map["UserGroupId"] = self.userGroupId!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("Attributes") {
                    var tmp : [ListUserGroupsForRegistrationPolicyResponseBody.Policies.UserGroups.Attributes] = []
                    for v in dict["Attributes"] as! [Any] {
                        var model = ListUserGroupsForRegistrationPolicyResponseBody.Policies.UserGroups.Attributes()
                        if v != nil {
                            model.fromMap(v as! [String: Any])
                        }
                        tmp.append(model)
                    }
                    self.attributes = tmp
                }
                if dict.keys.contains("CreateTime") {
                    self.createTime = dict["CreateTime"] as! String
                }
                if dict.keys.contains("Description") {
                    self.description_ = dict["Description"] as! String
                }
                if dict.keys.contains("Name") {
                    self.name = dict["Name"] as! String
                }
                if dict.keys.contains("UserGroupId") {
                    self.userGroupId = dict["UserGroupId"] as! String
                }
            }
        }
        public var policyId: String?

        public var userGroups: [ListUserGroupsForRegistrationPolicyResponseBody.Policies.UserGroups]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.policyId != nil {
                map["PolicyId"] = self.policyId!
            }
            if self.userGroups != nil {
                var tmp : [Any] = []
                for k in self.userGroups! {
                    tmp.append(k.toMap())
                }
                map["UserGroups"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("PolicyId") {
                self.policyId = dict["PolicyId"] as! String
            }
            if dict.keys.contains("UserGroups") {
                var tmp : [ListUserGroupsForRegistrationPolicyResponseBody.Policies.UserGroups] = []
                for v in dict["UserGroups"] as! [Any] {
                    var model = ListUserGroupsForRegistrationPolicyResponseBody.Policies.UserGroups()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.userGroups = tmp
            }
        }
    }
    public var policies: [ListUserGroupsForRegistrationPolicyResponseBody.Policies]?

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
        if self.policies != nil {
            var tmp : [Any] = []
            for k in self.policies! {
                tmp.append(k.toMap())
            }
            map["Policies"] = tmp
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Policies") {
            var tmp : [ListUserGroupsForRegistrationPolicyResponseBody.Policies] = []
            for v in dict["Policies"] as! [Any] {
                var model = ListUserGroupsForRegistrationPolicyResponseBody.Policies()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.policies = tmp
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class ListUserGroupsForRegistrationPolicyResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListUserGroupsForRegistrationPolicyResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = ListUserGroupsForRegistrationPolicyResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListUserPrivateAccessPoliciesRequest : Tea.TeaModel {
    public var currentPage: Int32?

    public var name: String?

    public var pageSize: Int32?

    public var saseUserId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.currentPage != nil {
            map["CurrentPage"] = self.currentPage!
        }
        if self.name != nil {
            map["Name"] = self.name!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.saseUserId != nil {
            map["SaseUserId"] = self.saseUserId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("CurrentPage") {
            self.currentPage = dict["CurrentPage"] as! Int32
        }
        if dict.keys.contains("Name") {
            self.name = dict["Name"] as! String
        }
        if dict.keys.contains("PageSize") {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("SaseUserId") {
            self.saseUserId = dict["SaseUserId"] as! String
        }
    }
}

public class ListUserPrivateAccessPoliciesResponseBody : Tea.TeaModel {
    public class Polices : Tea.TeaModel {
        public class CustomUserAttributes : Tea.TeaModel {
            public var idpId: Int32?

            public var relation: String?

            public var userGroupType: String?

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
                if self.idpId != nil {
                    map["IdpId"] = self.idpId!
                }
                if self.relation != nil {
                    map["Relation"] = self.relation!
                }
                if self.userGroupType != nil {
                    map["UserGroupType"] = self.userGroupType!
                }
                if self.value != nil {
                    map["Value"] = self.value!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("IdpId") {
                    self.idpId = dict["IdpId"] as! Int32
                }
                if dict.keys.contains("Relation") {
                    self.relation = dict["Relation"] as! String
                }
                if dict.keys.contains("UserGroupType") {
                    self.userGroupType = dict["UserGroupType"] as! String
                }
                if dict.keys.contains("Value") {
                    self.value = dict["Value"] as! String
                }
            }
        }
        public var customUserAttributes: [ListUserPrivateAccessPoliciesResponseBody.Polices.CustomUserAttributes]?

        public var deviceAttributeName: String?

        public var matchedUserGroup: String?

        public var name: String?

        public var policyAction: String?

        public var policyId: String?

        public var priority: Int64?

        public var userGroupMode: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.customUserAttributes != nil {
                var tmp : [Any] = []
                for k in self.customUserAttributes! {
                    tmp.append(k.toMap())
                }
                map["CustomUserAttributes"] = tmp
            }
            if self.deviceAttributeName != nil {
                map["DeviceAttributeName"] = self.deviceAttributeName!
            }
            if self.matchedUserGroup != nil {
                map["MatchedUserGroup"] = self.matchedUserGroup!
            }
            if self.name != nil {
                map["Name"] = self.name!
            }
            if self.policyAction != nil {
                map["PolicyAction"] = self.policyAction!
            }
            if self.policyId != nil {
                map["PolicyId"] = self.policyId!
            }
            if self.priority != nil {
                map["Priority"] = self.priority!
            }
            if self.userGroupMode != nil {
                map["UserGroupMode"] = self.userGroupMode!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("CustomUserAttributes") {
                var tmp : [ListUserPrivateAccessPoliciesResponseBody.Polices.CustomUserAttributes] = []
                for v in dict["CustomUserAttributes"] as! [Any] {
                    var model = ListUserPrivateAccessPoliciesResponseBody.Polices.CustomUserAttributes()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.customUserAttributes = tmp
            }
            if dict.keys.contains("DeviceAttributeName") {
                self.deviceAttributeName = dict["DeviceAttributeName"] as! String
            }
            if dict.keys.contains("MatchedUserGroup") {
                self.matchedUserGroup = dict["MatchedUserGroup"] as! String
            }
            if dict.keys.contains("Name") {
                self.name = dict["Name"] as! String
            }
            if dict.keys.contains("PolicyAction") {
                self.policyAction = dict["PolicyAction"] as! String
            }
            if dict.keys.contains("PolicyId") {
                self.policyId = dict["PolicyId"] as! String
            }
            if dict.keys.contains("Priority") {
                self.priority = dict["Priority"] as! Int64
            }
            if dict.keys.contains("UserGroupMode") {
                self.userGroupMode = dict["UserGroupMode"] as! String
            }
        }
    }
    public var polices: [ListUserPrivateAccessPoliciesResponseBody.Polices]?

    public var requestId: String?

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
        if self.polices != nil {
            var tmp : [Any] = []
            for k in self.polices! {
                tmp.append(k.toMap())
            }
            map["Polices"] = tmp
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.totalNum != nil {
            map["TotalNum"] = self.totalNum!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Polices") {
            var tmp : [ListUserPrivateAccessPoliciesResponseBody.Polices] = []
            for v in dict["Polices"] as! [Any] {
                var model = ListUserPrivateAccessPoliciesResponseBody.Polices()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.polices = tmp
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("TotalNum") {
            self.totalNum = dict["TotalNum"] as! Int32
        }
    }
}

public class ListUserPrivateAccessPoliciesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListUserPrivateAccessPoliciesResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = ListUserPrivateAccessPoliciesResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListUsersRequest : Tea.TeaModel {
    public var currentPage: Int64?

    public var department: String?

    public var fuzzyUsername: String?

    public var pageSize: Int64?

    public var preciseUsername: String?

    public var saseUserIds: [String]?

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
        if self.currentPage != nil {
            map["CurrentPage"] = self.currentPage!
        }
        if self.department != nil {
            map["Department"] = self.department!
        }
        if self.fuzzyUsername != nil {
            map["FuzzyUsername"] = self.fuzzyUsername!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.preciseUsername != nil {
            map["PreciseUsername"] = self.preciseUsername!
        }
        if self.saseUserIds != nil {
            map["SaseUserIds"] = self.saseUserIds!
        }
        if self.status != nil {
            map["Status"] = self.status!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("CurrentPage") {
            self.currentPage = dict["CurrentPage"] as! Int64
        }
        if dict.keys.contains("Department") {
            self.department = dict["Department"] as! String
        }
        if dict.keys.contains("FuzzyUsername") {
            self.fuzzyUsername = dict["FuzzyUsername"] as! String
        }
        if dict.keys.contains("PageSize") {
            self.pageSize = dict["PageSize"] as! Int64
        }
        if dict.keys.contains("PreciseUsername") {
            self.preciseUsername = dict["PreciseUsername"] as! String
        }
        if dict.keys.contains("SaseUserIds") {
            self.saseUserIds = dict["SaseUserIds"] as! [String]
        }
        if dict.keys.contains("Status") {
            self.status = dict["Status"] as! String
        }
    }
}

public class ListUsersResponseBody : Tea.TeaModel {
    public class Users : Tea.TeaModel {
        public var department: String?

        public var email: String?

        public var idpName: String?

        public var phone: String?

        public var saseUserId: String?

        public var status: String?

        public var username: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.department != nil {
                map["Department"] = self.department!
            }
            if self.email != nil {
                map["Email"] = self.email!
            }
            if self.idpName != nil {
                map["IdpName"] = self.idpName!
            }
            if self.phone != nil {
                map["Phone"] = self.phone!
            }
            if self.saseUserId != nil {
                map["SaseUserId"] = self.saseUserId!
            }
            if self.status != nil {
                map["Status"] = self.status!
            }
            if self.username != nil {
                map["Username"] = self.username!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Department") {
                self.department = dict["Department"] as! String
            }
            if dict.keys.contains("Email") {
                self.email = dict["Email"] as! String
            }
            if dict.keys.contains("IdpName") {
                self.idpName = dict["IdpName"] as! String
            }
            if dict.keys.contains("Phone") {
                self.phone = dict["Phone"] as! String
            }
            if dict.keys.contains("SaseUserId") {
                self.saseUserId = dict["SaseUserId"] as! String
            }
            if dict.keys.contains("Status") {
                self.status = dict["Status"] as! String
            }
            if dict.keys.contains("Username") {
                self.username = dict["Username"] as! String
            }
        }
    }
    public var requestId: String?

    public var totalNum: String?

    public var users: [ListUsersResponseBody.Users]?

    public override init() {
        super.init()
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
        if self.totalNum != nil {
            map["TotalNum"] = self.totalNum!
        }
        if self.users != nil {
            var tmp : [Any] = []
            for k in self.users! {
                tmp.append(k.toMap())
            }
            map["Users"] = tmp
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("TotalNum") {
            self.totalNum = dict["TotalNum"] as! String
        }
        if dict.keys.contains("Users") {
            var tmp : [ListUsersResponseBody.Users] = []
            for v in dict["Users"] as! [Any] {
                var model = ListUsersResponseBody.Users()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.users = tmp
        }
    }
}

public class ListUsersResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListUsersResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = ListUsersResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class LookupWmInfoMappingRequest : Tea.TeaModel {
    public var wmInfoSize: Int64?

    public var wmInfoUint: String?

    public var wmType: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.wmInfoSize != nil {
            map["WmInfoSize"] = self.wmInfoSize!
        }
        if self.wmInfoUint != nil {
            map["WmInfoUint"] = self.wmInfoUint!
        }
        if self.wmType != nil {
            map["WmType"] = self.wmType!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("WmInfoSize") {
            self.wmInfoSize = dict["WmInfoSize"] as! Int64
        }
        if dict.keys.contains("WmInfoUint") {
            self.wmInfoUint = dict["WmInfoUint"] as! String
        }
        if dict.keys.contains("WmType") {
            self.wmType = dict["WmType"] as! String
        }
    }
}

public class LookupWmInfoMappingResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var wmInfoBytesB64: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.wmInfoBytesB64 != nil {
                map["WmInfoBytesB64"] = self.wmInfoBytesB64!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("WmInfoBytesB64") {
                self.wmInfoBytesB64 = dict["WmInfoBytesB64"] as! String
            }
        }
    }
    public var data: LookupWmInfoMappingResponseBody.Data?

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
            var model = LookupWmInfoMappingResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class LookupWmInfoMappingResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: LookupWmInfoMappingResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = LookupWmInfoMappingResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class RevokeUserSessionRequest : Tea.TeaModel {
    public var externalIds: String?

    public var idpId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.externalIds != nil {
            map["ExternalIds"] = self.externalIds!
        }
        if self.idpId != nil {
            map["IdpId"] = self.idpId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ExternalIds") {
            self.externalIds = dict["ExternalIds"] as! String
        }
        if dict.keys.contains("IdpId") {
            self.idpId = dict["IdpId"] as! String
        }
    }
}

public class RevokeUserSessionResponseBody : Tea.TeaModel {
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

public class RevokeUserSessionResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: RevokeUserSessionResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = RevokeUserSessionResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class UpdateApprovalProcessRequest : Tea.TeaModel {
    public class MatchSchemas : Tea.TeaModel {
        public var appUninstallSchemaId: String?

        public var deviceRegistrationSchemaId: String?

        public var dlpSendSchemaId: String?

        public var domainBlacklistSchemaId: String?

        public var domainWhitelistSchemaId: String?

        public var peripheralBlockSchemaId: String?

        public var softwareBlockSchemaId: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.appUninstallSchemaId != nil {
                map["AppUninstallSchemaId"] = self.appUninstallSchemaId!
            }
            if self.deviceRegistrationSchemaId != nil {
                map["DeviceRegistrationSchemaId"] = self.deviceRegistrationSchemaId!
            }
            if self.dlpSendSchemaId != nil {
                map["DlpSendSchemaId"] = self.dlpSendSchemaId!
            }
            if self.domainBlacklistSchemaId != nil {
                map["DomainBlacklistSchemaId"] = self.domainBlacklistSchemaId!
            }
            if self.domainWhitelistSchemaId != nil {
                map["DomainWhitelistSchemaId"] = self.domainWhitelistSchemaId!
            }
            if self.peripheralBlockSchemaId != nil {
                map["PeripheralBlockSchemaId"] = self.peripheralBlockSchemaId!
            }
            if self.softwareBlockSchemaId != nil {
                map["SoftwareBlockSchemaId"] = self.softwareBlockSchemaId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("AppUninstallSchemaId") {
                self.appUninstallSchemaId = dict["AppUninstallSchemaId"] as! String
            }
            if dict.keys.contains("DeviceRegistrationSchemaId") {
                self.deviceRegistrationSchemaId = dict["DeviceRegistrationSchemaId"] as! String
            }
            if dict.keys.contains("DlpSendSchemaId") {
                self.dlpSendSchemaId = dict["DlpSendSchemaId"] as! String
            }
            if dict.keys.contains("DomainBlacklistSchemaId") {
                self.domainBlacklistSchemaId = dict["DomainBlacklistSchemaId"] as! String
            }
            if dict.keys.contains("DomainWhitelistSchemaId") {
                self.domainWhitelistSchemaId = dict["DomainWhitelistSchemaId"] as! String
            }
            if dict.keys.contains("PeripheralBlockSchemaId") {
                self.peripheralBlockSchemaId = dict["PeripheralBlockSchemaId"] as! String
            }
            if dict.keys.contains("SoftwareBlockSchemaId") {
                self.softwareBlockSchemaId = dict["SoftwareBlockSchemaId"] as! String
            }
        }
    }
    public var description_: String?

    public var matchSchemas: UpdateApprovalProcessRequest.MatchSchemas?

    public var processId: String?

    public var processName: String?

    public var processNodes: [[String]]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.matchSchemas?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.description_ != nil {
            map["Description"] = self.description_!
        }
        if self.matchSchemas != nil {
            map["MatchSchemas"] = self.matchSchemas?.toMap()
        }
        if self.processId != nil {
            map["ProcessId"] = self.processId!
        }
        if self.processName != nil {
            map["ProcessName"] = self.processName!
        }
        if self.processNodes != nil {
            map["ProcessNodes"] = self.processNodes!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Description") {
            self.description_ = dict["Description"] as! String
        }
        if dict.keys.contains("MatchSchemas") {
            var model = UpdateApprovalProcessRequest.MatchSchemas()
            model.fromMap(dict["MatchSchemas"] as! [String: Any])
            self.matchSchemas = model
        }
        if dict.keys.contains("ProcessId") {
            self.processId = dict["ProcessId"] as! String
        }
        if dict.keys.contains("ProcessName") {
            self.processName = dict["ProcessName"] as! String
        }
        if dict.keys.contains("ProcessNodes") {
            self.processNodes = dict["ProcessNodes"] as! [[String]]
        }
    }
}

public class UpdateApprovalProcessShrinkRequest : Tea.TeaModel {
    public var description_: String?

    public var matchSchemasShrink: String?

    public var processId: String?

    public var processName: String?

    public var processNodes: [[String]]?

    public override init() {
        super.init()
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
        if self.matchSchemasShrink != nil {
            map["MatchSchemas"] = self.matchSchemasShrink!
        }
        if self.processId != nil {
            map["ProcessId"] = self.processId!
        }
        if self.processName != nil {
            map["ProcessName"] = self.processName!
        }
        if self.processNodes != nil {
            map["ProcessNodes"] = self.processNodes!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Description") {
            self.description_ = dict["Description"] as! String
        }
        if dict.keys.contains("MatchSchemas") {
            self.matchSchemasShrink = dict["MatchSchemas"] as! String
        }
        if dict.keys.contains("ProcessId") {
            self.processId = dict["ProcessId"] as! String
        }
        if dict.keys.contains("ProcessName") {
            self.processName = dict["ProcessName"] as! String
        }
        if dict.keys.contains("ProcessNodes") {
            self.processNodes = dict["ProcessNodes"] as! [[String]]
        }
    }
}

public class UpdateApprovalProcessResponseBody : Tea.TeaModel {
    public class Process : Tea.TeaModel {
        public class AppUninstallPolicies : Tea.TeaModel {
            public var policyIds: [String]?

            public var schemaId: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.policyIds != nil {
                    map["PolicyIds"] = self.policyIds!
                }
                if self.schemaId != nil {
                    map["SchemaId"] = self.schemaId!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("PolicyIds") {
                    self.policyIds = dict["PolicyIds"] as! [String]
                }
                if dict.keys.contains("SchemaId") {
                    self.schemaId = dict["SchemaId"] as! String
                }
            }
        }
        public class DeviceRegistrationPolicies : Tea.TeaModel {
            public var policyIds: [String]?

            public var schemaId: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.policyIds != nil {
                    map["PolicyIds"] = self.policyIds!
                }
                if self.schemaId != nil {
                    map["SchemaId"] = self.schemaId!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("PolicyIds") {
                    self.policyIds = dict["PolicyIds"] as! [String]
                }
                if dict.keys.contains("SchemaId") {
                    self.schemaId = dict["SchemaId"] as! String
                }
            }
        }
        public class DlpSendPolicies : Tea.TeaModel {
            public var policyIds: [String]?

            public var schemaId: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.policyIds != nil {
                    map["PolicyIds"] = self.policyIds!
                }
                if self.schemaId != nil {
                    map["SchemaId"] = self.schemaId!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("PolicyIds") {
                    self.policyIds = dict["PolicyIds"] as! [String]
                }
                if dict.keys.contains("SchemaId") {
                    self.schemaId = dict["SchemaId"] as! String
                }
            }
        }
        public class DomainBlacklistPolicies : Tea.TeaModel {
            public var policyIds: [String]?

            public var schemaId: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.policyIds != nil {
                    map["PolicyIds"] = self.policyIds!
                }
                if self.schemaId != nil {
                    map["SchemaId"] = self.schemaId!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("PolicyIds") {
                    self.policyIds = dict["PolicyIds"] as! [String]
                }
                if dict.keys.contains("SchemaId") {
                    self.schemaId = dict["SchemaId"] as! String
                }
            }
        }
        public class DomainWhitelistPolicies : Tea.TeaModel {
            public var policyIds: [String]?

            public var schemaId: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.policyIds != nil {
                    map["PolicyIds"] = self.policyIds!
                }
                if self.schemaId != nil {
                    map["SchemaId"] = self.schemaId!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("PolicyIds") {
                    self.policyIds = dict["PolicyIds"] as! [String]
                }
                if dict.keys.contains("SchemaId") {
                    self.schemaId = dict["SchemaId"] as! String
                }
            }
        }
        public class PeripheraBlockPolicies : Tea.TeaModel {
            public var policyIds: [String]?

            public var schemaId: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.policyIds != nil {
                    map["PolicyIds"] = self.policyIds!
                }
                if self.schemaId != nil {
                    map["SchemaId"] = self.schemaId!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("PolicyIds") {
                    self.policyIds = dict["PolicyIds"] as! [String]
                }
                if dict.keys.contains("SchemaId") {
                    self.schemaId = dict["SchemaId"] as! String
                }
            }
        }
        public class ProcessNodes : Tea.TeaModel {
            public var saseUserId: String?

            public var username: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.saseUserId != nil {
                    map["SaseUserId"] = self.saseUserId!
                }
                if self.username != nil {
                    map["Username"] = self.username!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("SaseUserId") {
                    self.saseUserId = dict["SaseUserId"] as! String
                }
                if dict.keys.contains("Username") {
                    self.username = dict["Username"] as! String
                }
            }
        }
        public class SoftwareBlockPolicies : Tea.TeaModel {
            public var policyIds: [String]?

            public var schemaId: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.policyIds != nil {
                    map["PolicyIds"] = self.policyIds!
                }
                if self.schemaId != nil {
                    map["SchemaId"] = self.schemaId!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("PolicyIds") {
                    self.policyIds = dict["PolicyIds"] as! [String]
                }
                if dict.keys.contains("SchemaId") {
                    self.schemaId = dict["SchemaId"] as! String
                }
            }
        }
        public var appUninstallPolicies: UpdateApprovalProcessResponseBody.Process.AppUninstallPolicies?

        public var createTime: String?

        public var description_: String?

        public var deviceRegistrationPolicies: UpdateApprovalProcessResponseBody.Process.DeviceRegistrationPolicies?

        public var dlpSendPolicies: UpdateApprovalProcessResponseBody.Process.DlpSendPolicies?

        public var domainBlacklistPolicies: UpdateApprovalProcessResponseBody.Process.DomainBlacklistPolicies?

        public var domainWhitelistPolicies: UpdateApprovalProcessResponseBody.Process.DomainWhitelistPolicies?

        public var peripheraBlockPolicies: UpdateApprovalProcessResponseBody.Process.PeripheraBlockPolicies?

        public var processId: String?

        public var processName: String?

        public var processNodes: [[UpdateApprovalProcessResponseBody.Process.ProcessNodes]]?

        public var softwareBlockPolicies: UpdateApprovalProcessResponseBody.Process.SoftwareBlockPolicies?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.appUninstallPolicies?.validate()
            try self.deviceRegistrationPolicies?.validate()
            try self.dlpSendPolicies?.validate()
            try self.domainBlacklistPolicies?.validate()
            try self.domainWhitelistPolicies?.validate()
            try self.peripheraBlockPolicies?.validate()
            try self.softwareBlockPolicies?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.appUninstallPolicies != nil {
                map["AppUninstallPolicies"] = self.appUninstallPolicies?.toMap()
            }
            if self.createTime != nil {
                map["CreateTime"] = self.createTime!
            }
            if self.description_ != nil {
                map["Description"] = self.description_!
            }
            if self.deviceRegistrationPolicies != nil {
                map["DeviceRegistrationPolicies"] = self.deviceRegistrationPolicies?.toMap()
            }
            if self.dlpSendPolicies != nil {
                map["DlpSendPolicies"] = self.dlpSendPolicies?.toMap()
            }
            if self.domainBlacklistPolicies != nil {
                map["DomainBlacklistPolicies"] = self.domainBlacklistPolicies?.toMap()
            }
            if self.domainWhitelistPolicies != nil {
                map["DomainWhitelistPolicies"] = self.domainWhitelistPolicies?.toMap()
            }
            if self.peripheraBlockPolicies != nil {
                map["PeripheraBlockPolicies"] = self.peripheraBlockPolicies?.toMap()
            }
            if self.processId != nil {
                map["ProcessId"] = self.processId!
            }
            if self.processName != nil {
                map["ProcessName"] = self.processName!
            }
            if self.processNodes != nil {
                var tmp : [Any] = []
                for k in self.processNodes! {
                    var l1 : [Any] = []
                    for k1 in k {
                        l1.append(k1.toMap())
                    }
                    tmp.append(l1)
                }
                map["ProcessNodes"] = tmp
            }
            if self.softwareBlockPolicies != nil {
                map["SoftwareBlockPolicies"] = self.softwareBlockPolicies?.toMap()
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("AppUninstallPolicies") {
                var model = UpdateApprovalProcessResponseBody.Process.AppUninstallPolicies()
                model.fromMap(dict["AppUninstallPolicies"] as! [String: Any])
                self.appUninstallPolicies = model
            }
            if dict.keys.contains("CreateTime") {
                self.createTime = dict["CreateTime"] as! String
            }
            if dict.keys.contains("Description") {
                self.description_ = dict["Description"] as! String
            }
            if dict.keys.contains("DeviceRegistrationPolicies") {
                var model = UpdateApprovalProcessResponseBody.Process.DeviceRegistrationPolicies()
                model.fromMap(dict["DeviceRegistrationPolicies"] as! [String: Any])
                self.deviceRegistrationPolicies = model
            }
            if dict.keys.contains("DlpSendPolicies") {
                var model = UpdateApprovalProcessResponseBody.Process.DlpSendPolicies()
                model.fromMap(dict["DlpSendPolicies"] as! [String: Any])
                self.dlpSendPolicies = model
            }
            if dict.keys.contains("DomainBlacklistPolicies") {
                var model = UpdateApprovalProcessResponseBody.Process.DomainBlacklistPolicies()
                model.fromMap(dict["DomainBlacklistPolicies"] as! [String: Any])
                self.domainBlacklistPolicies = model
            }
            if dict.keys.contains("DomainWhitelistPolicies") {
                var model = UpdateApprovalProcessResponseBody.Process.DomainWhitelistPolicies()
                model.fromMap(dict["DomainWhitelistPolicies"] as! [String: Any])
                self.domainWhitelistPolicies = model
            }
            if dict.keys.contains("PeripheraBlockPolicies") {
                var model = UpdateApprovalProcessResponseBody.Process.PeripheraBlockPolicies()
                model.fromMap(dict["PeripheraBlockPolicies"] as! [String: Any])
                self.peripheraBlockPolicies = model
            }
            if dict.keys.contains("ProcessId") {
                self.processId = dict["ProcessId"] as! String
            }
            if dict.keys.contains("ProcessName") {
                self.processName = dict["ProcessName"] as! String
            }
            if dict.keys.contains("ProcessNodes") {
                var tmp : [[UpdateApprovalProcessResponseBody.Process.ProcessNodes]] = []
                for v in dict["ProcessNodes"] as! [Any] {
                    var l1 : [UpdateApprovalProcessResponseBody.Process.ProcessNodes] = []
                    for v1 in v as! [Any] {
                        var model = UpdateApprovalProcessResponseBody.Process.ProcessNodes()
                        if v1 != nil {
                            model.fromMap(v1 as! [String: Any])
                        }
                        l1.append(model)
                    }
                    tmp.append(l1)
                }
                self.processNodes = tmp
            }
            if dict.keys.contains("SoftwareBlockPolicies") {
                var model = UpdateApprovalProcessResponseBody.Process.SoftwareBlockPolicies()
                model.fromMap(dict["SoftwareBlockPolicies"] as! [String: Any])
                self.softwareBlockPolicies = model
            }
        }
    }
    public var process: UpdateApprovalProcessResponseBody.Process?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.process?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.process != nil {
            map["Process"] = self.process?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Process") {
            var model = UpdateApprovalProcessResponseBody.Process()
            model.fromMap(dict["Process"] as! [String: Any])
            self.process = model
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class UpdateApprovalProcessResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpdateApprovalProcessResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = UpdateApprovalProcessResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class UpdateApprovalStatusRequest : Tea.TeaModel {
    public var approvalId: String?

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
        if self.approvalId != nil {
            map["ApprovalId"] = self.approvalId!
        }
        if self.status != nil {
            map["Status"] = self.status!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ApprovalId") {
            self.approvalId = dict["ApprovalId"] as! String
        }
        if dict.keys.contains("Status") {
            self.status = dict["Status"] as! String
        }
    }
}

public class UpdateApprovalStatusResponseBody : Tea.TeaModel {
    public class Approval : Tea.TeaModel {
        public class ApprovalProgresses : Tea.TeaModel {
            public class Operators : Tea.TeaModel {
                public var saseUserId: String?

                public var username: String?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.saseUserId != nil {
                        map["SaseUserId"] = self.saseUserId!
                    }
                    if self.username != nil {
                        map["Username"] = self.username!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("SaseUserId") {
                        self.saseUserId = dict["SaseUserId"] as! String
                    }
                    if dict.keys.contains("Username") {
                        self.username = dict["Username"] as! String
                    }
                }
            }
            public var action: String?

            public var comment: String?

            public var executor: String?

            public var operators: [UpdateApprovalStatusResponseBody.Approval.ApprovalProgresses.Operators]?

            public var status: String?

            public var timestamp: Int64?

            public override init() {
                super.init()
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
                if self.comment != nil {
                    map["Comment"] = self.comment!
                }
                if self.executor != nil {
                    map["Executor"] = self.executor!
                }
                if self.operators != nil {
                    var tmp : [Any] = []
                    for k in self.operators! {
                        tmp.append(k.toMap())
                    }
                    map["Operators"] = tmp
                }
                if self.status != nil {
                    map["Status"] = self.status!
                }
                if self.timestamp != nil {
                    map["Timestamp"] = self.timestamp!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("Action") {
                    self.action = dict["Action"] as! String
                }
                if dict.keys.contains("Comment") {
                    self.comment = dict["Comment"] as! String
                }
                if dict.keys.contains("Executor") {
                    self.executor = dict["Executor"] as! String
                }
                if dict.keys.contains("Operators") {
                    var tmp : [UpdateApprovalStatusResponseBody.Approval.ApprovalProgresses.Operators] = []
                    for v in dict["Operators"] as! [Any] {
                        var model = UpdateApprovalStatusResponseBody.Approval.ApprovalProgresses.Operators()
                        if v != nil {
                            model.fromMap(v as! [String: Any])
                        }
                        tmp.append(model)
                    }
                    self.operators = tmp
                }
                if dict.keys.contains("Status") {
                    self.status = dict["Status"] as! String
                }
                if dict.keys.contains("Timestamp") {
                    self.timestamp = dict["Timestamp"] as! Int64
                }
            }
        }
        public var approvalDetail: String?

        public var approvalId: String?

        public var approvalProgresses: [UpdateApprovalStatusResponseBody.Approval.ApprovalProgresses]?

        public var createTime: String?

        public var creatorDevTag: String?

        public var creatorUserId: String?

        public var endTimestamp: Int64?

        public var policyType: String?

        public var processId: String?

        public var processName: String?

        public var reason: String?

        public var schemaContent: String?

        public var schemaId: String?

        public var schemaName: String?

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
            if self.approvalDetail != nil {
                map["ApprovalDetail"] = self.approvalDetail!
            }
            if self.approvalId != nil {
                map["ApprovalId"] = self.approvalId!
            }
            if self.approvalProgresses != nil {
                var tmp : [Any] = []
                for k in self.approvalProgresses! {
                    tmp.append(k.toMap())
                }
                map["ApprovalProgresses"] = tmp
            }
            if self.createTime != nil {
                map["CreateTime"] = self.createTime!
            }
            if self.creatorDevTag != nil {
                map["CreatorDevTag"] = self.creatorDevTag!
            }
            if self.creatorUserId != nil {
                map["CreatorUserId"] = self.creatorUserId!
            }
            if self.endTimestamp != nil {
                map["EndTimestamp"] = self.endTimestamp!
            }
            if self.policyType != nil {
                map["PolicyType"] = self.policyType!
            }
            if self.processId != nil {
                map["ProcessId"] = self.processId!
            }
            if self.processName != nil {
                map["ProcessName"] = self.processName!
            }
            if self.reason != nil {
                map["Reason"] = self.reason!
            }
            if self.schemaContent != nil {
                map["SchemaContent"] = self.schemaContent!
            }
            if self.schemaId != nil {
                map["SchemaId"] = self.schemaId!
            }
            if self.schemaName != nil {
                map["SchemaName"] = self.schemaName!
            }
            if self.status != nil {
                map["Status"] = self.status!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("ApprovalDetail") {
                self.approvalDetail = dict["ApprovalDetail"] as! String
            }
            if dict.keys.contains("ApprovalId") {
                self.approvalId = dict["ApprovalId"] as! String
            }
            if dict.keys.contains("ApprovalProgresses") {
                var tmp : [UpdateApprovalStatusResponseBody.Approval.ApprovalProgresses] = []
                for v in dict["ApprovalProgresses"] as! [Any] {
                    var model = UpdateApprovalStatusResponseBody.Approval.ApprovalProgresses()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.approvalProgresses = tmp
            }
            if dict.keys.contains("CreateTime") {
                self.createTime = dict["CreateTime"] as! String
            }
            if dict.keys.contains("CreatorDevTag") {
                self.creatorDevTag = dict["CreatorDevTag"] as! String
            }
            if dict.keys.contains("CreatorUserId") {
                self.creatorUserId = dict["CreatorUserId"] as! String
            }
            if dict.keys.contains("EndTimestamp") {
                self.endTimestamp = dict["EndTimestamp"] as! Int64
            }
            if dict.keys.contains("PolicyType") {
                self.policyType = dict["PolicyType"] as! String
            }
            if dict.keys.contains("ProcessId") {
                self.processId = dict["ProcessId"] as! String
            }
            if dict.keys.contains("ProcessName") {
                self.processName = dict["ProcessName"] as! String
            }
            if dict.keys.contains("Reason") {
                self.reason = dict["Reason"] as! String
            }
            if dict.keys.contains("SchemaContent") {
                self.schemaContent = dict["SchemaContent"] as! String
            }
            if dict.keys.contains("SchemaId") {
                self.schemaId = dict["SchemaId"] as! String
            }
            if dict.keys.contains("SchemaName") {
                self.schemaName = dict["SchemaName"] as! String
            }
            if dict.keys.contains("Status") {
                self.status = dict["Status"] as! String
            }
        }
    }
    public var approval: [UpdateApprovalStatusResponseBody.Approval]?

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
        if self.approval != nil {
            var tmp : [Any] = []
            for k in self.approval! {
                tmp.append(k.toMap())
            }
            map["Approval"] = tmp
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Approval") {
            var tmp : [UpdateApprovalStatusResponseBody.Approval] = []
            for v in dict["Approval"] as! [Any] {
                var model = UpdateApprovalStatusResponseBody.Approval()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.approval = tmp
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class UpdateApprovalStatusResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpdateApprovalStatusResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = UpdateApprovalStatusResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class UpdateBootAndAntiUninstallPolicyRequest : Tea.TeaModel {
    public class BlockContent : Tea.TeaModel {
        public class BlockTextEn : Tea.TeaModel {
            public var content: String?

            public var mainButtonText: String?

            public var minorButtonText: String?

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
                if self.content != nil {
                    map["Content"] = self.content!
                }
                if self.mainButtonText != nil {
                    map["MainButtonText"] = self.mainButtonText!
                }
                if self.minorButtonText != nil {
                    map["MinorButtonText"] = self.minorButtonText!
                }
                if self.title != nil {
                    map["Title"] = self.title!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("Content") {
                    self.content = dict["Content"] as! String
                }
                if dict.keys.contains("MainButtonText") {
                    self.mainButtonText = dict["MainButtonText"] as! String
                }
                if dict.keys.contains("MinorButtonText") {
                    self.minorButtonText = dict["MinorButtonText"] as! String
                }
                if dict.keys.contains("Title") {
                    self.title = dict["Title"] as! String
                }
            }
        }
        public class BlockTextZh : Tea.TeaModel {
            public var content: String?

            public var mainButtonText: String?

            public var minorButtonText: String?

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
                if self.content != nil {
                    map["Content"] = self.content!
                }
                if self.mainButtonText != nil {
                    map["MainButtonText"] = self.mainButtonText!
                }
                if self.minorButtonText != nil {
                    map["MinorButtonText"] = self.minorButtonText!
                }
                if self.title != nil {
                    map["Title"] = self.title!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("Content") {
                    self.content = dict["Content"] as! String
                }
                if dict.keys.contains("MainButtonText") {
                    self.mainButtonText = dict["MainButtonText"] as! String
                }
                if dict.keys.contains("MinorButtonText") {
                    self.minorButtonText = dict["MinorButtonText"] as! String
                }
                if dict.keys.contains("Title") {
                    self.title = dict["Title"] as! String
                }
            }
        }
        public var blockTextEn: UpdateBootAndAntiUninstallPolicyRequest.BlockContent.BlockTextEn?

        public var blockTextZh: UpdateBootAndAntiUninstallPolicyRequest.BlockContent.BlockTextZh?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.blockTextEn?.validate()
            try self.blockTextZh?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.blockTextEn != nil {
                map["BlockTextEn"] = self.blockTextEn?.toMap()
            }
            if self.blockTextZh != nil {
                map["BlockTextZh"] = self.blockTextZh?.toMap()
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("BlockTextEn") {
                var model = UpdateBootAndAntiUninstallPolicyRequest.BlockContent.BlockTextEn()
                model.fromMap(dict["BlockTextEn"] as! [String: Any])
                self.blockTextEn = model
            }
            if dict.keys.contains("BlockTextZh") {
                var model = UpdateBootAndAntiUninstallPolicyRequest.BlockContent.BlockTextZh()
                model.fromMap(dict["BlockTextZh"] as! [String: Any])
                self.blockTextZh = model
            }
        }
    }
    public var allowReport: Bool?

    public var blockContent: UpdateBootAndAntiUninstallPolicyRequest.BlockContent?

    public var isAntiUninstall: Bool?

    public var isBoot: Bool?

    public var userGroupIds: [String]?

    public var whitelistUsers: [String]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.blockContent?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.allowReport != nil {
            map["AllowReport"] = self.allowReport!
        }
        if self.blockContent != nil {
            map["BlockContent"] = self.blockContent?.toMap()
        }
        if self.isAntiUninstall != nil {
            map["IsAntiUninstall"] = self.isAntiUninstall!
        }
        if self.isBoot != nil {
            map["IsBoot"] = self.isBoot!
        }
        if self.userGroupIds != nil {
            map["UserGroupIds"] = self.userGroupIds!
        }
        if self.whitelistUsers != nil {
            map["WhitelistUsers"] = self.whitelistUsers!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AllowReport") {
            self.allowReport = dict["AllowReport"] as! Bool
        }
        if dict.keys.contains("BlockContent") {
            var model = UpdateBootAndAntiUninstallPolicyRequest.BlockContent()
            model.fromMap(dict["BlockContent"] as! [String: Any])
            self.blockContent = model
        }
        if dict.keys.contains("IsAntiUninstall") {
            self.isAntiUninstall = dict["IsAntiUninstall"] as! Bool
        }
        if dict.keys.contains("IsBoot") {
            self.isBoot = dict["IsBoot"] as! Bool
        }
        if dict.keys.contains("UserGroupIds") {
            self.userGroupIds = dict["UserGroupIds"] as! [String]
        }
        if dict.keys.contains("WhitelistUsers") {
            self.whitelistUsers = dict["WhitelistUsers"] as! [String]
        }
    }
}

public class UpdateBootAndAntiUninstallPolicyShrinkRequest : Tea.TeaModel {
    public var allowReport: Bool?

    public var blockContentShrink: String?

    public var isAntiUninstall: Bool?

    public var isBoot: Bool?

    public var userGroupIds: [String]?

    public var whitelistUsers: [String]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.allowReport != nil {
            map["AllowReport"] = self.allowReport!
        }
        if self.blockContentShrink != nil {
            map["BlockContent"] = self.blockContentShrink!
        }
        if self.isAntiUninstall != nil {
            map["IsAntiUninstall"] = self.isAntiUninstall!
        }
        if self.isBoot != nil {
            map["IsBoot"] = self.isBoot!
        }
        if self.userGroupIds != nil {
            map["UserGroupIds"] = self.userGroupIds!
        }
        if self.whitelistUsers != nil {
            map["WhitelistUsers"] = self.whitelistUsers!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AllowReport") {
            self.allowReport = dict["AllowReport"] as! Bool
        }
        if dict.keys.contains("BlockContent") {
            self.blockContentShrink = dict["BlockContent"] as! String
        }
        if dict.keys.contains("IsAntiUninstall") {
            self.isAntiUninstall = dict["IsAntiUninstall"] as! Bool
        }
        if dict.keys.contains("IsBoot") {
            self.isBoot = dict["IsBoot"] as! Bool
        }
        if dict.keys.contains("UserGroupIds") {
            self.userGroupIds = dict["UserGroupIds"] as! [String]
        }
        if dict.keys.contains("WhitelistUsers") {
            self.whitelistUsers = dict["WhitelistUsers"] as! [String]
        }
    }
}

public class UpdateBootAndAntiUninstallPolicyResponseBody : Tea.TeaModel {
    public class Strategy : Tea.TeaModel {
        public class BlockContent : Tea.TeaModel {
            public class BlockTextEn : Tea.TeaModel {
                public var content: String?

                public var mainButtonText: String?

                public var minorButtonText: String?

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
                    if self.content != nil {
                        map["Content"] = self.content!
                    }
                    if self.mainButtonText != nil {
                        map["MainButtonText"] = self.mainButtonText!
                    }
                    if self.minorButtonText != nil {
                        map["MinorButtonText"] = self.minorButtonText!
                    }
                    if self.title != nil {
                        map["Title"] = self.title!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("Content") {
                        self.content = dict["Content"] as! String
                    }
                    if dict.keys.contains("MainButtonText") {
                        self.mainButtonText = dict["MainButtonText"] as! String
                    }
                    if dict.keys.contains("MinorButtonText") {
                        self.minorButtonText = dict["MinorButtonText"] as! String
                    }
                    if dict.keys.contains("Title") {
                        self.title = dict["Title"] as! String
                    }
                }
            }
            public class BlockTextZh : Tea.TeaModel {
                public var content: String?

                public var mainButtonText: String?

                public var minorButtonText: String?

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
                    if self.content != nil {
                        map["Content"] = self.content!
                    }
                    if self.mainButtonText != nil {
                        map["MainButtonText"] = self.mainButtonText!
                    }
                    if self.minorButtonText != nil {
                        map["MinorButtonText"] = self.minorButtonText!
                    }
                    if self.title != nil {
                        map["Title"] = self.title!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("Content") {
                        self.content = dict["Content"] as! String
                    }
                    if dict.keys.contains("MainButtonText") {
                        self.mainButtonText = dict["MainButtonText"] as! String
                    }
                    if dict.keys.contains("MinorButtonText") {
                        self.minorButtonText = dict["MinorButtonText"] as! String
                    }
                    if dict.keys.contains("Title") {
                        self.title = dict["Title"] as! String
                    }
                }
            }
            public var blockTextEn: UpdateBootAndAntiUninstallPolicyResponseBody.Strategy.BlockContent.BlockTextEn?

            public var blockTextZh: UpdateBootAndAntiUninstallPolicyResponseBody.Strategy.BlockContent.BlockTextZh?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
                try self.blockTextEn?.validate()
                try self.blockTextZh?.validate()
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.blockTextEn != nil {
                    map["BlockTextEn"] = self.blockTextEn?.toMap()
                }
                if self.blockTextZh != nil {
                    map["BlockTextZh"] = self.blockTextZh?.toMap()
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("BlockTextEn") {
                    var model = UpdateBootAndAntiUninstallPolicyResponseBody.Strategy.BlockContent.BlockTextEn()
                    model.fromMap(dict["BlockTextEn"] as! [String: Any])
                    self.blockTextEn = model
                }
                if dict.keys.contains("BlockTextZh") {
                    var model = UpdateBootAndAntiUninstallPolicyResponseBody.Strategy.BlockContent.BlockTextZh()
                    model.fromMap(dict["BlockTextZh"] as! [String: Any])
                    self.blockTextZh = model
                }
            }
        }
        public var allowReport: Bool?

        public var blockContent: UpdateBootAndAntiUninstallPolicyResponseBody.Strategy.BlockContent?

        public var createTime: String?

        public var isAntiUninstall: Bool?

        public var isBoot: Bool?

        public var policyId: String?

        public var reportProcessId: String?

        public var updateTime: String?

        public var userGroupIds: [String]?

        public var whitelistUsers: [String]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.blockContent?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.allowReport != nil {
                map["AllowReport"] = self.allowReport!
            }
            if self.blockContent != nil {
                map["BlockContent"] = self.blockContent?.toMap()
            }
            if self.createTime != nil {
                map["CreateTime"] = self.createTime!
            }
            if self.isAntiUninstall != nil {
                map["IsAntiUninstall"] = self.isAntiUninstall!
            }
            if self.isBoot != nil {
                map["IsBoot"] = self.isBoot!
            }
            if self.policyId != nil {
                map["PolicyId"] = self.policyId!
            }
            if self.reportProcessId != nil {
                map["ReportProcessId"] = self.reportProcessId!
            }
            if self.updateTime != nil {
                map["UpdateTime"] = self.updateTime!
            }
            if self.userGroupIds != nil {
                map["UserGroupIds"] = self.userGroupIds!
            }
            if self.whitelistUsers != nil {
                map["WhitelistUsers"] = self.whitelistUsers!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("AllowReport") {
                self.allowReport = dict["AllowReport"] as! Bool
            }
            if dict.keys.contains("BlockContent") {
                var model = UpdateBootAndAntiUninstallPolicyResponseBody.Strategy.BlockContent()
                model.fromMap(dict["BlockContent"] as! [String: Any])
                self.blockContent = model
            }
            if dict.keys.contains("CreateTime") {
                self.createTime = dict["CreateTime"] as! String
            }
            if dict.keys.contains("IsAntiUninstall") {
                self.isAntiUninstall = dict["IsAntiUninstall"] as! Bool
            }
            if dict.keys.contains("IsBoot") {
                self.isBoot = dict["IsBoot"] as! Bool
            }
            if dict.keys.contains("PolicyId") {
                self.policyId = dict["PolicyId"] as! String
            }
            if dict.keys.contains("ReportProcessId") {
                self.reportProcessId = dict["ReportProcessId"] as! String
            }
            if dict.keys.contains("UpdateTime") {
                self.updateTime = dict["UpdateTime"] as! String
            }
            if dict.keys.contains("UserGroupIds") {
                self.userGroupIds = dict["UserGroupIds"] as! [String]
            }
            if dict.keys.contains("WhitelistUsers") {
                self.whitelistUsers = dict["WhitelistUsers"] as! [String]
            }
        }
    }
    public var requestId: String?

    public var strategy: UpdateBootAndAntiUninstallPolicyResponseBody.Strategy?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.strategy?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.strategy != nil {
            map["Strategy"] = self.strategy?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Strategy") {
            var model = UpdateBootAndAntiUninstallPolicyResponseBody.Strategy()
            model.fromMap(dict["Strategy"] as! [String: Any])
            self.strategy = model
        }
    }
}

public class UpdateBootAndAntiUninstallPolicyResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpdateBootAndAntiUninstallPolicyResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = UpdateBootAndAntiUninstallPolicyResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class UpdateClientUserRequest : Tea.TeaModel {
    public var departmentId: String?

    public var description_: String?

    public var email: String?

    public var id: String?

    public var mobileNumber: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.departmentId != nil {
            map["DepartmentId"] = self.departmentId!
        }
        if self.description_ != nil {
            map["Description"] = self.description_!
        }
        if self.email != nil {
            map["Email"] = self.email!
        }
        if self.id != nil {
            map["Id"] = self.id!
        }
        if self.mobileNumber != nil {
            map["MobileNumber"] = self.mobileNumber!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DepartmentId") {
            self.departmentId = dict["DepartmentId"] as! String
        }
        if dict.keys.contains("Description") {
            self.description_ = dict["Description"] as! String
        }
        if dict.keys.contains("Email") {
            self.email = dict["Email"] as! String
        }
        if dict.keys.contains("Id") {
            self.id = dict["Id"] as! String
        }
        if dict.keys.contains("MobileNumber") {
            self.mobileNumber = dict["MobileNumber"] as! String
        }
    }
}

public class UpdateClientUserResponseBody : Tea.TeaModel {
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

public class UpdateClientUserResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpdateClientUserResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = UpdateClientUserResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class UpdateClientUserPasswordRequest : Tea.TeaModel {
    public var id: String?

    public var password: String?

    public var username: String?

    public override init() {
        super.init()
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
        if self.password != nil {
            map["Password"] = self.password!
        }
        if self.username != nil {
            map["Username"] = self.username!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Id") {
            self.id = dict["Id"] as! String
        }
        if dict.keys.contains("Password") {
            self.password = dict["Password"] as! String
        }
        if dict.keys.contains("Username") {
            self.username = dict["Username"] as! String
        }
    }
}

public class UpdateClientUserPasswordResponseBody : Tea.TeaModel {
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

public class UpdateClientUserPasswordResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpdateClientUserPasswordResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = UpdateClientUserPasswordResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class UpdateClientUserStatusRequest : Tea.TeaModel {
    public var id: String?

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
        if self.id != nil {
            map["Id"] = self.id!
        }
        if self.status != nil {
            map["Status"] = self.status!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Id") {
            self.id = dict["Id"] as! String
        }
        if dict.keys.contains("Status") {
            self.status = dict["Status"] as! String
        }
    }
}

public class UpdateClientUserStatusResponseBody : Tea.TeaModel {
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

public class UpdateClientUserStatusResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpdateClientUserStatusResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = UpdateClientUserStatusResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class UpdateDynamicRouteRequest : Tea.TeaModel {
    public var applicationIds: [String]?

    public var applicationType: String?

    public var description_: String?

    public var dynamicRouteId: String?

    public var dynamicRouteType: String?

    public var modifyType: String?

    public var name: String?

    public var nextHop: String?

    public var priority: Int32?

    public var regionIds: [String]?

    public var status: String?

    public var tagIds: [String]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.applicationIds != nil {
            map["ApplicationIds"] = self.applicationIds!
        }
        if self.applicationType != nil {
            map["ApplicationType"] = self.applicationType!
        }
        if self.description_ != nil {
            map["Description"] = self.description_!
        }
        if self.dynamicRouteId != nil {
            map["DynamicRouteId"] = self.dynamicRouteId!
        }
        if self.dynamicRouteType != nil {
            map["DynamicRouteType"] = self.dynamicRouteType!
        }
        if self.modifyType != nil {
            map["ModifyType"] = self.modifyType!
        }
        if self.name != nil {
            map["Name"] = self.name!
        }
        if self.nextHop != nil {
            map["NextHop"] = self.nextHop!
        }
        if self.priority != nil {
            map["Priority"] = self.priority!
        }
        if self.regionIds != nil {
            map["RegionIds"] = self.regionIds!
        }
        if self.status != nil {
            map["Status"] = self.status!
        }
        if self.tagIds != nil {
            map["TagIds"] = self.tagIds!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ApplicationIds") {
            self.applicationIds = dict["ApplicationIds"] as! [String]
        }
        if dict.keys.contains("ApplicationType") {
            self.applicationType = dict["ApplicationType"] as! String
        }
        if dict.keys.contains("Description") {
            self.description_ = dict["Description"] as! String
        }
        if dict.keys.contains("DynamicRouteId") {
            self.dynamicRouteId = dict["DynamicRouteId"] as! String
        }
        if dict.keys.contains("DynamicRouteType") {
            self.dynamicRouteType = dict["DynamicRouteType"] as! String
        }
        if dict.keys.contains("ModifyType") {
            self.modifyType = dict["ModifyType"] as! String
        }
        if dict.keys.contains("Name") {
            self.name = dict["Name"] as! String
        }
        if dict.keys.contains("NextHop") {
            self.nextHop = dict["NextHop"] as! String
        }
        if dict.keys.contains("Priority") {
            self.priority = dict["Priority"] as! Int32
        }
        if dict.keys.contains("RegionIds") {
            self.regionIds = dict["RegionIds"] as! [String]
        }
        if dict.keys.contains("Status") {
            self.status = dict["Status"] as! String
        }
        if dict.keys.contains("TagIds") {
            self.tagIds = dict["TagIds"] as! [String]
        }
    }
}

public class UpdateDynamicRouteResponseBody : Tea.TeaModel {
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

public class UpdateDynamicRouteResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpdateDynamicRouteResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = UpdateDynamicRouteResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class UpdateExcessiveDeviceRegistrationApplicationsStatusRequest : Tea.TeaModel {
    public var applicationIds: [String]?

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
        if self.applicationIds != nil {
            map["ApplicationIds"] = self.applicationIds!
        }
        if self.status != nil {
            map["Status"] = self.status!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ApplicationIds") {
            self.applicationIds = dict["ApplicationIds"] as! [String]
        }
        if dict.keys.contains("Status") {
            self.status = dict["Status"] as! String
        }
    }
}

public class UpdateExcessiveDeviceRegistrationApplicationsStatusResponseBody : Tea.TeaModel {
    public class Applications : Tea.TeaModel {
        public var applicationId: String?

        public var createTime: String?

        public var department: String?

        public var description_: String?

        public var deviceTag: String?

        public var deviceType: String?

        public var hostname: String?

        public var isUsed: Bool?

        public var mac: String?

        public var saseUserId: String?

        public var status: String?

        public var username: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.applicationId != nil {
                map["ApplicationId"] = self.applicationId!
            }
            if self.createTime != nil {
                map["CreateTime"] = self.createTime!
            }
            if self.department != nil {
                map["Department"] = self.department!
            }
            if self.description_ != nil {
                map["Description"] = self.description_!
            }
            if self.deviceTag != nil {
                map["DeviceTag"] = self.deviceTag!
            }
            if self.deviceType != nil {
                map["DeviceType"] = self.deviceType!
            }
            if self.hostname != nil {
                map["Hostname"] = self.hostname!
            }
            if self.isUsed != nil {
                map["IsUsed"] = self.isUsed!
            }
            if self.mac != nil {
                map["Mac"] = self.mac!
            }
            if self.saseUserId != nil {
                map["SaseUserId"] = self.saseUserId!
            }
            if self.status != nil {
                map["Status"] = self.status!
            }
            if self.username != nil {
                map["Username"] = self.username!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("ApplicationId") {
                self.applicationId = dict["ApplicationId"] as! String
            }
            if dict.keys.contains("CreateTime") {
                self.createTime = dict["CreateTime"] as! String
            }
            if dict.keys.contains("Department") {
                self.department = dict["Department"] as! String
            }
            if dict.keys.contains("Description") {
                self.description_ = dict["Description"] as! String
            }
            if dict.keys.contains("DeviceTag") {
                self.deviceTag = dict["DeviceTag"] as! String
            }
            if dict.keys.contains("DeviceType") {
                self.deviceType = dict["DeviceType"] as! String
            }
            if dict.keys.contains("Hostname") {
                self.hostname = dict["Hostname"] as! String
            }
            if dict.keys.contains("IsUsed") {
                self.isUsed = dict["IsUsed"] as! Bool
            }
            if dict.keys.contains("Mac") {
                self.mac = dict["Mac"] as! String
            }
            if dict.keys.contains("SaseUserId") {
                self.saseUserId = dict["SaseUserId"] as! String
            }
            if dict.keys.contains("Status") {
                self.status = dict["Status"] as! String
            }
            if dict.keys.contains("Username") {
                self.username = dict["Username"] as! String
            }
        }
    }
    public var applications: [UpdateExcessiveDeviceRegistrationApplicationsStatusResponseBody.Applications]?

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
        if self.applications != nil {
            var tmp : [Any] = []
            for k in self.applications! {
                tmp.append(k.toMap())
            }
            map["Applications"] = tmp
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Applications") {
            var tmp : [UpdateExcessiveDeviceRegistrationApplicationsStatusResponseBody.Applications] = []
            for v in dict["Applications"] as! [Any] {
                var model = UpdateExcessiveDeviceRegistrationApplicationsStatusResponseBody.Applications()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.applications = tmp
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class UpdateExcessiveDeviceRegistrationApplicationsStatusResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpdateExcessiveDeviceRegistrationApplicationsStatusResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = UpdateExcessiveDeviceRegistrationApplicationsStatusResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class UpdateIdpDepartmentRequest : Tea.TeaModel {
    public var departmentId: String?

    public var departmentName: String?

    public var idpConfigId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.departmentId != nil {
            map["DepartmentId"] = self.departmentId!
        }
        if self.departmentName != nil {
            map["DepartmentName"] = self.departmentName!
        }
        if self.idpConfigId != nil {
            map["IdpConfigId"] = self.idpConfigId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DepartmentId") {
            self.departmentId = dict["DepartmentId"] as! String
        }
        if dict.keys.contains("DepartmentName") {
            self.departmentName = dict["DepartmentName"] as! String
        }
        if dict.keys.contains("IdpConfigId") {
            self.idpConfigId = dict["IdpConfigId"] as! String
        }
    }
}

public class UpdateIdpDepartmentResponseBody : Tea.TeaModel {
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

public class UpdateIdpDepartmentResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpdateIdpDepartmentResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = UpdateIdpDepartmentResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class UpdateNacUserCertStatusRequest : Tea.TeaModel {
    public class IdList : Tea.TeaModel {
        public var devTag: String?

        public var userId: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.devTag != nil {
                map["DevTag"] = self.devTag!
            }
            if self.userId != nil {
                map["UserId"] = self.userId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("DevTag") {
                self.devTag = dict["DevTag"] as! String
            }
            if dict.keys.contains("UserId") {
                self.userId = dict["UserId"] as! String
            }
        }
    }
    public var idList: [UpdateNacUserCertStatusRequest.IdList]?

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
        if self.idList != nil {
            var tmp : [Any] = []
            for k in self.idList! {
                tmp.append(k.toMap())
            }
            map["IdList"] = tmp
        }
        if self.status != nil {
            map["Status"] = self.status!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("IdList") {
            var tmp : [UpdateNacUserCertStatusRequest.IdList] = []
            for v in dict["IdList"] as! [Any] {
                var model = UpdateNacUserCertStatusRequest.IdList()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.idList = tmp
        }
        if dict.keys.contains("Status") {
            self.status = dict["Status"] as! String
        }
    }
}

public class UpdateNacUserCertStatusResponseBody : Tea.TeaModel {
    public var code: String?

    public var message: String?

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
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
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
    }
}

public class UpdateNacUserCertStatusResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpdateNacUserCertStatusResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = UpdateNacUserCertStatusResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class UpdatePrivateAccessApplicationRequest : Tea.TeaModel {
    public class PortRanges : Tea.TeaModel {
        public var begin: Int32?

        public var end: Int32?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.begin != nil {
                map["Begin"] = self.begin!
            }
            if self.end != nil {
                map["End"] = self.end!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Begin") {
                self.begin = dict["Begin"] as! Int32
            }
            if dict.keys.contains("End") {
                self.end = dict["End"] as! Int32
            }
        }
    }
    public var addresses: [String]?

    public var applicationId: String?

    public var description_: String?

    public var l7ProxyDomainAutomaticPrefix: String?

    public var l7ProxyDomainCustom: String?

    public var l7ProxyDomainPrivate: String?

    public var modifyType: String?

    public var portRanges: [UpdatePrivateAccessApplicationRequest.PortRanges]?

    public var protocol_: String?

    public var status: String?

    public var tagIds: [String]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.addresses != nil {
            map["Addresses"] = self.addresses!
        }
        if self.applicationId != nil {
            map["ApplicationId"] = self.applicationId!
        }
        if self.description_ != nil {
            map["Description"] = self.description_!
        }
        if self.l7ProxyDomainAutomaticPrefix != nil {
            map["L7ProxyDomainAutomaticPrefix"] = self.l7ProxyDomainAutomaticPrefix!
        }
        if self.l7ProxyDomainCustom != nil {
            map["L7ProxyDomainCustom"] = self.l7ProxyDomainCustom!
        }
        if self.l7ProxyDomainPrivate != nil {
            map["L7ProxyDomainPrivate"] = self.l7ProxyDomainPrivate!
        }
        if self.modifyType != nil {
            map["ModifyType"] = self.modifyType!
        }
        if self.portRanges != nil {
            var tmp : [Any] = []
            for k in self.portRanges! {
                tmp.append(k.toMap())
            }
            map["PortRanges"] = tmp
        }
        if self.protocol_ != nil {
            map["Protocol"] = self.protocol_!
        }
        if self.status != nil {
            map["Status"] = self.status!
        }
        if self.tagIds != nil {
            map["TagIds"] = self.tagIds!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Addresses") {
            self.addresses = dict["Addresses"] as! [String]
        }
        if dict.keys.contains("ApplicationId") {
            self.applicationId = dict["ApplicationId"] as! String
        }
        if dict.keys.contains("Description") {
            self.description_ = dict["Description"] as! String
        }
        if dict.keys.contains("L7ProxyDomainAutomaticPrefix") {
            self.l7ProxyDomainAutomaticPrefix = dict["L7ProxyDomainAutomaticPrefix"] as! String
        }
        if dict.keys.contains("L7ProxyDomainCustom") {
            self.l7ProxyDomainCustom = dict["L7ProxyDomainCustom"] as! String
        }
        if dict.keys.contains("L7ProxyDomainPrivate") {
            self.l7ProxyDomainPrivate = dict["L7ProxyDomainPrivate"] as! String
        }
        if dict.keys.contains("ModifyType") {
            self.modifyType = dict["ModifyType"] as! String
        }
        if dict.keys.contains("PortRanges") {
            var tmp : [UpdatePrivateAccessApplicationRequest.PortRanges] = []
            for v in dict["PortRanges"] as! [Any] {
                var model = UpdatePrivateAccessApplicationRequest.PortRanges()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.portRanges = tmp
        }
        if dict.keys.contains("Protocol") {
            self.protocol_ = dict["Protocol"] as! String
        }
        if dict.keys.contains("Status") {
            self.status = dict["Status"] as! String
        }
        if dict.keys.contains("TagIds") {
            self.tagIds = dict["TagIds"] as! [String]
        }
    }
}

public class UpdatePrivateAccessApplicationResponseBody : Tea.TeaModel {
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

public class UpdatePrivateAccessApplicationResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpdatePrivateAccessApplicationResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = UpdatePrivateAccessApplicationResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class UpdatePrivateAccessPolicyRequest : Tea.TeaModel {
    public class CustomUserAttributes : Tea.TeaModel {
        public var idpId: Int32?

        public var relation: String?

        public var userGroupType: String?

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
            if self.idpId != nil {
                map["IdpId"] = self.idpId!
            }
            if self.relation != nil {
                map["Relation"] = self.relation!
            }
            if self.userGroupType != nil {
                map["UserGroupType"] = self.userGroupType!
            }
            if self.value != nil {
                map["Value"] = self.value!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("IdpId") {
                self.idpId = dict["IdpId"] as! Int32
            }
            if dict.keys.contains("Relation") {
                self.relation = dict["Relation"] as! String
            }
            if dict.keys.contains("UserGroupType") {
                self.userGroupType = dict["UserGroupType"] as! String
            }
            if dict.keys.contains("Value") {
                self.value = dict["Value"] as! String
            }
        }
    }
    public var applicationIds: [String]?

    public var applicationType: String?

    public var customUserAttributes: [UpdatePrivateAccessPolicyRequest.CustomUserAttributes]?

    public var description_: String?

    public var deviceAttributeAction: String?

    public var deviceAttributeId: String?

    public var modifyType: String?

    public var policyAction: String?

    public var policyId: String?

    public var priority: Int32?

    public var status: String?

    public var tagIds: [String]?

    public var userGroupIds: [String]?

    public var userGroupMode: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.applicationIds != nil {
            map["ApplicationIds"] = self.applicationIds!
        }
        if self.applicationType != nil {
            map["ApplicationType"] = self.applicationType!
        }
        if self.customUserAttributes != nil {
            var tmp : [Any] = []
            for k in self.customUserAttributes! {
                tmp.append(k.toMap())
            }
            map["CustomUserAttributes"] = tmp
        }
        if self.description_ != nil {
            map["Description"] = self.description_!
        }
        if self.deviceAttributeAction != nil {
            map["DeviceAttributeAction"] = self.deviceAttributeAction!
        }
        if self.deviceAttributeId != nil {
            map["DeviceAttributeId"] = self.deviceAttributeId!
        }
        if self.modifyType != nil {
            map["ModifyType"] = self.modifyType!
        }
        if self.policyAction != nil {
            map["PolicyAction"] = self.policyAction!
        }
        if self.policyId != nil {
            map["PolicyId"] = self.policyId!
        }
        if self.priority != nil {
            map["Priority"] = self.priority!
        }
        if self.status != nil {
            map["Status"] = self.status!
        }
        if self.tagIds != nil {
            map["TagIds"] = self.tagIds!
        }
        if self.userGroupIds != nil {
            map["UserGroupIds"] = self.userGroupIds!
        }
        if self.userGroupMode != nil {
            map["UserGroupMode"] = self.userGroupMode!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ApplicationIds") {
            self.applicationIds = dict["ApplicationIds"] as! [String]
        }
        if dict.keys.contains("ApplicationType") {
            self.applicationType = dict["ApplicationType"] as! String
        }
        if dict.keys.contains("CustomUserAttributes") {
            var tmp : [UpdatePrivateAccessPolicyRequest.CustomUserAttributes] = []
            for v in dict["CustomUserAttributes"] as! [Any] {
                var model = UpdatePrivateAccessPolicyRequest.CustomUserAttributes()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.customUserAttributes = tmp
        }
        if dict.keys.contains("Description") {
            self.description_ = dict["Description"] as! String
        }
        if dict.keys.contains("DeviceAttributeAction") {
            self.deviceAttributeAction = dict["DeviceAttributeAction"] as! String
        }
        if dict.keys.contains("DeviceAttributeId") {
            self.deviceAttributeId = dict["DeviceAttributeId"] as! String
        }
        if dict.keys.contains("ModifyType") {
            self.modifyType = dict["ModifyType"] as! String
        }
        if dict.keys.contains("PolicyAction") {
            self.policyAction = dict["PolicyAction"] as! String
        }
        if dict.keys.contains("PolicyId") {
            self.policyId = dict["PolicyId"] as! String
        }
        if dict.keys.contains("Priority") {
            self.priority = dict["Priority"] as! Int32
        }
        if dict.keys.contains("Status") {
            self.status = dict["Status"] as! String
        }
        if dict.keys.contains("TagIds") {
            self.tagIds = dict["TagIds"] as! [String]
        }
        if dict.keys.contains("UserGroupIds") {
            self.userGroupIds = dict["UserGroupIds"] as! [String]
        }
        if dict.keys.contains("UserGroupMode") {
            self.userGroupMode = dict["UserGroupMode"] as! String
        }
    }
}

public class UpdatePrivateAccessPolicyResponseBody : Tea.TeaModel {
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

public class UpdatePrivateAccessPolicyResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpdatePrivateAccessPolicyResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = UpdatePrivateAccessPolicyResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class UpdateRegistrationPolicyRequest : Tea.TeaModel {
    public class CompanyLimitCount : Tea.TeaModel {
        public var all: Int32?

        public var mobile: Int32?

        public var PC: Int32?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.all != nil {
                map["All"] = self.all!
            }
            if self.mobile != nil {
                map["Mobile"] = self.mobile!
            }
            if self.PC != nil {
                map["PC"] = self.PC!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("All") {
                self.all = dict["All"] as! Int32
            }
            if dict.keys.contains("Mobile") {
                self.mobile = dict["Mobile"] as! Int32
            }
            if dict.keys.contains("PC") {
                self.PC = dict["PC"] as! Int32
            }
        }
    }
    public class PersonalLimitCount : Tea.TeaModel {
        public var all: Int32?

        public var mobile: Int32?

        public var PC: Int32?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.all != nil {
                map["All"] = self.all!
            }
            if self.mobile != nil {
                map["Mobile"] = self.mobile!
            }
            if self.PC != nil {
                map["PC"] = self.PC!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("All") {
                self.all = dict["All"] as! Int32
            }
            if dict.keys.contains("Mobile") {
                self.mobile = dict["Mobile"] as! Int32
            }
            if dict.keys.contains("PC") {
                self.PC = dict["PC"] as! Int32
            }
        }
    }
    public var companyLimitCount: UpdateRegistrationPolicyRequest.CompanyLimitCount?

    public var companyLimitType: String?

    public var description_: String?

    public var matchMode: String?

    public var name: String?

    public var personalLimitCount: UpdateRegistrationPolicyRequest.PersonalLimitCount?

    public var personalLimitType: String?

    public var policyId: String?

    public var priority: Int64?

    public var status: String?

    public var userGroupIds: [String]?

    public var whitelist: [String]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.companyLimitCount?.validate()
        try self.personalLimitCount?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.companyLimitCount != nil {
            map["CompanyLimitCount"] = self.companyLimitCount?.toMap()
        }
        if self.companyLimitType != nil {
            map["CompanyLimitType"] = self.companyLimitType!
        }
        if self.description_ != nil {
            map["Description"] = self.description_!
        }
        if self.matchMode != nil {
            map["MatchMode"] = self.matchMode!
        }
        if self.name != nil {
            map["Name"] = self.name!
        }
        if self.personalLimitCount != nil {
            map["PersonalLimitCount"] = self.personalLimitCount?.toMap()
        }
        if self.personalLimitType != nil {
            map["PersonalLimitType"] = self.personalLimitType!
        }
        if self.policyId != nil {
            map["PolicyId"] = self.policyId!
        }
        if self.priority != nil {
            map["Priority"] = self.priority!
        }
        if self.status != nil {
            map["Status"] = self.status!
        }
        if self.userGroupIds != nil {
            map["UserGroupIds"] = self.userGroupIds!
        }
        if self.whitelist != nil {
            map["Whitelist"] = self.whitelist!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("CompanyLimitCount") {
            var model = UpdateRegistrationPolicyRequest.CompanyLimitCount()
            model.fromMap(dict["CompanyLimitCount"] as! [String: Any])
            self.companyLimitCount = model
        }
        if dict.keys.contains("CompanyLimitType") {
            self.companyLimitType = dict["CompanyLimitType"] as! String
        }
        if dict.keys.contains("Description") {
            self.description_ = dict["Description"] as! String
        }
        if dict.keys.contains("MatchMode") {
            self.matchMode = dict["MatchMode"] as! String
        }
        if dict.keys.contains("Name") {
            self.name = dict["Name"] as! String
        }
        if dict.keys.contains("PersonalLimitCount") {
            var model = UpdateRegistrationPolicyRequest.PersonalLimitCount()
            model.fromMap(dict["PersonalLimitCount"] as! [String: Any])
            self.personalLimitCount = model
        }
        if dict.keys.contains("PersonalLimitType") {
            self.personalLimitType = dict["PersonalLimitType"] as! String
        }
        if dict.keys.contains("PolicyId") {
            self.policyId = dict["PolicyId"] as! String
        }
        if dict.keys.contains("Priority") {
            self.priority = dict["Priority"] as! Int64
        }
        if dict.keys.contains("Status") {
            self.status = dict["Status"] as! String
        }
        if dict.keys.contains("UserGroupIds") {
            self.userGroupIds = dict["UserGroupIds"] as! [String]
        }
        if dict.keys.contains("Whitelist") {
            self.whitelist = dict["Whitelist"] as! [String]
        }
    }
}

public class UpdateRegistrationPolicyShrinkRequest : Tea.TeaModel {
    public var companyLimitCountShrink: String?

    public var companyLimitType: String?

    public var description_: String?

    public var matchMode: String?

    public var name: String?

    public var personalLimitCountShrink: String?

    public var personalLimitType: String?

    public var policyId: String?

    public var priority: Int64?

    public var status: String?

    public var userGroupIds: [String]?

    public var whitelist: [String]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.companyLimitCountShrink != nil {
            map["CompanyLimitCount"] = self.companyLimitCountShrink!
        }
        if self.companyLimitType != nil {
            map["CompanyLimitType"] = self.companyLimitType!
        }
        if self.description_ != nil {
            map["Description"] = self.description_!
        }
        if self.matchMode != nil {
            map["MatchMode"] = self.matchMode!
        }
        if self.name != nil {
            map["Name"] = self.name!
        }
        if self.personalLimitCountShrink != nil {
            map["PersonalLimitCount"] = self.personalLimitCountShrink!
        }
        if self.personalLimitType != nil {
            map["PersonalLimitType"] = self.personalLimitType!
        }
        if self.policyId != nil {
            map["PolicyId"] = self.policyId!
        }
        if self.priority != nil {
            map["Priority"] = self.priority!
        }
        if self.status != nil {
            map["Status"] = self.status!
        }
        if self.userGroupIds != nil {
            map["UserGroupIds"] = self.userGroupIds!
        }
        if self.whitelist != nil {
            map["Whitelist"] = self.whitelist!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("CompanyLimitCount") {
            self.companyLimitCountShrink = dict["CompanyLimitCount"] as! String
        }
        if dict.keys.contains("CompanyLimitType") {
            self.companyLimitType = dict["CompanyLimitType"] as! String
        }
        if dict.keys.contains("Description") {
            self.description_ = dict["Description"] as! String
        }
        if dict.keys.contains("MatchMode") {
            self.matchMode = dict["MatchMode"] as! String
        }
        if dict.keys.contains("Name") {
            self.name = dict["Name"] as! String
        }
        if dict.keys.contains("PersonalLimitCount") {
            self.personalLimitCountShrink = dict["PersonalLimitCount"] as! String
        }
        if dict.keys.contains("PersonalLimitType") {
            self.personalLimitType = dict["PersonalLimitType"] as! String
        }
        if dict.keys.contains("PolicyId") {
            self.policyId = dict["PolicyId"] as! String
        }
        if dict.keys.contains("Priority") {
            self.priority = dict["Priority"] as! Int64
        }
        if dict.keys.contains("Status") {
            self.status = dict["Status"] as! String
        }
        if dict.keys.contains("UserGroupIds") {
            self.userGroupIds = dict["UserGroupIds"] as! [String]
        }
        if dict.keys.contains("Whitelist") {
            self.whitelist = dict["Whitelist"] as! [String]
        }
    }
}

public class UpdateRegistrationPolicyResponseBody : Tea.TeaModel {
    public class Policy : Tea.TeaModel {
        public class LimitDetail : Tea.TeaModel {
            public class LimitCount : Tea.TeaModel {
                public var all: Int32?

                public var mobile: Int32?

                public var PC: Int32?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.all != nil {
                        map["All"] = self.all!
                    }
                    if self.mobile != nil {
                        map["Mobile"] = self.mobile!
                    }
                    if self.PC != nil {
                        map["PC"] = self.PC!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("All") {
                        self.all = dict["All"] as! Int32
                    }
                    if dict.keys.contains("Mobile") {
                        self.mobile = dict["Mobile"] as! Int32
                    }
                    if dict.keys.contains("PC") {
                        self.PC = dict["PC"] as! Int32
                    }
                }
            }
            public var deviceBelong: String?

            public var limitCount: UpdateRegistrationPolicyResponseBody.Policy.LimitDetail.LimitCount?

            public var limitType: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
                try self.limitCount?.validate()
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.deviceBelong != nil {
                    map["DeviceBelong"] = self.deviceBelong!
                }
                if self.limitCount != nil {
                    map["LimitCount"] = self.limitCount?.toMap()
                }
                if self.limitType != nil {
                    map["LimitType"] = self.limitType!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("DeviceBelong") {
                    self.deviceBelong = dict["DeviceBelong"] as! String
                }
                if dict.keys.contains("LimitCount") {
                    var model = UpdateRegistrationPolicyResponseBody.Policy.LimitDetail.LimitCount()
                    model.fromMap(dict["LimitCount"] as! [String: Any])
                    self.limitCount = model
                }
                if dict.keys.contains("LimitType") {
                    self.limitType = dict["LimitType"] as! String
                }
            }
        }
        public var createTime: String?

        public var description_: String?

        public var limitDetail: [UpdateRegistrationPolicyResponseBody.Policy.LimitDetail]?

        public var matchMode: String?

        public var name: String?

        public var policyId: String?

        public var priority: String?

        public var status: String?

        public var userGroupIds: [String]?

        public var whitelist: [String]?

        public override init() {
            super.init()
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
            if self.description_ != nil {
                map["Description"] = self.description_!
            }
            if self.limitDetail != nil {
                var tmp : [Any] = []
                for k in self.limitDetail! {
                    tmp.append(k.toMap())
                }
                map["LimitDetail"] = tmp
            }
            if self.matchMode != nil {
                map["MatchMode"] = self.matchMode!
            }
            if self.name != nil {
                map["Name"] = self.name!
            }
            if self.policyId != nil {
                map["PolicyId"] = self.policyId!
            }
            if self.priority != nil {
                map["Priority"] = self.priority!
            }
            if self.status != nil {
                map["Status"] = self.status!
            }
            if self.userGroupIds != nil {
                map["UserGroupIds"] = self.userGroupIds!
            }
            if self.whitelist != nil {
                map["Whitelist"] = self.whitelist!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("CreateTime") {
                self.createTime = dict["CreateTime"] as! String
            }
            if dict.keys.contains("Description") {
                self.description_ = dict["Description"] as! String
            }
            if dict.keys.contains("LimitDetail") {
                var tmp : [UpdateRegistrationPolicyResponseBody.Policy.LimitDetail] = []
                for v in dict["LimitDetail"] as! [Any] {
                    var model = UpdateRegistrationPolicyResponseBody.Policy.LimitDetail()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.limitDetail = tmp
            }
            if dict.keys.contains("MatchMode") {
                self.matchMode = dict["MatchMode"] as! String
            }
            if dict.keys.contains("Name") {
                self.name = dict["Name"] as! String
            }
            if dict.keys.contains("PolicyId") {
                self.policyId = dict["PolicyId"] as! String
            }
            if dict.keys.contains("Priority") {
                self.priority = dict["Priority"] as! String
            }
            if dict.keys.contains("Status") {
                self.status = dict["Status"] as! String
            }
            if dict.keys.contains("UserGroupIds") {
                self.userGroupIds = dict["UserGroupIds"] as! [String]
            }
            if dict.keys.contains("Whitelist") {
                self.whitelist = dict["Whitelist"] as! [String]
            }
        }
    }
    public var policy: UpdateRegistrationPolicyResponseBody.Policy?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.policy?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.policy != nil {
            map["Policy"] = self.policy?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Policy") {
            var model = UpdateRegistrationPolicyResponseBody.Policy()
            model.fromMap(dict["Policy"] as! [String: Any])
            self.policy = model
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class UpdateRegistrationPolicyResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpdateRegistrationPolicyResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = UpdateRegistrationPolicyResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class UpdateUninstallApplicationsStatusRequest : Tea.TeaModel {
    public var applicationIds: [String]?

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
        if self.applicationIds != nil {
            map["ApplicationIds"] = self.applicationIds!
        }
        if self.status != nil {
            map["Status"] = self.status!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ApplicationIds") {
            self.applicationIds = dict["ApplicationIds"] as! [String]
        }
        if dict.keys.contains("Status") {
            self.status = dict["Status"] as! String
        }
    }
}

public class UpdateUninstallApplicationsStatusResponseBody : Tea.TeaModel {
    public class Applications : Tea.TeaModel {
        public var applicationId: String?

        public var createTime: String?

        public var department: String?

        public var devTag: String?

        public var devType: String?

        public var hostname: String?

        public var idpName: String?

        public var isUninstall: Bool?

        public var mac: String?

        public var reason: String?

        public var saseUserId: String?

        public var status: String?

        public var username: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.applicationId != nil {
                map["ApplicationId"] = self.applicationId!
            }
            if self.createTime != nil {
                map["CreateTime"] = self.createTime!
            }
            if self.department != nil {
                map["Department"] = self.department!
            }
            if self.devTag != nil {
                map["DevTag"] = self.devTag!
            }
            if self.devType != nil {
                map["DevType"] = self.devType!
            }
            if self.hostname != nil {
                map["Hostname"] = self.hostname!
            }
            if self.idpName != nil {
                map["IdpName"] = self.idpName!
            }
            if self.isUninstall != nil {
                map["IsUninstall"] = self.isUninstall!
            }
            if self.mac != nil {
                map["Mac"] = self.mac!
            }
            if self.reason != nil {
                map["Reason"] = self.reason!
            }
            if self.saseUserId != nil {
                map["SaseUserId"] = self.saseUserId!
            }
            if self.status != nil {
                map["Status"] = self.status!
            }
            if self.username != nil {
                map["Username"] = self.username!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("ApplicationId") {
                self.applicationId = dict["ApplicationId"] as! String
            }
            if dict.keys.contains("CreateTime") {
                self.createTime = dict["CreateTime"] as! String
            }
            if dict.keys.contains("Department") {
                self.department = dict["Department"] as! String
            }
            if dict.keys.contains("DevTag") {
                self.devTag = dict["DevTag"] as! String
            }
            if dict.keys.contains("DevType") {
                self.devType = dict["DevType"] as! String
            }
            if dict.keys.contains("Hostname") {
                self.hostname = dict["Hostname"] as! String
            }
            if dict.keys.contains("IdpName") {
                self.idpName = dict["IdpName"] as! String
            }
            if dict.keys.contains("IsUninstall") {
                self.isUninstall = dict["IsUninstall"] as! Bool
            }
            if dict.keys.contains("Mac") {
                self.mac = dict["Mac"] as! String
            }
            if dict.keys.contains("Reason") {
                self.reason = dict["Reason"] as! String
            }
            if dict.keys.contains("SaseUserId") {
                self.saseUserId = dict["SaseUserId"] as! String
            }
            if dict.keys.contains("Status") {
                self.status = dict["Status"] as! String
            }
            if dict.keys.contains("Username") {
                self.username = dict["Username"] as! String
            }
        }
    }
    public var applications: [UpdateUninstallApplicationsStatusResponseBody.Applications]?

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
        if self.applications != nil {
            var tmp : [Any] = []
            for k in self.applications! {
                tmp.append(k.toMap())
            }
            map["Applications"] = tmp
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Applications") {
            var tmp : [UpdateUninstallApplicationsStatusResponseBody.Applications] = []
            for v in dict["Applications"] as! [Any] {
                var model = UpdateUninstallApplicationsStatusResponseBody.Applications()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.applications = tmp
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class UpdateUninstallApplicationsStatusResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpdateUninstallApplicationsStatusResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = UpdateUninstallApplicationsStatusResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class UpdateUserDevicesSharingStatusRequest : Tea.TeaModel {
    public var deviceTags: [String]?

    public var sharingStatus: Bool?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.deviceTags != nil {
            map["DeviceTags"] = self.deviceTags!
        }
        if self.sharingStatus != nil {
            map["SharingStatus"] = self.sharingStatus!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DeviceTags") {
            self.deviceTags = dict["DeviceTags"] as! [String]
        }
        if dict.keys.contains("SharingStatus") {
            self.sharingStatus = dict["SharingStatus"] as! Bool
        }
    }
}

public class UpdateUserDevicesSharingStatusResponseBody : Tea.TeaModel {
    public class Devices : Tea.TeaModel {
        public class NetInterfaceInfo : Tea.TeaModel {
            public var mac: String?

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
                if self.mac != nil {
                    map["Mac"] = self.mac!
                }
                if self.name != nil {
                    map["Name"] = self.name!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("Mac") {
                    self.mac = dict["Mac"] as! String
                }
                if dict.keys.contains("Name") {
                    self.name = dict["Name"] as! String
                }
            }
        }
        public var appStatus: String?

        public var appVersion: String?

        public var CPU: String?

        public var createTime: String?

        public var department: String?

        public var deviceBelong: String?

        public var deviceModel: String?

        public var deviceStatus: String?

        public var deviceTag: String?

        public var deviceType: String?

        public var deviceVersion: String?

        public var disk: String?

        public var dlpStatus: String?

        public var hostname: String?

        public var iaStatus: String?

        public var innerIP: String?

        public var mac: String?

        public var memory: String?

        public var nacStatus: String?

        public var netInterfaceInfo: [UpdateUserDevicesSharingStatusResponseBody.Devices.NetInterfaceInfo]?

        public var paStatus: String?

        public var saseUserId: String?

        public var sharingStatus: Bool?

        public var srcIP: String?

        public var updateTime: String?

        public var username: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.appStatus != nil {
                map["AppStatus"] = self.appStatus!
            }
            if self.appVersion != nil {
                map["AppVersion"] = self.appVersion!
            }
            if self.CPU != nil {
                map["CPU"] = self.CPU!
            }
            if self.createTime != nil {
                map["CreateTime"] = self.createTime!
            }
            if self.department != nil {
                map["Department"] = self.department!
            }
            if self.deviceBelong != nil {
                map["DeviceBelong"] = self.deviceBelong!
            }
            if self.deviceModel != nil {
                map["DeviceModel"] = self.deviceModel!
            }
            if self.deviceStatus != nil {
                map["DeviceStatus"] = self.deviceStatus!
            }
            if self.deviceTag != nil {
                map["DeviceTag"] = self.deviceTag!
            }
            if self.deviceType != nil {
                map["DeviceType"] = self.deviceType!
            }
            if self.deviceVersion != nil {
                map["DeviceVersion"] = self.deviceVersion!
            }
            if self.disk != nil {
                map["Disk"] = self.disk!
            }
            if self.dlpStatus != nil {
                map["DlpStatus"] = self.dlpStatus!
            }
            if self.hostname != nil {
                map["Hostname"] = self.hostname!
            }
            if self.iaStatus != nil {
                map["IaStatus"] = self.iaStatus!
            }
            if self.innerIP != nil {
                map["InnerIP"] = self.innerIP!
            }
            if self.mac != nil {
                map["Mac"] = self.mac!
            }
            if self.memory != nil {
                map["Memory"] = self.memory!
            }
            if self.nacStatus != nil {
                map["NacStatus"] = self.nacStatus!
            }
            if self.netInterfaceInfo != nil {
                var tmp : [Any] = []
                for k in self.netInterfaceInfo! {
                    tmp.append(k.toMap())
                }
                map["NetInterfaceInfo"] = tmp
            }
            if self.paStatus != nil {
                map["PaStatus"] = self.paStatus!
            }
            if self.saseUserId != nil {
                map["SaseUserId"] = self.saseUserId!
            }
            if self.sharingStatus != nil {
                map["SharingStatus"] = self.sharingStatus!
            }
            if self.srcIP != nil {
                map["SrcIP"] = self.srcIP!
            }
            if self.updateTime != nil {
                map["UpdateTime"] = self.updateTime!
            }
            if self.username != nil {
                map["Username"] = self.username!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("AppStatus") {
                self.appStatus = dict["AppStatus"] as! String
            }
            if dict.keys.contains("AppVersion") {
                self.appVersion = dict["AppVersion"] as! String
            }
            if dict.keys.contains("CPU") {
                self.CPU = dict["CPU"] as! String
            }
            if dict.keys.contains("CreateTime") {
                self.createTime = dict["CreateTime"] as! String
            }
            if dict.keys.contains("Department") {
                self.department = dict["Department"] as! String
            }
            if dict.keys.contains("DeviceBelong") {
                self.deviceBelong = dict["DeviceBelong"] as! String
            }
            if dict.keys.contains("DeviceModel") {
                self.deviceModel = dict["DeviceModel"] as! String
            }
            if dict.keys.contains("DeviceStatus") {
                self.deviceStatus = dict["DeviceStatus"] as! String
            }
            if dict.keys.contains("DeviceTag") {
                self.deviceTag = dict["DeviceTag"] as! String
            }
            if dict.keys.contains("DeviceType") {
                self.deviceType = dict["DeviceType"] as! String
            }
            if dict.keys.contains("DeviceVersion") {
                self.deviceVersion = dict["DeviceVersion"] as! String
            }
            if dict.keys.contains("Disk") {
                self.disk = dict["Disk"] as! String
            }
            if dict.keys.contains("DlpStatus") {
                self.dlpStatus = dict["DlpStatus"] as! String
            }
            if dict.keys.contains("Hostname") {
                self.hostname = dict["Hostname"] as! String
            }
            if dict.keys.contains("IaStatus") {
                self.iaStatus = dict["IaStatus"] as! String
            }
            if dict.keys.contains("InnerIP") {
                self.innerIP = dict["InnerIP"] as! String
            }
            if dict.keys.contains("Mac") {
                self.mac = dict["Mac"] as! String
            }
            if dict.keys.contains("Memory") {
                self.memory = dict["Memory"] as! String
            }
            if dict.keys.contains("NacStatus") {
                self.nacStatus = dict["NacStatus"] as! String
            }
            if dict.keys.contains("NetInterfaceInfo") {
                var tmp : [UpdateUserDevicesSharingStatusResponseBody.Devices.NetInterfaceInfo] = []
                for v in dict["NetInterfaceInfo"] as! [Any] {
                    var model = UpdateUserDevicesSharingStatusResponseBody.Devices.NetInterfaceInfo()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.netInterfaceInfo = tmp
            }
            if dict.keys.contains("PaStatus") {
                self.paStatus = dict["PaStatus"] as! String
            }
            if dict.keys.contains("SaseUserId") {
                self.saseUserId = dict["SaseUserId"] as! String
            }
            if dict.keys.contains("SharingStatus") {
                self.sharingStatus = dict["SharingStatus"] as! Bool
            }
            if dict.keys.contains("SrcIP") {
                self.srcIP = dict["SrcIP"] as! String
            }
            if dict.keys.contains("UpdateTime") {
                self.updateTime = dict["UpdateTime"] as! String
            }
            if dict.keys.contains("Username") {
                self.username = dict["Username"] as! String
            }
        }
    }
    public var devices: [UpdateUserDevicesSharingStatusResponseBody.Devices]?

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
        if self.devices != nil {
            var tmp : [Any] = []
            for k in self.devices! {
                tmp.append(k.toMap())
            }
            map["Devices"] = tmp
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Devices") {
            var tmp : [UpdateUserDevicesSharingStatusResponseBody.Devices] = []
            for v in dict["Devices"] as! [Any] {
                var model = UpdateUserDevicesSharingStatusResponseBody.Devices()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.devices = tmp
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class UpdateUserDevicesSharingStatusResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpdateUserDevicesSharingStatusResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = UpdateUserDevicesSharingStatusResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class UpdateUserDevicesStatusRequest : Tea.TeaModel {
    public var deviceAction: String?

    public var deviceTags: [String]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.deviceAction != nil {
            map["DeviceAction"] = self.deviceAction!
        }
        if self.deviceTags != nil {
            map["DeviceTags"] = self.deviceTags!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DeviceAction") {
            self.deviceAction = dict["DeviceAction"] as! String
        }
        if dict.keys.contains("DeviceTags") {
            self.deviceTags = dict["DeviceTags"] as! [String]
        }
    }
}

public class UpdateUserDevicesStatusResponseBody : Tea.TeaModel {
    public class Devices : Tea.TeaModel {
        public class NetInterfaceInfo : Tea.TeaModel {
            public var mac: String?

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
                if self.mac != nil {
                    map["Mac"] = self.mac!
                }
                if self.name != nil {
                    map["Name"] = self.name!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("Mac") {
                    self.mac = dict["Mac"] as! String
                }
                if dict.keys.contains("Name") {
                    self.name = dict["Name"] as! String
                }
            }
        }
        public var appStatus: String?

        public var appVersion: String?

        public var CPU: String?

        public var createTime: String?

        public var department: String?

        public var deviceBelong: String?

        public var deviceModel: String?

        public var deviceStatus: String?

        public var deviceTag: String?

        public var deviceType: String?

        public var deviceVersion: String?

        public var disk: String?

        public var dlpStatus: String?

        public var hostname: String?

        public var iaStatus: String?

        public var innerIP: String?

        public var mac: String?

        public var memory: String?

        public var nacStatus: String?

        public var netInterfaceInfo: [UpdateUserDevicesStatusResponseBody.Devices.NetInterfaceInfo]?

        public var paStatus: String?

        public var saseUserId: String?

        public var sharingStatus: Bool?

        public var srcIP: String?

        public var updateTime: String?

        public var username: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.appStatus != nil {
                map["AppStatus"] = self.appStatus!
            }
            if self.appVersion != nil {
                map["AppVersion"] = self.appVersion!
            }
            if self.CPU != nil {
                map["CPU"] = self.CPU!
            }
            if self.createTime != nil {
                map["CreateTime"] = self.createTime!
            }
            if self.department != nil {
                map["Department"] = self.department!
            }
            if self.deviceBelong != nil {
                map["DeviceBelong"] = self.deviceBelong!
            }
            if self.deviceModel != nil {
                map["DeviceModel"] = self.deviceModel!
            }
            if self.deviceStatus != nil {
                map["DeviceStatus"] = self.deviceStatus!
            }
            if self.deviceTag != nil {
                map["DeviceTag"] = self.deviceTag!
            }
            if self.deviceType != nil {
                map["DeviceType"] = self.deviceType!
            }
            if self.deviceVersion != nil {
                map["DeviceVersion"] = self.deviceVersion!
            }
            if self.disk != nil {
                map["Disk"] = self.disk!
            }
            if self.dlpStatus != nil {
                map["DlpStatus"] = self.dlpStatus!
            }
            if self.hostname != nil {
                map["Hostname"] = self.hostname!
            }
            if self.iaStatus != nil {
                map["IaStatus"] = self.iaStatus!
            }
            if self.innerIP != nil {
                map["InnerIP"] = self.innerIP!
            }
            if self.mac != nil {
                map["Mac"] = self.mac!
            }
            if self.memory != nil {
                map["Memory"] = self.memory!
            }
            if self.nacStatus != nil {
                map["NacStatus"] = self.nacStatus!
            }
            if self.netInterfaceInfo != nil {
                var tmp : [Any] = []
                for k in self.netInterfaceInfo! {
                    tmp.append(k.toMap())
                }
                map["NetInterfaceInfo"] = tmp
            }
            if self.paStatus != nil {
                map["PaStatus"] = self.paStatus!
            }
            if self.saseUserId != nil {
                map["SaseUserId"] = self.saseUserId!
            }
            if self.sharingStatus != nil {
                map["SharingStatus"] = self.sharingStatus!
            }
            if self.srcIP != nil {
                map["SrcIP"] = self.srcIP!
            }
            if self.updateTime != nil {
                map["UpdateTime"] = self.updateTime!
            }
            if self.username != nil {
                map["Username"] = self.username!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("AppStatus") {
                self.appStatus = dict["AppStatus"] as! String
            }
            if dict.keys.contains("AppVersion") {
                self.appVersion = dict["AppVersion"] as! String
            }
            if dict.keys.contains("CPU") {
                self.CPU = dict["CPU"] as! String
            }
            if dict.keys.contains("CreateTime") {
                self.createTime = dict["CreateTime"] as! String
            }
            if dict.keys.contains("Department") {
                self.department = dict["Department"] as! String
            }
            if dict.keys.contains("DeviceBelong") {
                self.deviceBelong = dict["DeviceBelong"] as! String
            }
            if dict.keys.contains("DeviceModel") {
                self.deviceModel = dict["DeviceModel"] as! String
            }
            if dict.keys.contains("DeviceStatus") {
                self.deviceStatus = dict["DeviceStatus"] as! String
            }
            if dict.keys.contains("DeviceTag") {
                self.deviceTag = dict["DeviceTag"] as! String
            }
            if dict.keys.contains("DeviceType") {
                self.deviceType = dict["DeviceType"] as! String
            }
            if dict.keys.contains("DeviceVersion") {
                self.deviceVersion = dict["DeviceVersion"] as! String
            }
            if dict.keys.contains("Disk") {
                self.disk = dict["Disk"] as! String
            }
            if dict.keys.contains("DlpStatus") {
                self.dlpStatus = dict["DlpStatus"] as! String
            }
            if dict.keys.contains("Hostname") {
                self.hostname = dict["Hostname"] as! String
            }
            if dict.keys.contains("IaStatus") {
                self.iaStatus = dict["IaStatus"] as! String
            }
            if dict.keys.contains("InnerIP") {
                self.innerIP = dict["InnerIP"] as! String
            }
            if dict.keys.contains("Mac") {
                self.mac = dict["Mac"] as! String
            }
            if dict.keys.contains("Memory") {
                self.memory = dict["Memory"] as! String
            }
            if dict.keys.contains("NacStatus") {
                self.nacStatus = dict["NacStatus"] as! String
            }
            if dict.keys.contains("NetInterfaceInfo") {
                var tmp : [UpdateUserDevicesStatusResponseBody.Devices.NetInterfaceInfo] = []
                for v in dict["NetInterfaceInfo"] as! [Any] {
                    var model = UpdateUserDevicesStatusResponseBody.Devices.NetInterfaceInfo()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.netInterfaceInfo = tmp
            }
            if dict.keys.contains("PaStatus") {
                self.paStatus = dict["PaStatus"] as! String
            }
            if dict.keys.contains("SaseUserId") {
                self.saseUserId = dict["SaseUserId"] as! String
            }
            if dict.keys.contains("SharingStatus") {
                self.sharingStatus = dict["SharingStatus"] as! Bool
            }
            if dict.keys.contains("SrcIP") {
                self.srcIP = dict["SrcIP"] as! String
            }
            if dict.keys.contains("UpdateTime") {
                self.updateTime = dict["UpdateTime"] as! String
            }
            if dict.keys.contains("Username") {
                self.username = dict["Username"] as! String
            }
        }
    }
    public var devices: [UpdateUserDevicesStatusResponseBody.Devices]?

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
        if self.devices != nil {
            var tmp : [Any] = []
            for k in self.devices! {
                tmp.append(k.toMap())
            }
            map["Devices"] = tmp
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Devices") {
            var tmp : [UpdateUserDevicesStatusResponseBody.Devices] = []
            for v in dict["Devices"] as! [Any] {
                var model = UpdateUserDevicesStatusResponseBody.Devices()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.devices = tmp
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class UpdateUserDevicesStatusResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpdateUserDevicesStatusResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = UpdateUserDevicesStatusResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class UpdateUserGroupRequest : Tea.TeaModel {
    public class Attributes : Tea.TeaModel {
        public var idpId: Int32?

        public var relation: String?

        public var userGroupType: String?

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
            if self.idpId != nil {
                map["IdpId"] = self.idpId!
            }
            if self.relation != nil {
                map["Relation"] = self.relation!
            }
            if self.userGroupType != nil {
                map["UserGroupType"] = self.userGroupType!
            }
            if self.value != nil {
                map["Value"] = self.value!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("IdpId") {
                self.idpId = dict["IdpId"] as! Int32
            }
            if dict.keys.contains("Relation") {
                self.relation = dict["Relation"] as! String
            }
            if dict.keys.contains("UserGroupType") {
                self.userGroupType = dict["UserGroupType"] as! String
            }
            if dict.keys.contains("Value") {
                self.value = dict["Value"] as! String
            }
        }
    }
    public var attributes: [UpdateUserGroupRequest.Attributes]?

    public var description_: String?

    public var modifyType: String?

    public var userGroupId: String?

    public override init() {
        super.init()
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
            var tmp : [Any] = []
            for k in self.attributes! {
                tmp.append(k.toMap())
            }
            map["Attributes"] = tmp
        }
        if self.description_ != nil {
            map["Description"] = self.description_!
        }
        if self.modifyType != nil {
            map["ModifyType"] = self.modifyType!
        }
        if self.userGroupId != nil {
            map["UserGroupId"] = self.userGroupId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Attributes") {
            var tmp : [UpdateUserGroupRequest.Attributes] = []
            for v in dict["Attributes"] as! [Any] {
                var model = UpdateUserGroupRequest.Attributes()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.attributes = tmp
        }
        if dict.keys.contains("Description") {
            self.description_ = dict["Description"] as! String
        }
        if dict.keys.contains("ModifyType") {
            self.modifyType = dict["ModifyType"] as! String
        }
        if dict.keys.contains("UserGroupId") {
            self.userGroupId = dict["UserGroupId"] as! String
        }
    }
}

public class UpdateUserGroupResponseBody : Tea.TeaModel {
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

public class UpdateUserGroupResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpdateUserGroupResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = UpdateUserGroupResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class UpdateUsersStatusRequest : Tea.TeaModel {
    public var saseUserIds: [String]?

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
        if self.saseUserIds != nil {
            map["SaseUserIds"] = self.saseUserIds!
        }
        if self.status != nil {
            map["Status"] = self.status!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("SaseUserIds") {
            self.saseUserIds = dict["SaseUserIds"] as! [String]
        }
        if dict.keys.contains("Status") {
            self.status = dict["Status"] as! String
        }
    }
}

public class UpdateUsersStatusResponseBody : Tea.TeaModel {
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

public class UpdateUsersStatusResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpdateUsersStatusResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = UpdateUsersStatusResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}
