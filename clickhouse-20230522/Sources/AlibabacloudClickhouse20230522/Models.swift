import Foundation
import Tea
import TeaUtils
import AlibabacloudOpenApi
import AlibabaCloudOpenApiUtil
import AlibabacloudEndpointUtil

public class AttachWhitelistTemplateToInstanceRequest : Tea.TeaModel {
    public var DBInstanceId: String?

    public var regionId: String?

    public var templateId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.DBInstanceId != nil {
            map["DBInstanceId"] = self.DBInstanceId!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.templateId != nil {
            map["TemplateId"] = self.templateId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["DBInstanceId"] as? String {
            self.DBInstanceId = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["TemplateId"] as? String {
            self.templateId = value
        }
    }
}

public class AttachWhitelistTemplateToInstanceResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class AttachFailList : Tea.TeaModel {
            public var DBInstanceId: String?

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
                if self.DBInstanceId != nil {
                    map["DBInstanceId"] = self.DBInstanceId!
                }
                if self.reason != nil {
                    map["Reason"] = self.reason!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["DBInstanceId"] as? String {
                    self.DBInstanceId = value
                }
                if let value = dict["Reason"] as? String {
                    self.reason = value
                }
            }
        }
        public class AttachSuccessedList : Tea.TeaModel {
            public class Templates : Tea.TeaModel {
                public class DbInstances : Tea.TeaModel {
                    public var DBInstanceId: String?

                    public override init() {
                        super.init()
                    }

                    public init(_ dict: [String: Any]) {
                        super.init()
                        self.fromMap(dict)
                    }

                    public override func validate() throws -> Void {
                    }

                    public override func toMap() -> [String : Any] {
                        var map = super.toMap()
                        if self.DBInstanceId != nil {
                            map["DBInstanceId"] = self.DBInstanceId!
                        }
                        return map
                    }

                    public override func fromMap(_ dict: [String: Any?]?) -> Void {
                        guard let dict else { return }
                        if let value = dict["DBInstanceId"] as? String {
                            self.DBInstanceId = value
                        }
                    }
                }
                public var dbInstances: [AttachWhitelistTemplateToInstanceResponseBody.Data.AttachSuccessedList.Templates.DbInstances]?

                public var securityIPList: String?

                public var templateId: String?

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
                    if self.dbInstances != nil {
                        var tmp : [Any] = []
                        for k in self.dbInstances! {
                            tmp.append(k.toMap())
                        }
                        map["DbInstances"] = tmp
                    }
                    if self.securityIPList != nil {
                        map["SecurityIPList"] = self.securityIPList!
                    }
                    if self.templateId != nil {
                        map["TemplateId"] = self.templateId!
                    }
                    if self.templateName != nil {
                        map["TemplateName"] = self.templateName!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["DbInstances"] as? [Any?] {
                        var tmp : [AttachWhitelistTemplateToInstanceResponseBody.Data.AttachSuccessedList.Templates.DbInstances] = []
                        for v in value {
                            if v != nil {
                                var model = AttachWhitelistTemplateToInstanceResponseBody.Data.AttachSuccessedList.Templates.DbInstances()
                                if v != nil {
                                    model.fromMap(v as? [String: Any?])
                                }
                                tmp.append(model)
                            }
                        }
                        self.dbInstances = tmp
                    }
                    if let value = dict["SecurityIPList"] as? String {
                        self.securityIPList = value
                    }
                    if let value = dict["TemplateId"] as? String {
                        self.templateId = value
                    }
                    if let value = dict["TemplateName"] as? String {
                        self.templateName = value
                    }
                }
            }
            public var DBInstanceId: String?

            public var templates: [AttachWhitelistTemplateToInstanceResponseBody.Data.AttachSuccessedList.Templates]?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.DBInstanceId != nil {
                    map["DBInstanceId"] = self.DBInstanceId!
                }
                if self.templates != nil {
                    var tmp : [Any] = []
                    for k in self.templates! {
                        tmp.append(k.toMap())
                    }
                    map["Templates"] = tmp
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["DBInstanceId"] as? String {
                    self.DBInstanceId = value
                }
                if let value = dict["Templates"] as? [Any?] {
                    var tmp : [AttachWhitelistTemplateToInstanceResponseBody.Data.AttachSuccessedList.Templates] = []
                    for v in value {
                        if v != nil {
                            var model = AttachWhitelistTemplateToInstanceResponseBody.Data.AttachSuccessedList.Templates()
                            if v != nil {
                                model.fromMap(v as? [String: Any?])
                            }
                            tmp.append(model)
                        }
                    }
                    self.templates = tmp
                }
            }
        }
        public var attachFailList: [AttachWhitelistTemplateToInstanceResponseBody.Data.AttachFailList]?

        public var attachSuccessedList: [AttachWhitelistTemplateToInstanceResponseBody.Data.AttachSuccessedList]?

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
            if self.attachFailList != nil {
                var tmp : [Any] = []
                for k in self.attachFailList! {
                    tmp.append(k.toMap())
                }
                map["AttachFailList"] = tmp
            }
            if self.attachSuccessedList != nil {
                var tmp : [Any] = []
                for k in self.attachSuccessedList! {
                    tmp.append(k.toMap())
                }
                map["AttachSuccessedList"] = tmp
            }
            if self.status != nil {
                map["Status"] = self.status!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["AttachFailList"] as? [Any?] {
                var tmp : [AttachWhitelistTemplateToInstanceResponseBody.Data.AttachFailList] = []
                for v in value {
                    if v != nil {
                        var model = AttachWhitelistTemplateToInstanceResponseBody.Data.AttachFailList()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.attachFailList = tmp
            }
            if let value = dict["AttachSuccessedList"] as? [Any?] {
                var tmp : [AttachWhitelistTemplateToInstanceResponseBody.Data.AttachSuccessedList] = []
                for v in value {
                    if v != nil {
                        var model = AttachWhitelistTemplateToInstanceResponseBody.Data.AttachSuccessedList()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.attachSuccessedList = tmp
            }
            if let value = dict["Status"] as? String {
                self.status = value
            }
        }
    }
    public var data: AttachWhitelistTemplateToInstanceResponseBody.Data?

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
            var model = AttachWhitelistTemplateToInstanceResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class AttachWhitelistTemplateToInstanceResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: AttachWhitelistTemplateToInstanceResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = AttachWhitelistTemplateToInstanceResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ChangeResourceGroupRequest : Tea.TeaModel {
    public var resourceGroupId: String?

    public var resourceId: String?

    public var resourceRegionId: String?

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
        if self.resourceGroupId != nil {
            map["ResourceGroupId"] = self.resourceGroupId!
        }
        if self.resourceId != nil {
            map["ResourceId"] = self.resourceId!
        }
        if self.resourceRegionId != nil {
            map["ResourceRegionId"] = self.resourceRegionId!
        }
        if self.resourceType != nil {
            map["ResourceType"] = self.resourceType!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ResourceGroupId"] as? String {
            self.resourceGroupId = value
        }
        if let value = dict["ResourceId"] as? String {
            self.resourceId = value
        }
        if let value = dict["ResourceRegionId"] as? String {
            self.resourceRegionId = value
        }
        if let value = dict["ResourceType"] as? String {
            self.resourceType = value
        }
    }
}

public class ChangeResourceGroupResponseBody : Tea.TeaModel {
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

public class ChangeResourceGroupResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ChangeResourceGroupResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = ChangeResourceGroupResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class CreateAccountRequest : Tea.TeaModel {
    public class DmlAuthSetting : Tea.TeaModel {
        public var allowDatabases: [String]?

        public var allowDictionaries: [String]?

        public var ddlAuthority: Bool?

        public var dmlAuthority: Int32?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.allowDatabases != nil {
                map["AllowDatabases"] = self.allowDatabases!
            }
            if self.allowDictionaries != nil {
                map["AllowDictionaries"] = self.allowDictionaries!
            }
            if self.ddlAuthority != nil {
                map["DdlAuthority"] = self.ddlAuthority!
            }
            if self.dmlAuthority != nil {
                map["DmlAuthority"] = self.dmlAuthority!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["AllowDatabases"] as? [String] {
                self.allowDatabases = value
            }
            if let value = dict["AllowDictionaries"] as? [String] {
                self.allowDictionaries = value
            }
            if let value = dict["DdlAuthority"] as? Bool {
                self.ddlAuthority = value
            }
            if let value = dict["DmlAuthority"] as? Int32 {
                self.dmlAuthority = value
            }
        }
    }
    public var account: String?

    public var accountType: String?

    public var DBInstanceId: String?

    public var description_: String?

    public var dmlAuthSetting: CreateAccountRequest.DmlAuthSetting?

    public var password: String?

    public var product: String?

    public var regionId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.dmlAuthSetting?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.account != nil {
            map["Account"] = self.account!
        }
        if self.accountType != nil {
            map["AccountType"] = self.accountType!
        }
        if self.DBInstanceId != nil {
            map["DBInstanceId"] = self.DBInstanceId!
        }
        if self.description_ != nil {
            map["Description"] = self.description_!
        }
        if self.dmlAuthSetting != nil {
            map["DmlAuthSetting"] = self.dmlAuthSetting?.toMap()
        }
        if self.password != nil {
            map["Password"] = self.password!
        }
        if self.product != nil {
            map["Product"] = self.product!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Account"] as? String {
            self.account = value
        }
        if let value = dict["AccountType"] as? String {
            self.accountType = value
        }
        if let value = dict["DBInstanceId"] as? String {
            self.DBInstanceId = value
        }
        if let value = dict["Description"] as? String {
            self.description_ = value
        }
        if let value = dict["DmlAuthSetting"] as? [String: Any?] {
            var model = CreateAccountRequest.DmlAuthSetting()
            model.fromMap(value)
            self.dmlAuthSetting = model
        }
        if let value = dict["Password"] as? String {
            self.password = value
        }
        if let value = dict["Product"] as? String {
            self.product = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
    }
}

public class CreateAccountShrinkRequest : Tea.TeaModel {
    public var account: String?

    public var accountType: String?

    public var DBInstanceId: String?

    public var description_: String?

    public var dmlAuthSettingShrink: String?

    public var password: String?

    public var product: String?

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
        if self.account != nil {
            map["Account"] = self.account!
        }
        if self.accountType != nil {
            map["AccountType"] = self.accountType!
        }
        if self.DBInstanceId != nil {
            map["DBInstanceId"] = self.DBInstanceId!
        }
        if self.description_ != nil {
            map["Description"] = self.description_!
        }
        if self.dmlAuthSettingShrink != nil {
            map["DmlAuthSetting"] = self.dmlAuthSettingShrink!
        }
        if self.password != nil {
            map["Password"] = self.password!
        }
        if self.product != nil {
            map["Product"] = self.product!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Account"] as? String {
            self.account = value
        }
        if let value = dict["AccountType"] as? String {
            self.accountType = value
        }
        if let value = dict["DBInstanceId"] as? String {
            self.DBInstanceId = value
        }
        if let value = dict["Description"] as? String {
            self.description_ = value
        }
        if let value = dict["DmlAuthSetting"] as? String {
            self.dmlAuthSettingShrink = value
        }
        if let value = dict["Password"] as? String {
            self.password = value
        }
        if let value = dict["Product"] as? String {
            self.product = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
    }
}

public class CreateAccountResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var account: String?

        public var DBInstanceId: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.account != nil {
                map["Account"] = self.account!
            }
            if self.DBInstanceId != nil {
                map["DBInstanceId"] = self.DBInstanceId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Account"] as? String {
                self.account = value
            }
            if let value = dict["DBInstanceId"] as? String {
                self.DBInstanceId = value
            }
        }
    }
    public var data: CreateAccountResponseBody.Data?

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
            var model = CreateAccountResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class CreateAccountResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateAccountResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = CreateAccountResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class CreateBackupPolicyRequest : Tea.TeaModel {
    public var backupRetentionPeriod: String?

    public var DBInstanceId: String?

    public var preferredBackupPeriod: String?

    public var preferredBackupTime: String?

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
        if self.backupRetentionPeriod != nil {
            map["BackupRetentionPeriod"] = self.backupRetentionPeriod!
        }
        if self.DBInstanceId != nil {
            map["DBInstanceId"] = self.DBInstanceId!
        }
        if self.preferredBackupPeriod != nil {
            map["PreferredBackupPeriod"] = self.preferredBackupPeriod!
        }
        if self.preferredBackupTime != nil {
            map["PreferredBackupTime"] = self.preferredBackupTime!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["BackupRetentionPeriod"] as? String {
            self.backupRetentionPeriod = value
        }
        if let value = dict["DBInstanceId"] as? String {
            self.DBInstanceId = value
        }
        if let value = dict["PreferredBackupPeriod"] as? String {
            self.preferredBackupPeriod = value
        }
        if let value = dict["PreferredBackupTime"] as? String {
            self.preferredBackupTime = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
    }
}

public class CreateBackupPolicyResponseBody : Tea.TeaModel {
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

public class CreateBackupPolicyResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateBackupPolicyResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = CreateBackupPolicyResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class CreateDBRequest : Tea.TeaModel {
    public var comment: String?

    public var DBInstanceId: String?

    public var DBName: String?

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
        if self.comment != nil {
            map["Comment"] = self.comment!
        }
        if self.DBInstanceId != nil {
            map["DBInstanceId"] = self.DBInstanceId!
        }
        if self.DBName != nil {
            map["DBName"] = self.DBName!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Comment"] as? String {
            self.comment = value
        }
        if let value = dict["DBInstanceId"] as? String {
            self.DBInstanceId = value
        }
        if let value = dict["DBName"] as? String {
            self.DBName = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
    }
}

public class CreateDBResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var DBInstanceId: String?

        public var DBName: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.DBInstanceId != nil {
                map["DBInstanceId"] = self.DBInstanceId!
            }
            if self.DBName != nil {
                map["DBName"] = self.DBName!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["DBInstanceId"] as? String {
                self.DBInstanceId = value
            }
            if let value = dict["DBName"] as? String {
                self.DBName = value
            }
        }
    }
    public var data: CreateDBResponseBody.Data?

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
            var model = CreateDBResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class CreateDBResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateDBResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = CreateDBResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class CreateDBInstanceRequest : Tea.TeaModel {
    public class MultiZone : Tea.TeaModel {
        public var vSwitchIds: [String]?

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
            if self.vSwitchIds != nil {
                map["VSwitchIds"] = self.vSwitchIds!
            }
            if self.zoneId != nil {
                map["ZoneId"] = self.zoneId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["VSwitchIds"] as? [String] {
                self.vSwitchIds = value
            }
            if let value = dict["ZoneId"] as? String {
                self.zoneId = value
            }
        }
    }
    public var backupSetId: String?

    public var category: String?

    public var clientToken: String?

    public var DBInstanceDescription: String?

    public var DBTimeZone: String?

    public var deploySchema: String?

    public var engine: String?

    public var engineVersion: String?

    public var multiZone: [CreateDBInstanceRequest.MultiZone]?

    public var nodeCount: Int32?

    public var nodeScaleMax: Int32?

    public var nodeScaleMin: Int32?

    public var regionId: String?

    public var resourceGroupId: String?

    public var scaleMax: String?

    public var scaleMin: String?

    public var sourceDBInstanceId: String?

    public var storageQuota: Int64?

    public var storageType: String?

    public var vpcId: String?

    public var vswitchId: String?

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
        if self.backupSetId != nil {
            map["BackupSetId"] = self.backupSetId!
        }
        if self.category != nil {
            map["Category"] = self.category!
        }
        if self.clientToken != nil {
            map["ClientToken"] = self.clientToken!
        }
        if self.DBInstanceDescription != nil {
            map["DBInstanceDescription"] = self.DBInstanceDescription!
        }
        if self.DBTimeZone != nil {
            map["DBTimeZone"] = self.DBTimeZone!
        }
        if self.deploySchema != nil {
            map["DeploySchema"] = self.deploySchema!
        }
        if self.engine != nil {
            map["Engine"] = self.engine!
        }
        if self.engineVersion != nil {
            map["EngineVersion"] = self.engineVersion!
        }
        if self.multiZone != nil {
            var tmp : [Any] = []
            for k in self.multiZone! {
                tmp.append(k.toMap())
            }
            map["MultiZone"] = tmp
        }
        if self.nodeCount != nil {
            map["NodeCount"] = self.nodeCount!
        }
        if self.nodeScaleMax != nil {
            map["NodeScaleMax"] = self.nodeScaleMax!
        }
        if self.nodeScaleMin != nil {
            map["NodeScaleMin"] = self.nodeScaleMin!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.resourceGroupId != nil {
            map["ResourceGroupId"] = self.resourceGroupId!
        }
        if self.scaleMax != nil {
            map["ScaleMax"] = self.scaleMax!
        }
        if self.scaleMin != nil {
            map["ScaleMin"] = self.scaleMin!
        }
        if self.sourceDBInstanceId != nil {
            map["SourceDBInstanceId"] = self.sourceDBInstanceId!
        }
        if self.storageQuota != nil {
            map["StorageQuota"] = self.storageQuota!
        }
        if self.storageType != nil {
            map["StorageType"] = self.storageType!
        }
        if self.vpcId != nil {
            map["VpcId"] = self.vpcId!
        }
        if self.vswitchId != nil {
            map["VswitchId"] = self.vswitchId!
        }
        if self.zoneId != nil {
            map["ZoneId"] = self.zoneId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["BackupSetId"] as? String {
            self.backupSetId = value
        }
        if let value = dict["Category"] as? String {
            self.category = value
        }
        if let value = dict["ClientToken"] as? String {
            self.clientToken = value
        }
        if let value = dict["DBInstanceDescription"] as? String {
            self.DBInstanceDescription = value
        }
        if let value = dict["DBTimeZone"] as? String {
            self.DBTimeZone = value
        }
        if let value = dict["DeploySchema"] as? String {
            self.deploySchema = value
        }
        if let value = dict["Engine"] as? String {
            self.engine = value
        }
        if let value = dict["EngineVersion"] as? String {
            self.engineVersion = value
        }
        if let value = dict["MultiZone"] as? [Any?] {
            var tmp : [CreateDBInstanceRequest.MultiZone] = []
            for v in value {
                if v != nil {
                    var model = CreateDBInstanceRequest.MultiZone()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.multiZone = tmp
        }
        if let value = dict["NodeCount"] as? Int32 {
            self.nodeCount = value
        }
        if let value = dict["NodeScaleMax"] as? Int32 {
            self.nodeScaleMax = value
        }
        if let value = dict["NodeScaleMin"] as? Int32 {
            self.nodeScaleMin = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["ResourceGroupId"] as? String {
            self.resourceGroupId = value
        }
        if let value = dict["ScaleMax"] as? String {
            self.scaleMax = value
        }
        if let value = dict["ScaleMin"] as? String {
            self.scaleMin = value
        }
        if let value = dict["SourceDBInstanceId"] as? String {
            self.sourceDBInstanceId = value
        }
        if let value = dict["StorageQuota"] as? Int64 {
            self.storageQuota = value
        }
        if let value = dict["StorageType"] as? String {
            self.storageType = value
        }
        if let value = dict["VpcId"] as? String {
            self.vpcId = value
        }
        if let value = dict["VswitchId"] as? String {
            self.vswitchId = value
        }
        if let value = dict["ZoneId"] as? String {
            self.zoneId = value
        }
    }
}

public class CreateDBInstanceShrinkRequest : Tea.TeaModel {
    public var backupSetId: String?

    public var category: String?

    public var clientToken: String?

    public var DBInstanceDescription: String?

    public var DBTimeZone: String?

    public var deploySchema: String?

    public var engine: String?

    public var engineVersion: String?

    public var multiZoneShrink: String?

    public var nodeCount: Int32?

    public var nodeScaleMax: Int32?

    public var nodeScaleMin: Int32?

    public var regionId: String?

    public var resourceGroupId: String?

    public var scaleMax: String?

    public var scaleMin: String?

    public var sourceDBInstanceId: String?

    public var storageQuota: Int64?

    public var storageType: String?

    public var vpcId: String?

    public var vswitchId: String?

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
        if self.backupSetId != nil {
            map["BackupSetId"] = self.backupSetId!
        }
        if self.category != nil {
            map["Category"] = self.category!
        }
        if self.clientToken != nil {
            map["ClientToken"] = self.clientToken!
        }
        if self.DBInstanceDescription != nil {
            map["DBInstanceDescription"] = self.DBInstanceDescription!
        }
        if self.DBTimeZone != nil {
            map["DBTimeZone"] = self.DBTimeZone!
        }
        if self.deploySchema != nil {
            map["DeploySchema"] = self.deploySchema!
        }
        if self.engine != nil {
            map["Engine"] = self.engine!
        }
        if self.engineVersion != nil {
            map["EngineVersion"] = self.engineVersion!
        }
        if self.multiZoneShrink != nil {
            map["MultiZone"] = self.multiZoneShrink!
        }
        if self.nodeCount != nil {
            map["NodeCount"] = self.nodeCount!
        }
        if self.nodeScaleMax != nil {
            map["NodeScaleMax"] = self.nodeScaleMax!
        }
        if self.nodeScaleMin != nil {
            map["NodeScaleMin"] = self.nodeScaleMin!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.resourceGroupId != nil {
            map["ResourceGroupId"] = self.resourceGroupId!
        }
        if self.scaleMax != nil {
            map["ScaleMax"] = self.scaleMax!
        }
        if self.scaleMin != nil {
            map["ScaleMin"] = self.scaleMin!
        }
        if self.sourceDBInstanceId != nil {
            map["SourceDBInstanceId"] = self.sourceDBInstanceId!
        }
        if self.storageQuota != nil {
            map["StorageQuota"] = self.storageQuota!
        }
        if self.storageType != nil {
            map["StorageType"] = self.storageType!
        }
        if self.vpcId != nil {
            map["VpcId"] = self.vpcId!
        }
        if self.vswitchId != nil {
            map["VswitchId"] = self.vswitchId!
        }
        if self.zoneId != nil {
            map["ZoneId"] = self.zoneId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["BackupSetId"] as? String {
            self.backupSetId = value
        }
        if let value = dict["Category"] as? String {
            self.category = value
        }
        if let value = dict["ClientToken"] as? String {
            self.clientToken = value
        }
        if let value = dict["DBInstanceDescription"] as? String {
            self.DBInstanceDescription = value
        }
        if let value = dict["DBTimeZone"] as? String {
            self.DBTimeZone = value
        }
        if let value = dict["DeploySchema"] as? String {
            self.deploySchema = value
        }
        if let value = dict["Engine"] as? String {
            self.engine = value
        }
        if let value = dict["EngineVersion"] as? String {
            self.engineVersion = value
        }
        if let value = dict["MultiZone"] as? String {
            self.multiZoneShrink = value
        }
        if let value = dict["NodeCount"] as? Int32 {
            self.nodeCount = value
        }
        if let value = dict["NodeScaleMax"] as? Int32 {
            self.nodeScaleMax = value
        }
        if let value = dict["NodeScaleMin"] as? Int32 {
            self.nodeScaleMin = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["ResourceGroupId"] as? String {
            self.resourceGroupId = value
        }
        if let value = dict["ScaleMax"] as? String {
            self.scaleMax = value
        }
        if let value = dict["ScaleMin"] as? String {
            self.scaleMin = value
        }
        if let value = dict["SourceDBInstanceId"] as? String {
            self.sourceDBInstanceId = value
        }
        if let value = dict["StorageQuota"] as? Int64 {
            self.storageQuota = value
        }
        if let value = dict["StorageType"] as? String {
            self.storageType = value
        }
        if let value = dict["VpcId"] as? String {
            self.vpcId = value
        }
        if let value = dict["VswitchId"] as? String {
            self.vswitchId = value
        }
        if let value = dict["ZoneId"] as? String {
            self.zoneId = value
        }
    }
}

public class CreateDBInstanceResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var connectionString: String?

        public var DBInstanceId: String?

        public var orderId: Int64?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.connectionString != nil {
                map["ConnectionString"] = self.connectionString!
            }
            if self.DBInstanceId != nil {
                map["DBInstanceId"] = self.DBInstanceId!
            }
            if self.orderId != nil {
                map["OrderId"] = self.orderId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["ConnectionString"] as? String {
                self.connectionString = value
            }
            if let value = dict["DBInstanceId"] as? String {
                self.DBInstanceId = value
            }
            if let value = dict["OrderId"] as? Int64 {
                self.orderId = value
            }
        }
    }
    public var data: CreateDBInstanceResponseBody.Data?

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
            var model = CreateDBInstanceResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class CreateDBInstanceResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateDBInstanceResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = CreateDBInstanceResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class CreateEndpointRequest : Tea.TeaModel {
    public var computingGroupId: String?

    public var connectionPrefix: String?

    public var DBInstanceId: String?

    public var DBInstanceNetType: String?

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
        if self.computingGroupId != nil {
            map["ComputingGroupId"] = self.computingGroupId!
        }
        if self.connectionPrefix != nil {
            map["ConnectionPrefix"] = self.connectionPrefix!
        }
        if self.DBInstanceId != nil {
            map["DBInstanceId"] = self.DBInstanceId!
        }
        if self.DBInstanceNetType != nil {
            map["DBInstanceNetType"] = self.DBInstanceNetType!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ComputingGroupId"] as? String {
            self.computingGroupId = value
        }
        if let value = dict["ConnectionPrefix"] as? String {
            self.connectionPrefix = value
        }
        if let value = dict["DBInstanceId"] as? String {
            self.DBInstanceId = value
        }
        if let value = dict["DBInstanceNetType"] as? String {
            self.DBInstanceNetType = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
    }
}

public class CreateEndpointResponseBody : Tea.TeaModel {
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

public class CreateEndpointResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateEndpointResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = CreateEndpointResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DeleteAccountRequest : Tea.TeaModel {
    public var account: String?

    public var DBInstanceId: String?

    public var product: String?

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
        if self.account != nil {
            map["Account"] = self.account!
        }
        if self.DBInstanceId != nil {
            map["DBInstanceId"] = self.DBInstanceId!
        }
        if self.product != nil {
            map["Product"] = self.product!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Account"] as? String {
            self.account = value
        }
        if let value = dict["DBInstanceId"] as? String {
            self.DBInstanceId = value
        }
        if let value = dict["Product"] as? String {
            self.product = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
    }
}

public class DeleteAccountResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var account: String?

        public var DBInstanceId: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.account != nil {
                map["Account"] = self.account!
            }
            if self.DBInstanceId != nil {
                map["DBInstanceId"] = self.DBInstanceId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Account"] as? String {
                self.account = value
            }
            if let value = dict["DBInstanceId"] as? String {
                self.DBInstanceId = value
            }
        }
    }
    public var data: DeleteAccountResponseBody.Data?

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
            var model = DeleteAccountResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class DeleteAccountResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteAccountResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = DeleteAccountResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DeleteBackupPolicyRequest : Tea.TeaModel {
    public var DBInstanceId: String?

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
        if self.DBInstanceId != nil {
            map["DBInstanceId"] = self.DBInstanceId!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["DBInstanceId"] as? String {
            self.DBInstanceId = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
    }
}

public class DeleteBackupPolicyResponseBody : Tea.TeaModel {
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

public class DeleteBackupPolicyResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteBackupPolicyResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = DeleteBackupPolicyResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DeleteDBRequest : Tea.TeaModel {
    public var DBInstanceId: String?

    public var DBName: String?

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
        if self.DBInstanceId != nil {
            map["DBInstanceId"] = self.DBInstanceId!
        }
        if self.DBName != nil {
            map["DBName"] = self.DBName!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["DBInstanceId"] as? String {
            self.DBInstanceId = value
        }
        if let value = dict["DBName"] as? String {
            self.DBName = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
    }
}

public class DeleteDBResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var DBInstanceId: String?

        public var DBName: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.DBInstanceId != nil {
                map["DBInstanceId"] = self.DBInstanceId!
            }
            if self.DBName != nil {
                map["DBName"] = self.DBName!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["DBInstanceId"] as? String {
                self.DBInstanceId = value
            }
            if let value = dict["DBName"] as? String {
                self.DBName = value
            }
        }
    }
    public var data: DeleteDBResponseBody.Data?

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
            var model = DeleteDBResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class DeleteDBResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteDBResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = DeleteDBResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DeleteDBInstanceRequest : Tea.TeaModel {
    public var DBInstanceId: String?

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
        if self.DBInstanceId != nil {
            map["DBInstanceId"] = self.DBInstanceId!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["DBInstanceId"] as? String {
            self.DBInstanceId = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
    }
}

public class DeleteDBInstanceResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var DBInstanceId: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.DBInstanceId != nil {
                map["DBInstanceId"] = self.DBInstanceId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["DBInstanceId"] as? String {
                self.DBInstanceId = value
            }
        }
    }
    public var data: DeleteDBInstanceResponseBody.Data?

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
            var model = DeleteDBInstanceResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class DeleteDBInstanceResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteDBInstanceResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = DeleteDBInstanceResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DeleteEndpointRequest : Tea.TeaModel {
    public var computingGroupId: String?

    public var connectionString: String?

    public var DBInstanceId: String?

    public var DBInstanceNetType: String?

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
        if self.computingGroupId != nil {
            map["ComputingGroupId"] = self.computingGroupId!
        }
        if self.connectionString != nil {
            map["ConnectionString"] = self.connectionString!
        }
        if self.DBInstanceId != nil {
            map["DBInstanceId"] = self.DBInstanceId!
        }
        if self.DBInstanceNetType != nil {
            map["DBInstanceNetType"] = self.DBInstanceNetType!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ComputingGroupId"] as? String {
            self.computingGroupId = value
        }
        if let value = dict["ConnectionString"] as? String {
            self.connectionString = value
        }
        if let value = dict["DBInstanceId"] as? String {
            self.DBInstanceId = value
        }
        if let value = dict["DBInstanceNetType"] as? String {
            self.DBInstanceNetType = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
    }
}

public class DeleteEndpointResponseBody : Tea.TeaModel {
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

public class DeleteEndpointResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteEndpointResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = DeleteEndpointResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DeleteWhitelistTemplateRequest : Tea.TeaModel {
    public var regionId: String?

    public var templateId: String?

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
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.templateId != nil {
            map["TemplateId"] = self.templateId!
        }
        if self.templateName != nil {
            map["TemplateName"] = self.templateName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["TemplateId"] as? String {
            self.templateId = value
        }
        if let value = dict["TemplateName"] as? String {
            self.templateName = value
        }
    }
}

public class DeleteWhitelistTemplateResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class Templates : Tea.TeaModel {
            public class DbInstances : Tea.TeaModel {
                public var dbInstanceName: String?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.dbInstanceName != nil {
                        map["DbInstanceName"] = self.dbInstanceName!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["DbInstanceName"] as? String {
                        self.dbInstanceName = value
                    }
                }
            }
            public var dbInstances: [DeleteWhitelistTemplateResponseBody.Data.Templates.DbInstances]?

            public var securityIPList: String?

            public var templateId: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.dbInstances != nil {
                    var tmp : [Any] = []
                    for k in self.dbInstances! {
                        tmp.append(k.toMap())
                    }
                    map["DbInstances"] = tmp
                }
                if self.securityIPList != nil {
                    map["SecurityIPList"] = self.securityIPList!
                }
                if self.templateId != nil {
                    map["TemplateId"] = self.templateId!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["DbInstances"] as? [Any?] {
                    var tmp : [DeleteWhitelistTemplateResponseBody.Data.Templates.DbInstances] = []
                    for v in value {
                        if v != nil {
                            var model = DeleteWhitelistTemplateResponseBody.Data.Templates.DbInstances()
                            if v != nil {
                                model.fromMap(v as? [String: Any?])
                            }
                            tmp.append(model)
                        }
                    }
                    self.dbInstances = tmp
                }
                if let value = dict["SecurityIPList"] as? String {
                    self.securityIPList = value
                }
                if let value = dict["TemplateId"] as? String {
                    self.templateId = value
                }
            }
        }
        public var templates: [DeleteWhitelistTemplateResponseBody.Data.Templates]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.templates != nil {
                var tmp : [Any] = []
                for k in self.templates! {
                    tmp.append(k.toMap())
                }
                map["Templates"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Templates"] as? [Any?] {
                var tmp : [DeleteWhitelistTemplateResponseBody.Data.Templates] = []
                for v in value {
                    if v != nil {
                        var model = DeleteWhitelistTemplateResponseBody.Data.Templates()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.templates = tmp
            }
        }
    }
    public var data: DeleteWhitelistTemplateResponseBody.Data?

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
            var model = DeleteWhitelistTemplateResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class DeleteWhitelistTemplateResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteWhitelistTemplateResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = DeleteWhitelistTemplateResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DescribeAccountAuthorityRequest : Tea.TeaModel {
    public var account: String?

    public var DBInstanceId: String?

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
        if self.account != nil {
            map["Account"] = self.account!
        }
        if self.DBInstanceId != nil {
            map["DBInstanceId"] = self.DBInstanceId!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Account"] as? String {
            self.account = value
        }
        if let value = dict["DBInstanceId"] as? String {
            self.DBInstanceId = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
    }
}

public class DescribeAccountAuthorityResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var account: String?

        public var allowDatabases: [String]?

        public var allowDictionaries: [String]?

        public var DBInstanceId: String?

        public var ddlAuthority: Bool?

        public var dmlAuthority: Int32?

        public var totalDatabases: [String]?

        public var totalDictionaries: [String]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.account != nil {
                map["Account"] = self.account!
            }
            if self.allowDatabases != nil {
                map["AllowDatabases"] = self.allowDatabases!
            }
            if self.allowDictionaries != nil {
                map["AllowDictionaries"] = self.allowDictionaries!
            }
            if self.DBInstanceId != nil {
                map["DBInstanceId"] = self.DBInstanceId!
            }
            if self.ddlAuthority != nil {
                map["DdlAuthority"] = self.ddlAuthority!
            }
            if self.dmlAuthority != nil {
                map["DmlAuthority"] = self.dmlAuthority!
            }
            if self.totalDatabases != nil {
                map["TotalDatabases"] = self.totalDatabases!
            }
            if self.totalDictionaries != nil {
                map["TotalDictionaries"] = self.totalDictionaries!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Account"] as? String {
                self.account = value
            }
            if let value = dict["AllowDatabases"] as? [String] {
                self.allowDatabases = value
            }
            if let value = dict["AllowDictionaries"] as? [String] {
                self.allowDictionaries = value
            }
            if let value = dict["DBInstanceId"] as? String {
                self.DBInstanceId = value
            }
            if let value = dict["DdlAuthority"] as? Bool {
                self.ddlAuthority = value
            }
            if let value = dict["DmlAuthority"] as? Int32 {
                self.dmlAuthority = value
            }
            if let value = dict["TotalDatabases"] as? [String] {
                self.totalDatabases = value
            }
            if let value = dict["TotalDictionaries"] as? [String] {
                self.totalDictionaries = value
            }
        }
    }
    public var data: DescribeAccountAuthorityResponseBody.Data?

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
            var model = DescribeAccountAuthorityResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class DescribeAccountAuthorityResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeAccountAuthorityResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = DescribeAccountAuthorityResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DescribeAccountsRequest : Tea.TeaModel {
    public var DBInstanceId: String?

    public var pageNumber: String?

    public var pageSize: String?

    public var product: String?

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
        if self.DBInstanceId != nil {
            map["DBInstanceId"] = self.DBInstanceId!
        }
        if self.pageNumber != nil {
            map["PageNumber"] = self.pageNumber!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.product != nil {
            map["Product"] = self.product!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["DBInstanceId"] as? String {
            self.DBInstanceId = value
        }
        if let value = dict["PageNumber"] as? String {
            self.pageNumber = value
        }
        if let value = dict["PageSize"] as? String {
            self.pageSize = value
        }
        if let value = dict["Product"] as? String {
            self.product = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
    }
}

public class DescribeAccountsResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class Accounts : Tea.TeaModel {
            public var account: String?

            public var accountType: String?

            public var description_: String?

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
                if self.account != nil {
                    map["Account"] = self.account!
                }
                if self.accountType != nil {
                    map["AccountType"] = self.accountType!
                }
                if self.description_ != nil {
                    map["Description"] = self.description_!
                }
                if self.status != nil {
                    map["Status"] = self.status!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["Account"] as? String {
                    self.account = value
                }
                if let value = dict["AccountType"] as? String {
                    self.accountType = value
                }
                if let value = dict["Description"] as? String {
                    self.description_ = value
                }
                if let value = dict["Status"] as? String {
                    self.status = value
                }
            }
        }
        public var accounts: [DescribeAccountsResponseBody.Data.Accounts]?

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
            if self.accounts != nil {
                var tmp : [Any] = []
                for k in self.accounts! {
                    tmp.append(k.toMap())
                }
                map["Accounts"] = tmp
            }
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
            if let value = dict["Accounts"] as? [Any?] {
                var tmp : [DescribeAccountsResponseBody.Data.Accounts] = []
                for v in value {
                    if v != nil {
                        var model = DescribeAccountsResponseBody.Data.Accounts()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.accounts = tmp
            }
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
    public var data: DescribeAccountsResponseBody.Data?

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
            var model = DescribeAccountsResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class DescribeAccountsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeAccountsResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = DescribeAccountsResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DescribeBackupPolicyRequest : Tea.TeaModel {
    public var DBInstanceId: String?

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
        if self.DBInstanceId != nil {
            map["DBInstanceId"] = self.DBInstanceId!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["DBInstanceId"] as? String {
            self.DBInstanceId = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
    }
}

public class DescribeBackupPolicyResponseBody : Tea.TeaModel {
    public var backupRetentionPeriod: Int32?

    public var backupSize: String?

    public var preferredBackupPeriod: String?

    public var preferredBackupTime: String?

    public var requestId: String?

    public var switch_: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.backupRetentionPeriod != nil {
            map["BackupRetentionPeriod"] = self.backupRetentionPeriod!
        }
        if self.backupSize != nil {
            map["BackupSize"] = self.backupSize!
        }
        if self.preferredBackupPeriod != nil {
            map["PreferredBackupPeriod"] = self.preferredBackupPeriod!
        }
        if self.preferredBackupTime != nil {
            map["PreferredBackupTime"] = self.preferredBackupTime!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.switch_ != nil {
            map["Switch"] = self.switch_!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["BackupRetentionPeriod"] as? Int32 {
            self.backupRetentionPeriod = value
        }
        if let value = dict["BackupSize"] as? String {
            self.backupSize = value
        }
        if let value = dict["PreferredBackupPeriod"] as? String {
            self.preferredBackupPeriod = value
        }
        if let value = dict["PreferredBackupTime"] as? String {
            self.preferredBackupTime = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Switch"] as? String {
            self.switch_ = value
        }
    }
}

public class DescribeBackupPolicyResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeBackupPolicyResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = DescribeBackupPolicyResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DescribeBackupsRequest : Tea.TeaModel {
    public var backupId: String?

    public var DBInstanceId: String?

    public var endTime: String?

    public var pageNumber: Int32?

    public var pageSize: Int32?

    public var regionId: String?

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
        if self.backupId != nil {
            map["BackupId"] = self.backupId!
        }
        if self.DBInstanceId != nil {
            map["DBInstanceId"] = self.DBInstanceId!
        }
        if self.endTime != nil {
            map["EndTime"] = self.endTime!
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
        if self.startTime != nil {
            map["StartTime"] = self.startTime!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["BackupId"] as? String {
            self.backupId = value
        }
        if let value = dict["DBInstanceId"] as? String {
            self.DBInstanceId = value
        }
        if let value = dict["EndTime"] as? String {
            self.endTime = value
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
        if let value = dict["StartTime"] as? String {
            self.startTime = value
        }
    }
}

public class DescribeBackupsResponseBody : Tea.TeaModel {
    public class Items : Tea.TeaModel {
        public var backupEndTime: String?

        public var backupId: String?

        public var backupMethod: String?

        public var backupSetInfo: String?

        public var backupSize: Int64?

        public var backupStartTime: String?

        public var backupStatus: String?

        public var backupType: String?

        public var DBInstanceId: String?

        public var expireDate: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.backupEndTime != nil {
                map["BackupEndTime"] = self.backupEndTime!
            }
            if self.backupId != nil {
                map["BackupId"] = self.backupId!
            }
            if self.backupMethod != nil {
                map["BackupMethod"] = self.backupMethod!
            }
            if self.backupSetInfo != nil {
                map["BackupSetInfo"] = self.backupSetInfo!
            }
            if self.backupSize != nil {
                map["BackupSize"] = self.backupSize!
            }
            if self.backupStartTime != nil {
                map["BackupStartTime"] = self.backupStartTime!
            }
            if self.backupStatus != nil {
                map["BackupStatus"] = self.backupStatus!
            }
            if self.backupType != nil {
                map["BackupType"] = self.backupType!
            }
            if self.DBInstanceId != nil {
                map["DBInstanceId"] = self.DBInstanceId!
            }
            if self.expireDate != nil {
                map["ExpireDate"] = self.expireDate!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["BackupEndTime"] as? String {
                self.backupEndTime = value
            }
            if let value = dict["BackupId"] as? String {
                self.backupId = value
            }
            if let value = dict["BackupMethod"] as? String {
                self.backupMethod = value
            }
            if let value = dict["BackupSetInfo"] as? String {
                self.backupSetInfo = value
            }
            if let value = dict["BackupSize"] as? Int64 {
                self.backupSize = value
            }
            if let value = dict["BackupStartTime"] as? String {
                self.backupStartTime = value
            }
            if let value = dict["BackupStatus"] as? String {
                self.backupStatus = value
            }
            if let value = dict["BackupType"] as? String {
                self.backupType = value
            }
            if let value = dict["DBInstanceId"] as? String {
                self.DBInstanceId = value
            }
            if let value = dict["ExpireDate"] as? String {
                self.expireDate = value
            }
        }
    }
    public var items: [DescribeBackupsResponseBody.Items]?

    public var pageNumber: String?

    public var pageSize: String?

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
        if self.items != nil {
            var tmp : [Any] = []
            for k in self.items! {
                tmp.append(k.toMap())
            }
            map["Items"] = tmp
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
        if let value = dict["Items"] as? [Any?] {
            var tmp : [DescribeBackupsResponseBody.Items] = []
            for v in value {
                if v != nil {
                    var model = DescribeBackupsResponseBody.Items()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.items = tmp
        }
        if let value = dict["PageNumber"] as? String {
            self.pageNumber = value
        }
        if let value = dict["PageSize"] as? String {
            self.pageSize = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["TotalCount"] as? String {
            self.totalCount = value
        }
    }
}

public class DescribeBackupsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeBackupsResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = DescribeBackupsResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DescribeDBInstanceAttributeRequest : Tea.TeaModel {
    public var DBInstanceId: String?

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
        if self.DBInstanceId != nil {
            map["DBInstanceId"] = self.DBInstanceId!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["DBInstanceId"] as? String {
            self.DBInstanceId = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
    }
}

public class DescribeDBInstanceAttributeResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class MultiZones : Tea.TeaModel {
            public var vSwitchIds: [String]?

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
                if self.vSwitchIds != nil {
                    map["VSwitchIds"] = self.vSwitchIds!
                }
                if self.zoneId != nil {
                    map["ZoneId"] = self.zoneId!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["VSwitchIds"] as? [String] {
                    self.vSwitchIds = value
                }
                if let value = dict["ZoneId"] as? String {
                    self.zoneId = value
                }
            }
        }
        public class Nodes : Tea.TeaModel {
            public var nodeStatus: String?

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
                if self.nodeStatus != nil {
                    map["NodeStatus"] = self.nodeStatus!
                }
                if self.zoneId != nil {
                    map["ZoneId"] = self.zoneId!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["NodeStatus"] as? String {
                    self.nodeStatus = value
                }
                if let value = dict["ZoneId"] as? String {
                    self.zoneId = value
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
        public var aliUid: Int64?

        public var bid: String?

        public var category: String?

        public var chargeType: String?

        public var clickObserveServiceStatus: String?

        public var createTime: String?

        public var DBInstanceId: String?

        public var deletionProtection: Bool?

        public var deploySchema: String?

        public var description_: String?

        public var disabledPorts: String?

        public var engine: String?

        public var engineMinorVersion: String?

        public var engineVersion: String?

        public var expireTime: String?

        public var latestEngineMinorVersion: String?

        public var lockMode: String?

        public var lockReason: String?

        public var maintainEndTime: String?

        public var maintainStartTime: String?

        public var multiZones: [DescribeDBInstanceAttributeResponseBody.Data.MultiZones]?

        public var nodeCount: String?

        public var nodeScaleMax: String?

        public var nodeScaleMin: String?

        public var nodes: [DescribeDBInstanceAttributeResponseBody.Data.Nodes]?

        public var objectStoreSize: String?

        public var regionId: String?

        public var resourceGroupId: String?

        public var scaleMax: Int32?

        public var scaleMin: Int32?

        public var status: String?

        public var storageQuota: String?

        public var storageSize: Int32?

        public var storageType: String?

        public var tags: [DescribeDBInstanceAttributeResponseBody.Data.Tags]?

        public var vSwitchId: String?

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
            if self.aliUid != nil {
                map["AliUid"] = self.aliUid!
            }
            if self.bid != nil {
                map["Bid"] = self.bid!
            }
            if self.category != nil {
                map["Category"] = self.category!
            }
            if self.chargeType != nil {
                map["ChargeType"] = self.chargeType!
            }
            if self.clickObserveServiceStatus != nil {
                map["ClickObserveServiceStatus"] = self.clickObserveServiceStatus!
            }
            if self.createTime != nil {
                map["CreateTime"] = self.createTime!
            }
            if self.DBInstanceId != nil {
                map["DBInstanceId"] = self.DBInstanceId!
            }
            if self.deletionProtection != nil {
                map["DeletionProtection"] = self.deletionProtection!
            }
            if self.deploySchema != nil {
                map["DeploySchema"] = self.deploySchema!
            }
            if self.description_ != nil {
                map["Description"] = self.description_!
            }
            if self.disabledPorts != nil {
                map["DisabledPorts"] = self.disabledPorts!
            }
            if self.engine != nil {
                map["Engine"] = self.engine!
            }
            if self.engineMinorVersion != nil {
                map["EngineMinorVersion"] = self.engineMinorVersion!
            }
            if self.engineVersion != nil {
                map["EngineVersion"] = self.engineVersion!
            }
            if self.expireTime != nil {
                map["ExpireTime"] = self.expireTime!
            }
            if self.latestEngineMinorVersion != nil {
                map["LatestEngineMinorVersion"] = self.latestEngineMinorVersion!
            }
            if self.lockMode != nil {
                map["LockMode"] = self.lockMode!
            }
            if self.lockReason != nil {
                map["LockReason"] = self.lockReason!
            }
            if self.maintainEndTime != nil {
                map["MaintainEndTime"] = self.maintainEndTime!
            }
            if self.maintainStartTime != nil {
                map["MaintainStartTime"] = self.maintainStartTime!
            }
            if self.multiZones != nil {
                var tmp : [Any] = []
                for k in self.multiZones! {
                    tmp.append(k.toMap())
                }
                map["MultiZones"] = tmp
            }
            if self.nodeCount != nil {
                map["NodeCount"] = self.nodeCount!
            }
            if self.nodeScaleMax != nil {
                map["NodeScaleMax"] = self.nodeScaleMax!
            }
            if self.nodeScaleMin != nil {
                map["NodeScaleMin"] = self.nodeScaleMin!
            }
            if self.nodes != nil {
                var tmp : [Any] = []
                for k in self.nodes! {
                    tmp.append(k.toMap())
                }
                map["Nodes"] = tmp
            }
            if self.objectStoreSize != nil {
                map["ObjectStoreSize"] = self.objectStoreSize!
            }
            if self.regionId != nil {
                map["RegionId"] = self.regionId!
            }
            if self.resourceGroupId != nil {
                map["ResourceGroupId"] = self.resourceGroupId!
            }
            if self.scaleMax != nil {
                map["ScaleMax"] = self.scaleMax!
            }
            if self.scaleMin != nil {
                map["ScaleMin"] = self.scaleMin!
            }
            if self.status != nil {
                map["Status"] = self.status!
            }
            if self.storageQuota != nil {
                map["StorageQuota"] = self.storageQuota!
            }
            if self.storageSize != nil {
                map["StorageSize"] = self.storageSize!
            }
            if self.storageType != nil {
                map["StorageType"] = self.storageType!
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
            if self.vpcId != nil {
                map["VpcId"] = self.vpcId!
            }
            if self.zoneId != nil {
                map["ZoneId"] = self.zoneId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["AliUid"] as? Int64 {
                self.aliUid = value
            }
            if let value = dict["Bid"] as? String {
                self.bid = value
            }
            if let value = dict["Category"] as? String {
                self.category = value
            }
            if let value = dict["ChargeType"] as? String {
                self.chargeType = value
            }
            if let value = dict["ClickObserveServiceStatus"] as? String {
                self.clickObserveServiceStatus = value
            }
            if let value = dict["CreateTime"] as? String {
                self.createTime = value
            }
            if let value = dict["DBInstanceId"] as? String {
                self.DBInstanceId = value
            }
            if let value = dict["DeletionProtection"] as? Bool {
                self.deletionProtection = value
            }
            if let value = dict["DeploySchema"] as? String {
                self.deploySchema = value
            }
            if let value = dict["Description"] as? String {
                self.description_ = value
            }
            if let value = dict["DisabledPorts"] as? String {
                self.disabledPorts = value
            }
            if let value = dict["Engine"] as? String {
                self.engine = value
            }
            if let value = dict["EngineMinorVersion"] as? String {
                self.engineMinorVersion = value
            }
            if let value = dict["EngineVersion"] as? String {
                self.engineVersion = value
            }
            if let value = dict["ExpireTime"] as? String {
                self.expireTime = value
            }
            if let value = dict["LatestEngineMinorVersion"] as? String {
                self.latestEngineMinorVersion = value
            }
            if let value = dict["LockMode"] as? String {
                self.lockMode = value
            }
            if let value = dict["LockReason"] as? String {
                self.lockReason = value
            }
            if let value = dict["MaintainEndTime"] as? String {
                self.maintainEndTime = value
            }
            if let value = dict["MaintainStartTime"] as? String {
                self.maintainStartTime = value
            }
            if let value = dict["MultiZones"] as? [Any?] {
                var tmp : [DescribeDBInstanceAttributeResponseBody.Data.MultiZones] = []
                for v in value {
                    if v != nil {
                        var model = DescribeDBInstanceAttributeResponseBody.Data.MultiZones()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.multiZones = tmp
            }
            if let value = dict["NodeCount"] as? String {
                self.nodeCount = value
            }
            if let value = dict["NodeScaleMax"] as? String {
                self.nodeScaleMax = value
            }
            if let value = dict["NodeScaleMin"] as? String {
                self.nodeScaleMin = value
            }
            if let value = dict["Nodes"] as? [Any?] {
                var tmp : [DescribeDBInstanceAttributeResponseBody.Data.Nodes] = []
                for v in value {
                    if v != nil {
                        var model = DescribeDBInstanceAttributeResponseBody.Data.Nodes()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.nodes = tmp
            }
            if let value = dict["ObjectStoreSize"] as? String {
                self.objectStoreSize = value
            }
            if let value = dict["RegionId"] as? String {
                self.regionId = value
            }
            if let value = dict["ResourceGroupId"] as? String {
                self.resourceGroupId = value
            }
            if let value = dict["ScaleMax"] as? Int32 {
                self.scaleMax = value
            }
            if let value = dict["ScaleMin"] as? Int32 {
                self.scaleMin = value
            }
            if let value = dict["Status"] as? String {
                self.status = value
            }
            if let value = dict["StorageQuota"] as? String {
                self.storageQuota = value
            }
            if let value = dict["StorageSize"] as? Int32 {
                self.storageSize = value
            }
            if let value = dict["StorageType"] as? String {
                self.storageType = value
            }
            if let value = dict["Tags"] as? [Any?] {
                var tmp : [DescribeDBInstanceAttributeResponseBody.Data.Tags] = []
                for v in value {
                    if v != nil {
                        var model = DescribeDBInstanceAttributeResponseBody.Data.Tags()
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
            if let value = dict["VpcId"] as? String {
                self.vpcId = value
            }
            if let value = dict["ZoneId"] as? String {
                self.zoneId = value
            }
        }
    }
    public var data: DescribeDBInstanceAttributeResponseBody.Data?

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
            var model = DescribeDBInstanceAttributeResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class DescribeDBInstanceAttributeResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeDBInstanceAttributeResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = DescribeDBInstanceAttributeResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DescribeDBInstanceConfigRequest : Tea.TeaModel {
    public var DBInstanceId: String?

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
        if self.DBInstanceId != nil {
            map["DBInstanceId"] = self.DBInstanceId!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["DBInstanceId"] as? String {
            self.DBInstanceId = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
    }
}

public class DescribeDBInstanceConfigResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class Params : Tea.TeaModel {
            public var comment: String?

            public var defaultValue: String?

            public var isDynamic: Int32?

            public var isUserModifiable: Int32?

            public var name: String?

            public var optional_: String?

            public var paramRelyRule: String?

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
                if self.comment != nil {
                    map["Comment"] = self.comment!
                }
                if self.defaultValue != nil {
                    map["DefaultValue"] = self.defaultValue!
                }
                if self.isDynamic != nil {
                    map["IsDynamic"] = self.isDynamic!
                }
                if self.isUserModifiable != nil {
                    map["IsUserModifiable"] = self.isUserModifiable!
                }
                if self.name != nil {
                    map["Name"] = self.name!
                }
                if self.optional_ != nil {
                    map["Optional"] = self.optional_!
                }
                if self.paramRelyRule != nil {
                    map["ParamRelyRule"] = self.paramRelyRule!
                }
                if self.value != nil {
                    map["Value"] = self.value!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["Comment"] as? String {
                    self.comment = value
                }
                if let value = dict["DefaultValue"] as? String {
                    self.defaultValue = value
                }
                if let value = dict["IsDynamic"] as? Int32 {
                    self.isDynamic = value
                }
                if let value = dict["IsUserModifiable"] as? Int32 {
                    self.isUserModifiable = value
                }
                if let value = dict["Name"] as? String {
                    self.name = value
                }
                if let value = dict["Optional"] as? String {
                    self.optional_ = value
                }
                if let value = dict["ParamRelyRule"] as? String {
                    self.paramRelyRule = value
                }
                if let value = dict["Value"] as? String {
                    self.value = value
                }
            }
        }
        public var DBInstanceId: String?

        public var params: [DescribeDBInstanceConfigResponseBody.Data.Params]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.DBInstanceId != nil {
                map["DBInstanceId"] = self.DBInstanceId!
            }
            if self.params != nil {
                var tmp : [Any] = []
                for k in self.params! {
                    tmp.append(k.toMap())
                }
                map["Params"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["DBInstanceId"] as? String {
                self.DBInstanceId = value
            }
            if let value = dict["Params"] as? [Any?] {
                var tmp : [DescribeDBInstanceConfigResponseBody.Data.Params] = []
                for v in value {
                    if v != nil {
                        var model = DescribeDBInstanceConfigResponseBody.Data.Params()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.params = tmp
            }
        }
    }
    public var data: DescribeDBInstanceConfigResponseBody.Data?

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
            var model = DescribeDBInstanceConfigResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class DescribeDBInstanceConfigResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeDBInstanceConfigResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = DescribeDBInstanceConfigResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DescribeDBInstanceConfigChangeLogRequest : Tea.TeaModel {
    public var DBInstanceId: String?

    public var endTime: String?

    public var pageNumber: Int32?

    public var pageSize: Int32?

    public var regionId: String?

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
        if self.DBInstanceId != nil {
            map["DBInstanceId"] = self.DBInstanceId!
        }
        if self.endTime != nil {
            map["EndTime"] = self.endTime!
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
        if self.startTime != nil {
            map["StartTime"] = self.startTime!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["DBInstanceId"] as? String {
            self.DBInstanceId = value
        }
        if let value = dict["EndTime"] as? String {
            self.endTime = value
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
        if let value = dict["StartTime"] as? String {
            self.startTime = value
        }
    }
}

public class DescribeDBInstanceConfigChangeLogResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class ParamChangeLogs : Tea.TeaModel {
            public var applied: Bool?

            public var gmtCreated: String?

            public var gmtModified: String?

            public var ID: Int64?

            public var name: String?

            public var newValue: String?

            public var oldValue: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.applied != nil {
                    map["Applied"] = self.applied!
                }
                if self.gmtCreated != nil {
                    map["GmtCreated"] = self.gmtCreated!
                }
                if self.gmtModified != nil {
                    map["GmtModified"] = self.gmtModified!
                }
                if self.ID != nil {
                    map["ID"] = self.ID!
                }
                if self.name != nil {
                    map["Name"] = self.name!
                }
                if self.newValue != nil {
                    map["NewValue"] = self.newValue!
                }
                if self.oldValue != nil {
                    map["OldValue"] = self.oldValue!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["Applied"] as? Bool {
                    self.applied = value
                }
                if let value = dict["GmtCreated"] as? String {
                    self.gmtCreated = value
                }
                if let value = dict["GmtModified"] as? String {
                    self.gmtModified = value
                }
                if let value = dict["ID"] as? Int64 {
                    self.ID = value
                }
                if let value = dict["Name"] as? String {
                    self.name = value
                }
                if let value = dict["NewValue"] as? String {
                    self.newValue = value
                }
                if let value = dict["OldValue"] as? String {
                    self.oldValue = value
                }
            }
        }
        public var DBInstanceId: String?

        public var paramChangeLogs: [DescribeDBInstanceConfigChangeLogResponseBody.Data.ParamChangeLogs]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.DBInstanceId != nil {
                map["DBInstanceId"] = self.DBInstanceId!
            }
            if self.paramChangeLogs != nil {
                var tmp : [Any] = []
                for k in self.paramChangeLogs! {
                    tmp.append(k.toMap())
                }
                map["ParamChangeLogs"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["DBInstanceId"] as? String {
                self.DBInstanceId = value
            }
            if let value = dict["ParamChangeLogs"] as? [Any?] {
                var tmp : [DescribeDBInstanceConfigChangeLogResponseBody.Data.ParamChangeLogs] = []
                for v in value {
                    if v != nil {
                        var model = DescribeDBInstanceConfigChangeLogResponseBody.Data.ParamChangeLogs()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.paramChangeLogs = tmp
            }
        }
    }
    public var data: DescribeDBInstanceConfigChangeLogResponseBody.Data?

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
            var model = DescribeDBInstanceConfigChangeLogResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class DescribeDBInstanceConfigChangeLogResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeDBInstanceConfigChangeLogResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = DescribeDBInstanceConfigChangeLogResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DescribeDBInstanceDataSourcesRequest : Tea.TeaModel {
    public var DBInstanceId: String?

    public var DBName: String?

    public var regionId: String?

    public var tableName: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.DBInstanceId != nil {
            map["DBInstanceId"] = self.DBInstanceId!
        }
        if self.DBName != nil {
            map["DBName"] = self.DBName!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.tableName != nil {
            map["TableName"] = self.tableName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["DBInstanceId"] as? String {
            self.DBInstanceId = value
        }
        if let value = dict["DBName"] as? String {
            self.DBName = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["TableName"] as? String {
            self.tableName = value
        }
    }
}

public class DescribeDBInstanceDataSourcesResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class Columns : Tea.TeaModel {
            public var columnName: String?

            public var comment: String?

            public var DBName: String?

            public var primaryKey: String?

            public var tableName: String?

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
                if self.columnName != nil {
                    map["ColumnName"] = self.columnName!
                }
                if self.comment != nil {
                    map["Comment"] = self.comment!
                }
                if self.DBName != nil {
                    map["DBName"] = self.DBName!
                }
                if self.primaryKey != nil {
                    map["PrimaryKey"] = self.primaryKey!
                }
                if self.tableName != nil {
                    map["TableName"] = self.tableName!
                }
                if self.type != nil {
                    map["Type"] = self.type!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["ColumnName"] as? String {
                    self.columnName = value
                }
                if let value = dict["Comment"] as? String {
                    self.comment = value
                }
                if let value = dict["DBName"] as? String {
                    self.DBName = value
                }
                if let value = dict["PrimaryKey"] as? String {
                    self.primaryKey = value
                }
                if let value = dict["TableName"] as? String {
                    self.tableName = value
                }
                if let value = dict["Type"] as? String {
                    self.type = value
                }
            }
        }
        public var columns: [DescribeDBInstanceDataSourcesResponseBody.Data.Columns]?

        public var DBInstanceId: String?

        public var schemas: String?

        public var tables: [String]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.columns != nil {
                var tmp : [Any] = []
                for k in self.columns! {
                    tmp.append(k.toMap())
                }
                map["Columns"] = tmp
            }
            if self.DBInstanceId != nil {
                map["DBInstanceId"] = self.DBInstanceId!
            }
            if self.schemas != nil {
                map["Schemas"] = self.schemas!
            }
            if self.tables != nil {
                map["Tables"] = self.tables!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Columns"] as? [Any?] {
                var tmp : [DescribeDBInstanceDataSourcesResponseBody.Data.Columns] = []
                for v in value {
                    if v != nil {
                        var model = DescribeDBInstanceDataSourcesResponseBody.Data.Columns()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.columns = tmp
            }
            if let value = dict["DBInstanceId"] as? String {
                self.DBInstanceId = value
            }
            if let value = dict["Schemas"] as? String {
                self.schemas = value
            }
            if let value = dict["Tables"] as? [String] {
                self.tables = value
            }
        }
    }
    public var data: DescribeDBInstanceDataSourcesResponseBody.Data?

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
            var model = DescribeDBInstanceDataSourcesResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class DescribeDBInstanceDataSourcesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeDBInstanceDataSourcesResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = DescribeDBInstanceDataSourcesResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DescribeDBInstancesRequest : Tea.TeaModel {
    public var DBInstanceIds: String?

    public var DBInstanceStatus: String?

    public var description_: String?

    public var pageNumber: Int32?

    public var pageSize: Int32?

    public var regionId: String?

    public var resourceGroupId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.DBInstanceIds != nil {
            map["DBInstanceIds"] = self.DBInstanceIds!
        }
        if self.DBInstanceStatus != nil {
            map["DBInstanceStatus"] = self.DBInstanceStatus!
        }
        if self.description_ != nil {
            map["Description"] = self.description_!
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
        if self.resourceGroupId != nil {
            map["ResourceGroupId"] = self.resourceGroupId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["DBInstanceIds"] as? String {
            self.DBInstanceIds = value
        }
        if let value = dict["DBInstanceStatus"] as? String {
            self.DBInstanceStatus = value
        }
        if let value = dict["Description"] as? String {
            self.description_ = value
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
        if let value = dict["ResourceGroupId"] as? String {
            self.resourceGroupId = value
        }
    }
}

public class DescribeDBInstancesResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class DBInstances : Tea.TeaModel {
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
            public var aliUid: String?

            public var bid: String?

            public var chargeType: String?

            public var createTime: String?

            public var DBInstanceId: String?

            public var deletionProtection: String?

            public var description_: String?

            public var engine: String?

            public var engineVersion: String?

            public var expireTime: String?

            public var lockMode: String?

            public var lockReason: String?

            public var maintainEndTime: String?

            public var maintainStartTime: String?

            public var regionId: String?

            public var resourceGroupId: String?

            public var scaleMax: Int32?

            public var scaleMin: Int32?

            public var status: String?

            public var storageType: String?

            public var tags: [DescribeDBInstancesResponseBody.Data.DBInstances.Tags]?

            public var vSwitchId: String?

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
                if self.aliUid != nil {
                    map["AliUid"] = self.aliUid!
                }
                if self.bid != nil {
                    map["Bid"] = self.bid!
                }
                if self.chargeType != nil {
                    map["ChargeType"] = self.chargeType!
                }
                if self.createTime != nil {
                    map["CreateTime"] = self.createTime!
                }
                if self.DBInstanceId != nil {
                    map["DBInstanceId"] = self.DBInstanceId!
                }
                if self.deletionProtection != nil {
                    map["DeletionProtection"] = self.deletionProtection!
                }
                if self.description_ != nil {
                    map["Description"] = self.description_!
                }
                if self.engine != nil {
                    map["Engine"] = self.engine!
                }
                if self.engineVersion != nil {
                    map["EngineVersion"] = self.engineVersion!
                }
                if self.expireTime != nil {
                    map["ExpireTime"] = self.expireTime!
                }
                if self.lockMode != nil {
                    map["LockMode"] = self.lockMode!
                }
                if self.lockReason != nil {
                    map["LockReason"] = self.lockReason!
                }
                if self.maintainEndTime != nil {
                    map["MaintainEndTime"] = self.maintainEndTime!
                }
                if self.maintainStartTime != nil {
                    map["MaintainStartTime"] = self.maintainStartTime!
                }
                if self.regionId != nil {
                    map["RegionId"] = self.regionId!
                }
                if self.resourceGroupId != nil {
                    map["ResourceGroupId"] = self.resourceGroupId!
                }
                if self.scaleMax != nil {
                    map["ScaleMax"] = self.scaleMax!
                }
                if self.scaleMin != nil {
                    map["ScaleMin"] = self.scaleMin!
                }
                if self.status != nil {
                    map["Status"] = self.status!
                }
                if self.storageType != nil {
                    map["StorageType"] = self.storageType!
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
                if self.vpcId != nil {
                    map["VpcId"] = self.vpcId!
                }
                if self.zoneId != nil {
                    map["ZoneId"] = self.zoneId!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["AliUid"] as? String {
                    self.aliUid = value
                }
                if let value = dict["Bid"] as? String {
                    self.bid = value
                }
                if let value = dict["ChargeType"] as? String {
                    self.chargeType = value
                }
                if let value = dict["CreateTime"] as? String {
                    self.createTime = value
                }
                if let value = dict["DBInstanceId"] as? String {
                    self.DBInstanceId = value
                }
                if let value = dict["DeletionProtection"] as? String {
                    self.deletionProtection = value
                }
                if let value = dict["Description"] as? String {
                    self.description_ = value
                }
                if let value = dict["Engine"] as? String {
                    self.engine = value
                }
                if let value = dict["EngineVersion"] as? String {
                    self.engineVersion = value
                }
                if let value = dict["ExpireTime"] as? String {
                    self.expireTime = value
                }
                if let value = dict["LockMode"] as? String {
                    self.lockMode = value
                }
                if let value = dict["LockReason"] as? String {
                    self.lockReason = value
                }
                if let value = dict["MaintainEndTime"] as? String {
                    self.maintainEndTime = value
                }
                if let value = dict["MaintainStartTime"] as? String {
                    self.maintainStartTime = value
                }
                if let value = dict["RegionId"] as? String {
                    self.regionId = value
                }
                if let value = dict["ResourceGroupId"] as? String {
                    self.resourceGroupId = value
                }
                if let value = dict["ScaleMax"] as? Int32 {
                    self.scaleMax = value
                }
                if let value = dict["ScaleMin"] as? Int32 {
                    self.scaleMin = value
                }
                if let value = dict["Status"] as? String {
                    self.status = value
                }
                if let value = dict["StorageType"] as? String {
                    self.storageType = value
                }
                if let value = dict["Tags"] as? [Any?] {
                    var tmp : [DescribeDBInstancesResponseBody.Data.DBInstances.Tags] = []
                    for v in value {
                        if v != nil {
                            var model = DescribeDBInstancesResponseBody.Data.DBInstances.Tags()
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
                if let value = dict["VpcId"] as? String {
                    self.vpcId = value
                }
                if let value = dict["ZoneId"] as? String {
                    self.zoneId = value
                }
            }
        }
        public var DBInstances: [DescribeDBInstancesResponseBody.Data.DBInstances]?

        public var pageNumber: Int32?

        public var pageSize: Int32?

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
            if self.DBInstances != nil {
                var tmp : [Any] = []
                for k in self.DBInstances! {
                    tmp.append(k.toMap())
                }
                map["DBInstances"] = tmp
            }
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
            if let value = dict["DBInstances"] as? [Any?] {
                var tmp : [DescribeDBInstancesResponseBody.Data.DBInstances] = []
                for v in value {
                    if v != nil {
                        var model = DescribeDBInstancesResponseBody.Data.DBInstances()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.DBInstances = tmp
            }
            if let value = dict["PageNumber"] as? Int32 {
                self.pageNumber = value
            }
            if let value = dict["PageSize"] as? Int32 {
                self.pageSize = value
            }
            if let value = dict["TotalCount"] as? String {
                self.totalCount = value
            }
        }
    }
    public var data: DescribeDBInstancesResponseBody.Data?

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
            var model = DescribeDBInstancesResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class DescribeDBInstancesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeDBInstancesResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = DescribeDBInstancesResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DescribeEndpointsRequest : Tea.TeaModel {
    public var DBInstanceId: String?

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
        if self.DBInstanceId != nil {
            map["DBInstanceId"] = self.DBInstanceId!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["DBInstanceId"] as? String {
            self.DBInstanceId = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
    }
}

public class DescribeEndpointsResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class Endpoints : Tea.TeaModel {
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

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["Port"] as? Int32 {
                        self.port = value
                    }
                    if let value = dict["Protocol"] as? String {
                        self.protocol_ = value
                    }
                }
            }
            public var computingGroupId: String?

            public var connectionString: String?

            public var IPAddress: String?

            public var netType: String?

            public var ports: [DescribeEndpointsResponseBody.Data.Endpoints.Ports]?

            public var status: String?

            public var vSwitchId: String?

            public var vpcId: String?

            public var vpcInstanceId: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.computingGroupId != nil {
                    map["ComputingGroupId"] = self.computingGroupId!
                }
                if self.connectionString != nil {
                    map["ConnectionString"] = self.connectionString!
                }
                if self.IPAddress != nil {
                    map["IPAddress"] = self.IPAddress!
                }
                if self.netType != nil {
                    map["NetType"] = self.netType!
                }
                if self.ports != nil {
                    var tmp : [Any] = []
                    for k in self.ports! {
                        tmp.append(k.toMap())
                    }
                    map["Ports"] = tmp
                }
                if self.status != nil {
                    map["Status"] = self.status!
                }
                if self.vSwitchId != nil {
                    map["VSwitchId"] = self.vSwitchId!
                }
                if self.vpcId != nil {
                    map["VpcId"] = self.vpcId!
                }
                if self.vpcInstanceId != nil {
                    map["VpcInstanceId"] = self.vpcInstanceId!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["ComputingGroupId"] as? String {
                    self.computingGroupId = value
                }
                if let value = dict["ConnectionString"] as? String {
                    self.connectionString = value
                }
                if let value = dict["IPAddress"] as? String {
                    self.IPAddress = value
                }
                if let value = dict["NetType"] as? String {
                    self.netType = value
                }
                if let value = dict["Ports"] as? [Any?] {
                    var tmp : [DescribeEndpointsResponseBody.Data.Endpoints.Ports] = []
                    for v in value {
                        if v != nil {
                            var model = DescribeEndpointsResponseBody.Data.Endpoints.Ports()
                            if v != nil {
                                model.fromMap(v as? [String: Any?])
                            }
                            tmp.append(model)
                        }
                    }
                    self.ports = tmp
                }
                if let value = dict["Status"] as? String {
                    self.status = value
                }
                if let value = dict["VSwitchId"] as? String {
                    self.vSwitchId = value
                }
                if let value = dict["VpcId"] as? String {
                    self.vpcId = value
                }
                if let value = dict["VpcInstanceId"] as? String {
                    self.vpcInstanceId = value
                }
            }
        }
        public var endpoints: [DescribeEndpointsResponseBody.Data.Endpoints]?

        public var instanceNetworkType: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.endpoints != nil {
                var tmp : [Any] = []
                for k in self.endpoints! {
                    tmp.append(k.toMap())
                }
                map["Endpoints"] = tmp
            }
            if self.instanceNetworkType != nil {
                map["InstanceNetworkType"] = self.instanceNetworkType!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Endpoints"] as? [Any?] {
                var tmp : [DescribeEndpointsResponseBody.Data.Endpoints] = []
                for v in value {
                    if v != nil {
                        var model = DescribeEndpointsResponseBody.Data.Endpoints()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.endpoints = tmp
            }
            if let value = dict["InstanceNetworkType"] as? String {
                self.instanceNetworkType = value
            }
        }
    }
    public var data: DescribeEndpointsResponseBody.Data?

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
            var model = DescribeEndpointsResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class DescribeEndpointsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeEndpointsResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = DescribeEndpointsResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DescribeProcessListRequest : Tea.TeaModel {
    public var computingGroupId: String?

    public var DBInstanceId: String?

    public var initialQueryId: String?

    public var initialUser: String?

    public var keyword: String?

    public var pageNumber: Int32?

    public var pageSize: Int32?

    public var queryDurationMs: String?

    public var queryOrder: Int64?

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
        if self.computingGroupId != nil {
            map["ComputingGroupId"] = self.computingGroupId!
        }
        if self.DBInstanceId != nil {
            map["DBInstanceId"] = self.DBInstanceId!
        }
        if self.initialQueryId != nil {
            map["InitialQueryId"] = self.initialQueryId!
        }
        if self.initialUser != nil {
            map["InitialUser"] = self.initialUser!
        }
        if self.keyword != nil {
            map["Keyword"] = self.keyword!
        }
        if self.pageNumber != nil {
            map["PageNumber"] = self.pageNumber!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.queryDurationMs != nil {
            map["QueryDurationMs"] = self.queryDurationMs!
        }
        if self.queryOrder != nil {
            map["QueryOrder"] = self.queryOrder!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ComputingGroupId"] as? String {
            self.computingGroupId = value
        }
        if let value = dict["DBInstanceId"] as? String {
            self.DBInstanceId = value
        }
        if let value = dict["InitialQueryId"] as? String {
            self.initialQueryId = value
        }
        if let value = dict["InitialUser"] as? String {
            self.initialUser = value
        }
        if let value = dict["Keyword"] as? String {
            self.keyword = value
        }
        if let value = dict["PageNumber"] as? Int32 {
            self.pageNumber = value
        }
        if let value = dict["PageSize"] as? Int32 {
            self.pageSize = value
        }
        if let value = dict["QueryDurationMs"] as? String {
            self.queryDurationMs = value
        }
        if let value = dict["QueryOrder"] as? Int64 {
            self.queryOrder = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
    }
}

public class DescribeProcessListResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class ResultSet : Tea.TeaModel {
            public var initialAddress: String?

            public var initialQueryId: String?

            public var initialUser: String?

            public var query: String?

            public var queryDurationMs: Int64?

            public var queryStartTime: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.initialAddress != nil {
                    map["InitialAddress"] = self.initialAddress!
                }
                if self.initialQueryId != nil {
                    map["InitialQueryId"] = self.initialQueryId!
                }
                if self.initialUser != nil {
                    map["InitialUser"] = self.initialUser!
                }
                if self.query != nil {
                    map["Query"] = self.query!
                }
                if self.queryDurationMs != nil {
                    map["QueryDurationMs"] = self.queryDurationMs!
                }
                if self.queryStartTime != nil {
                    map["QueryStartTime"] = self.queryStartTime!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["InitialAddress"] as? String {
                    self.initialAddress = value
                }
                if let value = dict["InitialQueryId"] as? String {
                    self.initialQueryId = value
                }
                if let value = dict["InitialUser"] as? String {
                    self.initialUser = value
                }
                if let value = dict["Query"] as? String {
                    self.query = value
                }
                if let value = dict["QueryDurationMs"] as? Int64 {
                    self.queryDurationMs = value
                }
                if let value = dict["QueryStartTime"] as? String {
                    self.queryStartTime = value
                }
            }
        }
        public var DBInstanceID: Int32?

        public var DBInstanceName: String?

        public var resultSet: [DescribeProcessListResponseBody.Data.ResultSet]?

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
            if self.DBInstanceID != nil {
                map["DBInstanceID"] = self.DBInstanceID!
            }
            if self.DBInstanceName != nil {
                map["DBInstanceName"] = self.DBInstanceName!
            }
            if self.resultSet != nil {
                var tmp : [Any] = []
                for k in self.resultSet! {
                    tmp.append(k.toMap())
                }
                map["ResultSet"] = tmp
            }
            if self.totalCount != nil {
                map["TotalCount"] = self.totalCount!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["DBInstanceID"] as? Int32 {
                self.DBInstanceID = value
            }
            if let value = dict["DBInstanceName"] as? String {
                self.DBInstanceName = value
            }
            if let value = dict["ResultSet"] as? [Any?] {
                var tmp : [DescribeProcessListResponseBody.Data.ResultSet] = []
                for v in value {
                    if v != nil {
                        var model = DescribeProcessListResponseBody.Data.ResultSet()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.resultSet = tmp
            }
            if let value = dict["TotalCount"] as? Int32 {
                self.totalCount = value
            }
        }
    }
    public var data: DescribeProcessListResponseBody.Data?

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
            var model = DescribeProcessListResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class DescribeProcessListResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeProcessListResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = DescribeProcessListResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DescribeSecurityIPListRequest : Tea.TeaModel {
    public var DBInstanceId: String?

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
        if self.DBInstanceId != nil {
            map["DBInstanceId"] = self.DBInstanceId!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["DBInstanceId"] as? String {
            self.DBInstanceId = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
    }
}

public class DescribeSecurityIPListResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class GroupItems : Tea.TeaModel {
            public var groupName: String?

            public var groupTag: String?

            public var securityIPList: String?

            public var securityIPType: String?

            public var whitelistNetType: String?

            public override init() {
                super.init()
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
                if self.groupTag != nil {
                    map["GroupTag"] = self.groupTag!
                }
                if self.securityIPList != nil {
                    map["SecurityIPList"] = self.securityIPList!
                }
                if self.securityIPType != nil {
                    map["SecurityIPType"] = self.securityIPType!
                }
                if self.whitelistNetType != nil {
                    map["WhitelistNetType"] = self.whitelistNetType!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["GroupName"] as? String {
                    self.groupName = value
                }
                if let value = dict["GroupTag"] as? String {
                    self.groupTag = value
                }
                if let value = dict["SecurityIPList"] as? String {
                    self.securityIPList = value
                }
                if let value = dict["SecurityIPType"] as? String {
                    self.securityIPType = value
                }
                if let value = dict["WhitelistNetType"] as? String {
                    self.whitelistNetType = value
                }
            }
        }
        public var DBInstanceID: Int32?

        public var DBInstanceName: String?

        public var groupItems: [DescribeSecurityIPListResponseBody.Data.GroupItems]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.DBInstanceID != nil {
                map["DBInstanceID"] = self.DBInstanceID!
            }
            if self.DBInstanceName != nil {
                map["DBInstanceName"] = self.DBInstanceName!
            }
            if self.groupItems != nil {
                var tmp : [Any] = []
                for k in self.groupItems! {
                    tmp.append(k.toMap())
                }
                map["GroupItems"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["DBInstanceID"] as? Int32 {
                self.DBInstanceID = value
            }
            if let value = dict["DBInstanceName"] as? String {
                self.DBInstanceName = value
            }
            if let value = dict["GroupItems"] as? [Any?] {
                var tmp : [DescribeSecurityIPListResponseBody.Data.GroupItems] = []
                for v in value {
                    if v != nil {
                        var model = DescribeSecurityIPListResponseBody.Data.GroupItems()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.groupItems = tmp
            }
        }
    }
    public var data: DescribeSecurityIPListResponseBody.Data?

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
            var model = DescribeSecurityIPListResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class DescribeSecurityIPListResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeSecurityIPListResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = DescribeSecurityIPListResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DescribeSlowLogRecordsRequest : Tea.TeaModel {
    public var computingGroupId: String?

    public var DBInstanceId: String?

    public var endTime: String?

    public var pageNumber: Int32?

    public var pageSize: Int32?

    public var queryDurationMs: String?

    public var regionId: String?

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
        if self.computingGroupId != nil {
            map["ComputingGroupId"] = self.computingGroupId!
        }
        if self.DBInstanceId != nil {
            map["DBInstanceId"] = self.DBInstanceId!
        }
        if self.endTime != nil {
            map["EndTime"] = self.endTime!
        }
        if self.pageNumber != nil {
            map["PageNumber"] = self.pageNumber!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.queryDurationMs != nil {
            map["QueryDurationMs"] = self.queryDurationMs!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.startTime != nil {
            map["StartTime"] = self.startTime!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ComputingGroupId"] as? String {
            self.computingGroupId = value
        }
        if let value = dict["DBInstanceId"] as? String {
            self.DBInstanceId = value
        }
        if let value = dict["EndTime"] as? String {
            self.endTime = value
        }
        if let value = dict["PageNumber"] as? Int32 {
            self.pageNumber = value
        }
        if let value = dict["PageSize"] as? Int32 {
            self.pageSize = value
        }
        if let value = dict["QueryDurationMs"] as? String {
            self.queryDurationMs = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["StartTime"] as? String {
            self.startTime = value
        }
    }
}

public class DescribeSlowLogRecordsResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class ResultSet : Tea.TeaModel {
            public var initialAddress: String?

            public var initialQueryId: String?

            public var initialUser: String?

            public var memoryUsage: Int64?

            public var query: String?

            public var queryDurationMs: Int64?

            public var queryStartTime: String?

            public var readBytes: Int64?

            public var readRows: Int64?

            public var resultBytes: Int64?

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
                if self.initialAddress != nil {
                    map["InitialAddress"] = self.initialAddress!
                }
                if self.initialQueryId != nil {
                    map["InitialQueryId"] = self.initialQueryId!
                }
                if self.initialUser != nil {
                    map["InitialUser"] = self.initialUser!
                }
                if self.memoryUsage != nil {
                    map["MemoryUsage"] = self.memoryUsage!
                }
                if self.query != nil {
                    map["Query"] = self.query!
                }
                if self.queryDurationMs != nil {
                    map["QueryDurationMs"] = self.queryDurationMs!
                }
                if self.queryStartTime != nil {
                    map["QueryStartTime"] = self.queryStartTime!
                }
                if self.readBytes != nil {
                    map["ReadBytes"] = self.readBytes!
                }
                if self.readRows != nil {
                    map["ReadRows"] = self.readRows!
                }
                if self.resultBytes != nil {
                    map["ResultBytes"] = self.resultBytes!
                }
                if self.type != nil {
                    map["Type"] = self.type!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["InitialAddress"] as? String {
                    self.initialAddress = value
                }
                if let value = dict["InitialQueryId"] as? String {
                    self.initialQueryId = value
                }
                if let value = dict["InitialUser"] as? String {
                    self.initialUser = value
                }
                if let value = dict["MemoryUsage"] as? Int64 {
                    self.memoryUsage = value
                }
                if let value = dict["Query"] as? String {
                    self.query = value
                }
                if let value = dict["QueryDurationMs"] as? Int64 {
                    self.queryDurationMs = value
                }
                if let value = dict["QueryStartTime"] as? String {
                    self.queryStartTime = value
                }
                if let value = dict["ReadBytes"] as? Int64 {
                    self.readBytes = value
                }
                if let value = dict["ReadRows"] as? Int64 {
                    self.readRows = value
                }
                if let value = dict["ResultBytes"] as? Int64 {
                    self.resultBytes = value
                }
                if let value = dict["Type"] as? String {
                    self.type = value
                }
            }
        }
        public var DBInstanceID: Int32?

        public var DBInstanceName: String?

        public var resultSet: [DescribeSlowLogRecordsResponseBody.Data.ResultSet]?

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
            if self.DBInstanceID != nil {
                map["DBInstanceID"] = self.DBInstanceID!
            }
            if self.DBInstanceName != nil {
                map["DBInstanceName"] = self.DBInstanceName!
            }
            if self.resultSet != nil {
                var tmp : [Any] = []
                for k in self.resultSet! {
                    tmp.append(k.toMap())
                }
                map["ResultSet"] = tmp
            }
            if self.totalCount != nil {
                map["TotalCount"] = self.totalCount!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["DBInstanceID"] as? Int32 {
                self.DBInstanceID = value
            }
            if let value = dict["DBInstanceName"] as? String {
                self.DBInstanceName = value
            }
            if let value = dict["ResultSet"] as? [Any?] {
                var tmp : [DescribeSlowLogRecordsResponseBody.Data.ResultSet] = []
                for v in value {
                    if v != nil {
                        var model = DescribeSlowLogRecordsResponseBody.Data.ResultSet()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.resultSet = tmp
            }
            if let value = dict["TotalCount"] as? Int32 {
                self.totalCount = value
            }
        }
    }
    public var data: DescribeSlowLogRecordsResponseBody.Data?

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
            var model = DescribeSlowLogRecordsResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class DescribeSlowLogRecordsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeSlowLogRecordsResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = DescribeSlowLogRecordsResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DescribeSlowLogTrendRequest : Tea.TeaModel {
    public var computingGroupId: String?

    public var DBInstanceId: String?

    public var endTime: String?

    public var product: String?

    public var queryDurationMs: String?

    public var regionId: String?

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
        if self.computingGroupId != nil {
            map["ComputingGroupId"] = self.computingGroupId!
        }
        if self.DBInstanceId != nil {
            map["DBInstanceId"] = self.DBInstanceId!
        }
        if self.endTime != nil {
            map["EndTime"] = self.endTime!
        }
        if self.product != nil {
            map["Product"] = self.product!
        }
        if self.queryDurationMs != nil {
            map["QueryDurationMs"] = self.queryDurationMs!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.startTime != nil {
            map["StartTime"] = self.startTime!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ComputingGroupId"] as? String {
            self.computingGroupId = value
        }
        if let value = dict["DBInstanceId"] as? String {
            self.DBInstanceId = value
        }
        if let value = dict["EndTime"] as? String {
            self.endTime = value
        }
        if let value = dict["Product"] as? String {
            self.product = value
        }
        if let value = dict["QueryDurationMs"] as? String {
            self.queryDurationMs = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["StartTime"] as? String {
            self.startTime = value
        }
    }
}

public class DescribeSlowLogTrendResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class ResultSet : Tea.TeaModel {
            public var avgQueryDurationMs: Int64?

            public var cnt: Int64?

            public var maxQueryDurationMs: Int64?

            public var minQueryDurationMs: Int64?

            public var queryStartTime: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.avgQueryDurationMs != nil {
                    map["AvgQueryDurationMs"] = self.avgQueryDurationMs!
                }
                if self.cnt != nil {
                    map["Cnt"] = self.cnt!
                }
                if self.maxQueryDurationMs != nil {
                    map["MaxQueryDurationMs"] = self.maxQueryDurationMs!
                }
                if self.minQueryDurationMs != nil {
                    map["MinQueryDurationMs"] = self.minQueryDurationMs!
                }
                if self.queryStartTime != nil {
                    map["QueryStartTime"] = self.queryStartTime!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["AvgQueryDurationMs"] as? Int64 {
                    self.avgQueryDurationMs = value
                }
                if let value = dict["Cnt"] as? Int64 {
                    self.cnt = value
                }
                if let value = dict["MaxQueryDurationMs"] as? Int64 {
                    self.maxQueryDurationMs = value
                }
                if let value = dict["MinQueryDurationMs"] as? Int64 {
                    self.minQueryDurationMs = value
                }
                if let value = dict["QueryStartTime"] as? String {
                    self.queryStartTime = value
                }
            }
        }
        public var DBInstanceID: Int32?

        public var DBInstanceName: String?

        public var resultSet: [DescribeSlowLogTrendResponseBody.Data.ResultSet]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.DBInstanceID != nil {
                map["DBInstanceID"] = self.DBInstanceID!
            }
            if self.DBInstanceName != nil {
                map["DBInstanceName"] = self.DBInstanceName!
            }
            if self.resultSet != nil {
                var tmp : [Any] = []
                for k in self.resultSet! {
                    tmp.append(k.toMap())
                }
                map["ResultSet"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["DBInstanceID"] as? Int32 {
                self.DBInstanceID = value
            }
            if let value = dict["DBInstanceName"] as? String {
                self.DBInstanceName = value
            }
            if let value = dict["ResultSet"] as? [Any?] {
                var tmp : [DescribeSlowLogTrendResponseBody.Data.ResultSet] = []
                for v in value {
                    if v != nil {
                        var model = DescribeSlowLogTrendResponseBody.Data.ResultSet()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.resultSet = tmp
            }
        }
    }
    public var data: DescribeSlowLogTrendResponseBody.Data?

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
            var model = DescribeSlowLogTrendResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class DescribeSlowLogTrendResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeSlowLogTrendResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = DescribeSlowLogTrendResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DetachWhitelistTemplateToInstanceRequest : Tea.TeaModel {
    public var DBInstanceId: String?

    public var regionId: String?

    public var templateId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.DBInstanceId != nil {
            map["DBInstanceId"] = self.DBInstanceId!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.templateId != nil {
            map["TemplateId"] = self.templateId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["DBInstanceId"] as? String {
            self.DBInstanceId = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["TemplateId"] as? String {
            self.templateId = value
        }
    }
}

public class DetachWhitelistTemplateToInstanceResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class DetachFailList : Tea.TeaModel {
            public var DBInstanceId: String?

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
                if self.DBInstanceId != nil {
                    map["DBInstanceId"] = self.DBInstanceId!
                }
                if self.reason != nil {
                    map["Reason"] = self.reason!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["DBInstanceId"] as? String {
                    self.DBInstanceId = value
                }
                if let value = dict["Reason"] as? String {
                    self.reason = value
                }
            }
        }
        public class DetachSuccessedList : Tea.TeaModel {
            public class Templates : Tea.TeaModel {
                public class DbInstances : Tea.TeaModel {
                    public var DBInstanceId: String?

                    public override init() {
                        super.init()
                    }

                    public init(_ dict: [String: Any]) {
                        super.init()
                        self.fromMap(dict)
                    }

                    public override func validate() throws -> Void {
                    }

                    public override func toMap() -> [String : Any] {
                        var map = super.toMap()
                        if self.DBInstanceId != nil {
                            map["DBInstanceId"] = self.DBInstanceId!
                        }
                        return map
                    }

                    public override func fromMap(_ dict: [String: Any?]?) -> Void {
                        guard let dict else { return }
                        if let value = dict["DBInstanceId"] as? String {
                            self.DBInstanceId = value
                        }
                    }
                }
                public var dbInstances: [DetachWhitelistTemplateToInstanceResponseBody.Data.DetachSuccessedList.Templates.DbInstances]?

                public var securityIPList: String?

                public var templateId: String?

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
                    if self.dbInstances != nil {
                        var tmp : [Any] = []
                        for k in self.dbInstances! {
                            tmp.append(k.toMap())
                        }
                        map["DbInstances"] = tmp
                    }
                    if self.securityIPList != nil {
                        map["SecurityIPList"] = self.securityIPList!
                    }
                    if self.templateId != nil {
                        map["TemplateId"] = self.templateId!
                    }
                    if self.templateName != nil {
                        map["TemplateName"] = self.templateName!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["DbInstances"] as? [Any?] {
                        var tmp : [DetachWhitelistTemplateToInstanceResponseBody.Data.DetachSuccessedList.Templates.DbInstances] = []
                        for v in value {
                            if v != nil {
                                var model = DetachWhitelistTemplateToInstanceResponseBody.Data.DetachSuccessedList.Templates.DbInstances()
                                if v != nil {
                                    model.fromMap(v as? [String: Any?])
                                }
                                tmp.append(model)
                            }
                        }
                        self.dbInstances = tmp
                    }
                    if let value = dict["SecurityIPList"] as? String {
                        self.securityIPList = value
                    }
                    if let value = dict["TemplateId"] as? String {
                        self.templateId = value
                    }
                    if let value = dict["TemplateName"] as? String {
                        self.templateName = value
                    }
                }
            }
            public var DBInstanceId: String?

            public var templates: [DetachWhitelistTemplateToInstanceResponseBody.Data.DetachSuccessedList.Templates]?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.DBInstanceId != nil {
                    map["DBInstanceId"] = self.DBInstanceId!
                }
                if self.templates != nil {
                    var tmp : [Any] = []
                    for k in self.templates! {
                        tmp.append(k.toMap())
                    }
                    map["Templates"] = tmp
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["DBInstanceId"] as? String {
                    self.DBInstanceId = value
                }
                if let value = dict["Templates"] as? [Any?] {
                    var tmp : [DetachWhitelistTemplateToInstanceResponseBody.Data.DetachSuccessedList.Templates] = []
                    for v in value {
                        if v != nil {
                            var model = DetachWhitelistTemplateToInstanceResponseBody.Data.DetachSuccessedList.Templates()
                            if v != nil {
                                model.fromMap(v as? [String: Any?])
                            }
                            tmp.append(model)
                        }
                    }
                    self.templates = tmp
                }
            }
        }
        public var detachFailList: [DetachWhitelistTemplateToInstanceResponseBody.Data.DetachFailList]?

        public var detachSuccessedList: [DetachWhitelistTemplateToInstanceResponseBody.Data.DetachSuccessedList]?

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
            if self.detachFailList != nil {
                var tmp : [Any] = []
                for k in self.detachFailList! {
                    tmp.append(k.toMap())
                }
                map["DetachFailList"] = tmp
            }
            if self.detachSuccessedList != nil {
                var tmp : [Any] = []
                for k in self.detachSuccessedList! {
                    tmp.append(k.toMap())
                }
                map["DetachSuccessedList"] = tmp
            }
            if self.status != nil {
                map["Status"] = self.status!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["DetachFailList"] as? [Any?] {
                var tmp : [DetachWhitelistTemplateToInstanceResponseBody.Data.DetachFailList] = []
                for v in value {
                    if v != nil {
                        var model = DetachWhitelistTemplateToInstanceResponseBody.Data.DetachFailList()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.detachFailList = tmp
            }
            if let value = dict["DetachSuccessedList"] as? [Any?] {
                var tmp : [DetachWhitelistTemplateToInstanceResponseBody.Data.DetachSuccessedList] = []
                for v in value {
                    if v != nil {
                        var model = DetachWhitelistTemplateToInstanceResponseBody.Data.DetachSuccessedList()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.detachSuccessedList = tmp
            }
            if let value = dict["Status"] as? String {
                self.status = value
            }
        }
    }
    public var data: DetachWhitelistTemplateToInstanceResponseBody.Data?

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
            var model = DetachWhitelistTemplateToInstanceResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class DetachWhitelistTemplateToInstanceResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DetachWhitelistTemplateToInstanceResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = DetachWhitelistTemplateToInstanceResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetWhitelistTemplateRequest : Tea.TeaModel {
    public var regionId: String?

    public var templateId: String?

    public override init() {
        super.init()
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
        if self.templateId != nil {
            map["TemplateId"] = self.templateId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["TemplateId"] as? String {
            self.templateId = value
        }
    }
}

public class GetWhitelistTemplateResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class Templates : Tea.TeaModel {
            public class DbInstances : Tea.TeaModel {
                public var DBInstanceId: String?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.DBInstanceId != nil {
                        map["DBInstanceId"] = self.DBInstanceId!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["DBInstanceId"] as? String {
                        self.DBInstanceId = value
                    }
                }
            }
            public var dbInstances: [GetWhitelistTemplateResponseBody.Data.Templates.DbInstances]?

            public var securityIPList: String?

            public var templateId: String?

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
                if self.dbInstances != nil {
                    var tmp : [Any] = []
                    for k in self.dbInstances! {
                        tmp.append(k.toMap())
                    }
                    map["DbInstances"] = tmp
                }
                if self.securityIPList != nil {
                    map["SecurityIPList"] = self.securityIPList!
                }
                if self.templateId != nil {
                    map["TemplateId"] = self.templateId!
                }
                if self.templateName != nil {
                    map["TemplateName"] = self.templateName!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["DbInstances"] as? [Any?] {
                    var tmp : [GetWhitelistTemplateResponseBody.Data.Templates.DbInstances] = []
                    for v in value {
                        if v != nil {
                            var model = GetWhitelistTemplateResponseBody.Data.Templates.DbInstances()
                            if v != nil {
                                model.fromMap(v as? [String: Any?])
                            }
                            tmp.append(model)
                        }
                    }
                    self.dbInstances = tmp
                }
                if let value = dict["SecurityIPList"] as? String {
                    self.securityIPList = value
                }
                if let value = dict["TemplateId"] as? String {
                    self.templateId = value
                }
                if let value = dict["TemplateName"] as? String {
                    self.templateName = value
                }
            }
        }
        public var templates: [GetWhitelistTemplateResponseBody.Data.Templates]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.templates != nil {
                var tmp : [Any] = []
                for k in self.templates! {
                    tmp.append(k.toMap())
                }
                map["Templates"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Templates"] as? [Any?] {
                var tmp : [GetWhitelistTemplateResponseBody.Data.Templates] = []
                for v in value {
                    if v != nil {
                        var model = GetWhitelistTemplateResponseBody.Data.Templates()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.templates = tmp
            }
        }
    }
    public var data: GetWhitelistTemplateResponseBody.Data?

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
            var model = GetWhitelistTemplateResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class GetWhitelistTemplateResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetWhitelistTemplateResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = GetWhitelistTemplateResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class KillProcessRequest : Tea.TeaModel {
    public var computingGroupId: String?

    public var DBInstanceId: String?

    public var initialQueryId: String?

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
        if self.computingGroupId != nil {
            map["ComputingGroupId"] = self.computingGroupId!
        }
        if self.DBInstanceId != nil {
            map["DBInstanceId"] = self.DBInstanceId!
        }
        if self.initialQueryId != nil {
            map["InitialQueryId"] = self.initialQueryId!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ComputingGroupId"] as? String {
            self.computingGroupId = value
        }
        if let value = dict["DBInstanceId"] as? String {
            self.DBInstanceId = value
        }
        if let value = dict["InitialQueryId"] as? String {
            self.initialQueryId = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
    }
}

public class KillProcessResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var count: Int64?

        public var DBInstanceID: Int32?

        public var DBInstanceName: String?

        public override init() {
            super.init()
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
            if self.DBInstanceID != nil {
                map["DBInstanceID"] = self.DBInstanceID!
            }
            if self.DBInstanceName != nil {
                map["DBInstanceName"] = self.DBInstanceName!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Count"] as? Int64 {
                self.count = value
            }
            if let value = dict["DBInstanceID"] as? Int32 {
                self.DBInstanceID = value
            }
            if let value = dict["DBInstanceName"] as? String {
                self.DBInstanceName = value
            }
        }
    }
    public var data: KillProcessResponseBody.Data?

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
            var model = KillProcessResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class KillProcessResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: KillProcessResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = KillProcessResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ListInstanceLinkedWhitelistTemplatesRequest : Tea.TeaModel {
    public var DBInstanceId: String?

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
        if self.DBInstanceId != nil {
            map["DBInstanceId"] = self.DBInstanceId!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["DBInstanceId"] as? String {
            self.DBInstanceId = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
    }
}

public class ListInstanceLinkedWhitelistTemplatesResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class Templates : Tea.TeaModel {
            public var securityIPList: String?

            public var templateId: String?

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
                if self.securityIPList != nil {
                    map["SecurityIPList"] = self.securityIPList!
                }
                if self.templateId != nil {
                    map["TemplateId"] = self.templateId!
                }
                if self.templateName != nil {
                    map["TemplateName"] = self.templateName!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["SecurityIPList"] as? String {
                    self.securityIPList = value
                }
                if let value = dict["TemplateId"] as? String {
                    self.templateId = value
                }
                if let value = dict["TemplateName"] as? String {
                    self.templateName = value
                }
            }
        }
        public var templates: [ListInstanceLinkedWhitelistTemplatesResponseBody.Data.Templates]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.templates != nil {
                var tmp : [Any] = []
                for k in self.templates! {
                    tmp.append(k.toMap())
                }
                map["Templates"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Templates"] as? [Any?] {
                var tmp : [ListInstanceLinkedWhitelistTemplatesResponseBody.Data.Templates] = []
                for v in value {
                    if v != nil {
                        var model = ListInstanceLinkedWhitelistTemplatesResponseBody.Data.Templates()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.templates = tmp
            }
        }
    }
    public var data: ListInstanceLinkedWhitelistTemplatesResponseBody.Data?

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
            var model = ListInstanceLinkedWhitelistTemplatesResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class ListInstanceLinkedWhitelistTemplatesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListInstanceLinkedWhitelistTemplatesResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = ListInstanceLinkedWhitelistTemplatesResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ListWhitelistTemplatesRequest : Tea.TeaModel {
    public var pageNumber: Int32?

    public var pageSize: Int32?

    public var regionId: String?

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
        if self.pageNumber != nil {
            map["PageNumber"] = self.pageNumber!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.templateName != nil {
            map["TemplateName"] = self.templateName!
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
        if let value = dict["TemplateName"] as? String {
            self.templateName = value
        }
    }
}

public class ListWhitelistTemplatesResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class Templates : Tea.TeaModel {
            public class DbInstances : Tea.TeaModel {
                public var DBInstanceId: String?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.DBInstanceId != nil {
                        map["DBInstanceId"] = self.DBInstanceId!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["DBInstanceId"] as? String {
                        self.DBInstanceId = value
                    }
                }
            }
            public var dbInstances: [ListWhitelistTemplatesResponseBody.Data.Templates.DbInstances]?

            public var securityIPList: String?

            public var templateId: String?

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
                if self.dbInstances != nil {
                    var tmp : [Any] = []
                    for k in self.dbInstances! {
                        tmp.append(k.toMap())
                    }
                    map["DbInstances"] = tmp
                }
                if self.securityIPList != nil {
                    map["SecurityIPList"] = self.securityIPList!
                }
                if self.templateId != nil {
                    map["TemplateId"] = self.templateId!
                }
                if self.templateName != nil {
                    map["TemplateName"] = self.templateName!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["DbInstances"] as? [Any?] {
                    var tmp : [ListWhitelistTemplatesResponseBody.Data.Templates.DbInstances] = []
                    for v in value {
                        if v != nil {
                            var model = ListWhitelistTemplatesResponseBody.Data.Templates.DbInstances()
                            if v != nil {
                                model.fromMap(v as? [String: Any?])
                            }
                            tmp.append(model)
                        }
                    }
                    self.dbInstances = tmp
                }
                if let value = dict["SecurityIPList"] as? String {
                    self.securityIPList = value
                }
                if let value = dict["TemplateId"] as? String {
                    self.templateId = value
                }
                if let value = dict["TemplateName"] as? String {
                    self.templateName = value
                }
            }
        }
        public var currPageNumbers: Int32?

        public var hasNext: Bool?

        public var hasPrev: Bool?

        public var pageSize: Int32?

        public var templates: [ListWhitelistTemplatesResponseBody.Data.Templates]?

        public var totalCount: Int32?

        public var totalPageNumbers: Int32?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.currPageNumbers != nil {
                map["CurrPageNumbers"] = self.currPageNumbers!
            }
            if self.hasNext != nil {
                map["HasNext"] = self.hasNext!
            }
            if self.hasPrev != nil {
                map["HasPrev"] = self.hasPrev!
            }
            if self.pageSize != nil {
                map["PageSize"] = self.pageSize!
            }
            if self.templates != nil {
                var tmp : [Any] = []
                for k in self.templates! {
                    tmp.append(k.toMap())
                }
                map["Templates"] = tmp
            }
            if self.totalCount != nil {
                map["TotalCount"] = self.totalCount!
            }
            if self.totalPageNumbers != nil {
                map["TotalPageNumbers"] = self.totalPageNumbers!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["CurrPageNumbers"] as? Int32 {
                self.currPageNumbers = value
            }
            if let value = dict["HasNext"] as? Bool {
                self.hasNext = value
            }
            if let value = dict["HasPrev"] as? Bool {
                self.hasPrev = value
            }
            if let value = dict["PageSize"] as? Int32 {
                self.pageSize = value
            }
            if let value = dict["Templates"] as? [Any?] {
                var tmp : [ListWhitelistTemplatesResponseBody.Data.Templates] = []
                for v in value {
                    if v != nil {
                        var model = ListWhitelistTemplatesResponseBody.Data.Templates()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.templates = tmp
            }
            if let value = dict["TotalCount"] as? Int32 {
                self.totalCount = value
            }
            if let value = dict["TotalPageNumbers"] as? Int32 {
                self.totalPageNumbers = value
            }
        }
    }
    public var data: ListWhitelistTemplatesResponseBody.Data?

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
            var model = ListWhitelistTemplatesResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class ListWhitelistTemplatesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListWhitelistTemplatesResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = ListWhitelistTemplatesResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ModifyAccountAuthorityRequest : Tea.TeaModel {
    public class DmlAuthSetting : Tea.TeaModel {
        public var allowDatabases: [String]?

        public var allowDictionaries: [String]?

        public var ddlAuthority: Bool?

        public var dmlAuthority: Int32?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.allowDatabases != nil {
                map["AllowDatabases"] = self.allowDatabases!
            }
            if self.allowDictionaries != nil {
                map["AllowDictionaries"] = self.allowDictionaries!
            }
            if self.ddlAuthority != nil {
                map["DdlAuthority"] = self.ddlAuthority!
            }
            if self.dmlAuthority != nil {
                map["DmlAuthority"] = self.dmlAuthority!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["AllowDatabases"] as? [String] {
                self.allowDatabases = value
            }
            if let value = dict["AllowDictionaries"] as? [String] {
                self.allowDictionaries = value
            }
            if let value = dict["DdlAuthority"] as? Bool {
                self.ddlAuthority = value
            }
            if let value = dict["DmlAuthority"] as? Int32 {
                self.dmlAuthority = value
            }
        }
    }
    public var account: String?

    public var DBInstanceId: String?

    public var dmlAuthSetting: ModifyAccountAuthorityRequest.DmlAuthSetting?

    public var regionId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.dmlAuthSetting?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.account != nil {
            map["Account"] = self.account!
        }
        if self.DBInstanceId != nil {
            map["DBInstanceId"] = self.DBInstanceId!
        }
        if self.dmlAuthSetting != nil {
            map["DmlAuthSetting"] = self.dmlAuthSetting?.toMap()
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Account"] as? String {
            self.account = value
        }
        if let value = dict["DBInstanceId"] as? String {
            self.DBInstanceId = value
        }
        if let value = dict["DmlAuthSetting"] as? [String: Any?] {
            var model = ModifyAccountAuthorityRequest.DmlAuthSetting()
            model.fromMap(value)
            self.dmlAuthSetting = model
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
    }
}

public class ModifyAccountAuthorityShrinkRequest : Tea.TeaModel {
    public var account: String?

    public var DBInstanceId: String?

    public var dmlAuthSettingShrink: String?

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
        if self.account != nil {
            map["Account"] = self.account!
        }
        if self.DBInstanceId != nil {
            map["DBInstanceId"] = self.DBInstanceId!
        }
        if self.dmlAuthSettingShrink != nil {
            map["DmlAuthSetting"] = self.dmlAuthSettingShrink!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Account"] as? String {
            self.account = value
        }
        if let value = dict["DBInstanceId"] as? String {
            self.DBInstanceId = value
        }
        if let value = dict["DmlAuthSetting"] as? String {
            self.dmlAuthSettingShrink = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
    }
}

public class ModifyAccountAuthorityResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var account: String?

        public var DBInstanceId: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.account != nil {
                map["Account"] = self.account!
            }
            if self.DBInstanceId != nil {
                map["DBInstanceId"] = self.DBInstanceId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Account"] as? String {
                self.account = value
            }
            if let value = dict["DBInstanceId"] as? String {
                self.DBInstanceId = value
            }
        }
    }
    public var data: ModifyAccountAuthorityResponseBody.Data?

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
            var model = ModifyAccountAuthorityResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class ModifyAccountAuthorityResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ModifyAccountAuthorityResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = ModifyAccountAuthorityResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ModifyAccountDescriptionRequest : Tea.TeaModel {
    public var account: String?

    public var DBInstanceId: String?

    public var description_: String?

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
        if self.account != nil {
            map["Account"] = self.account!
        }
        if self.DBInstanceId != nil {
            map["DBInstanceId"] = self.DBInstanceId!
        }
        if self.description_ != nil {
            map["Description"] = self.description_!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Account"] as? String {
            self.account = value
        }
        if let value = dict["DBInstanceId"] as? String {
            self.DBInstanceId = value
        }
        if let value = dict["Description"] as? String {
            self.description_ = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
    }
}

public class ModifyAccountDescriptionResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var account: String?

        public var DBInstanceId: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.account != nil {
                map["Account"] = self.account!
            }
            if self.DBInstanceId != nil {
                map["DBInstanceId"] = self.DBInstanceId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Account"] as? String {
                self.account = value
            }
            if let value = dict["DBInstanceId"] as? String {
                self.DBInstanceId = value
            }
        }
    }
    public var data: ModifyAccountDescriptionResponseBody.Data?

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
            var model = ModifyAccountDescriptionResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class ModifyAccountDescriptionResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ModifyAccountDescriptionResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = ModifyAccountDescriptionResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ModifyBackupPolicyRequest : Tea.TeaModel {
    public var backupRetentionPeriod: String?

    public var DBInstanceId: String?

    public var preferredBackupPeriod: String?

    public var preferredBackupTime: String?

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
        if self.backupRetentionPeriod != nil {
            map["BackupRetentionPeriod"] = self.backupRetentionPeriod!
        }
        if self.DBInstanceId != nil {
            map["DBInstanceId"] = self.DBInstanceId!
        }
        if self.preferredBackupPeriod != nil {
            map["PreferredBackupPeriod"] = self.preferredBackupPeriod!
        }
        if self.preferredBackupTime != nil {
            map["PreferredBackupTime"] = self.preferredBackupTime!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["BackupRetentionPeriod"] as? String {
            self.backupRetentionPeriod = value
        }
        if let value = dict["DBInstanceId"] as? String {
            self.DBInstanceId = value
        }
        if let value = dict["PreferredBackupPeriod"] as? String {
            self.preferredBackupPeriod = value
        }
        if let value = dict["PreferredBackupTime"] as? String {
            self.preferredBackupTime = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
    }
}

public class ModifyBackupPolicyResponseBody : Tea.TeaModel {
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

public class ModifyBackupPolicyResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ModifyBackupPolicyResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = ModifyBackupPolicyResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ModifyDBInstanceAttributeRequest : Tea.TeaModel {
    public var attributeType: String?

    public var attributeValue: String?

    public var DBInstanceId: String?

    public var product: String?

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
        if self.attributeType != nil {
            map["AttributeType"] = self.attributeType!
        }
        if self.attributeValue != nil {
            map["AttributeValue"] = self.attributeValue!
        }
        if self.DBInstanceId != nil {
            map["DBInstanceId"] = self.DBInstanceId!
        }
        if self.product != nil {
            map["Product"] = self.product!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AttributeType"] as? String {
            self.attributeType = value
        }
        if let value = dict["AttributeValue"] as? String {
            self.attributeValue = value
        }
        if let value = dict["DBInstanceId"] as? String {
            self.DBInstanceId = value
        }
        if let value = dict["Product"] as? String {
            self.product = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
    }
}

public class ModifyDBInstanceAttributeResponseBody : Tea.TeaModel {
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

public class ModifyDBInstanceAttributeResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ModifyDBInstanceAttributeResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = ModifyDBInstanceAttributeResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ModifyDBInstanceClassRequest : Tea.TeaModel {
    public var computingGroupId: String?

    public var DBInstanceId: String?

    public var nodeCount: Int32?

    public var nodeScaleMax: Int32?

    public var nodeScaleMin: Int32?

    public var regionId: String?

    public var scaleMax: Int64?

    public var scaleMin: Int64?

    public var storageQuota: Int64?

    public var storageType: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.computingGroupId != nil {
            map["ComputingGroupId"] = self.computingGroupId!
        }
        if self.DBInstanceId != nil {
            map["DBInstanceId"] = self.DBInstanceId!
        }
        if self.nodeCount != nil {
            map["NodeCount"] = self.nodeCount!
        }
        if self.nodeScaleMax != nil {
            map["NodeScaleMax"] = self.nodeScaleMax!
        }
        if self.nodeScaleMin != nil {
            map["NodeScaleMin"] = self.nodeScaleMin!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.scaleMax != nil {
            map["ScaleMax"] = self.scaleMax!
        }
        if self.scaleMin != nil {
            map["ScaleMin"] = self.scaleMin!
        }
        if self.storageQuota != nil {
            map["StorageQuota"] = self.storageQuota!
        }
        if self.storageType != nil {
            map["StorageType"] = self.storageType!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ComputingGroupId"] as? String {
            self.computingGroupId = value
        }
        if let value = dict["DBInstanceId"] as? String {
            self.DBInstanceId = value
        }
        if let value = dict["NodeCount"] as? Int32 {
            self.nodeCount = value
        }
        if let value = dict["NodeScaleMax"] as? Int32 {
            self.nodeScaleMax = value
        }
        if let value = dict["NodeScaleMin"] as? Int32 {
            self.nodeScaleMin = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["ScaleMax"] as? Int64 {
            self.scaleMax = value
        }
        if let value = dict["ScaleMin"] as? Int64 {
            self.scaleMin = value
        }
        if let value = dict["StorageQuota"] as? Int64 {
            self.storageQuota = value
        }
        if let value = dict["StorageType"] as? String {
            self.storageType = value
        }
    }
}

public class ModifyDBInstanceClassResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var computingGroupId: String?

        public var DBInstanceID: Int64?

        public var DBInstanceName: String?

        public var scaleMax: Int64?

        public var scaleMin: Int64?

        public var taskId: Int64?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.computingGroupId != nil {
                map["ComputingGroupId"] = self.computingGroupId!
            }
            if self.DBInstanceID != nil {
                map["DBInstanceID"] = self.DBInstanceID!
            }
            if self.DBInstanceName != nil {
                map["DBInstanceName"] = self.DBInstanceName!
            }
            if self.scaleMax != nil {
                map["ScaleMax"] = self.scaleMax!
            }
            if self.scaleMin != nil {
                map["ScaleMin"] = self.scaleMin!
            }
            if self.taskId != nil {
                map["TaskId"] = self.taskId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["ComputingGroupId"] as? String {
                self.computingGroupId = value
            }
            if let value = dict["DBInstanceID"] as? Int64 {
                self.DBInstanceID = value
            }
            if let value = dict["DBInstanceName"] as? String {
                self.DBInstanceName = value
            }
            if let value = dict["ScaleMax"] as? Int64 {
                self.scaleMax = value
            }
            if let value = dict["ScaleMin"] as? Int64 {
                self.scaleMin = value
            }
            if let value = dict["TaskId"] as? Int64 {
                self.taskId = value
            }
        }
    }
    public var data: ModifyDBInstanceClassResponseBody.Data?

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
            var model = ModifyDBInstanceClassResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class ModifyDBInstanceClassResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ModifyDBInstanceClassResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = ModifyDBInstanceClassResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ModifyDBInstanceConfigRequest : Tea.TeaModel {
    public var DBInstanceId: String?

    public var parameters: String?

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
        if self.DBInstanceId != nil {
            map["DBInstanceId"] = self.DBInstanceId!
        }
        if self.parameters != nil {
            map["Parameters"] = self.parameters!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["DBInstanceId"] as? String {
            self.DBInstanceId = value
        }
        if let value = dict["Parameters"] as? String {
            self.parameters = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
    }
}

public class ModifyDBInstanceConfigResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var DBInstanceId: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.DBInstanceId != nil {
                map["DBInstanceId"] = self.DBInstanceId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["DBInstanceId"] as? String {
                self.DBInstanceId = value
            }
        }
    }
    public var data: ModifyDBInstanceConfigResponseBody.Data?

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
            var model = ModifyDBInstanceConfigResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class ModifyDBInstanceConfigResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ModifyDBInstanceConfigResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = ModifyDBInstanceConfigResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ModifyDBInstanceConnectionStringRequest : Tea.TeaModel {
    public var computingGroupId: String?

    public var connectionString: String?

    public var connectionStringPrefix: String?

    public var DBInstanceId: String?

    public var DBInstanceNetType: String?

    public var disablePorts: String?

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
        if self.computingGroupId != nil {
            map["ComputingGroupId"] = self.computingGroupId!
        }
        if self.connectionString != nil {
            map["ConnectionString"] = self.connectionString!
        }
        if self.connectionStringPrefix != nil {
            map["ConnectionStringPrefix"] = self.connectionStringPrefix!
        }
        if self.DBInstanceId != nil {
            map["DBInstanceId"] = self.DBInstanceId!
        }
        if self.DBInstanceNetType != nil {
            map["DBInstanceNetType"] = self.DBInstanceNetType!
        }
        if self.disablePorts != nil {
            map["DisablePorts"] = self.disablePorts!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ComputingGroupId"] as? String {
            self.computingGroupId = value
        }
        if let value = dict["ConnectionString"] as? String {
            self.connectionString = value
        }
        if let value = dict["ConnectionStringPrefix"] as? String {
            self.connectionStringPrefix = value
        }
        if let value = dict["DBInstanceId"] as? String {
            self.DBInstanceId = value
        }
        if let value = dict["DBInstanceNetType"] as? String {
            self.DBInstanceNetType = value
        }
        if let value = dict["DisablePorts"] as? String {
            self.disablePorts = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
    }
}

public class ModifyDBInstanceConnectionStringResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var connectionString: String?

        public var DBInstanceID: Int32?

        public var DBInstanceName: String?

        public var disabledPorts: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.connectionString != nil {
                map["ConnectionString"] = self.connectionString!
            }
            if self.DBInstanceID != nil {
                map["DBInstanceID"] = self.DBInstanceID!
            }
            if self.DBInstanceName != nil {
                map["DBInstanceName"] = self.DBInstanceName!
            }
            if self.disabledPorts != nil {
                map["DisabledPorts"] = self.disabledPorts!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["ConnectionString"] as? String {
                self.connectionString = value
            }
            if let value = dict["DBInstanceID"] as? Int32 {
                self.DBInstanceID = value
            }
            if let value = dict["DBInstanceName"] as? String {
                self.DBInstanceName = value
            }
            if let value = dict["DisabledPorts"] as? String {
                self.disabledPorts = value
            }
        }
    }
    public var data: ModifyDBInstanceConnectionStringResponseBody.Data?

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
            var model = ModifyDBInstanceConnectionStringResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class ModifyDBInstanceConnectionStringResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ModifyDBInstanceConnectionStringResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = ModifyDBInstanceConnectionStringResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ModifySecurityIPListRequest : Tea.TeaModel {
    public var DBInstanceId: String?

    public var groupName: String?

    public var modifyMode: String?

    public var regionId: String?

    public var securityIPList: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.DBInstanceId != nil {
            map["DBInstanceId"] = self.DBInstanceId!
        }
        if self.groupName != nil {
            map["GroupName"] = self.groupName!
        }
        if self.modifyMode != nil {
            map["ModifyMode"] = self.modifyMode!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.securityIPList != nil {
            map["SecurityIPList"] = self.securityIPList!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["DBInstanceId"] as? String {
            self.DBInstanceId = value
        }
        if let value = dict["GroupName"] as? String {
            self.groupName = value
        }
        if let value = dict["ModifyMode"] as? String {
            self.modifyMode = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["SecurityIPList"] as? String {
            self.securityIPList = value
        }
    }
}

public class ModifySecurityIPListResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var DBInstanceID: Int32?

        public var DBInstanceName: String?

        public var groupName: String?

        public var groupTag: String?

        public var securityIPList: String?

        public var securityIPType: String?

        public var taskId: Int32?

        public var whitelistNetType: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.DBInstanceID != nil {
                map["DBInstanceID"] = self.DBInstanceID!
            }
            if self.DBInstanceName != nil {
                map["DBInstanceName"] = self.DBInstanceName!
            }
            if self.groupName != nil {
                map["GroupName"] = self.groupName!
            }
            if self.groupTag != nil {
                map["GroupTag"] = self.groupTag!
            }
            if self.securityIPList != nil {
                map["SecurityIPList"] = self.securityIPList!
            }
            if self.securityIPType != nil {
                map["SecurityIPType"] = self.securityIPType!
            }
            if self.taskId != nil {
                map["TaskId"] = self.taskId!
            }
            if self.whitelistNetType != nil {
                map["WhitelistNetType"] = self.whitelistNetType!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["DBInstanceID"] as? Int32 {
                self.DBInstanceID = value
            }
            if let value = dict["DBInstanceName"] as? String {
                self.DBInstanceName = value
            }
            if let value = dict["GroupName"] as? String {
                self.groupName = value
            }
            if let value = dict["GroupTag"] as? String {
                self.groupTag = value
            }
            if let value = dict["SecurityIPList"] as? String {
                self.securityIPList = value
            }
            if let value = dict["SecurityIPType"] as? String {
                self.securityIPType = value
            }
            if let value = dict["TaskId"] as? Int32 {
                self.taskId = value
            }
            if let value = dict["WhitelistNetType"] as? String {
                self.whitelistNetType = value
            }
        }
    }
    public var data: ModifySecurityIPListResponseBody.Data?

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
            var model = ModifySecurityIPListResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class ModifySecurityIPListResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ModifySecurityIPListResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = ModifySecurityIPListResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ResetAccountPasswordRequest : Tea.TeaModel {
    public var account: String?

    public var DBInstanceId: String?

    public var password: String?

    public var product: String?

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
        if self.account != nil {
            map["Account"] = self.account!
        }
        if self.DBInstanceId != nil {
            map["DBInstanceId"] = self.DBInstanceId!
        }
        if self.password != nil {
            map["Password"] = self.password!
        }
        if self.product != nil {
            map["Product"] = self.product!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Account"] as? String {
            self.account = value
        }
        if let value = dict["DBInstanceId"] as? String {
            self.DBInstanceId = value
        }
        if let value = dict["Password"] as? String {
            self.password = value
        }
        if let value = dict["Product"] as? String {
            self.product = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
    }
}

public class ResetAccountPasswordResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var account: String?

        public var DBInstanceId: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.account != nil {
                map["Account"] = self.account!
            }
            if self.DBInstanceId != nil {
                map["DBInstanceId"] = self.DBInstanceId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Account"] as? String {
                self.account = value
            }
            if let value = dict["DBInstanceId"] as? String {
                self.DBInstanceId = value
            }
        }
    }
    public var data: ResetAccountPasswordResponseBody.Data?

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
            var model = ResetAccountPasswordResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class ResetAccountPasswordResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ResetAccountPasswordResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = ResetAccountPasswordResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class RestartDBInstanceRequest : Tea.TeaModel {
    public var DBInstanceId: String?

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
        if self.DBInstanceId != nil {
            map["DBInstanceId"] = self.DBInstanceId!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["DBInstanceId"] as? String {
            self.DBInstanceId = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
    }
}

public class RestartDBInstanceResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var DBInstanceID: Int64?

        public var DBInstanceName: String?

        public var taskId: Int64?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.DBInstanceID != nil {
                map["DBInstanceID"] = self.DBInstanceID!
            }
            if self.DBInstanceName != nil {
                map["DBInstanceName"] = self.DBInstanceName!
            }
            if self.taskId != nil {
                map["TaskId"] = self.taskId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["DBInstanceID"] as? Int64 {
                self.DBInstanceID = value
            }
            if let value = dict["DBInstanceName"] as? String {
                self.DBInstanceName = value
            }
            if let value = dict["TaskId"] as? Int64 {
                self.taskId = value
            }
        }
    }
    public var data: RestartDBInstanceResponseBody.Data?

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
            var model = RestartDBInstanceResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class RestartDBInstanceResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: RestartDBInstanceResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = RestartDBInstanceResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class StartDBInstanceRequest : Tea.TeaModel {
    public var DBInstanceId: String?

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
        if self.DBInstanceId != nil {
            map["DBInstanceId"] = self.DBInstanceId!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["DBInstanceId"] as? String {
            self.DBInstanceId = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
    }
}

public class StartDBInstanceResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var DBInstanceID: Int64?

        public var DBInstanceName: String?

        public var taskId: Int64?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.DBInstanceID != nil {
                map["DBInstanceID"] = self.DBInstanceID!
            }
            if self.DBInstanceName != nil {
                map["DBInstanceName"] = self.DBInstanceName!
            }
            if self.taskId != nil {
                map["TaskId"] = self.taskId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["DBInstanceID"] as? Int64 {
                self.DBInstanceID = value
            }
            if let value = dict["DBInstanceName"] as? String {
                self.DBInstanceName = value
            }
            if let value = dict["TaskId"] as? Int64 {
                self.taskId = value
            }
        }
    }
    public var data: StartDBInstanceResponseBody.Data?

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
            var model = StartDBInstanceResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class StartDBInstanceResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: StartDBInstanceResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = StartDBInstanceResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class StopDBInstanceRequest : Tea.TeaModel {
    public var DBInstanceId: String?

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
        if self.DBInstanceId != nil {
            map["DBInstanceId"] = self.DBInstanceId!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["DBInstanceId"] as? String {
            self.DBInstanceId = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
    }
}

public class StopDBInstanceResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var DBInstanceID: Int64?

        public var DBInstanceName: String?

        public var taskId: Int64?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.DBInstanceID != nil {
                map["DBInstanceID"] = self.DBInstanceID!
            }
            if self.DBInstanceName != nil {
                map["DBInstanceName"] = self.DBInstanceName!
            }
            if self.taskId != nil {
                map["TaskId"] = self.taskId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["DBInstanceID"] as? Int64 {
                self.DBInstanceID = value
            }
            if let value = dict["DBInstanceName"] as? String {
                self.DBInstanceName = value
            }
            if let value = dict["TaskId"] as? Int64 {
                self.taskId = value
            }
        }
    }
    public var data: StopDBInstanceResponseBody.Data?

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
            var model = StopDBInstanceResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class StopDBInstanceResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: StopDBInstanceResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = StopDBInstanceResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class UpdateWhitelistTemplateRequest : Tea.TeaModel {
    public var regionId: String?

    public var securityIPList: String?

    public var templateId: String?

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
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.securityIPList != nil {
            map["SecurityIPList"] = self.securityIPList!
        }
        if self.templateId != nil {
            map["TemplateId"] = self.templateId!
        }
        if self.templateName != nil {
            map["TemplateName"] = self.templateName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["SecurityIPList"] as? String {
            self.securityIPList = value
        }
        if let value = dict["TemplateId"] as? String {
            self.templateId = value
        }
        if let value = dict["TemplateName"] as? String {
            self.templateName = value
        }
    }
}

public class UpdateWhitelistTemplateResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class Templates : Tea.TeaModel {
            public class DbInstances : Tea.TeaModel {
                public var dbInstanceName: String?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.dbInstanceName != nil {
                        map["DbInstanceName"] = self.dbInstanceName!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["DbInstanceName"] as? String {
                        self.dbInstanceName = value
                    }
                }
            }
            public var dbInstances: [UpdateWhitelistTemplateResponseBody.Data.Templates.DbInstances]?

            public var securityIPList: String?

            public var templateId: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.dbInstances != nil {
                    var tmp : [Any] = []
                    for k in self.dbInstances! {
                        tmp.append(k.toMap())
                    }
                    map["DbInstances"] = tmp
                }
                if self.securityIPList != nil {
                    map["SecurityIPList"] = self.securityIPList!
                }
                if self.templateId != nil {
                    map["TemplateId"] = self.templateId!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["DbInstances"] as? [Any?] {
                    var tmp : [UpdateWhitelistTemplateResponseBody.Data.Templates.DbInstances] = []
                    for v in value {
                        if v != nil {
                            var model = UpdateWhitelistTemplateResponseBody.Data.Templates.DbInstances()
                            if v != nil {
                                model.fromMap(v as? [String: Any?])
                            }
                            tmp.append(model)
                        }
                    }
                    self.dbInstances = tmp
                }
                if let value = dict["SecurityIPList"] as? String {
                    self.securityIPList = value
                }
                if let value = dict["TemplateId"] as? String {
                    self.templateId = value
                }
            }
        }
        public var templates: [UpdateWhitelistTemplateResponseBody.Data.Templates]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.templates != nil {
                var tmp : [Any] = []
                for k in self.templates! {
                    tmp.append(k.toMap())
                }
                map["Templates"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Templates"] as? [Any?] {
                var tmp : [UpdateWhitelistTemplateResponseBody.Data.Templates] = []
                for v in value {
                    if v != nil {
                        var model = UpdateWhitelistTemplateResponseBody.Data.Templates()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.templates = tmp
            }
        }
    }
    public var data: UpdateWhitelistTemplateResponseBody.Data?

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
            var model = UpdateWhitelistTemplateResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class UpdateWhitelistTemplateResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpdateWhitelistTemplateResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = UpdateWhitelistTemplateResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class UpgradeMinorVersionRequest : Tea.TeaModel {
    public var DBInstanceId: String?

    public var regionId: String?

    public var switchTime: String?

    public var switchTimeMode: String?

    public var targetMinorVersion: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.DBInstanceId != nil {
            map["DBInstanceId"] = self.DBInstanceId!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.switchTime != nil {
            map["SwitchTime"] = self.switchTime!
        }
        if self.switchTimeMode != nil {
            map["SwitchTimeMode"] = self.switchTimeMode!
        }
        if self.targetMinorVersion != nil {
            map["TargetMinorVersion"] = self.targetMinorVersion!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["DBInstanceId"] as? String {
            self.DBInstanceId = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["SwitchTime"] as? String {
            self.switchTime = value
        }
        if let value = dict["SwitchTimeMode"] as? String {
            self.switchTimeMode = value
        }
        if let value = dict["TargetMinorVersion"] as? String {
            self.targetMinorVersion = value
        }
    }
}

public class UpgradeMinorVersionResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var DBInstanceName: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.DBInstanceName != nil {
                map["DBInstanceName"] = self.DBInstanceName!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["DBInstanceName"] as? String {
                self.DBInstanceName = value
            }
        }
    }
    public var data: UpgradeMinorVersionResponseBody.Data?

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
            var model = UpgradeMinorVersionResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class UpgradeMinorVersionResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpgradeMinorVersionResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = UpgradeMinorVersionResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}
