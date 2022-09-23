import Foundation
import Tea
import TeaUtils
import AlibabacloudOpenApi
import AlibabaCloudOpenApiUtil
import AlibabacloudEndpointUtil

public class AddEnterpriseMemberRequest : Tea.TeaModel {
    public var instanceId: String?

    public var operator_: String?

    public var staffId: String?

    public override init() {
        super.init()
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
        if self.operator_ != nil {
            map["Operator"] = self.operator_!
        }
        if self.staffId != nil {
            map["StaffId"] = self.staffId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("InstanceId") {
            self.instanceId = dict["InstanceId"] as! String
        }
        if dict.keys.contains("Operator") {
            self.operator_ = dict["Operator"] as! String
        }
        if dict.keys.contains("StaffId") {
            self.staffId = dict["StaffId"] as! String
        }
    }
}

public class AddEnterpriseMemberResponseBody : Tea.TeaModel {
    public var code: Int32?

    public var data: Bool?

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
            self.code = dict["Code"] as! Int32
        }
        if dict.keys.contains("Data") {
            self.data = dict["Data"] as! Bool
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

public class AddEnterpriseMemberResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: AddEnterpriseMemberResponseBody?

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
            var model = AddEnterpriseMemberResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class AddRamMemberRequest : Tea.TeaModel {
    public var corpIdentifier: String?

    public var staffIdentifier: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.corpIdentifier != nil {
            map["CorpIdentifier"] = self.corpIdentifier!
        }
        if self.staffIdentifier != nil {
            map["StaffIdentifier"] = self.staffIdentifier!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("CorpIdentifier") {
            self.corpIdentifier = dict["CorpIdentifier"] as! String
        }
        if dict.keys.contains("StaffIdentifier") {
            self.staffIdentifier = dict["StaffIdentifier"] as! String
        }
    }
}

public class AddRamMemberResponseBody : Tea.TeaModel {
    public var code: Int32?

    public var data: [String]?

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
            self.code = dict["Code"] as! Int32
        }
        if dict.keys.contains("Data") {
            self.data = dict["Data"] as! [String]
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

public class AddRamMemberResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: AddRamMemberResponseBody?

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
            var model = AddRamMemberResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ApproveJoinCompanyRequest : Tea.TeaModel {
    public var applicationIds: String?

    public var corpIdentifier: String?

    public override init() {
        super.init()
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
        if self.corpIdentifier != nil {
            map["CorpIdentifier"] = self.corpIdentifier!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ApplicationIds") {
            self.applicationIds = dict["ApplicationIds"] as! String
        }
        if dict.keys.contains("CorpIdentifier") {
            self.corpIdentifier = dict["CorpIdentifier"] as! String
        }
    }
}

public class ApproveJoinCompanyResponseBody : Tea.TeaModel {
    public var code: Int32?

    public var data: [String]?

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
            self.code = dict["Code"] as! Int32
        }
        if dict.keys.contains("Data") {
            self.data = dict["Data"] as! [String]
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

public class ApproveJoinCompanyResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ApproveJoinCompanyResponseBody?

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
            var model = ApproveJoinCompanyResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class CreateEnterpriseRequest : Tea.TeaModel {
    public var creatorStaffId: String?

    public var description_: String?

    public var domain: String?

    public var emails: [String: Any]?

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
        if self.creatorStaffId != nil {
            map["CreatorStaffId"] = self.creatorStaffId!
        }
        if self.description_ != nil {
            map["Description"] = self.description_!
        }
        if self.domain != nil {
            map["Domain"] = self.domain!
        }
        if self.emails != nil {
            map["Emails"] = self.emails!
        }
        if self.name != nil {
            map["Name"] = self.name!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("CreatorStaffId") {
            self.creatorStaffId = dict["CreatorStaffId"] as! String
        }
        if dict.keys.contains("Description") {
            self.description_ = dict["Description"] as! String
        }
        if dict.keys.contains("Domain") {
            self.domain = dict["Domain"] as! String
        }
        if dict.keys.contains("Emails") {
            self.emails = dict["Emails"] as! [String: Any]
        }
        if dict.keys.contains("Name") {
            self.name = dict["Name"] as! String
        }
    }
}

public class CreateEnterpriseShrinkRequest : Tea.TeaModel {
    public var creatorStaffId: String?

    public var description_: String?

    public var domain: String?

    public var emailsShrink: String?

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
        if self.creatorStaffId != nil {
            map["CreatorStaffId"] = self.creatorStaffId!
        }
        if self.description_ != nil {
            map["Description"] = self.description_!
        }
        if self.domain != nil {
            map["Domain"] = self.domain!
        }
        if self.emailsShrink != nil {
            map["Emails"] = self.emailsShrink!
        }
        if self.name != nil {
            map["Name"] = self.name!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("CreatorStaffId") {
            self.creatorStaffId = dict["CreatorStaffId"] as! String
        }
        if dict.keys.contains("Description") {
            self.description_ = dict["Description"] as! String
        }
        if dict.keys.contains("Domain") {
            self.domain = dict["Domain"] as! String
        }
        if dict.keys.contains("Emails") {
            self.emailsShrink = dict["Emails"] as! String
        }
        if dict.keys.contains("Name") {
            self.name = dict["Name"] as! String
        }
    }
}

public class CreateEnterpriseResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var id: Int64?

        public var identifier: String?

        public var name: String?

        public var prohibitCode: Int32?

        public var status: Int32?

        public var type: Int32?

        public override init() {
            super.init()
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
            if self.identifier != nil {
                map["Identifier"] = self.identifier!
            }
            if self.name != nil {
                map["Name"] = self.name!
            }
            if self.prohibitCode != nil {
                map["ProhibitCode"] = self.prohibitCode!
            }
            if self.status != nil {
                map["Status"] = self.status!
            }
            if self.type != nil {
                map["Type"] = self.type!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Id") {
                self.id = dict["Id"] as! Int64
            }
            if dict.keys.contains("Identifier") {
                self.identifier = dict["Identifier"] as! String
            }
            if dict.keys.contains("Name") {
                self.name = dict["Name"] as! String
            }
            if dict.keys.contains("ProhibitCode") {
                self.prohibitCode = dict["ProhibitCode"] as! Int32
            }
            if dict.keys.contains("Status") {
                self.status = dict["Status"] as! Int32
            }
            if dict.keys.contains("Type") {
                self.type = dict["Type"] as! Int32
            }
        }
    }
    public var code: Int32?

    public var data: CreateEnterpriseResponseBody.Data?

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
        try self.data?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.data != nil {
            map["Data"] = self.data?.toMap()
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
            self.code = dict["Code"] as! Int32
        }
        if dict.keys.contains("Data") {
            var model = CreateEnterpriseResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
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

public class CreateEnterpriseResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateEnterpriseResponseBody?

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
            var model = CreateEnterpriseResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class CreateWorkitemRequest : Tea.TeaModel {
    public var AKProjectId: Int32?

    public var assignedTo: String?

    public var author: String?

    public var cfList: String?

    public var corpIdentifier: String?

    public var description_: String?

    public var moduleIds: String?

    public var priorityId: Int32?

    public var seriousLevelId: Int32?

    public var stamp: String?

    public var subject: String?

    public var templateId: Int32?

    public var verifier: String?

    public var watcherUsers: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.AKProjectId != nil {
            map["AKProjectId"] = self.AKProjectId!
        }
        if self.assignedTo != nil {
            map["AssignedTo"] = self.assignedTo!
        }
        if self.author != nil {
            map["Author"] = self.author!
        }
        if self.cfList != nil {
            map["CfList"] = self.cfList!
        }
        if self.corpIdentifier != nil {
            map["CorpIdentifier"] = self.corpIdentifier!
        }
        if self.description_ != nil {
            map["Description"] = self.description_!
        }
        if self.moduleIds != nil {
            map["ModuleIds"] = self.moduleIds!
        }
        if self.priorityId != nil {
            map["PriorityId"] = self.priorityId!
        }
        if self.seriousLevelId != nil {
            map["SeriousLevelId"] = self.seriousLevelId!
        }
        if self.stamp != nil {
            map["Stamp"] = self.stamp!
        }
        if self.subject != nil {
            map["Subject"] = self.subject!
        }
        if self.templateId != nil {
            map["TemplateId"] = self.templateId!
        }
        if self.verifier != nil {
            map["Verifier"] = self.verifier!
        }
        if self.watcherUsers != nil {
            map["WatcherUsers"] = self.watcherUsers!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AKProjectId") {
            self.AKProjectId = dict["AKProjectId"] as! Int32
        }
        if dict.keys.contains("AssignedTo") {
            self.assignedTo = dict["AssignedTo"] as! String
        }
        if dict.keys.contains("Author") {
            self.author = dict["Author"] as! String
        }
        if dict.keys.contains("CfList") {
            self.cfList = dict["CfList"] as! String
        }
        if dict.keys.contains("CorpIdentifier") {
            self.corpIdentifier = dict["CorpIdentifier"] as! String
        }
        if dict.keys.contains("Description") {
            self.description_ = dict["Description"] as! String
        }
        if dict.keys.contains("ModuleIds") {
            self.moduleIds = dict["ModuleIds"] as! String
        }
        if dict.keys.contains("PriorityId") {
            self.priorityId = dict["PriorityId"] as! Int32
        }
        if dict.keys.contains("SeriousLevelId") {
            self.seriousLevelId = dict["SeriousLevelId"] as! Int32
        }
        if dict.keys.contains("Stamp") {
            self.stamp = dict["Stamp"] as! String
        }
        if dict.keys.contains("Subject") {
            self.subject = dict["Subject"] as! String
        }
        if dict.keys.contains("TemplateId") {
            self.templateId = dict["TemplateId"] as! Int32
        }
        if dict.keys.contains("Verifier") {
            self.verifier = dict["Verifier"] as! String
        }
        if dict.keys.contains("WatcherUsers") {
            self.watcherUsers = dict["WatcherUsers"] as! String
        }
    }
}

public class CreateWorkitemResponseBody : Tea.TeaModel {
    public var code: Int32?

    public var data: Int32?

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
            self.code = dict["Code"] as! Int32
        }
        if dict.keys.contains("Data") {
            self.data = dict["Data"] as! Int32
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

public class CreateWorkitemResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateWorkitemResponseBody?

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
            var model = CreateWorkitemResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetBindedUserByDingIdRequest : Tea.TeaModel {
    public var dingId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.dingId != nil {
            map["DingId"] = self.dingId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DingId") {
            self.dingId = dict["DingId"] as! String
        }
    }
}

public class GetBindedUserByDingIdResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class AliyunUser : Tea.TeaModel {
            public var accountStructure: Int32?

            public var aliyunId: String?

            public var email: String?

            public var havanaId: String?

            public var id: Int32?

            public var kp: String?

            public var nickName: String?

            public var realname: String?

            public var taobaoNick: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.accountStructure != nil {
                    map["AccountStructure"] = self.accountStructure!
                }
                if self.aliyunId != nil {
                    map["AliyunId"] = self.aliyunId!
                }
                if self.email != nil {
                    map["Email"] = self.email!
                }
                if self.havanaId != nil {
                    map["HavanaId"] = self.havanaId!
                }
                if self.id != nil {
                    map["Id"] = self.id!
                }
                if self.kp != nil {
                    map["Kp"] = self.kp!
                }
                if self.nickName != nil {
                    map["NickName"] = self.nickName!
                }
                if self.realname != nil {
                    map["Realname"] = self.realname!
                }
                if self.taobaoNick != nil {
                    map["TaobaoNick"] = self.taobaoNick!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("AccountStructure") {
                    self.accountStructure = dict["AccountStructure"] as! Int32
                }
                if dict.keys.contains("AliyunId") {
                    self.aliyunId = dict["AliyunId"] as! String
                }
                if dict.keys.contains("Email") {
                    self.email = dict["Email"] as! String
                }
                if dict.keys.contains("HavanaId") {
                    self.havanaId = dict["HavanaId"] as! String
                }
                if dict.keys.contains("Id") {
                    self.id = dict["Id"] as! Int32
                }
                if dict.keys.contains("Kp") {
                    self.kp = dict["Kp"] as! String
                }
                if dict.keys.contains("NickName") {
                    self.nickName = dict["NickName"] as! String
                }
                if dict.keys.contains("Realname") {
                    self.realname = dict["Realname"] as! String
                }
                if dict.keys.contains("TaobaoNick") {
                    self.taobaoNick = dict["TaobaoNick"] as! String
                }
            }
        }
        public class DingtalkUser : Tea.TeaModel {
            public var codeUserName: String?

            public var dingId: String?

            public var dingtalkUserId: Int32?

            public var id: Int32?

            public var nick: String?

            public var unionId: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.codeUserName != nil {
                    map["CodeUserName"] = self.codeUserName!
                }
                if self.dingId != nil {
                    map["DingId"] = self.dingId!
                }
                if self.dingtalkUserId != nil {
                    map["DingtalkUserId"] = self.dingtalkUserId!
                }
                if self.id != nil {
                    map["Id"] = self.id!
                }
                if self.nick != nil {
                    map["Nick"] = self.nick!
                }
                if self.unionId != nil {
                    map["UnionId"] = self.unionId!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("CodeUserName") {
                    self.codeUserName = dict["CodeUserName"] as! String
                }
                if dict.keys.contains("DingId") {
                    self.dingId = dict["DingId"] as! String
                }
                if dict.keys.contains("DingtalkUserId") {
                    self.dingtalkUserId = dict["DingtalkUserId"] as! Int32
                }
                if dict.keys.contains("Id") {
                    self.id = dict["Id"] as! Int32
                }
                if dict.keys.contains("Nick") {
                    self.nick = dict["Nick"] as! String
                }
                if dict.keys.contains("UnionId") {
                    self.unionId = dict["UnionId"] as! String
                }
            }
        }
        public class UserProfileDTO : Tea.TeaModel {
            public var avatar: String?

            public var createdAt: Int64?

            public var dataSource: String?

            public var email: String?

            public var englishName: String?

            public var mobile: String?

            public var name: String?

            public var nickName: String?

            public var userId: Int32?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.avatar != nil {
                    map["Avatar"] = self.avatar!
                }
                if self.createdAt != nil {
                    map["CreatedAt"] = self.createdAt!
                }
                if self.dataSource != nil {
                    map["DataSource"] = self.dataSource!
                }
                if self.email != nil {
                    map["Email"] = self.email!
                }
                if self.englishName != nil {
                    map["EnglishName"] = self.englishName!
                }
                if self.mobile != nil {
                    map["Mobile"] = self.mobile!
                }
                if self.name != nil {
                    map["Name"] = self.name!
                }
                if self.nickName != nil {
                    map["NickName"] = self.nickName!
                }
                if self.userId != nil {
                    map["UserId"] = self.userId!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("Avatar") {
                    self.avatar = dict["Avatar"] as! String
                }
                if dict.keys.contains("CreatedAt") {
                    self.createdAt = dict["CreatedAt"] as! Int64
                }
                if dict.keys.contains("DataSource") {
                    self.dataSource = dict["DataSource"] as! String
                }
                if dict.keys.contains("Email") {
                    self.email = dict["Email"] as! String
                }
                if dict.keys.contains("EnglishName") {
                    self.englishName = dict["EnglishName"] as! String
                }
                if dict.keys.contains("Mobile") {
                    self.mobile = dict["Mobile"] as! String
                }
                if dict.keys.contains("Name") {
                    self.name = dict["Name"] as! String
                }
                if dict.keys.contains("NickName") {
                    self.nickName = dict["NickName"] as! String
                }
                if dict.keys.contains("UserId") {
                    self.userId = dict["UserId"] as! Int32
                }
            }
        }
        public var aliyunUser: GetBindedUserByDingIdResponseBody.Data.AliyunUser?

        public var dingtalkUser: GetBindedUserByDingIdResponseBody.Data.DingtalkUser?

        public var guid: String?

        public var id: Int32?

        public var isValid: Bool?

        public var mainAccountType: String?

        public var nickName: String?

        public var userProfileDTO: GetBindedUserByDingIdResponseBody.Data.UserProfileDTO?

        public var uuid: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.aliyunUser?.validate()
            try self.dingtalkUser?.validate()
            try self.userProfileDTO?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.aliyunUser != nil {
                map["AliyunUser"] = self.aliyunUser?.toMap()
            }
            if self.dingtalkUser != nil {
                map["DingtalkUser"] = self.dingtalkUser?.toMap()
            }
            if self.guid != nil {
                map["Guid"] = self.guid!
            }
            if self.id != nil {
                map["Id"] = self.id!
            }
            if self.isValid != nil {
                map["IsValid"] = self.isValid!
            }
            if self.mainAccountType != nil {
                map["MainAccountType"] = self.mainAccountType!
            }
            if self.nickName != nil {
                map["NickName"] = self.nickName!
            }
            if self.userProfileDTO != nil {
                map["UserProfileDTO"] = self.userProfileDTO?.toMap()
            }
            if self.uuid != nil {
                map["Uuid"] = self.uuid!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("AliyunUser") {
                var model = GetBindedUserByDingIdResponseBody.Data.AliyunUser()
                model.fromMap(dict["AliyunUser"] as! [String: Any])
                self.aliyunUser = model
            }
            if dict.keys.contains("DingtalkUser") {
                var model = GetBindedUserByDingIdResponseBody.Data.DingtalkUser()
                model.fromMap(dict["DingtalkUser"] as! [String: Any])
                self.dingtalkUser = model
            }
            if dict.keys.contains("Guid") {
                self.guid = dict["Guid"] as! String
            }
            if dict.keys.contains("Id") {
                self.id = dict["Id"] as! Int32
            }
            if dict.keys.contains("IsValid") {
                self.isValid = dict["IsValid"] as! Bool
            }
            if dict.keys.contains("MainAccountType") {
                self.mainAccountType = dict["MainAccountType"] as! String
            }
            if dict.keys.contains("NickName") {
                self.nickName = dict["NickName"] as! String
            }
            if dict.keys.contains("UserProfileDTO") {
                var model = GetBindedUserByDingIdResponseBody.Data.UserProfileDTO()
                model.fromMap(dict["UserProfileDTO"] as! [String: Any])
                self.userProfileDTO = model
            }
            if dict.keys.contains("Uuid") {
                self.uuid = dict["Uuid"] as! String
            }
        }
    }
    public var code: Int32?

    public var data: GetBindedUserByDingIdResponseBody.Data?

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
        try self.data?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.data != nil {
            map["Data"] = self.data?.toMap()
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
            self.code = dict["Code"] as! Int32
        }
        if dict.keys.contains("Data") {
            var model = GetBindedUserByDingIdResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") {
            self.success = dict["Success"] as! Bool
        }
    }
}

public class GetBindedUserByDingIdResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetBindedUserByDingIdResponseBody?

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
            var model = GetBindedUserByDingIdResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetChangeLogRequest : Tea.TeaModel {
    public var corpIdentifier: String?

    public var targetIds: [String: Any]?

    public var targetType: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.corpIdentifier != nil {
            map["CorpIdentifier"] = self.corpIdentifier!
        }
        if self.targetIds != nil {
            map["TargetIds"] = self.targetIds!
        }
        if self.targetType != nil {
            map["TargetType"] = self.targetType!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("CorpIdentifier") {
            self.corpIdentifier = dict["CorpIdentifier"] as! String
        }
        if dict.keys.contains("TargetIds") {
            self.targetIds = dict["TargetIds"] as! [String: Any]
        }
        if dict.keys.contains("TargetType") {
            self.targetType = dict["TargetType"] as! String
        }
    }
}

public class GetChangeLogShrinkRequest : Tea.TeaModel {
    public var corpIdentifier: String?

    public var targetIdsShrink: String?

    public var targetType: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.corpIdentifier != nil {
            map["CorpIdentifier"] = self.corpIdentifier!
        }
        if self.targetIdsShrink != nil {
            map["TargetIds"] = self.targetIdsShrink!
        }
        if self.targetType != nil {
            map["TargetType"] = self.targetType!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("CorpIdentifier") {
            self.corpIdentifier = dict["CorpIdentifier"] as! String
        }
        if dict.keys.contains("TargetIds") {
            self.targetIdsShrink = dict["TargetIds"] as! String
        }
        if dict.keys.contains("TargetType") {
            self.targetType = dict["TargetType"] as! String
        }
    }
}

public class GetChangeLogResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var newValue: String?

        public var oldValue: String?

        public var other: String?

        public var propertyKey: String?

        public var propertyType: String?

        public var targetId: Int32?

        public var targetType: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.newValue != nil {
                map["NewValue"] = self.newValue!
            }
            if self.oldValue != nil {
                map["OldValue"] = self.oldValue!
            }
            if self.other != nil {
                map["Other"] = self.other!
            }
            if self.propertyKey != nil {
                map["PropertyKey"] = self.propertyKey!
            }
            if self.propertyType != nil {
                map["PropertyType"] = self.propertyType!
            }
            if self.targetId != nil {
                map["TargetId"] = self.targetId!
            }
            if self.targetType != nil {
                map["TargetType"] = self.targetType!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("NewValue") {
                self.newValue = dict["NewValue"] as! String
            }
            if dict.keys.contains("OldValue") {
                self.oldValue = dict["OldValue"] as! String
            }
            if dict.keys.contains("Other") {
                self.other = dict["Other"] as! String
            }
            if dict.keys.contains("PropertyKey") {
                self.propertyKey = dict["PropertyKey"] as! String
            }
            if dict.keys.contains("PropertyType") {
                self.propertyType = dict["PropertyType"] as! String
            }
            if dict.keys.contains("TargetId") {
                self.targetId = dict["TargetId"] as! Int32
            }
            if dict.keys.contains("TargetType") {
                self.targetType = dict["TargetType"] as! String
            }
        }
    }
    public var code: Int32?

    public var data: [GetChangeLogResponseBody.Data]?

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
            var tmp : [Any] = []
            for k in self.data! {
                tmp.append(k.toMap())
            }
            map["Data"] = tmp
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
            self.code = dict["Code"] as! Int32
        }
        if dict.keys.contains("Data") {
            self.data = dict["Data"] as! [GetChangeLogResponseBody.Data]
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") {
            self.success = dict["Success"] as! Bool
        }
    }
}

public class GetChangeLogResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetChangeLogResponseBody?

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
            var model = GetChangeLogResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetCustomFieldsByTemplateIdRequest : Tea.TeaModel {
    public var AKProjectId: Int32?

    public var corpIdentifier: String?

    public var templateId: Int32?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.AKProjectId != nil {
            map["AKProjectId"] = self.AKProjectId!
        }
        if self.corpIdentifier != nil {
            map["CorpIdentifier"] = self.corpIdentifier!
        }
        if self.templateId != nil {
            map["TemplateId"] = self.templateId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AKProjectId") {
            self.AKProjectId = dict["AKProjectId"] as! Int32
        }
        if dict.keys.contains("CorpIdentifier") {
            self.corpIdentifier = dict["CorpIdentifier"] as! String
        }
        if dict.keys.contains("TemplateId") {
            self.templateId = dict["TemplateId"] as! Int32
        }
    }
}

public class GetCustomFieldsByTemplateIdResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var createdAt: Int64?

        public var defaultValue: String?

        public var description_: String?

        public var dynamic_: Bool?

        public var editable: Bool?

        public var fieldFormat: String?

        public var id: Int32?

        public var isDelete: Bool?

        public var isRemember: Bool?

        public var isRequired: Bool?

        public var maxLength: Int32?

        public var minLength: Int32?

        public var name: String?

        public var nameI18N: String?

        public var other: String?

        public var possibleValues: String?

        public var type: String?

        public var updatedAt: Int64?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.createdAt != nil {
                map["CreatedAt"] = self.createdAt!
            }
            if self.defaultValue != nil {
                map["DefaultValue"] = self.defaultValue!
            }
            if self.description_ != nil {
                map["Description"] = self.description_!
            }
            if self.dynamic_ != nil {
                map["Dynamic"] = self.dynamic_!
            }
            if self.editable != nil {
                map["Editable"] = self.editable!
            }
            if self.fieldFormat != nil {
                map["FieldFormat"] = self.fieldFormat!
            }
            if self.id != nil {
                map["Id"] = self.id!
            }
            if self.isDelete != nil {
                map["IsDelete"] = self.isDelete!
            }
            if self.isRemember != nil {
                map["IsRemember"] = self.isRemember!
            }
            if self.isRequired != nil {
                map["IsRequired"] = self.isRequired!
            }
            if self.maxLength != nil {
                map["MaxLength"] = self.maxLength!
            }
            if self.minLength != nil {
                map["MinLength"] = self.minLength!
            }
            if self.name != nil {
                map["Name"] = self.name!
            }
            if self.nameI18N != nil {
                map["NameI18N"] = self.nameI18N!
            }
            if self.other != nil {
                map["Other"] = self.other!
            }
            if self.possibleValues != nil {
                map["PossibleValues"] = self.possibleValues!
            }
            if self.type != nil {
                map["Type"] = self.type!
            }
            if self.updatedAt != nil {
                map["UpdatedAt"] = self.updatedAt!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("CreatedAt") {
                self.createdAt = dict["CreatedAt"] as! Int64
            }
            if dict.keys.contains("DefaultValue") {
                self.defaultValue = dict["DefaultValue"] as! String
            }
            if dict.keys.contains("Description") {
                self.description_ = dict["Description"] as! String
            }
            if dict.keys.contains("Dynamic") {
                self.dynamic_ = dict["Dynamic"] as! Bool
            }
            if dict.keys.contains("Editable") {
                self.editable = dict["Editable"] as! Bool
            }
            if dict.keys.contains("FieldFormat") {
                self.fieldFormat = dict["FieldFormat"] as! String
            }
            if dict.keys.contains("Id") {
                self.id = dict["Id"] as! Int32
            }
            if dict.keys.contains("IsDelete") {
                self.isDelete = dict["IsDelete"] as! Bool
            }
            if dict.keys.contains("IsRemember") {
                self.isRemember = dict["IsRemember"] as! Bool
            }
            if dict.keys.contains("IsRequired") {
                self.isRequired = dict["IsRequired"] as! Bool
            }
            if dict.keys.contains("MaxLength") {
                self.maxLength = dict["MaxLength"] as! Int32
            }
            if dict.keys.contains("MinLength") {
                self.minLength = dict["MinLength"] as! Int32
            }
            if dict.keys.contains("Name") {
                self.name = dict["Name"] as! String
            }
            if dict.keys.contains("NameI18N") {
                self.nameI18N = dict["NameI18N"] as! String
            }
            if dict.keys.contains("Other") {
                self.other = dict["Other"] as! String
            }
            if dict.keys.contains("PossibleValues") {
                self.possibleValues = dict["PossibleValues"] as! String
            }
            if dict.keys.contains("Type") {
                self.type = dict["Type"] as! String
            }
            if dict.keys.contains("UpdatedAt") {
                self.updatedAt = dict["UpdatedAt"] as! Int64
            }
        }
    }
    public var code: Int32?

    public var data: [GetCustomFieldsByTemplateIdResponseBody.Data]?

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
            var tmp : [Any] = []
            for k in self.data! {
                tmp.append(k.toMap())
            }
            map["Data"] = tmp
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
            self.code = dict["Code"] as! Int32
        }
        if dict.keys.contains("Data") {
            self.data = dict["Data"] as! [GetCustomFieldsByTemplateIdResponseBody.Data]
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") {
            self.success = dict["Success"] as! Bool
        }
    }
}

public class GetCustomFieldsByTemplateIdResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetCustomFieldsByTemplateIdResponseBody?

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
            var model = GetCustomFieldsByTemplateIdResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetIssueByIdRequest : Tea.TeaModel {
    public var corpIdentifier: String?

    public var id: Int32?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.corpIdentifier != nil {
            map["CorpIdentifier"] = self.corpIdentifier!
        }
        if self.id != nil {
            map["Id"] = self.id!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("CorpIdentifier") {
            self.corpIdentifier = dict["CorpIdentifier"] as! String
        }
        if dict.keys.contains("Id") {
            self.id = dict["Id"] as! Int32
        }
    }
}

public class GetIssueByIdResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class CfsList : Tea.TeaModel {
            public var id: String?

            public var name: String?

            public var type: String?

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
                if self.id != nil {
                    map["Id"] = self.id!
                }
                if self.name != nil {
                    map["Name"] = self.name!
                }
                if self.type != nil {
                    map["Type"] = self.type!
                }
                if self.value != nil {
                    map["Value"] = self.value!
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
                if dict.keys.contains("Type") {
                    self.type = dict["Type"] as! String
                }
                if dict.keys.contains("Value") {
                    self.value = dict["Value"] as! String
                }
            }
        }
        public var akProjectId: Int32?

        public var assignedTo: String?

        public var assignedToId: Int32?

        public var assignedToIdList: String?

        public var assignedToIds: String?

        public var assignedToMaps: String?

        public var assignedToStaffId: String?

        public var attachmentIds: String?

        public var attachmentList: String?

        public var attachmented: Bool?

        public var blackListNotice: String?

        public var cfsList: [GetIssueByIdResponseBody.Data.CfsList]?

        public var changeLogList: String?

        public var commentList: String?

        public var commitDate: Int64?

        public var createdAt: Int64?

        public var description_: String?

        public var guid: String?

        public var id: Int32?

        public var idPath: String?

        public var ignoreCheck: Bool?

        public var ignoreIntegrate: Bool?

        public var issueTypeId: Int32?

        public var logicalStatus: String?

        public var moduleIds: String?

        public var moduleList: String?

        public var moduleUpdated: Bool?

        public var parentId: Int32?

        public var priority: String?

        public var priorityId: Int32?

        public var projectIds: String?

        public var recordChangeLog: Bool?

        public var regionId: Int32?

        public var relatedAKProjectGuids: String?

        public var relatedAKProjectIds: String?

        public var relatedUserIds: String?

        public var sendWangwang: Bool?

        public var seriousLevel: String?

        public var seriousLevelId: Int32?

        public var skipCollab: Bool?

        public var stamp: String?

        public var status: String?

        public var statusId: Int32?

        public var statusStage: Int32?

        public var subject: String?

        public var tagIdList: String?

        public var templateId: Int32?

        public var trackerIds: String?

        public var trackers: String?

        public var updateStatusAt: Int64?

        public var updatedAt: Int64?

        public var user: String?

        public var userId: Int32?

        public var userStaffId: String?

        public var verifier: String?

        public var verifierId: Int32?

        public var verifierStaffId: String?

        public var versionIds: String?

        public var versionList: String?

        public var watched: Bool?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.akProjectId != nil {
                map["AkProjectId"] = self.akProjectId!
            }
            if self.assignedTo != nil {
                map["AssignedTo"] = self.assignedTo!
            }
            if self.assignedToId != nil {
                map["AssignedToId"] = self.assignedToId!
            }
            if self.assignedToIdList != nil {
                map["AssignedToIdList"] = self.assignedToIdList!
            }
            if self.assignedToIds != nil {
                map["AssignedToIds"] = self.assignedToIds!
            }
            if self.assignedToMaps != nil {
                map["AssignedToMaps"] = self.assignedToMaps!
            }
            if self.assignedToStaffId != nil {
                map["AssignedToStaffId"] = self.assignedToStaffId!
            }
            if self.attachmentIds != nil {
                map["AttachmentIds"] = self.attachmentIds!
            }
            if self.attachmentList != nil {
                map["AttachmentList"] = self.attachmentList!
            }
            if self.attachmented != nil {
                map["Attachmented"] = self.attachmented!
            }
            if self.blackListNotice != nil {
                map["BlackListNotice"] = self.blackListNotice!
            }
            if self.cfsList != nil {
                var tmp : [Any] = []
                for k in self.cfsList! {
                    tmp.append(k.toMap())
                }
                map["CfsList"] = tmp
            }
            if self.changeLogList != nil {
                map["ChangeLogList"] = self.changeLogList!
            }
            if self.commentList != nil {
                map["CommentList"] = self.commentList!
            }
            if self.commitDate != nil {
                map["CommitDate"] = self.commitDate!
            }
            if self.createdAt != nil {
                map["CreatedAt"] = self.createdAt!
            }
            if self.description_ != nil {
                map["Description"] = self.description_!
            }
            if self.guid != nil {
                map["Guid"] = self.guid!
            }
            if self.id != nil {
                map["Id"] = self.id!
            }
            if self.idPath != nil {
                map["IdPath"] = self.idPath!
            }
            if self.ignoreCheck != nil {
                map["IgnoreCheck"] = self.ignoreCheck!
            }
            if self.ignoreIntegrate != nil {
                map["IgnoreIntegrate"] = self.ignoreIntegrate!
            }
            if self.issueTypeId != nil {
                map["IssueTypeId"] = self.issueTypeId!
            }
            if self.logicalStatus != nil {
                map["LogicalStatus"] = self.logicalStatus!
            }
            if self.moduleIds != nil {
                map["ModuleIds"] = self.moduleIds!
            }
            if self.moduleList != nil {
                map["ModuleList"] = self.moduleList!
            }
            if self.moduleUpdated != nil {
                map["ModuleUpdated"] = self.moduleUpdated!
            }
            if self.parentId != nil {
                map["ParentId"] = self.parentId!
            }
            if self.priority != nil {
                map["Priority"] = self.priority!
            }
            if self.priorityId != nil {
                map["PriorityId"] = self.priorityId!
            }
            if self.projectIds != nil {
                map["ProjectIds"] = self.projectIds!
            }
            if self.recordChangeLog != nil {
                map["RecordChangeLog"] = self.recordChangeLog!
            }
            if self.regionId != nil {
                map["RegionId"] = self.regionId!
            }
            if self.relatedAKProjectGuids != nil {
                map["RelatedAKProjectGuids"] = self.relatedAKProjectGuids!
            }
            if self.relatedAKProjectIds != nil {
                map["RelatedAKProjectIds"] = self.relatedAKProjectIds!
            }
            if self.relatedUserIds != nil {
                map["RelatedUserIds"] = self.relatedUserIds!
            }
            if self.sendWangwang != nil {
                map["SendWangwang"] = self.sendWangwang!
            }
            if self.seriousLevel != nil {
                map["SeriousLevel"] = self.seriousLevel!
            }
            if self.seriousLevelId != nil {
                map["SeriousLevelId"] = self.seriousLevelId!
            }
            if self.skipCollab != nil {
                map["SkipCollab"] = self.skipCollab!
            }
            if self.stamp != nil {
                map["Stamp"] = self.stamp!
            }
            if self.status != nil {
                map["Status"] = self.status!
            }
            if self.statusId != nil {
                map["StatusId"] = self.statusId!
            }
            if self.statusStage != nil {
                map["StatusStage"] = self.statusStage!
            }
            if self.subject != nil {
                map["Subject"] = self.subject!
            }
            if self.tagIdList != nil {
                map["TagIdList"] = self.tagIdList!
            }
            if self.templateId != nil {
                map["TemplateId"] = self.templateId!
            }
            if self.trackerIds != nil {
                map["TrackerIds"] = self.trackerIds!
            }
            if self.trackers != nil {
                map["Trackers"] = self.trackers!
            }
            if self.updateStatusAt != nil {
                map["UpdateStatusAt"] = self.updateStatusAt!
            }
            if self.updatedAt != nil {
                map["UpdatedAt"] = self.updatedAt!
            }
            if self.user != nil {
                map["User"] = self.user!
            }
            if self.userId != nil {
                map["UserId"] = self.userId!
            }
            if self.userStaffId != nil {
                map["UserStaffId"] = self.userStaffId!
            }
            if self.verifier != nil {
                map["Verifier"] = self.verifier!
            }
            if self.verifierId != nil {
                map["VerifierId"] = self.verifierId!
            }
            if self.verifierStaffId != nil {
                map["VerifierStaffId"] = self.verifierStaffId!
            }
            if self.versionIds != nil {
                map["VersionIds"] = self.versionIds!
            }
            if self.versionList != nil {
                map["VersionList"] = self.versionList!
            }
            if self.watched != nil {
                map["Watched"] = self.watched!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("AkProjectId") {
                self.akProjectId = dict["AkProjectId"] as! Int32
            }
            if dict.keys.contains("AssignedTo") {
                self.assignedTo = dict["AssignedTo"] as! String
            }
            if dict.keys.contains("AssignedToId") {
                self.assignedToId = dict["AssignedToId"] as! Int32
            }
            if dict.keys.contains("AssignedToIdList") {
                self.assignedToIdList = dict["AssignedToIdList"] as! String
            }
            if dict.keys.contains("AssignedToIds") {
                self.assignedToIds = dict["AssignedToIds"] as! String
            }
            if dict.keys.contains("AssignedToMaps") {
                self.assignedToMaps = dict["AssignedToMaps"] as! String
            }
            if dict.keys.contains("AssignedToStaffId") {
                self.assignedToStaffId = dict["AssignedToStaffId"] as! String
            }
            if dict.keys.contains("AttachmentIds") {
                self.attachmentIds = dict["AttachmentIds"] as! String
            }
            if dict.keys.contains("AttachmentList") {
                self.attachmentList = dict["AttachmentList"] as! String
            }
            if dict.keys.contains("Attachmented") {
                self.attachmented = dict["Attachmented"] as! Bool
            }
            if dict.keys.contains("BlackListNotice") {
                self.blackListNotice = dict["BlackListNotice"] as! String
            }
            if dict.keys.contains("CfsList") {
                self.cfsList = dict["CfsList"] as! [GetIssueByIdResponseBody.Data.CfsList]
            }
            if dict.keys.contains("ChangeLogList") {
                self.changeLogList = dict["ChangeLogList"] as! String
            }
            if dict.keys.contains("CommentList") {
                self.commentList = dict["CommentList"] as! String
            }
            if dict.keys.contains("CommitDate") {
                self.commitDate = dict["CommitDate"] as! Int64
            }
            if dict.keys.contains("CreatedAt") {
                self.createdAt = dict["CreatedAt"] as! Int64
            }
            if dict.keys.contains("Description") {
                self.description_ = dict["Description"] as! String
            }
            if dict.keys.contains("Guid") {
                self.guid = dict["Guid"] as! String
            }
            if dict.keys.contains("Id") {
                self.id = dict["Id"] as! Int32
            }
            if dict.keys.contains("IdPath") {
                self.idPath = dict["IdPath"] as! String
            }
            if dict.keys.contains("IgnoreCheck") {
                self.ignoreCheck = dict["IgnoreCheck"] as! Bool
            }
            if dict.keys.contains("IgnoreIntegrate") {
                self.ignoreIntegrate = dict["IgnoreIntegrate"] as! Bool
            }
            if dict.keys.contains("IssueTypeId") {
                self.issueTypeId = dict["IssueTypeId"] as! Int32
            }
            if dict.keys.contains("LogicalStatus") {
                self.logicalStatus = dict["LogicalStatus"] as! String
            }
            if dict.keys.contains("ModuleIds") {
                self.moduleIds = dict["ModuleIds"] as! String
            }
            if dict.keys.contains("ModuleList") {
                self.moduleList = dict["ModuleList"] as! String
            }
            if dict.keys.contains("ModuleUpdated") {
                self.moduleUpdated = dict["ModuleUpdated"] as! Bool
            }
            if dict.keys.contains("ParentId") {
                self.parentId = dict["ParentId"] as! Int32
            }
            if dict.keys.contains("Priority") {
                self.priority = dict["Priority"] as! String
            }
            if dict.keys.contains("PriorityId") {
                self.priorityId = dict["PriorityId"] as! Int32
            }
            if dict.keys.contains("ProjectIds") {
                self.projectIds = dict["ProjectIds"] as! String
            }
            if dict.keys.contains("RecordChangeLog") {
                self.recordChangeLog = dict["RecordChangeLog"] as! Bool
            }
            if dict.keys.contains("RegionId") {
                self.regionId = dict["RegionId"] as! Int32
            }
            if dict.keys.contains("RelatedAKProjectGuids") {
                self.relatedAKProjectGuids = dict["RelatedAKProjectGuids"] as! String
            }
            if dict.keys.contains("RelatedAKProjectIds") {
                self.relatedAKProjectIds = dict["RelatedAKProjectIds"] as! String
            }
            if dict.keys.contains("RelatedUserIds") {
                self.relatedUserIds = dict["RelatedUserIds"] as! String
            }
            if dict.keys.contains("SendWangwang") {
                self.sendWangwang = dict["SendWangwang"] as! Bool
            }
            if dict.keys.contains("SeriousLevel") {
                self.seriousLevel = dict["SeriousLevel"] as! String
            }
            if dict.keys.contains("SeriousLevelId") {
                self.seriousLevelId = dict["SeriousLevelId"] as! Int32
            }
            if dict.keys.contains("SkipCollab") {
                self.skipCollab = dict["SkipCollab"] as! Bool
            }
            if dict.keys.contains("Stamp") {
                self.stamp = dict["Stamp"] as! String
            }
            if dict.keys.contains("Status") {
                self.status = dict["Status"] as! String
            }
            if dict.keys.contains("StatusId") {
                self.statusId = dict["StatusId"] as! Int32
            }
            if dict.keys.contains("StatusStage") {
                self.statusStage = dict["StatusStage"] as! Int32
            }
            if dict.keys.contains("Subject") {
                self.subject = dict["Subject"] as! String
            }
            if dict.keys.contains("TagIdList") {
                self.tagIdList = dict["TagIdList"] as! String
            }
            if dict.keys.contains("TemplateId") {
                self.templateId = dict["TemplateId"] as! Int32
            }
            if dict.keys.contains("TrackerIds") {
                self.trackerIds = dict["TrackerIds"] as! String
            }
            if dict.keys.contains("Trackers") {
                self.trackers = dict["Trackers"] as! String
            }
            if dict.keys.contains("UpdateStatusAt") {
                self.updateStatusAt = dict["UpdateStatusAt"] as! Int64
            }
            if dict.keys.contains("UpdatedAt") {
                self.updatedAt = dict["UpdatedAt"] as! Int64
            }
            if dict.keys.contains("User") {
                self.user = dict["User"] as! String
            }
            if dict.keys.contains("UserId") {
                self.userId = dict["UserId"] as! Int32
            }
            if dict.keys.contains("UserStaffId") {
                self.userStaffId = dict["UserStaffId"] as! String
            }
            if dict.keys.contains("Verifier") {
                self.verifier = dict["Verifier"] as! String
            }
            if dict.keys.contains("VerifierId") {
                self.verifierId = dict["VerifierId"] as! Int32
            }
            if dict.keys.contains("VerifierStaffId") {
                self.verifierStaffId = dict["VerifierStaffId"] as! String
            }
            if dict.keys.contains("VersionIds") {
                self.versionIds = dict["VersionIds"] as! String
            }
            if dict.keys.contains("VersionList") {
                self.versionList = dict["VersionList"] as! String
            }
            if dict.keys.contains("Watched") {
                self.watched = dict["Watched"] as! Bool
            }
        }
    }
    public var code: Int32?

    public var data: GetIssueByIdResponseBody.Data?

    public var requestId: String?

    public var success: String?

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
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.data != nil {
            map["Data"] = self.data?.toMap()
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
            self.code = dict["Code"] as! Int32
        }
        if dict.keys.contains("Data") {
            var model = GetIssueByIdResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") {
            self.success = dict["Success"] as! String
        }
    }
}

public class GetIssueByIdResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetIssueByIdResponseBody?

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
            var model = GetIssueByIdResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetJoinCodeRequest : Tea.TeaModel {
    public var corpIdentifier: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.corpIdentifier != nil {
            map["CorpIdentifier"] = self.corpIdentifier!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("CorpIdentifier") {
            self.corpIdentifier = dict["CorpIdentifier"] as! String
        }
    }
}

public class GetJoinCodeResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var code: String?

        public override init() {
            super.init()
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
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Code") {
                self.code = dict["Code"] as! String
            }
        }
    }
    public var code: Int32?

    public var data: GetJoinCodeResponseBody.Data?

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
        try self.data?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.data != nil {
            map["Data"] = self.data?.toMap()
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
            self.code = dict["Code"] as! Int32
        }
        if dict.keys.contains("Data") {
            var model = GetJoinCodeResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
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

public class GetJoinCodeResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetJoinCodeResponseBody?

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
            var model = GetJoinCodeResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetProjectMembersRequest : Tea.TeaModel {
    public var corpIdentifier: String?

    public var projectId: Int32?

    public var staffId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.corpIdentifier != nil {
            map["CorpIdentifier"] = self.corpIdentifier!
        }
        if self.projectId != nil {
            map["ProjectId"] = self.projectId!
        }
        if self.staffId != nil {
            map["StaffId"] = self.staffId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("CorpIdentifier") {
            self.corpIdentifier = dict["CorpIdentifier"] as! String
        }
        if dict.keys.contains("ProjectId") {
            self.projectId = dict["ProjectId"] as! Int32
        }
        if dict.keys.contains("StaffId") {
            self.staffId = dict["StaffId"] as! String
        }
    }
}

public class GetProjectMembersResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class Users : Tea.TeaModel {
            public var avatar: String?

            public var email: String?

            public var id: Int32?

            public var nickName: String?

            public var realName: String?

            public var staffId: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.avatar != nil {
                    map["Avatar"] = self.avatar!
                }
                if self.email != nil {
                    map["Email"] = self.email!
                }
                if self.id != nil {
                    map["Id"] = self.id!
                }
                if self.nickName != nil {
                    map["NickName"] = self.nickName!
                }
                if self.realName != nil {
                    map["RealName"] = self.realName!
                }
                if self.staffId != nil {
                    map["StaffId"] = self.staffId!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("Avatar") {
                    self.avatar = dict["Avatar"] as! String
                }
                if dict.keys.contains("Email") {
                    self.email = dict["Email"] as! String
                }
                if dict.keys.contains("Id") {
                    self.id = dict["Id"] as! Int32
                }
                if dict.keys.contains("NickName") {
                    self.nickName = dict["NickName"] as! String
                }
                if dict.keys.contains("RealName") {
                    self.realName = dict["RealName"] as! String
                }
                if dict.keys.contains("StaffId") {
                    self.staffId = dict["StaffId"] as! String
                }
            }
        }
        public var id: Int32?

        public var identifier: String?

        public var name: String?

        public var users: [GetProjectMembersResponseBody.Data.Users]?

        public override init() {
            super.init()
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
            if self.identifier != nil {
                map["Identifier"] = self.identifier!
            }
            if self.name != nil {
                map["Name"] = self.name!
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
            if dict.keys.contains("Id") {
                self.id = dict["Id"] as! Int32
            }
            if dict.keys.contains("Identifier") {
                self.identifier = dict["Identifier"] as! String
            }
            if dict.keys.contains("Name") {
                self.name = dict["Name"] as! String
            }
            if dict.keys.contains("Users") {
                self.users = dict["Users"] as! [GetProjectMembersResponseBody.Data.Users]
            }
        }
    }
    public var code: Int32?

    public var data: [GetProjectMembersResponseBody.Data]?

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
            var tmp : [Any] = []
            for k in self.data! {
                tmp.append(k.toMap())
            }
            map["Data"] = tmp
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
            self.code = dict["Code"] as! Int32
        }
        if dict.keys.contains("Data") {
            self.data = dict["Data"] as! [GetProjectMembersResponseBody.Data]
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

public class GetProjectMembersResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetProjectMembersResponseBody?

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
            var model = GetProjectMembersResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetUserByAliyunPkRequest : Tea.TeaModel {
    public var pk: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.pk != nil {
            map["Pk"] = self.pk!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Pk") {
            self.pk = dict["Pk"] as! String
        }
    }
}

public class GetUserByAliyunPkResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class AliyunUser : Tea.TeaModel {
            public var accountStructure: Int32?

            public var aliyunId: String?

            public var email: String?

            public var havanaId: String?

            public var id: Int32?

            public var kp: String?

            public var nickName: String?

            public var realname: String?

            public var taobaoNick: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.accountStructure != nil {
                    map["AccountStructure"] = self.accountStructure!
                }
                if self.aliyunId != nil {
                    map["AliyunId"] = self.aliyunId!
                }
                if self.email != nil {
                    map["Email"] = self.email!
                }
                if self.havanaId != nil {
                    map["HavanaId"] = self.havanaId!
                }
                if self.id != nil {
                    map["Id"] = self.id!
                }
                if self.kp != nil {
                    map["Kp"] = self.kp!
                }
                if self.nickName != nil {
                    map["NickName"] = self.nickName!
                }
                if self.realname != nil {
                    map["Realname"] = self.realname!
                }
                if self.taobaoNick != nil {
                    map["TaobaoNick"] = self.taobaoNick!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("AccountStructure") {
                    self.accountStructure = dict["AccountStructure"] as! Int32
                }
                if dict.keys.contains("AliyunId") {
                    self.aliyunId = dict["AliyunId"] as! String
                }
                if dict.keys.contains("Email") {
                    self.email = dict["Email"] as! String
                }
                if dict.keys.contains("HavanaId") {
                    self.havanaId = dict["HavanaId"] as! String
                }
                if dict.keys.contains("Id") {
                    self.id = dict["Id"] as! Int32
                }
                if dict.keys.contains("Kp") {
                    self.kp = dict["Kp"] as! String
                }
                if dict.keys.contains("NickName") {
                    self.nickName = dict["NickName"] as! String
                }
                if dict.keys.contains("Realname") {
                    self.realname = dict["Realname"] as! String
                }
                if dict.keys.contains("TaobaoNick") {
                    self.taobaoNick = dict["TaobaoNick"] as! String
                }
            }
        }
        public class DingtalkUser : Tea.TeaModel {
            public var codeUserName: String?

            public var dingId: String?

            public var dingtalkUserId: Int32?

            public var id: Int32?

            public var nick: String?

            public var unionId: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.codeUserName != nil {
                    map["CodeUserName"] = self.codeUserName!
                }
                if self.dingId != nil {
                    map["DingId"] = self.dingId!
                }
                if self.dingtalkUserId != nil {
                    map["DingtalkUserId"] = self.dingtalkUserId!
                }
                if self.id != nil {
                    map["Id"] = self.id!
                }
                if self.nick != nil {
                    map["Nick"] = self.nick!
                }
                if self.unionId != nil {
                    map["UnionId"] = self.unionId!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("CodeUserName") {
                    self.codeUserName = dict["CodeUserName"] as! String
                }
                if dict.keys.contains("DingId") {
                    self.dingId = dict["DingId"] as! String
                }
                if dict.keys.contains("DingtalkUserId") {
                    self.dingtalkUserId = dict["DingtalkUserId"] as! Int32
                }
                if dict.keys.contains("Id") {
                    self.id = dict["Id"] as! Int32
                }
                if dict.keys.contains("Nick") {
                    self.nick = dict["Nick"] as! String
                }
                if dict.keys.contains("UnionId") {
                    self.unionId = dict["UnionId"] as! String
                }
            }
        }
        public class UserProfileDTO : Tea.TeaModel {
            public var avatar: String?

            public var createdAt: Int64?

            public var dataSource: String?

            public var email: String?

            public var englishName: String?

            public var mobile: String?

            public var name: String?

            public var nickName: String?

            public var userId: Int32?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.avatar != nil {
                    map["Avatar"] = self.avatar!
                }
                if self.createdAt != nil {
                    map["CreatedAt"] = self.createdAt!
                }
                if self.dataSource != nil {
                    map["DataSource"] = self.dataSource!
                }
                if self.email != nil {
                    map["Email"] = self.email!
                }
                if self.englishName != nil {
                    map["EnglishName"] = self.englishName!
                }
                if self.mobile != nil {
                    map["Mobile"] = self.mobile!
                }
                if self.name != nil {
                    map["Name"] = self.name!
                }
                if self.nickName != nil {
                    map["NickName"] = self.nickName!
                }
                if self.userId != nil {
                    map["UserId"] = self.userId!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("Avatar") {
                    self.avatar = dict["Avatar"] as! String
                }
                if dict.keys.contains("CreatedAt") {
                    self.createdAt = dict["CreatedAt"] as! Int64
                }
                if dict.keys.contains("DataSource") {
                    self.dataSource = dict["DataSource"] as! String
                }
                if dict.keys.contains("Email") {
                    self.email = dict["Email"] as! String
                }
                if dict.keys.contains("EnglishName") {
                    self.englishName = dict["EnglishName"] as! String
                }
                if dict.keys.contains("Mobile") {
                    self.mobile = dict["Mobile"] as! String
                }
                if dict.keys.contains("Name") {
                    self.name = dict["Name"] as! String
                }
                if dict.keys.contains("NickName") {
                    self.nickName = dict["NickName"] as! String
                }
                if dict.keys.contains("UserId") {
                    self.userId = dict["UserId"] as! Int32
                }
            }
        }
        public var aliyunUser: GetUserByAliyunPkResponseBody.Data.AliyunUser?

        public var dingtalkUser: GetUserByAliyunPkResponseBody.Data.DingtalkUser?

        public var guid: String?

        public var id: Int32?

        public var isValid: Bool?

        public var mainAccountType: String?

        public var nickName: String?

        public var userProfileDTO: GetUserByAliyunPkResponseBody.Data.UserProfileDTO?

        public var uuid: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.aliyunUser?.validate()
            try self.dingtalkUser?.validate()
            try self.userProfileDTO?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.aliyunUser != nil {
                map["AliyunUser"] = self.aliyunUser?.toMap()
            }
            if self.dingtalkUser != nil {
                map["DingtalkUser"] = self.dingtalkUser?.toMap()
            }
            if self.guid != nil {
                map["Guid"] = self.guid!
            }
            if self.id != nil {
                map["Id"] = self.id!
            }
            if self.isValid != nil {
                map["IsValid"] = self.isValid!
            }
            if self.mainAccountType != nil {
                map["MainAccountType"] = self.mainAccountType!
            }
            if self.nickName != nil {
                map["NickName"] = self.nickName!
            }
            if self.userProfileDTO != nil {
                map["UserProfileDTO"] = self.userProfileDTO?.toMap()
            }
            if self.uuid != nil {
                map["Uuid"] = self.uuid!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("AliyunUser") {
                var model = GetUserByAliyunPkResponseBody.Data.AliyunUser()
                model.fromMap(dict["AliyunUser"] as! [String: Any])
                self.aliyunUser = model
            }
            if dict.keys.contains("DingtalkUser") {
                var model = GetUserByAliyunPkResponseBody.Data.DingtalkUser()
                model.fromMap(dict["DingtalkUser"] as! [String: Any])
                self.dingtalkUser = model
            }
            if dict.keys.contains("Guid") {
                self.guid = dict["Guid"] as! String
            }
            if dict.keys.contains("Id") {
                self.id = dict["Id"] as! Int32
            }
            if dict.keys.contains("IsValid") {
                self.isValid = dict["IsValid"] as! Bool
            }
            if dict.keys.contains("MainAccountType") {
                self.mainAccountType = dict["MainAccountType"] as! String
            }
            if dict.keys.contains("NickName") {
                self.nickName = dict["NickName"] as! String
            }
            if dict.keys.contains("UserProfileDTO") {
                var model = GetUserByAliyunPkResponseBody.Data.UserProfileDTO()
                model.fromMap(dict["UserProfileDTO"] as! [String: Any])
                self.userProfileDTO = model
            }
            if dict.keys.contains("Uuid") {
                self.uuid = dict["Uuid"] as! String
            }
        }
    }
    public var code: Int32?

    public var data: GetUserByAliyunPkResponseBody.Data?

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
        try self.data?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.data != nil {
            map["Data"] = self.data?.toMap()
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
            self.code = dict["Code"] as! Int32
        }
        if dict.keys.contains("Data") {
            var model = GetUserByAliyunPkResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") {
            self.success = dict["Success"] as! Bool
        }
    }
}

public class GetUserByAliyunPkResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetUserByAliyunPkResponseBody?

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
            var model = GetUserByAliyunPkResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetWorkitemByIdRequest : Tea.TeaModel {
    public var corpIdentifier: String?

    public var id: Int32?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.corpIdentifier != nil {
            map["CorpIdentifier"] = self.corpIdentifier!
        }
        if self.id != nil {
            map["Id"] = self.id!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("CorpIdentifier") {
            self.corpIdentifier = dict["CorpIdentifier"] as! String
        }
        if dict.keys.contains("Id") {
            self.id = dict["Id"] as! Int32
        }
    }
}

public class GetWorkitemByIdResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class CfsList : Tea.TeaModel {
            public var id: String?

            public var name: String?

            public var type: String?

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
                if self.id != nil {
                    map["Id"] = self.id!
                }
                if self.name != nil {
                    map["Name"] = self.name!
                }
                if self.type != nil {
                    map["Type"] = self.type!
                }
                if self.value != nil {
                    map["Value"] = self.value!
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
                if dict.keys.contains("Type") {
                    self.type = dict["Type"] as! String
                }
                if dict.keys.contains("Value") {
                    self.value = dict["Value"] as! String
                }
            }
        }
        public var akProjectId: Int32?

        public var assignedTo: String?

        public var assignedToId: Int32?

        public var assignedToIdList: String?

        public var assignedToIds: String?

        public var assignedToMaps: String?

        public var assignedToStaffId: String?

        public var attachmentIds: String?

        public var attachmentList: String?

        public var attachmented: Bool?

        public var blackListNotice: String?

        public var cfsList: [GetWorkitemByIdResponseBody.Data.CfsList]?

        public var changeLogList: String?

        public var commentList: String?

        public var commitDate: Int64?

        public var createdAt: Int64?

        public var description_: String?

        public var guid: String?

        public var id: Int32?

        public var idPath: String?

        public var ignoreCheck: Bool?

        public var ignoreIntegrate: Bool?

        public var issueTypeId: Int32?

        public var logicalStatus: String?

        public var moduleIds: String?

        public var moduleList: String?

        public var moduleUpdated: Bool?

        public var parentId: Int32?

        public var priority: String?

        public var priorityId: Int32?

        public var projectIds: String?

        public var recordChangeLog: Bool?

        public var regionId: Int32?

        public var relatedAKProjectGuids: String?

        public var relatedAKProjectIds: String?

        public var relatedUserIds: String?

        public var sendWangwang: Bool?

        public var seriousLevel: String?

        public var seriousLevelId: Int32?

        public var skipCollab: Bool?

        public var stamp: String?

        public var status: String?

        public var statusId: Int32?

        public var statusStage: Int32?

        public var subject: String?

        public var tagIdList: String?

        public var templateId: Int32?

        public var trackerIds: String?

        public var trackers: String?

        public var updateStatusAt: Int64?

        public var updatedAt: Int64?

        public var user: String?

        public var userId: Int32?

        public var userStaffId: String?

        public var verifier: String?

        public var verifierId: Int32?

        public var verifierStaffId: String?

        public var versionIds: String?

        public var versionList: String?

        public var watched: Bool?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.akProjectId != nil {
                map["AkProjectId"] = self.akProjectId!
            }
            if self.assignedTo != nil {
                map["AssignedTo"] = self.assignedTo!
            }
            if self.assignedToId != nil {
                map["AssignedToId"] = self.assignedToId!
            }
            if self.assignedToIdList != nil {
                map["AssignedToIdList"] = self.assignedToIdList!
            }
            if self.assignedToIds != nil {
                map["AssignedToIds"] = self.assignedToIds!
            }
            if self.assignedToMaps != nil {
                map["AssignedToMaps"] = self.assignedToMaps!
            }
            if self.assignedToStaffId != nil {
                map["AssignedToStaffId"] = self.assignedToStaffId!
            }
            if self.attachmentIds != nil {
                map["AttachmentIds"] = self.attachmentIds!
            }
            if self.attachmentList != nil {
                map["AttachmentList"] = self.attachmentList!
            }
            if self.attachmented != nil {
                map["Attachmented"] = self.attachmented!
            }
            if self.blackListNotice != nil {
                map["BlackListNotice"] = self.blackListNotice!
            }
            if self.cfsList != nil {
                var tmp : [Any] = []
                for k in self.cfsList! {
                    tmp.append(k.toMap())
                }
                map["CfsList"] = tmp
            }
            if self.changeLogList != nil {
                map["ChangeLogList"] = self.changeLogList!
            }
            if self.commentList != nil {
                map["CommentList"] = self.commentList!
            }
            if self.commitDate != nil {
                map["CommitDate"] = self.commitDate!
            }
            if self.createdAt != nil {
                map["CreatedAt"] = self.createdAt!
            }
            if self.description_ != nil {
                map["Description"] = self.description_!
            }
            if self.guid != nil {
                map["Guid"] = self.guid!
            }
            if self.id != nil {
                map["Id"] = self.id!
            }
            if self.idPath != nil {
                map["IdPath"] = self.idPath!
            }
            if self.ignoreCheck != nil {
                map["IgnoreCheck"] = self.ignoreCheck!
            }
            if self.ignoreIntegrate != nil {
                map["IgnoreIntegrate"] = self.ignoreIntegrate!
            }
            if self.issueTypeId != nil {
                map["IssueTypeId"] = self.issueTypeId!
            }
            if self.logicalStatus != nil {
                map["LogicalStatus"] = self.logicalStatus!
            }
            if self.moduleIds != nil {
                map["ModuleIds"] = self.moduleIds!
            }
            if self.moduleList != nil {
                map["ModuleList"] = self.moduleList!
            }
            if self.moduleUpdated != nil {
                map["ModuleUpdated"] = self.moduleUpdated!
            }
            if self.parentId != nil {
                map["ParentId"] = self.parentId!
            }
            if self.priority != nil {
                map["Priority"] = self.priority!
            }
            if self.priorityId != nil {
                map["PriorityId"] = self.priorityId!
            }
            if self.projectIds != nil {
                map["ProjectIds"] = self.projectIds!
            }
            if self.recordChangeLog != nil {
                map["RecordChangeLog"] = self.recordChangeLog!
            }
            if self.regionId != nil {
                map["RegionId"] = self.regionId!
            }
            if self.relatedAKProjectGuids != nil {
                map["RelatedAKProjectGuids"] = self.relatedAKProjectGuids!
            }
            if self.relatedAKProjectIds != nil {
                map["RelatedAKProjectIds"] = self.relatedAKProjectIds!
            }
            if self.relatedUserIds != nil {
                map["RelatedUserIds"] = self.relatedUserIds!
            }
            if self.sendWangwang != nil {
                map["SendWangwang"] = self.sendWangwang!
            }
            if self.seriousLevel != nil {
                map["SeriousLevel"] = self.seriousLevel!
            }
            if self.seriousLevelId != nil {
                map["SeriousLevelId"] = self.seriousLevelId!
            }
            if self.skipCollab != nil {
                map["SkipCollab"] = self.skipCollab!
            }
            if self.stamp != nil {
                map["Stamp"] = self.stamp!
            }
            if self.status != nil {
                map["Status"] = self.status!
            }
            if self.statusId != nil {
                map["StatusId"] = self.statusId!
            }
            if self.statusStage != nil {
                map["StatusStage"] = self.statusStage!
            }
            if self.subject != nil {
                map["Subject"] = self.subject!
            }
            if self.tagIdList != nil {
                map["TagIdList"] = self.tagIdList!
            }
            if self.templateId != nil {
                map["TemplateId"] = self.templateId!
            }
            if self.trackerIds != nil {
                map["TrackerIds"] = self.trackerIds!
            }
            if self.trackers != nil {
                map["Trackers"] = self.trackers!
            }
            if self.updateStatusAt != nil {
                map["UpdateStatusAt"] = self.updateStatusAt!
            }
            if self.updatedAt != nil {
                map["UpdatedAt"] = self.updatedAt!
            }
            if self.user != nil {
                map["User"] = self.user!
            }
            if self.userId != nil {
                map["UserId"] = self.userId!
            }
            if self.userStaffId != nil {
                map["UserStaffId"] = self.userStaffId!
            }
            if self.verifier != nil {
                map["Verifier"] = self.verifier!
            }
            if self.verifierId != nil {
                map["VerifierId"] = self.verifierId!
            }
            if self.verifierStaffId != nil {
                map["VerifierStaffId"] = self.verifierStaffId!
            }
            if self.versionIds != nil {
                map["VersionIds"] = self.versionIds!
            }
            if self.versionList != nil {
                map["VersionList"] = self.versionList!
            }
            if self.watched != nil {
                map["Watched"] = self.watched!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("AkProjectId") {
                self.akProjectId = dict["AkProjectId"] as! Int32
            }
            if dict.keys.contains("AssignedTo") {
                self.assignedTo = dict["AssignedTo"] as! String
            }
            if dict.keys.contains("AssignedToId") {
                self.assignedToId = dict["AssignedToId"] as! Int32
            }
            if dict.keys.contains("AssignedToIdList") {
                self.assignedToIdList = dict["AssignedToIdList"] as! String
            }
            if dict.keys.contains("AssignedToIds") {
                self.assignedToIds = dict["AssignedToIds"] as! String
            }
            if dict.keys.contains("AssignedToMaps") {
                self.assignedToMaps = dict["AssignedToMaps"] as! String
            }
            if dict.keys.contains("AssignedToStaffId") {
                self.assignedToStaffId = dict["AssignedToStaffId"] as! String
            }
            if dict.keys.contains("AttachmentIds") {
                self.attachmentIds = dict["AttachmentIds"] as! String
            }
            if dict.keys.contains("AttachmentList") {
                self.attachmentList = dict["AttachmentList"] as! String
            }
            if dict.keys.contains("Attachmented") {
                self.attachmented = dict["Attachmented"] as! Bool
            }
            if dict.keys.contains("BlackListNotice") {
                self.blackListNotice = dict["BlackListNotice"] as! String
            }
            if dict.keys.contains("CfsList") {
                self.cfsList = dict["CfsList"] as! [GetWorkitemByIdResponseBody.Data.CfsList]
            }
            if dict.keys.contains("ChangeLogList") {
                self.changeLogList = dict["ChangeLogList"] as! String
            }
            if dict.keys.contains("CommentList") {
                self.commentList = dict["CommentList"] as! String
            }
            if dict.keys.contains("CommitDate") {
                self.commitDate = dict["CommitDate"] as! Int64
            }
            if dict.keys.contains("CreatedAt") {
                self.createdAt = dict["CreatedAt"] as! Int64
            }
            if dict.keys.contains("Description") {
                self.description_ = dict["Description"] as! String
            }
            if dict.keys.contains("Guid") {
                self.guid = dict["Guid"] as! String
            }
            if dict.keys.contains("Id") {
                self.id = dict["Id"] as! Int32
            }
            if dict.keys.contains("IdPath") {
                self.idPath = dict["IdPath"] as! String
            }
            if dict.keys.contains("IgnoreCheck") {
                self.ignoreCheck = dict["IgnoreCheck"] as! Bool
            }
            if dict.keys.contains("IgnoreIntegrate") {
                self.ignoreIntegrate = dict["IgnoreIntegrate"] as! Bool
            }
            if dict.keys.contains("IssueTypeId") {
                self.issueTypeId = dict["IssueTypeId"] as! Int32
            }
            if dict.keys.contains("LogicalStatus") {
                self.logicalStatus = dict["LogicalStatus"] as! String
            }
            if dict.keys.contains("ModuleIds") {
                self.moduleIds = dict["ModuleIds"] as! String
            }
            if dict.keys.contains("ModuleList") {
                self.moduleList = dict["ModuleList"] as! String
            }
            if dict.keys.contains("ModuleUpdated") {
                self.moduleUpdated = dict["ModuleUpdated"] as! Bool
            }
            if dict.keys.contains("ParentId") {
                self.parentId = dict["ParentId"] as! Int32
            }
            if dict.keys.contains("Priority") {
                self.priority = dict["Priority"] as! String
            }
            if dict.keys.contains("PriorityId") {
                self.priorityId = dict["PriorityId"] as! Int32
            }
            if dict.keys.contains("ProjectIds") {
                self.projectIds = dict["ProjectIds"] as! String
            }
            if dict.keys.contains("RecordChangeLog") {
                self.recordChangeLog = dict["RecordChangeLog"] as! Bool
            }
            if dict.keys.contains("RegionId") {
                self.regionId = dict["RegionId"] as! Int32
            }
            if dict.keys.contains("RelatedAKProjectGuids") {
                self.relatedAKProjectGuids = dict["RelatedAKProjectGuids"] as! String
            }
            if dict.keys.contains("RelatedAKProjectIds") {
                self.relatedAKProjectIds = dict["RelatedAKProjectIds"] as! String
            }
            if dict.keys.contains("RelatedUserIds") {
                self.relatedUserIds = dict["RelatedUserIds"] as! String
            }
            if dict.keys.contains("SendWangwang") {
                self.sendWangwang = dict["SendWangwang"] as! Bool
            }
            if dict.keys.contains("SeriousLevel") {
                self.seriousLevel = dict["SeriousLevel"] as! String
            }
            if dict.keys.contains("SeriousLevelId") {
                self.seriousLevelId = dict["SeriousLevelId"] as! Int32
            }
            if dict.keys.contains("SkipCollab") {
                self.skipCollab = dict["SkipCollab"] as! Bool
            }
            if dict.keys.contains("Stamp") {
                self.stamp = dict["Stamp"] as! String
            }
            if dict.keys.contains("Status") {
                self.status = dict["Status"] as! String
            }
            if dict.keys.contains("StatusId") {
                self.statusId = dict["StatusId"] as! Int32
            }
            if dict.keys.contains("StatusStage") {
                self.statusStage = dict["StatusStage"] as! Int32
            }
            if dict.keys.contains("Subject") {
                self.subject = dict["Subject"] as! String
            }
            if dict.keys.contains("TagIdList") {
                self.tagIdList = dict["TagIdList"] as! String
            }
            if dict.keys.contains("TemplateId") {
                self.templateId = dict["TemplateId"] as! Int32
            }
            if dict.keys.contains("TrackerIds") {
                self.trackerIds = dict["TrackerIds"] as! String
            }
            if dict.keys.contains("Trackers") {
                self.trackers = dict["Trackers"] as! String
            }
            if dict.keys.contains("UpdateStatusAt") {
                self.updateStatusAt = dict["UpdateStatusAt"] as! Int64
            }
            if dict.keys.contains("UpdatedAt") {
                self.updatedAt = dict["UpdatedAt"] as! Int64
            }
            if dict.keys.contains("User") {
                self.user = dict["User"] as! String
            }
            if dict.keys.contains("UserId") {
                self.userId = dict["UserId"] as! Int32
            }
            if dict.keys.contains("UserStaffId") {
                self.userStaffId = dict["UserStaffId"] as! String
            }
            if dict.keys.contains("Verifier") {
                self.verifier = dict["Verifier"] as! String
            }
            if dict.keys.contains("VerifierId") {
                self.verifierId = dict["VerifierId"] as! Int32
            }
            if dict.keys.contains("VerifierStaffId") {
                self.verifierStaffId = dict["VerifierStaffId"] as! String
            }
            if dict.keys.contains("VersionIds") {
                self.versionIds = dict["VersionIds"] as! String
            }
            if dict.keys.contains("VersionList") {
                self.versionList = dict["VersionList"] as! String
            }
            if dict.keys.contains("Watched") {
                self.watched = dict["Watched"] as! Bool
            }
        }
    }
    public var code: Int32?

    public var data: GetWorkitemByIdResponseBody.Data?

    public var requestId: String?

    public var success: String?

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
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.data != nil {
            map["Data"] = self.data?.toMap()
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
            self.code = dict["Code"] as! Int32
        }
        if dict.keys.contains("Data") {
            var model = GetWorkitemByIdResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") {
            self.success = dict["Success"] as! String
        }
    }
}

public class GetWorkitemByIdResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetWorkitemByIdResponseBody?

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
            var model = GetWorkitemByIdResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class JoinCompanyRequest : Tea.TeaModel {
    public var code: String?

    public override init() {
        super.init()
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
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! String
        }
    }
}

public class JoinCompanyResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
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
    public var code: Int32?

    public var data: JoinCompanyResponseBody.Data?

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
        try self.data?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.data != nil {
            map["Data"] = self.data?.toMap()
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
            self.code = dict["Code"] as! Int32
        }
        if dict.keys.contains("Data") {
            var model = JoinCompanyResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
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

public class JoinCompanyResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: JoinCompanyResponseBody?

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
            var model = JoinCompanyResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class SearchProjectsByRegionRequest : Tea.TeaModel {
    public var corpIdentifier: String?

    public var pageSize: Int32?

    public var region: String?

    public var status: String?

    public var toPage: Int32?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.corpIdentifier != nil {
            map["CorpIdentifier"] = self.corpIdentifier!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.region != nil {
            map["Region"] = self.region!
        }
        if self.status != nil {
            map["Status"] = self.status!
        }
        if self.toPage != nil {
            map["ToPage"] = self.toPage!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("CorpIdentifier") {
            self.corpIdentifier = dict["CorpIdentifier"] as! String
        }
        if dict.keys.contains("PageSize") {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("Region") {
            self.region = dict["Region"] as! String
        }
        if dict.keys.contains("Status") {
            self.status = dict["Status"] as! String
        }
        if dict.keys.contains("ToPage") {
            self.toPage = dict["ToPage"] as! Int32
        }
    }
}

public class SearchProjectsByRegionResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var aoneId: Int32?

        public var aoneType: String?

        public var customFieldMap: [String]?

        public var description_: String?

        public var fullName: String?

        public var icons: [String]?

        public var id: Int32?

        public var idPath: String?

        public var mode: String?

        public var name: String?

        public var parentId: Int32?

        public var stamp: String?

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
            if self.aoneId != nil {
                map["AoneId"] = self.aoneId!
            }
            if self.aoneType != nil {
                map["AoneType"] = self.aoneType!
            }
            if self.customFieldMap != nil {
                map["CustomFieldMap"] = self.customFieldMap!
            }
            if self.description_ != nil {
                map["Description"] = self.description_!
            }
            if self.fullName != nil {
                map["FullName"] = self.fullName!
            }
            if self.icons != nil {
                map["Icons"] = self.icons!
            }
            if self.id != nil {
                map["Id"] = self.id!
            }
            if self.idPath != nil {
                map["IdPath"] = self.idPath!
            }
            if self.mode != nil {
                map["Mode"] = self.mode!
            }
            if self.name != nil {
                map["Name"] = self.name!
            }
            if self.parentId != nil {
                map["ParentId"] = self.parentId!
            }
            if self.stamp != nil {
                map["Stamp"] = self.stamp!
            }
            if self.status != nil {
                map["Status"] = self.status!
            }
            if self.type != nil {
                map["Type"] = self.type!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("AoneId") {
                self.aoneId = dict["AoneId"] as! Int32
            }
            if dict.keys.contains("AoneType") {
                self.aoneType = dict["AoneType"] as! String
            }
            if dict.keys.contains("CustomFieldMap") {
                self.customFieldMap = dict["CustomFieldMap"] as! [String]
            }
            if dict.keys.contains("Description") {
                self.description_ = dict["Description"] as! String
            }
            if dict.keys.contains("FullName") {
                self.fullName = dict["FullName"] as! String
            }
            if dict.keys.contains("Icons") {
                self.icons = dict["Icons"] as! [String]
            }
            if dict.keys.contains("Id") {
                self.id = dict["Id"] as! Int32
            }
            if dict.keys.contains("IdPath") {
                self.idPath = dict["IdPath"] as! String
            }
            if dict.keys.contains("Mode") {
                self.mode = dict["Mode"] as! String
            }
            if dict.keys.contains("Name") {
                self.name = dict["Name"] as! String
            }
            if dict.keys.contains("ParentId") {
                self.parentId = dict["ParentId"] as! Int32
            }
            if dict.keys.contains("Stamp") {
                self.stamp = dict["Stamp"] as! String
            }
            if dict.keys.contains("Status") {
                self.status = dict["Status"] as! String
            }
            if dict.keys.contains("Type") {
                self.type = dict["Type"] as! String
            }
        }
    }
    public var code: Int32?

    public var data: [SearchProjectsByRegionResponseBody.Data]?

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
            var tmp : [Any] = []
            for k in self.data! {
                tmp.append(k.toMap())
            }
            map["Data"] = tmp
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
            self.code = dict["Code"] as! Int32
        }
        if dict.keys.contains("Data") {
            self.data = dict["Data"] as! [SearchProjectsByRegionResponseBody.Data]
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

public class SearchProjectsByRegionResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: SearchProjectsByRegionResponseBody?

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
            var model = SearchProjectsByRegionResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class SearchTestCaseRequest : Tea.TeaModel {
    public var akProjectId: String?

    public var caseTag: String?

    public var corpIdentifier: String?

    public var createDateEnd: String?

    public var createDateStart: String?

    public var pageNum: String?

    public var pageSize: Int32?

    public var updateDateEnd: String?

    public var updateDateStart: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.akProjectId != nil {
            map["AkProjectId"] = self.akProjectId!
        }
        if self.caseTag != nil {
            map["CaseTag"] = self.caseTag!
        }
        if self.corpIdentifier != nil {
            map["CorpIdentifier"] = self.corpIdentifier!
        }
        if self.createDateEnd != nil {
            map["CreateDateEnd"] = self.createDateEnd!
        }
        if self.createDateStart != nil {
            map["CreateDateStart"] = self.createDateStart!
        }
        if self.pageNum != nil {
            map["PageNum"] = self.pageNum!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.updateDateEnd != nil {
            map["UpdateDateEnd"] = self.updateDateEnd!
        }
        if self.updateDateStart != nil {
            map["UpdateDateStart"] = self.updateDateStart!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AkProjectId") {
            self.akProjectId = dict["AkProjectId"] as! String
        }
        if dict.keys.contains("CaseTag") {
            self.caseTag = dict["CaseTag"] as! String
        }
        if dict.keys.contains("CorpIdentifier") {
            self.corpIdentifier = dict["CorpIdentifier"] as! String
        }
        if dict.keys.contains("CreateDateEnd") {
            self.createDateEnd = dict["CreateDateEnd"] as! String
        }
        if dict.keys.contains("CreateDateStart") {
            self.createDateStart = dict["CreateDateStart"] as! String
        }
        if dict.keys.contains("PageNum") {
            self.pageNum = dict["PageNum"] as! String
        }
        if dict.keys.contains("PageSize") {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("UpdateDateEnd") {
            self.updateDateEnd = dict["UpdateDateEnd"] as! String
        }
        if dict.keys.contains("UpdateDateStart") {
            self.updateDateStart = dict["UpdateDateStart"] as! String
        }
    }
}

public class SearchTestCaseResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var cases: String?

        public var pageNum: String?

        public var pageSize: String?

        public var pageTotal: String?

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
            if self.cases != nil {
                map["Cases"] = self.cases!
            }
            if self.pageNum != nil {
                map["PageNum"] = self.pageNum!
            }
            if self.pageSize != nil {
                map["PageSize"] = self.pageSize!
            }
            if self.pageTotal != nil {
                map["PageTotal"] = self.pageTotal!
            }
            if self.totalCount != nil {
                map["TotalCount"] = self.totalCount!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Cases") {
                self.cases = dict["Cases"] as! String
            }
            if dict.keys.contains("PageNum") {
                self.pageNum = dict["PageNum"] as! String
            }
            if dict.keys.contains("PageSize") {
                self.pageSize = dict["PageSize"] as! String
            }
            if dict.keys.contains("PageTotal") {
                self.pageTotal = dict["PageTotal"] as! String
            }
            if dict.keys.contains("TotalCount") {
                self.totalCount = dict["TotalCount"] as! String
            }
        }
    }
    public var code: Int32?

    public var data: SearchTestCaseResponseBody.Data?

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
        try self.data?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.data != nil {
            map["Data"] = self.data?.toMap()
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
            self.code = dict["Code"] as! Int32
        }
        if dict.keys.contains("Data") {
            var model = SearchTestCaseResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
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

public class SearchTestCaseResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: SearchTestCaseResponseBody?

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
            var model = SearchTestCaseResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class SearchWorkitemRequest : Tea.TeaModel {
    public var AKProjectId: Int32?

    public var corpIdentifier: String?

    public var createdAtEnd: String?

    public var createdAtStart: String?

    public var pageSize: Int32?

    public var sprintId: Int32?

    public var stamp: String?

    public var toPage: Int32?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.AKProjectId != nil {
            map["AKProjectId"] = self.AKProjectId!
        }
        if self.corpIdentifier != nil {
            map["CorpIdentifier"] = self.corpIdentifier!
        }
        if self.createdAtEnd != nil {
            map["CreatedAtEnd"] = self.createdAtEnd!
        }
        if self.createdAtStart != nil {
            map["CreatedAtStart"] = self.createdAtStart!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.sprintId != nil {
            map["SprintId"] = self.sprintId!
        }
        if self.stamp != nil {
            map["Stamp"] = self.stamp!
        }
        if self.toPage != nil {
            map["ToPage"] = self.toPage!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AKProjectId") {
            self.AKProjectId = dict["AKProjectId"] as! Int32
        }
        if dict.keys.contains("CorpIdentifier") {
            self.corpIdentifier = dict["CorpIdentifier"] as! String
        }
        if dict.keys.contains("CreatedAtEnd") {
            self.createdAtEnd = dict["CreatedAtEnd"] as! String
        }
        if dict.keys.contains("CreatedAtStart") {
            self.createdAtStart = dict["CreatedAtStart"] as! String
        }
        if dict.keys.contains("PageSize") {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("SprintId") {
            self.sprintId = dict["SprintId"] as! Int32
        }
        if dict.keys.contains("Stamp") {
            self.stamp = dict["Stamp"] as! String
        }
        if dict.keys.contains("ToPage") {
            self.toPage = dict["ToPage"] as! Int32
        }
    }
}

public class SearchWorkitemResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var akPaths: String?

        public var akProjectId: Int32?

        public var akVersionIds: String?

        public var assignedTo: String?

        public var assignedToId: Int32?

        public var assignedToIdList: String?

        public var assignedToIds: String?

        public var assignedToStaffId: String?

        public var attachmentIds: String?

        public var attachmentList: String?

        public var attachmented: Bool?

        public var blackListNotice: String?

        public var changeLogList: String?

        public var closedDuration: Int32?

        public var commentList: String?

        public var commitDate: Int64?

        public var createdAt: Int64?

        public var devDuration: Int32?

        public var fixedDuration: Int32?

        public var fixedUserId: Int32?

        public var id: Int32?

        public var idPath: String?

        public var ignoreCheck: Bool?

        public var ignoreIntegrate: Bool?

        public var issueRelations: String?

        public var issueTypeId: Int32?

        public var linePath: String?

        public var logicalStatus: String?

        public var moduleIds: String?

        public var moduleList: String?

        public var moduleUpdated: Bool?

        public var parentId: Int32?

        public var priority: String?

        public var priorityId: Int32?

        public var projectId: Int32?

        public var projectIds: String?

        public var recordChangeLog: Bool?

        public var region: String?

        public var relatedAKProjectGuids: String?

        public var relatedAKProjectIds: String?

        public var relatedUserIds: String?

        public var respondDuration: Int32?

        public var scope: Int32?

        public var scopeUserIds: String?

        public var sendWangwang: Bool?

        public var seriousLevel: String?

        public var seriousLevelId: Int32?

        public var skipCollab: Bool?

        public var solution: Int32?

        public var source: String?

        public var sourceId: Int32?

        public var sprintId: Int32?

        public var stamp: String?

        public var status: String?

        public var statusId: Int32?

        public var statusStage: Int32?

        public var subject: String?

        public var tagIdList: String?

        public var templateId: Int32?

        public var testsuiteId: Int32?

        public var trackerIds: String?

        public var trackers: String?

        public var updatedAt: Int64?

        public var user: String?

        public var userId: Int32?

        public var userStaffId: String?

        public var verifier: String?

        public var verifierId: Int32?

        public var verifierStaffId: String?

        public var versionId: Int32?

        public var versionIds: String?

        public var versionList: String?

        public var watched: Bool?

        public var watcherIdList: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.akPaths != nil {
                map["AkPaths"] = self.akPaths!
            }
            if self.akProjectId != nil {
                map["AkProjectId"] = self.akProjectId!
            }
            if self.akVersionIds != nil {
                map["AkVersionIds"] = self.akVersionIds!
            }
            if self.assignedTo != nil {
                map["AssignedTo"] = self.assignedTo!
            }
            if self.assignedToId != nil {
                map["AssignedToId"] = self.assignedToId!
            }
            if self.assignedToIdList != nil {
                map["AssignedToIdList"] = self.assignedToIdList!
            }
            if self.assignedToIds != nil {
                map["AssignedToIds"] = self.assignedToIds!
            }
            if self.assignedToStaffId != nil {
                map["AssignedToStaffId"] = self.assignedToStaffId!
            }
            if self.attachmentIds != nil {
                map["AttachmentIds"] = self.attachmentIds!
            }
            if self.attachmentList != nil {
                map["AttachmentList"] = self.attachmentList!
            }
            if self.attachmented != nil {
                map["Attachmented"] = self.attachmented!
            }
            if self.blackListNotice != nil {
                map["BlackListNotice"] = self.blackListNotice!
            }
            if self.changeLogList != nil {
                map["ChangeLogList"] = self.changeLogList!
            }
            if self.closedDuration != nil {
                map["ClosedDuration"] = self.closedDuration!
            }
            if self.commentList != nil {
                map["CommentList"] = self.commentList!
            }
            if self.commitDate != nil {
                map["CommitDate"] = self.commitDate!
            }
            if self.createdAt != nil {
                map["CreatedAt"] = self.createdAt!
            }
            if self.devDuration != nil {
                map["DevDuration"] = self.devDuration!
            }
            if self.fixedDuration != nil {
                map["FixedDuration"] = self.fixedDuration!
            }
            if self.fixedUserId != nil {
                map["FixedUserId"] = self.fixedUserId!
            }
            if self.id != nil {
                map["Id"] = self.id!
            }
            if self.idPath != nil {
                map["IdPath"] = self.idPath!
            }
            if self.ignoreCheck != nil {
                map["IgnoreCheck"] = self.ignoreCheck!
            }
            if self.ignoreIntegrate != nil {
                map["IgnoreIntegrate"] = self.ignoreIntegrate!
            }
            if self.issueRelations != nil {
                map["IssueRelations"] = self.issueRelations!
            }
            if self.issueTypeId != nil {
                map["IssueTypeId"] = self.issueTypeId!
            }
            if self.linePath != nil {
                map["LinePath"] = self.linePath!
            }
            if self.logicalStatus != nil {
                map["LogicalStatus"] = self.logicalStatus!
            }
            if self.moduleIds != nil {
                map["ModuleIds"] = self.moduleIds!
            }
            if self.moduleList != nil {
                map["ModuleList"] = self.moduleList!
            }
            if self.moduleUpdated != nil {
                map["ModuleUpdated"] = self.moduleUpdated!
            }
            if self.parentId != nil {
                map["ParentId"] = self.parentId!
            }
            if self.priority != nil {
                map["Priority"] = self.priority!
            }
            if self.priorityId != nil {
                map["PriorityId"] = self.priorityId!
            }
            if self.projectId != nil {
                map["ProjectId"] = self.projectId!
            }
            if self.projectIds != nil {
                map["ProjectIds"] = self.projectIds!
            }
            if self.recordChangeLog != nil {
                map["RecordChangeLog"] = self.recordChangeLog!
            }
            if self.region != nil {
                map["Region"] = self.region!
            }
            if self.relatedAKProjectGuids != nil {
                map["RelatedAKProjectGuids"] = self.relatedAKProjectGuids!
            }
            if self.relatedAKProjectIds != nil {
                map["RelatedAKProjectIds"] = self.relatedAKProjectIds!
            }
            if self.relatedUserIds != nil {
                map["RelatedUserIds"] = self.relatedUserIds!
            }
            if self.respondDuration != nil {
                map["RespondDuration"] = self.respondDuration!
            }
            if self.scope != nil {
                map["Scope"] = self.scope!
            }
            if self.scopeUserIds != nil {
                map["ScopeUserIds"] = self.scopeUserIds!
            }
            if self.sendWangwang != nil {
                map["SendWangwang"] = self.sendWangwang!
            }
            if self.seriousLevel != nil {
                map["SeriousLevel"] = self.seriousLevel!
            }
            if self.seriousLevelId != nil {
                map["SeriousLevelId"] = self.seriousLevelId!
            }
            if self.skipCollab != nil {
                map["SkipCollab"] = self.skipCollab!
            }
            if self.solution != nil {
                map["Solution"] = self.solution!
            }
            if self.source != nil {
                map["Source"] = self.source!
            }
            if self.sourceId != nil {
                map["SourceId"] = self.sourceId!
            }
            if self.sprintId != nil {
                map["SprintId"] = self.sprintId!
            }
            if self.stamp != nil {
                map["Stamp"] = self.stamp!
            }
            if self.status != nil {
                map["Status"] = self.status!
            }
            if self.statusId != nil {
                map["StatusId"] = self.statusId!
            }
            if self.statusStage != nil {
                map["StatusStage"] = self.statusStage!
            }
            if self.subject != nil {
                map["Subject"] = self.subject!
            }
            if self.tagIdList != nil {
                map["TagIdList"] = self.tagIdList!
            }
            if self.templateId != nil {
                map["TemplateId"] = self.templateId!
            }
            if self.testsuiteId != nil {
                map["TestsuiteId"] = self.testsuiteId!
            }
            if self.trackerIds != nil {
                map["TrackerIds"] = self.trackerIds!
            }
            if self.trackers != nil {
                map["Trackers"] = self.trackers!
            }
            if self.updatedAt != nil {
                map["UpdatedAt"] = self.updatedAt!
            }
            if self.user != nil {
                map["User"] = self.user!
            }
            if self.userId != nil {
                map["UserId"] = self.userId!
            }
            if self.userStaffId != nil {
                map["UserStaffId"] = self.userStaffId!
            }
            if self.verifier != nil {
                map["Verifier"] = self.verifier!
            }
            if self.verifierId != nil {
                map["VerifierId"] = self.verifierId!
            }
            if self.verifierStaffId != nil {
                map["VerifierStaffId"] = self.verifierStaffId!
            }
            if self.versionId != nil {
                map["VersionId"] = self.versionId!
            }
            if self.versionIds != nil {
                map["VersionIds"] = self.versionIds!
            }
            if self.versionList != nil {
                map["VersionList"] = self.versionList!
            }
            if self.watched != nil {
                map["Watched"] = self.watched!
            }
            if self.watcherIdList != nil {
                map["WatcherIdList"] = self.watcherIdList!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("AkPaths") {
                self.akPaths = dict["AkPaths"] as! String
            }
            if dict.keys.contains("AkProjectId") {
                self.akProjectId = dict["AkProjectId"] as! Int32
            }
            if dict.keys.contains("AkVersionIds") {
                self.akVersionIds = dict["AkVersionIds"] as! String
            }
            if dict.keys.contains("AssignedTo") {
                self.assignedTo = dict["AssignedTo"] as! String
            }
            if dict.keys.contains("AssignedToId") {
                self.assignedToId = dict["AssignedToId"] as! Int32
            }
            if dict.keys.contains("AssignedToIdList") {
                self.assignedToIdList = dict["AssignedToIdList"] as! String
            }
            if dict.keys.contains("AssignedToIds") {
                self.assignedToIds = dict["AssignedToIds"] as! String
            }
            if dict.keys.contains("AssignedToStaffId") {
                self.assignedToStaffId = dict["AssignedToStaffId"] as! String
            }
            if dict.keys.contains("AttachmentIds") {
                self.attachmentIds = dict["AttachmentIds"] as! String
            }
            if dict.keys.contains("AttachmentList") {
                self.attachmentList = dict["AttachmentList"] as! String
            }
            if dict.keys.contains("Attachmented") {
                self.attachmented = dict["Attachmented"] as! Bool
            }
            if dict.keys.contains("BlackListNotice") {
                self.blackListNotice = dict["BlackListNotice"] as! String
            }
            if dict.keys.contains("ChangeLogList") {
                self.changeLogList = dict["ChangeLogList"] as! String
            }
            if dict.keys.contains("ClosedDuration") {
                self.closedDuration = dict["ClosedDuration"] as! Int32
            }
            if dict.keys.contains("CommentList") {
                self.commentList = dict["CommentList"] as! String
            }
            if dict.keys.contains("CommitDate") {
                self.commitDate = dict["CommitDate"] as! Int64
            }
            if dict.keys.contains("CreatedAt") {
                self.createdAt = dict["CreatedAt"] as! Int64
            }
            if dict.keys.contains("DevDuration") {
                self.devDuration = dict["DevDuration"] as! Int32
            }
            if dict.keys.contains("FixedDuration") {
                self.fixedDuration = dict["FixedDuration"] as! Int32
            }
            if dict.keys.contains("FixedUserId") {
                self.fixedUserId = dict["FixedUserId"] as! Int32
            }
            if dict.keys.contains("Id") {
                self.id = dict["Id"] as! Int32
            }
            if dict.keys.contains("IdPath") {
                self.idPath = dict["IdPath"] as! String
            }
            if dict.keys.contains("IgnoreCheck") {
                self.ignoreCheck = dict["IgnoreCheck"] as! Bool
            }
            if dict.keys.contains("IgnoreIntegrate") {
                self.ignoreIntegrate = dict["IgnoreIntegrate"] as! Bool
            }
            if dict.keys.contains("IssueRelations") {
                self.issueRelations = dict["IssueRelations"] as! String
            }
            if dict.keys.contains("IssueTypeId") {
                self.issueTypeId = dict["IssueTypeId"] as! Int32
            }
            if dict.keys.contains("LinePath") {
                self.linePath = dict["LinePath"] as! String
            }
            if dict.keys.contains("LogicalStatus") {
                self.logicalStatus = dict["LogicalStatus"] as! String
            }
            if dict.keys.contains("ModuleIds") {
                self.moduleIds = dict["ModuleIds"] as! String
            }
            if dict.keys.contains("ModuleList") {
                self.moduleList = dict["ModuleList"] as! String
            }
            if dict.keys.contains("ModuleUpdated") {
                self.moduleUpdated = dict["ModuleUpdated"] as! Bool
            }
            if dict.keys.contains("ParentId") {
                self.parentId = dict["ParentId"] as! Int32
            }
            if dict.keys.contains("Priority") {
                self.priority = dict["Priority"] as! String
            }
            if dict.keys.contains("PriorityId") {
                self.priorityId = dict["PriorityId"] as! Int32
            }
            if dict.keys.contains("ProjectId") {
                self.projectId = dict["ProjectId"] as! Int32
            }
            if dict.keys.contains("ProjectIds") {
                self.projectIds = dict["ProjectIds"] as! String
            }
            if dict.keys.contains("RecordChangeLog") {
                self.recordChangeLog = dict["RecordChangeLog"] as! Bool
            }
            if dict.keys.contains("Region") {
                self.region = dict["Region"] as! String
            }
            if dict.keys.contains("RelatedAKProjectGuids") {
                self.relatedAKProjectGuids = dict["RelatedAKProjectGuids"] as! String
            }
            if dict.keys.contains("RelatedAKProjectIds") {
                self.relatedAKProjectIds = dict["RelatedAKProjectIds"] as! String
            }
            if dict.keys.contains("RelatedUserIds") {
                self.relatedUserIds = dict["RelatedUserIds"] as! String
            }
            if dict.keys.contains("RespondDuration") {
                self.respondDuration = dict["RespondDuration"] as! Int32
            }
            if dict.keys.contains("Scope") {
                self.scope = dict["Scope"] as! Int32
            }
            if dict.keys.contains("ScopeUserIds") {
                self.scopeUserIds = dict["ScopeUserIds"] as! String
            }
            if dict.keys.contains("SendWangwang") {
                self.sendWangwang = dict["SendWangwang"] as! Bool
            }
            if dict.keys.contains("SeriousLevel") {
                self.seriousLevel = dict["SeriousLevel"] as! String
            }
            if dict.keys.contains("SeriousLevelId") {
                self.seriousLevelId = dict["SeriousLevelId"] as! Int32
            }
            if dict.keys.contains("SkipCollab") {
                self.skipCollab = dict["SkipCollab"] as! Bool
            }
            if dict.keys.contains("Solution") {
                self.solution = dict["Solution"] as! Int32
            }
            if dict.keys.contains("Source") {
                self.source = dict["Source"] as! String
            }
            if dict.keys.contains("SourceId") {
                self.sourceId = dict["SourceId"] as! Int32
            }
            if dict.keys.contains("SprintId") {
                self.sprintId = dict["SprintId"] as! Int32
            }
            if dict.keys.contains("Stamp") {
                self.stamp = dict["Stamp"] as! String
            }
            if dict.keys.contains("Status") {
                self.status = dict["Status"] as! String
            }
            if dict.keys.contains("StatusId") {
                self.statusId = dict["StatusId"] as! Int32
            }
            if dict.keys.contains("StatusStage") {
                self.statusStage = dict["StatusStage"] as! Int32
            }
            if dict.keys.contains("Subject") {
                self.subject = dict["Subject"] as! String
            }
            if dict.keys.contains("TagIdList") {
                self.tagIdList = dict["TagIdList"] as! String
            }
            if dict.keys.contains("TemplateId") {
                self.templateId = dict["TemplateId"] as! Int32
            }
            if dict.keys.contains("TestsuiteId") {
                self.testsuiteId = dict["TestsuiteId"] as! Int32
            }
            if dict.keys.contains("TrackerIds") {
                self.trackerIds = dict["TrackerIds"] as! String
            }
            if dict.keys.contains("Trackers") {
                self.trackers = dict["Trackers"] as! String
            }
            if dict.keys.contains("UpdatedAt") {
                self.updatedAt = dict["UpdatedAt"] as! Int64
            }
            if dict.keys.contains("User") {
                self.user = dict["User"] as! String
            }
            if dict.keys.contains("UserId") {
                self.userId = dict["UserId"] as! Int32
            }
            if dict.keys.contains("UserStaffId") {
                self.userStaffId = dict["UserStaffId"] as! String
            }
            if dict.keys.contains("Verifier") {
                self.verifier = dict["Verifier"] as! String
            }
            if dict.keys.contains("VerifierId") {
                self.verifierId = dict["VerifierId"] as! Int32
            }
            if dict.keys.contains("VerifierStaffId") {
                self.verifierStaffId = dict["VerifierStaffId"] as! String
            }
            if dict.keys.contains("VersionId") {
                self.versionId = dict["VersionId"] as! Int32
            }
            if dict.keys.contains("VersionIds") {
                self.versionIds = dict["VersionIds"] as! String
            }
            if dict.keys.contains("VersionList") {
                self.versionList = dict["VersionList"] as! String
            }
            if dict.keys.contains("Watched") {
                self.watched = dict["Watched"] as! Bool
            }
            if dict.keys.contains("WatcherIdList") {
                self.watcherIdList = dict["WatcherIdList"] as! String
            }
        }
    }
    public var code: Int32?

    public var data: [SearchWorkitemResponseBody.Data]?

    public var pageSize: Int32?

    public var requestId: String?

    public var success: Bool?

    public var toPage: Int32?

    public var totalCount: Int32?

    public var totalPages: Int32?

    public override init() {
        super.init()
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
            var tmp : [Any] = []
            for k in self.data! {
                tmp.append(k.toMap())
            }
            map["Data"] = tmp
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.success != nil {
            map["Success"] = self.success!
        }
        if self.toPage != nil {
            map["ToPage"] = self.toPage!
        }
        if self.totalCount != nil {
            map["TotalCount"] = self.totalCount!
        }
        if self.totalPages != nil {
            map["TotalPages"] = self.totalPages!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! Int32
        }
        if dict.keys.contains("Data") {
            self.data = dict["Data"] as! [SearchWorkitemResponseBody.Data]
        }
        if dict.keys.contains("PageSize") {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") {
            self.success = dict["Success"] as! Bool
        }
        if dict.keys.contains("ToPage") {
            self.toPage = dict["ToPage"] as! Int32
        }
        if dict.keys.contains("TotalCount") {
            self.totalCount = dict["TotalCount"] as! Int32
        }
        if dict.keys.contains("TotalPages") {
            self.totalPages = dict["TotalPages"] as! Int32
        }
    }
}

public class SearchWorkitemResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: SearchWorkitemResponseBody?

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
            var model = SearchWorkitemResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class SearchWorkitemWithTotalCountRequest : Tea.TeaModel {
    public var AKProjectId: Int32?

    public var corpIdentifier: String?

    public var pageSize: Int32?

    public var sprintId: Int32?

    public var stamp: String?

    public var toPage: Int32?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.AKProjectId != nil {
            map["AKProjectId"] = self.AKProjectId!
        }
        if self.corpIdentifier != nil {
            map["CorpIdentifier"] = self.corpIdentifier!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.sprintId != nil {
            map["SprintId"] = self.sprintId!
        }
        if self.stamp != nil {
            map["Stamp"] = self.stamp!
        }
        if self.toPage != nil {
            map["ToPage"] = self.toPage!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AKProjectId") {
            self.AKProjectId = dict["AKProjectId"] as! Int32
        }
        if dict.keys.contains("CorpIdentifier") {
            self.corpIdentifier = dict["CorpIdentifier"] as! String
        }
        if dict.keys.contains("PageSize") {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("SprintId") {
            self.sprintId = dict["SprintId"] as! Int32
        }
        if dict.keys.contains("Stamp") {
            self.stamp = dict["Stamp"] as! String
        }
        if dict.keys.contains("ToPage") {
            self.toPage = dict["ToPage"] as! Int32
        }
    }
}

public class SearchWorkitemWithTotalCountResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var akPaths: String?

        public var akProjectId: Int32?

        public var akVersionIds: String?

        public var assignedTo: String?

        public var assignedToId: Int32?

        public var assignedToIdList: String?

        public var assignedToIds: String?

        public var assignedToStaffId: String?

        public var attachmentIds: String?

        public var attachmentList: String?

        public var attachmented: Bool?

        public var blackListNotice: String?

        public var changeLogList: String?

        public var closedDuration: Int32?

        public var commentList: String?

        public var commitDate: Int64?

        public var createdAt: Int64?

        public var devDuration: Int32?

        public var fixedDuration: Int32?

        public var fixedUserId: Int32?

        public var id: Int32?

        public var idPath: String?

        public var ignoreCheck: Bool?

        public var ignoreIntegrate: Bool?

        public var issueRelations: String?

        public var issueTypeId: Int32?

        public var linePath: String?

        public var logicalStatus: String?

        public var moduleIds: String?

        public var moduleList: String?

        public var moduleUpdated: Bool?

        public var parentId: Int32?

        public var priority: String?

        public var priorityId: Int32?

        public var projectId: Int32?

        public var projectIds: String?

        public var recordChangeLog: Bool?

        public var region: String?

        public var relatedAKProjectGuids: String?

        public var relatedAKProjectIds: String?

        public var relatedUserIds: String?

        public var respondDuration: Int32?

        public var scope: Int32?

        public var scopeUserIds: String?

        public var sendWangwang: Bool?

        public var seriousLevel: String?

        public var seriousLevelId: Int32?

        public var skipCollab: Bool?

        public var solution: Int32?

        public var source: String?

        public var sourceId: Int32?

        public var sprintId: Int32?

        public var stamp: String?

        public var status: String?

        public var statusId: Int32?

        public var statusStage: Int32?

        public var subject: String?

        public var tagIdList: String?

        public var templateId: Int32?

        public var testsuiteId: Int32?

        public var trackerIds: String?

        public var trackers: String?

        public var updatedAt: Int64?

        public var user: String?

        public var userId: Int32?

        public var userStaffId: String?

        public var verifier: String?

        public var verifierId: Int32?

        public var verifierStaffId: String?

        public var versionId: Int32?

        public var versionIds: String?

        public var versionList: String?

        public var watched: Bool?

        public var watcherIdList: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.akPaths != nil {
                map["AkPaths"] = self.akPaths!
            }
            if self.akProjectId != nil {
                map["AkProjectId"] = self.akProjectId!
            }
            if self.akVersionIds != nil {
                map["AkVersionIds"] = self.akVersionIds!
            }
            if self.assignedTo != nil {
                map["AssignedTo"] = self.assignedTo!
            }
            if self.assignedToId != nil {
                map["AssignedToId"] = self.assignedToId!
            }
            if self.assignedToIdList != nil {
                map["AssignedToIdList"] = self.assignedToIdList!
            }
            if self.assignedToIds != nil {
                map["AssignedToIds"] = self.assignedToIds!
            }
            if self.assignedToStaffId != nil {
                map["AssignedToStaffId"] = self.assignedToStaffId!
            }
            if self.attachmentIds != nil {
                map["AttachmentIds"] = self.attachmentIds!
            }
            if self.attachmentList != nil {
                map["AttachmentList"] = self.attachmentList!
            }
            if self.attachmented != nil {
                map["Attachmented"] = self.attachmented!
            }
            if self.blackListNotice != nil {
                map["BlackListNotice"] = self.blackListNotice!
            }
            if self.changeLogList != nil {
                map["ChangeLogList"] = self.changeLogList!
            }
            if self.closedDuration != nil {
                map["ClosedDuration"] = self.closedDuration!
            }
            if self.commentList != nil {
                map["CommentList"] = self.commentList!
            }
            if self.commitDate != nil {
                map["CommitDate"] = self.commitDate!
            }
            if self.createdAt != nil {
                map["CreatedAt"] = self.createdAt!
            }
            if self.devDuration != nil {
                map["DevDuration"] = self.devDuration!
            }
            if self.fixedDuration != nil {
                map["FixedDuration"] = self.fixedDuration!
            }
            if self.fixedUserId != nil {
                map["FixedUserId"] = self.fixedUserId!
            }
            if self.id != nil {
                map["Id"] = self.id!
            }
            if self.idPath != nil {
                map["IdPath"] = self.idPath!
            }
            if self.ignoreCheck != nil {
                map["IgnoreCheck"] = self.ignoreCheck!
            }
            if self.ignoreIntegrate != nil {
                map["IgnoreIntegrate"] = self.ignoreIntegrate!
            }
            if self.issueRelations != nil {
                map["IssueRelations"] = self.issueRelations!
            }
            if self.issueTypeId != nil {
                map["IssueTypeId"] = self.issueTypeId!
            }
            if self.linePath != nil {
                map["LinePath"] = self.linePath!
            }
            if self.logicalStatus != nil {
                map["LogicalStatus"] = self.logicalStatus!
            }
            if self.moduleIds != nil {
                map["ModuleIds"] = self.moduleIds!
            }
            if self.moduleList != nil {
                map["ModuleList"] = self.moduleList!
            }
            if self.moduleUpdated != nil {
                map["ModuleUpdated"] = self.moduleUpdated!
            }
            if self.parentId != nil {
                map["ParentId"] = self.parentId!
            }
            if self.priority != nil {
                map["Priority"] = self.priority!
            }
            if self.priorityId != nil {
                map["PriorityId"] = self.priorityId!
            }
            if self.projectId != nil {
                map["ProjectId"] = self.projectId!
            }
            if self.projectIds != nil {
                map["ProjectIds"] = self.projectIds!
            }
            if self.recordChangeLog != nil {
                map["RecordChangeLog"] = self.recordChangeLog!
            }
            if self.region != nil {
                map["Region"] = self.region!
            }
            if self.relatedAKProjectGuids != nil {
                map["RelatedAKProjectGuids"] = self.relatedAKProjectGuids!
            }
            if self.relatedAKProjectIds != nil {
                map["RelatedAKProjectIds"] = self.relatedAKProjectIds!
            }
            if self.relatedUserIds != nil {
                map["RelatedUserIds"] = self.relatedUserIds!
            }
            if self.respondDuration != nil {
                map["RespondDuration"] = self.respondDuration!
            }
            if self.scope != nil {
                map["Scope"] = self.scope!
            }
            if self.scopeUserIds != nil {
                map["ScopeUserIds"] = self.scopeUserIds!
            }
            if self.sendWangwang != nil {
                map["SendWangwang"] = self.sendWangwang!
            }
            if self.seriousLevel != nil {
                map["SeriousLevel"] = self.seriousLevel!
            }
            if self.seriousLevelId != nil {
                map["SeriousLevelId"] = self.seriousLevelId!
            }
            if self.skipCollab != nil {
                map["SkipCollab"] = self.skipCollab!
            }
            if self.solution != nil {
                map["Solution"] = self.solution!
            }
            if self.source != nil {
                map["Source"] = self.source!
            }
            if self.sourceId != nil {
                map["SourceId"] = self.sourceId!
            }
            if self.sprintId != nil {
                map["SprintId"] = self.sprintId!
            }
            if self.stamp != nil {
                map["Stamp"] = self.stamp!
            }
            if self.status != nil {
                map["Status"] = self.status!
            }
            if self.statusId != nil {
                map["StatusId"] = self.statusId!
            }
            if self.statusStage != nil {
                map["StatusStage"] = self.statusStage!
            }
            if self.subject != nil {
                map["Subject"] = self.subject!
            }
            if self.tagIdList != nil {
                map["TagIdList"] = self.tagIdList!
            }
            if self.templateId != nil {
                map["TemplateId"] = self.templateId!
            }
            if self.testsuiteId != nil {
                map["TestsuiteId"] = self.testsuiteId!
            }
            if self.trackerIds != nil {
                map["TrackerIds"] = self.trackerIds!
            }
            if self.trackers != nil {
                map["Trackers"] = self.trackers!
            }
            if self.updatedAt != nil {
                map["UpdatedAt"] = self.updatedAt!
            }
            if self.user != nil {
                map["User"] = self.user!
            }
            if self.userId != nil {
                map["UserId"] = self.userId!
            }
            if self.userStaffId != nil {
                map["UserStaffId"] = self.userStaffId!
            }
            if self.verifier != nil {
                map["Verifier"] = self.verifier!
            }
            if self.verifierId != nil {
                map["VerifierId"] = self.verifierId!
            }
            if self.verifierStaffId != nil {
                map["VerifierStaffId"] = self.verifierStaffId!
            }
            if self.versionId != nil {
                map["VersionId"] = self.versionId!
            }
            if self.versionIds != nil {
                map["VersionIds"] = self.versionIds!
            }
            if self.versionList != nil {
                map["VersionList"] = self.versionList!
            }
            if self.watched != nil {
                map["Watched"] = self.watched!
            }
            if self.watcherIdList != nil {
                map["WatcherIdList"] = self.watcherIdList!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("AkPaths") {
                self.akPaths = dict["AkPaths"] as! String
            }
            if dict.keys.contains("AkProjectId") {
                self.akProjectId = dict["AkProjectId"] as! Int32
            }
            if dict.keys.contains("AkVersionIds") {
                self.akVersionIds = dict["AkVersionIds"] as! String
            }
            if dict.keys.contains("AssignedTo") {
                self.assignedTo = dict["AssignedTo"] as! String
            }
            if dict.keys.contains("AssignedToId") {
                self.assignedToId = dict["AssignedToId"] as! Int32
            }
            if dict.keys.contains("AssignedToIdList") {
                self.assignedToIdList = dict["AssignedToIdList"] as! String
            }
            if dict.keys.contains("AssignedToIds") {
                self.assignedToIds = dict["AssignedToIds"] as! String
            }
            if dict.keys.contains("AssignedToStaffId") {
                self.assignedToStaffId = dict["AssignedToStaffId"] as! String
            }
            if dict.keys.contains("AttachmentIds") {
                self.attachmentIds = dict["AttachmentIds"] as! String
            }
            if dict.keys.contains("AttachmentList") {
                self.attachmentList = dict["AttachmentList"] as! String
            }
            if dict.keys.contains("Attachmented") {
                self.attachmented = dict["Attachmented"] as! Bool
            }
            if dict.keys.contains("BlackListNotice") {
                self.blackListNotice = dict["BlackListNotice"] as! String
            }
            if dict.keys.contains("ChangeLogList") {
                self.changeLogList = dict["ChangeLogList"] as! String
            }
            if dict.keys.contains("ClosedDuration") {
                self.closedDuration = dict["ClosedDuration"] as! Int32
            }
            if dict.keys.contains("CommentList") {
                self.commentList = dict["CommentList"] as! String
            }
            if dict.keys.contains("CommitDate") {
                self.commitDate = dict["CommitDate"] as! Int64
            }
            if dict.keys.contains("CreatedAt") {
                self.createdAt = dict["CreatedAt"] as! Int64
            }
            if dict.keys.contains("DevDuration") {
                self.devDuration = dict["DevDuration"] as! Int32
            }
            if dict.keys.contains("FixedDuration") {
                self.fixedDuration = dict["FixedDuration"] as! Int32
            }
            if dict.keys.contains("FixedUserId") {
                self.fixedUserId = dict["FixedUserId"] as! Int32
            }
            if dict.keys.contains("Id") {
                self.id = dict["Id"] as! Int32
            }
            if dict.keys.contains("IdPath") {
                self.idPath = dict["IdPath"] as! String
            }
            if dict.keys.contains("IgnoreCheck") {
                self.ignoreCheck = dict["IgnoreCheck"] as! Bool
            }
            if dict.keys.contains("IgnoreIntegrate") {
                self.ignoreIntegrate = dict["IgnoreIntegrate"] as! Bool
            }
            if dict.keys.contains("IssueRelations") {
                self.issueRelations = dict["IssueRelations"] as! String
            }
            if dict.keys.contains("IssueTypeId") {
                self.issueTypeId = dict["IssueTypeId"] as! Int32
            }
            if dict.keys.contains("LinePath") {
                self.linePath = dict["LinePath"] as! String
            }
            if dict.keys.contains("LogicalStatus") {
                self.logicalStatus = dict["LogicalStatus"] as! String
            }
            if dict.keys.contains("ModuleIds") {
                self.moduleIds = dict["ModuleIds"] as! String
            }
            if dict.keys.contains("ModuleList") {
                self.moduleList = dict["ModuleList"] as! String
            }
            if dict.keys.contains("ModuleUpdated") {
                self.moduleUpdated = dict["ModuleUpdated"] as! Bool
            }
            if dict.keys.contains("ParentId") {
                self.parentId = dict["ParentId"] as! Int32
            }
            if dict.keys.contains("Priority") {
                self.priority = dict["Priority"] as! String
            }
            if dict.keys.contains("PriorityId") {
                self.priorityId = dict["PriorityId"] as! Int32
            }
            if dict.keys.contains("ProjectId") {
                self.projectId = dict["ProjectId"] as! Int32
            }
            if dict.keys.contains("ProjectIds") {
                self.projectIds = dict["ProjectIds"] as! String
            }
            if dict.keys.contains("RecordChangeLog") {
                self.recordChangeLog = dict["RecordChangeLog"] as! Bool
            }
            if dict.keys.contains("Region") {
                self.region = dict["Region"] as! String
            }
            if dict.keys.contains("RelatedAKProjectGuids") {
                self.relatedAKProjectGuids = dict["RelatedAKProjectGuids"] as! String
            }
            if dict.keys.contains("RelatedAKProjectIds") {
                self.relatedAKProjectIds = dict["RelatedAKProjectIds"] as! String
            }
            if dict.keys.contains("RelatedUserIds") {
                self.relatedUserIds = dict["RelatedUserIds"] as! String
            }
            if dict.keys.contains("RespondDuration") {
                self.respondDuration = dict["RespondDuration"] as! Int32
            }
            if dict.keys.contains("Scope") {
                self.scope = dict["Scope"] as! Int32
            }
            if dict.keys.contains("ScopeUserIds") {
                self.scopeUserIds = dict["ScopeUserIds"] as! String
            }
            if dict.keys.contains("SendWangwang") {
                self.sendWangwang = dict["SendWangwang"] as! Bool
            }
            if dict.keys.contains("SeriousLevel") {
                self.seriousLevel = dict["SeriousLevel"] as! String
            }
            if dict.keys.contains("SeriousLevelId") {
                self.seriousLevelId = dict["SeriousLevelId"] as! Int32
            }
            if dict.keys.contains("SkipCollab") {
                self.skipCollab = dict["SkipCollab"] as! Bool
            }
            if dict.keys.contains("Solution") {
                self.solution = dict["Solution"] as! Int32
            }
            if dict.keys.contains("Source") {
                self.source = dict["Source"] as! String
            }
            if dict.keys.contains("SourceId") {
                self.sourceId = dict["SourceId"] as! Int32
            }
            if dict.keys.contains("SprintId") {
                self.sprintId = dict["SprintId"] as! Int32
            }
            if dict.keys.contains("Stamp") {
                self.stamp = dict["Stamp"] as! String
            }
            if dict.keys.contains("Status") {
                self.status = dict["Status"] as! String
            }
            if dict.keys.contains("StatusId") {
                self.statusId = dict["StatusId"] as! Int32
            }
            if dict.keys.contains("StatusStage") {
                self.statusStage = dict["StatusStage"] as! Int32
            }
            if dict.keys.contains("Subject") {
                self.subject = dict["Subject"] as! String
            }
            if dict.keys.contains("TagIdList") {
                self.tagIdList = dict["TagIdList"] as! String
            }
            if dict.keys.contains("TemplateId") {
                self.templateId = dict["TemplateId"] as! Int32
            }
            if dict.keys.contains("TestsuiteId") {
                self.testsuiteId = dict["TestsuiteId"] as! Int32
            }
            if dict.keys.contains("TrackerIds") {
                self.trackerIds = dict["TrackerIds"] as! String
            }
            if dict.keys.contains("Trackers") {
                self.trackers = dict["Trackers"] as! String
            }
            if dict.keys.contains("UpdatedAt") {
                self.updatedAt = dict["UpdatedAt"] as! Int64
            }
            if dict.keys.contains("User") {
                self.user = dict["User"] as! String
            }
            if dict.keys.contains("UserId") {
                self.userId = dict["UserId"] as! Int32
            }
            if dict.keys.contains("UserStaffId") {
                self.userStaffId = dict["UserStaffId"] as! String
            }
            if dict.keys.contains("Verifier") {
                self.verifier = dict["Verifier"] as! String
            }
            if dict.keys.contains("VerifierId") {
                self.verifierId = dict["VerifierId"] as! Int32
            }
            if dict.keys.contains("VerifierStaffId") {
                self.verifierStaffId = dict["VerifierStaffId"] as! String
            }
            if dict.keys.contains("VersionId") {
                self.versionId = dict["VersionId"] as! Int32
            }
            if dict.keys.contains("VersionIds") {
                self.versionIds = dict["VersionIds"] as! String
            }
            if dict.keys.contains("VersionList") {
                self.versionList = dict["VersionList"] as! String
            }
            if dict.keys.contains("Watched") {
                self.watched = dict["Watched"] as! Bool
            }
            if dict.keys.contains("WatcherIdList") {
                self.watcherIdList = dict["WatcherIdList"] as! String
            }
        }
    }
    public var code: Int32?

    public var data: [SearchWorkitemWithTotalCountResponseBody.Data]?

    public var pageSize: Int32?

    public var requestId: String?

    public var success: Bool?

    public var toPage: Int32?

    public var totalCount: Int32?

    public var totalPages: Int32?

    public override init() {
        super.init()
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
            var tmp : [Any] = []
            for k in self.data! {
                tmp.append(k.toMap())
            }
            map["Data"] = tmp
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.success != nil {
            map["Success"] = self.success!
        }
        if self.toPage != nil {
            map["ToPage"] = self.toPage!
        }
        if self.totalCount != nil {
            map["TotalCount"] = self.totalCount!
        }
        if self.totalPages != nil {
            map["TotalPages"] = self.totalPages!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! Int32
        }
        if dict.keys.contains("Data") {
            self.data = dict["Data"] as! [SearchWorkitemWithTotalCountResponseBody.Data]
        }
        if dict.keys.contains("PageSize") {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") {
            self.success = dict["Success"] as! Bool
        }
        if dict.keys.contains("ToPage") {
            self.toPage = dict["ToPage"] as! Int32
        }
        if dict.keys.contains("TotalCount") {
            self.totalCount = dict["TotalCount"] as! Int32
        }
        if dict.keys.contains("TotalPages") {
            self.totalPages = dict["TotalPages"] as! Int32
        }
    }
}

public class SearchWorkitemWithTotalCountResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: SearchWorkitemWithTotalCountResponseBody?

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
            var model = SearchWorkitemWithTotalCountResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class SyncUserToRdcRequest : Tea.TeaModel {
    public var loginTicket: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.loginTicket != nil {
            map["LoginTicket"] = self.loginTicket!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("LoginTicket") {
            self.loginTicket = dict["LoginTicket"] as! String
        }
    }
}

public class SyncUserToRdcResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var isValid: Bool?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.isValid != nil {
                map["IsValid"] = self.isValid!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("IsValid") {
                self.isValid = dict["IsValid"] as! Bool
            }
        }
    }
    public var code: Int32?

    public var data: SyncUserToRdcResponseBody.Data?

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
        try self.data?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.data != nil {
            map["Data"] = self.data?.toMap()
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
            self.code = dict["Code"] as! Int32
        }
        if dict.keys.contains("Data") {
            var model = SyncUserToRdcResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
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

public class SyncUserToRdcResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: SyncUserToRdcResponseBody?

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
            var model = SyncUserToRdcResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class UpdateWorkitemRequest : Tea.TeaModel {
    public var AKProjectId: Int32?

    public var assignedTo: String?

    public var cfList: [String: Any]?

    public var cfs: [String: Any]?

    public var corpIdentifier: String?

    public var description_: String?

    public var ignoreCheck: Bool?

    public var issueId: Int32?

    public var modifier: String?

    public var priority: String?

    public var seriousLevel: String?

    public var sprintId: Int32?

    public var stamp: String?

    public var status: String?

    public var subject: String?

    public var templateId: Int32?

    public var verifier: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.AKProjectId != nil {
            map["AKProjectId"] = self.AKProjectId!
        }
        if self.assignedTo != nil {
            map["AssignedTo"] = self.assignedTo!
        }
        if self.cfList != nil {
            map["CfList"] = self.cfList!
        }
        if self.cfs != nil {
            map["Cfs"] = self.cfs!
        }
        if self.corpIdentifier != nil {
            map["CorpIdentifier"] = self.corpIdentifier!
        }
        if self.description_ != nil {
            map["Description"] = self.description_!
        }
        if self.ignoreCheck != nil {
            map["IgnoreCheck"] = self.ignoreCheck!
        }
        if self.issueId != nil {
            map["IssueId"] = self.issueId!
        }
        if self.modifier != nil {
            map["Modifier"] = self.modifier!
        }
        if self.priority != nil {
            map["Priority"] = self.priority!
        }
        if self.seriousLevel != nil {
            map["SeriousLevel"] = self.seriousLevel!
        }
        if self.sprintId != nil {
            map["SprintId"] = self.sprintId!
        }
        if self.stamp != nil {
            map["Stamp"] = self.stamp!
        }
        if self.status != nil {
            map["Status"] = self.status!
        }
        if self.subject != nil {
            map["Subject"] = self.subject!
        }
        if self.templateId != nil {
            map["TemplateId"] = self.templateId!
        }
        if self.verifier != nil {
            map["Verifier"] = self.verifier!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AKProjectId") {
            self.AKProjectId = dict["AKProjectId"] as! Int32
        }
        if dict.keys.contains("AssignedTo") {
            self.assignedTo = dict["AssignedTo"] as! String
        }
        if dict.keys.contains("CfList") {
            self.cfList = dict["CfList"] as! [String: Any]
        }
        if dict.keys.contains("Cfs") {
            self.cfs = dict["Cfs"] as! [String: Any]
        }
        if dict.keys.contains("CorpIdentifier") {
            self.corpIdentifier = dict["CorpIdentifier"] as! String
        }
        if dict.keys.contains("Description") {
            self.description_ = dict["Description"] as! String
        }
        if dict.keys.contains("IgnoreCheck") {
            self.ignoreCheck = dict["IgnoreCheck"] as! Bool
        }
        if dict.keys.contains("IssueId") {
            self.issueId = dict["IssueId"] as! Int32
        }
        if dict.keys.contains("Modifier") {
            self.modifier = dict["Modifier"] as! String
        }
        if dict.keys.contains("Priority") {
            self.priority = dict["Priority"] as! String
        }
        if dict.keys.contains("SeriousLevel") {
            self.seriousLevel = dict["SeriousLevel"] as! String
        }
        if dict.keys.contains("SprintId") {
            self.sprintId = dict["SprintId"] as! Int32
        }
        if dict.keys.contains("Stamp") {
            self.stamp = dict["Stamp"] as! String
        }
        if dict.keys.contains("Status") {
            self.status = dict["Status"] as! String
        }
        if dict.keys.contains("Subject") {
            self.subject = dict["Subject"] as! String
        }
        if dict.keys.contains("TemplateId") {
            self.templateId = dict["TemplateId"] as! Int32
        }
        if dict.keys.contains("Verifier") {
            self.verifier = dict["Verifier"] as! String
        }
    }
}

public class UpdateWorkitemShrinkRequest : Tea.TeaModel {
    public var AKProjectId: Int32?

    public var assignedTo: String?

    public var cfListShrink: String?

    public var cfsShrink: String?

    public var corpIdentifier: String?

    public var description_: String?

    public var ignoreCheck: Bool?

    public var issueId: Int32?

    public var modifier: String?

    public var priority: String?

    public var seriousLevel: String?

    public var sprintId: Int32?

    public var stamp: String?

    public var status: String?

    public var subject: String?

    public var templateId: Int32?

    public var verifier: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.AKProjectId != nil {
            map["AKProjectId"] = self.AKProjectId!
        }
        if self.assignedTo != nil {
            map["AssignedTo"] = self.assignedTo!
        }
        if self.cfListShrink != nil {
            map["CfList"] = self.cfListShrink!
        }
        if self.cfsShrink != nil {
            map["Cfs"] = self.cfsShrink!
        }
        if self.corpIdentifier != nil {
            map["CorpIdentifier"] = self.corpIdentifier!
        }
        if self.description_ != nil {
            map["Description"] = self.description_!
        }
        if self.ignoreCheck != nil {
            map["IgnoreCheck"] = self.ignoreCheck!
        }
        if self.issueId != nil {
            map["IssueId"] = self.issueId!
        }
        if self.modifier != nil {
            map["Modifier"] = self.modifier!
        }
        if self.priority != nil {
            map["Priority"] = self.priority!
        }
        if self.seriousLevel != nil {
            map["SeriousLevel"] = self.seriousLevel!
        }
        if self.sprintId != nil {
            map["SprintId"] = self.sprintId!
        }
        if self.stamp != nil {
            map["Stamp"] = self.stamp!
        }
        if self.status != nil {
            map["Status"] = self.status!
        }
        if self.subject != nil {
            map["Subject"] = self.subject!
        }
        if self.templateId != nil {
            map["TemplateId"] = self.templateId!
        }
        if self.verifier != nil {
            map["Verifier"] = self.verifier!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AKProjectId") {
            self.AKProjectId = dict["AKProjectId"] as! Int32
        }
        if dict.keys.contains("AssignedTo") {
            self.assignedTo = dict["AssignedTo"] as! String
        }
        if dict.keys.contains("CfList") {
            self.cfListShrink = dict["CfList"] as! String
        }
        if dict.keys.contains("Cfs") {
            self.cfsShrink = dict["Cfs"] as! String
        }
        if dict.keys.contains("CorpIdentifier") {
            self.corpIdentifier = dict["CorpIdentifier"] as! String
        }
        if dict.keys.contains("Description") {
            self.description_ = dict["Description"] as! String
        }
        if dict.keys.contains("IgnoreCheck") {
            self.ignoreCheck = dict["IgnoreCheck"] as! Bool
        }
        if dict.keys.contains("IssueId") {
            self.issueId = dict["IssueId"] as! Int32
        }
        if dict.keys.contains("Modifier") {
            self.modifier = dict["Modifier"] as! String
        }
        if dict.keys.contains("Priority") {
            self.priority = dict["Priority"] as! String
        }
        if dict.keys.contains("SeriousLevel") {
            self.seriousLevel = dict["SeriousLevel"] as! String
        }
        if dict.keys.contains("SprintId") {
            self.sprintId = dict["SprintId"] as! Int32
        }
        if dict.keys.contains("Stamp") {
            self.stamp = dict["Stamp"] as! String
        }
        if dict.keys.contains("Status") {
            self.status = dict["Status"] as! String
        }
        if dict.keys.contains("Subject") {
            self.subject = dict["Subject"] as! String
        }
        if dict.keys.contains("TemplateId") {
            self.templateId = dict["TemplateId"] as! Int32
        }
        if dict.keys.contains("Verifier") {
            self.verifier = dict["Verifier"] as! String
        }
    }
}

public class UpdateWorkitemResponseBody : Tea.TeaModel {
    public var code: Int32?

    public var data: Bool?

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
            self.code = dict["Code"] as! Int32
        }
        if dict.keys.contains("Data") {
            self.data = dict["Data"] as! Bool
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

public class UpdateWorkitemResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpdateWorkitemResponseBody?

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
            var model = UpdateWorkitemResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}
