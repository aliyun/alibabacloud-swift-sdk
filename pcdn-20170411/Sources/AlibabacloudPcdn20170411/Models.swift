import Foundation
import Tea
import TeaUtils
import AlibabacloudOpenApi
import AlibabaCloudOpenApiUtil
import AlibabacloudEndpointUtil

public class AddConsumerRequest : Tea.TeaModel {
    public var bandwidthRequirement: String?

    public var businessType: String?

    public var ca: String?

    public var company: String?

    public var email: String?

    public var mobile: String?

    public var operator_: String?

    public var requirement: String?

    public var securityToken: String?

    public var site: String?

    public var version: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.bandwidthRequirement != nil {
            map["BandwidthRequirement"] = self.bandwidthRequirement!
        }
        if self.businessType != nil {
            map["BusinessType"] = self.businessType!
        }
        if self.ca != nil {
            map["Ca"] = self.ca!
        }
        if self.company != nil {
            map["Company"] = self.company!
        }
        if self.email != nil {
            map["Email"] = self.email!
        }
        if self.mobile != nil {
            map["Mobile"] = self.mobile!
        }
        if self.operator_ != nil {
            map["Operator"] = self.operator_!
        }
        if self.requirement != nil {
            map["Requirement"] = self.requirement!
        }
        if self.securityToken != nil {
            map["SecurityToken"] = self.securityToken!
        }
        if self.site != nil {
            map["Site"] = self.site!
        }
        if self.version != nil {
            map["Version"] = self.version!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("BandwidthRequirement") {
            self.bandwidthRequirement = dict["BandwidthRequirement"] as! String
        }
        if dict.keys.contains("BusinessType") {
            self.businessType = dict["BusinessType"] as! String
        }
        if dict.keys.contains("Ca") {
            self.ca = dict["Ca"] as! String
        }
        if dict.keys.contains("Company") {
            self.company = dict["Company"] as! String
        }
        if dict.keys.contains("Email") {
            self.email = dict["Email"] as! String
        }
        if dict.keys.contains("Mobile") {
            self.mobile = dict["Mobile"] as! String
        }
        if dict.keys.contains("Operator") {
            self.operator_ = dict["Operator"] as! String
        }
        if dict.keys.contains("Requirement") {
            self.requirement = dict["Requirement"] as! String
        }
        if dict.keys.contains("SecurityToken") {
            self.securityToken = dict["SecurityToken"] as! String
        }
        if dict.keys.contains("Site") {
            self.site = dict["Site"] as! String
        }
        if dict.keys.contains("Version") {
            self.version = dict["Version"] as! String
        }
    }
}

public class AddConsumerResponseBody : Tea.TeaModel {
    public var code: Int32?

    public var requestId: String?

    public var resourceId: String?

    public override init() {
        super.init()
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
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.resourceId != nil {
            map["ResourceId"] = self.resourceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! Int32
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("ResourceId") {
            self.resourceId = dict["ResourceId"] as! String
        }
    }
}

public class AddConsumerResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: AddConsumerResponseBody?

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
            var model = AddConsumerResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class AddDomainRequest : Tea.TeaModel {
    public var businessType: String?

    public var demoUrls: String?

    public var domain: String?

    public var liveFormat: String?

    public var region: String?

    public var securityToken: String?

    public var sliceDomain: String?

    public var version: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.businessType != nil {
            map["BusinessType"] = self.businessType!
        }
        if self.demoUrls != nil {
            map["DemoUrls"] = self.demoUrls!
        }
        if self.domain != nil {
            map["Domain"] = self.domain!
        }
        if self.liveFormat != nil {
            map["LiveFormat"] = self.liveFormat!
        }
        if self.region != nil {
            map["Region"] = self.region!
        }
        if self.securityToken != nil {
            map["SecurityToken"] = self.securityToken!
        }
        if self.sliceDomain != nil {
            map["SliceDomain"] = self.sliceDomain!
        }
        if self.version != nil {
            map["Version"] = self.version!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("BusinessType") {
            self.businessType = dict["BusinessType"] as! String
        }
        if dict.keys.contains("DemoUrls") {
            self.demoUrls = dict["DemoUrls"] as! String
        }
        if dict.keys.contains("Domain") {
            self.domain = dict["Domain"] as! String
        }
        if dict.keys.contains("LiveFormat") {
            self.liveFormat = dict["LiveFormat"] as! String
        }
        if dict.keys.contains("Region") {
            self.region = dict["Region"] as! String
        }
        if dict.keys.contains("SecurityToken") {
            self.securityToken = dict["SecurityToken"] as! String
        }
        if dict.keys.contains("SliceDomain") {
            self.sliceDomain = dict["SliceDomain"] as! String
        }
        if dict.keys.contains("Version") {
            self.version = dict["Version"] as! String
        }
    }
}

public class AddDomainResponseBody : Tea.TeaModel {
    public var code: Int32?

    public var requestId: String?

    public var resourceId: String?

    public override init() {
        super.init()
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
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.resourceId != nil {
            map["ResourceId"] = self.resourceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! Int32
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("ResourceId") {
            self.resourceId = dict["ResourceId"] as! String
        }
    }
}

public class AddDomainResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: AddDomainResponseBody?

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
            var model = AddDomainResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class AddPcdnControlRuleRequest : Tea.TeaModel {
    public var appVersion: String?

    public var businessType: String?

    public var ispName: String?

    public var market: String?

    public var name: String?

    public var platformType: String?

    public var region: String?

    public var securityToken: String?

    public var version: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.appVersion != nil {
            map["AppVersion"] = self.appVersion!
        }
        if self.businessType != nil {
            map["BusinessType"] = self.businessType!
        }
        if self.ispName != nil {
            map["IspName"] = self.ispName!
        }
        if self.market != nil {
            map["Market"] = self.market!
        }
        if self.name != nil {
            map["Name"] = self.name!
        }
        if self.platformType != nil {
            map["PlatformType"] = self.platformType!
        }
        if self.region != nil {
            map["Region"] = self.region!
        }
        if self.securityToken != nil {
            map["SecurityToken"] = self.securityToken!
        }
        if self.version != nil {
            map["Version"] = self.version!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AppVersion") {
            self.appVersion = dict["AppVersion"] as! String
        }
        if dict.keys.contains("BusinessType") {
            self.businessType = dict["BusinessType"] as! String
        }
        if dict.keys.contains("IspName") {
            self.ispName = dict["IspName"] as! String
        }
        if dict.keys.contains("Market") {
            self.market = dict["Market"] as! String
        }
        if dict.keys.contains("Name") {
            self.name = dict["Name"] as! String
        }
        if dict.keys.contains("PlatformType") {
            self.platformType = dict["PlatformType"] as! String
        }
        if dict.keys.contains("Region") {
            self.region = dict["Region"] as! String
        }
        if dict.keys.contains("SecurityToken") {
            self.securityToken = dict["SecurityToken"] as! String
        }
        if dict.keys.contains("Version") {
            self.version = dict["Version"] as! String
        }
    }
}

public class AddPcdnControlRuleResponseBody : Tea.TeaModel {
    public var code: Int32?

    public var requestId: String?

    public var resourceId: String?

    public override init() {
        super.init()
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
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.resourceId != nil {
            map["ResourceId"] = self.resourceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! Int32
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("ResourceId") {
            self.resourceId = dict["ResourceId"] as! String
        }
    }
}

public class AddPcdnControlRuleResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: AddPcdnControlRuleResponseBody?

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
            var model = AddPcdnControlRuleResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DeleteDomainRequest : Tea.TeaModel {
    public var domain: String?

    public var securityToken: String?

    public var version: String?

    public override init() {
        super.init()
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
        if self.securityToken != nil {
            map["SecurityToken"] = self.securityToken!
        }
        if self.version != nil {
            map["Version"] = self.version!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Domain") {
            self.domain = dict["Domain"] as! String
        }
        if dict.keys.contains("SecurityToken") {
            self.securityToken = dict["SecurityToken"] as! String
        }
        if dict.keys.contains("Version") {
            self.version = dict["Version"] as! String
        }
    }
}

public class DeleteDomainResponseBody : Tea.TeaModel {
    public var code: Int32?

    public var requestId: String?

    public var resourceId: String?

    public override init() {
        super.init()
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
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.resourceId != nil {
            map["ResourceId"] = self.resourceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! Int32
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("ResourceId") {
            self.resourceId = dict["ResourceId"] as! String
        }
    }
}

public class DeleteDomainResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteDomainResponseBody?

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
            var model = DeleteDomainResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DeletePcdnControlRuleRequest : Tea.TeaModel {
    public var resourceId: String?

    public var securityToken: String?

    public var version: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.resourceId != nil {
            map["ResourceId"] = self.resourceId!
        }
        if self.securityToken != nil {
            map["SecurityToken"] = self.securityToken!
        }
        if self.version != nil {
            map["Version"] = self.version!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ResourceId") {
            self.resourceId = dict["ResourceId"] as! String
        }
        if dict.keys.contains("SecurityToken") {
            self.securityToken = dict["SecurityToken"] as! String
        }
        if dict.keys.contains("Version") {
            self.version = dict["Version"] as! String
        }
    }
}

public class DeletePcdnControlRuleResponseBody : Tea.TeaModel {
    public var code: Int32?

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
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! Int32
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class DeletePcdnControlRuleResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeletePcdnControlRuleResponseBody?

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
            var model = DeletePcdnControlRuleResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DisablePcdnControlRuleRequest : Tea.TeaModel {
    public var resourceId: String?

    public var securityToken: String?

    public var version: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.resourceId != nil {
            map["ResourceId"] = self.resourceId!
        }
        if self.securityToken != nil {
            map["SecurityToken"] = self.securityToken!
        }
        if self.version != nil {
            map["Version"] = self.version!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ResourceId") {
            self.resourceId = dict["ResourceId"] as! String
        }
        if dict.keys.contains("SecurityToken") {
            self.securityToken = dict["SecurityToken"] as! String
        }
        if dict.keys.contains("Version") {
            self.version = dict["Version"] as! String
        }
    }
}

public class DisablePcdnControlRuleResponseBody : Tea.TeaModel {
    public var code: Int32?

    public var requestId: String?

    public var resourceId: String?

    public override init() {
        super.init()
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
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.resourceId != nil {
            map["ResourceId"] = self.resourceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! Int32
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("ResourceId") {
            self.resourceId = dict["ResourceId"] as! String
        }
    }
}

public class DisablePcdnControlRuleResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DisablePcdnControlRuleResponseBody?

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
            var model = DisablePcdnControlRuleResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class EditPcdnControlRuleRequest : Tea.TeaModel {
    public var appVersion: String?

    public var businessType: String?

    public var ispName: String?

    public var market: String?

    public var name: String?

    public var platformType: String?

    public var region: String?

    public var resourceId: String?

    public var securityToken: String?

    public var version: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.appVersion != nil {
            map["AppVersion"] = self.appVersion!
        }
        if self.businessType != nil {
            map["BusinessType"] = self.businessType!
        }
        if self.ispName != nil {
            map["IspName"] = self.ispName!
        }
        if self.market != nil {
            map["Market"] = self.market!
        }
        if self.name != nil {
            map["Name"] = self.name!
        }
        if self.platformType != nil {
            map["PlatformType"] = self.platformType!
        }
        if self.region != nil {
            map["Region"] = self.region!
        }
        if self.resourceId != nil {
            map["ResourceId"] = self.resourceId!
        }
        if self.securityToken != nil {
            map["SecurityToken"] = self.securityToken!
        }
        if self.version != nil {
            map["Version"] = self.version!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AppVersion") {
            self.appVersion = dict["AppVersion"] as! String
        }
        if dict.keys.contains("BusinessType") {
            self.businessType = dict["BusinessType"] as! String
        }
        if dict.keys.contains("IspName") {
            self.ispName = dict["IspName"] as! String
        }
        if dict.keys.contains("Market") {
            self.market = dict["Market"] as! String
        }
        if dict.keys.contains("Name") {
            self.name = dict["Name"] as! String
        }
        if dict.keys.contains("PlatformType") {
            self.platformType = dict["PlatformType"] as! String
        }
        if dict.keys.contains("Region") {
            self.region = dict["Region"] as! String
        }
        if dict.keys.contains("ResourceId") {
            self.resourceId = dict["ResourceId"] as! String
        }
        if dict.keys.contains("SecurityToken") {
            self.securityToken = dict["SecurityToken"] as! String
        }
        if dict.keys.contains("Version") {
            self.version = dict["Version"] as! String
        }
    }
}

public class EditPcdnControlRuleResponseBody : Tea.TeaModel {
    public var code: Int32?

    public var requestId: String?

    public var resourceId: String?

    public override init() {
        super.init()
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
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.resourceId != nil {
            map["ResourceId"] = self.resourceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! Int32
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("ResourceId") {
            self.resourceId = dict["ResourceId"] as! String
        }
    }
}

public class EditPcdnControlRuleResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: EditPcdnControlRuleResponseBody?

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
            var model = EditPcdnControlRuleResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class EnablePcdnControlRuleRequest : Tea.TeaModel {
    public var resourceId: String?

    public var securityToken: String?

    public var version: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.resourceId != nil {
            map["ResourceId"] = self.resourceId!
        }
        if self.securityToken != nil {
            map["SecurityToken"] = self.securityToken!
        }
        if self.version != nil {
            map["Version"] = self.version!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ResourceId") {
            self.resourceId = dict["ResourceId"] as! String
        }
        if dict.keys.contains("SecurityToken") {
            self.securityToken = dict["SecurityToken"] as! String
        }
        if dict.keys.contains("Version") {
            self.version = dict["Version"] as! String
        }
    }
}

public class EnablePcdnControlRuleResponseBody : Tea.TeaModel {
    public var code: Int32?

    public var requestId: String?

    public var resourceId: String?

    public override init() {
        super.init()
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
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.resourceId != nil {
            map["ResourceId"] = self.resourceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! Int32
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("ResourceId") {
            self.resourceId = dict["ResourceId"] as! String
        }
    }
}

public class EnablePcdnControlRuleResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: EnablePcdnControlRuleResponseBody?

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
            var model = EnablePcdnControlRuleResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetAccessDataRequest : Tea.TeaModel {
    public var businessType: String?

    public var domain: String?

    public var endDate: String?

    public var ispName: String?

    public var platformType: String?

    public var region: String?

    public var securityToken: String?

    public var startDate: String?

    public var version: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.businessType != nil {
            map["BusinessType"] = self.businessType!
        }
        if self.domain != nil {
            map["Domain"] = self.domain!
        }
        if self.endDate != nil {
            map["EndDate"] = self.endDate!
        }
        if self.ispName != nil {
            map["IspName"] = self.ispName!
        }
        if self.platformType != nil {
            map["PlatformType"] = self.platformType!
        }
        if self.region != nil {
            map["Region"] = self.region!
        }
        if self.securityToken != nil {
            map["SecurityToken"] = self.securityToken!
        }
        if self.startDate != nil {
            map["StartDate"] = self.startDate!
        }
        if self.version != nil {
            map["Version"] = self.version!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("BusinessType") {
            self.businessType = dict["BusinessType"] as! String
        }
        if dict.keys.contains("Domain") {
            self.domain = dict["Domain"] as! String
        }
        if dict.keys.contains("EndDate") {
            self.endDate = dict["EndDate"] as! String
        }
        if dict.keys.contains("IspName") {
            self.ispName = dict["IspName"] as! String
        }
        if dict.keys.contains("PlatformType") {
            self.platformType = dict["PlatformType"] as! String
        }
        if dict.keys.contains("Region") {
            self.region = dict["Region"] as! String
        }
        if dict.keys.contains("SecurityToken") {
            self.securityToken = dict["SecurityToken"] as! String
        }
        if dict.keys.contains("StartDate") {
            self.startDate = dict["StartDate"] as! String
        }
        if dict.keys.contains("Version") {
            self.version = dict["Version"] as! String
        }
    }
}

public class GetAccessDataResponseBody : Tea.TeaModel {
    public class DataList : Tea.TeaModel {
        public class UsageData : Tea.TeaModel {
            public class Values : Tea.TeaModel {
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
                    if self.values != nil {
                        map["Values"] = self.values!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("Values") {
                        self.values = dict["Values"] as! [String]
                    }
                }
            }
            public var date: String?

            public var values: GetAccessDataResponseBody.DataList.UsageData.Values?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
                try self.values?.validate()
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.date != nil {
                    map["Date"] = self.date!
                }
                if self.values != nil {
                    map["Values"] = self.values?.toMap()
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("Date") {
                    self.date = dict["Date"] as! String
                }
                if dict.keys.contains("Values") {
                    var model = GetAccessDataResponseBody.DataList.UsageData.Values()
                    model.fromMap(dict["Values"] as! [String: Any])
                    self.values = model
                }
            }
        }
        public var usageData: [GetAccessDataResponseBody.DataList.UsageData]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.usageData != nil {
                var tmp : [Any] = []
                for k in self.usageData! {
                    tmp.append(k.toMap())
                }
                map["UsageData"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("UsageData") {
                self.usageData = dict["UsageData"] as! [GetAccessDataResponseBody.DataList.UsageData]
            }
        }
    }
    public class Labels : Tea.TeaModel {
        public var label: [String]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.label != nil {
                map["Label"] = self.label!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Label") {
                self.label = dict["Label"] as! [String]
            }
        }
    }
    public var code: Int32?

    public var dataList: GetAccessDataResponseBody.DataList?

    public var labels: GetAccessDataResponseBody.Labels?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.dataList?.validate()
        try self.labels?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.dataList != nil {
            map["DataList"] = self.dataList?.toMap()
        }
        if self.labels != nil {
            map["Labels"] = self.labels?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! Int32
        }
        if dict.keys.contains("DataList") {
            var model = GetAccessDataResponseBody.DataList()
            model.fromMap(dict["DataList"] as! [String: Any])
            self.dataList = model
        }
        if dict.keys.contains("Labels") {
            var model = GetAccessDataResponseBody.Labels()
            model.fromMap(dict["Labels"] as! [String: Any])
            self.labels = model
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class GetAccessDataResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetAccessDataResponseBody?

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
            var model = GetAccessDataResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetAllAppVersionsRequest : Tea.TeaModel {
    public var securityToken: String?

    public var version: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.securityToken != nil {
            map["SecurityToken"] = self.securityToken!
        }
        if self.version != nil {
            map["Version"] = self.version!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("SecurityToken") {
            self.securityToken = dict["SecurityToken"] as! String
        }
        if dict.keys.contains("Version") {
            self.version = dict["Version"] as! String
        }
    }
}

public class GetAllAppVersionsResponseBody : Tea.TeaModel {
    public class DataList : Tea.TeaModel {
        public class UsageData : Tea.TeaModel {
            public var code: Int32?

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
                if self.code != nil {
                    map["Code"] = self.code!
                }
                if self.value != nil {
                    map["Value"] = self.value!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("Code") {
                    self.code = dict["Code"] as! Int32
                }
                if dict.keys.contains("Value") {
                    self.value = dict["Value"] as! String
                }
            }
        }
        public var usageData: [GetAllAppVersionsResponseBody.DataList.UsageData]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.usageData != nil {
                var tmp : [Any] = []
                for k in self.usageData! {
                    tmp.append(k.toMap())
                }
                map["UsageData"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("UsageData") {
                self.usageData = dict["UsageData"] as! [GetAllAppVersionsResponseBody.DataList.UsageData]
            }
        }
    }
    public var code: Int32?

    public var dataList: GetAllAppVersionsResponseBody.DataList?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.dataList?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.dataList != nil {
            map["DataList"] = self.dataList?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! Int32
        }
        if dict.keys.contains("DataList") {
            var model = GetAllAppVersionsResponseBody.DataList()
            model.fromMap(dict["DataList"] as! [String: Any])
            self.dataList = model
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class GetAllAppVersionsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetAllAppVersionsResponseBody?

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
            var model = GetAllAppVersionsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetAllIspRequest : Tea.TeaModel {
    public var securityToken: String?

    public var version: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.securityToken != nil {
            map["SecurityToken"] = self.securityToken!
        }
        if self.version != nil {
            map["Version"] = self.version!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("SecurityToken") {
            self.securityToken = dict["SecurityToken"] as! String
        }
        if dict.keys.contains("Version") {
            self.version = dict["Version"] as! String
        }
    }
}

public class GetAllIspResponseBody : Tea.TeaModel {
    public class DataList : Tea.TeaModel {
        public class UsageData : Tea.TeaModel {
            public var nameCn: String?

            public var nameEn: String?

            public var resourceId: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.nameCn != nil {
                    map["NameCn"] = self.nameCn!
                }
                if self.nameEn != nil {
                    map["NameEn"] = self.nameEn!
                }
                if self.resourceId != nil {
                    map["ResourceId"] = self.resourceId!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("NameCn") {
                    self.nameCn = dict["NameCn"] as! String
                }
                if dict.keys.contains("NameEn") {
                    self.nameEn = dict["NameEn"] as! String
                }
                if dict.keys.contains("ResourceId") {
                    self.resourceId = dict["ResourceId"] as! String
                }
            }
        }
        public var usageData: [GetAllIspResponseBody.DataList.UsageData]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.usageData != nil {
                var tmp : [Any] = []
                for k in self.usageData! {
                    tmp.append(k.toMap())
                }
                map["UsageData"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("UsageData") {
                self.usageData = dict["UsageData"] as! [GetAllIspResponseBody.DataList.UsageData]
            }
        }
    }
    public var code: Int32?

    public var dataList: GetAllIspResponseBody.DataList?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.dataList?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.dataList != nil {
            map["DataList"] = self.dataList?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! Int32
        }
        if dict.keys.contains("DataList") {
            var model = GetAllIspResponseBody.DataList()
            model.fromMap(dict["DataList"] as! [String: Any])
            self.dataList = model
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class GetAllIspResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetAllIspResponseBody?

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
            var model = GetAllIspResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetAllMarketsRequest : Tea.TeaModel {
    public var securityToken: String?

    public var version: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.securityToken != nil {
            map["SecurityToken"] = self.securityToken!
        }
        if self.version != nil {
            map["Version"] = self.version!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("SecurityToken") {
            self.securityToken = dict["SecurityToken"] as! String
        }
        if dict.keys.contains("Version") {
            self.version = dict["Version"] as! String
        }
    }
}

public class GetAllMarketsResponseBody : Tea.TeaModel {
    public class DataList : Tea.TeaModel {
        public class UsageData : Tea.TeaModel {
            public var code: Int32?

            public var marketCode: String?

            public var marketName: String?

            public override init() {
                super.init()
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
                if self.marketCode != nil {
                    map["MarketCode"] = self.marketCode!
                }
                if self.marketName != nil {
                    map["MarketName"] = self.marketName!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("Code") {
                    self.code = dict["Code"] as! Int32
                }
                if dict.keys.contains("MarketCode") {
                    self.marketCode = dict["MarketCode"] as! String
                }
                if dict.keys.contains("MarketName") {
                    self.marketName = dict["MarketName"] as! String
                }
            }
        }
        public var usageData: [GetAllMarketsResponseBody.DataList.UsageData]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.usageData != nil {
                var tmp : [Any] = []
                for k in self.usageData! {
                    tmp.append(k.toMap())
                }
                map["UsageData"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("UsageData") {
                self.usageData = dict["UsageData"] as! [GetAllMarketsResponseBody.DataList.UsageData]
            }
        }
    }
    public var code: Int32?

    public var dataList: GetAllMarketsResponseBody.DataList?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.dataList?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.dataList != nil {
            map["DataList"] = self.dataList?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! Int32
        }
        if dict.keys.contains("DataList") {
            var model = GetAllMarketsResponseBody.DataList()
            model.fromMap(dict["DataList"] as! [String: Any])
            self.dataList = model
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class GetAllMarketsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetAllMarketsResponseBody?

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
            var model = GetAllMarketsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetAllPlatformTypesRequest : Tea.TeaModel {
    public var securityToken: String?

    public var version: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.securityToken != nil {
            map["SecurityToken"] = self.securityToken!
        }
        if self.version != nil {
            map["Version"] = self.version!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("SecurityToken") {
            self.securityToken = dict["SecurityToken"] as! String
        }
        if dict.keys.contains("Version") {
            self.version = dict["Version"] as! String
        }
    }
}

public class GetAllPlatformTypesResponseBody : Tea.TeaModel {
    public class DataList : Tea.TeaModel {
        public class UsageData : Tea.TeaModel {
            public var code: Int32?

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
                if self.code != nil {
                    map["Code"] = self.code!
                }
                if self.name != nil {
                    map["Name"] = self.name!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("Code") {
                    self.code = dict["Code"] as! Int32
                }
                if dict.keys.contains("Name") {
                    self.name = dict["Name"] as! String
                }
            }
        }
        public var usageData: [GetAllPlatformTypesResponseBody.DataList.UsageData]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.usageData != nil {
                var tmp : [Any] = []
                for k in self.usageData! {
                    tmp.append(k.toMap())
                }
                map["UsageData"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("UsageData") {
                self.usageData = dict["UsageData"] as! [GetAllPlatformTypesResponseBody.DataList.UsageData]
            }
        }
    }
    public var code: Int32?

    public var dataList: GetAllPlatformTypesResponseBody.DataList?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.dataList?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.dataList != nil {
            map["DataList"] = self.dataList?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! Int32
        }
        if dict.keys.contains("DataList") {
            var model = GetAllPlatformTypesResponseBody.DataList()
            model.fromMap(dict["DataList"] as! [String: Any])
            self.dataList = model
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class GetAllPlatformTypesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetAllPlatformTypesResponseBody?

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
            var model = GetAllPlatformTypesResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetAllRegionsRequest : Tea.TeaModel {
    public var securityToken: String?

    public var version: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.securityToken != nil {
            map["SecurityToken"] = self.securityToken!
        }
        if self.version != nil {
            map["Version"] = self.version!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("SecurityToken") {
            self.securityToken = dict["SecurityToken"] as! String
        }
        if dict.keys.contains("Version") {
            self.version = dict["Version"] as! String
        }
    }
}

public class GetAllRegionsResponseBody : Tea.TeaModel {
    public class DataList : Tea.TeaModel {
        public class UsageData : Tea.TeaModel {
            public var code: String?

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
                if self.code != nil {
                    map["Code"] = self.code!
                }
                if self.name != nil {
                    map["Name"] = self.name!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("Code") {
                    self.code = dict["Code"] as! String
                }
                if dict.keys.contains("Name") {
                    self.name = dict["Name"] as! String
                }
            }
        }
        public var usageData: [GetAllRegionsResponseBody.DataList.UsageData]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.usageData != nil {
                var tmp : [Any] = []
                for k in self.usageData! {
                    tmp.append(k.toMap())
                }
                map["UsageData"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("UsageData") {
                self.usageData = dict["UsageData"] as! [GetAllRegionsResponseBody.DataList.UsageData]
            }
        }
    }
    public var code: Int32?

    public var dataList: GetAllRegionsResponseBody.DataList?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.dataList?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.dataList != nil {
            map["DataList"] = self.dataList?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! Int32
        }
        if dict.keys.contains("DataList") {
            var model = GetAllRegionsResponseBody.DataList()
            model.fromMap(dict["DataList"] as! [String: Any])
            self.dataList = model
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class GetAllRegionsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetAllRegionsResponseBody?

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
            var model = GetAllRegionsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetBalanceBandwidthDataRequest : Tea.TeaModel {
    public var dataInterval: Int32?

    public var resourceId: String?

    public var securityToken: String?

    public var version: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.dataInterval != nil {
            map["DataInterval"] = self.dataInterval!
        }
        if self.resourceId != nil {
            map["ResourceId"] = self.resourceId!
        }
        if self.securityToken != nil {
            map["SecurityToken"] = self.securityToken!
        }
        if self.version != nil {
            map["Version"] = self.version!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DataInterval") {
            self.dataInterval = dict["DataInterval"] as! Int32
        }
        if dict.keys.contains("ResourceId") {
            self.resourceId = dict["ResourceId"] as! String
        }
        if dict.keys.contains("SecurityToken") {
            self.securityToken = dict["SecurityToken"] as! String
        }
        if dict.keys.contains("Version") {
            self.version = dict["Version"] as! String
        }
    }
}

public class GetBalanceBandwidthDataResponseBody : Tea.TeaModel {
    public class DataList : Tea.TeaModel {
        public class UsageData : Tea.TeaModel {
            public class Values : Tea.TeaModel {
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
                    if self.values != nil {
                        map["Values"] = self.values!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("Values") {
                        self.values = dict["Values"] as! [String]
                    }
                }
            }
            public var date: String?

            public var values: GetBalanceBandwidthDataResponseBody.DataList.UsageData.Values?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
                try self.values?.validate()
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.date != nil {
                    map["Date"] = self.date!
                }
                if self.values != nil {
                    map["Values"] = self.values?.toMap()
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("Date") {
                    self.date = dict["Date"] as! String
                }
                if dict.keys.contains("Values") {
                    var model = GetBalanceBandwidthDataResponseBody.DataList.UsageData.Values()
                    model.fromMap(dict["Values"] as! [String: Any])
                    self.values = model
                }
            }
        }
        public var usageData: [GetBalanceBandwidthDataResponseBody.DataList.UsageData]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.usageData != nil {
                var tmp : [Any] = []
                for k in self.usageData! {
                    tmp.append(k.toMap())
                }
                map["UsageData"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("UsageData") {
                self.usageData = dict["UsageData"] as! [GetBalanceBandwidthDataResponseBody.DataList.UsageData]
            }
        }
    }
    public class Labels : Tea.TeaModel {
        public var label: [String]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.label != nil {
                map["Label"] = self.label!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Label") {
                self.label = dict["Label"] as! [String]
            }
        }
    }
    public var code: Int32?

    public var dataList: GetBalanceBandwidthDataResponseBody.DataList?

    public var labels: GetBalanceBandwidthDataResponseBody.Labels?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.dataList?.validate()
        try self.labels?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.dataList != nil {
            map["DataList"] = self.dataList?.toMap()
        }
        if self.labels != nil {
            map["Labels"] = self.labels?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! Int32
        }
        if dict.keys.contains("DataList") {
            var model = GetBalanceBandwidthDataResponseBody.DataList()
            model.fromMap(dict["DataList"] as! [String: Any])
            self.dataList = model
        }
        if dict.keys.contains("Labels") {
            var model = GetBalanceBandwidthDataResponseBody.Labels()
            model.fromMap(dict["Labels"] as! [String: Any])
            self.labels = model
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class GetBalanceBandwidthDataResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetBalanceBandwidthDataResponseBody?

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
            var model = GetBalanceBandwidthDataResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetBalanceTrafficDataRequest : Tea.TeaModel {
    public var dataInterval: Int32?

    public var resourceId: String?

    public var securityToken: String?

    public var version: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.dataInterval != nil {
            map["DataInterval"] = self.dataInterval!
        }
        if self.resourceId != nil {
            map["ResourceId"] = self.resourceId!
        }
        if self.securityToken != nil {
            map["SecurityToken"] = self.securityToken!
        }
        if self.version != nil {
            map["Version"] = self.version!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DataInterval") {
            self.dataInterval = dict["DataInterval"] as! Int32
        }
        if dict.keys.contains("ResourceId") {
            self.resourceId = dict["ResourceId"] as! String
        }
        if dict.keys.contains("SecurityToken") {
            self.securityToken = dict["SecurityToken"] as! String
        }
        if dict.keys.contains("Version") {
            self.version = dict["Version"] as! String
        }
    }
}

public class GetBalanceTrafficDataResponseBody : Tea.TeaModel {
    public class DataList : Tea.TeaModel {
        public class UsageData : Tea.TeaModel {
            public class Values : Tea.TeaModel {
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
                    if self.values != nil {
                        map["Values"] = self.values!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("Values") {
                        self.values = dict["Values"] as! [String]
                    }
                }
            }
            public var date: String?

            public var values: GetBalanceTrafficDataResponseBody.DataList.UsageData.Values?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
                try self.values?.validate()
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.date != nil {
                    map["Date"] = self.date!
                }
                if self.values != nil {
                    map["Values"] = self.values?.toMap()
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("Date") {
                    self.date = dict["Date"] as! String
                }
                if dict.keys.contains("Values") {
                    var model = GetBalanceTrafficDataResponseBody.DataList.UsageData.Values()
                    model.fromMap(dict["Values"] as! [String: Any])
                    self.values = model
                }
            }
        }
        public var usageData: [GetBalanceTrafficDataResponseBody.DataList.UsageData]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.usageData != nil {
                var tmp : [Any] = []
                for k in self.usageData! {
                    tmp.append(k.toMap())
                }
                map["UsageData"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("UsageData") {
                self.usageData = dict["UsageData"] as! [GetBalanceTrafficDataResponseBody.DataList.UsageData]
            }
        }
    }
    public class Labels : Tea.TeaModel {
        public var label: [String]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.label != nil {
                map["Label"] = self.label!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Label") {
                self.label = dict["Label"] as! [String]
            }
        }
    }
    public var code: Int32?

    public var dataList: GetBalanceTrafficDataResponseBody.DataList?

    public var labels: GetBalanceTrafficDataResponseBody.Labels?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.dataList?.validate()
        try self.labels?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.dataList != nil {
            map["DataList"] = self.dataList?.toMap()
        }
        if self.labels != nil {
            map["Labels"] = self.labels?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! Int32
        }
        if dict.keys.contains("DataList") {
            var model = GetBalanceTrafficDataResponseBody.DataList()
            model.fromMap(dict["DataList"] as! [String: Any])
            self.dataList = model
        }
        if dict.keys.contains("Labels") {
            var model = GetBalanceTrafficDataResponseBody.Labels()
            model.fromMap(dict["Labels"] as! [String: Any])
            self.labels = model
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class GetBalanceTrafficDataResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetBalanceTrafficDataResponseBody?

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
            var model = GetBalanceTrafficDataResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetBandwidthDataRequest : Tea.TeaModel {
    public var businessType: String?

    public var domain: String?

    public var endDate: String?

    public var ispName: String?

    public var platformType: String?

    public var region: String?

    public var securityToken: String?

    public var startDate: String?

    public var version: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.businessType != nil {
            map["BusinessType"] = self.businessType!
        }
        if self.domain != nil {
            map["Domain"] = self.domain!
        }
        if self.endDate != nil {
            map["EndDate"] = self.endDate!
        }
        if self.ispName != nil {
            map["IspName"] = self.ispName!
        }
        if self.platformType != nil {
            map["PlatformType"] = self.platformType!
        }
        if self.region != nil {
            map["Region"] = self.region!
        }
        if self.securityToken != nil {
            map["SecurityToken"] = self.securityToken!
        }
        if self.startDate != nil {
            map["StartDate"] = self.startDate!
        }
        if self.version != nil {
            map["Version"] = self.version!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("BusinessType") {
            self.businessType = dict["BusinessType"] as! String
        }
        if dict.keys.contains("Domain") {
            self.domain = dict["Domain"] as! String
        }
        if dict.keys.contains("EndDate") {
            self.endDate = dict["EndDate"] as! String
        }
        if dict.keys.contains("IspName") {
            self.ispName = dict["IspName"] as! String
        }
        if dict.keys.contains("PlatformType") {
            self.platformType = dict["PlatformType"] as! String
        }
        if dict.keys.contains("Region") {
            self.region = dict["Region"] as! String
        }
        if dict.keys.contains("SecurityToken") {
            self.securityToken = dict["SecurityToken"] as! String
        }
        if dict.keys.contains("StartDate") {
            self.startDate = dict["StartDate"] as! String
        }
        if dict.keys.contains("Version") {
            self.version = dict["Version"] as! String
        }
    }
}

public class GetBandwidthDataResponseBody : Tea.TeaModel {
    public class DataList : Tea.TeaModel {
        public class UsageData : Tea.TeaModel {
            public class Values : Tea.TeaModel {
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
                    if self.values != nil {
                        map["Values"] = self.values!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("Values") {
                        self.values = dict["Values"] as! [String]
                    }
                }
            }
            public var date: String?

            public var values: GetBandwidthDataResponseBody.DataList.UsageData.Values?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
                try self.values?.validate()
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.date != nil {
                    map["Date"] = self.date!
                }
                if self.values != nil {
                    map["Values"] = self.values?.toMap()
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("Date") {
                    self.date = dict["Date"] as! String
                }
                if dict.keys.contains("Values") {
                    var model = GetBandwidthDataResponseBody.DataList.UsageData.Values()
                    model.fromMap(dict["Values"] as! [String: Any])
                    self.values = model
                }
            }
        }
        public var usageData: [GetBandwidthDataResponseBody.DataList.UsageData]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.usageData != nil {
                var tmp : [Any] = []
                for k in self.usageData! {
                    tmp.append(k.toMap())
                }
                map["UsageData"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("UsageData") {
                self.usageData = dict["UsageData"] as! [GetBandwidthDataResponseBody.DataList.UsageData]
            }
        }
    }
    public class Labels : Tea.TeaModel {
        public var label: [String]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.label != nil {
                map["Label"] = self.label!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Label") {
                self.label = dict["Label"] as! [String]
            }
        }
    }
    public var code: Int32?

    public var dataList: GetBandwidthDataResponseBody.DataList?

    public var labels: GetBandwidthDataResponseBody.Labels?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.dataList?.validate()
        try self.labels?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.dataList != nil {
            map["DataList"] = self.dataList?.toMap()
        }
        if self.labels != nil {
            map["Labels"] = self.labels?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! Int32
        }
        if dict.keys.contains("DataList") {
            var model = GetBandwidthDataResponseBody.DataList()
            model.fromMap(dict["DataList"] as! [String: Any])
            self.dataList = model
        }
        if dict.keys.contains("Labels") {
            var model = GetBandwidthDataResponseBody.Labels()
            model.fromMap(dict["Labels"] as! [String: Any])
            self.labels = model
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class GetBandwidthDataResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetBandwidthDataResponseBody?

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
            var model = GetBandwidthDataResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetClientsRatioRequest : Tea.TeaModel {
    public var securityToken: String?

    public var version: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.securityToken != nil {
            map["SecurityToken"] = self.securityToken!
        }
        if self.version != nil {
            map["Version"] = self.version!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("SecurityToken") {
            self.securityToken = dict["SecurityToken"] as! String
        }
        if dict.keys.contains("Version") {
            self.version = dict["Version"] as! String
        }
    }
}

public class GetClientsRatioResponseBody : Tea.TeaModel {
    public class DataList : Tea.TeaModel {
        public class UsageData : Tea.TeaModel {
            public var name: String?

            public var rate: String?

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
                if self.rate != nil {
                    map["Rate"] = self.rate!
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
                if dict.keys.contains("Rate") {
                    self.rate = dict["Rate"] as! String
                }
                if dict.keys.contains("Value") {
                    self.value = dict["Value"] as! String
                }
            }
        }
        public var usageData: [GetClientsRatioResponseBody.DataList.UsageData]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.usageData != nil {
                var tmp : [Any] = []
                for k in self.usageData! {
                    tmp.append(k.toMap())
                }
                map["UsageData"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("UsageData") {
                self.usageData = dict["UsageData"] as! [GetClientsRatioResponseBody.DataList.UsageData]
            }
        }
    }
    public var code: Int32?

    public var dataList: GetClientsRatioResponseBody.DataList?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.dataList?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.dataList != nil {
            map["DataList"] = self.dataList?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! Int32
        }
        if dict.keys.contains("DataList") {
            var model = GetClientsRatioResponseBody.DataList()
            model.fromMap(dict["DataList"] as! [String: Any])
            self.dataList = model
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class GetClientsRatioResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetClientsRatioResponseBody?

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
            var model = GetClientsRatioResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetConsumerStatusRequest : Tea.TeaModel {
    public var securityToken: String?

    public var version: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.securityToken != nil {
            map["SecurityToken"] = self.securityToken!
        }
        if self.version != nil {
            map["Version"] = self.version!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("SecurityToken") {
            self.securityToken = dict["SecurityToken"] as! String
        }
        if dict.keys.contains("Version") {
            self.version = dict["Version"] as! String
        }
    }
}

public class GetConsumerStatusResponseBody : Tea.TeaModel {
    public var audit: Int32?

    public var businessType: String?

    public var cdnUrlRedirectFlag: Bool?

    public var code: Int32?

    public var comment: String?

    public var createdAt: String?

    public var inservice: Bool?

    public var integreatedMode: Int32?

    public var liveMonitor: Bool?

    public var realtimeMonitor: Bool?

    public var requestId: String?

    public var updatedAt: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.audit != nil {
            map["Audit"] = self.audit!
        }
        if self.businessType != nil {
            map["BusinessType"] = self.businessType!
        }
        if self.cdnUrlRedirectFlag != nil {
            map["CdnUrlRedirectFlag"] = self.cdnUrlRedirectFlag!
        }
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.comment != nil {
            map["Comment"] = self.comment!
        }
        if self.createdAt != nil {
            map["CreatedAt"] = self.createdAt!
        }
        if self.inservice != nil {
            map["Inservice"] = self.inservice!
        }
        if self.integreatedMode != nil {
            map["IntegreatedMode"] = self.integreatedMode!
        }
        if self.liveMonitor != nil {
            map["LiveMonitor"] = self.liveMonitor!
        }
        if self.realtimeMonitor != nil {
            map["RealtimeMonitor"] = self.realtimeMonitor!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.updatedAt != nil {
            map["UpdatedAt"] = self.updatedAt!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Audit") {
            self.audit = dict["Audit"] as! Int32
        }
        if dict.keys.contains("BusinessType") {
            self.businessType = dict["BusinessType"] as! String
        }
        if dict.keys.contains("CdnUrlRedirectFlag") {
            self.cdnUrlRedirectFlag = dict["CdnUrlRedirectFlag"] as! Bool
        }
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! Int32
        }
        if dict.keys.contains("Comment") {
            self.comment = dict["Comment"] as! String
        }
        if dict.keys.contains("CreatedAt") {
            self.createdAt = dict["CreatedAt"] as! String
        }
        if dict.keys.contains("Inservice") {
            self.inservice = dict["Inservice"] as! Bool
        }
        if dict.keys.contains("IntegreatedMode") {
            self.integreatedMode = dict["IntegreatedMode"] as! Int32
        }
        if dict.keys.contains("LiveMonitor") {
            self.liveMonitor = dict["LiveMonitor"] as! Bool
        }
        if dict.keys.contains("RealtimeMonitor") {
            self.realtimeMonitor = dict["RealtimeMonitor"] as! Bool
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("UpdatedAt") {
            self.updatedAt = dict["UpdatedAt"] as! String
        }
    }
}

public class GetConsumerStatusResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetConsumerStatusResponseBody?

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
            var model = GetConsumerStatusResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetControlRulesRequest : Tea.TeaModel {
    public var page: String?

    public var pageSize: String?

    public var securityToken: String?

    public var version: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.page != nil {
            map["Page"] = self.page!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.securityToken != nil {
            map["SecurityToken"] = self.securityToken!
        }
        if self.version != nil {
            map["Version"] = self.version!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Page") {
            self.page = dict["Page"] as! String
        }
        if dict.keys.contains("PageSize") {
            self.pageSize = dict["PageSize"] as! String
        }
        if dict.keys.contains("SecurityToken") {
            self.securityToken = dict["SecurityToken"] as! String
        }
        if dict.keys.contains("Version") {
            self.version = dict["Version"] as! String
        }
    }
}

public class GetControlRulesResponseBody : Tea.TeaModel {
    public class Pager : Tea.TeaModel {
        public var page: Int32?

        public var pageSize: Int32?

        public var total: Int32?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.page != nil {
                map["Page"] = self.page!
            }
            if self.pageSize != nil {
                map["PageSize"] = self.pageSize!
            }
            if self.total != nil {
                map["Total"] = self.total!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Page") {
                self.page = dict["Page"] as! Int32
            }
            if dict.keys.contains("PageSize") {
                self.pageSize = dict["PageSize"] as! Int32
            }
            if dict.keys.contains("Total") {
                self.total = dict["Total"] as! Int32
            }
        }
    }
    public class SettingList : Tea.TeaModel {
        public class Setting : Tea.TeaModel {
            public var appVersion: String?

            public var businessType: String?

            public var clientId: String?

            public var createdAt: String?

            public var ispName: String?

            public var marketType: String?

            public var name: String?

            public var onoff: Bool?

            public var platformType: String?

            public var region: String?

            public var resourceId: String?

            public var updatedAt: String?

            public var usable: Bool?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.appVersion != nil {
                    map["AppVersion"] = self.appVersion!
                }
                if self.businessType != nil {
                    map["BusinessType"] = self.businessType!
                }
                if self.clientId != nil {
                    map["ClientId"] = self.clientId!
                }
                if self.createdAt != nil {
                    map["CreatedAt"] = self.createdAt!
                }
                if self.ispName != nil {
                    map["IspName"] = self.ispName!
                }
                if self.marketType != nil {
                    map["MarketType"] = self.marketType!
                }
                if self.name != nil {
                    map["Name"] = self.name!
                }
                if self.onoff != nil {
                    map["Onoff"] = self.onoff!
                }
                if self.platformType != nil {
                    map["PlatformType"] = self.platformType!
                }
                if self.region != nil {
                    map["Region"] = self.region!
                }
                if self.resourceId != nil {
                    map["ResourceId"] = self.resourceId!
                }
                if self.updatedAt != nil {
                    map["UpdatedAt"] = self.updatedAt!
                }
                if self.usable != nil {
                    map["Usable"] = self.usable!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("AppVersion") {
                    self.appVersion = dict["AppVersion"] as! String
                }
                if dict.keys.contains("BusinessType") {
                    self.businessType = dict["BusinessType"] as! String
                }
                if dict.keys.contains("ClientId") {
                    self.clientId = dict["ClientId"] as! String
                }
                if dict.keys.contains("CreatedAt") {
                    self.createdAt = dict["CreatedAt"] as! String
                }
                if dict.keys.contains("IspName") {
                    self.ispName = dict["IspName"] as! String
                }
                if dict.keys.contains("MarketType") {
                    self.marketType = dict["MarketType"] as! String
                }
                if dict.keys.contains("Name") {
                    self.name = dict["Name"] as! String
                }
                if dict.keys.contains("Onoff") {
                    self.onoff = dict["Onoff"] as! Bool
                }
                if dict.keys.contains("PlatformType") {
                    self.platformType = dict["PlatformType"] as! String
                }
                if dict.keys.contains("Region") {
                    self.region = dict["Region"] as! String
                }
                if dict.keys.contains("ResourceId") {
                    self.resourceId = dict["ResourceId"] as! String
                }
                if dict.keys.contains("UpdatedAt") {
                    self.updatedAt = dict["UpdatedAt"] as! String
                }
                if dict.keys.contains("Usable") {
                    self.usable = dict["Usable"] as! Bool
                }
            }
        }
        public var setting: [GetControlRulesResponseBody.SettingList.Setting]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.setting != nil {
                var tmp : [Any] = []
                for k in self.setting! {
                    tmp.append(k.toMap())
                }
                map["Setting"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Setting") {
                self.setting = dict["Setting"] as! [GetControlRulesResponseBody.SettingList.Setting]
            }
        }
    }
    public var code: Int32?

    public var pager: GetControlRulesResponseBody.Pager?

    public var requestId: String?

    public var settingList: GetControlRulesResponseBody.SettingList?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.pager?.validate()
        try self.settingList?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.pager != nil {
            map["Pager"] = self.pager?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.settingList != nil {
            map["SettingList"] = self.settingList?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! Int32
        }
        if dict.keys.contains("Pager") {
            var model = GetControlRulesResponseBody.Pager()
            model.fromMap(dict["Pager"] as! [String: Any])
            self.pager = model
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("SettingList") {
            var model = GetControlRulesResponseBody.SettingList()
            model.fromMap(dict["SettingList"] as! [String: Any])
            self.settingList = model
        }
    }
}

public class GetControlRulesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetControlRulesResponseBody?

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
            var model = GetControlRulesResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetCoverRateDataRequest : Tea.TeaModel {
    public var businessType: String?

    public var domain: String?

    public var endDate: String?

    public var ispName: String?

    public var platformType: String?

    public var region: String?

    public var securityToken: String?

    public var startDate: String?

    public var version: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.businessType != nil {
            map["BusinessType"] = self.businessType!
        }
        if self.domain != nil {
            map["Domain"] = self.domain!
        }
        if self.endDate != nil {
            map["EndDate"] = self.endDate!
        }
        if self.ispName != nil {
            map["IspName"] = self.ispName!
        }
        if self.platformType != nil {
            map["PlatformType"] = self.platformType!
        }
        if self.region != nil {
            map["Region"] = self.region!
        }
        if self.securityToken != nil {
            map["SecurityToken"] = self.securityToken!
        }
        if self.startDate != nil {
            map["StartDate"] = self.startDate!
        }
        if self.version != nil {
            map["Version"] = self.version!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("BusinessType") {
            self.businessType = dict["BusinessType"] as! String
        }
        if dict.keys.contains("Domain") {
            self.domain = dict["Domain"] as! String
        }
        if dict.keys.contains("EndDate") {
            self.endDate = dict["EndDate"] as! String
        }
        if dict.keys.contains("IspName") {
            self.ispName = dict["IspName"] as! String
        }
        if dict.keys.contains("PlatformType") {
            self.platformType = dict["PlatformType"] as! String
        }
        if dict.keys.contains("Region") {
            self.region = dict["Region"] as! String
        }
        if dict.keys.contains("SecurityToken") {
            self.securityToken = dict["SecurityToken"] as! String
        }
        if dict.keys.contains("StartDate") {
            self.startDate = dict["StartDate"] as! String
        }
        if dict.keys.contains("Version") {
            self.version = dict["Version"] as! String
        }
    }
}

public class GetCoverRateDataResponseBody : Tea.TeaModel {
    public class DataList : Tea.TeaModel {
        public class UsageData : Tea.TeaModel {
            public class Values : Tea.TeaModel {
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
                    if self.values != nil {
                        map["Values"] = self.values!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("Values") {
                        self.values = dict["Values"] as! [String]
                    }
                }
            }
            public var date: String?

            public var values: GetCoverRateDataResponseBody.DataList.UsageData.Values?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
                try self.values?.validate()
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.date != nil {
                    map["Date"] = self.date!
                }
                if self.values != nil {
                    map["Values"] = self.values?.toMap()
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("Date") {
                    self.date = dict["Date"] as! String
                }
                if dict.keys.contains("Values") {
                    var model = GetCoverRateDataResponseBody.DataList.UsageData.Values()
                    model.fromMap(dict["Values"] as! [String: Any])
                    self.values = model
                }
            }
        }
        public var usageData: [GetCoverRateDataResponseBody.DataList.UsageData]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.usageData != nil {
                var tmp : [Any] = []
                for k in self.usageData! {
                    tmp.append(k.toMap())
                }
                map["UsageData"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("UsageData") {
                self.usageData = dict["UsageData"] as! [GetCoverRateDataResponseBody.DataList.UsageData]
            }
        }
    }
    public class Labels : Tea.TeaModel {
        public var label: [String]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.label != nil {
                map["Label"] = self.label!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Label") {
                self.label = dict["Label"] as! [String]
            }
        }
    }
    public var code: Int32?

    public var dataList: GetCoverRateDataResponseBody.DataList?

    public var labels: GetCoverRateDataResponseBody.Labels?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.dataList?.validate()
        try self.labels?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.dataList != nil {
            map["DataList"] = self.dataList?.toMap()
        }
        if self.labels != nil {
            map["Labels"] = self.labels?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! Int32
        }
        if dict.keys.contains("DataList") {
            var model = GetCoverRateDataResponseBody.DataList()
            model.fromMap(dict["DataList"] as! [String: Any])
            self.dataList = model
        }
        if dict.keys.contains("Labels") {
            var model = GetCoverRateDataResponseBody.Labels()
            model.fromMap(dict["Labels"] as! [String: Any])
            self.labels = model
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class GetCoverRateDataResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetCoverRateDataResponseBody?

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
            var model = GetCoverRateDataResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetCurrentModeRequest : Tea.TeaModel {
    public var securityToken: String?

    public var version: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.securityToken != nil {
            map["SecurityToken"] = self.securityToken!
        }
        if self.version != nil {
            map["Version"] = self.version!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("SecurityToken") {
            self.securityToken = dict["SecurityToken"] as! String
        }
        if dict.keys.contains("Version") {
            self.version = dict["Version"] as! String
        }
    }
}

public class GetCurrentModeResponseBody : Tea.TeaModel {
    public var code: Int32?

    public var effectiveAt: Int32?

    public var estimateBandwidth: Int32?

    public var modeCode: Int32?

    public var paddingModeCode: Int32?

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
        if self.effectiveAt != nil {
            map["EffectiveAt"] = self.effectiveAt!
        }
        if self.estimateBandwidth != nil {
            map["EstimateBandwidth"] = self.estimateBandwidth!
        }
        if self.modeCode != nil {
            map["ModeCode"] = self.modeCode!
        }
        if self.paddingModeCode != nil {
            map["PaddingModeCode"] = self.paddingModeCode!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! Int32
        }
        if dict.keys.contains("EffectiveAt") {
            self.effectiveAt = dict["EffectiveAt"] as! Int32
        }
        if dict.keys.contains("EstimateBandwidth") {
            self.estimateBandwidth = dict["EstimateBandwidth"] as! Int32
        }
        if dict.keys.contains("ModeCode") {
            self.modeCode = dict["ModeCode"] as! Int32
        }
        if dict.keys.contains("PaddingModeCode") {
            self.paddingModeCode = dict["PaddingModeCode"] as! Int32
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class GetCurrentModeResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetCurrentModeResponseBody?

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
            var model = GetCurrentModeResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetDomainCountRequest : Tea.TeaModel {
    public var securityToken: String?

    public var version: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.securityToken != nil {
            map["SecurityToken"] = self.securityToken!
        }
        if self.version != nil {
            map["Version"] = self.version!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("SecurityToken") {
            self.securityToken = dict["SecurityToken"] as! String
        }
        if dict.keys.contains("Version") {
            self.version = dict["Version"] as! String
        }
    }
}

public class GetDomainCountResponseBody : Tea.TeaModel {
    public var code: Int32?

    public var data: Int32?

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
        if self.data != nil {
            map["Data"] = self.data!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
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
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class GetDomainCountResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetDomainCountResponseBody?

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
            var model = GetDomainCountResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetDomainsRequest : Tea.TeaModel {
    public var domain: String?

    public var page: String?

    public var pageSize: String?

    public var securityToken: String?

    public var version: String?

    public override init() {
        super.init()
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
        if self.page != nil {
            map["Page"] = self.page!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.securityToken != nil {
            map["SecurityToken"] = self.securityToken!
        }
        if self.version != nil {
            map["Version"] = self.version!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Domain") {
            self.domain = dict["Domain"] as! String
        }
        if dict.keys.contains("Page") {
            self.page = dict["Page"] as! String
        }
        if dict.keys.contains("PageSize") {
            self.pageSize = dict["PageSize"] as! String
        }
        if dict.keys.contains("SecurityToken") {
            self.securityToken = dict["SecurityToken"] as! String
        }
        if dict.keys.contains("Version") {
            self.version = dict["Version"] as! String
        }
    }
}

public class GetDomainsResponseBody : Tea.TeaModel {
    public class DataList : Tea.TeaModel {
        public class UsageData : Tea.TeaModel {
            public var businessType: String?

            public var createdAt: String?

            public var domain: String?

            public var resourceId: String?

            public var sliceFormat: String?

            public var status: Bool?

            public var updatedAt: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.businessType != nil {
                    map["BusinessType"] = self.businessType!
                }
                if self.createdAt != nil {
                    map["CreatedAt"] = self.createdAt!
                }
                if self.domain != nil {
                    map["Domain"] = self.domain!
                }
                if self.resourceId != nil {
                    map["ResourceId"] = self.resourceId!
                }
                if self.sliceFormat != nil {
                    map["SliceFormat"] = self.sliceFormat!
                }
                if self.status != nil {
                    map["Status"] = self.status!
                }
                if self.updatedAt != nil {
                    map["UpdatedAt"] = self.updatedAt!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("BusinessType") {
                    self.businessType = dict["BusinessType"] as! String
                }
                if dict.keys.contains("CreatedAt") {
                    self.createdAt = dict["CreatedAt"] as! String
                }
                if dict.keys.contains("Domain") {
                    self.domain = dict["Domain"] as! String
                }
                if dict.keys.contains("ResourceId") {
                    self.resourceId = dict["ResourceId"] as! String
                }
                if dict.keys.contains("SliceFormat") {
                    self.sliceFormat = dict["SliceFormat"] as! String
                }
                if dict.keys.contains("Status") {
                    self.status = dict["Status"] as! Bool
                }
                if dict.keys.contains("UpdatedAt") {
                    self.updatedAt = dict["UpdatedAt"] as! String
                }
            }
        }
        public var usageData: [GetDomainsResponseBody.DataList.UsageData]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.usageData != nil {
                var tmp : [Any] = []
                for k in self.usageData! {
                    tmp.append(k.toMap())
                }
                map["UsageData"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("UsageData") {
                self.usageData = dict["UsageData"] as! [GetDomainsResponseBody.DataList.UsageData]
            }
        }
    }
    public class Pager : Tea.TeaModel {
        public var page: Int32?

        public var pageSize: Int32?

        public var total: Int32?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.page != nil {
                map["Page"] = self.page!
            }
            if self.pageSize != nil {
                map["PageSize"] = self.pageSize!
            }
            if self.total != nil {
                map["Total"] = self.total!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Page") {
                self.page = dict["Page"] as! Int32
            }
            if dict.keys.contains("PageSize") {
                self.pageSize = dict["PageSize"] as! Int32
            }
            if dict.keys.contains("Total") {
                self.total = dict["Total"] as! Int32
            }
        }
    }
    public var code: Int32?

    public var dataList: GetDomainsResponseBody.DataList?

    public var pager: GetDomainsResponseBody.Pager?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.dataList?.validate()
        try self.pager?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.dataList != nil {
            map["DataList"] = self.dataList?.toMap()
        }
        if self.pager != nil {
            map["Pager"] = self.pager?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! Int32
        }
        if dict.keys.contains("DataList") {
            var model = GetDomainsResponseBody.DataList()
            model.fromMap(dict["DataList"] as! [String: Any])
            self.dataList = model
        }
        if dict.keys.contains("Pager") {
            var model = GetDomainsResponseBody.Pager()
            model.fromMap(dict["Pager"] as! [String: Any])
            self.pager = model
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class GetDomainsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetDomainsResponseBody?

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
            var model = GetDomainsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetExpenseSummaryRequest : Tea.TeaModel {
    public var businessType: String?

    public var domain: String?

    public var endDate: String?

    public var ispName: String?

    public var platformType: String?

    public var region: String?

    public var securityToken: String?

    public var startDate: String?

    public var version: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.businessType != nil {
            map["BusinessType"] = self.businessType!
        }
        if self.domain != nil {
            map["Domain"] = self.domain!
        }
        if self.endDate != nil {
            map["EndDate"] = self.endDate!
        }
        if self.ispName != nil {
            map["IspName"] = self.ispName!
        }
        if self.platformType != nil {
            map["PlatformType"] = self.platformType!
        }
        if self.region != nil {
            map["Region"] = self.region!
        }
        if self.securityToken != nil {
            map["SecurityToken"] = self.securityToken!
        }
        if self.startDate != nil {
            map["StartDate"] = self.startDate!
        }
        if self.version != nil {
            map["Version"] = self.version!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("BusinessType") {
            self.businessType = dict["BusinessType"] as! String
        }
        if dict.keys.contains("Domain") {
            self.domain = dict["Domain"] as! String
        }
        if dict.keys.contains("EndDate") {
            self.endDate = dict["EndDate"] as! String
        }
        if dict.keys.contains("IspName") {
            self.ispName = dict["IspName"] as! String
        }
        if dict.keys.contains("PlatformType") {
            self.platformType = dict["PlatformType"] as! String
        }
        if dict.keys.contains("Region") {
            self.region = dict["Region"] as! String
        }
        if dict.keys.contains("SecurityToken") {
            self.securityToken = dict["SecurityToken"] as! String
        }
        if dict.keys.contains("StartDate") {
            self.startDate = dict["StartDate"] as! String
        }
        if dict.keys.contains("Version") {
            self.version = dict["Version"] as! String
        }
    }
}

public class GetExpenseSummaryResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var coverRate: Double?

        public var forecastFluency: Double?

        public var shareRate: Double?

        public var topBandwidth: Int64?

        public var totalTraffic: Int64?

        public var totalUV: Int32?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.coverRate != nil {
                map["CoverRate"] = self.coverRate!
            }
            if self.forecastFluency != nil {
                map["ForecastFluency"] = self.forecastFluency!
            }
            if self.shareRate != nil {
                map["ShareRate"] = self.shareRate!
            }
            if self.topBandwidth != nil {
                map["TopBandwidth"] = self.topBandwidth!
            }
            if self.totalTraffic != nil {
                map["TotalTraffic"] = self.totalTraffic!
            }
            if self.totalUV != nil {
                map["TotalUV"] = self.totalUV!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("CoverRate") {
                self.coverRate = dict["CoverRate"] as! Double
            }
            if dict.keys.contains("ForecastFluency") {
                self.forecastFluency = dict["ForecastFluency"] as! Double
            }
            if dict.keys.contains("ShareRate") {
                self.shareRate = dict["ShareRate"] as! Double
            }
            if dict.keys.contains("TopBandwidth") {
                self.topBandwidth = dict["TopBandwidth"] as! Int64
            }
            if dict.keys.contains("TotalTraffic") {
                self.totalTraffic = dict["TotalTraffic"] as! Int64
            }
            if dict.keys.contains("TotalUV") {
                self.totalUV = dict["TotalUV"] as! Int32
            }
        }
    }
    public var code: Int32?

    public var data: GetExpenseSummaryResponseBody.Data?

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
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.data != nil {
            map["Data"] = self.data?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! Int32
        }
        if dict.keys.contains("Data") {
            var model = GetExpenseSummaryResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class GetExpenseSummaryResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetExpenseSummaryResponseBody?

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
            var model = GetExpenseSummaryResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetFeeHistoryRequest : Tea.TeaModel {
    public var page: String?

    public var pageSize: String?

    public var securityToken: String?

    public var version: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.page != nil {
            map["Page"] = self.page!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.securityToken != nil {
            map["SecurityToken"] = self.securityToken!
        }
        if self.version != nil {
            map["Version"] = self.version!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Page") {
            self.page = dict["Page"] as! String
        }
        if dict.keys.contains("PageSize") {
            self.pageSize = dict["PageSize"] as! String
        }
        if dict.keys.contains("SecurityToken") {
            self.securityToken = dict["SecurityToken"] as! String
        }
        if dict.keys.contains("Version") {
            self.version = dict["Version"] as! String
        }
    }
}

public class GetFeeHistoryResponseBody : Tea.TeaModel {
    public class FeeList : Tea.TeaModel {
        public class Fee : Tea.TeaModel {
            public var businessType: String?

            public var date: String?

            public var endDate: String?

            public var flowOut: Int32?

            public var levelThreeBandwidth: Int32?

            public var levelThreeTraffic: Int32?

            public var levelTwoBandwidth: Int32?

            public var levelTwoTraffic: Int32?

            public var mode: String?

            public var resourceId: String?

            public var startDate: String?

            public var timeSpan: String?

            public var totalBandwidth: Int32?

            public var totalTraffic: Int32?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.businessType != nil {
                    map["BusinessType"] = self.businessType!
                }
                if self.date != nil {
                    map["Date"] = self.date!
                }
                if self.endDate != nil {
                    map["EndDate"] = self.endDate!
                }
                if self.flowOut != nil {
                    map["FlowOut"] = self.flowOut!
                }
                if self.levelThreeBandwidth != nil {
                    map["LevelThreeBandwidth"] = self.levelThreeBandwidth!
                }
                if self.levelThreeTraffic != nil {
                    map["LevelThreeTraffic"] = self.levelThreeTraffic!
                }
                if self.levelTwoBandwidth != nil {
                    map["LevelTwoBandwidth"] = self.levelTwoBandwidth!
                }
                if self.levelTwoTraffic != nil {
                    map["LevelTwoTraffic"] = self.levelTwoTraffic!
                }
                if self.mode != nil {
                    map["Mode"] = self.mode!
                }
                if self.resourceId != nil {
                    map["ResourceId"] = self.resourceId!
                }
                if self.startDate != nil {
                    map["StartDate"] = self.startDate!
                }
                if self.timeSpan != nil {
                    map["TimeSpan"] = self.timeSpan!
                }
                if self.totalBandwidth != nil {
                    map["TotalBandwidth"] = self.totalBandwidth!
                }
                if self.totalTraffic != nil {
                    map["TotalTraffic"] = self.totalTraffic!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("BusinessType") {
                    self.businessType = dict["BusinessType"] as! String
                }
                if dict.keys.contains("Date") {
                    self.date = dict["Date"] as! String
                }
                if dict.keys.contains("EndDate") {
                    self.endDate = dict["EndDate"] as! String
                }
                if dict.keys.contains("FlowOut") {
                    self.flowOut = dict["FlowOut"] as! Int32
                }
                if dict.keys.contains("LevelThreeBandwidth") {
                    self.levelThreeBandwidth = dict["LevelThreeBandwidth"] as! Int32
                }
                if dict.keys.contains("LevelThreeTraffic") {
                    self.levelThreeTraffic = dict["LevelThreeTraffic"] as! Int32
                }
                if dict.keys.contains("LevelTwoBandwidth") {
                    self.levelTwoBandwidth = dict["LevelTwoBandwidth"] as! Int32
                }
                if dict.keys.contains("LevelTwoTraffic") {
                    self.levelTwoTraffic = dict["LevelTwoTraffic"] as! Int32
                }
                if dict.keys.contains("Mode") {
                    self.mode = dict["Mode"] as! String
                }
                if dict.keys.contains("ResourceId") {
                    self.resourceId = dict["ResourceId"] as! String
                }
                if dict.keys.contains("StartDate") {
                    self.startDate = dict["StartDate"] as! String
                }
                if dict.keys.contains("TimeSpan") {
                    self.timeSpan = dict["TimeSpan"] as! String
                }
                if dict.keys.contains("TotalBandwidth") {
                    self.totalBandwidth = dict["TotalBandwidth"] as! Int32
                }
                if dict.keys.contains("TotalTraffic") {
                    self.totalTraffic = dict["TotalTraffic"] as! Int32
                }
            }
        }
        public var fee: [GetFeeHistoryResponseBody.FeeList.Fee]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.fee != nil {
                var tmp : [Any] = []
                for k in self.fee! {
                    tmp.append(k.toMap())
                }
                map["Fee"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Fee") {
                self.fee = dict["Fee"] as! [GetFeeHistoryResponseBody.FeeList.Fee]
            }
        }
    }
    public class Pager : Tea.TeaModel {
        public var page: Int32?

        public var pageSize: Int32?

        public var total: Int32?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.page != nil {
                map["Page"] = self.page!
            }
            if self.pageSize != nil {
                map["PageSize"] = self.pageSize!
            }
            if self.total != nil {
                map["Total"] = self.total!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Page") {
                self.page = dict["Page"] as! Int32
            }
            if dict.keys.contains("PageSize") {
                self.pageSize = dict["PageSize"] as! Int32
            }
            if dict.keys.contains("Total") {
                self.total = dict["Total"] as! Int32
            }
        }
    }
    public var code: Int32?

    public var feeList: GetFeeHistoryResponseBody.FeeList?

    public var pager: GetFeeHistoryResponseBody.Pager?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.feeList?.validate()
        try self.pager?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.feeList != nil {
            map["FeeList"] = self.feeList?.toMap()
        }
        if self.pager != nil {
            map["Pager"] = self.pager?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! Int32
        }
        if dict.keys.contains("FeeList") {
            var model = GetFeeHistoryResponseBody.FeeList()
            model.fromMap(dict["FeeList"] as! [String: Any])
            self.feeList = model
        }
        if dict.keys.contains("Pager") {
            var model = GetFeeHistoryResponseBody.Pager()
            model.fromMap(dict["Pager"] as! [String: Any])
            self.pager = model
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class GetFeeHistoryResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetFeeHistoryResponseBody?

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
            var model = GetFeeHistoryResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetFirstFrameDelayDataRequest : Tea.TeaModel {
    public var businessType: String?

    public var domain: String?

    public var endDate: String?

    public var ispName: String?

    public var platformType: String?

    public var region: String?

    public var securityToken: String?

    public var startDate: String?

    public var version: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.businessType != nil {
            map["BusinessType"] = self.businessType!
        }
        if self.domain != nil {
            map["Domain"] = self.domain!
        }
        if self.endDate != nil {
            map["EndDate"] = self.endDate!
        }
        if self.ispName != nil {
            map["IspName"] = self.ispName!
        }
        if self.platformType != nil {
            map["PlatformType"] = self.platformType!
        }
        if self.region != nil {
            map["Region"] = self.region!
        }
        if self.securityToken != nil {
            map["SecurityToken"] = self.securityToken!
        }
        if self.startDate != nil {
            map["StartDate"] = self.startDate!
        }
        if self.version != nil {
            map["Version"] = self.version!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("BusinessType") {
            self.businessType = dict["BusinessType"] as! String
        }
        if dict.keys.contains("Domain") {
            self.domain = dict["Domain"] as! String
        }
        if dict.keys.contains("EndDate") {
            self.endDate = dict["EndDate"] as! String
        }
        if dict.keys.contains("IspName") {
            self.ispName = dict["IspName"] as! String
        }
        if dict.keys.contains("PlatformType") {
            self.platformType = dict["PlatformType"] as! String
        }
        if dict.keys.contains("Region") {
            self.region = dict["Region"] as! String
        }
        if dict.keys.contains("SecurityToken") {
            self.securityToken = dict["SecurityToken"] as! String
        }
        if dict.keys.contains("StartDate") {
            self.startDate = dict["StartDate"] as! String
        }
        if dict.keys.contains("Version") {
            self.version = dict["Version"] as! String
        }
    }
}

public class GetFirstFrameDelayDataResponseBody : Tea.TeaModel {
    public class DataList : Tea.TeaModel {
        public class UsageData : Tea.TeaModel {
            public class Values : Tea.TeaModel {
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
                    if self.values != nil {
                        map["Values"] = self.values!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("Values") {
                        self.values = dict["Values"] as! [String]
                    }
                }
            }
            public var date: String?

            public var values: GetFirstFrameDelayDataResponseBody.DataList.UsageData.Values?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
                try self.values?.validate()
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.date != nil {
                    map["Date"] = self.date!
                }
                if self.values != nil {
                    map["Values"] = self.values?.toMap()
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("Date") {
                    self.date = dict["Date"] as! String
                }
                if dict.keys.contains("Values") {
                    var model = GetFirstFrameDelayDataResponseBody.DataList.UsageData.Values()
                    model.fromMap(dict["Values"] as! [String: Any])
                    self.values = model
                }
            }
        }
        public var usageData: [GetFirstFrameDelayDataResponseBody.DataList.UsageData]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.usageData != nil {
                var tmp : [Any] = []
                for k in self.usageData! {
                    tmp.append(k.toMap())
                }
                map["UsageData"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("UsageData") {
                self.usageData = dict["UsageData"] as! [GetFirstFrameDelayDataResponseBody.DataList.UsageData]
            }
        }
    }
    public class Labels : Tea.TeaModel {
        public var label: [String]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.label != nil {
                map["Label"] = self.label!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Label") {
                self.label = dict["Label"] as! [String]
            }
        }
    }
    public var code: Int32?

    public var dataList: GetFirstFrameDelayDataResponseBody.DataList?

    public var labels: GetFirstFrameDelayDataResponseBody.Labels?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.dataList?.validate()
        try self.labels?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.dataList != nil {
            map["DataList"] = self.dataList?.toMap()
        }
        if self.labels != nil {
            map["Labels"] = self.labels?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! Int32
        }
        if dict.keys.contains("DataList") {
            var model = GetFirstFrameDelayDataResponseBody.DataList()
            model.fromMap(dict["DataList"] as! [String: Any])
            self.dataList = model
        }
        if dict.keys.contains("Labels") {
            var model = GetFirstFrameDelayDataResponseBody.Labels()
            model.fromMap(dict["Labels"] as! [String: Any])
            self.labels = model
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class GetFirstFrameDelayDataResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetFirstFrameDelayDataResponseBody?

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
            var model = GetFirstFrameDelayDataResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetFluencyDataRequest : Tea.TeaModel {
    public var businessType: String?

    public var domain: String?

    public var endDate: String?

    public var ispName: String?

    public var platformType: String?

    public var region: String?

    public var securityToken: String?

    public var startDate: String?

    public var version: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.businessType != nil {
            map["BusinessType"] = self.businessType!
        }
        if self.domain != nil {
            map["Domain"] = self.domain!
        }
        if self.endDate != nil {
            map["EndDate"] = self.endDate!
        }
        if self.ispName != nil {
            map["IspName"] = self.ispName!
        }
        if self.platformType != nil {
            map["PlatformType"] = self.platformType!
        }
        if self.region != nil {
            map["Region"] = self.region!
        }
        if self.securityToken != nil {
            map["SecurityToken"] = self.securityToken!
        }
        if self.startDate != nil {
            map["StartDate"] = self.startDate!
        }
        if self.version != nil {
            map["Version"] = self.version!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("BusinessType") {
            self.businessType = dict["BusinessType"] as! String
        }
        if dict.keys.contains("Domain") {
            self.domain = dict["Domain"] as! String
        }
        if dict.keys.contains("EndDate") {
            self.endDate = dict["EndDate"] as! String
        }
        if dict.keys.contains("IspName") {
            self.ispName = dict["IspName"] as! String
        }
        if dict.keys.contains("PlatformType") {
            self.platformType = dict["PlatformType"] as! String
        }
        if dict.keys.contains("Region") {
            self.region = dict["Region"] as! String
        }
        if dict.keys.contains("SecurityToken") {
            self.securityToken = dict["SecurityToken"] as! String
        }
        if dict.keys.contains("StartDate") {
            self.startDate = dict["StartDate"] as! String
        }
        if dict.keys.contains("Version") {
            self.version = dict["Version"] as! String
        }
    }
}

public class GetFluencyDataResponseBody : Tea.TeaModel {
    public class DataList : Tea.TeaModel {
        public class UsageData : Tea.TeaModel {
            public class Values : Tea.TeaModel {
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
                    if self.values != nil {
                        map["Values"] = self.values!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("Values") {
                        self.values = dict["Values"] as! [String]
                    }
                }
            }
            public var date: String?

            public var values: GetFluencyDataResponseBody.DataList.UsageData.Values?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
                try self.values?.validate()
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.date != nil {
                    map["Date"] = self.date!
                }
                if self.values != nil {
                    map["Values"] = self.values?.toMap()
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("Date") {
                    self.date = dict["Date"] as! String
                }
                if dict.keys.contains("Values") {
                    var model = GetFluencyDataResponseBody.DataList.UsageData.Values()
                    model.fromMap(dict["Values"] as! [String: Any])
                    self.values = model
                }
            }
        }
        public var usageData: [GetFluencyDataResponseBody.DataList.UsageData]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.usageData != nil {
                var tmp : [Any] = []
                for k in self.usageData! {
                    tmp.append(k.toMap())
                }
                map["UsageData"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("UsageData") {
                self.usageData = dict["UsageData"] as! [GetFluencyDataResponseBody.DataList.UsageData]
            }
        }
    }
    public class Labels : Tea.TeaModel {
        public var label: [String]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.label != nil {
                map["Label"] = self.label!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Label") {
                self.label = dict["Label"] as! [String]
            }
        }
    }
    public var code: Int32?

    public var dataList: GetFluencyDataResponseBody.DataList?

    public var labels: GetFluencyDataResponseBody.Labels?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.dataList?.validate()
        try self.labels?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.dataList != nil {
            map["DataList"] = self.dataList?.toMap()
        }
        if self.labels != nil {
            map["Labels"] = self.labels?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! Int32
        }
        if dict.keys.contains("DataList") {
            var model = GetFluencyDataResponseBody.DataList()
            model.fromMap(dict["DataList"] as! [String: Any])
            self.dataList = model
        }
        if dict.keys.contains("Labels") {
            var model = GetFluencyDataResponseBody.Labels()
            model.fromMap(dict["Labels"] as! [String: Any])
            self.labels = model
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class GetFluencyDataResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetFluencyDataResponseBody?

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
            var model = GetFluencyDataResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetLogsListRequest : Tea.TeaModel {
    public var date: String?

    public var domain: String?

    public var endTime: String?

    public var securityToken: String?

    public var startTime: String?

    public var version: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.date != nil {
            map["Date"] = self.date!
        }
        if self.domain != nil {
            map["Domain"] = self.domain!
        }
        if self.endTime != nil {
            map["EndTime"] = self.endTime!
        }
        if self.securityToken != nil {
            map["SecurityToken"] = self.securityToken!
        }
        if self.startTime != nil {
            map["StartTime"] = self.startTime!
        }
        if self.version != nil {
            map["Version"] = self.version!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Date") {
            self.date = dict["Date"] as! String
        }
        if dict.keys.contains("Domain") {
            self.domain = dict["Domain"] as! String
        }
        if dict.keys.contains("EndTime") {
            self.endTime = dict["EndTime"] as! String
        }
        if dict.keys.contains("SecurityToken") {
            self.securityToken = dict["SecurityToken"] as! String
        }
        if dict.keys.contains("StartTime") {
            self.startTime = dict["StartTime"] as! String
        }
        if dict.keys.contains("Version") {
            self.version = dict["Version"] as! String
        }
    }
}

public class GetLogsListResponseBody : Tea.TeaModel {
    public class LogList : Tea.TeaModel {
        public class Log : Tea.TeaModel {
            public var endDate: String?

            public var fileName: String?

            public var startDate: String?

            public var url: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.endDate != nil {
                    map["EndDate"] = self.endDate!
                }
                if self.fileName != nil {
                    map["FileName"] = self.fileName!
                }
                if self.startDate != nil {
                    map["StartDate"] = self.startDate!
                }
                if self.url != nil {
                    map["Url"] = self.url!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("EndDate") {
                    self.endDate = dict["EndDate"] as! String
                }
                if dict.keys.contains("FileName") {
                    self.fileName = dict["FileName"] as! String
                }
                if dict.keys.contains("StartDate") {
                    self.startDate = dict["StartDate"] as! String
                }
                if dict.keys.contains("Url") {
                    self.url = dict["Url"] as! String
                }
            }
        }
        public var log: [GetLogsListResponseBody.LogList.Log]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.log != nil {
                var tmp : [Any] = []
                for k in self.log! {
                    tmp.append(k.toMap())
                }
                map["Log"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Log") {
                self.log = dict["Log"] as! [GetLogsListResponseBody.LogList.Log]
            }
        }
    }
    public var code: Int32?

    public var logList: GetLogsListResponseBody.LogList?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.logList?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.logList != nil {
            map["LogList"] = self.logList?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! Int32
        }
        if dict.keys.contains("LogList") {
            var model = GetLogsListResponseBody.LogList()
            model.fromMap(dict["LogList"] as! [String: Any])
            self.logList = model
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class GetLogsListResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetLogsListResponseBody?

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
            var model = GetLogsListResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetShareRateDataRequest : Tea.TeaModel {
    public var businessType: String?

    public var domain: String?

    public var endDate: String?

    public var ispName: String?

    public var platformType: String?

    public var region: String?

    public var securityToken: String?

    public var startDate: String?

    public var version: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.businessType != nil {
            map["BusinessType"] = self.businessType!
        }
        if self.domain != nil {
            map["Domain"] = self.domain!
        }
        if self.endDate != nil {
            map["EndDate"] = self.endDate!
        }
        if self.ispName != nil {
            map["IspName"] = self.ispName!
        }
        if self.platformType != nil {
            map["PlatformType"] = self.platformType!
        }
        if self.region != nil {
            map["Region"] = self.region!
        }
        if self.securityToken != nil {
            map["SecurityToken"] = self.securityToken!
        }
        if self.startDate != nil {
            map["StartDate"] = self.startDate!
        }
        if self.version != nil {
            map["Version"] = self.version!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("BusinessType") {
            self.businessType = dict["BusinessType"] as! String
        }
        if dict.keys.contains("Domain") {
            self.domain = dict["Domain"] as! String
        }
        if dict.keys.contains("EndDate") {
            self.endDate = dict["EndDate"] as! String
        }
        if dict.keys.contains("IspName") {
            self.ispName = dict["IspName"] as! String
        }
        if dict.keys.contains("PlatformType") {
            self.platformType = dict["PlatformType"] as! String
        }
        if dict.keys.contains("Region") {
            self.region = dict["Region"] as! String
        }
        if dict.keys.contains("SecurityToken") {
            self.securityToken = dict["SecurityToken"] as! String
        }
        if dict.keys.contains("StartDate") {
            self.startDate = dict["StartDate"] as! String
        }
        if dict.keys.contains("Version") {
            self.version = dict["Version"] as! String
        }
    }
}

public class GetShareRateDataResponseBody : Tea.TeaModel {
    public class DataList : Tea.TeaModel {
        public class UsageData : Tea.TeaModel {
            public class Values : Tea.TeaModel {
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
                    if self.values != nil {
                        map["Values"] = self.values!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("Values") {
                        self.values = dict["Values"] as! [String]
                    }
                }
            }
            public var date: String?

            public var values: GetShareRateDataResponseBody.DataList.UsageData.Values?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
                try self.values?.validate()
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.date != nil {
                    map["Date"] = self.date!
                }
                if self.values != nil {
                    map["Values"] = self.values?.toMap()
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("Date") {
                    self.date = dict["Date"] as! String
                }
                if dict.keys.contains("Values") {
                    var model = GetShareRateDataResponseBody.DataList.UsageData.Values()
                    model.fromMap(dict["Values"] as! [String: Any])
                    self.values = model
                }
            }
        }
        public var usageData: [GetShareRateDataResponseBody.DataList.UsageData]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.usageData != nil {
                var tmp : [Any] = []
                for k in self.usageData! {
                    tmp.append(k.toMap())
                }
                map["UsageData"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("UsageData") {
                self.usageData = dict["UsageData"] as! [GetShareRateDataResponseBody.DataList.UsageData]
            }
        }
    }
    public class Labels : Tea.TeaModel {
        public var label: [String]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.label != nil {
                map["Label"] = self.label!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Label") {
                self.label = dict["Label"] as! [String]
            }
        }
    }
    public var code: Int32?

    public var dataList: GetShareRateDataResponseBody.DataList?

    public var labels: GetShareRateDataResponseBody.Labels?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.dataList?.validate()
        try self.labels?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.dataList != nil {
            map["DataList"] = self.dataList?.toMap()
        }
        if self.labels != nil {
            map["Labels"] = self.labels?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! Int32
        }
        if dict.keys.contains("DataList") {
            var model = GetShareRateDataResponseBody.DataList()
            model.fromMap(dict["DataList"] as! [String: Any])
            self.dataList = model
        }
        if dict.keys.contains("Labels") {
            var model = GetShareRateDataResponseBody.Labels()
            model.fromMap(dict["Labels"] as! [String: Any])
            self.labels = model
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class GetShareRateDataResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetShareRateDataResponseBody?

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
            var model = GetShareRateDataResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetTokenListRequest : Tea.TeaModel {
    public var securityToken: String?

    public var version: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.securityToken != nil {
            map["SecurityToken"] = self.securityToken!
        }
        if self.version != nil {
            map["Version"] = self.version!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("SecurityToken") {
            self.securityToken = dict["SecurityToken"] as! String
        }
        if dict.keys.contains("Version") {
            self.version = dict["Version"] as! String
        }
    }
}

public class GetTokenListResponseBody : Tea.TeaModel {
    public class TokenList : Tea.TeaModel {
        public class Token : Tea.TeaModel {
            public var clientId: String?

            public var createdAt: String?

            public var platformName: String?

            public var platformType: String?

            public var resourceId: String?

            public var token: String?

            public var updatedAt: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.clientId != nil {
                    map["ClientId"] = self.clientId!
                }
                if self.createdAt != nil {
                    map["CreatedAt"] = self.createdAt!
                }
                if self.platformName != nil {
                    map["PlatformName"] = self.platformName!
                }
                if self.platformType != nil {
                    map["PlatformType"] = self.platformType!
                }
                if self.resourceId != nil {
                    map["ResourceId"] = self.resourceId!
                }
                if self.token != nil {
                    map["Token"] = self.token!
                }
                if self.updatedAt != nil {
                    map["UpdatedAt"] = self.updatedAt!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("ClientId") {
                    self.clientId = dict["ClientId"] as! String
                }
                if dict.keys.contains("CreatedAt") {
                    self.createdAt = dict["CreatedAt"] as! String
                }
                if dict.keys.contains("PlatformName") {
                    self.platformName = dict["PlatformName"] as! String
                }
                if dict.keys.contains("PlatformType") {
                    self.platformType = dict["PlatformType"] as! String
                }
                if dict.keys.contains("ResourceId") {
                    self.resourceId = dict["ResourceId"] as! String
                }
                if dict.keys.contains("Token") {
                    self.token = dict["Token"] as! String
                }
                if dict.keys.contains("UpdatedAt") {
                    self.updatedAt = dict["UpdatedAt"] as! String
                }
            }
        }
        public var token: [GetTokenListResponseBody.TokenList.Token]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.token != nil {
                var tmp : [Any] = []
                for k in self.token! {
                    tmp.append(k.toMap())
                }
                map["Token"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Token") {
                self.token = dict["Token"] as! [GetTokenListResponseBody.TokenList.Token]
            }
        }
    }
    public var code: Int32?

    public var requestId: String?

    public var tokenList: GetTokenListResponseBody.TokenList?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.tokenList?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.tokenList != nil {
            map["TokenList"] = self.tokenList?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! Int32
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("TokenList") {
            var model = GetTokenListResponseBody.TokenList()
            model.fromMap(dict["TokenList"] as! [String: Any])
            self.tokenList = model
        }
    }
}

public class GetTokenListResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetTokenListResponseBody?

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
            var model = GetTokenListResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetTrafficByRegionRequest : Tea.TeaModel {
    public var securityToken: String?

    public var version: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.securityToken != nil {
            map["SecurityToken"] = self.securityToken!
        }
        if self.version != nil {
            map["Version"] = self.version!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("SecurityToken") {
            self.securityToken = dict["SecurityToken"] as! String
        }
        if dict.keys.contains("Version") {
            self.version = dict["Version"] as! String
        }
    }
}

public class GetTrafficByRegionResponseBody : Tea.TeaModel {
    public class TrafficDataList : Tea.TeaModel {
        public class TrafficData : Tea.TeaModel {
            public var name: String?

            public var traffic: Int64?

            public override init() {
                super.init()
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
                if self.traffic != nil {
                    map["Traffic"] = self.traffic!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("Name") {
                    self.name = dict["Name"] as! String
                }
                if dict.keys.contains("Traffic") {
                    self.traffic = dict["Traffic"] as! Int64
                }
            }
        }
        public var trafficData: [GetTrafficByRegionResponseBody.TrafficDataList.TrafficData]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
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
            if dict.keys.contains("TrafficData") {
                self.trafficData = dict["TrafficData"] as! [GetTrafficByRegionResponseBody.TrafficDataList.TrafficData]
            }
        }
    }
    public var code: Int32?

    public var requestId: String?

    public var trafficDataList: GetTrafficByRegionResponseBody.TrafficDataList?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.trafficDataList?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.trafficDataList != nil {
            map["TrafficDataList"] = self.trafficDataList?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! Int32
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("TrafficDataList") {
            var model = GetTrafficByRegionResponseBody.TrafficDataList()
            model.fromMap(dict["TrafficDataList"] as! [String: Any])
            self.trafficDataList = model
        }
    }
}

public class GetTrafficByRegionResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetTrafficByRegionResponseBody?

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
            var model = GetTrafficByRegionResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetTrafficDataRequest : Tea.TeaModel {
    public var businessType: String?

    public var domain: String?

    public var endDate: String?

    public var ispName: String?

    public var platformType: String?

    public var region: String?

    public var securityToken: String?

    public var startDate: String?

    public var version: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.businessType != nil {
            map["BusinessType"] = self.businessType!
        }
        if self.domain != nil {
            map["Domain"] = self.domain!
        }
        if self.endDate != nil {
            map["EndDate"] = self.endDate!
        }
        if self.ispName != nil {
            map["IspName"] = self.ispName!
        }
        if self.platformType != nil {
            map["PlatformType"] = self.platformType!
        }
        if self.region != nil {
            map["Region"] = self.region!
        }
        if self.securityToken != nil {
            map["SecurityToken"] = self.securityToken!
        }
        if self.startDate != nil {
            map["StartDate"] = self.startDate!
        }
        if self.version != nil {
            map["Version"] = self.version!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("BusinessType") {
            self.businessType = dict["BusinessType"] as! String
        }
        if dict.keys.contains("Domain") {
            self.domain = dict["Domain"] as! String
        }
        if dict.keys.contains("EndDate") {
            self.endDate = dict["EndDate"] as! String
        }
        if dict.keys.contains("IspName") {
            self.ispName = dict["IspName"] as! String
        }
        if dict.keys.contains("PlatformType") {
            self.platformType = dict["PlatformType"] as! String
        }
        if dict.keys.contains("Region") {
            self.region = dict["Region"] as! String
        }
        if dict.keys.contains("SecurityToken") {
            self.securityToken = dict["SecurityToken"] as! String
        }
        if dict.keys.contains("StartDate") {
            self.startDate = dict["StartDate"] as! String
        }
        if dict.keys.contains("Version") {
            self.version = dict["Version"] as! String
        }
    }
}

public class GetTrafficDataResponseBody : Tea.TeaModel {
    public class DataList : Tea.TeaModel {
        public class UsageData : Tea.TeaModel {
            public class Values : Tea.TeaModel {
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
                    if self.values != nil {
                        map["Values"] = self.values!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("Values") {
                        self.values = dict["Values"] as! [String]
                    }
                }
            }
            public var date: String?

            public var values: GetTrafficDataResponseBody.DataList.UsageData.Values?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
                try self.values?.validate()
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.date != nil {
                    map["Date"] = self.date!
                }
                if self.values != nil {
                    map["Values"] = self.values?.toMap()
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("Date") {
                    self.date = dict["Date"] as! String
                }
                if dict.keys.contains("Values") {
                    var model = GetTrafficDataResponseBody.DataList.UsageData.Values()
                    model.fromMap(dict["Values"] as! [String: Any])
                    self.values = model
                }
            }
        }
        public var usageData: [GetTrafficDataResponseBody.DataList.UsageData]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.usageData != nil {
                var tmp : [Any] = []
                for k in self.usageData! {
                    tmp.append(k.toMap())
                }
                map["UsageData"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("UsageData") {
                self.usageData = dict["UsageData"] as! [GetTrafficDataResponseBody.DataList.UsageData]
            }
        }
    }
    public class Labels : Tea.TeaModel {
        public var label: [String]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.label != nil {
                map["Label"] = self.label!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Label") {
                self.label = dict["Label"] as! [String]
            }
        }
    }
    public var code: Int32?

    public var dataList: GetTrafficDataResponseBody.DataList?

    public var labels: GetTrafficDataResponseBody.Labels?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.dataList?.validate()
        try self.labels?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.dataList != nil {
            map["DataList"] = self.dataList?.toMap()
        }
        if self.labels != nil {
            map["Labels"] = self.labels?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! Int32
        }
        if dict.keys.contains("DataList") {
            var model = GetTrafficDataResponseBody.DataList()
            model.fromMap(dict["DataList"] as! [String: Any])
            self.dataList = model
        }
        if dict.keys.contains("Labels") {
            var model = GetTrafficDataResponseBody.Labels()
            model.fromMap(dict["Labels"] as! [String: Any])
            self.labels = model
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class GetTrafficDataResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetTrafficDataResponseBody?

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
            var model = GetTrafficDataResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class StartDomainRequest : Tea.TeaModel {
    public var domain: String?

    public var securityToken: String?

    public var version: String?

    public override init() {
        super.init()
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
        if self.securityToken != nil {
            map["SecurityToken"] = self.securityToken!
        }
        if self.version != nil {
            map["Version"] = self.version!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Domain") {
            self.domain = dict["Domain"] as! String
        }
        if dict.keys.contains("SecurityToken") {
            self.securityToken = dict["SecurityToken"] as! String
        }
        if dict.keys.contains("Version") {
            self.version = dict["Version"] as! String
        }
    }
}

public class StartDomainResponseBody : Tea.TeaModel {
    public var code: Int32?

    public var requestId: String?

    public var resourceId: String?

    public override init() {
        super.init()
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
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.resourceId != nil {
            map["ResourceId"] = self.resourceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! Int32
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("ResourceId") {
            self.resourceId = dict["ResourceId"] as! String
        }
    }
}

public class StartDomainResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: StartDomainResponseBody?

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
            var model = StartDomainResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class StopDomainRequest : Tea.TeaModel {
    public var domain: String?

    public var securityToken: String?

    public var version: String?

    public override init() {
        super.init()
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
        if self.securityToken != nil {
            map["SecurityToken"] = self.securityToken!
        }
        if self.version != nil {
            map["Version"] = self.version!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Domain") {
            self.domain = dict["Domain"] as! String
        }
        if dict.keys.contains("SecurityToken") {
            self.securityToken = dict["SecurityToken"] as! String
        }
        if dict.keys.contains("Version") {
            self.version = dict["Version"] as! String
        }
    }
}

public class StopDomainResponseBody : Tea.TeaModel {
    public var code: Int32?

    public var requestId: String?

    public var resourceId: String?

    public override init() {
        super.init()
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
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.resourceId != nil {
            map["ResourceId"] = self.resourceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! Int32
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("ResourceId") {
            self.resourceId = dict["ResourceId"] as! String
        }
    }
}

public class StopDomainResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: StopDomainResponseBody?

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
            var model = StopDomainResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}
