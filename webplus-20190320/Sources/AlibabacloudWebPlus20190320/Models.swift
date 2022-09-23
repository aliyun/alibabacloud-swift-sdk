import Foundation
import Tea
import TeaUtils
import AlibabacloudOpenApi
import AlibabaCloudOpenApiUtil
import AlibabacloudEndpointUtil

public class AbortChangeRequest : Tea.TeaModel {
    public var changeId: String?

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
        if self.changeId != nil {
            map["ChangeId"] = self.changeId!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ChangeId") {
            self.changeId = dict["ChangeId"] as! String
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
    }
}

public class AbortChangeResponseBody : Tea.TeaModel {
    public class EnvChange : Tea.TeaModel {
        public var changeId: String?

        public var envId: String?

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
            if self.changeId != nil {
                map["ChangeId"] = self.changeId!
            }
            if self.envId != nil {
                map["EnvId"] = self.envId!
            }
            if self.startTime != nil {
                map["StartTime"] = self.startTime!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("ChangeId") {
                self.changeId = dict["ChangeId"] as! String
            }
            if dict.keys.contains("EnvId") {
                self.envId = dict["EnvId"] as! String
            }
            if dict.keys.contains("StartTime") {
                self.startTime = dict["StartTime"] as! String
            }
        }
    }
    public var code: String?

    public var envChange: AbortChangeResponseBody.EnvChange?

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
        try self.envChange?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.envChange != nil {
            map["EnvChange"] = self.envChange?.toMap()
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
        if dict.keys.contains("EnvChange") {
            var model = AbortChangeResponseBody.EnvChange()
            model.fromMap(dict["EnvChange"] as! [String: Any])
            self.envChange = model
        }
        if dict.keys.contains("Message") {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class AbortChangeResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: AbortChangeResponseBody?

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
            var model = AbortChangeResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class CreateAppEnvRequest : Tea.TeaModel {
    public var appId: String?

    public var dryRun: Bool?

    public var envDescription: String?

    public var envName: String?

    public var extraProperties: String?

    public var optionSettings: String?

    public var pkgVersionId: String?

    public var profileName: String?

    public var regionId: String?

    public var sourceEnvId: String?

    public var stackId: String?

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
        if self.appId != nil {
            map["AppId"] = self.appId!
        }
        if self.dryRun != nil {
            map["DryRun"] = self.dryRun!
        }
        if self.envDescription != nil {
            map["EnvDescription"] = self.envDescription!
        }
        if self.envName != nil {
            map["EnvName"] = self.envName!
        }
        if self.extraProperties != nil {
            map["ExtraProperties"] = self.extraProperties!
        }
        if self.optionSettings != nil {
            map["OptionSettings"] = self.optionSettings!
        }
        if self.pkgVersionId != nil {
            map["PkgVersionId"] = self.pkgVersionId!
        }
        if self.profileName != nil {
            map["ProfileName"] = self.profileName!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.sourceEnvId != nil {
            map["SourceEnvId"] = self.sourceEnvId!
        }
        if self.stackId != nil {
            map["StackId"] = self.stackId!
        }
        if self.templateId != nil {
            map["TemplateId"] = self.templateId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AppId") {
            self.appId = dict["AppId"] as! String
        }
        if dict.keys.contains("DryRun") {
            self.dryRun = dict["DryRun"] as! Bool
        }
        if dict.keys.contains("EnvDescription") {
            self.envDescription = dict["EnvDescription"] as! String
        }
        if dict.keys.contains("EnvName") {
            self.envName = dict["EnvName"] as! String
        }
        if dict.keys.contains("ExtraProperties") {
            self.extraProperties = dict["ExtraProperties"] as! String
        }
        if dict.keys.contains("OptionSettings") {
            self.optionSettings = dict["OptionSettings"] as! String
        }
        if dict.keys.contains("PkgVersionId") {
            self.pkgVersionId = dict["PkgVersionId"] as! String
        }
        if dict.keys.contains("ProfileName") {
            self.profileName = dict["ProfileName"] as! String
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("SourceEnvId") {
            self.sourceEnvId = dict["SourceEnvId"] as! String
        }
        if dict.keys.contains("StackId") {
            self.stackId = dict["StackId"] as! String
        }
        if dict.keys.contains("TemplateId") {
            self.templateId = dict["TemplateId"] as! String
        }
    }
}

public class CreateAppEnvResponseBody : Tea.TeaModel {
    public class EnvChangeDetail : Tea.TeaModel {
        public class Operations : Tea.TeaModel {
            public class Operation : Tea.TeaModel {
                public var operationDescription: String?

                public var operationType: String?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.operationDescription != nil {
                        map["OperationDescription"] = self.operationDescription!
                    }
                    if self.operationType != nil {
                        map["OperationType"] = self.operationType!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("OperationDescription") {
                        self.operationDescription = dict["OperationDescription"] as! String
                    }
                    if dict.keys.contains("OperationType") {
                        self.operationType = dict["OperationType"] as! String
                    }
                }
            }
            public var operation: [CreateAppEnvResponseBody.EnvChangeDetail.Operations.Operation]?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.operation != nil {
                    var tmp : [Any] = []
                    for k in self.operation! {
                        tmp.append(k.toMap())
                    }
                    map["Operation"] = tmp
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("Operation") {
                    self.operation = dict["Operation"] as! [CreateAppEnvResponseBody.EnvChangeDetail.Operations.Operation]
                }
            }
        }
        public var changeId: String?

        public var envId: String?

        public var operations: CreateAppEnvResponseBody.EnvChangeDetail.Operations?

        public var startTime: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.operations?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.changeId != nil {
                map["ChangeId"] = self.changeId!
            }
            if self.envId != nil {
                map["EnvId"] = self.envId!
            }
            if self.operations != nil {
                map["Operations"] = self.operations?.toMap()
            }
            if self.startTime != nil {
                map["StartTime"] = self.startTime!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("ChangeId") {
                self.changeId = dict["ChangeId"] as! String
            }
            if dict.keys.contains("EnvId") {
                self.envId = dict["EnvId"] as! String
            }
            if dict.keys.contains("Operations") {
                var model = CreateAppEnvResponseBody.EnvChangeDetail.Operations()
                model.fromMap(dict["Operations"] as! [String: Any])
                self.operations = model
            }
            if dict.keys.contains("StartTime") {
                self.startTime = dict["StartTime"] as! String
            }
        }
    }
    public var code: String?

    public var envChangeDetail: CreateAppEnvResponseBody.EnvChangeDetail?

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
        try self.envChangeDetail?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.envChangeDetail != nil {
            map["EnvChangeDetail"] = self.envChangeDetail?.toMap()
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
        if dict.keys.contains("EnvChangeDetail") {
            var model = CreateAppEnvResponseBody.EnvChangeDetail()
            model.fromMap(dict["EnvChangeDetail"] as! [String: Any])
            self.envChangeDetail = model
        }
        if dict.keys.contains("Message") {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class CreateAppEnvResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateAppEnvResponseBody?

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
            var model = CreateAppEnvResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class CreateApplicationRequest : Tea.TeaModel {
    public var appDescription: String?

    public var appName: String?

    public var categoryName: String?

    public var regionId: String?

    public var usingSharedStorage: Bool?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.appDescription != nil {
            map["AppDescription"] = self.appDescription!
        }
        if self.appName != nil {
            map["AppName"] = self.appName!
        }
        if self.categoryName != nil {
            map["CategoryName"] = self.categoryName!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.usingSharedStorage != nil {
            map["UsingSharedStorage"] = self.usingSharedStorage!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AppDescription") {
            self.appDescription = dict["AppDescription"] as! String
        }
        if dict.keys.contains("AppName") {
            self.appName = dict["AppName"] as! String
        }
        if dict.keys.contains("CategoryName") {
            self.categoryName = dict["CategoryName"] as! String
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("UsingSharedStorage") {
            self.usingSharedStorage = dict["UsingSharedStorage"] as! Bool
        }
    }
}

public class CreateApplicationResponseBody : Tea.TeaModel {
    public class Application : Tea.TeaModel {
        public var appDescription: String?

        public var appId: String?

        public var appName: String?

        public var categoryName: String?

        public var createTime: Int64?

        public var createUsername: String?

        public var updateTime: Int64?

        public var updateUsername: String?

        public var usingSharedStorage: Bool?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.appDescription != nil {
                map["AppDescription"] = self.appDescription!
            }
            if self.appId != nil {
                map["AppId"] = self.appId!
            }
            if self.appName != nil {
                map["AppName"] = self.appName!
            }
            if self.categoryName != nil {
                map["CategoryName"] = self.categoryName!
            }
            if self.createTime != nil {
                map["CreateTime"] = self.createTime!
            }
            if self.createUsername != nil {
                map["CreateUsername"] = self.createUsername!
            }
            if self.updateTime != nil {
                map["UpdateTime"] = self.updateTime!
            }
            if self.updateUsername != nil {
                map["UpdateUsername"] = self.updateUsername!
            }
            if self.usingSharedStorage != nil {
                map["UsingSharedStorage"] = self.usingSharedStorage!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("AppDescription") {
                self.appDescription = dict["AppDescription"] as! String
            }
            if dict.keys.contains("AppId") {
                self.appId = dict["AppId"] as! String
            }
            if dict.keys.contains("AppName") {
                self.appName = dict["AppName"] as! String
            }
            if dict.keys.contains("CategoryName") {
                self.categoryName = dict["CategoryName"] as! String
            }
            if dict.keys.contains("CreateTime") {
                self.createTime = dict["CreateTime"] as! Int64
            }
            if dict.keys.contains("CreateUsername") {
                self.createUsername = dict["CreateUsername"] as! String
            }
            if dict.keys.contains("UpdateTime") {
                self.updateTime = dict["UpdateTime"] as! Int64
            }
            if dict.keys.contains("UpdateUsername") {
                self.updateUsername = dict["UpdateUsername"] as! String
            }
            if dict.keys.contains("UsingSharedStorage") {
                self.usingSharedStorage = dict["UsingSharedStorage"] as! Bool
            }
        }
    }
    public var application: CreateApplicationResponseBody.Application?

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
        try self.application?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.application != nil {
            map["Application"] = self.application?.toMap()
        }
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
        if dict.keys.contains("Application") {
            var model = CreateApplicationResponseBody.Application()
            model.fromMap(dict["Application"] as! [String: Any])
            self.application = model
        }
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

public class CreateApplicationResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateApplicationResponseBody?

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
            var model = CreateApplicationResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class CreateConfigTemplateRequest : Tea.TeaModel {
    public var appId: String?

    public var optionSettings: String?

    public var pkgVersionId: String?

    public var profileName: String?

    public var regionId: String?

    public var sourceEnvId: String?

    public var sourceTemplateId: String?

    public var stackId: String?

    public var templateDescription: String?

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
        if self.appId != nil {
            map["AppId"] = self.appId!
        }
        if self.optionSettings != nil {
            map["OptionSettings"] = self.optionSettings!
        }
        if self.pkgVersionId != nil {
            map["PkgVersionId"] = self.pkgVersionId!
        }
        if self.profileName != nil {
            map["ProfileName"] = self.profileName!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.sourceEnvId != nil {
            map["SourceEnvId"] = self.sourceEnvId!
        }
        if self.sourceTemplateId != nil {
            map["SourceTemplateId"] = self.sourceTemplateId!
        }
        if self.stackId != nil {
            map["StackId"] = self.stackId!
        }
        if self.templateDescription != nil {
            map["TemplateDescription"] = self.templateDescription!
        }
        if self.templateName != nil {
            map["TemplateName"] = self.templateName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AppId") {
            self.appId = dict["AppId"] as! String
        }
        if dict.keys.contains("OptionSettings") {
            self.optionSettings = dict["OptionSettings"] as! String
        }
        if dict.keys.contains("PkgVersionId") {
            self.pkgVersionId = dict["PkgVersionId"] as! String
        }
        if dict.keys.contains("ProfileName") {
            self.profileName = dict["ProfileName"] as! String
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("SourceEnvId") {
            self.sourceEnvId = dict["SourceEnvId"] as! String
        }
        if dict.keys.contains("SourceTemplateId") {
            self.sourceTemplateId = dict["SourceTemplateId"] as! String
        }
        if dict.keys.contains("StackId") {
            self.stackId = dict["StackId"] as! String
        }
        if dict.keys.contains("TemplateDescription") {
            self.templateDescription = dict["TemplateDescription"] as! String
        }
        if dict.keys.contains("TemplateName") {
            self.templateName = dict["TemplateName"] as! String
        }
    }
}

public class CreateConfigTemplateResponseBody : Tea.TeaModel {
    public class ConfigTemplate : Tea.TeaModel {
        public var appId: String?

        public var appName: String?

        public var createTime: Int64?

        public var pkgVersionId: String?

        public var pkgVersionLabel: String?

        public var stackId: String?

        public var stackName: String?

        public var templateDescription: String?

        public var templateId: String?

        public var templateName: String?

        public var templateType: String?

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
            if self.appId != nil {
                map["AppId"] = self.appId!
            }
            if self.appName != nil {
                map["AppName"] = self.appName!
            }
            if self.createTime != nil {
                map["CreateTime"] = self.createTime!
            }
            if self.pkgVersionId != nil {
                map["PkgVersionId"] = self.pkgVersionId!
            }
            if self.pkgVersionLabel != nil {
                map["PkgVersionLabel"] = self.pkgVersionLabel!
            }
            if self.stackId != nil {
                map["StackId"] = self.stackId!
            }
            if self.stackName != nil {
                map["StackName"] = self.stackName!
            }
            if self.templateDescription != nil {
                map["TemplateDescription"] = self.templateDescription!
            }
            if self.templateId != nil {
                map["TemplateId"] = self.templateId!
            }
            if self.templateName != nil {
                map["TemplateName"] = self.templateName!
            }
            if self.templateType != nil {
                map["TemplateType"] = self.templateType!
            }
            if self.updateTime != nil {
                map["UpdateTime"] = self.updateTime!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("AppId") {
                self.appId = dict["AppId"] as! String
            }
            if dict.keys.contains("AppName") {
                self.appName = dict["AppName"] as! String
            }
            if dict.keys.contains("CreateTime") {
                self.createTime = dict["CreateTime"] as! Int64
            }
            if dict.keys.contains("PkgVersionId") {
                self.pkgVersionId = dict["PkgVersionId"] as! String
            }
            if dict.keys.contains("PkgVersionLabel") {
                self.pkgVersionLabel = dict["PkgVersionLabel"] as! String
            }
            if dict.keys.contains("StackId") {
                self.stackId = dict["StackId"] as! String
            }
            if dict.keys.contains("StackName") {
                self.stackName = dict["StackName"] as! String
            }
            if dict.keys.contains("TemplateDescription") {
                self.templateDescription = dict["TemplateDescription"] as! String
            }
            if dict.keys.contains("TemplateId") {
                self.templateId = dict["TemplateId"] as! String
            }
            if dict.keys.contains("TemplateName") {
                self.templateName = dict["TemplateName"] as! String
            }
            if dict.keys.contains("TemplateType") {
                self.templateType = dict["TemplateType"] as! String
            }
            if dict.keys.contains("UpdateTime") {
                self.updateTime = dict["UpdateTime"] as! Int64
            }
        }
    }
    public var code: String?

    public var configTemplate: CreateConfigTemplateResponseBody.ConfigTemplate?

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
        try self.configTemplate?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.configTemplate != nil {
            map["ConfigTemplate"] = self.configTemplate?.toMap()
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
        if dict.keys.contains("ConfigTemplate") {
            var model = CreateConfigTemplateResponseBody.ConfigTemplate()
            model.fromMap(dict["ConfigTemplate"] as! [String: Any])
            self.configTemplate = model
        }
        if dict.keys.contains("Message") {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class CreateConfigTemplateResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateConfigTemplateResponseBody?

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
            var model = CreateConfigTemplateResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class CreateOrderRequest : Tea.TeaModel {
    public var productName: String?

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
        if self.productName != nil {
            map["ProductName"] = self.productName!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ProductName") {
            self.productName = dict["ProductName"] as! String
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
    }
}

public class CreateOrderResponseBody : Tea.TeaModel {
    public class OrderDetail : Tea.TeaModel {
        public var code: String?

        public var data: String?

        public var message: String?

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
            if self.code != nil {
                map["Code"] = self.code!
            }
            if self.data != nil {
                map["Data"] = self.data!
            }
            if self.message != nil {
                map["Message"] = self.message!
            }
            if self.requestId != nil {
                map["RequestId"] = self.requestId!
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
            if dict.keys.contains("Data") {
                self.data = dict["Data"] as! String
            }
            if dict.keys.contains("Message") {
                self.message = dict["Message"] as! String
            }
            if dict.keys.contains("RequestId") {
                self.requestId = dict["RequestId"] as! String
            }
            if dict.keys.contains("Success") {
                self.success = dict["Success"] as! Bool
            }
        }
    }
    public var code: String?

    public var message: String?

    public var orderDetail: CreateOrderResponseBody.OrderDetail?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.orderDetail?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.orderDetail != nil {
            map["OrderDetail"] = self.orderDetail?.toMap()
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
        if dict.keys.contains("OrderDetail") {
            var model = CreateOrderResponseBody.OrderDetail()
            model.fromMap(dict["OrderDetail"] as! [String: Any])
            self.orderDetail = model
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class CreateOrderResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateOrderResponseBody?

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
            var model = CreateOrderResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class CreatePkgVersionRequest : Tea.TeaModel {
    public var appId: String?

    public var packageSource: String?

    public var pkgVersionDescription: String?

    public var pkgVersionLabel: String?

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
        if self.appId != nil {
            map["AppId"] = self.appId!
        }
        if self.packageSource != nil {
            map["PackageSource"] = self.packageSource!
        }
        if self.pkgVersionDescription != nil {
            map["PkgVersionDescription"] = self.pkgVersionDescription!
        }
        if self.pkgVersionLabel != nil {
            map["PkgVersionLabel"] = self.pkgVersionLabel!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AppId") {
            self.appId = dict["AppId"] as! String
        }
        if dict.keys.contains("PackageSource") {
            self.packageSource = dict["PackageSource"] as! String
        }
        if dict.keys.contains("PkgVersionDescription") {
            self.pkgVersionDescription = dict["PkgVersionDescription"] as! String
        }
        if dict.keys.contains("PkgVersionLabel") {
            self.pkgVersionLabel = dict["PkgVersionLabel"] as! String
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
    }
}

public class CreatePkgVersionResponseBody : Tea.TeaModel {
    public class PkgVersion : Tea.TeaModel {
        public var appId: String?

        public var appName: String?

        public var createTime: Int64?

        public var packageSource: String?

        public var pkgVersionDescription: String?

        public var pkgVersionId: String?

        public var pkgVersionLabel: String?

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
            if self.appId != nil {
                map["AppId"] = self.appId!
            }
            if self.appName != nil {
                map["AppName"] = self.appName!
            }
            if self.createTime != nil {
                map["CreateTime"] = self.createTime!
            }
            if self.packageSource != nil {
                map["PackageSource"] = self.packageSource!
            }
            if self.pkgVersionDescription != nil {
                map["PkgVersionDescription"] = self.pkgVersionDescription!
            }
            if self.pkgVersionId != nil {
                map["PkgVersionId"] = self.pkgVersionId!
            }
            if self.pkgVersionLabel != nil {
                map["PkgVersionLabel"] = self.pkgVersionLabel!
            }
            if self.updateTime != nil {
                map["UpdateTime"] = self.updateTime!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("AppId") {
                self.appId = dict["AppId"] as! String
            }
            if dict.keys.contains("AppName") {
                self.appName = dict["AppName"] as! String
            }
            if dict.keys.contains("CreateTime") {
                self.createTime = dict["CreateTime"] as! Int64
            }
            if dict.keys.contains("PackageSource") {
                self.packageSource = dict["PackageSource"] as! String
            }
            if dict.keys.contains("PkgVersionDescription") {
                self.pkgVersionDescription = dict["PkgVersionDescription"] as! String
            }
            if dict.keys.contains("PkgVersionId") {
                self.pkgVersionId = dict["PkgVersionId"] as! String
            }
            if dict.keys.contains("PkgVersionLabel") {
                self.pkgVersionLabel = dict["PkgVersionLabel"] as! String
            }
            if dict.keys.contains("UpdateTime") {
                self.updateTime = dict["UpdateTime"] as! Int64
            }
        }
    }
    public var code: String?

    public var message: String?

    public var pkgVersion: CreatePkgVersionResponseBody.PkgVersion?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.pkgVersion?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.pkgVersion != nil {
            map["PkgVersion"] = self.pkgVersion?.toMap()
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
        if dict.keys.contains("PkgVersion") {
            var model = CreatePkgVersionResponseBody.PkgVersion()
            model.fromMap(dict["PkgVersion"] as! [String: Any])
            self.pkgVersion = model
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class CreatePkgVersionResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreatePkgVersionResponseBody?

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
            var model = CreatePkgVersionResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class CreateStorageRequest : Tea.TeaModel {
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
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
    }
}

public class CreateStorageResponseBody : Tea.TeaModel {
    public class Storage : Tea.TeaModel {
        public var bucketName: String?

        public var createTime: Int64?

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
            if self.bucketName != nil {
                map["BucketName"] = self.bucketName!
            }
            if self.createTime != nil {
                map["CreateTime"] = self.createTime!
            }
            if self.updateTime != nil {
                map["UpdateTime"] = self.updateTime!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("BucketName") {
                self.bucketName = dict["BucketName"] as! String
            }
            if dict.keys.contains("CreateTime") {
                self.createTime = dict["CreateTime"] as! Int64
            }
            if dict.keys.contains("UpdateTime") {
                self.updateTime = dict["UpdateTime"] as! Int64
            }
        }
    }
    public var code: String?

    public var message: String?

    public var requestId: String?

    public var storage: CreateStorageResponseBody.Storage?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.storage?.validate()
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
        if self.storage != nil {
            map["Storage"] = self.storage?.toMap()
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
        if dict.keys.contains("Storage") {
            var model = CreateStorageResponseBody.Storage()
            model.fromMap(dict["Storage"] as! [String: Any])
            self.storage = model
        }
    }
}

public class CreateStorageResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateStorageResponseBody?

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
            var model = CreateStorageResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DeleteAppEnvRequest : Tea.TeaModel {
    public var envId: String?

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
        if self.envId != nil {
            map["EnvId"] = self.envId!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("EnvId") {
            self.envId = dict["EnvId"] as! String
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
    }
}

public class DeleteAppEnvResponseBody : Tea.TeaModel {
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

public class DeleteAppEnvResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteAppEnvResponseBody?

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
            var model = DeleteAppEnvResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DeleteApplicationRequest : Tea.TeaModel {
    public var appId: String?

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
        if self.appId != nil {
            map["AppId"] = self.appId!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AppId") {
            self.appId = dict["AppId"] as! String
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
    }
}

public class DeleteApplicationResponseBody : Tea.TeaModel {
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

public class DeleteApplicationResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteApplicationResponseBody?

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
            var model = DeleteApplicationResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DeleteChangeRequest : Tea.TeaModel {
    public var changeId: String?

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
        if self.changeId != nil {
            map["ChangeId"] = self.changeId!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ChangeId") {
            self.changeId = dict["ChangeId"] as! String
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
    }
}

public class DeleteChangeResponseBody : Tea.TeaModel {
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

public class DeleteChangeResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteChangeResponseBody?

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
            var model = DeleteChangeResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DeleteConfigTemplateRequest : Tea.TeaModel {
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("TemplateId") {
            self.templateId = dict["TemplateId"] as! String
        }
    }
}

public class DeleteConfigTemplateResponseBody : Tea.TeaModel {
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

public class DeleteConfigTemplateResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteConfigTemplateResponseBody?

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
            var model = DeleteConfigTemplateResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DeletePkgVersionRequest : Tea.TeaModel {
    public var pkgVersionId: String?

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
        if self.pkgVersionId != nil {
            map["PkgVersionId"] = self.pkgVersionId!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("PkgVersionId") {
            self.pkgVersionId = dict["PkgVersionId"] as! String
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
    }
}

public class DeletePkgVersionResponseBody : Tea.TeaModel {
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

public class DeletePkgVersionResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeletePkgVersionResponseBody?

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
            var model = DeletePkgVersionResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DeployAppEnvRequest : Tea.TeaModel {
    public var batchInterval: Int32?

    public var batchPercent: Int32?

    public var batchSize: Int32?

    public var envId: String?

    public var pauseBetweenBatches: Bool?

    public var pkgVersionId: String?

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
        if self.batchInterval != nil {
            map["BatchInterval"] = self.batchInterval!
        }
        if self.batchPercent != nil {
            map["BatchPercent"] = self.batchPercent!
        }
        if self.batchSize != nil {
            map["BatchSize"] = self.batchSize!
        }
        if self.envId != nil {
            map["EnvId"] = self.envId!
        }
        if self.pauseBetweenBatches != nil {
            map["PauseBetweenBatches"] = self.pauseBetweenBatches!
        }
        if self.pkgVersionId != nil {
            map["PkgVersionId"] = self.pkgVersionId!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("BatchInterval") {
            self.batchInterval = dict["BatchInterval"] as! Int32
        }
        if dict.keys.contains("BatchPercent") {
            self.batchPercent = dict["BatchPercent"] as! Int32
        }
        if dict.keys.contains("BatchSize") {
            self.batchSize = dict["BatchSize"] as! Int32
        }
        if dict.keys.contains("EnvId") {
            self.envId = dict["EnvId"] as! String
        }
        if dict.keys.contains("PauseBetweenBatches") {
            self.pauseBetweenBatches = dict["PauseBetweenBatches"] as! Bool
        }
        if dict.keys.contains("PkgVersionId") {
            self.pkgVersionId = dict["PkgVersionId"] as! String
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
    }
}

public class DeployAppEnvResponseBody : Tea.TeaModel {
    public class EnvChange : Tea.TeaModel {
        public var changeId: String?

        public var envId: String?

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
            if self.changeId != nil {
                map["ChangeId"] = self.changeId!
            }
            if self.envId != nil {
                map["EnvId"] = self.envId!
            }
            if self.startTime != nil {
                map["StartTime"] = self.startTime!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("ChangeId") {
                self.changeId = dict["ChangeId"] as! String
            }
            if dict.keys.contains("EnvId") {
                self.envId = dict["EnvId"] as! String
            }
            if dict.keys.contains("StartTime") {
                self.startTime = dict["StartTime"] as! String
            }
        }
    }
    public var code: String?

    public var envChange: DeployAppEnvResponseBody.EnvChange?

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
        try self.envChange?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.envChange != nil {
            map["EnvChange"] = self.envChange?.toMap()
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
        if dict.keys.contains("EnvChange") {
            var model = DeployAppEnvResponseBody.EnvChange()
            model.fromMap(dict["EnvChange"] as! [String: Any])
            self.envChange = model
        }
        if dict.keys.contains("Message") {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class DeployAppEnvResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeployAppEnvResponseBody?

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
            var model = DeployAppEnvResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeAppEnvInstanceHealthRequest : Tea.TeaModel {
    public var envId: String?

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
        if self.envId != nil {
            map["EnvId"] = self.envId!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("EnvId") {
            self.envId = dict["EnvId"] as! String
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
    }
}

public class DescribeAppEnvInstanceHealthResponseBody : Tea.TeaModel {
    public class EnvInstanceHealth : Tea.TeaModel {
        public class InstanceHealthList : Tea.TeaModel {
            public class InstanceHealth : Tea.TeaModel {
                public var agentStatus: String?

                public var appStatus: String?

                public var disconnectedTime: String?

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
                    if self.agentStatus != nil {
                        map["AgentStatus"] = self.agentStatus!
                    }
                    if self.appStatus != nil {
                        map["AppStatus"] = self.appStatus!
                    }
                    if self.disconnectedTime != nil {
                        map["DisconnectedTime"] = self.disconnectedTime!
                    }
                    if self.instanceId != nil {
                        map["InstanceId"] = self.instanceId!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("AgentStatus") {
                        self.agentStatus = dict["AgentStatus"] as! String
                    }
                    if dict.keys.contains("AppStatus") {
                        self.appStatus = dict["AppStatus"] as! String
                    }
                    if dict.keys.contains("DisconnectedTime") {
                        self.disconnectedTime = dict["DisconnectedTime"] as! String
                    }
                    if dict.keys.contains("InstanceId") {
                        self.instanceId = dict["InstanceId"] as! String
                    }
                }
            }
            public var instanceHealth: [DescribeAppEnvInstanceHealthResponseBody.EnvInstanceHealth.InstanceHealthList.InstanceHealth]?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.instanceHealth != nil {
                    var tmp : [Any] = []
                    for k in self.instanceHealth! {
                        tmp.append(k.toMap())
                    }
                    map["InstanceHealth"] = tmp
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("InstanceHealth") {
                    self.instanceHealth = dict["InstanceHealth"] as! [DescribeAppEnvInstanceHealthResponseBody.EnvInstanceHealth.InstanceHealthList.InstanceHealth]
                }
            }
        }
        public var enableHealthCheck: Bool?

        public var envId: String?

        public var envName: String?

        public var instanceHealthList: DescribeAppEnvInstanceHealthResponseBody.EnvInstanceHealth.InstanceHealthList?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.instanceHealthList?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.enableHealthCheck != nil {
                map["EnableHealthCheck"] = self.enableHealthCheck!
            }
            if self.envId != nil {
                map["EnvId"] = self.envId!
            }
            if self.envName != nil {
                map["EnvName"] = self.envName!
            }
            if self.instanceHealthList != nil {
                map["InstanceHealthList"] = self.instanceHealthList?.toMap()
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("EnableHealthCheck") {
                self.enableHealthCheck = dict["EnableHealthCheck"] as! Bool
            }
            if dict.keys.contains("EnvId") {
                self.envId = dict["EnvId"] as! String
            }
            if dict.keys.contains("EnvName") {
                self.envName = dict["EnvName"] as! String
            }
            if dict.keys.contains("InstanceHealthList") {
                var model = DescribeAppEnvInstanceHealthResponseBody.EnvInstanceHealth.InstanceHealthList()
                model.fromMap(dict["InstanceHealthList"] as! [String: Any])
                self.instanceHealthList = model
            }
        }
    }
    public var code: String?

    public var envInstanceHealth: DescribeAppEnvInstanceHealthResponseBody.EnvInstanceHealth?

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
        try self.envInstanceHealth?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.envInstanceHealth != nil {
            map["EnvInstanceHealth"] = self.envInstanceHealth?.toMap()
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
        if dict.keys.contains("EnvInstanceHealth") {
            var model = DescribeAppEnvInstanceHealthResponseBody.EnvInstanceHealth()
            model.fromMap(dict["EnvInstanceHealth"] as! [String: Any])
            self.envInstanceHealth = model
        }
        if dict.keys.contains("Message") {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class DescribeAppEnvInstanceHealthResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeAppEnvInstanceHealthResponseBody?

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
            var model = DescribeAppEnvInstanceHealthResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeAppEnvStatusRequest : Tea.TeaModel {
    public var envId: String?

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
        if self.envId != nil {
            map["EnvId"] = self.envId!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("EnvId") {
            self.envId = dict["EnvId"] as! String
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
    }
}

public class DescribeAppEnvStatusResponseBody : Tea.TeaModel {
    public class EnvStatus : Tea.TeaModel {
        public class InstanceAgentStatus : Tea.TeaModel {
            public var connectedInstances: Int32?

            public var disconnectedInstances: Int32?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.connectedInstances != nil {
                    map["ConnectedInstances"] = self.connectedInstances!
                }
                if self.disconnectedInstances != nil {
                    map["DisconnectedInstances"] = self.disconnectedInstances!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("ConnectedInstances") {
                    self.connectedInstances = dict["ConnectedInstances"] as! Int32
                }
                if dict.keys.contains("DisconnectedInstances") {
                    self.disconnectedInstances = dict["DisconnectedInstances"] as! Int32
                }
            }
        }
        public class InstanceAppStatus : Tea.TeaModel {
            public var healthyInstances: Int32?

            public var stoppedInstances: Int32?

            public var unhealthyInstances: Int32?

            public var unknownInstances: Int32?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.healthyInstances != nil {
                    map["HealthyInstances"] = self.healthyInstances!
                }
                if self.stoppedInstances != nil {
                    map["StoppedInstances"] = self.stoppedInstances!
                }
                if self.unhealthyInstances != nil {
                    map["UnhealthyInstances"] = self.unhealthyInstances!
                }
                if self.unknownInstances != nil {
                    map["UnknownInstances"] = self.unknownInstances!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("HealthyInstances") {
                    self.healthyInstances = dict["HealthyInstances"] as! Int32
                }
                if dict.keys.contains("StoppedInstances") {
                    self.stoppedInstances = dict["StoppedInstances"] as! Int32
                }
                if dict.keys.contains("UnhealthyInstances") {
                    self.unhealthyInstances = dict["UnhealthyInstances"] as! Int32
                }
                if dict.keys.contains("UnknownInstances") {
                    self.unknownInstances = dict["UnknownInstances"] as! Int32
                }
            }
        }
        public var abortingChange: Bool?

        public var applyingChange: Bool?

        public var changeBanner: String?

        public var envId: String?

        public var envName: String?

        public var envStatus: String?

        public var instanceAgentStatus: DescribeAppEnvStatusResponseBody.EnvStatus.InstanceAgentStatus?

        public var instanceAppStatus: DescribeAppEnvStatusResponseBody.EnvStatus.InstanceAppStatus?

        public var lastEnvStatus: String?

        public var latestChangeId: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.instanceAgentStatus?.validate()
            try self.instanceAppStatus?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.abortingChange != nil {
                map["AbortingChange"] = self.abortingChange!
            }
            if self.applyingChange != nil {
                map["ApplyingChange"] = self.applyingChange!
            }
            if self.changeBanner != nil {
                map["ChangeBanner"] = self.changeBanner!
            }
            if self.envId != nil {
                map["EnvId"] = self.envId!
            }
            if self.envName != nil {
                map["EnvName"] = self.envName!
            }
            if self.envStatus != nil {
                map["EnvStatus"] = self.envStatus!
            }
            if self.instanceAgentStatus != nil {
                map["InstanceAgentStatus"] = self.instanceAgentStatus?.toMap()
            }
            if self.instanceAppStatus != nil {
                map["InstanceAppStatus"] = self.instanceAppStatus?.toMap()
            }
            if self.lastEnvStatus != nil {
                map["LastEnvStatus"] = self.lastEnvStatus!
            }
            if self.latestChangeId != nil {
                map["LatestChangeId"] = self.latestChangeId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("AbortingChange") {
                self.abortingChange = dict["AbortingChange"] as! Bool
            }
            if dict.keys.contains("ApplyingChange") {
                self.applyingChange = dict["ApplyingChange"] as! Bool
            }
            if dict.keys.contains("ChangeBanner") {
                self.changeBanner = dict["ChangeBanner"] as! String
            }
            if dict.keys.contains("EnvId") {
                self.envId = dict["EnvId"] as! String
            }
            if dict.keys.contains("EnvName") {
                self.envName = dict["EnvName"] as! String
            }
            if dict.keys.contains("EnvStatus") {
                self.envStatus = dict["EnvStatus"] as! String
            }
            if dict.keys.contains("InstanceAgentStatus") {
                var model = DescribeAppEnvStatusResponseBody.EnvStatus.InstanceAgentStatus()
                model.fromMap(dict["InstanceAgentStatus"] as! [String: Any])
                self.instanceAgentStatus = model
            }
            if dict.keys.contains("InstanceAppStatus") {
                var model = DescribeAppEnvStatusResponseBody.EnvStatus.InstanceAppStatus()
                model.fromMap(dict["InstanceAppStatus"] as! [String: Any])
                self.instanceAppStatus = model
            }
            if dict.keys.contains("LastEnvStatus") {
                self.lastEnvStatus = dict["LastEnvStatus"] as! String
            }
            if dict.keys.contains("LatestChangeId") {
                self.latestChangeId = dict["LatestChangeId"] as! String
            }
        }
    }
    public var code: String?

    public var envStatus: DescribeAppEnvStatusResponseBody.EnvStatus?

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
        try self.envStatus?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.envStatus != nil {
            map["EnvStatus"] = self.envStatus?.toMap()
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
        if dict.keys.contains("EnvStatus") {
            var model = DescribeAppEnvStatusResponseBody.EnvStatus()
            model.fromMap(dict["EnvStatus"] as! [String: Any])
            self.envStatus = model
        }
        if dict.keys.contains("Message") {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class DescribeAppEnvStatusResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeAppEnvStatusResponseBody?

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
            var model = DescribeAppEnvStatusResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeAppEnvsRequest : Tea.TeaModel {
    public var appId: String?

    public var envId: String?

    public var envName: String?

    public var envSearch: String?

    public var includeTerminated: Bool?

    public var pageNumber: Int32?

    public var pageSize: Int32?

    public var recentUpdated: Bool?

    public var regionId: String?

    public var stackSearch: String?

    public override init() {
        super.init()
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
        if self.envId != nil {
            map["EnvId"] = self.envId!
        }
        if self.envName != nil {
            map["EnvName"] = self.envName!
        }
        if self.envSearch != nil {
            map["EnvSearch"] = self.envSearch!
        }
        if self.includeTerminated != nil {
            map["IncludeTerminated"] = self.includeTerminated!
        }
        if self.pageNumber != nil {
            map["PageNumber"] = self.pageNumber!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.recentUpdated != nil {
            map["RecentUpdated"] = self.recentUpdated!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.stackSearch != nil {
            map["StackSearch"] = self.stackSearch!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AppId") {
            self.appId = dict["AppId"] as! String
        }
        if dict.keys.contains("EnvId") {
            self.envId = dict["EnvId"] as! String
        }
        if dict.keys.contains("EnvName") {
            self.envName = dict["EnvName"] as! String
        }
        if dict.keys.contains("EnvSearch") {
            self.envSearch = dict["EnvSearch"] as! String
        }
        if dict.keys.contains("IncludeTerminated") {
            self.includeTerminated = dict["IncludeTerminated"] as! Bool
        }
        if dict.keys.contains("PageNumber") {
            self.pageNumber = dict["PageNumber"] as! Int32
        }
        if dict.keys.contains("PageSize") {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("RecentUpdated") {
            self.recentUpdated = dict["RecentUpdated"] as! Bool
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("StackSearch") {
            self.stackSearch = dict["StackSearch"] as! String
        }
    }
}

public class DescribeAppEnvsResponseBody : Tea.TeaModel {
    public class AppEnvs : Tea.TeaModel {
        public class AppEnv : Tea.TeaModel {
            public var abortingChange: Bool?

            public var appId: String?

            public var appName: String?

            public var applyingChange: Bool?

            public var categoryName: String?

            public var changeBanner: String?

            public var createTime: Int64?

            public var createUsername: String?

            public var dataRoot: String?

            public var envDescription: String?

            public var envId: String?

            public var envName: String?

            public var envStatus: String?

            public var envType: String?

            public var lastEnvStatus: String?

            public var latestChangeId: String?

            public var logBase: String?

            public var pkgVersionId: String?

            public var pkgVersionLabel: String?

            public var pkgVersionStorageKey: String?

            public var stackId: String?

            public var stackName: String?

            public var storageBase: String?

            public var totalInstances: Int64?

            public var updateTime: Int64?

            public var updateUsername: String?

            public var usingSharedStorage: Bool?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.abortingChange != nil {
                    map["AbortingChange"] = self.abortingChange!
                }
                if self.appId != nil {
                    map["AppId"] = self.appId!
                }
                if self.appName != nil {
                    map["AppName"] = self.appName!
                }
                if self.applyingChange != nil {
                    map["ApplyingChange"] = self.applyingChange!
                }
                if self.categoryName != nil {
                    map["CategoryName"] = self.categoryName!
                }
                if self.changeBanner != nil {
                    map["ChangeBanner"] = self.changeBanner!
                }
                if self.createTime != nil {
                    map["CreateTime"] = self.createTime!
                }
                if self.createUsername != nil {
                    map["CreateUsername"] = self.createUsername!
                }
                if self.dataRoot != nil {
                    map["DataRoot"] = self.dataRoot!
                }
                if self.envDescription != nil {
                    map["EnvDescription"] = self.envDescription!
                }
                if self.envId != nil {
                    map["EnvId"] = self.envId!
                }
                if self.envName != nil {
                    map["EnvName"] = self.envName!
                }
                if self.envStatus != nil {
                    map["EnvStatus"] = self.envStatus!
                }
                if self.envType != nil {
                    map["EnvType"] = self.envType!
                }
                if self.lastEnvStatus != nil {
                    map["LastEnvStatus"] = self.lastEnvStatus!
                }
                if self.latestChangeId != nil {
                    map["LatestChangeId"] = self.latestChangeId!
                }
                if self.logBase != nil {
                    map["LogBase"] = self.logBase!
                }
                if self.pkgVersionId != nil {
                    map["PkgVersionId"] = self.pkgVersionId!
                }
                if self.pkgVersionLabel != nil {
                    map["PkgVersionLabel"] = self.pkgVersionLabel!
                }
                if self.pkgVersionStorageKey != nil {
                    map["PkgVersionStorageKey"] = self.pkgVersionStorageKey!
                }
                if self.stackId != nil {
                    map["StackId"] = self.stackId!
                }
                if self.stackName != nil {
                    map["StackName"] = self.stackName!
                }
                if self.storageBase != nil {
                    map["StorageBase"] = self.storageBase!
                }
                if self.totalInstances != nil {
                    map["TotalInstances"] = self.totalInstances!
                }
                if self.updateTime != nil {
                    map["UpdateTime"] = self.updateTime!
                }
                if self.updateUsername != nil {
                    map["UpdateUsername"] = self.updateUsername!
                }
                if self.usingSharedStorage != nil {
                    map["UsingSharedStorage"] = self.usingSharedStorage!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("AbortingChange") {
                    self.abortingChange = dict["AbortingChange"] as! Bool
                }
                if dict.keys.contains("AppId") {
                    self.appId = dict["AppId"] as! String
                }
                if dict.keys.contains("AppName") {
                    self.appName = dict["AppName"] as! String
                }
                if dict.keys.contains("ApplyingChange") {
                    self.applyingChange = dict["ApplyingChange"] as! Bool
                }
                if dict.keys.contains("CategoryName") {
                    self.categoryName = dict["CategoryName"] as! String
                }
                if dict.keys.contains("ChangeBanner") {
                    self.changeBanner = dict["ChangeBanner"] as! String
                }
                if dict.keys.contains("CreateTime") {
                    self.createTime = dict["CreateTime"] as! Int64
                }
                if dict.keys.contains("CreateUsername") {
                    self.createUsername = dict["CreateUsername"] as! String
                }
                if dict.keys.contains("DataRoot") {
                    self.dataRoot = dict["DataRoot"] as! String
                }
                if dict.keys.contains("EnvDescription") {
                    self.envDescription = dict["EnvDescription"] as! String
                }
                if dict.keys.contains("EnvId") {
                    self.envId = dict["EnvId"] as! String
                }
                if dict.keys.contains("EnvName") {
                    self.envName = dict["EnvName"] as! String
                }
                if dict.keys.contains("EnvStatus") {
                    self.envStatus = dict["EnvStatus"] as! String
                }
                if dict.keys.contains("EnvType") {
                    self.envType = dict["EnvType"] as! String
                }
                if dict.keys.contains("LastEnvStatus") {
                    self.lastEnvStatus = dict["LastEnvStatus"] as! String
                }
                if dict.keys.contains("LatestChangeId") {
                    self.latestChangeId = dict["LatestChangeId"] as! String
                }
                if dict.keys.contains("LogBase") {
                    self.logBase = dict["LogBase"] as! String
                }
                if dict.keys.contains("PkgVersionId") {
                    self.pkgVersionId = dict["PkgVersionId"] as! String
                }
                if dict.keys.contains("PkgVersionLabel") {
                    self.pkgVersionLabel = dict["PkgVersionLabel"] as! String
                }
                if dict.keys.contains("PkgVersionStorageKey") {
                    self.pkgVersionStorageKey = dict["PkgVersionStorageKey"] as! String
                }
                if dict.keys.contains("StackId") {
                    self.stackId = dict["StackId"] as! String
                }
                if dict.keys.contains("StackName") {
                    self.stackName = dict["StackName"] as! String
                }
                if dict.keys.contains("StorageBase") {
                    self.storageBase = dict["StorageBase"] as! String
                }
                if dict.keys.contains("TotalInstances") {
                    self.totalInstances = dict["TotalInstances"] as! Int64
                }
                if dict.keys.contains("UpdateTime") {
                    self.updateTime = dict["UpdateTime"] as! Int64
                }
                if dict.keys.contains("UpdateUsername") {
                    self.updateUsername = dict["UpdateUsername"] as! String
                }
                if dict.keys.contains("UsingSharedStorage") {
                    self.usingSharedStorage = dict["UsingSharedStorage"] as! Bool
                }
            }
        }
        public var appEnv: [DescribeAppEnvsResponseBody.AppEnvs.AppEnv]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.appEnv != nil {
                var tmp : [Any] = []
                for k in self.appEnv! {
                    tmp.append(k.toMap())
                }
                map["AppEnv"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("AppEnv") {
                self.appEnv = dict["AppEnv"] as! [DescribeAppEnvsResponseBody.AppEnvs.AppEnv]
            }
        }
    }
    public var appEnvs: DescribeAppEnvsResponseBody.AppEnvs?

    public var code: String?

    public var message: String?

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
        try self.appEnvs?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.appEnvs != nil {
            map["AppEnvs"] = self.appEnvs?.toMap()
        }
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.message != nil {
            map["Message"] = self.message!
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AppEnvs") {
            var model = DescribeAppEnvsResponseBody.AppEnvs()
            model.fromMap(dict["AppEnvs"] as! [String: Any])
            self.appEnvs = model
        }
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Message") {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("PageNumber") {
            self.pageNumber = dict["PageNumber"] as! Int32
        }
        if dict.keys.contains("PageSize") {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("TotalCount") {
            self.totalCount = dict["TotalCount"] as! Int32
        }
    }
}

public class DescribeAppEnvsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeAppEnvsResponseBody?

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
            var model = DescribeAppEnvsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeApplicationsRequest : Tea.TeaModel {
    public var appId: String?

    public var appName: String?

    public var appSearch: String?

    public var categorySearch: String?

    public var envSearch: String?

    public var pageNumber: Int32?

    public var pageSize: Int32?

    public var regionId: String?

    public var stackSearch: String?

    public override init() {
        super.init()
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
        if self.appSearch != nil {
            map["AppSearch"] = self.appSearch!
        }
        if self.categorySearch != nil {
            map["CategorySearch"] = self.categorySearch!
        }
        if self.envSearch != nil {
            map["EnvSearch"] = self.envSearch!
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
        if self.stackSearch != nil {
            map["StackSearch"] = self.stackSearch!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AppId") {
            self.appId = dict["AppId"] as! String
        }
        if dict.keys.contains("AppName") {
            self.appName = dict["AppName"] as! String
        }
        if dict.keys.contains("AppSearch") {
            self.appSearch = dict["AppSearch"] as! String
        }
        if dict.keys.contains("CategorySearch") {
            self.categorySearch = dict["CategorySearch"] as! String
        }
        if dict.keys.contains("EnvSearch") {
            self.envSearch = dict["EnvSearch"] as! String
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
        if dict.keys.contains("StackSearch") {
            self.stackSearch = dict["StackSearch"] as! String
        }
    }
}

public class DescribeApplicationsResponseBody : Tea.TeaModel {
    public class Applications : Tea.TeaModel {
        public class Application : Tea.TeaModel {
            public var appDescription: String?

            public var appId: String?

            public var appName: String?

            public var categoryName: String?

            public var createTime: Int64?

            public var createUsername: String?

            public var runningEnvs: Int32?

            public var terminatedEnvs: Int32?

            public var totalEnvs: Int32?

            public var updateTime: Int64?

            public var updateUsername: String?

            public var usingSharedStorage: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.appDescription != nil {
                    map["AppDescription"] = self.appDescription!
                }
                if self.appId != nil {
                    map["AppId"] = self.appId!
                }
                if self.appName != nil {
                    map["AppName"] = self.appName!
                }
                if self.categoryName != nil {
                    map["CategoryName"] = self.categoryName!
                }
                if self.createTime != nil {
                    map["CreateTime"] = self.createTime!
                }
                if self.createUsername != nil {
                    map["CreateUsername"] = self.createUsername!
                }
                if self.runningEnvs != nil {
                    map["RunningEnvs"] = self.runningEnvs!
                }
                if self.terminatedEnvs != nil {
                    map["TerminatedEnvs"] = self.terminatedEnvs!
                }
                if self.totalEnvs != nil {
                    map["TotalEnvs"] = self.totalEnvs!
                }
                if self.updateTime != nil {
                    map["UpdateTime"] = self.updateTime!
                }
                if self.updateUsername != nil {
                    map["UpdateUsername"] = self.updateUsername!
                }
                if self.usingSharedStorage != nil {
                    map["UsingSharedStorage"] = self.usingSharedStorage!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("AppDescription") {
                    self.appDescription = dict["AppDescription"] as! String
                }
                if dict.keys.contains("AppId") {
                    self.appId = dict["AppId"] as! String
                }
                if dict.keys.contains("AppName") {
                    self.appName = dict["AppName"] as! String
                }
                if dict.keys.contains("CategoryName") {
                    self.categoryName = dict["CategoryName"] as! String
                }
                if dict.keys.contains("CreateTime") {
                    self.createTime = dict["CreateTime"] as! Int64
                }
                if dict.keys.contains("CreateUsername") {
                    self.createUsername = dict["CreateUsername"] as! String
                }
                if dict.keys.contains("RunningEnvs") {
                    self.runningEnvs = dict["RunningEnvs"] as! Int32
                }
                if dict.keys.contains("TerminatedEnvs") {
                    self.terminatedEnvs = dict["TerminatedEnvs"] as! Int32
                }
                if dict.keys.contains("TotalEnvs") {
                    self.totalEnvs = dict["TotalEnvs"] as! Int32
                }
                if dict.keys.contains("UpdateTime") {
                    self.updateTime = dict["UpdateTime"] as! Int64
                }
                if dict.keys.contains("UpdateUsername") {
                    self.updateUsername = dict["UpdateUsername"] as! String
                }
                if dict.keys.contains("UsingSharedStorage") {
                    self.usingSharedStorage = dict["UsingSharedStorage"] as! String
                }
            }
        }
        public var application: [DescribeApplicationsResponseBody.Applications.Application]?

        public override init() {
            super.init()
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
                var tmp : [Any] = []
                for k in self.application! {
                    tmp.append(k.toMap())
                }
                map["Application"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Application") {
                self.application = dict["Application"] as! [DescribeApplicationsResponseBody.Applications.Application]
            }
        }
    }
    public var applications: DescribeApplicationsResponseBody.Applications?

    public var code: String?

    public var message: String?

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
        try self.applications?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.applications != nil {
            map["Applications"] = self.applications?.toMap()
        }
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.message != nil {
            map["Message"] = self.message!
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Applications") {
            var model = DescribeApplicationsResponseBody.Applications()
            model.fromMap(dict["Applications"] as! [String: Any])
            self.applications = model
        }
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Message") {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("PageNumber") {
            self.pageNumber = dict["PageNumber"] as! Int32
        }
        if dict.keys.contains("PageSize") {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("TotalCount") {
            self.totalCount = dict["TotalCount"] as! Int32
        }
    }
}

public class DescribeApplicationsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeApplicationsResponseBody?

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
            var model = DescribeApplicationsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeCategoriesRequest : Tea.TeaModel {
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
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
    }
}

public class DescribeCategoriesResponseBody : Tea.TeaModel {
    public class Categories : Tea.TeaModel {
        public class Category : Tea.TeaModel {
            public class DemoProjects : Tea.TeaModel {
                public class DemoProject : Tea.TeaModel {
                    public var packageDownloadUrl: String?

                    public var packageUrl: String?

                    public var regionId: String?

                    public var sourceUrl: String?

                    public override init() {
                        super.init()
                    }

                    public init(_ dict: [String: Any]) {
                        super.init()
                        self.fromMap(dict)
                    }

                    public override func validate() throws -> Void {
                    }

                    public override func toMap() -> [String : Any] {
                        var map = super.toMap()
                        if self.packageDownloadUrl != nil {
                            map["PackageDownloadUrl"] = self.packageDownloadUrl!
                        }
                        if self.packageUrl != nil {
                            map["PackageUrl"] = self.packageUrl!
                        }
                        if self.regionId != nil {
                            map["RegionId"] = self.regionId!
                        }
                        if self.sourceUrl != nil {
                            map["SourceUrl"] = self.sourceUrl!
                        }
                        return map
                    }

                    public override func fromMap(_ dict: [String: Any]) -> Void {
                        if dict.keys.contains("PackageDownloadUrl") {
                            self.packageDownloadUrl = dict["PackageDownloadUrl"] as! String
                        }
                        if dict.keys.contains("PackageUrl") {
                            self.packageUrl = dict["PackageUrl"] as! String
                        }
                        if dict.keys.contains("RegionId") {
                            self.regionId = dict["RegionId"] as! String
                        }
                        if dict.keys.contains("SourceUrl") {
                            self.sourceUrl = dict["SourceUrl"] as! String
                        }
                    }
                }
                public var demoProject: [DescribeCategoriesResponseBody.Categories.Category.DemoProjects.DemoProject]?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.demoProject != nil {
                        var tmp : [Any] = []
                        for k in self.demoProject! {
                            tmp.append(k.toMap())
                        }
                        map["DemoProject"] = tmp
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("DemoProject") {
                        self.demoProject = dict["DemoProject"] as! [DescribeCategoriesResponseBody.Categories.Category.DemoProjects.DemoProject]
                    }
                }
            }
            public var categoryDescription: String?

            public var categoryId: String?

            public var categoryLogo: String?

            public var categoryName: String?

            public var createTime: String?

            public var demoProjects: DescribeCategoriesResponseBody.Categories.Category.DemoProjects?

            public var updateTime: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
                try self.demoProjects?.validate()
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.categoryDescription != nil {
                    map["CategoryDescription"] = self.categoryDescription!
                }
                if self.categoryId != nil {
                    map["CategoryId"] = self.categoryId!
                }
                if self.categoryLogo != nil {
                    map["CategoryLogo"] = self.categoryLogo!
                }
                if self.categoryName != nil {
                    map["CategoryName"] = self.categoryName!
                }
                if self.createTime != nil {
                    map["CreateTime"] = self.createTime!
                }
                if self.demoProjects != nil {
                    map["DemoProjects"] = self.demoProjects?.toMap()
                }
                if self.updateTime != nil {
                    map["UpdateTime"] = self.updateTime!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("CategoryDescription") {
                    self.categoryDescription = dict["CategoryDescription"] as! String
                }
                if dict.keys.contains("CategoryId") {
                    self.categoryId = dict["CategoryId"] as! String
                }
                if dict.keys.contains("CategoryLogo") {
                    self.categoryLogo = dict["CategoryLogo"] as! String
                }
                if dict.keys.contains("CategoryName") {
                    self.categoryName = dict["CategoryName"] as! String
                }
                if dict.keys.contains("CreateTime") {
                    self.createTime = dict["CreateTime"] as! String
                }
                if dict.keys.contains("DemoProjects") {
                    var model = DescribeCategoriesResponseBody.Categories.Category.DemoProjects()
                    model.fromMap(dict["DemoProjects"] as! [String: Any])
                    self.demoProjects = model
                }
                if dict.keys.contains("UpdateTime") {
                    self.updateTime = dict["UpdateTime"] as! String
                }
            }
        }
        public var category: [DescribeCategoriesResponseBody.Categories.Category]?

        public override init() {
            super.init()
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
                var tmp : [Any] = []
                for k in self.category! {
                    tmp.append(k.toMap())
                }
                map["Category"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Category") {
                self.category = dict["Category"] as! [DescribeCategoriesResponseBody.Categories.Category]
            }
        }
    }
    public var categories: DescribeCategoriesResponseBody.Categories?

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
        try self.categories?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.categories != nil {
            map["Categories"] = self.categories?.toMap()
        }
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
        if dict.keys.contains("Categories") {
            var model = DescribeCategoriesResponseBody.Categories()
            model.fromMap(dict["Categories"] as! [String: Any])
            self.categories = model
        }
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

public class DescribeCategoriesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeCategoriesResponseBody?

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
            var model = DescribeCategoriesResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeChangeRequest : Tea.TeaModel {
    public var changeId: String?

    public var envId: String?

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
        if self.changeId != nil {
            map["ChangeId"] = self.changeId!
        }
        if self.envId != nil {
            map["EnvId"] = self.envId!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ChangeId") {
            self.changeId = dict["ChangeId"] as! String
        }
        if dict.keys.contains("EnvId") {
            self.envId = dict["EnvId"] as! String
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
    }
}

public class DescribeChangeResponseBody : Tea.TeaModel {
    public class Change : Tea.TeaModel {
        public var actionName: String?

        public var changeAborted: Bool?

        public var changeDescription: String?

        public var changeFinished: Bool?

        public var changeId: String?

        public var changeMessage: String?

        public var changeName: String?

        public var changePaused: Bool?

        public var changeSucceed: Bool?

        public var changeTimedout: Bool?

        public var createTime: Int64?

        public var createUsername: String?

        public var envId: String?

        public var finishTime: Int64?

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
            if self.actionName != nil {
                map["ActionName"] = self.actionName!
            }
            if self.changeAborted != nil {
                map["ChangeAborted"] = self.changeAborted!
            }
            if self.changeDescription != nil {
                map["ChangeDescription"] = self.changeDescription!
            }
            if self.changeFinished != nil {
                map["ChangeFinished"] = self.changeFinished!
            }
            if self.changeId != nil {
                map["ChangeId"] = self.changeId!
            }
            if self.changeMessage != nil {
                map["ChangeMessage"] = self.changeMessage!
            }
            if self.changeName != nil {
                map["ChangeName"] = self.changeName!
            }
            if self.changePaused != nil {
                map["ChangePaused"] = self.changePaused!
            }
            if self.changeSucceed != nil {
                map["ChangeSucceed"] = self.changeSucceed!
            }
            if self.changeTimedout != nil {
                map["ChangeTimedout"] = self.changeTimedout!
            }
            if self.createTime != nil {
                map["CreateTime"] = self.createTime!
            }
            if self.createUsername != nil {
                map["CreateUsername"] = self.createUsername!
            }
            if self.envId != nil {
                map["EnvId"] = self.envId!
            }
            if self.finishTime != nil {
                map["FinishTime"] = self.finishTime!
            }
            if self.updateTime != nil {
                map["UpdateTime"] = self.updateTime!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("ActionName") {
                self.actionName = dict["ActionName"] as! String
            }
            if dict.keys.contains("ChangeAborted") {
                self.changeAborted = dict["ChangeAborted"] as! Bool
            }
            if dict.keys.contains("ChangeDescription") {
                self.changeDescription = dict["ChangeDescription"] as! String
            }
            if dict.keys.contains("ChangeFinished") {
                self.changeFinished = dict["ChangeFinished"] as! Bool
            }
            if dict.keys.contains("ChangeId") {
                self.changeId = dict["ChangeId"] as! String
            }
            if dict.keys.contains("ChangeMessage") {
                self.changeMessage = dict["ChangeMessage"] as! String
            }
            if dict.keys.contains("ChangeName") {
                self.changeName = dict["ChangeName"] as! String
            }
            if dict.keys.contains("ChangePaused") {
                self.changePaused = dict["ChangePaused"] as! Bool
            }
            if dict.keys.contains("ChangeSucceed") {
                self.changeSucceed = dict["ChangeSucceed"] as! Bool
            }
            if dict.keys.contains("ChangeTimedout") {
                self.changeTimedout = dict["ChangeTimedout"] as! Bool
            }
            if dict.keys.contains("CreateTime") {
                self.createTime = dict["CreateTime"] as! Int64
            }
            if dict.keys.contains("CreateUsername") {
                self.createUsername = dict["CreateUsername"] as! String
            }
            if dict.keys.contains("EnvId") {
                self.envId = dict["EnvId"] as! String
            }
            if dict.keys.contains("FinishTime") {
                self.finishTime = dict["FinishTime"] as! Int64
            }
            if dict.keys.contains("UpdateTime") {
                self.updateTime = dict["UpdateTime"] as! Int64
            }
        }
    }
    public var change: DescribeChangeResponseBody.Change?

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
        try self.change?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.change != nil {
            map["Change"] = self.change?.toMap()
        }
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
        if dict.keys.contains("Change") {
            var model = DescribeChangeResponseBody.Change()
            model.fromMap(dict["Change"] as! [String: Any])
            self.change = model
        }
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

public class DescribeChangeResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeChangeResponseBody?

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
            var model = DescribeChangeResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeChangesRequest : Tea.TeaModel {
    public var actionName: String?

    public var envId: String?

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
        if self.actionName != nil {
            map["ActionName"] = self.actionName!
        }
        if self.envId != nil {
            map["EnvId"] = self.envId!
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
        if dict.keys.contains("ActionName") {
            self.actionName = dict["ActionName"] as! String
        }
        if dict.keys.contains("EnvId") {
            self.envId = dict["EnvId"] as! String
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

public class DescribeChangesResponseBody : Tea.TeaModel {
    public class Changes : Tea.TeaModel {
        public class Change : Tea.TeaModel {
            public var actionName: String?

            public var changeAborted: Bool?

            public var changeDescription: String?

            public var changeFinished: Bool?

            public var changeId: String?

            public var changeMessage: String?

            public var changeName: String?

            public var changePaused: Bool?

            public var changeSucceed: Bool?

            public var changeTimedout: Bool?

            public var createTime: Int64?

            public var createUsername: String?

            public var envId: String?

            public var finishTime: Int64?

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
                if self.actionName != nil {
                    map["ActionName"] = self.actionName!
                }
                if self.changeAborted != nil {
                    map["ChangeAborted"] = self.changeAborted!
                }
                if self.changeDescription != nil {
                    map["ChangeDescription"] = self.changeDescription!
                }
                if self.changeFinished != nil {
                    map["ChangeFinished"] = self.changeFinished!
                }
                if self.changeId != nil {
                    map["ChangeId"] = self.changeId!
                }
                if self.changeMessage != nil {
                    map["ChangeMessage"] = self.changeMessage!
                }
                if self.changeName != nil {
                    map["ChangeName"] = self.changeName!
                }
                if self.changePaused != nil {
                    map["ChangePaused"] = self.changePaused!
                }
                if self.changeSucceed != nil {
                    map["ChangeSucceed"] = self.changeSucceed!
                }
                if self.changeTimedout != nil {
                    map["ChangeTimedout"] = self.changeTimedout!
                }
                if self.createTime != nil {
                    map["CreateTime"] = self.createTime!
                }
                if self.createUsername != nil {
                    map["CreateUsername"] = self.createUsername!
                }
                if self.envId != nil {
                    map["EnvId"] = self.envId!
                }
                if self.finishTime != nil {
                    map["FinishTime"] = self.finishTime!
                }
                if self.updateTime != nil {
                    map["UpdateTime"] = self.updateTime!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("ActionName") {
                    self.actionName = dict["ActionName"] as! String
                }
                if dict.keys.contains("ChangeAborted") {
                    self.changeAborted = dict["ChangeAborted"] as! Bool
                }
                if dict.keys.contains("ChangeDescription") {
                    self.changeDescription = dict["ChangeDescription"] as! String
                }
                if dict.keys.contains("ChangeFinished") {
                    self.changeFinished = dict["ChangeFinished"] as! Bool
                }
                if dict.keys.contains("ChangeId") {
                    self.changeId = dict["ChangeId"] as! String
                }
                if dict.keys.contains("ChangeMessage") {
                    self.changeMessage = dict["ChangeMessage"] as! String
                }
                if dict.keys.contains("ChangeName") {
                    self.changeName = dict["ChangeName"] as! String
                }
                if dict.keys.contains("ChangePaused") {
                    self.changePaused = dict["ChangePaused"] as! Bool
                }
                if dict.keys.contains("ChangeSucceed") {
                    self.changeSucceed = dict["ChangeSucceed"] as! Bool
                }
                if dict.keys.contains("ChangeTimedout") {
                    self.changeTimedout = dict["ChangeTimedout"] as! Bool
                }
                if dict.keys.contains("CreateTime") {
                    self.createTime = dict["CreateTime"] as! Int64
                }
                if dict.keys.contains("CreateUsername") {
                    self.createUsername = dict["CreateUsername"] as! String
                }
                if dict.keys.contains("EnvId") {
                    self.envId = dict["EnvId"] as! String
                }
                if dict.keys.contains("FinishTime") {
                    self.finishTime = dict["FinishTime"] as! Int64
                }
                if dict.keys.contains("UpdateTime") {
                    self.updateTime = dict["UpdateTime"] as! Int64
                }
            }
        }
        public var change: [DescribeChangesResponseBody.Changes.Change]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.change != nil {
                var tmp : [Any] = []
                for k in self.change! {
                    tmp.append(k.toMap())
                }
                map["Change"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Change") {
                self.change = dict["Change"] as! [DescribeChangesResponseBody.Changes.Change]
            }
        }
    }
    public var changes: DescribeChangesResponseBody.Changes?

    public var code: String?

    public var message: String?

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
        try self.changes?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.changes != nil {
            map["Changes"] = self.changes?.toMap()
        }
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.message != nil {
            map["Message"] = self.message!
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Changes") {
            var model = DescribeChangesResponseBody.Changes()
            model.fromMap(dict["Changes"] as! [String: Any])
            self.changes = model
        }
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Message") {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("PageNumber") {
            self.pageNumber = dict["PageNumber"] as! Int32
        }
        if dict.keys.contains("PageSize") {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("TotalCount") {
            self.totalCount = dict["TotalCount"] as! Int32
        }
    }
}

public class DescribeChangesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeChangesResponseBody?

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
            var model = DescribeChangesResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeConfigIndexRequest : Tea.TeaModel {
    public var envId: String?

    public var profileName: String?

    public var regionId: String?

    public var stackId: String?

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
        if self.envId != nil {
            map["EnvId"] = self.envId!
        }
        if self.profileName != nil {
            map["ProfileName"] = self.profileName!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.stackId != nil {
            map["StackId"] = self.stackId!
        }
        if self.templateId != nil {
            map["TemplateId"] = self.templateId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("EnvId") {
            self.envId = dict["EnvId"] as! String
        }
        if dict.keys.contains("ProfileName") {
            self.profileName = dict["ProfileName"] as! String
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("StackId") {
            self.stackId = dict["StackId"] as! String
        }
        if dict.keys.contains("TemplateId") {
            self.templateId = dict["TemplateId"] as! String
        }
    }
}

public class DescribeConfigIndexResponseBody : Tea.TeaModel {
    public class ConfigGroups : Tea.TeaModel {
        public class ConfigGroup : Tea.TeaModel {
            public class ConfigPaths : Tea.TeaModel {
                public class ConfigPath : Tea.TeaModel {
                    public class ConfigOptions : Tea.TeaModel {
                        public class ConfigOption : Tea.TeaModel {
                            public var changeSeverity: String?

                            public var defaultValue: String?

                            public var editorType: String?

                            public var hiddenOption: Bool?

                            public var maxLength: Int32?

                            public var maxValue: Int64?

                            public var minLength: Int32?

                            public var minValue: Int64?

                            public var optionDescription: String?

                            public var optionLabel: String?

                            public var optionName: String?

                            public var pathName: String?

                            public var readonlyOption: Bool?

                            public var regexDesc: String?

                            public var regexPattern: String?

                            public var valueOptions: String?

                            public var valueType: String?

                            public override init() {
                                super.init()
                            }

                            public init(_ dict: [String: Any]) {
                                super.init()
                                self.fromMap(dict)
                            }

                            public override func validate() throws -> Void {
                            }

                            public override func toMap() -> [String : Any] {
                                var map = super.toMap()
                                if self.changeSeverity != nil {
                                    map["ChangeSeverity"] = self.changeSeverity!
                                }
                                if self.defaultValue != nil {
                                    map["DefaultValue"] = self.defaultValue!
                                }
                                if self.editorType != nil {
                                    map["EditorType"] = self.editorType!
                                }
                                if self.hiddenOption != nil {
                                    map["HiddenOption"] = self.hiddenOption!
                                }
                                if self.maxLength != nil {
                                    map["MaxLength"] = self.maxLength!
                                }
                                if self.maxValue != nil {
                                    map["MaxValue"] = self.maxValue!
                                }
                                if self.minLength != nil {
                                    map["MinLength"] = self.minLength!
                                }
                                if self.minValue != nil {
                                    map["MinValue"] = self.minValue!
                                }
                                if self.optionDescription != nil {
                                    map["OptionDescription"] = self.optionDescription!
                                }
                                if self.optionLabel != nil {
                                    map["OptionLabel"] = self.optionLabel!
                                }
                                if self.optionName != nil {
                                    map["OptionName"] = self.optionName!
                                }
                                if self.pathName != nil {
                                    map["PathName"] = self.pathName!
                                }
                                if self.readonlyOption != nil {
                                    map["ReadonlyOption"] = self.readonlyOption!
                                }
                                if self.regexDesc != nil {
                                    map["RegexDesc"] = self.regexDesc!
                                }
                                if self.regexPattern != nil {
                                    map["RegexPattern"] = self.regexPattern!
                                }
                                if self.valueOptions != nil {
                                    map["ValueOptions"] = self.valueOptions!
                                }
                                if self.valueType != nil {
                                    map["ValueType"] = self.valueType!
                                }
                                return map
                            }

                            public override func fromMap(_ dict: [String: Any]) -> Void {
                                if dict.keys.contains("ChangeSeverity") {
                                    self.changeSeverity = dict["ChangeSeverity"] as! String
                                }
                                if dict.keys.contains("DefaultValue") {
                                    self.defaultValue = dict["DefaultValue"] as! String
                                }
                                if dict.keys.contains("EditorType") {
                                    self.editorType = dict["EditorType"] as! String
                                }
                                if dict.keys.contains("HiddenOption") {
                                    self.hiddenOption = dict["HiddenOption"] as! Bool
                                }
                                if dict.keys.contains("MaxLength") {
                                    self.maxLength = dict["MaxLength"] as! Int32
                                }
                                if dict.keys.contains("MaxValue") {
                                    self.maxValue = dict["MaxValue"] as! Int64
                                }
                                if dict.keys.contains("MinLength") {
                                    self.minLength = dict["MinLength"] as! Int32
                                }
                                if dict.keys.contains("MinValue") {
                                    self.minValue = dict["MinValue"] as! Int64
                                }
                                if dict.keys.contains("OptionDescription") {
                                    self.optionDescription = dict["OptionDescription"] as! String
                                }
                                if dict.keys.contains("OptionLabel") {
                                    self.optionLabel = dict["OptionLabel"] as! String
                                }
                                if dict.keys.contains("OptionName") {
                                    self.optionName = dict["OptionName"] as! String
                                }
                                if dict.keys.contains("PathName") {
                                    self.pathName = dict["PathName"] as! String
                                }
                                if dict.keys.contains("ReadonlyOption") {
                                    self.readonlyOption = dict["ReadonlyOption"] as! Bool
                                }
                                if dict.keys.contains("RegexDesc") {
                                    self.regexDesc = dict["RegexDesc"] as! String
                                }
                                if dict.keys.contains("RegexPattern") {
                                    self.regexPattern = dict["RegexPattern"] as! String
                                }
                                if dict.keys.contains("ValueOptions") {
                                    self.valueOptions = dict["ValueOptions"] as! String
                                }
                                if dict.keys.contains("ValueType") {
                                    self.valueType = dict["ValueType"] as! String
                                }
                            }
                        }
                        public var configOption: [DescribeConfigIndexResponseBody.ConfigGroups.ConfigGroup.ConfigPaths.ConfigPath.ConfigOptions.ConfigOption]?

                        public override init() {
                            super.init()
                        }

                        public init(_ dict: [String: Any]) {
                            super.init()
                            self.fromMap(dict)
                        }

                        public override func validate() throws -> Void {
                        }

                        public override func toMap() -> [String : Any] {
                            var map = super.toMap()
                            if self.configOption != nil {
                                var tmp : [Any] = []
                                for k in self.configOption! {
                                    tmp.append(k.toMap())
                                }
                                map["ConfigOption"] = tmp
                            }
                            return map
                        }

                        public override func fromMap(_ dict: [String: Any]) -> Void {
                            if dict.keys.contains("ConfigOption") {
                                self.configOption = dict["ConfigOption"] as! [DescribeConfigIndexResponseBody.ConfigGroups.ConfigGroup.ConfigPaths.ConfigPath.ConfigOptions.ConfigOption]
                            }
                        }
                    }
                    public var configOptions: DescribeConfigIndexResponseBody.ConfigGroups.ConfigGroup.ConfigPaths.ConfigPath.ConfigOptions?

                    public var hiddenPath: Bool?

                    public var pathLabel: String?

                    public var pathName: String?

                    public override init() {
                        super.init()
                    }

                    public init(_ dict: [String: Any]) {
                        super.init()
                        self.fromMap(dict)
                    }

                    public override func validate() throws -> Void {
                        try self.configOptions?.validate()
                    }

                    public override func toMap() -> [String : Any] {
                        var map = super.toMap()
                        if self.configOptions != nil {
                            map["ConfigOptions"] = self.configOptions?.toMap()
                        }
                        if self.hiddenPath != nil {
                            map["HiddenPath"] = self.hiddenPath!
                        }
                        if self.pathLabel != nil {
                            map["PathLabel"] = self.pathLabel!
                        }
                        if self.pathName != nil {
                            map["PathName"] = self.pathName!
                        }
                        return map
                    }

                    public override func fromMap(_ dict: [String: Any]) -> Void {
                        if dict.keys.contains("ConfigOptions") {
                            var model = DescribeConfigIndexResponseBody.ConfigGroups.ConfigGroup.ConfigPaths.ConfigPath.ConfigOptions()
                            model.fromMap(dict["ConfigOptions"] as! [String: Any])
                            self.configOptions = model
                        }
                        if dict.keys.contains("HiddenPath") {
                            self.hiddenPath = dict["HiddenPath"] as! Bool
                        }
                        if dict.keys.contains("PathLabel") {
                            self.pathLabel = dict["PathLabel"] as! String
                        }
                        if dict.keys.contains("PathName") {
                            self.pathName = dict["PathName"] as! String
                        }
                    }
                }
                public var configPath: [DescribeConfigIndexResponseBody.ConfigGroups.ConfigGroup.ConfigPaths.ConfigPath]?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.configPath != nil {
                        var tmp : [Any] = []
                        for k in self.configPath! {
                            tmp.append(k.toMap())
                        }
                        map["ConfigPath"] = tmp
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("ConfigPath") {
                        self.configPath = dict["ConfigPath"] as! [DescribeConfigIndexResponseBody.ConfigGroups.ConfigGroup.ConfigPaths.ConfigPath]
                    }
                }
            }
            public var configPaths: DescribeConfigIndexResponseBody.ConfigGroups.ConfigGroup.ConfigPaths?

            public var groupLabel: String?

            public var groupName: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
                try self.configPaths?.validate()
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.configPaths != nil {
                    map["ConfigPaths"] = self.configPaths?.toMap()
                }
                if self.groupLabel != nil {
                    map["GroupLabel"] = self.groupLabel!
                }
                if self.groupName != nil {
                    map["GroupName"] = self.groupName!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("ConfigPaths") {
                    var model = DescribeConfigIndexResponseBody.ConfigGroups.ConfigGroup.ConfigPaths()
                    model.fromMap(dict["ConfigPaths"] as! [String: Any])
                    self.configPaths = model
                }
                if dict.keys.contains("GroupLabel") {
                    self.groupLabel = dict["GroupLabel"] as! String
                }
                if dict.keys.contains("GroupName") {
                    self.groupName = dict["GroupName"] as! String
                }
            }
        }
        public var configGroup: [DescribeConfigIndexResponseBody.ConfigGroups.ConfigGroup]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.configGroup != nil {
                var tmp : [Any] = []
                for k in self.configGroup! {
                    tmp.append(k.toMap())
                }
                map["ConfigGroup"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("ConfigGroup") {
                self.configGroup = dict["ConfigGroup"] as! [DescribeConfigIndexResponseBody.ConfigGroups.ConfigGroup]
            }
        }
    }
    public var code: String?

    public var configGroups: DescribeConfigIndexResponseBody.ConfigGroups?

    public var message: String?

    public var requestId: String?

    public var stackId: String?

    public var stackName: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.configGroups?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.configGroups != nil {
            map["ConfigGroups"] = self.configGroups?.toMap()
        }
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.stackId != nil {
            map["StackId"] = self.stackId!
        }
        if self.stackName != nil {
            map["StackName"] = self.stackName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("ConfigGroups") {
            var model = DescribeConfigIndexResponseBody.ConfigGroups()
            model.fromMap(dict["ConfigGroups"] as! [String: Any])
            self.configGroups = model
        }
        if dict.keys.contains("Message") {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("StackId") {
            self.stackId = dict["StackId"] as! String
        }
        if dict.keys.contains("StackName") {
            self.stackName = dict["StackName"] as! String
        }
    }
}

public class DescribeConfigIndexResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeConfigIndexResponseBody?

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
            var model = DescribeConfigIndexResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeConfigOptionsRequest : Tea.TeaModel {
    public var envId: String?

    public var profileName: String?

    public var regionId: String?

    public var stackId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.envId != nil {
            map["EnvId"] = self.envId!
        }
        if self.profileName != nil {
            map["ProfileName"] = self.profileName!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.stackId != nil {
            map["StackId"] = self.stackId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("EnvId") {
            self.envId = dict["EnvId"] as! String
        }
        if dict.keys.contains("ProfileName") {
            self.profileName = dict["ProfileName"] as! String
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("StackId") {
            self.stackId = dict["StackId"] as! String
        }
    }
}

public class DescribeConfigOptionsResponseBody : Tea.TeaModel {
    public class StackConfigOption : Tea.TeaModel {
        public class ConfigOptions : Tea.TeaModel {
            public class ConfigOption : Tea.TeaModel {
                public var changeSeverity: String?

                public var defaultValue: String?

                public var editorType: String?

                public var hiddenOption: Bool?

                public var maxLength: Int32?

                public var maxValue: Int64?

                public var minLength: Int32?

                public var minValue: Int64?

                public var optionDescription: String?

                public var optionLabel: String?

                public var optionName: String?

                public var pathName: String?

                public var readonlyOption: Bool?

                public var regexDesc: String?

                public var regexPattern: String?

                public var valueOptions: String?

                public var valueType: String?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.changeSeverity != nil {
                        map["ChangeSeverity"] = self.changeSeverity!
                    }
                    if self.defaultValue != nil {
                        map["DefaultValue"] = self.defaultValue!
                    }
                    if self.editorType != nil {
                        map["EditorType"] = self.editorType!
                    }
                    if self.hiddenOption != nil {
                        map["HiddenOption"] = self.hiddenOption!
                    }
                    if self.maxLength != nil {
                        map["MaxLength"] = self.maxLength!
                    }
                    if self.maxValue != nil {
                        map["MaxValue"] = self.maxValue!
                    }
                    if self.minLength != nil {
                        map["MinLength"] = self.minLength!
                    }
                    if self.minValue != nil {
                        map["MinValue"] = self.minValue!
                    }
                    if self.optionDescription != nil {
                        map["OptionDescription"] = self.optionDescription!
                    }
                    if self.optionLabel != nil {
                        map["OptionLabel"] = self.optionLabel!
                    }
                    if self.optionName != nil {
                        map["OptionName"] = self.optionName!
                    }
                    if self.pathName != nil {
                        map["PathName"] = self.pathName!
                    }
                    if self.readonlyOption != nil {
                        map["ReadonlyOption"] = self.readonlyOption!
                    }
                    if self.regexDesc != nil {
                        map["RegexDesc"] = self.regexDesc!
                    }
                    if self.regexPattern != nil {
                        map["RegexPattern"] = self.regexPattern!
                    }
                    if self.valueOptions != nil {
                        map["ValueOptions"] = self.valueOptions!
                    }
                    if self.valueType != nil {
                        map["ValueType"] = self.valueType!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("ChangeSeverity") {
                        self.changeSeverity = dict["ChangeSeverity"] as! String
                    }
                    if dict.keys.contains("DefaultValue") {
                        self.defaultValue = dict["DefaultValue"] as! String
                    }
                    if dict.keys.contains("EditorType") {
                        self.editorType = dict["EditorType"] as! String
                    }
                    if dict.keys.contains("HiddenOption") {
                        self.hiddenOption = dict["HiddenOption"] as! Bool
                    }
                    if dict.keys.contains("MaxLength") {
                        self.maxLength = dict["MaxLength"] as! Int32
                    }
                    if dict.keys.contains("MaxValue") {
                        self.maxValue = dict["MaxValue"] as! Int64
                    }
                    if dict.keys.contains("MinLength") {
                        self.minLength = dict["MinLength"] as! Int32
                    }
                    if dict.keys.contains("MinValue") {
                        self.minValue = dict["MinValue"] as! Int64
                    }
                    if dict.keys.contains("OptionDescription") {
                        self.optionDescription = dict["OptionDescription"] as! String
                    }
                    if dict.keys.contains("OptionLabel") {
                        self.optionLabel = dict["OptionLabel"] as! String
                    }
                    if dict.keys.contains("OptionName") {
                        self.optionName = dict["OptionName"] as! String
                    }
                    if dict.keys.contains("PathName") {
                        self.pathName = dict["PathName"] as! String
                    }
                    if dict.keys.contains("ReadonlyOption") {
                        self.readonlyOption = dict["ReadonlyOption"] as! Bool
                    }
                    if dict.keys.contains("RegexDesc") {
                        self.regexDesc = dict["RegexDesc"] as! String
                    }
                    if dict.keys.contains("RegexPattern") {
                        self.regexPattern = dict["RegexPattern"] as! String
                    }
                    if dict.keys.contains("ValueOptions") {
                        self.valueOptions = dict["ValueOptions"] as! String
                    }
                    if dict.keys.contains("ValueType") {
                        self.valueType = dict["ValueType"] as! String
                    }
                }
            }
            public var configOption: [DescribeConfigOptionsResponseBody.StackConfigOption.ConfigOptions.ConfigOption]?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.configOption != nil {
                    var tmp : [Any] = []
                    for k in self.configOption! {
                        tmp.append(k.toMap())
                    }
                    map["ConfigOption"] = tmp
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("ConfigOption") {
                    self.configOption = dict["ConfigOption"] as! [DescribeConfigOptionsResponseBody.StackConfigOption.ConfigOptions.ConfigOption]
                }
            }
        }
        public var configOptions: DescribeConfigOptionsResponseBody.StackConfigOption.ConfigOptions?

        public var stackId: String?

        public var stackName: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.configOptions?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.configOptions != nil {
                map["ConfigOptions"] = self.configOptions?.toMap()
            }
            if self.stackId != nil {
                map["StackId"] = self.stackId!
            }
            if self.stackName != nil {
                map["StackName"] = self.stackName!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("ConfigOptions") {
                var model = DescribeConfigOptionsResponseBody.StackConfigOption.ConfigOptions()
                model.fromMap(dict["ConfigOptions"] as! [String: Any])
                self.configOptions = model
            }
            if dict.keys.contains("StackId") {
                self.stackId = dict["StackId"] as! String
            }
            if dict.keys.contains("StackName") {
                self.stackName = dict["StackName"] as! String
            }
        }
    }
    public var code: String?

    public var message: String?

    public var requestId: String?

    public var stackConfigOption: DescribeConfigOptionsResponseBody.StackConfigOption?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.stackConfigOption?.validate()
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
        if self.stackConfigOption != nil {
            map["StackConfigOption"] = self.stackConfigOption?.toMap()
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
        if dict.keys.contains("StackConfigOption") {
            var model = DescribeConfigOptionsResponseBody.StackConfigOption()
            model.fromMap(dict["StackConfigOption"] as! [String: Any])
            self.stackConfigOption = model
        }
    }
}

public class DescribeConfigOptionsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeConfigOptionsResponseBody?

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
            var model = DescribeConfigOptionsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeConfigSettingsRequest : Tea.TeaModel {
    public var envId: String?

    public var optionName: String?

    public var pathName: String?

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
        if self.envId != nil {
            map["EnvId"] = self.envId!
        }
        if self.optionName != nil {
            map["OptionName"] = self.optionName!
        }
        if self.pathName != nil {
            map["PathName"] = self.pathName!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.templateId != nil {
            map["TemplateId"] = self.templateId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("EnvId") {
            self.envId = dict["EnvId"] as! String
        }
        if dict.keys.contains("OptionName") {
            self.optionName = dict["OptionName"] as! String
        }
        if dict.keys.contains("PathName") {
            self.pathName = dict["PathName"] as! String
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("TemplateId") {
            self.templateId = dict["TemplateId"] as! String
        }
    }
}

public class DescribeConfigSettingsResponseBody : Tea.TeaModel {
    public class ConfigSettings : Tea.TeaModel {
        public class ConfigSetting : Tea.TeaModel {
            public var optionName: String?

            public var pathName: String?

            public var settingValue: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.optionName != nil {
                    map["OptionName"] = self.optionName!
                }
                if self.pathName != nil {
                    map["PathName"] = self.pathName!
                }
                if self.settingValue != nil {
                    map["SettingValue"] = self.settingValue!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("OptionName") {
                    self.optionName = dict["OptionName"] as! String
                }
                if dict.keys.contains("PathName") {
                    self.pathName = dict["PathName"] as! String
                }
                if dict.keys.contains("SettingValue") {
                    self.settingValue = dict["SettingValue"] as! String
                }
            }
        }
        public var configSetting: [DescribeConfigSettingsResponseBody.ConfigSettings.ConfigSetting]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.configSetting != nil {
                var tmp : [Any] = []
                for k in self.configSetting! {
                    tmp.append(k.toMap())
                }
                map["ConfigSetting"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("ConfigSetting") {
                self.configSetting = dict["ConfigSetting"] as! [DescribeConfigSettingsResponseBody.ConfigSettings.ConfigSetting]
            }
        }
    }
    public var code: String?

    public var configSettings: DescribeConfigSettingsResponseBody.ConfigSettings?

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
        try self.configSettings?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.configSettings != nil {
            map["ConfigSettings"] = self.configSettings?.toMap()
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
        if dict.keys.contains("ConfigSettings") {
            var model = DescribeConfigSettingsResponseBody.ConfigSettings()
            model.fromMap(dict["ConfigSettings"] as! [String: Any])
            self.configSettings = model
        }
        if dict.keys.contains("Message") {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class DescribeConfigSettingsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeConfigSettingsResponseBody?

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
            var model = DescribeConfigSettingsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeConfigTemplatesRequest : Tea.TeaModel {
    public var appId: String?

    public var pageNumber: Int32?

    public var pageSize: Int32?

    public var regionId: String?

    public var templateName: String?

    public var templateSearch: String?

    public override init() {
        super.init()
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
        if self.templateSearch != nil {
            map["TemplateSearch"] = self.templateSearch!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AppId") {
            self.appId = dict["AppId"] as! String
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
        if dict.keys.contains("TemplateName") {
            self.templateName = dict["TemplateName"] as! String
        }
        if dict.keys.contains("TemplateSearch") {
            self.templateSearch = dict["TemplateSearch"] as! String
        }
    }
}

public class DescribeConfigTemplatesResponseBody : Tea.TeaModel {
    public class ConfigTemplates : Tea.TeaModel {
        public class ConfigTemplate : Tea.TeaModel {
            public var appId: String?

            public var appName: String?

            public var createTime: Int64?

            public var pkgVersionId: String?

            public var pkgVersionLabel: String?

            public var stackId: String?

            public var stackName: String?

            public var templateDescription: String?

            public var templateId: String?

            public var templateName: String?

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
                if self.appId != nil {
                    map["AppId"] = self.appId!
                }
                if self.appName != nil {
                    map["AppName"] = self.appName!
                }
                if self.createTime != nil {
                    map["CreateTime"] = self.createTime!
                }
                if self.pkgVersionId != nil {
                    map["PkgVersionId"] = self.pkgVersionId!
                }
                if self.pkgVersionLabel != nil {
                    map["PkgVersionLabel"] = self.pkgVersionLabel!
                }
                if self.stackId != nil {
                    map["StackId"] = self.stackId!
                }
                if self.stackName != nil {
                    map["StackName"] = self.stackName!
                }
                if self.templateDescription != nil {
                    map["TemplateDescription"] = self.templateDescription!
                }
                if self.templateId != nil {
                    map["TemplateId"] = self.templateId!
                }
                if self.templateName != nil {
                    map["TemplateName"] = self.templateName!
                }
                if self.updateTime != nil {
                    map["UpdateTime"] = self.updateTime!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("AppId") {
                    self.appId = dict["AppId"] as! String
                }
                if dict.keys.contains("AppName") {
                    self.appName = dict["AppName"] as! String
                }
                if dict.keys.contains("CreateTime") {
                    self.createTime = dict["CreateTime"] as! Int64
                }
                if dict.keys.contains("PkgVersionId") {
                    self.pkgVersionId = dict["PkgVersionId"] as! String
                }
                if dict.keys.contains("PkgVersionLabel") {
                    self.pkgVersionLabel = dict["PkgVersionLabel"] as! String
                }
                if dict.keys.contains("StackId") {
                    self.stackId = dict["StackId"] as! String
                }
                if dict.keys.contains("StackName") {
                    self.stackName = dict["StackName"] as! String
                }
                if dict.keys.contains("TemplateDescription") {
                    self.templateDescription = dict["TemplateDescription"] as! String
                }
                if dict.keys.contains("TemplateId") {
                    self.templateId = dict["TemplateId"] as! String
                }
                if dict.keys.contains("TemplateName") {
                    self.templateName = dict["TemplateName"] as! String
                }
                if dict.keys.contains("UpdateTime") {
                    self.updateTime = dict["UpdateTime"] as! Int64
                }
            }
        }
        public var configTemplate: [DescribeConfigTemplatesResponseBody.ConfigTemplates.ConfigTemplate]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.configTemplate != nil {
                var tmp : [Any] = []
                for k in self.configTemplate! {
                    tmp.append(k.toMap())
                }
                map["ConfigTemplate"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("ConfigTemplate") {
                self.configTemplate = dict["ConfigTemplate"] as! [DescribeConfigTemplatesResponseBody.ConfigTemplates.ConfigTemplate]
            }
        }
    }
    public var code: String?

    public var configTemplates: DescribeConfigTemplatesResponseBody.ConfigTemplates?

    public var message: String?

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
        try self.configTemplates?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.configTemplates != nil {
            map["ConfigTemplates"] = self.configTemplates?.toMap()
        }
        if self.message != nil {
            map["Message"] = self.message!
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("ConfigTemplates") {
            var model = DescribeConfigTemplatesResponseBody.ConfigTemplates()
            model.fromMap(dict["ConfigTemplates"] as! [String: Any])
            self.configTemplates = model
        }
        if dict.keys.contains("Message") {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("PageNumber") {
            self.pageNumber = dict["PageNumber"] as! Int32
        }
        if dict.keys.contains("PageSize") {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("TotalCount") {
            self.totalCount = dict["TotalCount"] as! Int32
        }
    }
}

public class DescribeConfigTemplatesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeConfigTemplatesResponseBody?

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
            var model = DescribeConfigTemplatesResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeEnvResourceRequest : Tea.TeaModel {
    public var envId: String?

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
        if self.envId != nil {
            map["EnvId"] = self.envId!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("EnvId") {
            self.envId = dict["EnvId"] as! String
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
    }
}

public class DescribeEnvResourceResponseBody : Tea.TeaModel {
    public class EnvResource : Tea.TeaModel {
        public class DefaultSecurityGroups : Tea.TeaModel {
            public class SecurityGroup : Tea.TeaModel {
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
            public var securityGroup: [DescribeEnvResourceResponseBody.EnvResource.DefaultSecurityGroups.SecurityGroup]?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.securityGroup != nil {
                    var tmp : [Any] = []
                    for k in self.securityGroup! {
                        tmp.append(k.toMap())
                    }
                    map["SecurityGroup"] = tmp
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("SecurityGroup") {
                    self.securityGroup = dict["SecurityGroup"] as! [DescribeEnvResourceResponseBody.EnvResource.DefaultSecurityGroups.SecurityGroup]
                }
            }
        }
        public class Domains : Tea.TeaModel {
            public class Domain : Tea.TeaModel {
                public var domainName: String?

                public var hostedBy: String?

                public var isDefault: Bool?

                public var managedBy: String?

                public var subDomain: String?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.domainName != nil {
                        map["DomainName"] = self.domainName!
                    }
                    if self.hostedBy != nil {
                        map["HostedBy"] = self.hostedBy!
                    }
                    if self.isDefault != nil {
                        map["IsDefault"] = self.isDefault!
                    }
                    if self.managedBy != nil {
                        map["ManagedBy"] = self.managedBy!
                    }
                    if self.subDomain != nil {
                        map["SubDomain"] = self.subDomain!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("DomainName") {
                        self.domainName = dict["DomainName"] as! String
                    }
                    if dict.keys.contains("HostedBy") {
                        self.hostedBy = dict["HostedBy"] as! String
                    }
                    if dict.keys.contains("IsDefault") {
                        self.isDefault = dict["IsDefault"] as! Bool
                    }
                    if dict.keys.contains("ManagedBy") {
                        self.managedBy = dict["ManagedBy"] as! String
                    }
                    if dict.keys.contains("SubDomain") {
                        self.subDomain = dict["SubDomain"] as! String
                    }
                }
            }
            public var domain: [DescribeEnvResourceResponseBody.EnvResource.Domains.Domain]?

            public override init() {
                super.init()
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
                    var tmp : [Any] = []
                    for k in self.domain! {
                        tmp.append(k.toMap())
                    }
                    map["Domain"] = tmp
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("Domain") {
                    self.domain = dict["Domain"] as! [DescribeEnvResourceResponseBody.EnvResource.Domains.Domain]
                }
            }
        }
        public class Instances : Tea.TeaModel {
            public class Instance : Tea.TeaModel {
                public var id: String?

                public var imported: Bool?

                public override init() {
                    super.init()
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
                    if self.imported != nil {
                        map["Imported"] = self.imported!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("Id") {
                        self.id = dict["Id"] as! String
                    }
                    if dict.keys.contains("Imported") {
                        self.imported = dict["Imported"] as! Bool
                    }
                }
            }
            public var instance: [DescribeEnvResourceResponseBody.EnvResource.Instances.Instance]?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.instance != nil {
                    var tmp : [Any] = []
                    for k in self.instance! {
                        tmp.append(k.toMap())
                    }
                    map["Instance"] = tmp
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("Instance") {
                    self.instance = dict["Instance"] as! [DescribeEnvResourceResponseBody.EnvResource.Instances.Instance]
                }
            }
        }
        public class LoadBalancers : Tea.TeaModel {
            public class LoadBalancer : Tea.TeaModel {
                public class Listeners : Tea.TeaModel {
                    public class Listener : Tea.TeaModel {
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
                    public var listener: [DescribeEnvResourceResponseBody.EnvResource.LoadBalancers.LoadBalancer.Listeners.Listener]?

                    public override init() {
                        super.init()
                    }

                    public init(_ dict: [String: Any]) {
                        super.init()
                        self.fromMap(dict)
                    }

                    public override func validate() throws -> Void {
                    }

                    public override func toMap() -> [String : Any] {
                        var map = super.toMap()
                        if self.listener != nil {
                            var tmp : [Any] = []
                            for k in self.listener! {
                                tmp.append(k.toMap())
                            }
                            map["Listener"] = tmp
                        }
                        return map
                    }

                    public override func fromMap(_ dict: [String: Any]) -> Void {
                        if dict.keys.contains("Listener") {
                            self.listener = dict["Listener"] as! [DescribeEnvResourceResponseBody.EnvResource.LoadBalancers.LoadBalancer.Listeners.Listener]
                        }
                    }
                }
                public var addressType: String?

                public var id: String?

                public var imported: Bool?

                public var listeners: DescribeEnvResourceResponseBody.EnvResource.LoadBalancers.LoadBalancer.Listeners?

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
                    try self.listeners?.validate()
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.addressType != nil {
                        map["AddressType"] = self.addressType!
                    }
                    if self.id != nil {
                        map["Id"] = self.id!
                    }
                    if self.imported != nil {
                        map["Imported"] = self.imported!
                    }
                    if self.listeners != nil {
                        map["Listeners"] = self.listeners?.toMap()
                    }
                    if self.port != nil {
                        map["Port"] = self.port!
                    }
                    if self.protocol_ != nil {
                        map["Protocol"] = self.protocol_!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("AddressType") {
                        self.addressType = dict["AddressType"] as! String
                    }
                    if dict.keys.contains("Id") {
                        self.id = dict["Id"] as! String
                    }
                    if dict.keys.contains("Imported") {
                        self.imported = dict["Imported"] as! Bool
                    }
                    if dict.keys.contains("Listeners") {
                        var model = DescribeEnvResourceResponseBody.EnvResource.LoadBalancers.LoadBalancer.Listeners()
                        model.fromMap(dict["Listeners"] as! [String: Any])
                        self.listeners = model
                    }
                    if dict.keys.contains("Port") {
                        self.port = dict["Port"] as! Int32
                    }
                    if dict.keys.contains("Protocol") {
                        self.protocol_ = dict["Protocol"] as! String
                    }
                }
            }
            public var loadBalancer: [DescribeEnvResourceResponseBody.EnvResource.LoadBalancers.LoadBalancer]?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.loadBalancer != nil {
                    var tmp : [Any] = []
                    for k in self.loadBalancer! {
                        tmp.append(k.toMap())
                    }
                    map["LoadBalancer"] = tmp
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("LoadBalancer") {
                    self.loadBalancer = dict["LoadBalancer"] as! [DescribeEnvResourceResponseBody.EnvResource.LoadBalancers.LoadBalancer]
                }
            }
        }
        public class MonitorGroup : Tea.TeaModel {
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
        public class RdsInstances : Tea.TeaModel {
            public class RdsInstance : Tea.TeaModel {
                public var accountName: String?

                public var databaseName: String?

                public var id: String?

                public var imported: Bool?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.accountName != nil {
                        map["AccountName"] = self.accountName!
                    }
                    if self.databaseName != nil {
                        map["DatabaseName"] = self.databaseName!
                    }
                    if self.id != nil {
                        map["Id"] = self.id!
                    }
                    if self.imported != nil {
                        map["Imported"] = self.imported!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("AccountName") {
                        self.accountName = dict["AccountName"] as! String
                    }
                    if dict.keys.contains("DatabaseName") {
                        self.databaseName = dict["DatabaseName"] as! String
                    }
                    if dict.keys.contains("Id") {
                        self.id = dict["Id"] as! String
                    }
                    if dict.keys.contains("Imported") {
                        self.imported = dict["Imported"] as! Bool
                    }
                }
            }
            public var rdsInstance: [DescribeEnvResourceResponseBody.EnvResource.RdsInstances.RdsInstance]?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.rdsInstance != nil {
                    var tmp : [Any] = []
                    for k in self.rdsInstance! {
                        tmp.append(k.toMap())
                    }
                    map["RdsInstance"] = tmp
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("RdsInstance") {
                    self.rdsInstance = dict["RdsInstance"] as! [DescribeEnvResourceResponseBody.EnvResource.RdsInstances.RdsInstance]
                }
            }
        }
        public class ScalingGroup : Tea.TeaModel {
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
        public class VSwitches : Tea.TeaModel {
            public class VSwitch : Tea.TeaModel {
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
            public var vSwitch: [DescribeEnvResourceResponseBody.EnvResource.VSwitches.VSwitch]?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.vSwitch != nil {
                    var tmp : [Any] = []
                    for k in self.vSwitch! {
                        tmp.append(k.toMap())
                    }
                    map["VSwitch"] = tmp
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("VSwitch") {
                    self.vSwitch = dict["VSwitch"] as! [DescribeEnvResourceResponseBody.EnvResource.VSwitches.VSwitch]
                }
            }
        }
        public class Vpc : Tea.TeaModel {
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
        public var defaultSecurityGroups: DescribeEnvResourceResponseBody.EnvResource.DefaultSecurityGroups?

        public var domains: DescribeEnvResourceResponseBody.EnvResource.Domains?

        public var envId: String?

        public var envName: String?

        public var instances: DescribeEnvResourceResponseBody.EnvResource.Instances?

        public var launchConfigurationId: String?

        public var launchTemplateId: String?

        public var loadBalancers: DescribeEnvResourceResponseBody.EnvResource.LoadBalancers?

        public var monitorGroup: DescribeEnvResourceResponseBody.EnvResource.MonitorGroup?

        public var rdsInstances: DescribeEnvResourceResponseBody.EnvResource.RdsInstances?

        public var scalingGroup: DescribeEnvResourceResponseBody.EnvResource.ScalingGroup?

        public var vSwitches: DescribeEnvResourceResponseBody.EnvResource.VSwitches?

        public var vpc: DescribeEnvResourceResponseBody.EnvResource.Vpc?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.defaultSecurityGroups?.validate()
            try self.domains?.validate()
            try self.instances?.validate()
            try self.loadBalancers?.validate()
            try self.monitorGroup?.validate()
            try self.rdsInstances?.validate()
            try self.scalingGroup?.validate()
            try self.vSwitches?.validate()
            try self.vpc?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.defaultSecurityGroups != nil {
                map["DefaultSecurityGroups"] = self.defaultSecurityGroups?.toMap()
            }
            if self.domains != nil {
                map["Domains"] = self.domains?.toMap()
            }
            if self.envId != nil {
                map["EnvId"] = self.envId!
            }
            if self.envName != nil {
                map["EnvName"] = self.envName!
            }
            if self.instances != nil {
                map["Instances"] = self.instances?.toMap()
            }
            if self.launchConfigurationId != nil {
                map["LaunchConfigurationId"] = self.launchConfigurationId!
            }
            if self.launchTemplateId != nil {
                map["LaunchTemplateId"] = self.launchTemplateId!
            }
            if self.loadBalancers != nil {
                map["LoadBalancers"] = self.loadBalancers?.toMap()
            }
            if self.monitorGroup != nil {
                map["MonitorGroup"] = self.monitorGroup?.toMap()
            }
            if self.rdsInstances != nil {
                map["RdsInstances"] = self.rdsInstances?.toMap()
            }
            if self.scalingGroup != nil {
                map["ScalingGroup"] = self.scalingGroup?.toMap()
            }
            if self.vSwitches != nil {
                map["VSwitches"] = self.vSwitches?.toMap()
            }
            if self.vpc != nil {
                map["Vpc"] = self.vpc?.toMap()
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("DefaultSecurityGroups") {
                var model = DescribeEnvResourceResponseBody.EnvResource.DefaultSecurityGroups()
                model.fromMap(dict["DefaultSecurityGroups"] as! [String: Any])
                self.defaultSecurityGroups = model
            }
            if dict.keys.contains("Domains") {
                var model = DescribeEnvResourceResponseBody.EnvResource.Domains()
                model.fromMap(dict["Domains"] as! [String: Any])
                self.domains = model
            }
            if dict.keys.contains("EnvId") {
                self.envId = dict["EnvId"] as! String
            }
            if dict.keys.contains("EnvName") {
                self.envName = dict["EnvName"] as! String
            }
            if dict.keys.contains("Instances") {
                var model = DescribeEnvResourceResponseBody.EnvResource.Instances()
                model.fromMap(dict["Instances"] as! [String: Any])
                self.instances = model
            }
            if dict.keys.contains("LaunchConfigurationId") {
                self.launchConfigurationId = dict["LaunchConfigurationId"] as! String
            }
            if dict.keys.contains("LaunchTemplateId") {
                self.launchTemplateId = dict["LaunchTemplateId"] as! String
            }
            if dict.keys.contains("LoadBalancers") {
                var model = DescribeEnvResourceResponseBody.EnvResource.LoadBalancers()
                model.fromMap(dict["LoadBalancers"] as! [String: Any])
                self.loadBalancers = model
            }
            if dict.keys.contains("MonitorGroup") {
                var model = DescribeEnvResourceResponseBody.EnvResource.MonitorGroup()
                model.fromMap(dict["MonitorGroup"] as! [String: Any])
                self.monitorGroup = model
            }
            if dict.keys.contains("RdsInstances") {
                var model = DescribeEnvResourceResponseBody.EnvResource.RdsInstances()
                model.fromMap(dict["RdsInstances"] as! [String: Any])
                self.rdsInstances = model
            }
            if dict.keys.contains("ScalingGroup") {
                var model = DescribeEnvResourceResponseBody.EnvResource.ScalingGroup()
                model.fromMap(dict["ScalingGroup"] as! [String: Any])
                self.scalingGroup = model
            }
            if dict.keys.contains("VSwitches") {
                var model = DescribeEnvResourceResponseBody.EnvResource.VSwitches()
                model.fromMap(dict["VSwitches"] as! [String: Any])
                self.vSwitches = model
            }
            if dict.keys.contains("Vpc") {
                var model = DescribeEnvResourceResponseBody.EnvResource.Vpc()
                model.fromMap(dict["Vpc"] as! [String: Any])
                self.vpc = model
            }
        }
    }
    public var code: String?

    public var envResource: DescribeEnvResourceResponseBody.EnvResource?

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
        try self.envResource?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.envResource != nil {
            map["EnvResource"] = self.envResource?.toMap()
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
        if dict.keys.contains("EnvResource") {
            var model = DescribeEnvResourceResponseBody.EnvResource()
            model.fromMap(dict["EnvResource"] as! [String: Any])
            self.envResource = model
        }
        if dict.keys.contains("Message") {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class DescribeEnvResourceResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeEnvResourceResponseBody?

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
            var model = DescribeEnvResourceResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeEventsRequest : Tea.TeaModel {
    public var changeId: String?

    public var endTime: Int64?

    public var envId: String?

    public var lastChangeEvents: Bool?

    public var pageNumber: Int32?

    public var pageSize: Int32?

    public var regionId: String?

    public var reverseByTimestamp: Bool?

    public var startTime: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.changeId != nil {
            map["ChangeId"] = self.changeId!
        }
        if self.endTime != nil {
            map["EndTime"] = self.endTime!
        }
        if self.envId != nil {
            map["EnvId"] = self.envId!
        }
        if self.lastChangeEvents != nil {
            map["LastChangeEvents"] = self.lastChangeEvents!
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
        if self.reverseByTimestamp != nil {
            map["ReverseByTimestamp"] = self.reverseByTimestamp!
        }
        if self.startTime != nil {
            map["StartTime"] = self.startTime!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ChangeId") {
            self.changeId = dict["ChangeId"] as! String
        }
        if dict.keys.contains("EndTime") {
            self.endTime = dict["EndTime"] as! Int64
        }
        if dict.keys.contains("EnvId") {
            self.envId = dict["EnvId"] as! String
        }
        if dict.keys.contains("LastChangeEvents") {
            self.lastChangeEvents = dict["LastChangeEvents"] as! Bool
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
        if dict.keys.contains("ReverseByTimestamp") {
            self.reverseByTimestamp = dict["ReverseByTimestamp"] as! Bool
        }
        if dict.keys.contains("StartTime") {
            self.startTime = dict["StartTime"] as! Int64
        }
    }
}

public class DescribeEventsResponseBody : Tea.TeaModel {
    public class Events : Tea.TeaModel {
        public class Event : Tea.TeaModel {
            public class MsgParams : Tea.TeaModel {
                public var msgParam: [String]?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.msgParam != nil {
                        map["MsgParam"] = self.msgParam!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("MsgParam") {
                        self.msgParam = dict["MsgParam"] as! [String]
                    }
                }
            }
            public class ObjectAttrs : Tea.TeaModel {
                public class ObjectAttr : Tea.TeaModel {
                    public var attributeName: String?

                    public var attributeValue: String?

                    public override init() {
                        super.init()
                    }

                    public init(_ dict: [String: Any]) {
                        super.init()
                        self.fromMap(dict)
                    }

                    public override func validate() throws -> Void {
                    }

                    public override func toMap() -> [String : Any] {
                        var map = super.toMap()
                        if self.attributeName != nil {
                            map["AttributeName"] = self.attributeName!
                        }
                        if self.attributeValue != nil {
                            map["AttributeValue"] = self.attributeValue!
                        }
                        return map
                    }

                    public override func fromMap(_ dict: [String: Any]) -> Void {
                        if dict.keys.contains("AttributeName") {
                            self.attributeName = dict["AttributeName"] as! String
                        }
                        if dict.keys.contains("AttributeValue") {
                            self.attributeValue = dict["AttributeValue"] as! String
                        }
                    }
                }
                public var objectAttr: [DescribeEventsResponseBody.Events.Event.ObjectAttrs.ObjectAttr]?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.objectAttr != nil {
                        var tmp : [Any] = []
                        for k in self.objectAttr! {
                            tmp.append(k.toMap())
                        }
                        map["ObjectAttr"] = tmp
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("ObjectAttr") {
                        self.objectAttr = dict["ObjectAttr"] as! [DescribeEventsResponseBody.Events.Event.ObjectAttrs.ObjectAttr]
                    }
                }
            }
            public var appId: String?

            public var envId: String?

            public var enventName: String?

            public var eventId: String?

            public var eventLevel: String?

            public var eventMessage: String?

            public var eventTimestamp: Int64?

            public var msgCode: String?

            public var msgParams: DescribeEventsResponseBody.Events.Event.MsgParams?

            public var objectAttrs: DescribeEventsResponseBody.Events.Event.ObjectAttrs?

            public var objectId: String?

            public var objectName: String?

            public var objectType: String?

            public var primaryUserId: String?

            public var primaryUserName: String?

            public var secondUserId: String?

            public var secondUserName: String?

            public var traceId: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
                try self.msgParams?.validate()
                try self.objectAttrs?.validate()
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.appId != nil {
                    map["AppId"] = self.appId!
                }
                if self.envId != nil {
                    map["EnvId"] = self.envId!
                }
                if self.enventName != nil {
                    map["EnventName"] = self.enventName!
                }
                if self.eventId != nil {
                    map["EventId"] = self.eventId!
                }
                if self.eventLevel != nil {
                    map["EventLevel"] = self.eventLevel!
                }
                if self.eventMessage != nil {
                    map["EventMessage"] = self.eventMessage!
                }
                if self.eventTimestamp != nil {
                    map["EventTimestamp"] = self.eventTimestamp!
                }
                if self.msgCode != nil {
                    map["MsgCode"] = self.msgCode!
                }
                if self.msgParams != nil {
                    map["MsgParams"] = self.msgParams?.toMap()
                }
                if self.objectAttrs != nil {
                    map["ObjectAttrs"] = self.objectAttrs?.toMap()
                }
                if self.objectId != nil {
                    map["ObjectId"] = self.objectId!
                }
                if self.objectName != nil {
                    map["ObjectName"] = self.objectName!
                }
                if self.objectType != nil {
                    map["ObjectType"] = self.objectType!
                }
                if self.primaryUserId != nil {
                    map["PrimaryUserId"] = self.primaryUserId!
                }
                if self.primaryUserName != nil {
                    map["PrimaryUserName"] = self.primaryUserName!
                }
                if self.secondUserId != nil {
                    map["SecondUserId"] = self.secondUserId!
                }
                if self.secondUserName != nil {
                    map["SecondUserName"] = self.secondUserName!
                }
                if self.traceId != nil {
                    map["TraceId"] = self.traceId!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("AppId") {
                    self.appId = dict["AppId"] as! String
                }
                if dict.keys.contains("EnvId") {
                    self.envId = dict["EnvId"] as! String
                }
                if dict.keys.contains("EnventName") {
                    self.enventName = dict["EnventName"] as! String
                }
                if dict.keys.contains("EventId") {
                    self.eventId = dict["EventId"] as! String
                }
                if dict.keys.contains("EventLevel") {
                    self.eventLevel = dict["EventLevel"] as! String
                }
                if dict.keys.contains("EventMessage") {
                    self.eventMessage = dict["EventMessage"] as! String
                }
                if dict.keys.contains("EventTimestamp") {
                    self.eventTimestamp = dict["EventTimestamp"] as! Int64
                }
                if dict.keys.contains("MsgCode") {
                    self.msgCode = dict["MsgCode"] as! String
                }
                if dict.keys.contains("MsgParams") {
                    var model = DescribeEventsResponseBody.Events.Event.MsgParams()
                    model.fromMap(dict["MsgParams"] as! [String: Any])
                    self.msgParams = model
                }
                if dict.keys.contains("ObjectAttrs") {
                    var model = DescribeEventsResponseBody.Events.Event.ObjectAttrs()
                    model.fromMap(dict["ObjectAttrs"] as! [String: Any])
                    self.objectAttrs = model
                }
                if dict.keys.contains("ObjectId") {
                    self.objectId = dict["ObjectId"] as! String
                }
                if dict.keys.contains("ObjectName") {
                    self.objectName = dict["ObjectName"] as! String
                }
                if dict.keys.contains("ObjectType") {
                    self.objectType = dict["ObjectType"] as! String
                }
                if dict.keys.contains("PrimaryUserId") {
                    self.primaryUserId = dict["PrimaryUserId"] as! String
                }
                if dict.keys.contains("PrimaryUserName") {
                    self.primaryUserName = dict["PrimaryUserName"] as! String
                }
                if dict.keys.contains("SecondUserId") {
                    self.secondUserId = dict["SecondUserId"] as! String
                }
                if dict.keys.contains("SecondUserName") {
                    self.secondUserName = dict["SecondUserName"] as! String
                }
                if dict.keys.contains("TraceId") {
                    self.traceId = dict["TraceId"] as! String
                }
            }
        }
        public var event: [DescribeEventsResponseBody.Events.Event]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.event != nil {
                var tmp : [Any] = []
                for k in self.event! {
                    tmp.append(k.toMap())
                }
                map["Event"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Event") {
                self.event = dict["Event"] as! [DescribeEventsResponseBody.Events.Event]
            }
        }
    }
    public var code: String?

    public var events: DescribeEventsResponseBody.Events?

    public var message: String?

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
        try self.events?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.events != nil {
            map["Events"] = self.events?.toMap()
        }
        if self.message != nil {
            map["Message"] = self.message!
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Events") {
            var model = DescribeEventsResponseBody.Events()
            model.fromMap(dict["Events"] as! [String: Any])
            self.events = model
        }
        if dict.keys.contains("Message") {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("PageNumber") {
            self.pageNumber = dict["PageNumber"] as! Int32
        }
        if dict.keys.contains("PageSize") {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("TotalCount") {
            self.totalCount = dict["TotalCount"] as! Int32
        }
    }
}

public class DescribeEventsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeEventsResponseBody?

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
            var model = DescribeEventsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeGatherLogResultRequest : Tea.TeaModel {
    public var changeId: String?

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
        if self.changeId != nil {
            map["ChangeId"] = self.changeId!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ChangeId") {
            self.changeId = dict["ChangeId"] as! String
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
    }
}

public class DescribeGatherLogResultResponseBody : Tea.TeaModel {
    public class GatherLogResult : Tea.TeaModel {
        public class Change : Tea.TeaModel {
            public var actionName: String?

            public var changeAborted: Bool?

            public var changeDescription: String?

            public var changeFinished: Bool?

            public var changeId: String?

            public var changeMessage: String?

            public var changeName: String?

            public var changePaused: Bool?

            public var changeSucceeded: Bool?

            public var changeTimedout: Bool?

            public var createTime: Int64?

            public var createUsername: String?

            public var envId: String?

            public var finishTime: Int64?

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
                if self.actionName != nil {
                    map["ActionName"] = self.actionName!
                }
                if self.changeAborted != nil {
                    map["ChangeAborted"] = self.changeAborted!
                }
                if self.changeDescription != nil {
                    map["ChangeDescription"] = self.changeDescription!
                }
                if self.changeFinished != nil {
                    map["ChangeFinished"] = self.changeFinished!
                }
                if self.changeId != nil {
                    map["ChangeId"] = self.changeId!
                }
                if self.changeMessage != nil {
                    map["ChangeMessage"] = self.changeMessage!
                }
                if self.changeName != nil {
                    map["ChangeName"] = self.changeName!
                }
                if self.changePaused != nil {
                    map["ChangePaused"] = self.changePaused!
                }
                if self.changeSucceeded != nil {
                    map["ChangeSucceeded"] = self.changeSucceeded!
                }
                if self.changeTimedout != nil {
                    map["ChangeTimedout"] = self.changeTimedout!
                }
                if self.createTime != nil {
                    map["CreateTime"] = self.createTime!
                }
                if self.createUsername != nil {
                    map["CreateUsername"] = self.createUsername!
                }
                if self.envId != nil {
                    map["EnvId"] = self.envId!
                }
                if self.finishTime != nil {
                    map["FinishTime"] = self.finishTime!
                }
                if self.updateTime != nil {
                    map["UpdateTime"] = self.updateTime!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("ActionName") {
                    self.actionName = dict["ActionName"] as! String
                }
                if dict.keys.contains("ChangeAborted") {
                    self.changeAborted = dict["ChangeAborted"] as! Bool
                }
                if dict.keys.contains("ChangeDescription") {
                    self.changeDescription = dict["ChangeDescription"] as! String
                }
                if dict.keys.contains("ChangeFinished") {
                    self.changeFinished = dict["ChangeFinished"] as! Bool
                }
                if dict.keys.contains("ChangeId") {
                    self.changeId = dict["ChangeId"] as! String
                }
                if dict.keys.contains("ChangeMessage") {
                    self.changeMessage = dict["ChangeMessage"] as! String
                }
                if dict.keys.contains("ChangeName") {
                    self.changeName = dict["ChangeName"] as! String
                }
                if dict.keys.contains("ChangePaused") {
                    self.changePaused = dict["ChangePaused"] as! Bool
                }
                if dict.keys.contains("ChangeSucceeded") {
                    self.changeSucceeded = dict["ChangeSucceeded"] as! Bool
                }
                if dict.keys.contains("ChangeTimedout") {
                    self.changeTimedout = dict["ChangeTimedout"] as! Bool
                }
                if dict.keys.contains("CreateTime") {
                    self.createTime = dict["CreateTime"] as! Int64
                }
                if dict.keys.contains("CreateUsername") {
                    self.createUsername = dict["CreateUsername"] as! String
                }
                if dict.keys.contains("EnvId") {
                    self.envId = dict["EnvId"] as! String
                }
                if dict.keys.contains("FinishTime") {
                    self.finishTime = dict["FinishTime"] as! Int64
                }
                if dict.keys.contains("UpdateTime") {
                    self.updateTime = dict["UpdateTime"] as! Int64
                }
            }
        }
        public class InstanceResults : Tea.TeaModel {
            public class InstanceResult : Tea.TeaModel {
                public var instanceId: String?

                public var storageKey: String?

                public var taskMessage: String?

                public var taskSucceeded: Bool?

                public override init() {
                    super.init()
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
                    if self.storageKey != nil {
                        map["StorageKey"] = self.storageKey!
                    }
                    if self.taskMessage != nil {
                        map["TaskMessage"] = self.taskMessage!
                    }
                    if self.taskSucceeded != nil {
                        map["TaskSucceeded"] = self.taskSucceeded!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("InstanceId") {
                        self.instanceId = dict["InstanceId"] as! String
                    }
                    if dict.keys.contains("StorageKey") {
                        self.storageKey = dict["StorageKey"] as! String
                    }
                    if dict.keys.contains("TaskMessage") {
                        self.taskMessage = dict["TaskMessage"] as! String
                    }
                    if dict.keys.contains("TaskSucceeded") {
                        self.taskSucceeded = dict["TaskSucceeded"] as! Bool
                    }
                }
            }
            public var instanceResult: [DescribeGatherLogResultResponseBody.GatherLogResult.InstanceResults.InstanceResult]?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.instanceResult != nil {
                    var tmp : [Any] = []
                    for k in self.instanceResult! {
                        tmp.append(k.toMap())
                    }
                    map["InstanceResult"] = tmp
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("InstanceResult") {
                    self.instanceResult = dict["InstanceResult"] as! [DescribeGatherLogResultResponseBody.GatherLogResult.InstanceResults.InstanceResult]
                }
            }
        }
        public var change: DescribeGatherLogResultResponseBody.GatherLogResult.Change?

        public var instanceResults: DescribeGatherLogResultResponseBody.GatherLogResult.InstanceResults?

        public var logPath: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.change?.validate()
            try self.instanceResults?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.change != nil {
                map["Change"] = self.change?.toMap()
            }
            if self.instanceResults != nil {
                map["InstanceResults"] = self.instanceResults?.toMap()
            }
            if self.logPath != nil {
                map["LogPath"] = self.logPath!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Change") {
                var model = DescribeGatherLogResultResponseBody.GatherLogResult.Change()
                model.fromMap(dict["Change"] as! [String: Any])
                self.change = model
            }
            if dict.keys.contains("InstanceResults") {
                var model = DescribeGatherLogResultResponseBody.GatherLogResult.InstanceResults()
                model.fromMap(dict["InstanceResults"] as! [String: Any])
                self.instanceResults = model
            }
            if dict.keys.contains("LogPath") {
                self.logPath = dict["LogPath"] as! String
            }
        }
    }
    public var code: String?

    public var gatherLogResult: DescribeGatherLogResultResponseBody.GatherLogResult?

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
        try self.gatherLogResult?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.gatherLogResult != nil {
            map["GatherLogResult"] = self.gatherLogResult?.toMap()
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
        if dict.keys.contains("GatherLogResult") {
            var model = DescribeGatherLogResultResponseBody.GatherLogResult()
            model.fromMap(dict["GatherLogResult"] as! [String: Any])
            self.gatherLogResult = model
        }
        if dict.keys.contains("Message") {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class DescribeGatherLogResultResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeGatherLogResultResponseBody?

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
            var model = DescribeGatherLogResultResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeGatherStatsResultRequest : Tea.TeaModel {
    public var changeId: String?

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
        if self.changeId != nil {
            map["ChangeId"] = self.changeId!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ChangeId") {
            self.changeId = dict["ChangeId"] as! String
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
    }
}

public class DescribeGatherStatsResultResponseBody : Tea.TeaModel {
    public class GatherStatsResult : Tea.TeaModel {
        public class Change : Tea.TeaModel {
            public var actionName: String?

            public var changeAborted: Bool?

            public var changeDescription: String?

            public var changeFinished: Bool?

            public var changeId: String?

            public var changeMessage: String?

            public var changeName: String?

            public var changePaused: Bool?

            public var changeSucceeded: Bool?

            public var changeTimedout: Bool?

            public var createTime: Int64?

            public var createUsername: String?

            public var envId: String?

            public var finishTime: Int64?

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
                if self.actionName != nil {
                    map["ActionName"] = self.actionName!
                }
                if self.changeAborted != nil {
                    map["ChangeAborted"] = self.changeAborted!
                }
                if self.changeDescription != nil {
                    map["ChangeDescription"] = self.changeDescription!
                }
                if self.changeFinished != nil {
                    map["ChangeFinished"] = self.changeFinished!
                }
                if self.changeId != nil {
                    map["ChangeId"] = self.changeId!
                }
                if self.changeMessage != nil {
                    map["ChangeMessage"] = self.changeMessage!
                }
                if self.changeName != nil {
                    map["ChangeName"] = self.changeName!
                }
                if self.changePaused != nil {
                    map["ChangePaused"] = self.changePaused!
                }
                if self.changeSucceeded != nil {
                    map["ChangeSucceeded"] = self.changeSucceeded!
                }
                if self.changeTimedout != nil {
                    map["ChangeTimedout"] = self.changeTimedout!
                }
                if self.createTime != nil {
                    map["CreateTime"] = self.createTime!
                }
                if self.createUsername != nil {
                    map["CreateUsername"] = self.createUsername!
                }
                if self.envId != nil {
                    map["EnvId"] = self.envId!
                }
                if self.finishTime != nil {
                    map["FinishTime"] = self.finishTime!
                }
                if self.updateTime != nil {
                    map["UpdateTime"] = self.updateTime!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("ActionName") {
                    self.actionName = dict["ActionName"] as! String
                }
                if dict.keys.contains("ChangeAborted") {
                    self.changeAborted = dict["ChangeAborted"] as! Bool
                }
                if dict.keys.contains("ChangeDescription") {
                    self.changeDescription = dict["ChangeDescription"] as! String
                }
                if dict.keys.contains("ChangeFinished") {
                    self.changeFinished = dict["ChangeFinished"] as! Bool
                }
                if dict.keys.contains("ChangeId") {
                    self.changeId = dict["ChangeId"] as! String
                }
                if dict.keys.contains("ChangeMessage") {
                    self.changeMessage = dict["ChangeMessage"] as! String
                }
                if dict.keys.contains("ChangeName") {
                    self.changeName = dict["ChangeName"] as! String
                }
                if dict.keys.contains("ChangePaused") {
                    self.changePaused = dict["ChangePaused"] as! Bool
                }
                if dict.keys.contains("ChangeSucceeded") {
                    self.changeSucceeded = dict["ChangeSucceeded"] as! Bool
                }
                if dict.keys.contains("ChangeTimedout") {
                    self.changeTimedout = dict["ChangeTimedout"] as! Bool
                }
                if dict.keys.contains("CreateTime") {
                    self.createTime = dict["CreateTime"] as! Int64
                }
                if dict.keys.contains("CreateUsername") {
                    self.createUsername = dict["CreateUsername"] as! String
                }
                if dict.keys.contains("EnvId") {
                    self.envId = dict["EnvId"] as! String
                }
                if dict.keys.contains("FinishTime") {
                    self.finishTime = dict["FinishTime"] as! Int64
                }
                if dict.keys.contains("UpdateTime") {
                    self.updateTime = dict["UpdateTime"] as! Int64
                }
            }
        }
        public class InstanceResults : Tea.TeaModel {
            public class InstanceResult : Tea.TeaModel {
                public var instanceId: String?

                public var storageKey: String?

                public var taskMessage: String?

                public var taskSucceeded: Bool?

                public override init() {
                    super.init()
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
                    if self.storageKey != nil {
                        map["StorageKey"] = self.storageKey!
                    }
                    if self.taskMessage != nil {
                        map["TaskMessage"] = self.taskMessage!
                    }
                    if self.taskSucceeded != nil {
                        map["TaskSucceeded"] = self.taskSucceeded!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("InstanceId") {
                        self.instanceId = dict["InstanceId"] as! String
                    }
                    if dict.keys.contains("StorageKey") {
                        self.storageKey = dict["StorageKey"] as! String
                    }
                    if dict.keys.contains("TaskMessage") {
                        self.taskMessage = dict["TaskMessage"] as! String
                    }
                    if dict.keys.contains("TaskSucceeded") {
                        self.taskSucceeded = dict["TaskSucceeded"] as! Bool
                    }
                }
            }
            public var instanceResult: [DescribeGatherStatsResultResponseBody.GatherStatsResult.InstanceResults.InstanceResult]?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.instanceResult != nil {
                    var tmp : [Any] = []
                    for k in self.instanceResult! {
                        tmp.append(k.toMap())
                    }
                    map["InstanceResult"] = tmp
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("InstanceResult") {
                    self.instanceResult = dict["InstanceResult"] as! [DescribeGatherStatsResultResponseBody.GatherStatsResult.InstanceResults.InstanceResult]
                }
            }
        }
        public var change: DescribeGatherStatsResultResponseBody.GatherStatsResult.Change?

        public var instanceResults: DescribeGatherStatsResultResponseBody.GatherStatsResult.InstanceResults?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.change?.validate()
            try self.instanceResults?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.change != nil {
                map["Change"] = self.change?.toMap()
            }
            if self.instanceResults != nil {
                map["InstanceResults"] = self.instanceResults?.toMap()
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Change") {
                var model = DescribeGatherStatsResultResponseBody.GatherStatsResult.Change()
                model.fromMap(dict["Change"] as! [String: Any])
                self.change = model
            }
            if dict.keys.contains("InstanceResults") {
                var model = DescribeGatherStatsResultResponseBody.GatherStatsResult.InstanceResults()
                model.fromMap(dict["InstanceResults"] as! [String: Any])
                self.instanceResults = model
            }
        }
    }
    public var code: String?

    public var gatherStatsResult: DescribeGatherStatsResultResponseBody.GatherStatsResult?

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
        try self.gatherStatsResult?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.gatherStatsResult != nil {
            map["GatherStatsResult"] = self.gatherStatsResult?.toMap()
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
        if dict.keys.contains("GatherStatsResult") {
            var model = DescribeGatherStatsResultResponseBody.GatherStatsResult()
            model.fromMap(dict["GatherStatsResult"] as! [String: Any])
            self.gatherStatsResult = model
        }
        if dict.keys.contains("Message") {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class DescribeGatherStatsResultResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeGatherStatsResultResponseBody?

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
            var model = DescribeGatherStatsResultResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeInstanceHealthRequest : Tea.TeaModel {
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

public class DescribeInstanceHealthResponseBody : Tea.TeaModel {
    public class InstanceHealth : Tea.TeaModel {
        public var agentStatus: String?

        public var appStatus: String?

        public var disconnectedTime: Int64?

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
            if self.agentStatus != nil {
                map["AgentStatus"] = self.agentStatus!
            }
            if self.appStatus != nil {
                map["AppStatus"] = self.appStatus!
            }
            if self.disconnectedTime != nil {
                map["DisconnectedTime"] = self.disconnectedTime!
            }
            if self.instanceId != nil {
                map["InstanceId"] = self.instanceId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("AgentStatus") {
                self.agentStatus = dict["AgentStatus"] as! String
            }
            if dict.keys.contains("AppStatus") {
                self.appStatus = dict["AppStatus"] as! String
            }
            if dict.keys.contains("DisconnectedTime") {
                self.disconnectedTime = dict["DisconnectedTime"] as! Int64
            }
            if dict.keys.contains("InstanceId") {
                self.instanceId = dict["InstanceId"] as! String
            }
        }
    }
    public var code: String?

    public var instanceHealth: DescribeInstanceHealthResponseBody.InstanceHealth?

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
        try self.instanceHealth?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.instanceHealth != nil {
            map["InstanceHealth"] = self.instanceHealth?.toMap()
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
        if dict.keys.contains("InstanceHealth") {
            var model = DescribeInstanceHealthResponseBody.InstanceHealth()
            model.fromMap(dict["InstanceHealth"] as! [String: Any])
            self.instanceHealth = model
        }
        if dict.keys.contains("Message") {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class DescribeInstanceHealthResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeInstanceHealthResponseBody?

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
            var model = DescribeInstanceHealthResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribePkgVersionsRequest : Tea.TeaModel {
    public var appId: String?

    public var pageNumber: Int32?

    public var pageSize: Int32?

    public var pkgVersionLabel: String?

    public var pkgVersionSearch: String?

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
        if self.appId != nil {
            map["AppId"] = self.appId!
        }
        if self.pageNumber != nil {
            map["PageNumber"] = self.pageNumber!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.pkgVersionLabel != nil {
            map["PkgVersionLabel"] = self.pkgVersionLabel!
        }
        if self.pkgVersionSearch != nil {
            map["PkgVersionSearch"] = self.pkgVersionSearch!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AppId") {
            self.appId = dict["AppId"] as! String
        }
        if dict.keys.contains("PageNumber") {
            self.pageNumber = dict["PageNumber"] as! Int32
        }
        if dict.keys.contains("PageSize") {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("PkgVersionLabel") {
            self.pkgVersionLabel = dict["PkgVersionLabel"] as! String
        }
        if dict.keys.contains("PkgVersionSearch") {
            self.pkgVersionSearch = dict["PkgVersionSearch"] as! String
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
    }
}

public class DescribePkgVersionsResponseBody : Tea.TeaModel {
    public class PkgVersions : Tea.TeaModel {
        public class PkgVersion : Tea.TeaModel {
            public var appId: String?

            public var appName: String?

            public var createTime: Int64?

            public var createUsername: String?

            public var packageETag: String?

            public var packageSource: String?

            public var pkgVersionDescription: String?

            public var pkgVersionId: String?

            public var pkgVersionLabel: String?

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
                if self.appId != nil {
                    map["AppId"] = self.appId!
                }
                if self.appName != nil {
                    map["AppName"] = self.appName!
                }
                if self.createTime != nil {
                    map["CreateTime"] = self.createTime!
                }
                if self.createUsername != nil {
                    map["CreateUsername"] = self.createUsername!
                }
                if self.packageETag != nil {
                    map["PackageETag"] = self.packageETag!
                }
                if self.packageSource != nil {
                    map["PackageSource"] = self.packageSource!
                }
                if self.pkgVersionDescription != nil {
                    map["PkgVersionDescription"] = self.pkgVersionDescription!
                }
                if self.pkgVersionId != nil {
                    map["PkgVersionId"] = self.pkgVersionId!
                }
                if self.pkgVersionLabel != nil {
                    map["PkgVersionLabel"] = self.pkgVersionLabel!
                }
                if self.updateTime != nil {
                    map["UpdateTime"] = self.updateTime!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("AppId") {
                    self.appId = dict["AppId"] as! String
                }
                if dict.keys.contains("AppName") {
                    self.appName = dict["AppName"] as! String
                }
                if dict.keys.contains("CreateTime") {
                    self.createTime = dict["CreateTime"] as! Int64
                }
                if dict.keys.contains("CreateUsername") {
                    self.createUsername = dict["CreateUsername"] as! String
                }
                if dict.keys.contains("PackageETag") {
                    self.packageETag = dict["PackageETag"] as! String
                }
                if dict.keys.contains("PackageSource") {
                    self.packageSource = dict["PackageSource"] as! String
                }
                if dict.keys.contains("PkgVersionDescription") {
                    self.pkgVersionDescription = dict["PkgVersionDescription"] as! String
                }
                if dict.keys.contains("PkgVersionId") {
                    self.pkgVersionId = dict["PkgVersionId"] as! String
                }
                if dict.keys.contains("PkgVersionLabel") {
                    self.pkgVersionLabel = dict["PkgVersionLabel"] as! String
                }
                if dict.keys.contains("UpdateTime") {
                    self.updateTime = dict["UpdateTime"] as! Int64
                }
            }
        }
        public var pkgVersion: [DescribePkgVersionsResponseBody.PkgVersions.PkgVersion]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.pkgVersion != nil {
                var tmp : [Any] = []
                for k in self.pkgVersion! {
                    tmp.append(k.toMap())
                }
                map["PkgVersion"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("PkgVersion") {
                self.pkgVersion = dict["PkgVersion"] as! [DescribePkgVersionsResponseBody.PkgVersions.PkgVersion]
            }
        }
    }
    public var code: String?

    public var message: String?

    public var pageNumber: Int32?

    public var pageSize: Int32?

    public var pkgVersions: DescribePkgVersionsResponseBody.PkgVersions?

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
        try self.pkgVersions?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.pageNumber != nil {
            map["PageNumber"] = self.pageNumber!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.pkgVersions != nil {
            map["PkgVersions"] = self.pkgVersions?.toMap()
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
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Message") {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("PageNumber") {
            self.pageNumber = dict["PageNumber"] as! Int32
        }
        if dict.keys.contains("PageSize") {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("PkgVersions") {
            var model = DescribePkgVersionsResponseBody.PkgVersions()
            model.fromMap(dict["PkgVersions"] as! [String: Any])
            self.pkgVersions = model
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("TotalCount") {
            self.totalCount = dict["TotalCount"] as! Int32
        }
    }
}

public class DescribePkgVersionsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribePkgVersionsResponseBody?

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
            var model = DescribePkgVersionsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribePublicConfigTemplatesRequest : Tea.TeaModel {
    public var categoryName: String?

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
        if self.categoryName != nil {
            map["CategoryName"] = self.categoryName!
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
        if dict.keys.contains("CategoryName") {
            self.categoryName = dict["CategoryName"] as! String
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

public class DescribePublicConfigTemplatesResponseBody : Tea.TeaModel {
    public class PublicConfigTemplates : Tea.TeaModel {
        public class PublicConfigTemplate : Tea.TeaModel {
            public var categoryName: String?

            public var createTime: Int64?

            public var packageSource: String?

            public var stackId: String?

            public var stackName: String?

            public var templateDescription: String?

            public var templateId: String?

            public var templateLogo: String?

            public var templateName: String?

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
                if self.categoryName != nil {
                    map["CategoryName"] = self.categoryName!
                }
                if self.createTime != nil {
                    map["CreateTime"] = self.createTime!
                }
                if self.packageSource != nil {
                    map["PackageSource"] = self.packageSource!
                }
                if self.stackId != nil {
                    map["StackId"] = self.stackId!
                }
                if self.stackName != nil {
                    map["StackName"] = self.stackName!
                }
                if self.templateDescription != nil {
                    map["TemplateDescription"] = self.templateDescription!
                }
                if self.templateId != nil {
                    map["TemplateId"] = self.templateId!
                }
                if self.templateLogo != nil {
                    map["TemplateLogo"] = self.templateLogo!
                }
                if self.templateName != nil {
                    map["TemplateName"] = self.templateName!
                }
                if self.updateTime != nil {
                    map["UpdateTime"] = self.updateTime!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("CategoryName") {
                    self.categoryName = dict["CategoryName"] as! String
                }
                if dict.keys.contains("CreateTime") {
                    self.createTime = dict["CreateTime"] as! Int64
                }
                if dict.keys.contains("PackageSource") {
                    self.packageSource = dict["PackageSource"] as! String
                }
                if dict.keys.contains("StackId") {
                    self.stackId = dict["StackId"] as! String
                }
                if dict.keys.contains("StackName") {
                    self.stackName = dict["StackName"] as! String
                }
                if dict.keys.contains("TemplateDescription") {
                    self.templateDescription = dict["TemplateDescription"] as! String
                }
                if dict.keys.contains("TemplateId") {
                    self.templateId = dict["TemplateId"] as! String
                }
                if dict.keys.contains("TemplateLogo") {
                    self.templateLogo = dict["TemplateLogo"] as! String
                }
                if dict.keys.contains("TemplateName") {
                    self.templateName = dict["TemplateName"] as! String
                }
                if dict.keys.contains("UpdateTime") {
                    self.updateTime = dict["UpdateTime"] as! Int64
                }
            }
        }
        public var publicConfigTemplate: [DescribePublicConfigTemplatesResponseBody.PublicConfigTemplates.PublicConfigTemplate]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.publicConfigTemplate != nil {
                var tmp : [Any] = []
                for k in self.publicConfigTemplate! {
                    tmp.append(k.toMap())
                }
                map["PublicConfigTemplate"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("PublicConfigTemplate") {
                self.publicConfigTemplate = dict["PublicConfigTemplate"] as! [DescribePublicConfigTemplatesResponseBody.PublicConfigTemplates.PublicConfigTemplate]
            }
        }
    }
    public var code: String?

    public var message: String?

    public var pageNumber: Int32?

    public var pageSize: Int32?

    public var publicConfigTemplates: DescribePublicConfigTemplatesResponseBody.PublicConfigTemplates?

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
        try self.publicConfigTemplates?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.pageNumber != nil {
            map["PageNumber"] = self.pageNumber!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.publicConfigTemplates != nil {
            map["PublicConfigTemplates"] = self.publicConfigTemplates?.toMap()
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
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Message") {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("PageNumber") {
            self.pageNumber = dict["PageNumber"] as! Int32
        }
        if dict.keys.contains("PageSize") {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("PublicConfigTemplates") {
            var model = DescribePublicConfigTemplatesResponseBody.PublicConfigTemplates()
            model.fromMap(dict["PublicConfigTemplates"] as! [String: Any])
            self.publicConfigTemplates = model
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("TotalCount") {
            self.totalCount = dict["TotalCount"] as! Int32
        }
    }
}

public class DescribePublicConfigTemplatesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribePublicConfigTemplatesResponseBody?

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
            var model = DescribePublicConfigTemplatesResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeStacksRequest : Tea.TeaModel {
    public var categoryName: String?

    public var pageNumber: Int32?

    public var pageSize: Int32?

    public var recommendedOnly: Bool?

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
        if self.categoryName != nil {
            map["CategoryName"] = self.categoryName!
        }
        if self.pageNumber != nil {
            map["PageNumber"] = self.pageNumber!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.recommendedOnly != nil {
            map["RecommendedOnly"] = self.recommendedOnly!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("CategoryName") {
            self.categoryName = dict["CategoryName"] as! String
        }
        if dict.keys.contains("PageNumber") {
            self.pageNumber = dict["PageNumber"] as! Int32
        }
        if dict.keys.contains("PageSize") {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("RecommendedOnly") {
            self.recommendedOnly = dict["RecommendedOnly"] as! Bool
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
    }
}

public class DescribeStacksResponseBody : Tea.TeaModel {
    public class Stacks : Tea.TeaModel {
        public class Stack : Tea.TeaModel {
            public var categoryName: String?

            public var createTime: Int64?

            public var latestStack: Bool?

            public var recommendedStack: Bool?

            public var stackId: String?

            public var stackName: String?

            public var updateTime: Int64?

            public var versionCode: Int32?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.categoryName != nil {
                    map["CategoryName"] = self.categoryName!
                }
                if self.createTime != nil {
                    map["CreateTime"] = self.createTime!
                }
                if self.latestStack != nil {
                    map["LatestStack"] = self.latestStack!
                }
                if self.recommendedStack != nil {
                    map["RecommendedStack"] = self.recommendedStack!
                }
                if self.stackId != nil {
                    map["StackId"] = self.stackId!
                }
                if self.stackName != nil {
                    map["StackName"] = self.stackName!
                }
                if self.updateTime != nil {
                    map["UpdateTime"] = self.updateTime!
                }
                if self.versionCode != nil {
                    map["VersionCode"] = self.versionCode!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("CategoryName") {
                    self.categoryName = dict["CategoryName"] as! String
                }
                if dict.keys.contains("CreateTime") {
                    self.createTime = dict["CreateTime"] as! Int64
                }
                if dict.keys.contains("LatestStack") {
                    self.latestStack = dict["LatestStack"] as! Bool
                }
                if dict.keys.contains("RecommendedStack") {
                    self.recommendedStack = dict["RecommendedStack"] as! Bool
                }
                if dict.keys.contains("StackId") {
                    self.stackId = dict["StackId"] as! String
                }
                if dict.keys.contains("StackName") {
                    self.stackName = dict["StackName"] as! String
                }
                if dict.keys.contains("UpdateTime") {
                    self.updateTime = dict["UpdateTime"] as! Int64
                }
                if dict.keys.contains("VersionCode") {
                    self.versionCode = dict["VersionCode"] as! Int32
                }
            }
        }
        public var stack: [DescribeStacksResponseBody.Stacks.Stack]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.stack != nil {
                var tmp : [Any] = []
                for k in self.stack! {
                    tmp.append(k.toMap())
                }
                map["Stack"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Stack") {
                self.stack = dict["Stack"] as! [DescribeStacksResponseBody.Stacks.Stack]
            }
        }
    }
    public var code: String?

    public var message: String?

    public var pageNumber: Int32?

    public var pageSize: Int32?

    public var requestId: String?

    public var stacks: DescribeStacksResponseBody.Stacks?

    public var totalCount: Int32?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.stacks?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.message != nil {
            map["Message"] = self.message!
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
        if self.stacks != nil {
            map["Stacks"] = self.stacks?.toMap()
        }
        if self.totalCount != nil {
            map["TotalCount"] = self.totalCount!
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
        if dict.keys.contains("PageNumber") {
            self.pageNumber = dict["PageNumber"] as! Int32
        }
        if dict.keys.contains("PageSize") {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Stacks") {
            var model = DescribeStacksResponseBody.Stacks()
            model.fromMap(dict["Stacks"] as! [String: Any])
            self.stacks = model
        }
        if dict.keys.contains("TotalCount") {
            self.totalCount = dict["TotalCount"] as! Int32
        }
    }
}

public class DescribeStacksResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeStacksResponseBody?

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
            var model = DescribeStacksResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeStorageRequest : Tea.TeaModel {
    public var regionId: String?

    public var usingSharedStorage: Bool?

    public override init() {
        super.init()
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
        if self.usingSharedStorage != nil {
            map["UsingSharedStorage"] = self.usingSharedStorage!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("UsingSharedStorage") {
            self.usingSharedStorage = dict["UsingSharedStorage"] as! Bool
        }
    }
}

public class DescribeStorageResponseBody : Tea.TeaModel {
    public class Storage : Tea.TeaModel {
        public var bucketName: String?

        public var createTime: Int64?

        public var keyPrefix: String?

        public var pkgKeyPrefix: String?

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
            if self.bucketName != nil {
                map["BucketName"] = self.bucketName!
            }
            if self.createTime != nil {
                map["CreateTime"] = self.createTime!
            }
            if self.keyPrefix != nil {
                map["KeyPrefix"] = self.keyPrefix!
            }
            if self.pkgKeyPrefix != nil {
                map["PkgKeyPrefix"] = self.pkgKeyPrefix!
            }
            if self.updateTime != nil {
                map["UpdateTime"] = self.updateTime!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("BucketName") {
                self.bucketName = dict["BucketName"] as! String
            }
            if dict.keys.contains("CreateTime") {
                self.createTime = dict["CreateTime"] as! Int64
            }
            if dict.keys.contains("KeyPrefix") {
                self.keyPrefix = dict["KeyPrefix"] as! String
            }
            if dict.keys.contains("PkgKeyPrefix") {
                self.pkgKeyPrefix = dict["PkgKeyPrefix"] as! String
            }
            if dict.keys.contains("UpdateTime") {
                self.updateTime = dict["UpdateTime"] as! Int64
            }
        }
    }
    public var code: String?

    public var message: String?

    public var requestId: String?

    public var storage: DescribeStorageResponseBody.Storage?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.storage?.validate()
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
        if self.storage != nil {
            map["Storage"] = self.storage?.toMap()
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
        if dict.keys.contains("Storage") {
            var model = DescribeStorageResponseBody.Storage()
            model.fromMap(dict["Storage"] as! [String: Any])
            self.storage = model
        }
    }
}

public class DescribeStorageResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeStorageResponseBody?

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
            var model = DescribeStorageResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GatherAppEnvLogRequest : Tea.TeaModel {
    public var envId: String?

    public var logPath: String?

    public var regionId: String?

    public var targetInstances: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.envId != nil {
            map["EnvId"] = self.envId!
        }
        if self.logPath != nil {
            map["LogPath"] = self.logPath!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.targetInstances != nil {
            map["TargetInstances"] = self.targetInstances!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("EnvId") {
            self.envId = dict["EnvId"] as! String
        }
        if dict.keys.contains("LogPath") {
            self.logPath = dict["LogPath"] as! String
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("TargetInstances") {
            self.targetInstances = dict["TargetInstances"] as! String
        }
    }
}

public class GatherAppEnvLogResponseBody : Tea.TeaModel {
    public class EnvChange : Tea.TeaModel {
        public var changeId: String?

        public var envId: String?

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
            if self.changeId != nil {
                map["ChangeId"] = self.changeId!
            }
            if self.envId != nil {
                map["EnvId"] = self.envId!
            }
            if self.startTime != nil {
                map["StartTime"] = self.startTime!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("ChangeId") {
                self.changeId = dict["ChangeId"] as! String
            }
            if dict.keys.contains("EnvId") {
                self.envId = dict["EnvId"] as! String
            }
            if dict.keys.contains("StartTime") {
                self.startTime = dict["StartTime"] as! String
            }
        }
    }
    public var code: String?

    public var envChange: GatherAppEnvLogResponseBody.EnvChange?

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
        try self.envChange?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.envChange != nil {
            map["EnvChange"] = self.envChange?.toMap()
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
        if dict.keys.contains("EnvChange") {
            var model = GatherAppEnvLogResponseBody.EnvChange()
            model.fromMap(dict["EnvChange"] as! [String: Any])
            self.envChange = model
        }
        if dict.keys.contains("Message") {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class GatherAppEnvLogResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GatherAppEnvLogResponseBody?

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
            var model = GatherAppEnvLogResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GatherAppEnvStatsRequest : Tea.TeaModel {
    public var envId: String?

    public var regionId: String?

    public var targetInstances: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.envId != nil {
            map["EnvId"] = self.envId!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.targetInstances != nil {
            map["TargetInstances"] = self.targetInstances!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("EnvId") {
            self.envId = dict["EnvId"] as! String
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("TargetInstances") {
            self.targetInstances = dict["TargetInstances"] as! String
        }
    }
}

public class GatherAppEnvStatsResponseBody : Tea.TeaModel {
    public class EnvChange : Tea.TeaModel {
        public var changeId: String?

        public var envId: String?

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
            if self.changeId != nil {
                map["ChangeId"] = self.changeId!
            }
            if self.envId != nil {
                map["EnvId"] = self.envId!
            }
            if self.startTime != nil {
                map["StartTime"] = self.startTime!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("ChangeId") {
                self.changeId = dict["ChangeId"] as! String
            }
            if dict.keys.contains("EnvId") {
                self.envId = dict["EnvId"] as! String
            }
            if dict.keys.contains("StartTime") {
                self.startTime = dict["StartTime"] as! String
            }
        }
    }
    public var code: String?

    public var envChange: GatherAppEnvStatsResponseBody.EnvChange?

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
        try self.envChange?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.envChange != nil {
            map["EnvChange"] = self.envChange?.toMap()
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
        if dict.keys.contains("EnvChange") {
            var model = GatherAppEnvStatsResponseBody.EnvChange()
            model.fromMap(dict["EnvChange"] as! [String: Any])
            self.envChange = model
        }
        if dict.keys.contains("Message") {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class GatherAppEnvStatsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GatherAppEnvStatsResponseBody?

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
            var model = GatherAppEnvStatsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class PauseChangeRequest : Tea.TeaModel {
    public var changeId: String?

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
        if self.changeId != nil {
            map["ChangeId"] = self.changeId!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ChangeId") {
            self.changeId = dict["ChangeId"] as! String
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
    }
}

public class PauseChangeResponseBody : Tea.TeaModel {
    public class EnvChange : Tea.TeaModel {
        public var changeId: String?

        public var envId: String?

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
            if self.changeId != nil {
                map["ChangeId"] = self.changeId!
            }
            if self.envId != nil {
                map["EnvId"] = self.envId!
            }
            if self.startTime != nil {
                map["StartTime"] = self.startTime!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("ChangeId") {
                self.changeId = dict["ChangeId"] as! String
            }
            if dict.keys.contains("EnvId") {
                self.envId = dict["EnvId"] as! String
            }
            if dict.keys.contains("StartTime") {
                self.startTime = dict["StartTime"] as! String
            }
        }
    }
    public var code: String?

    public var envChange: PauseChangeResponseBody.EnvChange?

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
        try self.envChange?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.envChange != nil {
            map["EnvChange"] = self.envChange?.toMap()
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
        if dict.keys.contains("EnvChange") {
            var model = PauseChangeResponseBody.EnvChange()
            model.fromMap(dict["EnvChange"] as! [String: Any])
            self.envChange = model
        }
        if dict.keys.contains("Message") {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class PauseChangeResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: PauseChangeResponseBody?

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
            var model = PauseChangeResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class RebuildAppEnvRequest : Tea.TeaModel {
    public var dryRun: Bool?

    public var envId: String?

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
        if self.dryRun != nil {
            map["DryRun"] = self.dryRun!
        }
        if self.envId != nil {
            map["EnvId"] = self.envId!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DryRun") {
            self.dryRun = dict["DryRun"] as! Bool
        }
        if dict.keys.contains("EnvId") {
            self.envId = dict["EnvId"] as! String
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
    }
}

public class RebuildAppEnvResponseBody : Tea.TeaModel {
    public class EnvChangeDetail : Tea.TeaModel {
        public class Operations : Tea.TeaModel {
            public class Operation : Tea.TeaModel {
                public var operationDescription: String?

                public var operationType: String?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.operationDescription != nil {
                        map["OperationDescription"] = self.operationDescription!
                    }
                    if self.operationType != nil {
                        map["OperationType"] = self.operationType!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("OperationDescription") {
                        self.operationDescription = dict["OperationDescription"] as! String
                    }
                    if dict.keys.contains("OperationType") {
                        self.operationType = dict["OperationType"] as! String
                    }
                }
            }
            public var operation: [RebuildAppEnvResponseBody.EnvChangeDetail.Operations.Operation]?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.operation != nil {
                    var tmp : [Any] = []
                    for k in self.operation! {
                        tmp.append(k.toMap())
                    }
                    map["Operation"] = tmp
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("Operation") {
                    self.operation = dict["Operation"] as! [RebuildAppEnvResponseBody.EnvChangeDetail.Operations.Operation]
                }
            }
        }
        public var changeId: String?

        public var envId: String?

        public var operations: RebuildAppEnvResponseBody.EnvChangeDetail.Operations?

        public var startTime: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.operations?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.changeId != nil {
                map["ChangeId"] = self.changeId!
            }
            if self.envId != nil {
                map["EnvId"] = self.envId!
            }
            if self.operations != nil {
                map["Operations"] = self.operations?.toMap()
            }
            if self.startTime != nil {
                map["StartTime"] = self.startTime!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("ChangeId") {
                self.changeId = dict["ChangeId"] as! String
            }
            if dict.keys.contains("EnvId") {
                self.envId = dict["EnvId"] as! String
            }
            if dict.keys.contains("Operations") {
                var model = RebuildAppEnvResponseBody.EnvChangeDetail.Operations()
                model.fromMap(dict["Operations"] as! [String: Any])
                self.operations = model
            }
            if dict.keys.contains("StartTime") {
                self.startTime = dict["StartTime"] as! String
            }
        }
    }
    public var code: String?

    public var envChangeDetail: RebuildAppEnvResponseBody.EnvChangeDetail?

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
        try self.envChangeDetail?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.envChangeDetail != nil {
            map["EnvChangeDetail"] = self.envChangeDetail?.toMap()
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
        if dict.keys.contains("EnvChangeDetail") {
            var model = RebuildAppEnvResponseBody.EnvChangeDetail()
            model.fromMap(dict["EnvChangeDetail"] as! [String: Any])
            self.envChangeDetail = model
        }
        if dict.keys.contains("Message") {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class RebuildAppEnvResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: RebuildAppEnvResponseBody?

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
            var model = RebuildAppEnvResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class RestartAppEnvRequest : Tea.TeaModel {
    public var batchInterval: Int32?

    public var batchPercent: Int32?

    public var batchSize: Int32?

    public var envId: String?

    public var pauseBetweenBatches: Bool?

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
        if self.batchInterval != nil {
            map["BatchInterval"] = self.batchInterval!
        }
        if self.batchPercent != nil {
            map["BatchPercent"] = self.batchPercent!
        }
        if self.batchSize != nil {
            map["BatchSize"] = self.batchSize!
        }
        if self.envId != nil {
            map["EnvId"] = self.envId!
        }
        if self.pauseBetweenBatches != nil {
            map["PauseBetweenBatches"] = self.pauseBetweenBatches!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("BatchInterval") {
            self.batchInterval = dict["BatchInterval"] as! Int32
        }
        if dict.keys.contains("BatchPercent") {
            self.batchPercent = dict["BatchPercent"] as! Int32
        }
        if dict.keys.contains("BatchSize") {
            self.batchSize = dict["BatchSize"] as! Int32
        }
        if dict.keys.contains("EnvId") {
            self.envId = dict["EnvId"] as! String
        }
        if dict.keys.contains("PauseBetweenBatches") {
            self.pauseBetweenBatches = dict["PauseBetweenBatches"] as! Bool
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
    }
}

public class RestartAppEnvResponseBody : Tea.TeaModel {
    public class EnvChange : Tea.TeaModel {
        public var changeId: String?

        public var envId: String?

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
            if self.changeId != nil {
                map["ChangeId"] = self.changeId!
            }
            if self.envId != nil {
                map["EnvId"] = self.envId!
            }
            if self.startTime != nil {
                map["StartTime"] = self.startTime!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("ChangeId") {
                self.changeId = dict["ChangeId"] as! String
            }
            if dict.keys.contains("EnvId") {
                self.envId = dict["EnvId"] as! String
            }
            if dict.keys.contains("StartTime") {
                self.startTime = dict["StartTime"] as! String
            }
        }
    }
    public var code: String?

    public var envChange: RestartAppEnvResponseBody.EnvChange?

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
        try self.envChange?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.envChange != nil {
            map["EnvChange"] = self.envChange?.toMap()
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
        if dict.keys.contains("EnvChange") {
            var model = RestartAppEnvResponseBody.EnvChange()
            model.fromMap(dict["EnvChange"] as! [String: Any])
            self.envChange = model
        }
        if dict.keys.contains("Message") {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class RestartAppEnvResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: RestartAppEnvResponseBody?

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
            var model = RestartAppEnvResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ResumeChangeRequest : Tea.TeaModel {
    public var changeId: String?

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
        if self.changeId != nil {
            map["ChangeId"] = self.changeId!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ChangeId") {
            self.changeId = dict["ChangeId"] as! String
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
    }
}

public class ResumeChangeResponseBody : Tea.TeaModel {
    public class EnvChange : Tea.TeaModel {
        public var changeId: String?

        public var envId: String?

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
            if self.changeId != nil {
                map["ChangeId"] = self.changeId!
            }
            if self.envId != nil {
                map["EnvId"] = self.envId!
            }
            if self.startTime != nil {
                map["StartTime"] = self.startTime!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("ChangeId") {
                self.changeId = dict["ChangeId"] as! String
            }
            if dict.keys.contains("EnvId") {
                self.envId = dict["EnvId"] as! String
            }
            if dict.keys.contains("StartTime") {
                self.startTime = dict["StartTime"] as! String
            }
        }
    }
    public var code: String?

    public var envChange: ResumeChangeResponseBody.EnvChange?

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
        try self.envChange?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.envChange != nil {
            map["EnvChange"] = self.envChange?.toMap()
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
        if dict.keys.contains("EnvChange") {
            var model = ResumeChangeResponseBody.EnvChange()
            model.fromMap(dict["EnvChange"] as! [String: Any])
            self.envChange = model
        }
        if dict.keys.contains("Message") {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class ResumeChangeResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ResumeChangeResponseBody?

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
            var model = ResumeChangeResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class StartAppEnvRequest : Tea.TeaModel {
    public var envId: String?

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
        if self.envId != nil {
            map["EnvId"] = self.envId!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("EnvId") {
            self.envId = dict["EnvId"] as! String
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
    }
}

public class StartAppEnvResponseBody : Tea.TeaModel {
    public class EnvChange : Tea.TeaModel {
        public var changeId: String?

        public var envId: String?

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
            if self.changeId != nil {
                map["ChangeId"] = self.changeId!
            }
            if self.envId != nil {
                map["EnvId"] = self.envId!
            }
            if self.startTime != nil {
                map["StartTime"] = self.startTime!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("ChangeId") {
                self.changeId = dict["ChangeId"] as! String
            }
            if dict.keys.contains("EnvId") {
                self.envId = dict["EnvId"] as! String
            }
            if dict.keys.contains("StartTime") {
                self.startTime = dict["StartTime"] as! String
            }
        }
    }
    public var code: String?

    public var envChange: StartAppEnvResponseBody.EnvChange?

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
        try self.envChange?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.envChange != nil {
            map["EnvChange"] = self.envChange?.toMap()
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
        if dict.keys.contains("EnvChange") {
            var model = StartAppEnvResponseBody.EnvChange()
            model.fromMap(dict["EnvChange"] as! [String: Any])
            self.envChange = model
        }
        if dict.keys.contains("Message") {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class StartAppEnvResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: StartAppEnvResponseBody?

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
            var model = StartAppEnvResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class StopAppEnvRequest : Tea.TeaModel {
    public var envId: String?

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
        if self.envId != nil {
            map["EnvId"] = self.envId!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("EnvId") {
            self.envId = dict["EnvId"] as! String
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
    }
}

public class StopAppEnvResponseBody : Tea.TeaModel {
    public class EnvChange : Tea.TeaModel {
        public var changeId: String?

        public var envId: String?

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
            if self.changeId != nil {
                map["ChangeId"] = self.changeId!
            }
            if self.envId != nil {
                map["EnvId"] = self.envId!
            }
            if self.startTime != nil {
                map["StartTime"] = self.startTime!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("ChangeId") {
                self.changeId = dict["ChangeId"] as! String
            }
            if dict.keys.contains("EnvId") {
                self.envId = dict["EnvId"] as! String
            }
            if dict.keys.contains("StartTime") {
                self.startTime = dict["StartTime"] as! String
            }
        }
    }
    public var code: String?

    public var envChange: StopAppEnvResponseBody.EnvChange?

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
        try self.envChange?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.envChange != nil {
            map["EnvChange"] = self.envChange?.toMap()
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
        if dict.keys.contains("EnvChange") {
            var model = StopAppEnvResponseBody.EnvChange()
            model.fromMap(dict["EnvChange"] as! [String: Any])
            self.envChange = model
        }
        if dict.keys.contains("Message") {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class StopAppEnvResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: StopAppEnvResponseBody?

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
            var model = StopAppEnvResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class TerminateAppEnvRequest : Tea.TeaModel {
    public var dryRun: String?

    public var envId: String?

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
        if self.dryRun != nil {
            map["DryRun"] = self.dryRun!
        }
        if self.envId != nil {
            map["EnvId"] = self.envId!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DryRun") {
            self.dryRun = dict["DryRun"] as! String
        }
        if dict.keys.contains("EnvId") {
            self.envId = dict["EnvId"] as! String
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
    }
}

public class TerminateAppEnvResponseBody : Tea.TeaModel {
    public class EnvChangeDetail : Tea.TeaModel {
        public class Operations : Tea.TeaModel {
            public class Operation : Tea.TeaModel {
                public var operationDescription: String?

                public var operationType: String?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.operationDescription != nil {
                        map["OperationDescription"] = self.operationDescription!
                    }
                    if self.operationType != nil {
                        map["OperationType"] = self.operationType!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("OperationDescription") {
                        self.operationDescription = dict["OperationDescription"] as! String
                    }
                    if dict.keys.contains("OperationType") {
                        self.operationType = dict["OperationType"] as! String
                    }
                }
            }
            public var operation: [TerminateAppEnvResponseBody.EnvChangeDetail.Operations.Operation]?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.operation != nil {
                    var tmp : [Any] = []
                    for k in self.operation! {
                        tmp.append(k.toMap())
                    }
                    map["Operation"] = tmp
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("Operation") {
                    self.operation = dict["Operation"] as! [TerminateAppEnvResponseBody.EnvChangeDetail.Operations.Operation]
                }
            }
        }
        public var changeId: String?

        public var envId: String?

        public var operations: TerminateAppEnvResponseBody.EnvChangeDetail.Operations?

        public var startTime: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.operations?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.changeId != nil {
                map["ChangeId"] = self.changeId!
            }
            if self.envId != nil {
                map["EnvId"] = self.envId!
            }
            if self.operations != nil {
                map["Operations"] = self.operations?.toMap()
            }
            if self.startTime != nil {
                map["StartTime"] = self.startTime!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("ChangeId") {
                self.changeId = dict["ChangeId"] as! String
            }
            if dict.keys.contains("EnvId") {
                self.envId = dict["EnvId"] as! String
            }
            if dict.keys.contains("Operations") {
                var model = TerminateAppEnvResponseBody.EnvChangeDetail.Operations()
                model.fromMap(dict["Operations"] as! [String: Any])
                self.operations = model
            }
            if dict.keys.contains("StartTime") {
                self.startTime = dict["StartTime"] as! String
            }
        }
    }
    public var code: String?

    public var envChangeDetail: TerminateAppEnvResponseBody.EnvChangeDetail?

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
        try self.envChangeDetail?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.envChangeDetail != nil {
            map["EnvChangeDetail"] = self.envChangeDetail?.toMap()
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
        if dict.keys.contains("EnvChangeDetail") {
            var model = TerminateAppEnvResponseBody.EnvChangeDetail()
            model.fromMap(dict["EnvChangeDetail"] as! [String: Any])
            self.envChangeDetail = model
        }
        if dict.keys.contains("Message") {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class TerminateAppEnvResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: TerminateAppEnvResponseBody?

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
            var model = TerminateAppEnvResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class UpdateAppEnvRequest : Tea.TeaModel {
    public var batchInterval: String?

    public var batchPercent: String?

    public var batchSize: String?

    public var dryRun: Bool?

    public var envDescription: String?

    public var envId: String?

    public var extraProperties: String?

    public var optionSettings: String?

    public var pauseBetweenBatches: Bool?

    public var pkgVersionId: String?

    public var regionId: String?

    public var stackId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.batchInterval != nil {
            map["BatchInterval"] = self.batchInterval!
        }
        if self.batchPercent != nil {
            map["BatchPercent"] = self.batchPercent!
        }
        if self.batchSize != nil {
            map["BatchSize"] = self.batchSize!
        }
        if self.dryRun != nil {
            map["DryRun"] = self.dryRun!
        }
        if self.envDescription != nil {
            map["EnvDescription"] = self.envDescription!
        }
        if self.envId != nil {
            map["EnvId"] = self.envId!
        }
        if self.extraProperties != nil {
            map["ExtraProperties"] = self.extraProperties!
        }
        if self.optionSettings != nil {
            map["OptionSettings"] = self.optionSettings!
        }
        if self.pauseBetweenBatches != nil {
            map["PauseBetweenBatches"] = self.pauseBetweenBatches!
        }
        if self.pkgVersionId != nil {
            map["PkgVersionId"] = self.pkgVersionId!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.stackId != nil {
            map["StackId"] = self.stackId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("BatchInterval") {
            self.batchInterval = dict["BatchInterval"] as! String
        }
        if dict.keys.contains("BatchPercent") {
            self.batchPercent = dict["BatchPercent"] as! String
        }
        if dict.keys.contains("BatchSize") {
            self.batchSize = dict["BatchSize"] as! String
        }
        if dict.keys.contains("DryRun") {
            self.dryRun = dict["DryRun"] as! Bool
        }
        if dict.keys.contains("EnvDescription") {
            self.envDescription = dict["EnvDescription"] as! String
        }
        if dict.keys.contains("EnvId") {
            self.envId = dict["EnvId"] as! String
        }
        if dict.keys.contains("ExtraProperties") {
            self.extraProperties = dict["ExtraProperties"] as! String
        }
        if dict.keys.contains("OptionSettings") {
            self.optionSettings = dict["OptionSettings"] as! String
        }
        if dict.keys.contains("PauseBetweenBatches") {
            self.pauseBetweenBatches = dict["PauseBetweenBatches"] as! Bool
        }
        if dict.keys.contains("PkgVersionId") {
            self.pkgVersionId = dict["PkgVersionId"] as! String
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("StackId") {
            self.stackId = dict["StackId"] as! String
        }
    }
}

public class UpdateAppEnvResponseBody : Tea.TeaModel {
    public class EnvChangeDetail : Tea.TeaModel {
        public class Operations : Tea.TeaModel {
            public class Operation : Tea.TeaModel {
                public var operationDescription: String?

                public var operationType: String?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.operationDescription != nil {
                        map["OperationDescription"] = self.operationDescription!
                    }
                    if self.operationType != nil {
                        map["OperationType"] = self.operationType!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("OperationDescription") {
                        self.operationDescription = dict["OperationDescription"] as! String
                    }
                    if dict.keys.contains("OperationType") {
                        self.operationType = dict["OperationType"] as! String
                    }
                }
            }
            public var operation: [UpdateAppEnvResponseBody.EnvChangeDetail.Operations.Operation]?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.operation != nil {
                    var tmp : [Any] = []
                    for k in self.operation! {
                        tmp.append(k.toMap())
                    }
                    map["Operation"] = tmp
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("Operation") {
                    self.operation = dict["Operation"] as! [UpdateAppEnvResponseBody.EnvChangeDetail.Operations.Operation]
                }
            }
        }
        public var changeId: String?

        public var envId: String?

        public var operations: UpdateAppEnvResponseBody.EnvChangeDetail.Operations?

        public var startTime: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.operations?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.changeId != nil {
                map["ChangeId"] = self.changeId!
            }
            if self.envId != nil {
                map["EnvId"] = self.envId!
            }
            if self.operations != nil {
                map["Operations"] = self.operations?.toMap()
            }
            if self.startTime != nil {
                map["StartTime"] = self.startTime!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("ChangeId") {
                self.changeId = dict["ChangeId"] as! String
            }
            if dict.keys.contains("EnvId") {
                self.envId = dict["EnvId"] as! String
            }
            if dict.keys.contains("Operations") {
                var model = UpdateAppEnvResponseBody.EnvChangeDetail.Operations()
                model.fromMap(dict["Operations"] as! [String: Any])
                self.operations = model
            }
            if dict.keys.contains("StartTime") {
                self.startTime = dict["StartTime"] as! String
            }
        }
    }
    public var code: String?

    public var envChangeDetail: UpdateAppEnvResponseBody.EnvChangeDetail?

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
        try self.envChangeDetail?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.envChangeDetail != nil {
            map["EnvChangeDetail"] = self.envChangeDetail?.toMap()
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
        if dict.keys.contains("EnvChangeDetail") {
            var model = UpdateAppEnvResponseBody.EnvChangeDetail()
            model.fromMap(dict["EnvChangeDetail"] as! [String: Any])
            self.envChangeDetail = model
        }
        if dict.keys.contains("Message") {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class UpdateAppEnvResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpdateAppEnvResponseBody?

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
            var model = UpdateAppEnvResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class UpdateApplicationRequest : Tea.TeaModel {
    public var appDescription: String?

    public var appId: String?

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
        if self.appDescription != nil {
            map["AppDescription"] = self.appDescription!
        }
        if self.appId != nil {
            map["AppId"] = self.appId!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AppDescription") {
            self.appDescription = dict["AppDescription"] as! String
        }
        if dict.keys.contains("AppId") {
            self.appId = dict["AppId"] as! String
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
    }
}

public class UpdateApplicationResponseBody : Tea.TeaModel {
    public class Application : Tea.TeaModel {
        public var appDescription: String?

        public var appId: String?

        public var appName: String?

        public var categoryName: String?

        public var createTime: Int64?

        public var createUsername: String?

        public var updateTime: Int64?

        public var updateUsername: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.appDescription != nil {
                map["AppDescription"] = self.appDescription!
            }
            if self.appId != nil {
                map["AppId"] = self.appId!
            }
            if self.appName != nil {
                map["AppName"] = self.appName!
            }
            if self.categoryName != nil {
                map["CategoryName"] = self.categoryName!
            }
            if self.createTime != nil {
                map["CreateTime"] = self.createTime!
            }
            if self.createUsername != nil {
                map["CreateUsername"] = self.createUsername!
            }
            if self.updateTime != nil {
                map["UpdateTime"] = self.updateTime!
            }
            if self.updateUsername != nil {
                map["UpdateUsername"] = self.updateUsername!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("AppDescription") {
                self.appDescription = dict["AppDescription"] as! String
            }
            if dict.keys.contains("AppId") {
                self.appId = dict["AppId"] as! String
            }
            if dict.keys.contains("AppName") {
                self.appName = dict["AppName"] as! String
            }
            if dict.keys.contains("CategoryName") {
                self.categoryName = dict["CategoryName"] as! String
            }
            if dict.keys.contains("CreateTime") {
                self.createTime = dict["CreateTime"] as! Int64
            }
            if dict.keys.contains("CreateUsername") {
                self.createUsername = dict["CreateUsername"] as! String
            }
            if dict.keys.contains("UpdateTime") {
                self.updateTime = dict["UpdateTime"] as! Int64
            }
            if dict.keys.contains("UpdateUsername") {
                self.updateUsername = dict["UpdateUsername"] as! String
            }
        }
    }
    public var application: UpdateApplicationResponseBody.Application?

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
        try self.application?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.application != nil {
            map["Application"] = self.application?.toMap()
        }
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
        if dict.keys.contains("Application") {
            var model = UpdateApplicationResponseBody.Application()
            model.fromMap(dict["Application"] as! [String: Any])
            self.application = model
        }
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

public class UpdateApplicationResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpdateApplicationResponseBody?

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
            var model = UpdateApplicationResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class UpdateConfigTemplateRequest : Tea.TeaModel {
    public var optionSettings: String?

    public var regionId: String?

    public var templateDescription: String?

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
        if self.optionSettings != nil {
            map["OptionSettings"] = self.optionSettings!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.templateDescription != nil {
            map["TemplateDescription"] = self.templateDescription!
        }
        if self.templateId != nil {
            map["TemplateId"] = self.templateId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("OptionSettings") {
            self.optionSettings = dict["OptionSettings"] as! String
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("TemplateDescription") {
            self.templateDescription = dict["TemplateDescription"] as! String
        }
        if dict.keys.contains("TemplateId") {
            self.templateId = dict["TemplateId"] as! String
        }
    }
}

public class UpdateConfigTemplateResponseBody : Tea.TeaModel {
    public class ConfigTemplate : Tea.TeaModel {
        public var appId: String?

        public var appName: String?

        public var createTime: Int64?

        public var stackId: String?

        public var stackName: String?

        public var templateId: String?

        public var templateName: String?

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
            if self.appId != nil {
                map["AppId"] = self.appId!
            }
            if self.appName != nil {
                map["AppName"] = self.appName!
            }
            if self.createTime != nil {
                map["CreateTime"] = self.createTime!
            }
            if self.stackId != nil {
                map["StackId"] = self.stackId!
            }
            if self.stackName != nil {
                map["StackName"] = self.stackName!
            }
            if self.templateId != nil {
                map["TemplateId"] = self.templateId!
            }
            if self.templateName != nil {
                map["TemplateName"] = self.templateName!
            }
            if self.updateTime != nil {
                map["UpdateTime"] = self.updateTime!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("AppId") {
                self.appId = dict["AppId"] as! String
            }
            if dict.keys.contains("AppName") {
                self.appName = dict["AppName"] as! String
            }
            if dict.keys.contains("CreateTime") {
                self.createTime = dict["CreateTime"] as! Int64
            }
            if dict.keys.contains("StackId") {
                self.stackId = dict["StackId"] as! String
            }
            if dict.keys.contains("StackName") {
                self.stackName = dict["StackName"] as! String
            }
            if dict.keys.contains("TemplateId") {
                self.templateId = dict["TemplateId"] as! String
            }
            if dict.keys.contains("TemplateName") {
                self.templateName = dict["TemplateName"] as! String
            }
            if dict.keys.contains("UpdateTime") {
                self.updateTime = dict["UpdateTime"] as! Int64
            }
        }
    }
    public var code: String?

    public var configTemplate: UpdateConfigTemplateResponseBody.ConfigTemplate?

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
        try self.configTemplate?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.configTemplate != nil {
            map["ConfigTemplate"] = self.configTemplate?.toMap()
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
        if dict.keys.contains("ConfigTemplate") {
            var model = UpdateConfigTemplateResponseBody.ConfigTemplate()
            model.fromMap(dict["ConfigTemplate"] as! [String: Any])
            self.configTemplate = model
        }
        if dict.keys.contains("Message") {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class UpdateConfigTemplateResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpdateConfigTemplateResponseBody?

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
            var model = UpdateConfigTemplateResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ValidateConfigSettingRequest : Tea.TeaModel {
    public var envId: String?

    public var optionSettings: String?

    public var regionId: String?

    public var stackId: String?

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
        if self.envId != nil {
            map["EnvId"] = self.envId!
        }
        if self.optionSettings != nil {
            map["OptionSettings"] = self.optionSettings!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.stackId != nil {
            map["StackId"] = self.stackId!
        }
        if self.templateId != nil {
            map["TemplateId"] = self.templateId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("EnvId") {
            self.envId = dict["EnvId"] as! String
        }
        if dict.keys.contains("OptionSettings") {
            self.optionSettings = dict["OptionSettings"] as! String
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("StackId") {
            self.stackId = dict["StackId"] as! String
        }
        if dict.keys.contains("TemplateId") {
            self.templateId = dict["TemplateId"] as! String
        }
    }
}

public class ValidateConfigSettingResponseBody : Tea.TeaModel {
    public class ConfigValidationResults : Tea.TeaModel {
        public class ConfigValidationResult : Tea.TeaModel {
            public class ConfigOption : Tea.TeaModel {
                public var changeSeverity: String?

                public var defaultValue: String?

                public var editorType: String?

                public var hiddenOption: Bool?

                public var maxLength: Int32?

                public var maxValue: Int64?

                public var minLength: Int32?

                public var minValue: Int64?

                public var optionDescription: String?

                public var optionLabel: String?

                public var optionName: String?

                public var pathName: String?

                public var readonlyOption: Bool?

                public var regexDesc: String?

                public var regexPattern: String?

                public var valueOptions: String?

                public var valueType: String?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.changeSeverity != nil {
                        map["ChangeSeverity"] = self.changeSeverity!
                    }
                    if self.defaultValue != nil {
                        map["DefaultValue"] = self.defaultValue!
                    }
                    if self.editorType != nil {
                        map["EditorType"] = self.editorType!
                    }
                    if self.hiddenOption != nil {
                        map["HiddenOption"] = self.hiddenOption!
                    }
                    if self.maxLength != nil {
                        map["MaxLength"] = self.maxLength!
                    }
                    if self.maxValue != nil {
                        map["MaxValue"] = self.maxValue!
                    }
                    if self.minLength != nil {
                        map["MinLength"] = self.minLength!
                    }
                    if self.minValue != nil {
                        map["MinValue"] = self.minValue!
                    }
                    if self.optionDescription != nil {
                        map["OptionDescription"] = self.optionDescription!
                    }
                    if self.optionLabel != nil {
                        map["OptionLabel"] = self.optionLabel!
                    }
                    if self.optionName != nil {
                        map["OptionName"] = self.optionName!
                    }
                    if self.pathName != nil {
                        map["PathName"] = self.pathName!
                    }
                    if self.readonlyOption != nil {
                        map["ReadonlyOption"] = self.readonlyOption!
                    }
                    if self.regexDesc != nil {
                        map["RegexDesc"] = self.regexDesc!
                    }
                    if self.regexPattern != nil {
                        map["RegexPattern"] = self.regexPattern!
                    }
                    if self.valueOptions != nil {
                        map["ValueOptions"] = self.valueOptions!
                    }
                    if self.valueType != nil {
                        map["ValueType"] = self.valueType!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("ChangeSeverity") {
                        self.changeSeverity = dict["ChangeSeverity"] as! String
                    }
                    if dict.keys.contains("DefaultValue") {
                        self.defaultValue = dict["DefaultValue"] as! String
                    }
                    if dict.keys.contains("EditorType") {
                        self.editorType = dict["EditorType"] as! String
                    }
                    if dict.keys.contains("HiddenOption") {
                        self.hiddenOption = dict["HiddenOption"] as! Bool
                    }
                    if dict.keys.contains("MaxLength") {
                        self.maxLength = dict["MaxLength"] as! Int32
                    }
                    if dict.keys.contains("MaxValue") {
                        self.maxValue = dict["MaxValue"] as! Int64
                    }
                    if dict.keys.contains("MinLength") {
                        self.minLength = dict["MinLength"] as! Int32
                    }
                    if dict.keys.contains("MinValue") {
                        self.minValue = dict["MinValue"] as! Int64
                    }
                    if dict.keys.contains("OptionDescription") {
                        self.optionDescription = dict["OptionDescription"] as! String
                    }
                    if dict.keys.contains("OptionLabel") {
                        self.optionLabel = dict["OptionLabel"] as! String
                    }
                    if dict.keys.contains("OptionName") {
                        self.optionName = dict["OptionName"] as! String
                    }
                    if dict.keys.contains("PathName") {
                        self.pathName = dict["PathName"] as! String
                    }
                    if dict.keys.contains("ReadonlyOption") {
                        self.readonlyOption = dict["ReadonlyOption"] as! Bool
                    }
                    if dict.keys.contains("RegexDesc") {
                        self.regexDesc = dict["RegexDesc"] as! String
                    }
                    if dict.keys.contains("RegexPattern") {
                        self.regexPattern = dict["RegexPattern"] as! String
                    }
                    if dict.keys.contains("ValueOptions") {
                        self.valueOptions = dict["ValueOptions"] as! String
                    }
                    if dict.keys.contains("ValueType") {
                        self.valueType = dict["ValueType"] as! String
                    }
                }
            }
            public var configOption: ValidateConfigSettingResponseBody.ConfigValidationResults.ConfigValidationResult.ConfigOption?

            public var optionName: String?

            public var pathName: String?

            public var resultMessage: String?

            public var resultSeverity: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
                try self.configOption?.validate()
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.configOption != nil {
                    map["ConfigOption"] = self.configOption?.toMap()
                }
                if self.optionName != nil {
                    map["OptionName"] = self.optionName!
                }
                if self.pathName != nil {
                    map["PathName"] = self.pathName!
                }
                if self.resultMessage != nil {
                    map["ResultMessage"] = self.resultMessage!
                }
                if self.resultSeverity != nil {
                    map["ResultSeverity"] = self.resultSeverity!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("ConfigOption") {
                    var model = ValidateConfigSettingResponseBody.ConfigValidationResults.ConfigValidationResult.ConfigOption()
                    model.fromMap(dict["ConfigOption"] as! [String: Any])
                    self.configOption = model
                }
                if dict.keys.contains("OptionName") {
                    self.optionName = dict["OptionName"] as! String
                }
                if dict.keys.contains("PathName") {
                    self.pathName = dict["PathName"] as! String
                }
                if dict.keys.contains("ResultMessage") {
                    self.resultMessage = dict["ResultMessage"] as! String
                }
                if dict.keys.contains("ResultSeverity") {
                    self.resultSeverity = dict["ResultSeverity"] as! String
                }
            }
        }
        public var configValidationResult: [ValidateConfigSettingResponseBody.ConfigValidationResults.ConfigValidationResult]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.configValidationResult != nil {
                var tmp : [Any] = []
                for k in self.configValidationResult! {
                    tmp.append(k.toMap())
                }
                map["ConfigValidationResult"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("ConfigValidationResult") {
                self.configValidationResult = dict["ConfigValidationResult"] as! [ValidateConfigSettingResponseBody.ConfigValidationResults.ConfigValidationResult]
            }
        }
    }
    public var code: String?

    public var configValidationResults: ValidateConfigSettingResponseBody.ConfigValidationResults?

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
        try self.configValidationResults?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.configValidationResults != nil {
            map["ConfigValidationResults"] = self.configValidationResults?.toMap()
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
        if dict.keys.contains("ConfigValidationResults") {
            var model = ValidateConfigSettingResponseBody.ConfigValidationResults()
            model.fromMap(dict["ConfigValidationResults"] as! [String: Any])
            self.configValidationResults = model
        }
        if dict.keys.contains("Message") {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class ValidateConfigSettingResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ValidateConfigSettingResponseBody?

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
            var model = ValidateConfigSettingResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}
