import Foundation
import Tea
import TeaUtils
import AlibabacloudOpenApi
import AlibabaCloudOpenApiUtil
import AlibabacloudEndpointUtil

public class AbolishApiRequest : Tea.TeaModel {
    public var apiId: String?

    public var groupId: String?

    public var stageName: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.apiId != nil {
            map["ApiId"] = self.apiId!
        }
        if self.groupId != nil {
            map["GroupId"] = self.groupId!
        }
        if self.stageName != nil {
            map["StageName"] = self.stageName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ApiId") && dict["ApiId"] != nil {
            self.apiId = dict["ApiId"] as! String
        }
        if dict.keys.contains("GroupId") && dict["GroupId"] != nil {
            self.groupId = dict["GroupId"] as! String
        }
        if dict.keys.contains("StageName") && dict["StageName"] != nil {
            self.stageName = dict["StageName"] as! String
        }
    }
}

public class AbolishApiResponseBody : Tea.TeaModel {
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
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class AbolishApiResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: AbolishApiResponseBody?

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
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = AbolishApiResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class AbolishApiForInnerRequest : Tea.TeaModel {
    public var aliUid: Int64?

    public var apiId: String?

    public var groupId: String?

    public var stageName: String?

    public override init() {
        super.init()
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
        if self.apiId != nil {
            map["ApiId"] = self.apiId!
        }
        if self.groupId != nil {
            map["GroupId"] = self.groupId!
        }
        if self.stageName != nil {
            map["StageName"] = self.stageName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AliUid") && dict["AliUid"] != nil {
            self.aliUid = dict["AliUid"] as! Int64
        }
        if dict.keys.contains("ApiId") && dict["ApiId"] != nil {
            self.apiId = dict["ApiId"] as! String
        }
        if dict.keys.contains("GroupId") && dict["GroupId"] != nil {
            self.groupId = dict["GroupId"] as! String
        }
        if dict.keys.contains("StageName") && dict["StageName"] != nil {
            self.stageName = dict["StageName"] as! String
        }
    }
}

public class AbolishApiForInnerResponseBody : Tea.TeaModel {
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
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class AbolishApiForInnerResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: AbolishApiForInnerResponseBody?

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
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = AbolishApiForInnerResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class AddBlackListRequest : Tea.TeaModel {
    public var blackContent: String?

    public var blackType: String?

    public var description_: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.blackContent != nil {
            map["BlackContent"] = self.blackContent!
        }
        if self.blackType != nil {
            map["BlackType"] = self.blackType!
        }
        if self.description_ != nil {
            map["Description"] = self.description_!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("BlackContent") && dict["BlackContent"] != nil {
            self.blackContent = dict["BlackContent"] as! String
        }
        if dict.keys.contains("BlackType") && dict["BlackType"] != nil {
            self.blackType = dict["BlackType"] as! String
        }
        if dict.keys.contains("Description") && dict["Description"] != nil {
            self.description_ = dict["Description"] as! String
        }
    }
}

public class AddBlackListResponseBody : Tea.TeaModel {
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
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class AddBlackListResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: AddBlackListResponseBody?

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
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = AddBlackListResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class AddTrafficSpecialControlRequest : Tea.TeaModel {
    public var specialKey: String?

    public var specialType: String?

    public var trafficControlId: String?

    public var trafficValue: Int32?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.specialKey != nil {
            map["SpecialKey"] = self.specialKey!
        }
        if self.specialType != nil {
            map["SpecialType"] = self.specialType!
        }
        if self.trafficControlId != nil {
            map["TrafficControlId"] = self.trafficControlId!
        }
        if self.trafficValue != nil {
            map["TrafficValue"] = self.trafficValue!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("SpecialKey") && dict["SpecialKey"] != nil {
            self.specialKey = dict["SpecialKey"] as! String
        }
        if dict.keys.contains("SpecialType") && dict["SpecialType"] != nil {
            self.specialType = dict["SpecialType"] as! String
        }
        if dict.keys.contains("TrafficControlId") && dict["TrafficControlId"] != nil {
            self.trafficControlId = dict["TrafficControlId"] as! String
        }
        if dict.keys.contains("TrafficValue") && dict["TrafficValue"] != nil {
            self.trafficValue = dict["TrafficValue"] as! Int32
        }
    }
}

public class AddTrafficSpecialControlResponseBody : Tea.TeaModel {
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
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class AddTrafficSpecialControlResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: AddTrafficSpecialControlResponseBody?

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
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = AddTrafficSpecialControlResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class CheckAccountForInnerRequest : Tea.TeaModel {
    public var aliUid: Int64?

    public override init() {
        super.init()
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
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AliUid") && dict["AliUid"] != nil {
            self.aliUid = dict["AliUid"] as! Int64
        }
    }
}

public class CheckAccountForInnerResponseBody : Tea.TeaModel {
    public var checkResult: Bool?

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
        if self.checkResult != nil {
            map["CheckResult"] = self.checkResult!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("CheckResult") && dict["CheckResult"] != nil {
            self.checkResult = dict["CheckResult"] as! Bool
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class CheckAccountForInnerResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CheckAccountForInnerResponseBody?

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
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = CheckAccountForInnerResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class CheckAoneAppAuditRequest : Tea.TeaModel {
    public var aoneAppName: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.aoneAppName != nil {
            map["AoneAppName"] = self.aoneAppName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AoneAppName") && dict["AoneAppName"] != nil {
            self.aoneAppName = dict["AoneAppName"] as! String
        }
    }
}

public class CheckAoneAppAuditResponseBody : Tea.TeaModel {
    public var checkResult: Bool?

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
        if self.checkResult != nil {
            map["CheckResult"] = self.checkResult!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("CheckResult") && dict["CheckResult"] != nil {
            self.checkResult = dict["CheckResult"] as! Bool
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class CheckAoneAppAuditResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CheckAoneAppAuditResponseBody?

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
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = CheckAoneAppAuditResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class CopyConsumerOpenForInnerRequest : Tea.TeaModel {
    public var copyList: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.copyList != nil {
            map["CopyList"] = self.copyList!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("CopyList") && dict["CopyList"] != nil {
            self.copyList = dict["CopyList"] as! String
        }
    }
}

public class CopyConsumerOpenForInnerResponseBody : Tea.TeaModel {
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
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class CopyConsumerOpenForInnerResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CopyConsumerOpenForInnerResponseBody?

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
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = CopyConsumerOpenForInnerResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class CreateApiRequest : Tea.TeaModel {
    public var apiName: String?

    public var authType: String?

    public var bodyFormat: String?

    public var constantParameters: String?

    public var description_: String?

    public var groupId: String?

    public var httpMethod: String?

    public var httpProtocol: String?

    public var path: String?

    public var pathParameters: String?

    public var postBodyDescription: String?

    public var postBodyType: String?

    public var requestBody: String?

    public var requestHeaders: String?

    public var requestQueries: String?

    public var resultSample: String?

    public var resultType: String?

    public var serviceAddress: String?

    public var serviceProtocol: String?

    public var serviceTimeout: Int32?

    public var systemParameters: String?

    public var visibility: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.apiName != nil {
            map["ApiName"] = self.apiName!
        }
        if self.authType != nil {
            map["AuthType"] = self.authType!
        }
        if self.bodyFormat != nil {
            map["BodyFormat"] = self.bodyFormat!
        }
        if self.constantParameters != nil {
            map["ConstantParameters"] = self.constantParameters!
        }
        if self.description_ != nil {
            map["Description"] = self.description_!
        }
        if self.groupId != nil {
            map["GroupId"] = self.groupId!
        }
        if self.httpMethod != nil {
            map["HttpMethod"] = self.httpMethod!
        }
        if self.httpProtocol != nil {
            map["HttpProtocol"] = self.httpProtocol!
        }
        if self.path != nil {
            map["Path"] = self.path!
        }
        if self.pathParameters != nil {
            map["PathParameters"] = self.pathParameters!
        }
        if self.postBodyDescription != nil {
            map["PostBodyDescription"] = self.postBodyDescription!
        }
        if self.postBodyType != nil {
            map["PostBodyType"] = self.postBodyType!
        }
        if self.requestBody != nil {
            map["RequestBody"] = self.requestBody!
        }
        if self.requestHeaders != nil {
            map["RequestHeaders"] = self.requestHeaders!
        }
        if self.requestQueries != nil {
            map["RequestQueries"] = self.requestQueries!
        }
        if self.resultSample != nil {
            map["ResultSample"] = self.resultSample!
        }
        if self.resultType != nil {
            map["ResultType"] = self.resultType!
        }
        if self.serviceAddress != nil {
            map["ServiceAddress"] = self.serviceAddress!
        }
        if self.serviceProtocol != nil {
            map["ServiceProtocol"] = self.serviceProtocol!
        }
        if self.serviceTimeout != nil {
            map["ServiceTimeout"] = self.serviceTimeout!
        }
        if self.systemParameters != nil {
            map["SystemParameters"] = self.systemParameters!
        }
        if self.visibility != nil {
            map["Visibility"] = self.visibility!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ApiName") && dict["ApiName"] != nil {
            self.apiName = dict["ApiName"] as! String
        }
        if dict.keys.contains("AuthType") && dict["AuthType"] != nil {
            self.authType = dict["AuthType"] as! String
        }
        if dict.keys.contains("BodyFormat") && dict["BodyFormat"] != nil {
            self.bodyFormat = dict["BodyFormat"] as! String
        }
        if dict.keys.contains("ConstantParameters") && dict["ConstantParameters"] != nil {
            self.constantParameters = dict["ConstantParameters"] as! String
        }
        if dict.keys.contains("Description") && dict["Description"] != nil {
            self.description_ = dict["Description"] as! String
        }
        if dict.keys.contains("GroupId") && dict["GroupId"] != nil {
            self.groupId = dict["GroupId"] as! String
        }
        if dict.keys.contains("HttpMethod") && dict["HttpMethod"] != nil {
            self.httpMethod = dict["HttpMethod"] as! String
        }
        if dict.keys.contains("HttpProtocol") && dict["HttpProtocol"] != nil {
            self.httpProtocol = dict["HttpProtocol"] as! String
        }
        if dict.keys.contains("Path") && dict["Path"] != nil {
            self.path = dict["Path"] as! String
        }
        if dict.keys.contains("PathParameters") && dict["PathParameters"] != nil {
            self.pathParameters = dict["PathParameters"] as! String
        }
        if dict.keys.contains("PostBodyDescription") && dict["PostBodyDescription"] != nil {
            self.postBodyDescription = dict["PostBodyDescription"] as! String
        }
        if dict.keys.contains("PostBodyType") && dict["PostBodyType"] != nil {
            self.postBodyType = dict["PostBodyType"] as! String
        }
        if dict.keys.contains("RequestBody") && dict["RequestBody"] != nil {
            self.requestBody = dict["RequestBody"] as! String
        }
        if dict.keys.contains("RequestHeaders") && dict["RequestHeaders"] != nil {
            self.requestHeaders = dict["RequestHeaders"] as! String
        }
        if dict.keys.contains("RequestQueries") && dict["RequestQueries"] != nil {
            self.requestQueries = dict["RequestQueries"] as! String
        }
        if dict.keys.contains("ResultSample") && dict["ResultSample"] != nil {
            self.resultSample = dict["ResultSample"] as! String
        }
        if dict.keys.contains("ResultType") && dict["ResultType"] != nil {
            self.resultType = dict["ResultType"] as! String
        }
        if dict.keys.contains("ServiceAddress") && dict["ServiceAddress"] != nil {
            self.serviceAddress = dict["ServiceAddress"] as! String
        }
        if dict.keys.contains("ServiceProtocol") && dict["ServiceProtocol"] != nil {
            self.serviceProtocol = dict["ServiceProtocol"] as! String
        }
        if dict.keys.contains("ServiceTimeout") && dict["ServiceTimeout"] != nil {
            self.serviceTimeout = dict["ServiceTimeout"] as! Int32
        }
        if dict.keys.contains("SystemParameters") && dict["SystemParameters"] != nil {
            self.systemParameters = dict["SystemParameters"] as! String
        }
        if dict.keys.contains("Visibility") && dict["Visibility"] != nil {
            self.visibility = dict["Visibility"] as! String
        }
    }
}

public class CreateApiResponseBody : Tea.TeaModel {
    public var apiId: String?

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
        if self.apiId != nil {
            map["ApiId"] = self.apiId!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ApiId") && dict["ApiId"] != nil {
            self.apiId = dict["ApiId"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class CreateApiResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateApiResponseBody?

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
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = CreateApiResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class CreateApiForInnerRequest : Tea.TeaModel {
    public var aliUid: Int64?

    public var apiName: String?

    public var authType: String?

    public var description_: String?

    public var groupId: String?

    public var requestConfig: String?

    public var requestParamters: String?

    public var resultSample: String?

    public var resultType: String?

    public var serviceConfig: String?

    public var serviceParameters: String?

    public var serviceParametersMap: String?

    public var visibility: String?

    public override init() {
        super.init()
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
        if self.apiName != nil {
            map["ApiName"] = self.apiName!
        }
        if self.authType != nil {
            map["AuthType"] = self.authType!
        }
        if self.description_ != nil {
            map["Description"] = self.description_!
        }
        if self.groupId != nil {
            map["GroupId"] = self.groupId!
        }
        if self.requestConfig != nil {
            map["RequestConfig"] = self.requestConfig!
        }
        if self.requestParamters != nil {
            map["RequestParamters"] = self.requestParamters!
        }
        if self.resultSample != nil {
            map["ResultSample"] = self.resultSample!
        }
        if self.resultType != nil {
            map["ResultType"] = self.resultType!
        }
        if self.serviceConfig != nil {
            map["ServiceConfig"] = self.serviceConfig!
        }
        if self.serviceParameters != nil {
            map["ServiceParameters"] = self.serviceParameters!
        }
        if self.serviceParametersMap != nil {
            map["ServiceParametersMap"] = self.serviceParametersMap!
        }
        if self.visibility != nil {
            map["Visibility"] = self.visibility!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AliUid") && dict["AliUid"] != nil {
            self.aliUid = dict["AliUid"] as! Int64
        }
        if dict.keys.contains("ApiName") && dict["ApiName"] != nil {
            self.apiName = dict["ApiName"] as! String
        }
        if dict.keys.contains("AuthType") && dict["AuthType"] != nil {
            self.authType = dict["AuthType"] as! String
        }
        if dict.keys.contains("Description") && dict["Description"] != nil {
            self.description_ = dict["Description"] as! String
        }
        if dict.keys.contains("GroupId") && dict["GroupId"] != nil {
            self.groupId = dict["GroupId"] as! String
        }
        if dict.keys.contains("RequestConfig") && dict["RequestConfig"] != nil {
            self.requestConfig = dict["RequestConfig"] as! String
        }
        if dict.keys.contains("RequestParamters") && dict["RequestParamters"] != nil {
            self.requestParamters = dict["RequestParamters"] as! String
        }
        if dict.keys.contains("ResultSample") && dict["ResultSample"] != nil {
            self.resultSample = dict["ResultSample"] as! String
        }
        if dict.keys.contains("ResultType") && dict["ResultType"] != nil {
            self.resultType = dict["ResultType"] as! String
        }
        if dict.keys.contains("ServiceConfig") && dict["ServiceConfig"] != nil {
            self.serviceConfig = dict["ServiceConfig"] as! String
        }
        if dict.keys.contains("ServiceParameters") && dict["ServiceParameters"] != nil {
            self.serviceParameters = dict["ServiceParameters"] as! String
        }
        if dict.keys.contains("ServiceParametersMap") && dict["ServiceParametersMap"] != nil {
            self.serviceParametersMap = dict["ServiceParametersMap"] as! String
        }
        if dict.keys.contains("Visibility") && dict["Visibility"] != nil {
            self.visibility = dict["Visibility"] as! String
        }
    }
}

public class CreateApiForInnerResponseBody : Tea.TeaModel {
    public var apiId: String?

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
        if self.apiId != nil {
            map["ApiId"] = self.apiId!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ApiId") && dict["ApiId"] != nil {
            self.apiId = dict["ApiId"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class CreateApiForInnerResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateApiForInnerResponseBody?

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
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = CreateApiForInnerResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class CreateApiGroupRequest : Tea.TeaModel {
    public var description_: String?

    public var groupName: String?

    public var securityToken: String?

    public override init() {
        super.init()
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
        if self.groupName != nil {
            map["GroupName"] = self.groupName!
        }
        if self.securityToken != nil {
            map["SecurityToken"] = self.securityToken!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Description") && dict["Description"] != nil {
            self.description_ = dict["Description"] as! String
        }
        if dict.keys.contains("GroupName") && dict["GroupName"] != nil {
            self.groupName = dict["GroupName"] as! String
        }
        if dict.keys.contains("SecurityToken") && dict["SecurityToken"] != nil {
            self.securityToken = dict["SecurityToken"] as! String
        }
    }
}

public class CreateApiGroupResponseBody : Tea.TeaModel {
    public var description_: String?

    public var groupId: String?

    public var groupName: String?

    public var requestId: String?

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
        if self.description_ != nil {
            map["Description"] = self.description_!
        }
        if self.groupId != nil {
            map["GroupId"] = self.groupId!
        }
        if self.groupName != nil {
            map["GroupName"] = self.groupName!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.subDomain != nil {
            map["SubDomain"] = self.subDomain!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Description") && dict["Description"] != nil {
            self.description_ = dict["Description"] as! String
        }
        if dict.keys.contains("GroupId") && dict["GroupId"] != nil {
            self.groupId = dict["GroupId"] as! String
        }
        if dict.keys.contains("GroupName") && dict["GroupName"] != nil {
            self.groupName = dict["GroupName"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("SubDomain") && dict["SubDomain"] != nil {
            self.subDomain = dict["SubDomain"] as! String
        }
    }
}

public class CreateApiGroupResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateApiGroupResponseBody?

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
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = CreateApiGroupResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class CreateApiGroupForInnerRequest : Tea.TeaModel {
    public var aliUid: Int64?

    public var description_: String?

    public var groupName: String?

    public var source: String?

    public override init() {
        super.init()
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
        if self.groupName != nil {
            map["GroupName"] = self.groupName!
        }
        if self.source != nil {
            map["Source"] = self.source!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AliUid") && dict["AliUid"] != nil {
            self.aliUid = dict["AliUid"] as! Int64
        }
        if dict.keys.contains("Description") && dict["Description"] != nil {
            self.description_ = dict["Description"] as! String
        }
        if dict.keys.contains("GroupName") && dict["GroupName"] != nil {
            self.groupName = dict["GroupName"] as! String
        }
        if dict.keys.contains("Source") && dict["Source"] != nil {
            self.source = dict["Source"] as! String
        }
    }
}

public class CreateApiGroupForInnerResponseBody : Tea.TeaModel {
    public var description_: String?

    public var groupId: String?

    public var groupName: String?

    public var requestId: String?

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
        if self.description_ != nil {
            map["Description"] = self.description_!
        }
        if self.groupId != nil {
            map["GroupId"] = self.groupId!
        }
        if self.groupName != nil {
            map["GroupName"] = self.groupName!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.subDomain != nil {
            map["SubDomain"] = self.subDomain!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Description") && dict["Description"] != nil {
            self.description_ = dict["Description"] as! String
        }
        if dict.keys.contains("GroupId") && dict["GroupId"] != nil {
            self.groupId = dict["GroupId"] as! String
        }
        if dict.keys.contains("GroupName") && dict["GroupName"] != nil {
            self.groupName = dict["GroupName"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("SubDomain") && dict["SubDomain"] != nil {
            self.subDomain = dict["SubDomain"] as! String
        }
    }
}

public class CreateApiGroupForInnerResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateApiGroupForInnerResponseBody?

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
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = CreateApiGroupForInnerResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class CreateAppRequest : Tea.TeaModel {
    public var appName: String?

    public var description_: String?

    public override init() {
        super.init()
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
        if self.description_ != nil {
            map["Description"] = self.description_!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AppName") && dict["AppName"] != nil {
            self.appName = dict["AppName"] as! String
        }
        if dict.keys.contains("Description") && dict["Description"] != nil {
            self.description_ = dict["Description"] as! String
        }
    }
}

public class CreateAppResponseBody : Tea.TeaModel {
    public var appId: Int64?

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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AppId") && dict["AppId"] != nil {
            self.appId = dict["AppId"] as! Int64
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
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
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = CreateAppResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class CreateAppForBackendRequest : Tea.TeaModel {
    public var aliUid: Int64?

    public var appName: String?

    public var description_: String?

    public var source: String?

    public override init() {
        super.init()
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
        if self.appName != nil {
            map["AppName"] = self.appName!
        }
        if self.description_ != nil {
            map["Description"] = self.description_!
        }
        if self.source != nil {
            map["Source"] = self.source!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AliUid") && dict["AliUid"] != nil {
            self.aliUid = dict["AliUid"] as! Int64
        }
        if dict.keys.contains("AppName") && dict["AppName"] != nil {
            self.appName = dict["AppName"] as! String
        }
        if dict.keys.contains("Description") && dict["Description"] != nil {
            self.description_ = dict["Description"] as! String
        }
        if dict.keys.contains("Source") && dict["Source"] != nil {
            self.source = dict["Source"] as! String
        }
    }
}

public class CreateAppForBackendResponseBody : Tea.TeaModel {
    public var appId: Int64?

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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AppId") && dict["AppId"] != nil {
            self.appId = dict["AppId"] as! Int64
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class CreateAppForBackendResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateAppForBackendResponseBody?

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
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = CreateAppForBackendResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class CreateAppForInnerRequest : Tea.TeaModel {
    public var aliUid: Int64?

    public var appCode: String?

    public var appKey: String?

    public var appName: String?

    public var appSecret: String?

    public var description_: String?

    public var extend: String?

    public var source: String?

    public override init() {
        super.init()
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
        if self.appCode != nil {
            map["AppCode"] = self.appCode!
        }
        if self.appKey != nil {
            map["AppKey"] = self.appKey!
        }
        if self.appName != nil {
            map["AppName"] = self.appName!
        }
        if self.appSecret != nil {
            map["AppSecret"] = self.appSecret!
        }
        if self.description_ != nil {
            map["Description"] = self.description_!
        }
        if self.extend != nil {
            map["Extend"] = self.extend!
        }
        if self.source != nil {
            map["Source"] = self.source!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AliUid") && dict["AliUid"] != nil {
            self.aliUid = dict["AliUid"] as! Int64
        }
        if dict.keys.contains("AppCode") && dict["AppCode"] != nil {
            self.appCode = dict["AppCode"] as! String
        }
        if dict.keys.contains("AppKey") && dict["AppKey"] != nil {
            self.appKey = dict["AppKey"] as! String
        }
        if dict.keys.contains("AppName") && dict["AppName"] != nil {
            self.appName = dict["AppName"] as! String
        }
        if dict.keys.contains("AppSecret") && dict["AppSecret"] != nil {
            self.appSecret = dict["AppSecret"] as! String
        }
        if dict.keys.contains("Description") && dict["Description"] != nil {
            self.description_ = dict["Description"] as! String
        }
        if dict.keys.contains("Extend") && dict["Extend"] != nil {
            self.extend = dict["Extend"] as! String
        }
        if dict.keys.contains("Source") && dict["Source"] != nil {
            self.source = dict["Source"] as! String
        }
    }
}

public class CreateAppForInnerResponseBody : Tea.TeaModel {
    public var appId: Int64?

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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AppId") && dict["AppId"] != nil {
            self.appId = dict["AppId"] as! Int64
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class CreateAppForInnerResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateAppForInnerResponseBody?

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
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = CreateAppForInnerResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class CreateInstanceRequest : Tea.TeaModel {
    public var accountQuantity: Int64?

    public var alarmQuota: Int64?

    public var aliUid: Int64?

    public var appId: Int64?

    public var billingType: String?

    public var cloudMarketInstanceId: String?

    public var expiredOn: String?

    public var instanceAttributes: String?

    public var skuId: String?

    public var token: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.accountQuantity != nil {
            map["AccountQuantity"] = self.accountQuantity!
        }
        if self.alarmQuota != nil {
            map["AlarmQuota"] = self.alarmQuota!
        }
        if self.aliUid != nil {
            map["AliUid"] = self.aliUid!
        }
        if self.appId != nil {
            map["AppId"] = self.appId!
        }
        if self.billingType != nil {
            map["BillingType"] = self.billingType!
        }
        if self.cloudMarketInstanceId != nil {
            map["CloudMarketInstanceId"] = self.cloudMarketInstanceId!
        }
        if self.expiredOn != nil {
            map["ExpiredOn"] = self.expiredOn!
        }
        if self.instanceAttributes != nil {
            map["InstanceAttributes"] = self.instanceAttributes!
        }
        if self.skuId != nil {
            map["SkuId"] = self.skuId!
        }
        if self.token != nil {
            map["Token"] = self.token!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AccountQuantity") && dict["AccountQuantity"] != nil {
            self.accountQuantity = dict["AccountQuantity"] as! Int64
        }
        if dict.keys.contains("AlarmQuota") && dict["AlarmQuota"] != nil {
            self.alarmQuota = dict["AlarmQuota"] as! Int64
        }
        if dict.keys.contains("AliUid") && dict["AliUid"] != nil {
            self.aliUid = dict["AliUid"] as! Int64
        }
        if dict.keys.contains("AppId") && dict["AppId"] != nil {
            self.appId = dict["AppId"] as! Int64
        }
        if dict.keys.contains("BillingType") && dict["BillingType"] != nil {
            self.billingType = dict["BillingType"] as! String
        }
        if dict.keys.contains("CloudMarketInstanceId") && dict["CloudMarketInstanceId"] != nil {
            self.cloudMarketInstanceId = dict["CloudMarketInstanceId"] as! String
        }
        if dict.keys.contains("ExpiredOn") && dict["ExpiredOn"] != nil {
            self.expiredOn = dict["ExpiredOn"] as! String
        }
        if dict.keys.contains("InstanceAttributes") && dict["InstanceAttributes"] != nil {
            self.instanceAttributes = dict["InstanceAttributes"] as! String
        }
        if dict.keys.contains("SkuId") && dict["SkuId"] != nil {
            self.skuId = dict["SkuId"] as! String
        }
        if dict.keys.contains("Token") && dict["Token"] != nil {
            self.token = dict["Token"] as! String
        }
    }
}

public class CreateInstanceResponseBody : Tea.TeaModel {
    public var instanceId: String?

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
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("InstanceId") && dict["InstanceId"] != nil {
            self.instanceId = dict["InstanceId"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class CreateInstanceResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateInstanceResponseBody?

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
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = CreateInstanceResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class CreateRaceWorkForInnerRequest : Tea.TeaModel {
    public var commodityCode: String?

    public var groupId: String?

    public var keywords: String?

    public var logoUrl: String?

    public var shortDescription: String?

    public var workName: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.commodityCode != nil {
            map["CommodityCode"] = self.commodityCode!
        }
        if self.groupId != nil {
            map["GroupId"] = self.groupId!
        }
        if self.keywords != nil {
            map["Keywords"] = self.keywords!
        }
        if self.logoUrl != nil {
            map["LogoUrl"] = self.logoUrl!
        }
        if self.shortDescription != nil {
            map["ShortDescription"] = self.shortDescription!
        }
        if self.workName != nil {
            map["WorkName"] = self.workName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("CommodityCode") && dict["CommodityCode"] != nil {
            self.commodityCode = dict["CommodityCode"] as! String
        }
        if dict.keys.contains("GroupId") && dict["GroupId"] != nil {
            self.groupId = dict["GroupId"] as! String
        }
        if dict.keys.contains("Keywords") && dict["Keywords"] != nil {
            self.keywords = dict["Keywords"] as! String
        }
        if dict.keys.contains("LogoUrl") && dict["LogoUrl"] != nil {
            self.logoUrl = dict["LogoUrl"] as! String
        }
        if dict.keys.contains("ShortDescription") && dict["ShortDescription"] != nil {
            self.shortDescription = dict["ShortDescription"] as! String
        }
        if dict.keys.contains("WorkName") && dict["WorkName"] != nil {
            self.workName = dict["WorkName"] as! String
        }
    }
}

public class CreateRaceWorkForInnerResponseBody : Tea.TeaModel {
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
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class CreateRaceWorkForInnerResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateRaceWorkForInnerResponseBody?

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
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = CreateRaceWorkForInnerResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class CreateSecretKeyRequest : Tea.TeaModel {
    public var secretKey: String?

    public var secretKeyName: String?

    public var secretValue: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.secretKey != nil {
            map["SecretKey"] = self.secretKey!
        }
        if self.secretKeyName != nil {
            map["SecretKeyName"] = self.secretKeyName!
        }
        if self.secretValue != nil {
            map["SecretValue"] = self.secretValue!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("SecretKey") && dict["SecretKey"] != nil {
            self.secretKey = dict["SecretKey"] as! String
        }
        if dict.keys.contains("SecretKeyName") && dict["SecretKeyName"] != nil {
            self.secretKeyName = dict["SecretKeyName"] as! String
        }
        if dict.keys.contains("SecretValue") && dict["SecretValue"] != nil {
            self.secretValue = dict["SecretValue"] as! String
        }
    }
}

public class CreateSecretKeyResponseBody : Tea.TeaModel {
    public var requestId: String?

    public var secretKeyId: String?

    public var secretKeyName: String?

    public override init() {
        super.init()
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
        if self.secretKeyId != nil {
            map["SecretKeyId"] = self.secretKeyId!
        }
        if self.secretKeyName != nil {
            map["SecretKeyName"] = self.secretKeyName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("SecretKeyId") && dict["SecretKeyId"] != nil {
            self.secretKeyId = dict["SecretKeyId"] as! String
        }
        if dict.keys.contains("SecretKeyName") && dict["SecretKeyName"] != nil {
            self.secretKeyName = dict["SecretKeyName"] as! String
        }
    }
}

public class CreateSecretKeyResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateSecretKeyResponseBody?

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
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = CreateSecretKeyResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class CreateTrafficControlRequest : Tea.TeaModel {
    public var apiDefault: Int32?

    public var appDefault: Int32?

    public var description_: String?

    public var trafficControlName: String?

    public var trafficControlUnit: String?

    public var userDefault: Int32?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.apiDefault != nil {
            map["ApiDefault"] = self.apiDefault!
        }
        if self.appDefault != nil {
            map["AppDefault"] = self.appDefault!
        }
        if self.description_ != nil {
            map["Description"] = self.description_!
        }
        if self.trafficControlName != nil {
            map["TrafficControlName"] = self.trafficControlName!
        }
        if self.trafficControlUnit != nil {
            map["TrafficControlUnit"] = self.trafficControlUnit!
        }
        if self.userDefault != nil {
            map["UserDefault"] = self.userDefault!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ApiDefault") && dict["ApiDefault"] != nil {
            self.apiDefault = dict["ApiDefault"] as! Int32
        }
        if dict.keys.contains("AppDefault") && dict["AppDefault"] != nil {
            self.appDefault = dict["AppDefault"] as! Int32
        }
        if dict.keys.contains("Description") && dict["Description"] != nil {
            self.description_ = dict["Description"] as! String
        }
        if dict.keys.contains("TrafficControlName") && dict["TrafficControlName"] != nil {
            self.trafficControlName = dict["TrafficControlName"] as! String
        }
        if dict.keys.contains("TrafficControlUnit") && dict["TrafficControlUnit"] != nil {
            self.trafficControlUnit = dict["TrafficControlUnit"] as! String
        }
        if dict.keys.contains("UserDefault") && dict["UserDefault"] != nil {
            self.userDefault = dict["UserDefault"] as! Int32
        }
    }
}

public class CreateTrafficControlResponseBody : Tea.TeaModel {
    public var requestId: String?

    public var trafficControlId: String?

    public override init() {
        super.init()
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
        if self.trafficControlId != nil {
            map["TrafficControlId"] = self.trafficControlId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("TrafficControlId") && dict["TrafficControlId"] != nil {
            self.trafficControlId = dict["TrafficControlId"] as! String
        }
    }
}

public class CreateTrafficControlResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateTrafficControlResponseBody?

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
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = CreateTrafficControlResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class CreateUserWhiteListRequest : Tea.TeaModel {
    public var aoneId: String?

    public var description_: String?

    public var entityId: String?

    public var limitCount: Int32?

    public var type: String?

    public var uid: Int64?

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
        if self.aoneId != nil {
            map["AoneId"] = self.aoneId!
        }
        if self.description_ != nil {
            map["Description"] = self.description_!
        }
        if self.entityId != nil {
            map["EntityId"] = self.entityId!
        }
        if self.limitCount != nil {
            map["LimitCount"] = self.limitCount!
        }
        if self.type != nil {
            map["Type"] = self.type!
        }
        if self.uid != nil {
            map["Uid"] = self.uid!
        }
        if self.value != nil {
            map["Value"] = self.value!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AoneId") && dict["AoneId"] != nil {
            self.aoneId = dict["AoneId"] as! String
        }
        if dict.keys.contains("Description") && dict["Description"] != nil {
            self.description_ = dict["Description"] as! String
        }
        if dict.keys.contains("EntityId") && dict["EntityId"] != nil {
            self.entityId = dict["EntityId"] as! String
        }
        if dict.keys.contains("LimitCount") && dict["LimitCount"] != nil {
            self.limitCount = dict["LimitCount"] as! Int32
        }
        if dict.keys.contains("Type") && dict["Type"] != nil {
            self.type = dict["Type"] as! String
        }
        if dict.keys.contains("Uid") && dict["Uid"] != nil {
            self.uid = dict["Uid"] as! Int64
        }
        if dict.keys.contains("Value") && dict["Value"] != nil {
            self.value = dict["Value"] as! String
        }
    }
}

public class CreateUserWhiteListResponseBody : Tea.TeaModel {
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
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class CreateUserWhiteListResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateUserWhiteListResponseBody?

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
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = CreateUserWhiteListResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DeleteAllTrafficSpecialControlRequest : Tea.TeaModel {
    public var trafficControlId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.trafficControlId != nil {
            map["TrafficControlId"] = self.trafficControlId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("TrafficControlId") && dict["TrafficControlId"] != nil {
            self.trafficControlId = dict["TrafficControlId"] as! String
        }
    }
}

public class DeleteAllTrafficSpecialControlResponseBody : Tea.TeaModel {
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
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class DeleteAllTrafficSpecialControlResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteAllTrafficSpecialControlResponseBody?

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
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = DeleteAllTrafficSpecialControlResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DeleteApiRequest : Tea.TeaModel {
    public var apiId: String?

    public var groupId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.apiId != nil {
            map["ApiId"] = self.apiId!
        }
        if self.groupId != nil {
            map["GroupId"] = self.groupId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ApiId") && dict["ApiId"] != nil {
            self.apiId = dict["ApiId"] as! String
        }
        if dict.keys.contains("GroupId") && dict["GroupId"] != nil {
            self.groupId = dict["GroupId"] as! String
        }
    }
}

public class DeleteApiResponseBody : Tea.TeaModel {
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
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class DeleteApiResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteApiResponseBody?

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
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = DeleteApiResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DeleteApiForInnerRequest : Tea.TeaModel {
    public var aliUid: Int64?

    public var apiId: String?

    public var groupId: String?

    public override init() {
        super.init()
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
        if self.apiId != nil {
            map["ApiId"] = self.apiId!
        }
        if self.groupId != nil {
            map["GroupId"] = self.groupId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AliUid") && dict["AliUid"] != nil {
            self.aliUid = dict["AliUid"] as! Int64
        }
        if dict.keys.contains("ApiId") && dict["ApiId"] != nil {
            self.apiId = dict["ApiId"] as! String
        }
        if dict.keys.contains("GroupId") && dict["GroupId"] != nil {
            self.groupId = dict["GroupId"] as! String
        }
    }
}

public class DeleteApiForInnerResponseBody : Tea.TeaModel {
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
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class DeleteApiForInnerResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteApiForInnerResponseBody?

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
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = DeleteApiForInnerResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DeleteApiGroupRequest : Tea.TeaModel {
    public var groupId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.groupId != nil {
            map["GroupId"] = self.groupId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("GroupId") && dict["GroupId"] != nil {
            self.groupId = dict["GroupId"] as! String
        }
    }
}

public class DeleteApiGroupResponseBody : Tea.TeaModel {
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
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class DeleteApiGroupResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteApiGroupResponseBody?

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
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = DeleteApiGroupResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DeleteAppRequest : Tea.TeaModel {
    public var appId: Int64?

    public override init() {
        super.init()
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
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AppId") && dict["AppId"] != nil {
            self.appId = dict["AppId"] as! Int64
        }
    }
}

public class DeleteAppResponseBody : Tea.TeaModel {
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
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class DeleteAppResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteAppResponseBody?

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
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = DeleteAppResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DeleteAppForInnerRequest : Tea.TeaModel {
    public var aliUid: Int64?

    public var appId: Int64?

    public override init() {
        super.init()
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
        if self.appId != nil {
            map["AppId"] = self.appId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AliUid") && dict["AliUid"] != nil {
            self.aliUid = dict["AliUid"] as! Int64
        }
        if dict.keys.contains("AppId") && dict["AppId"] != nil {
            self.appId = dict["AppId"] as! Int64
        }
    }
}

public class DeleteAppForInnerResponseBody : Tea.TeaModel {
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
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class DeleteAppForInnerResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteAppForInnerResponseBody?

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
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = DeleteAppForInnerResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DeleteDomainRequest : Tea.TeaModel {
    public var domainName: String?

    public var groupId: String?

    public override init() {
        super.init()
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
        if self.groupId != nil {
            map["GroupId"] = self.groupId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DomainName") && dict["DomainName"] != nil {
            self.domainName = dict["DomainName"] as! String
        }
        if dict.keys.contains("GroupId") && dict["GroupId"] != nil {
            self.groupId = dict["GroupId"] as! String
        }
    }
}

public class DeleteDomainResponseBody : Tea.TeaModel {
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
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
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
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = DeleteDomainResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DeleteDomainCertificateRequest : Tea.TeaModel {
    public var certificateId: String?

    public var domainName: String?

    public var groupId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.certificateId != nil {
            map["CertificateId"] = self.certificateId!
        }
        if self.domainName != nil {
            map["DomainName"] = self.domainName!
        }
        if self.groupId != nil {
            map["GroupId"] = self.groupId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("CertificateId") && dict["CertificateId"] != nil {
            self.certificateId = dict["CertificateId"] as! String
        }
        if dict.keys.contains("DomainName") && dict["DomainName"] != nil {
            self.domainName = dict["DomainName"] as! String
        }
        if dict.keys.contains("GroupId") && dict["GroupId"] != nil {
            self.groupId = dict["GroupId"] as! String
        }
    }
}

public class DeleteDomainCertificateResponseBody : Tea.TeaModel {
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
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class DeleteDomainCertificateResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteDomainCertificateResponseBody?

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
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = DeleteDomainCertificateResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DeleteSecretKeyRequest : Tea.TeaModel {
    public var secretKeyId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.secretKeyId != nil {
            map["SecretKeyId"] = self.secretKeyId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("SecretKeyId") && dict["SecretKeyId"] != nil {
            self.secretKeyId = dict["SecretKeyId"] as! String
        }
    }
}

public class DeleteSecretKeyResponseBody : Tea.TeaModel {
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
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class DeleteSecretKeyResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteSecretKeyResponseBody?

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
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = DeleteSecretKeyResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DeleteTrafficControlRequest : Tea.TeaModel {
    public var trafficControlId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.trafficControlId != nil {
            map["TrafficControlId"] = self.trafficControlId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("TrafficControlId") && dict["TrafficControlId"] != nil {
            self.trafficControlId = dict["TrafficControlId"] as! String
        }
    }
}

public class DeleteTrafficControlResponseBody : Tea.TeaModel {
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
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class DeleteTrafficControlResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteTrafficControlResponseBody?

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
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = DeleteTrafficControlResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DeleteTrafficSpecialControlRequest : Tea.TeaModel {
    public var specialKey: String?

    public var specialType: String?

    public var trafficControlId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.specialKey != nil {
            map["SpecialKey"] = self.specialKey!
        }
        if self.specialType != nil {
            map["SpecialType"] = self.specialType!
        }
        if self.trafficControlId != nil {
            map["TrafficControlId"] = self.trafficControlId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("SpecialKey") && dict["SpecialKey"] != nil {
            self.specialKey = dict["SpecialKey"] as! String
        }
        if dict.keys.contains("SpecialType") && dict["SpecialType"] != nil {
            self.specialType = dict["SpecialType"] as! String
        }
        if dict.keys.contains("TrafficControlId") && dict["TrafficControlId"] != nil {
            self.trafficControlId = dict["TrafficControlId"] as! String
        }
    }
}

public class DeleteTrafficSpecialControlResponseBody : Tea.TeaModel {
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
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class DeleteTrafficSpecialControlResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteTrafficSpecialControlResponseBody?

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
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = DeleteTrafficSpecialControlResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DeleteUserWhiteListByTypeRequest : Tea.TeaModel {
    public var entityId: String?

    public var type: String?

    public var uid: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.entityId != nil {
            map["EntityId"] = self.entityId!
        }
        if self.type != nil {
            map["Type"] = self.type!
        }
        if self.uid != nil {
            map["Uid"] = self.uid!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("EntityId") && dict["EntityId"] != nil {
            self.entityId = dict["EntityId"] as! String
        }
        if dict.keys.contains("Type") && dict["Type"] != nil {
            self.type = dict["Type"] as! String
        }
        if dict.keys.contains("Uid") && dict["Uid"] != nil {
            self.uid = dict["Uid"] as! Int64
        }
    }
}

public class DeleteUserWhiteListByTypeResponseBody : Tea.TeaModel {
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
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class DeleteUserWhiteListByTypeResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteUserWhiteListByTypeResponseBody?

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
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = DeleteUserWhiteListByTypeResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DeployApiRequest : Tea.TeaModel {
    public var apiId: String?

    public var description_: String?

    public var groupId: String?

    public var stageName: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.apiId != nil {
            map["ApiId"] = self.apiId!
        }
        if self.description_ != nil {
            map["Description"] = self.description_!
        }
        if self.groupId != nil {
            map["GroupId"] = self.groupId!
        }
        if self.stageName != nil {
            map["StageName"] = self.stageName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ApiId") && dict["ApiId"] != nil {
            self.apiId = dict["ApiId"] as! String
        }
        if dict.keys.contains("Description") && dict["Description"] != nil {
            self.description_ = dict["Description"] as! String
        }
        if dict.keys.contains("GroupId") && dict["GroupId"] != nil {
            self.groupId = dict["GroupId"] as! String
        }
        if dict.keys.contains("StageName") && dict["StageName"] != nil {
            self.stageName = dict["StageName"] as! String
        }
    }
}

public class DeployApiResponseBody : Tea.TeaModel {
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
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class DeployApiResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeployApiResponseBody?

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
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = DeployApiResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DeployApiForInnerRequest : Tea.TeaModel {
    public var aliUid: Int64?

    public var apiId: String?

    public var description_: String?

    public var groupId: String?

    public var stageName: String?

    public override init() {
        super.init()
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
        if self.apiId != nil {
            map["ApiId"] = self.apiId!
        }
        if self.description_ != nil {
            map["Description"] = self.description_!
        }
        if self.groupId != nil {
            map["GroupId"] = self.groupId!
        }
        if self.stageName != nil {
            map["StageName"] = self.stageName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AliUid") && dict["AliUid"] != nil {
            self.aliUid = dict["AliUid"] as! Int64
        }
        if dict.keys.contains("ApiId") && dict["ApiId"] != nil {
            self.apiId = dict["ApiId"] as! String
        }
        if dict.keys.contains("Description") && dict["Description"] != nil {
            self.description_ = dict["Description"] as! String
        }
        if dict.keys.contains("GroupId") && dict["GroupId"] != nil {
            self.groupId = dict["GroupId"] as! String
        }
        if dict.keys.contains("StageName") && dict["StageName"] != nil {
            self.stageName = dict["StageName"] as! String
        }
    }
}

public class DeployApiForInnerResponseBody : Tea.TeaModel {
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
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class DeployApiForInnerResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeployApiForInnerResponseBody?

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
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = DeployApiForInnerResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeApiRequest : Tea.TeaModel {
    public var apiId: String?

    public var groupId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.apiId != nil {
            map["ApiId"] = self.apiId!
        }
        if self.groupId != nil {
            map["GroupId"] = self.groupId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ApiId") && dict["ApiId"] != nil {
            self.apiId = dict["ApiId"] as! String
        }
        if dict.keys.contains("GroupId") && dict["GroupId"] != nil {
            self.groupId = dict["GroupId"] as! String
        }
    }
}

public class DescribeApiResponseBody : Tea.TeaModel {
    public class ConstantParameters : Tea.TeaModel {
        public class ConstantParameter : Tea.TeaModel {
            public var constantValue: String?

            public var description_: String?

            public var location: String?

            public var serviceParameterName: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.constantValue != nil {
                    map["ConstantValue"] = self.constantValue!
                }
                if self.description_ != nil {
                    map["Description"] = self.description_!
                }
                if self.location != nil {
                    map["Location"] = self.location!
                }
                if self.serviceParameterName != nil {
                    map["ServiceParameterName"] = self.serviceParameterName!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("ConstantValue") && dict["ConstantValue"] != nil {
                    self.constantValue = dict["ConstantValue"] as! String
                }
                if dict.keys.contains("Description") && dict["Description"] != nil {
                    self.description_ = dict["Description"] as! String
                }
                if dict.keys.contains("Location") && dict["Location"] != nil {
                    self.location = dict["Location"] as! String
                }
                if dict.keys.contains("ServiceParameterName") && dict["ServiceParameterName"] != nil {
                    self.serviceParameterName = dict["ServiceParameterName"] as! String
                }
            }
        }
        public var constantParameter: [DescribeApiResponseBody.ConstantParameters.ConstantParameter]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.constantParameter != nil {
                var tmp : [Any] = []
                for k in self.constantParameter! {
                    tmp.append(k.toMap())
                }
                map["ConstantParameter"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("ConstantParameter") && dict["ConstantParameter"] != nil {
                var tmp : [DescribeApiResponseBody.ConstantParameters.ConstantParameter] = []
                for v in dict["ConstantParameter"] as! [Any] {
                    var model = DescribeApiResponseBody.ConstantParameters.ConstantParameter()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.constantParameter = tmp
            }
        }
    }
    public class CustomSystemParameters : Tea.TeaModel {
        public class CustomSystemParameter : Tea.TeaModel {
            public var demoValue: String?

            public var description_: String?

            public var location: String?

            public var parameterName: String?

            public var serviceParameterName: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.demoValue != nil {
                    map["DemoValue"] = self.demoValue!
                }
                if self.description_ != nil {
                    map["Description"] = self.description_!
                }
                if self.location != nil {
                    map["Location"] = self.location!
                }
                if self.parameterName != nil {
                    map["ParameterName"] = self.parameterName!
                }
                if self.serviceParameterName != nil {
                    map["ServiceParameterName"] = self.serviceParameterName!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("DemoValue") && dict["DemoValue"] != nil {
                    self.demoValue = dict["DemoValue"] as! String
                }
                if dict.keys.contains("Description") && dict["Description"] != nil {
                    self.description_ = dict["Description"] as! String
                }
                if dict.keys.contains("Location") && dict["Location"] != nil {
                    self.location = dict["Location"] as! String
                }
                if dict.keys.contains("ParameterName") && dict["ParameterName"] != nil {
                    self.parameterName = dict["ParameterName"] as! String
                }
                if dict.keys.contains("ServiceParameterName") && dict["ServiceParameterName"] != nil {
                    self.serviceParameterName = dict["ServiceParameterName"] as! String
                }
            }
        }
        public var customSystemParameter: [DescribeApiResponseBody.CustomSystemParameters.CustomSystemParameter]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.customSystemParameter != nil {
                var tmp : [Any] = []
                for k in self.customSystemParameter! {
                    tmp.append(k.toMap())
                }
                map["CustomSystemParameter"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("CustomSystemParameter") && dict["CustomSystemParameter"] != nil {
                var tmp : [DescribeApiResponseBody.CustomSystemParameters.CustomSystemParameter] = []
                for v in dict["CustomSystemParameter"] as! [Any] {
                    var model = DescribeApiResponseBody.CustomSystemParameters.CustomSystemParameter()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.customSystemParameter = tmp
            }
        }
    }
    public class DeployedInfos : Tea.TeaModel {
        public class DeployedInfo : Tea.TeaModel {
            public var deployedStatus: String?

            public var effectiveVersion: String?

            public var stageName: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.deployedStatus != nil {
                    map["DeployedStatus"] = self.deployedStatus!
                }
                if self.effectiveVersion != nil {
                    map["EffectiveVersion"] = self.effectiveVersion!
                }
                if self.stageName != nil {
                    map["StageName"] = self.stageName!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("DeployedStatus") && dict["DeployedStatus"] != nil {
                    self.deployedStatus = dict["DeployedStatus"] as! String
                }
                if dict.keys.contains("EffectiveVersion") && dict["EffectiveVersion"] != nil {
                    self.effectiveVersion = dict["EffectiveVersion"] as! String
                }
                if dict.keys.contains("StageName") && dict["StageName"] != nil {
                    self.stageName = dict["StageName"] as! String
                }
            }
        }
        public var deployedInfo: [DescribeApiResponseBody.DeployedInfos.DeployedInfo]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.deployedInfo != nil {
                var tmp : [Any] = []
                for k in self.deployedInfo! {
                    tmp.append(k.toMap())
                }
                map["DeployedInfo"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("DeployedInfo") && dict["DeployedInfo"] != nil {
                var tmp : [DescribeApiResponseBody.DeployedInfos.DeployedInfo] = []
                for v in dict["DeployedInfo"] as! [Any] {
                    var model = DescribeApiResponseBody.DeployedInfos.DeployedInfo()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.deployedInfo = tmp
            }
        }
    }
    public class ErrorCodeSamples : Tea.TeaModel {
        public class ErrorCodeSample : Tea.TeaModel {
            public var code: String?

            public var description_: String?

            public var message: String?

            public var model: String?

            public override init() {
                super.init()
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
                if self.description_ != nil {
                    map["Description"] = self.description_!
                }
                if self.message != nil {
                    map["Message"] = self.message!
                }
                if self.model != nil {
                    map["Model"] = self.model!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("Code") && dict["Code"] != nil {
                    self.code = dict["Code"] as! String
                }
                if dict.keys.contains("Description") && dict["Description"] != nil {
                    self.description_ = dict["Description"] as! String
                }
                if dict.keys.contains("Message") && dict["Message"] != nil {
                    self.message = dict["Message"] as! String
                }
                if dict.keys.contains("Model") && dict["Model"] != nil {
                    self.model = dict["Model"] as! String
                }
            }
        }
        public var errorCodeSample: [DescribeApiResponseBody.ErrorCodeSamples.ErrorCodeSample]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.errorCodeSample != nil {
                var tmp : [Any] = []
                for k in self.errorCodeSample! {
                    tmp.append(k.toMap())
                }
                map["ErrorCodeSample"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("ErrorCodeSample") && dict["ErrorCodeSample"] != nil {
                var tmp : [DescribeApiResponseBody.ErrorCodeSamples.ErrorCodeSample] = []
                for v in dict["ErrorCodeSample"] as! [Any] {
                    var model = DescribeApiResponseBody.ErrorCodeSamples.ErrorCodeSample()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.errorCodeSample = tmp
            }
        }
    }
    public class OpenIdConnectConfig : Tea.TeaModel {
        public var idTokenParamName: String?

        public var openIdApiType: String?

        public var publicKey: String?

        public var publicKeyId: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.idTokenParamName != nil {
                map["IdTokenParamName"] = self.idTokenParamName!
            }
            if self.openIdApiType != nil {
                map["OpenIdApiType"] = self.openIdApiType!
            }
            if self.publicKey != nil {
                map["PublicKey"] = self.publicKey!
            }
            if self.publicKeyId != nil {
                map["PublicKeyId"] = self.publicKeyId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("IdTokenParamName") && dict["IdTokenParamName"] != nil {
                self.idTokenParamName = dict["IdTokenParamName"] as! String
            }
            if dict.keys.contains("OpenIdApiType") && dict["OpenIdApiType"] != nil {
                self.openIdApiType = dict["OpenIdApiType"] as! String
            }
            if dict.keys.contains("PublicKey") && dict["PublicKey"] != nil {
                self.publicKey = dict["PublicKey"] as! String
            }
            if dict.keys.contains("PublicKeyId") && dict["PublicKeyId"] != nil {
                self.publicKeyId = dict["PublicKeyId"] as! String
            }
        }
    }
    public class ParametersMapObject : Tea.TeaModel {
        public class ServiceParameterMap : Tea.TeaModel {
            public var requestParameterName: String?

            public var serviceParameterName: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.requestParameterName != nil {
                    map["RequestParameterName"] = self.requestParameterName!
                }
                if self.serviceParameterName != nil {
                    map["ServiceParameterName"] = self.serviceParameterName!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("RequestParameterName") && dict["RequestParameterName"] != nil {
                    self.requestParameterName = dict["RequestParameterName"] as! String
                }
                if dict.keys.contains("ServiceParameterName") && dict["ServiceParameterName"] != nil {
                    self.serviceParameterName = dict["ServiceParameterName"] as! String
                }
            }
        }
        public var serviceParameterMap: [DescribeApiResponseBody.ParametersMapObject.ServiceParameterMap]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.serviceParameterMap != nil {
                var tmp : [Any] = []
                for k in self.serviceParameterMap! {
                    tmp.append(k.toMap())
                }
                map["ServiceParameterMap"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("ServiceParameterMap") && dict["ServiceParameterMap"] != nil {
                var tmp : [DescribeApiResponseBody.ParametersMapObject.ServiceParameterMap] = []
                for v in dict["ServiceParameterMap"] as! [Any] {
                    var model = DescribeApiResponseBody.ParametersMapObject.ServiceParameterMap()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.serviceParameterMap = tmp
            }
        }
    }
    public class RequestConfig : Tea.TeaModel {
        public var bodyFormat: String?

        public var postBodyDescription: String?

        public var requestHttpMethod: String?

        public var requestPath: String?

        public var requestProtocol: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.bodyFormat != nil {
                map["BodyFormat"] = self.bodyFormat!
            }
            if self.postBodyDescription != nil {
                map["PostBodyDescription"] = self.postBodyDescription!
            }
            if self.requestHttpMethod != nil {
                map["RequestHttpMethod"] = self.requestHttpMethod!
            }
            if self.requestPath != nil {
                map["RequestPath"] = self.requestPath!
            }
            if self.requestProtocol != nil {
                map["RequestProtocol"] = self.requestProtocol!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("BodyFormat") && dict["BodyFormat"] != nil {
                self.bodyFormat = dict["BodyFormat"] as! String
            }
            if dict.keys.contains("PostBodyDescription") && dict["PostBodyDescription"] != nil {
                self.postBodyDescription = dict["PostBodyDescription"] as! String
            }
            if dict.keys.contains("RequestHttpMethod") && dict["RequestHttpMethod"] != nil {
                self.requestHttpMethod = dict["RequestHttpMethod"] as! String
            }
            if dict.keys.contains("RequestPath") && dict["RequestPath"] != nil {
                self.requestPath = dict["RequestPath"] as! String
            }
            if dict.keys.contains("RequestProtocol") && dict["RequestProtocol"] != nil {
                self.requestProtocol = dict["RequestProtocol"] as! String
            }
        }
    }
    public class RequestParametersObject : Tea.TeaModel {
        public class RequestParam : Tea.TeaModel {
            public var apiParameterName: String?

            public var defaultValue: String?

            public var demoValue: String?

            public var description_: String?

            public var docOrder: String?

            public var docShow: String?

            public var enumValue: String?

            public var jsonScheme: String?

            public var location: String?

            public var maxLength: Int64?

            public var maxValue: Int64?

            public var minLength: Int64?

            public var minValue: Int64?

            public var parameterType: String?

            public var regularExpression: String?

            public var required_: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.apiParameterName != nil {
                    map["ApiParameterName"] = self.apiParameterName!
                }
                if self.defaultValue != nil {
                    map["DefaultValue"] = self.defaultValue!
                }
                if self.demoValue != nil {
                    map["DemoValue"] = self.demoValue!
                }
                if self.description_ != nil {
                    map["Description"] = self.description_!
                }
                if self.docOrder != nil {
                    map["DocOrder"] = self.docOrder!
                }
                if self.docShow != nil {
                    map["DocShow"] = self.docShow!
                }
                if self.enumValue != nil {
                    map["EnumValue"] = self.enumValue!
                }
                if self.jsonScheme != nil {
                    map["JsonScheme"] = self.jsonScheme!
                }
                if self.location != nil {
                    map["Location"] = self.location!
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
                if self.parameterType != nil {
                    map["ParameterType"] = self.parameterType!
                }
                if self.regularExpression != nil {
                    map["RegularExpression"] = self.regularExpression!
                }
                if self.required_ != nil {
                    map["Required"] = self.required_!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("ApiParameterName") && dict["ApiParameterName"] != nil {
                    self.apiParameterName = dict["ApiParameterName"] as! String
                }
                if dict.keys.contains("DefaultValue") && dict["DefaultValue"] != nil {
                    self.defaultValue = dict["DefaultValue"] as! String
                }
                if dict.keys.contains("DemoValue") && dict["DemoValue"] != nil {
                    self.demoValue = dict["DemoValue"] as! String
                }
                if dict.keys.contains("Description") && dict["Description"] != nil {
                    self.description_ = dict["Description"] as! String
                }
                if dict.keys.contains("DocOrder") && dict["DocOrder"] != nil {
                    self.docOrder = dict["DocOrder"] as! String
                }
                if dict.keys.contains("DocShow") && dict["DocShow"] != nil {
                    self.docShow = dict["DocShow"] as! String
                }
                if dict.keys.contains("EnumValue") && dict["EnumValue"] != nil {
                    self.enumValue = dict["EnumValue"] as! String
                }
                if dict.keys.contains("JsonScheme") && dict["JsonScheme"] != nil {
                    self.jsonScheme = dict["JsonScheme"] as! String
                }
                if dict.keys.contains("Location") && dict["Location"] != nil {
                    self.location = dict["Location"] as! String
                }
                if dict.keys.contains("MaxLength") && dict["MaxLength"] != nil {
                    self.maxLength = dict["MaxLength"] as! Int64
                }
                if dict.keys.contains("MaxValue") && dict["MaxValue"] != nil {
                    self.maxValue = dict["MaxValue"] as! Int64
                }
                if dict.keys.contains("MinLength") && dict["MinLength"] != nil {
                    self.minLength = dict["MinLength"] as! Int64
                }
                if dict.keys.contains("MinValue") && dict["MinValue"] != nil {
                    self.minValue = dict["MinValue"] as! Int64
                }
                if dict.keys.contains("ParameterType") && dict["ParameterType"] != nil {
                    self.parameterType = dict["ParameterType"] as! String
                }
                if dict.keys.contains("RegularExpression") && dict["RegularExpression"] != nil {
                    self.regularExpression = dict["RegularExpression"] as! String
                }
                if dict.keys.contains("Required") && dict["Required"] != nil {
                    self.required_ = dict["Required"] as! String
                }
            }
        }
        public var requestParam: [DescribeApiResponseBody.RequestParametersObject.RequestParam]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.requestParam != nil {
                var tmp : [Any] = []
                for k in self.requestParam! {
                    tmp.append(k.toMap())
                }
                map["RequestParam"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("RequestParam") && dict["RequestParam"] != nil {
                var tmp : [DescribeApiResponseBody.RequestParametersObject.RequestParam] = []
                for v in dict["RequestParam"] as! [Any] {
                    var model = DescribeApiResponseBody.RequestParametersObject.RequestParam()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.requestParam = tmp
            }
        }
    }
    public class ServiceConfig : Tea.TeaModel {
        public class FunctionComputeConfig : Tea.TeaModel {
            public var fcRegionId: String?

            public var functionName: String?

            public var roleArn: String?

            public var serviceName: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.fcRegionId != nil {
                    map["FcRegionId"] = self.fcRegionId!
                }
                if self.functionName != nil {
                    map["FunctionName"] = self.functionName!
                }
                if self.roleArn != nil {
                    map["RoleArn"] = self.roleArn!
                }
                if self.serviceName != nil {
                    map["ServiceName"] = self.serviceName!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("FcRegionId") && dict["FcRegionId"] != nil {
                    self.fcRegionId = dict["FcRegionId"] as! String
                }
                if dict.keys.contains("FunctionName") && dict["FunctionName"] != nil {
                    self.functionName = dict["FunctionName"] as! String
                }
                if dict.keys.contains("RoleArn") && dict["RoleArn"] != nil {
                    self.roleArn = dict["RoleArn"] as! String
                }
                if dict.keys.contains("ServiceName") && dict["ServiceName"] != nil {
                    self.serviceName = dict["ServiceName"] as! String
                }
            }
        }
        public class VpcConfig : Tea.TeaModel {
            public var id: String?

            public var instanceId: String?

            public var name: String?

            public var port: Int32?

            public var vpcId: String?

            public override init() {
                super.init()
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
                if self.instanceId != nil {
                    map["InstanceId"] = self.instanceId!
                }
                if self.name != nil {
                    map["Name"] = self.name!
                }
                if self.port != nil {
                    map["Port"] = self.port!
                }
                if self.vpcId != nil {
                    map["VpcId"] = self.vpcId!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("Id") && dict["Id"] != nil {
                    self.id = dict["Id"] as! String
                }
                if dict.keys.contains("InstanceId") && dict["InstanceId"] != nil {
                    self.instanceId = dict["InstanceId"] as! String
                }
                if dict.keys.contains("Name") && dict["Name"] != nil {
                    self.name = dict["Name"] as! String
                }
                if dict.keys.contains("Port") && dict["Port"] != nil {
                    self.port = dict["Port"] as! Int32
                }
                if dict.keys.contains("VpcId") && dict["VpcId"] != nil {
                    self.vpcId = dict["VpcId"] as! String
                }
            }
        }
        public var contentTypeCatagory: String?

        public var contentTypeValue: String?

        public var functionComputeConfig: DescribeApiResponseBody.ServiceConfig.FunctionComputeConfig?

        public var mock: String?

        public var mockResult: String?

        public var serviceAddress: String?

        public var serviceHttpMethod: String?

        public var servicePath: String?

        public var serviceProtocol: String?

        public var serviceTimeout: String?

        public var serviceVpcEnable: String?

        public var vpcConfig: DescribeApiResponseBody.ServiceConfig.VpcConfig?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.functionComputeConfig?.validate()
            try self.vpcConfig?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.contentTypeCatagory != nil {
                map["ContentTypeCatagory"] = self.contentTypeCatagory!
            }
            if self.contentTypeValue != nil {
                map["ContentTypeValue"] = self.contentTypeValue!
            }
            if self.functionComputeConfig != nil {
                map["FunctionComputeConfig"] = self.functionComputeConfig?.toMap()
            }
            if self.mock != nil {
                map["Mock"] = self.mock!
            }
            if self.mockResult != nil {
                map["MockResult"] = self.mockResult!
            }
            if self.serviceAddress != nil {
                map["ServiceAddress"] = self.serviceAddress!
            }
            if self.serviceHttpMethod != nil {
                map["ServiceHttpMethod"] = self.serviceHttpMethod!
            }
            if self.servicePath != nil {
                map["ServicePath"] = self.servicePath!
            }
            if self.serviceProtocol != nil {
                map["ServiceProtocol"] = self.serviceProtocol!
            }
            if self.serviceTimeout != nil {
                map["ServiceTimeout"] = self.serviceTimeout!
            }
            if self.serviceVpcEnable != nil {
                map["ServiceVpcEnable"] = self.serviceVpcEnable!
            }
            if self.vpcConfig != nil {
                map["VpcConfig"] = self.vpcConfig?.toMap()
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("ContentTypeCatagory") && dict["ContentTypeCatagory"] != nil {
                self.contentTypeCatagory = dict["ContentTypeCatagory"] as! String
            }
            if dict.keys.contains("ContentTypeValue") && dict["ContentTypeValue"] != nil {
                self.contentTypeValue = dict["ContentTypeValue"] as! String
            }
            if dict.keys.contains("FunctionComputeConfig") && dict["FunctionComputeConfig"] != nil {
                var model = DescribeApiResponseBody.ServiceConfig.FunctionComputeConfig()
                model.fromMap(dict["FunctionComputeConfig"] as! [String: Any])
                self.functionComputeConfig = model
            }
            if dict.keys.contains("Mock") && dict["Mock"] != nil {
                self.mock = dict["Mock"] as! String
            }
            if dict.keys.contains("MockResult") && dict["MockResult"] != nil {
                self.mockResult = dict["MockResult"] as! String
            }
            if dict.keys.contains("ServiceAddress") && dict["ServiceAddress"] != nil {
                self.serviceAddress = dict["ServiceAddress"] as! String
            }
            if dict.keys.contains("ServiceHttpMethod") && dict["ServiceHttpMethod"] != nil {
                self.serviceHttpMethod = dict["ServiceHttpMethod"] as! String
            }
            if dict.keys.contains("ServicePath") && dict["ServicePath"] != nil {
                self.servicePath = dict["ServicePath"] as! String
            }
            if dict.keys.contains("ServiceProtocol") && dict["ServiceProtocol"] != nil {
                self.serviceProtocol = dict["ServiceProtocol"] as! String
            }
            if dict.keys.contains("ServiceTimeout") && dict["ServiceTimeout"] != nil {
                self.serviceTimeout = dict["ServiceTimeout"] as! String
            }
            if dict.keys.contains("ServiceVpcEnable") && dict["ServiceVpcEnable"] != nil {
                self.serviceVpcEnable = dict["ServiceVpcEnable"] as! String
            }
            if dict.keys.contains("VpcConfig") && dict["VpcConfig"] != nil {
                var model = DescribeApiResponseBody.ServiceConfig.VpcConfig()
                model.fromMap(dict["VpcConfig"] as! [String: Any])
                self.vpcConfig = model
            }
        }
    }
    public class ServiceParametersObject : Tea.TeaModel {
        public class ServiceParam : Tea.TeaModel {
            public var location: String?

            public var serviceParameterName: String?

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
                if self.location != nil {
                    map["Location"] = self.location!
                }
                if self.serviceParameterName != nil {
                    map["ServiceParameterName"] = self.serviceParameterName!
                }
                if self.type != nil {
                    map["Type"] = self.type!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("Location") && dict["Location"] != nil {
                    self.location = dict["Location"] as! String
                }
                if dict.keys.contains("ServiceParameterName") && dict["ServiceParameterName"] != nil {
                    self.serviceParameterName = dict["ServiceParameterName"] as! String
                }
                if dict.keys.contains("Type") && dict["Type"] != nil {
                    self.type = dict["Type"] as! String
                }
            }
        }
        public var serviceParam: [DescribeApiResponseBody.ServiceParametersObject.ServiceParam]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.serviceParam != nil {
                var tmp : [Any] = []
                for k in self.serviceParam! {
                    tmp.append(k.toMap())
                }
                map["ServiceParam"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("ServiceParam") && dict["ServiceParam"] != nil {
                var tmp : [DescribeApiResponseBody.ServiceParametersObject.ServiceParam] = []
                for v in dict["ServiceParam"] as! [Any] {
                    var model = DescribeApiResponseBody.ServiceParametersObject.ServiceParam()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.serviceParam = tmp
            }
        }
    }
    public class SystemParameters : Tea.TeaModel {
        public class SystemParameter : Tea.TeaModel {
            public var demoValue: String?

            public var description_: String?

            public var location: String?

            public var parameterName: String?

            public var serviceParameterName: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.demoValue != nil {
                    map["DemoValue"] = self.demoValue!
                }
                if self.description_ != nil {
                    map["Description"] = self.description_!
                }
                if self.location != nil {
                    map["Location"] = self.location!
                }
                if self.parameterName != nil {
                    map["ParameterName"] = self.parameterName!
                }
                if self.serviceParameterName != nil {
                    map["ServiceParameterName"] = self.serviceParameterName!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("DemoValue") && dict["DemoValue"] != nil {
                    self.demoValue = dict["DemoValue"] as! String
                }
                if dict.keys.contains("Description") && dict["Description"] != nil {
                    self.description_ = dict["Description"] as! String
                }
                if dict.keys.contains("Location") && dict["Location"] != nil {
                    self.location = dict["Location"] as! String
                }
                if dict.keys.contains("ParameterName") && dict["ParameterName"] != nil {
                    self.parameterName = dict["ParameterName"] as! String
                }
                if dict.keys.contains("ServiceParameterName") && dict["ServiceParameterName"] != nil {
                    self.serviceParameterName = dict["ServiceParameterName"] as! String
                }
            }
        }
        public var systemParameter: [DescribeApiResponseBody.SystemParameters.SystemParameter]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.systemParameter != nil {
                var tmp : [Any] = []
                for k in self.systemParameter! {
                    tmp.append(k.toMap())
                }
                map["SystemParameter"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("SystemParameter") && dict["SystemParameter"] != nil {
                var tmp : [DescribeApiResponseBody.SystemParameters.SystemParameter] = []
                for v in dict["SystemParameter"] as! [Any] {
                    var model = DescribeApiResponseBody.SystemParameters.SystemParameter()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.systemParameter = tmp
            }
        }
    }
    public var apiId: String?

    public var apiName: String?

    public var authType: String?

    public var constantParameters: DescribeApiResponseBody.ConstantParameters?

    public var createdTime: String?

    public var customSystemParameters: DescribeApiResponseBody.CustomSystemParameters?

    public var deployedInfos: DescribeApiResponseBody.DeployedInfos?

    public var description_: String?

    public var errorCodeSamples: DescribeApiResponseBody.ErrorCodeSamples?

    public var failResultSample: String?

    public var groupId: String?

    public var groupName: String?

    public var mock: String?

    public var mockResult: String?

    public var modifiedTime: String?

    public var openIdConnectConfig: DescribeApiResponseBody.OpenIdConnectConfig?

    public var originResultDescription: String?

    public var parametersMapObject: DescribeApiResponseBody.ParametersMapObject?

    public var regionId: String?

    public var requestConfig: DescribeApiResponseBody.RequestConfig?

    public var requestId: String?

    public var requestParametersObject: DescribeApiResponseBody.RequestParametersObject?

    public var resultSample: String?

    public var resultType: String?

    public var serviceConfig: DescribeApiResponseBody.ServiceConfig?

    public var serviceParametersObject: DescribeApiResponseBody.ServiceParametersObject?

    public var systemParameters: DescribeApiResponseBody.SystemParameters?

    public var visibility: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.constantParameters?.validate()
        try self.customSystemParameters?.validate()
        try self.deployedInfos?.validate()
        try self.errorCodeSamples?.validate()
        try self.openIdConnectConfig?.validate()
        try self.parametersMapObject?.validate()
        try self.requestConfig?.validate()
        try self.requestParametersObject?.validate()
        try self.serviceConfig?.validate()
        try self.serviceParametersObject?.validate()
        try self.systemParameters?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.apiId != nil {
            map["ApiId"] = self.apiId!
        }
        if self.apiName != nil {
            map["ApiName"] = self.apiName!
        }
        if self.authType != nil {
            map["AuthType"] = self.authType!
        }
        if self.constantParameters != nil {
            map["ConstantParameters"] = self.constantParameters?.toMap()
        }
        if self.createdTime != nil {
            map["CreatedTime"] = self.createdTime!
        }
        if self.customSystemParameters != nil {
            map["CustomSystemParameters"] = self.customSystemParameters?.toMap()
        }
        if self.deployedInfos != nil {
            map["DeployedInfos"] = self.deployedInfos?.toMap()
        }
        if self.description_ != nil {
            map["Description"] = self.description_!
        }
        if self.errorCodeSamples != nil {
            map["ErrorCodeSamples"] = self.errorCodeSamples?.toMap()
        }
        if self.failResultSample != nil {
            map["FailResultSample"] = self.failResultSample!
        }
        if self.groupId != nil {
            map["GroupId"] = self.groupId!
        }
        if self.groupName != nil {
            map["GroupName"] = self.groupName!
        }
        if self.mock != nil {
            map["Mock"] = self.mock!
        }
        if self.mockResult != nil {
            map["MockResult"] = self.mockResult!
        }
        if self.modifiedTime != nil {
            map["ModifiedTime"] = self.modifiedTime!
        }
        if self.openIdConnectConfig != nil {
            map["OpenIdConnectConfig"] = self.openIdConnectConfig?.toMap()
        }
        if self.originResultDescription != nil {
            map["OriginResultDescription"] = self.originResultDescription!
        }
        if self.parametersMapObject != nil {
            map["ParametersMapObject"] = self.parametersMapObject?.toMap()
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.requestConfig != nil {
            map["RequestConfig"] = self.requestConfig?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.requestParametersObject != nil {
            map["RequestParametersObject"] = self.requestParametersObject?.toMap()
        }
        if self.resultSample != nil {
            map["ResultSample"] = self.resultSample!
        }
        if self.resultType != nil {
            map["ResultType"] = self.resultType!
        }
        if self.serviceConfig != nil {
            map["ServiceConfig"] = self.serviceConfig?.toMap()
        }
        if self.serviceParametersObject != nil {
            map["ServiceParametersObject"] = self.serviceParametersObject?.toMap()
        }
        if self.systemParameters != nil {
            map["SystemParameters"] = self.systemParameters?.toMap()
        }
        if self.visibility != nil {
            map["Visibility"] = self.visibility!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ApiId") && dict["ApiId"] != nil {
            self.apiId = dict["ApiId"] as! String
        }
        if dict.keys.contains("ApiName") && dict["ApiName"] != nil {
            self.apiName = dict["ApiName"] as! String
        }
        if dict.keys.contains("AuthType") && dict["AuthType"] != nil {
            self.authType = dict["AuthType"] as! String
        }
        if dict.keys.contains("ConstantParameters") && dict["ConstantParameters"] != nil {
            var model = DescribeApiResponseBody.ConstantParameters()
            model.fromMap(dict["ConstantParameters"] as! [String: Any])
            self.constantParameters = model
        }
        if dict.keys.contains("CreatedTime") && dict["CreatedTime"] != nil {
            self.createdTime = dict["CreatedTime"] as! String
        }
        if dict.keys.contains("CustomSystemParameters") && dict["CustomSystemParameters"] != nil {
            var model = DescribeApiResponseBody.CustomSystemParameters()
            model.fromMap(dict["CustomSystemParameters"] as! [String: Any])
            self.customSystemParameters = model
        }
        if dict.keys.contains("DeployedInfos") && dict["DeployedInfos"] != nil {
            var model = DescribeApiResponseBody.DeployedInfos()
            model.fromMap(dict["DeployedInfos"] as! [String: Any])
            self.deployedInfos = model
        }
        if dict.keys.contains("Description") && dict["Description"] != nil {
            self.description_ = dict["Description"] as! String
        }
        if dict.keys.contains("ErrorCodeSamples") && dict["ErrorCodeSamples"] != nil {
            var model = DescribeApiResponseBody.ErrorCodeSamples()
            model.fromMap(dict["ErrorCodeSamples"] as! [String: Any])
            self.errorCodeSamples = model
        }
        if dict.keys.contains("FailResultSample") && dict["FailResultSample"] != nil {
            self.failResultSample = dict["FailResultSample"] as! String
        }
        if dict.keys.contains("GroupId") && dict["GroupId"] != nil {
            self.groupId = dict["GroupId"] as! String
        }
        if dict.keys.contains("GroupName") && dict["GroupName"] != nil {
            self.groupName = dict["GroupName"] as! String
        }
        if dict.keys.contains("Mock") && dict["Mock"] != nil {
            self.mock = dict["Mock"] as! String
        }
        if dict.keys.contains("MockResult") && dict["MockResult"] != nil {
            self.mockResult = dict["MockResult"] as! String
        }
        if dict.keys.contains("ModifiedTime") && dict["ModifiedTime"] != nil {
            self.modifiedTime = dict["ModifiedTime"] as! String
        }
        if dict.keys.contains("OpenIdConnectConfig") && dict["OpenIdConnectConfig"] != nil {
            var model = DescribeApiResponseBody.OpenIdConnectConfig()
            model.fromMap(dict["OpenIdConnectConfig"] as! [String: Any])
            self.openIdConnectConfig = model
        }
        if dict.keys.contains("OriginResultDescription") && dict["OriginResultDescription"] != nil {
            self.originResultDescription = dict["OriginResultDescription"] as! String
        }
        if dict.keys.contains("ParametersMapObject") && dict["ParametersMapObject"] != nil {
            var model = DescribeApiResponseBody.ParametersMapObject()
            model.fromMap(dict["ParametersMapObject"] as! [String: Any])
            self.parametersMapObject = model
        }
        if dict.keys.contains("RegionId") && dict["RegionId"] != nil {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("RequestConfig") && dict["RequestConfig"] != nil {
            var model = DescribeApiResponseBody.RequestConfig()
            model.fromMap(dict["RequestConfig"] as! [String: Any])
            self.requestConfig = model
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("RequestParametersObject") && dict["RequestParametersObject"] != nil {
            var model = DescribeApiResponseBody.RequestParametersObject()
            model.fromMap(dict["RequestParametersObject"] as! [String: Any])
            self.requestParametersObject = model
        }
        if dict.keys.contains("ResultSample") && dict["ResultSample"] != nil {
            self.resultSample = dict["ResultSample"] as! String
        }
        if dict.keys.contains("ResultType") && dict["ResultType"] != nil {
            self.resultType = dict["ResultType"] as! String
        }
        if dict.keys.contains("ServiceConfig") && dict["ServiceConfig"] != nil {
            var model = DescribeApiResponseBody.ServiceConfig()
            model.fromMap(dict["ServiceConfig"] as! [String: Any])
            self.serviceConfig = model
        }
        if dict.keys.contains("ServiceParametersObject") && dict["ServiceParametersObject"] != nil {
            var model = DescribeApiResponseBody.ServiceParametersObject()
            model.fromMap(dict["ServiceParametersObject"] as! [String: Any])
            self.serviceParametersObject = model
        }
        if dict.keys.contains("SystemParameters") && dict["SystemParameters"] != nil {
            var model = DescribeApiResponseBody.SystemParameters()
            model.fromMap(dict["SystemParameters"] as! [String: Any])
            self.systemParameters = model
        }
        if dict.keys.contains("Visibility") && dict["Visibility"] != nil {
            self.visibility = dict["Visibility"] as! String
        }
    }
}

public class DescribeApiResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeApiResponseBody?

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
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = DescribeApiResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeApiDocRequest : Tea.TeaModel {
    public var apiId: String?

    public var groupId: String?

    public var securityToken: String?

    public var stageName: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.apiId != nil {
            map["ApiId"] = self.apiId!
        }
        if self.groupId != nil {
            map["GroupId"] = self.groupId!
        }
        if self.securityToken != nil {
            map["SecurityToken"] = self.securityToken!
        }
        if self.stageName != nil {
            map["StageName"] = self.stageName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ApiId") && dict["ApiId"] != nil {
            self.apiId = dict["ApiId"] as! String
        }
        if dict.keys.contains("GroupId") && dict["GroupId"] != nil {
            self.groupId = dict["GroupId"] as! String
        }
        if dict.keys.contains("SecurityToken") && dict["SecurityToken"] != nil {
            self.securityToken = dict["SecurityToken"] as! String
        }
        if dict.keys.contains("StageName") && dict["StageName"] != nil {
            self.stageName = dict["StageName"] as! String
        }
    }
}

public class DescribeApiDocResponseBody : Tea.TeaModel {
    public class ErrorCodeSamples : Tea.TeaModel {
        public class ErrorCodeSample : Tea.TeaModel {
            public var code: String?

            public var description_: String?

            public var message: String?

            public override init() {
                super.init()
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
                if self.description_ != nil {
                    map["Description"] = self.description_!
                }
                if self.message != nil {
                    map["Message"] = self.message!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("Code") && dict["Code"] != nil {
                    self.code = dict["Code"] as! String
                }
                if dict.keys.contains("Description") && dict["Description"] != nil {
                    self.description_ = dict["Description"] as! String
                }
                if dict.keys.contains("Message") && dict["Message"] != nil {
                    self.message = dict["Message"] as! String
                }
            }
        }
        public var errorCodeSample: [DescribeApiDocResponseBody.ErrorCodeSamples.ErrorCodeSample]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.errorCodeSample != nil {
                var tmp : [Any] = []
                for k in self.errorCodeSample! {
                    tmp.append(k.toMap())
                }
                map["ErrorCodeSample"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("ErrorCodeSample") && dict["ErrorCodeSample"] != nil {
                var tmp : [DescribeApiDocResponseBody.ErrorCodeSamples.ErrorCodeSample] = []
                for v in dict["ErrorCodeSample"] as! [Any] {
                    var model = DescribeApiDocResponseBody.ErrorCodeSamples.ErrorCodeSample()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.errorCodeSample = tmp
            }
        }
    }
    public class PathParameters : Tea.TeaModel {
        public class PathParameter : Tea.TeaModel {
            public var apiParameterName: String?

            public var demoValue: String?

            public var description_: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.apiParameterName != nil {
                    map["ApiParameterName"] = self.apiParameterName!
                }
                if self.demoValue != nil {
                    map["DemoValue"] = self.demoValue!
                }
                if self.description_ != nil {
                    map["Description"] = self.description_!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("ApiParameterName") && dict["ApiParameterName"] != nil {
                    self.apiParameterName = dict["ApiParameterName"] as! String
                }
                if dict.keys.contains("DemoValue") && dict["DemoValue"] != nil {
                    self.demoValue = dict["DemoValue"] as! String
                }
                if dict.keys.contains("Description") && dict["Description"] != nil {
                    self.description_ = dict["Description"] as! String
                }
            }
        }
        public var pathParameter: [DescribeApiDocResponseBody.PathParameters.PathParameter]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.pathParameter != nil {
                var tmp : [Any] = []
                for k in self.pathParameter! {
                    tmp.append(k.toMap())
                }
                map["PathParameter"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("PathParameter") && dict["PathParameter"] != nil {
                var tmp : [DescribeApiDocResponseBody.PathParameters.PathParameter] = []
                for v in dict["PathParameter"] as! [Any] {
                    var model = DescribeApiDocResponseBody.PathParameters.PathParameter()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.pathParameter = tmp
            }
        }
    }
    public class RequestBody : Tea.TeaModel {
        public class RequestParam : Tea.TeaModel {
            public var apiParameterName: String?

            public var defaultValue: String?

            public var demoValue: String?

            public var description_: String?

            public var enumValue: String?

            public var jsonScheme: String?

            public var maxLength: Int64?

            public var maxValue: Int64?

            public var minLength: Int64?

            public var minValue: Int64?

            public var parameterType: String?

            public var regularExpression: String?

            public var required_: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.apiParameterName != nil {
                    map["ApiParameterName"] = self.apiParameterName!
                }
                if self.defaultValue != nil {
                    map["DefaultValue"] = self.defaultValue!
                }
                if self.demoValue != nil {
                    map["DemoValue"] = self.demoValue!
                }
                if self.description_ != nil {
                    map["Description"] = self.description_!
                }
                if self.enumValue != nil {
                    map["EnumValue"] = self.enumValue!
                }
                if self.jsonScheme != nil {
                    map["JsonScheme"] = self.jsonScheme!
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
                if self.parameterType != nil {
                    map["ParameterType"] = self.parameterType!
                }
                if self.regularExpression != nil {
                    map["RegularExpression"] = self.regularExpression!
                }
                if self.required_ != nil {
                    map["Required"] = self.required_!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("ApiParameterName") && dict["ApiParameterName"] != nil {
                    self.apiParameterName = dict["ApiParameterName"] as! String
                }
                if dict.keys.contains("DefaultValue") && dict["DefaultValue"] != nil {
                    self.defaultValue = dict["DefaultValue"] as! String
                }
                if dict.keys.contains("DemoValue") && dict["DemoValue"] != nil {
                    self.demoValue = dict["DemoValue"] as! String
                }
                if dict.keys.contains("Description") && dict["Description"] != nil {
                    self.description_ = dict["Description"] as! String
                }
                if dict.keys.contains("EnumValue") && dict["EnumValue"] != nil {
                    self.enumValue = dict["EnumValue"] as! String
                }
                if dict.keys.contains("JsonScheme") && dict["JsonScheme"] != nil {
                    self.jsonScheme = dict["JsonScheme"] as! String
                }
                if dict.keys.contains("MaxLength") && dict["MaxLength"] != nil {
                    self.maxLength = dict["MaxLength"] as! Int64
                }
                if dict.keys.contains("MaxValue") && dict["MaxValue"] != nil {
                    self.maxValue = dict["MaxValue"] as! Int64
                }
                if dict.keys.contains("MinLength") && dict["MinLength"] != nil {
                    self.minLength = dict["MinLength"] as! Int64
                }
                if dict.keys.contains("MinValue") && dict["MinValue"] != nil {
                    self.minValue = dict["MinValue"] as! Int64
                }
                if dict.keys.contains("ParameterType") && dict["ParameterType"] != nil {
                    self.parameterType = dict["ParameterType"] as! String
                }
                if dict.keys.contains("RegularExpression") && dict["RegularExpression"] != nil {
                    self.regularExpression = dict["RegularExpression"] as! String
                }
                if dict.keys.contains("Required") && dict["Required"] != nil {
                    self.required_ = dict["Required"] as! String
                }
            }
        }
        public var requestParam: [DescribeApiDocResponseBody.RequestBody.RequestParam]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.requestParam != nil {
                var tmp : [Any] = []
                for k in self.requestParam! {
                    tmp.append(k.toMap())
                }
                map["RequestParam"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("RequestParam") && dict["RequestParam"] != nil {
                var tmp : [DescribeApiDocResponseBody.RequestBody.RequestParam] = []
                for v in dict["RequestParam"] as! [Any] {
                    var model = DescribeApiDocResponseBody.RequestBody.RequestParam()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.requestParam = tmp
            }
        }
    }
    public class RequestHeaders : Tea.TeaModel {
        public class RequestParam : Tea.TeaModel {
            public var apiParameterName: String?

            public var defaultValue: String?

            public var demoValue: String?

            public var description_: String?

            public var enumValue: String?

            public var jsonScheme: String?

            public var maxLength: Int64?

            public var maxValue: Int64?

            public var minLength: Int64?

            public var minValue: Int64?

            public var parameterType: String?

            public var regularExpression: String?

            public var required_: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.apiParameterName != nil {
                    map["ApiParameterName"] = self.apiParameterName!
                }
                if self.defaultValue != nil {
                    map["DefaultValue"] = self.defaultValue!
                }
                if self.demoValue != nil {
                    map["DemoValue"] = self.demoValue!
                }
                if self.description_ != nil {
                    map["Description"] = self.description_!
                }
                if self.enumValue != nil {
                    map["EnumValue"] = self.enumValue!
                }
                if self.jsonScheme != nil {
                    map["JsonScheme"] = self.jsonScheme!
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
                if self.parameterType != nil {
                    map["ParameterType"] = self.parameterType!
                }
                if self.regularExpression != nil {
                    map["RegularExpression"] = self.regularExpression!
                }
                if self.required_ != nil {
                    map["Required"] = self.required_!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("ApiParameterName") && dict["ApiParameterName"] != nil {
                    self.apiParameterName = dict["ApiParameterName"] as! String
                }
                if dict.keys.contains("DefaultValue") && dict["DefaultValue"] != nil {
                    self.defaultValue = dict["DefaultValue"] as! String
                }
                if dict.keys.contains("DemoValue") && dict["DemoValue"] != nil {
                    self.demoValue = dict["DemoValue"] as! String
                }
                if dict.keys.contains("Description") && dict["Description"] != nil {
                    self.description_ = dict["Description"] as! String
                }
                if dict.keys.contains("EnumValue") && dict["EnumValue"] != nil {
                    self.enumValue = dict["EnumValue"] as! String
                }
                if dict.keys.contains("JsonScheme") && dict["JsonScheme"] != nil {
                    self.jsonScheme = dict["JsonScheme"] as! String
                }
                if dict.keys.contains("MaxLength") && dict["MaxLength"] != nil {
                    self.maxLength = dict["MaxLength"] as! Int64
                }
                if dict.keys.contains("MaxValue") && dict["MaxValue"] != nil {
                    self.maxValue = dict["MaxValue"] as! Int64
                }
                if dict.keys.contains("MinLength") && dict["MinLength"] != nil {
                    self.minLength = dict["MinLength"] as! Int64
                }
                if dict.keys.contains("MinValue") && dict["MinValue"] != nil {
                    self.minValue = dict["MinValue"] as! Int64
                }
                if dict.keys.contains("ParameterType") && dict["ParameterType"] != nil {
                    self.parameterType = dict["ParameterType"] as! String
                }
                if dict.keys.contains("RegularExpression") && dict["RegularExpression"] != nil {
                    self.regularExpression = dict["RegularExpression"] as! String
                }
                if dict.keys.contains("Required") && dict["Required"] != nil {
                    self.required_ = dict["Required"] as! String
                }
            }
        }
        public var requestParam: [DescribeApiDocResponseBody.RequestHeaders.RequestParam]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.requestParam != nil {
                var tmp : [Any] = []
                for k in self.requestParam! {
                    tmp.append(k.toMap())
                }
                map["RequestParam"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("RequestParam") && dict["RequestParam"] != nil {
                var tmp : [DescribeApiDocResponseBody.RequestHeaders.RequestParam] = []
                for v in dict["RequestParam"] as! [Any] {
                    var model = DescribeApiDocResponseBody.RequestHeaders.RequestParam()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.requestParam = tmp
            }
        }
    }
    public class RequestQueries : Tea.TeaModel {
        public class RequestParam : Tea.TeaModel {
            public var apiParameterName: String?

            public var defaultValue: String?

            public var demoValue: String?

            public var description_: String?

            public var enumValue: String?

            public var jsonScheme: String?

            public var maxLength: Int64?

            public var maxValue: Int64?

            public var minLength: Int64?

            public var minValue: Int64?

            public var parameterType: String?

            public var regularExpression: String?

            public var required_: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.apiParameterName != nil {
                    map["ApiParameterName"] = self.apiParameterName!
                }
                if self.defaultValue != nil {
                    map["DefaultValue"] = self.defaultValue!
                }
                if self.demoValue != nil {
                    map["DemoValue"] = self.demoValue!
                }
                if self.description_ != nil {
                    map["Description"] = self.description_!
                }
                if self.enumValue != nil {
                    map["EnumValue"] = self.enumValue!
                }
                if self.jsonScheme != nil {
                    map["JsonScheme"] = self.jsonScheme!
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
                if self.parameterType != nil {
                    map["ParameterType"] = self.parameterType!
                }
                if self.regularExpression != nil {
                    map["RegularExpression"] = self.regularExpression!
                }
                if self.required_ != nil {
                    map["Required"] = self.required_!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("ApiParameterName") && dict["ApiParameterName"] != nil {
                    self.apiParameterName = dict["ApiParameterName"] as! String
                }
                if dict.keys.contains("DefaultValue") && dict["DefaultValue"] != nil {
                    self.defaultValue = dict["DefaultValue"] as! String
                }
                if dict.keys.contains("DemoValue") && dict["DemoValue"] != nil {
                    self.demoValue = dict["DemoValue"] as! String
                }
                if dict.keys.contains("Description") && dict["Description"] != nil {
                    self.description_ = dict["Description"] as! String
                }
                if dict.keys.contains("EnumValue") && dict["EnumValue"] != nil {
                    self.enumValue = dict["EnumValue"] as! String
                }
                if dict.keys.contains("JsonScheme") && dict["JsonScheme"] != nil {
                    self.jsonScheme = dict["JsonScheme"] as! String
                }
                if dict.keys.contains("MaxLength") && dict["MaxLength"] != nil {
                    self.maxLength = dict["MaxLength"] as! Int64
                }
                if dict.keys.contains("MaxValue") && dict["MaxValue"] != nil {
                    self.maxValue = dict["MaxValue"] as! Int64
                }
                if dict.keys.contains("MinLength") && dict["MinLength"] != nil {
                    self.minLength = dict["MinLength"] as! Int64
                }
                if dict.keys.contains("MinValue") && dict["MinValue"] != nil {
                    self.minValue = dict["MinValue"] as! Int64
                }
                if dict.keys.contains("ParameterType") && dict["ParameterType"] != nil {
                    self.parameterType = dict["ParameterType"] as! String
                }
                if dict.keys.contains("RegularExpression") && dict["RegularExpression"] != nil {
                    self.regularExpression = dict["RegularExpression"] as! String
                }
                if dict.keys.contains("Required") && dict["Required"] != nil {
                    self.required_ = dict["Required"] as! String
                }
            }
        }
        public var requestParam: [DescribeApiDocResponseBody.RequestQueries.RequestParam]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.requestParam != nil {
                var tmp : [Any] = []
                for k in self.requestParam! {
                    tmp.append(k.toMap())
                }
                map["RequestParam"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("RequestParam") && dict["RequestParam"] != nil {
                var tmp : [DescribeApiDocResponseBody.RequestQueries.RequestParam] = []
                for v in dict["RequestParam"] as! [Any] {
                    var model = DescribeApiDocResponseBody.RequestQueries.RequestParam()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.requestParam = tmp
            }
        }
    }
    public class ResultDescriptions : Tea.TeaModel {
        public class ResultDescription : Tea.TeaModel {
            public var description_: String?

            public var hasChild: Bool?

            public var id: String?

            public var key: String?

            public var mandatory: Bool?

            public var name: String?

            public var pid: String?

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
                if self.hasChild != nil {
                    map["HasChild"] = self.hasChild!
                }
                if self.id != nil {
                    map["Id"] = self.id!
                }
                if self.key != nil {
                    map["Key"] = self.key!
                }
                if self.mandatory != nil {
                    map["Mandatory"] = self.mandatory!
                }
                if self.name != nil {
                    map["Name"] = self.name!
                }
                if self.pid != nil {
                    map["Pid"] = self.pid!
                }
                if self.type != nil {
                    map["Type"] = self.type!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("Description") && dict["Description"] != nil {
                    self.description_ = dict["Description"] as! String
                }
                if dict.keys.contains("HasChild") && dict["HasChild"] != nil {
                    self.hasChild = dict["HasChild"] as! Bool
                }
                if dict.keys.contains("Id") && dict["Id"] != nil {
                    self.id = dict["Id"] as! String
                }
                if dict.keys.contains("Key") && dict["Key"] != nil {
                    self.key = dict["Key"] as! String
                }
                if dict.keys.contains("Mandatory") && dict["Mandatory"] != nil {
                    self.mandatory = dict["Mandatory"] as! Bool
                }
                if dict.keys.contains("Name") && dict["Name"] != nil {
                    self.name = dict["Name"] as! String
                }
                if dict.keys.contains("Pid") && dict["Pid"] != nil {
                    self.pid = dict["Pid"] as! String
                }
                if dict.keys.contains("Type") && dict["Type"] != nil {
                    self.type = dict["Type"] as! String
                }
            }
        }
        public var resultDescription: [DescribeApiDocResponseBody.ResultDescriptions.ResultDescription]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.resultDescription != nil {
                var tmp : [Any] = []
                for k in self.resultDescription! {
                    tmp.append(k.toMap())
                }
                map["ResultDescription"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("ResultDescription") && dict["ResultDescription"] != nil {
                var tmp : [DescribeApiDocResponseBody.ResultDescriptions.ResultDescription] = []
                for v in dict["ResultDescription"] as! [Any] {
                    var model = DescribeApiDocResponseBody.ResultDescriptions.ResultDescription()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.resultDescription = tmp
            }
        }
    }
    public class SdkDemos : Tea.TeaModel {
        public class SdkDemo : Tea.TeaModel {
            public var callDemo: String?

            public var ideKey: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.callDemo != nil {
                    map["CallDemo"] = self.callDemo!
                }
                if self.ideKey != nil {
                    map["IdeKey"] = self.ideKey!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("CallDemo") && dict["CallDemo"] != nil {
                    self.callDemo = dict["CallDemo"] as! String
                }
                if dict.keys.contains("IdeKey") && dict["IdeKey"] != nil {
                    self.ideKey = dict["IdeKey"] as! String
                }
            }
        }
        public var sdkDemo: [DescribeApiDocResponseBody.SdkDemos.SdkDemo]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.sdkDemo != nil {
                var tmp : [Any] = []
                for k in self.sdkDemo! {
                    tmp.append(k.toMap())
                }
                map["SdkDemo"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("SdkDemo") && dict["SdkDemo"] != nil {
                var tmp : [DescribeApiDocResponseBody.SdkDemos.SdkDemo] = []
                for v in dict["SdkDemo"] as! [Any] {
                    var model = DescribeApiDocResponseBody.SdkDemos.SdkDemo()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.sdkDemo = tmp
            }
        }
    }
    public var apiId: String?

    public var apiName: String?

    public var bodyFormat: String?

    public var deployedTime: String?

    public var description_: String?

    public var errorCodeSamples: DescribeApiDocResponseBody.ErrorCodeSamples?

    public var failResultSample: String?

    public var groupId: String?

    public var groupName: String?

    public var httpMethod: String?

    public var httpProtocol: String?

    public var path: String?

    public var pathParameters: DescribeApiDocResponseBody.PathParameters?

    public var postBodyDescription: String?

    public var postBodyType: String?

    public var regionId: String?

    public var requestBody: DescribeApiDocResponseBody.RequestBody?

    public var requestHeaders: DescribeApiDocResponseBody.RequestHeaders?

    public var requestId: String?

    public var requestQueries: DescribeApiDocResponseBody.RequestQueries?

    public var resultDescriptions: DescribeApiDocResponseBody.ResultDescriptions?

    public var resultSample: String?

    public var resultType: String?

    public var sdkDemos: DescribeApiDocResponseBody.SdkDemos?

    public var serviceTimeout: Int32?

    public var stageName: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.errorCodeSamples?.validate()
        try self.pathParameters?.validate()
        try self.requestBody?.validate()
        try self.requestHeaders?.validate()
        try self.requestQueries?.validate()
        try self.resultDescriptions?.validate()
        try self.sdkDemos?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.apiId != nil {
            map["ApiId"] = self.apiId!
        }
        if self.apiName != nil {
            map["ApiName"] = self.apiName!
        }
        if self.bodyFormat != nil {
            map["BodyFormat"] = self.bodyFormat!
        }
        if self.deployedTime != nil {
            map["DeployedTime"] = self.deployedTime!
        }
        if self.description_ != nil {
            map["Description"] = self.description_!
        }
        if self.errorCodeSamples != nil {
            map["ErrorCodeSamples"] = self.errorCodeSamples?.toMap()
        }
        if self.failResultSample != nil {
            map["FailResultSample"] = self.failResultSample!
        }
        if self.groupId != nil {
            map["GroupId"] = self.groupId!
        }
        if self.groupName != nil {
            map["GroupName"] = self.groupName!
        }
        if self.httpMethod != nil {
            map["HttpMethod"] = self.httpMethod!
        }
        if self.httpProtocol != nil {
            map["HttpProtocol"] = self.httpProtocol!
        }
        if self.path != nil {
            map["Path"] = self.path!
        }
        if self.pathParameters != nil {
            map["PathParameters"] = self.pathParameters?.toMap()
        }
        if self.postBodyDescription != nil {
            map["PostBodyDescription"] = self.postBodyDescription!
        }
        if self.postBodyType != nil {
            map["PostBodyType"] = self.postBodyType!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.requestBody != nil {
            map["RequestBody"] = self.requestBody?.toMap()
        }
        if self.requestHeaders != nil {
            map["RequestHeaders"] = self.requestHeaders?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.requestQueries != nil {
            map["RequestQueries"] = self.requestQueries?.toMap()
        }
        if self.resultDescriptions != nil {
            map["ResultDescriptions"] = self.resultDescriptions?.toMap()
        }
        if self.resultSample != nil {
            map["ResultSample"] = self.resultSample!
        }
        if self.resultType != nil {
            map["ResultType"] = self.resultType!
        }
        if self.sdkDemos != nil {
            map["SdkDemos"] = self.sdkDemos?.toMap()
        }
        if self.serviceTimeout != nil {
            map["ServiceTimeout"] = self.serviceTimeout!
        }
        if self.stageName != nil {
            map["StageName"] = self.stageName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ApiId") && dict["ApiId"] != nil {
            self.apiId = dict["ApiId"] as! String
        }
        if dict.keys.contains("ApiName") && dict["ApiName"] != nil {
            self.apiName = dict["ApiName"] as! String
        }
        if dict.keys.contains("BodyFormat") && dict["BodyFormat"] != nil {
            self.bodyFormat = dict["BodyFormat"] as! String
        }
        if dict.keys.contains("DeployedTime") && dict["DeployedTime"] != nil {
            self.deployedTime = dict["DeployedTime"] as! String
        }
        if dict.keys.contains("Description") && dict["Description"] != nil {
            self.description_ = dict["Description"] as! String
        }
        if dict.keys.contains("ErrorCodeSamples") && dict["ErrorCodeSamples"] != nil {
            var model = DescribeApiDocResponseBody.ErrorCodeSamples()
            model.fromMap(dict["ErrorCodeSamples"] as! [String: Any])
            self.errorCodeSamples = model
        }
        if dict.keys.contains("FailResultSample") && dict["FailResultSample"] != nil {
            self.failResultSample = dict["FailResultSample"] as! String
        }
        if dict.keys.contains("GroupId") && dict["GroupId"] != nil {
            self.groupId = dict["GroupId"] as! String
        }
        if dict.keys.contains("GroupName") && dict["GroupName"] != nil {
            self.groupName = dict["GroupName"] as! String
        }
        if dict.keys.contains("HttpMethod") && dict["HttpMethod"] != nil {
            self.httpMethod = dict["HttpMethod"] as! String
        }
        if dict.keys.contains("HttpProtocol") && dict["HttpProtocol"] != nil {
            self.httpProtocol = dict["HttpProtocol"] as! String
        }
        if dict.keys.contains("Path") && dict["Path"] != nil {
            self.path = dict["Path"] as! String
        }
        if dict.keys.contains("PathParameters") && dict["PathParameters"] != nil {
            var model = DescribeApiDocResponseBody.PathParameters()
            model.fromMap(dict["PathParameters"] as! [String: Any])
            self.pathParameters = model
        }
        if dict.keys.contains("PostBodyDescription") && dict["PostBodyDescription"] != nil {
            self.postBodyDescription = dict["PostBodyDescription"] as! String
        }
        if dict.keys.contains("PostBodyType") && dict["PostBodyType"] != nil {
            self.postBodyType = dict["PostBodyType"] as! String
        }
        if dict.keys.contains("RegionId") && dict["RegionId"] != nil {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("RequestBody") && dict["RequestBody"] != nil {
            var model = DescribeApiDocResponseBody.RequestBody()
            model.fromMap(dict["RequestBody"] as! [String: Any])
            self.requestBody = model
        }
        if dict.keys.contains("RequestHeaders") && dict["RequestHeaders"] != nil {
            var model = DescribeApiDocResponseBody.RequestHeaders()
            model.fromMap(dict["RequestHeaders"] as! [String: Any])
            self.requestHeaders = model
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("RequestQueries") && dict["RequestQueries"] != nil {
            var model = DescribeApiDocResponseBody.RequestQueries()
            model.fromMap(dict["RequestQueries"] as! [String: Any])
            self.requestQueries = model
        }
        if dict.keys.contains("ResultDescriptions") && dict["ResultDescriptions"] != nil {
            var model = DescribeApiDocResponseBody.ResultDescriptions()
            model.fromMap(dict["ResultDescriptions"] as! [String: Any])
            self.resultDescriptions = model
        }
        if dict.keys.contains("ResultSample") && dict["ResultSample"] != nil {
            self.resultSample = dict["ResultSample"] as! String
        }
        if dict.keys.contains("ResultType") && dict["ResultType"] != nil {
            self.resultType = dict["ResultType"] as! String
        }
        if dict.keys.contains("SdkDemos") && dict["SdkDemos"] != nil {
            var model = DescribeApiDocResponseBody.SdkDemos()
            model.fromMap(dict["SdkDemos"] as! [String: Any])
            self.sdkDemos = model
        }
        if dict.keys.contains("ServiceTimeout") && dict["ServiceTimeout"] != nil {
            self.serviceTimeout = dict["ServiceTimeout"] as! Int32
        }
        if dict.keys.contains("StageName") && dict["StageName"] != nil {
            self.stageName = dict["StageName"] as! String
        }
    }
}

public class DescribeApiDocResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeApiDocResponseBody?

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
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = DescribeApiDocResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeApiDocsRequest : Tea.TeaModel {
    public var apiId: String?

    public var apiName: String?

    public var groupId: String?

    public var pageNumber: Int32?

    public var pageSize: Int32?

    public var securityToken: String?

    public var stageName: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.apiId != nil {
            map["ApiId"] = self.apiId!
        }
        if self.apiName != nil {
            map["ApiName"] = self.apiName!
        }
        if self.groupId != nil {
            map["GroupId"] = self.groupId!
        }
        if self.pageNumber != nil {
            map["PageNumber"] = self.pageNumber!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.securityToken != nil {
            map["SecurityToken"] = self.securityToken!
        }
        if self.stageName != nil {
            map["StageName"] = self.stageName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ApiId") && dict["ApiId"] != nil {
            self.apiId = dict["ApiId"] as! String
        }
        if dict.keys.contains("ApiName") && dict["ApiName"] != nil {
            self.apiName = dict["ApiName"] as! String
        }
        if dict.keys.contains("GroupId") && dict["GroupId"] != nil {
            self.groupId = dict["GroupId"] as! String
        }
        if dict.keys.contains("PageNumber") && dict["PageNumber"] != nil {
            self.pageNumber = dict["PageNumber"] as! Int32
        }
        if dict.keys.contains("PageSize") && dict["PageSize"] != nil {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("SecurityToken") && dict["SecurityToken"] != nil {
            self.securityToken = dict["SecurityToken"] as! String
        }
        if dict.keys.contains("StageName") && dict["StageName"] != nil {
            self.stageName = dict["StageName"] as! String
        }
    }
}

public class DescribeApiDocsResponseBody : Tea.TeaModel {
    public class ApiInfos : Tea.TeaModel {
        public class ApiInfo : Tea.TeaModel {
            public var apiId: String?

            public var apiName: String?

            public var deployedTime: String?

            public var description_: String?

            public var groupDescription: String?

            public var groupId: String?

            public var groupName: String?

            public var regionId: String?

            public var stageName: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.apiId != nil {
                    map["ApiId"] = self.apiId!
                }
                if self.apiName != nil {
                    map["ApiName"] = self.apiName!
                }
                if self.deployedTime != nil {
                    map["DeployedTime"] = self.deployedTime!
                }
                if self.description_ != nil {
                    map["Description"] = self.description_!
                }
                if self.groupDescription != nil {
                    map["GroupDescription"] = self.groupDescription!
                }
                if self.groupId != nil {
                    map["GroupId"] = self.groupId!
                }
                if self.groupName != nil {
                    map["GroupName"] = self.groupName!
                }
                if self.regionId != nil {
                    map["RegionId"] = self.regionId!
                }
                if self.stageName != nil {
                    map["StageName"] = self.stageName!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("ApiId") && dict["ApiId"] != nil {
                    self.apiId = dict["ApiId"] as! String
                }
                if dict.keys.contains("ApiName") && dict["ApiName"] != nil {
                    self.apiName = dict["ApiName"] as! String
                }
                if dict.keys.contains("DeployedTime") && dict["DeployedTime"] != nil {
                    self.deployedTime = dict["DeployedTime"] as! String
                }
                if dict.keys.contains("Description") && dict["Description"] != nil {
                    self.description_ = dict["Description"] as! String
                }
                if dict.keys.contains("GroupDescription") && dict["GroupDescription"] != nil {
                    self.groupDescription = dict["GroupDescription"] as! String
                }
                if dict.keys.contains("GroupId") && dict["GroupId"] != nil {
                    self.groupId = dict["GroupId"] as! String
                }
                if dict.keys.contains("GroupName") && dict["GroupName"] != nil {
                    self.groupName = dict["GroupName"] as! String
                }
                if dict.keys.contains("RegionId") && dict["RegionId"] != nil {
                    self.regionId = dict["RegionId"] as! String
                }
                if dict.keys.contains("StageName") && dict["StageName"] != nil {
                    self.stageName = dict["StageName"] as! String
                }
            }
        }
        public var apiInfo: [DescribeApiDocsResponseBody.ApiInfos.ApiInfo]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.apiInfo != nil {
                var tmp : [Any] = []
                for k in self.apiInfo! {
                    tmp.append(k.toMap())
                }
                map["ApiInfo"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("ApiInfo") && dict["ApiInfo"] != nil {
                var tmp : [DescribeApiDocsResponseBody.ApiInfos.ApiInfo] = []
                for v in dict["ApiInfo"] as! [Any] {
                    var model = DescribeApiDocsResponseBody.ApiInfos.ApiInfo()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.apiInfo = tmp
            }
        }
    }
    public var apiInfos: DescribeApiDocsResponseBody.ApiInfos?

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
        try self.apiInfos?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.apiInfos != nil {
            map["ApiInfos"] = self.apiInfos?.toMap()
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
        if dict.keys.contains("ApiInfos") && dict["ApiInfos"] != nil {
            var model = DescribeApiDocsResponseBody.ApiInfos()
            model.fromMap(dict["ApiInfos"] as! [String: Any])
            self.apiInfos = model
        }
        if dict.keys.contains("PageNumber") && dict["PageNumber"] != nil {
            self.pageNumber = dict["PageNumber"] as! Int32
        }
        if dict.keys.contains("PageSize") && dict["PageSize"] != nil {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("TotalCount") && dict["TotalCount"] != nil {
            self.totalCount = dict["TotalCount"] as! Int32
        }
    }
}

public class DescribeApiDocsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeApiDocsResponseBody?

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
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = DescribeApiDocsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeApiDocsForBackendRequest : Tea.TeaModel {
    public var aliUid: Int64?

    public var apiId: String?

    public var apiName: String?

    public var groupId: String?

    public var pageNumber: Int32?

    public var pageSize: Int32?

    public var stageName: String?

    public override init() {
        super.init()
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
        if self.apiId != nil {
            map["ApiId"] = self.apiId!
        }
        if self.apiName != nil {
            map["ApiName"] = self.apiName!
        }
        if self.groupId != nil {
            map["GroupId"] = self.groupId!
        }
        if self.pageNumber != nil {
            map["PageNumber"] = self.pageNumber!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.stageName != nil {
            map["StageName"] = self.stageName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AliUid") && dict["AliUid"] != nil {
            self.aliUid = dict["AliUid"] as! Int64
        }
        if dict.keys.contains("ApiId") && dict["ApiId"] != nil {
            self.apiId = dict["ApiId"] as! String
        }
        if dict.keys.contains("ApiName") && dict["ApiName"] != nil {
            self.apiName = dict["ApiName"] as! String
        }
        if dict.keys.contains("GroupId") && dict["GroupId"] != nil {
            self.groupId = dict["GroupId"] as! String
        }
        if dict.keys.contains("PageNumber") && dict["PageNumber"] != nil {
            self.pageNumber = dict["PageNumber"] as! Int32
        }
        if dict.keys.contains("PageSize") && dict["PageSize"] != nil {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("StageName") && dict["StageName"] != nil {
            self.stageName = dict["StageName"] as! String
        }
    }
}

public class DescribeApiDocsForBackendResponseBody : Tea.TeaModel {
    public class ApiInfos : Tea.TeaModel {
        public class ApiInfo : Tea.TeaModel {
            public var apiId: String?

            public var apiName: String?

            public var deployedTime: String?

            public var description_: String?

            public var groupDescription: String?

            public var groupId: String?

            public var groupName: String?

            public var regionId: String?

            public var stageName: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.apiId != nil {
                    map["ApiId"] = self.apiId!
                }
                if self.apiName != nil {
                    map["ApiName"] = self.apiName!
                }
                if self.deployedTime != nil {
                    map["DeployedTime"] = self.deployedTime!
                }
                if self.description_ != nil {
                    map["Description"] = self.description_!
                }
                if self.groupDescription != nil {
                    map["GroupDescription"] = self.groupDescription!
                }
                if self.groupId != nil {
                    map["GroupId"] = self.groupId!
                }
                if self.groupName != nil {
                    map["GroupName"] = self.groupName!
                }
                if self.regionId != nil {
                    map["RegionId"] = self.regionId!
                }
                if self.stageName != nil {
                    map["StageName"] = self.stageName!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("ApiId") && dict["ApiId"] != nil {
                    self.apiId = dict["ApiId"] as! String
                }
                if dict.keys.contains("ApiName") && dict["ApiName"] != nil {
                    self.apiName = dict["ApiName"] as! String
                }
                if dict.keys.contains("DeployedTime") && dict["DeployedTime"] != nil {
                    self.deployedTime = dict["DeployedTime"] as! String
                }
                if dict.keys.contains("Description") && dict["Description"] != nil {
                    self.description_ = dict["Description"] as! String
                }
                if dict.keys.contains("GroupDescription") && dict["GroupDescription"] != nil {
                    self.groupDescription = dict["GroupDescription"] as! String
                }
                if dict.keys.contains("GroupId") && dict["GroupId"] != nil {
                    self.groupId = dict["GroupId"] as! String
                }
                if dict.keys.contains("GroupName") && dict["GroupName"] != nil {
                    self.groupName = dict["GroupName"] as! String
                }
                if dict.keys.contains("RegionId") && dict["RegionId"] != nil {
                    self.regionId = dict["RegionId"] as! String
                }
                if dict.keys.contains("StageName") && dict["StageName"] != nil {
                    self.stageName = dict["StageName"] as! String
                }
            }
        }
        public var apiInfo: [DescribeApiDocsForBackendResponseBody.ApiInfos.ApiInfo]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.apiInfo != nil {
                var tmp : [Any] = []
                for k in self.apiInfo! {
                    tmp.append(k.toMap())
                }
                map["ApiInfo"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("ApiInfo") && dict["ApiInfo"] != nil {
                var tmp : [DescribeApiDocsForBackendResponseBody.ApiInfos.ApiInfo] = []
                for v in dict["ApiInfo"] as! [Any] {
                    var model = DescribeApiDocsForBackendResponseBody.ApiInfos.ApiInfo()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.apiInfo = tmp
            }
        }
    }
    public var apiInfos: DescribeApiDocsForBackendResponseBody.ApiInfos?

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
        try self.apiInfos?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.apiInfos != nil {
            map["ApiInfos"] = self.apiInfos?.toMap()
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
        if dict.keys.contains("ApiInfos") && dict["ApiInfos"] != nil {
            var model = DescribeApiDocsForBackendResponseBody.ApiInfos()
            model.fromMap(dict["ApiInfos"] as! [String: Any])
            self.apiInfos = model
        }
        if dict.keys.contains("PageNumber") && dict["PageNumber"] != nil {
            self.pageNumber = dict["PageNumber"] as! Int32
        }
        if dict.keys.contains("PageSize") && dict["PageSize"] != nil {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("TotalCount") && dict["TotalCount"] != nil {
            self.totalCount = dict["TotalCount"] as! Int32
        }
    }
}

public class DescribeApiDocsForBackendResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeApiDocsForBackendResponseBody?

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
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = DescribeApiDocsForBackendResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeApiErrorRequest : Tea.TeaModel {
    public var apiId: String?

    public var endTime: String?

    public var groupId: String?

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
        if self.apiId != nil {
            map["ApiId"] = self.apiId!
        }
        if self.endTime != nil {
            map["EndTime"] = self.endTime!
        }
        if self.groupId != nil {
            map["GroupId"] = self.groupId!
        }
        if self.startTime != nil {
            map["StartTime"] = self.startTime!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ApiId") && dict["ApiId"] != nil {
            self.apiId = dict["ApiId"] as! String
        }
        if dict.keys.contains("EndTime") && dict["EndTime"] != nil {
            self.endTime = dict["EndTime"] as! String
        }
        if dict.keys.contains("GroupId") && dict["GroupId"] != nil {
            self.groupId = dict["GroupId"] as! String
        }
        if dict.keys.contains("StartTime") && dict["StartTime"] != nil {
            self.startTime = dict["StartTime"] as! String
        }
    }
}

public class DescribeApiErrorResponseBody : Tea.TeaModel {
    public class ClientErrors : Tea.TeaModel {
        public class ClientError : Tea.TeaModel {
            public var time: String?

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
                if self.time != nil {
                    map["Time"] = self.time!
                }
                if self.value != nil {
                    map["Value"] = self.value!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("Time") && dict["Time"] != nil {
                    self.time = dict["Time"] as! String
                }
                if dict.keys.contains("Value") && dict["Value"] != nil {
                    self.value = dict["Value"] as! String
                }
            }
        }
        public var clientError: [DescribeApiErrorResponseBody.ClientErrors.ClientError]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.clientError != nil {
                var tmp : [Any] = []
                for k in self.clientError! {
                    tmp.append(k.toMap())
                }
                map["ClientError"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("ClientError") && dict["ClientError"] != nil {
                var tmp : [DescribeApiErrorResponseBody.ClientErrors.ClientError] = []
                for v in dict["ClientError"] as! [Any] {
                    var model = DescribeApiErrorResponseBody.ClientErrors.ClientError()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.clientError = tmp
            }
        }
    }
    public class ServerErrors : Tea.TeaModel {
        public class ServerError : Tea.TeaModel {
            public var time: String?

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
                if self.time != nil {
                    map["Time"] = self.time!
                }
                if self.value != nil {
                    map["Value"] = self.value!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("Time") && dict["Time"] != nil {
                    self.time = dict["Time"] as! String
                }
                if dict.keys.contains("Value") && dict["Value"] != nil {
                    self.value = dict["Value"] as! String
                }
            }
        }
        public var serverError: [DescribeApiErrorResponseBody.ServerErrors.ServerError]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.serverError != nil {
                var tmp : [Any] = []
                for k in self.serverError! {
                    tmp.append(k.toMap())
                }
                map["ServerError"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("ServerError") && dict["ServerError"] != nil {
                var tmp : [DescribeApiErrorResponseBody.ServerErrors.ServerError] = []
                for v in dict["ServerError"] as! [Any] {
                    var model = DescribeApiErrorResponseBody.ServerErrors.ServerError()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.serverError = tmp
            }
        }
    }
    public var clientErrors: DescribeApiErrorResponseBody.ClientErrors?

    public var requestId: String?

    public var serverErrors: DescribeApiErrorResponseBody.ServerErrors?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.clientErrors?.validate()
        try self.serverErrors?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.clientErrors != nil {
            map["ClientErrors"] = self.clientErrors?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.serverErrors != nil {
            map["ServerErrors"] = self.serverErrors?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ClientErrors") && dict["ClientErrors"] != nil {
            var model = DescribeApiErrorResponseBody.ClientErrors()
            model.fromMap(dict["ClientErrors"] as! [String: Any])
            self.clientErrors = model
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("ServerErrors") && dict["ServerErrors"] != nil {
            var model = DescribeApiErrorResponseBody.ServerErrors()
            model.fromMap(dict["ServerErrors"] as! [String: Any])
            self.serverErrors = model
        }
    }
}

public class DescribeApiErrorResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeApiErrorResponseBody?

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
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = DescribeApiErrorResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeApiGroupDetailRequest : Tea.TeaModel {
    public var groupId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.groupId != nil {
            map["GroupId"] = self.groupId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("GroupId") && dict["GroupId"] != nil {
            self.groupId = dict["GroupId"] as! String
        }
    }
}

public class DescribeApiGroupDetailResponseBody : Tea.TeaModel {
    public class DomainItems : Tea.TeaModel {
        public class DomainItem : Tea.TeaModel {
            public var certificateId: String?

            public var certificateName: String?

            public var domainName: String?

            public var domainNameResolution: String?

            public var domainStatus: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.certificateId != nil {
                    map["CertificateId"] = self.certificateId!
                }
                if self.certificateName != nil {
                    map["CertificateName"] = self.certificateName!
                }
                if self.domainName != nil {
                    map["DomainName"] = self.domainName!
                }
                if self.domainNameResolution != nil {
                    map["DomainNameResolution"] = self.domainNameResolution!
                }
                if self.domainStatus != nil {
                    map["DomainStatus"] = self.domainStatus!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("CertificateId") && dict["CertificateId"] != nil {
                    self.certificateId = dict["CertificateId"] as! String
                }
                if dict.keys.contains("CertificateName") && dict["CertificateName"] != nil {
                    self.certificateName = dict["CertificateName"] as! String
                }
                if dict.keys.contains("DomainName") && dict["DomainName"] != nil {
                    self.domainName = dict["DomainName"] as! String
                }
                if dict.keys.contains("DomainNameResolution") && dict["DomainNameResolution"] != nil {
                    self.domainNameResolution = dict["DomainNameResolution"] as! String
                }
                if dict.keys.contains("DomainStatus") && dict["DomainStatus"] != nil {
                    self.domainStatus = dict["DomainStatus"] as! String
                }
            }
        }
        public var domainItem: [DescribeApiGroupDetailResponseBody.DomainItems.DomainItem]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.domainItem != nil {
                var tmp : [Any] = []
                for k in self.domainItem! {
                    tmp.append(k.toMap())
                }
                map["DomainItem"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("DomainItem") && dict["DomainItem"] != nil {
                var tmp : [DescribeApiGroupDetailResponseBody.DomainItems.DomainItem] = []
                for v in dict["DomainItem"] as! [Any] {
                    var model = DescribeApiGroupDetailResponseBody.DomainItems.DomainItem()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.domainItem = tmp
            }
        }
    }
    public var billingStatus: String?

    public var createdTime: String?

    public var description_: String?

    public var domainItems: DescribeApiGroupDetailResponseBody.DomainItems?

    public var groupId: String?

    public var groupName: String?

    public var illegalStatus: String?

    public var modifiedTime: String?

    public var regionId: String?

    public var requestId: String?

    public var status: String?

    public var subDomain: String?

    public var trafficLimit: Int32?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.domainItems?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.billingStatus != nil {
            map["BillingStatus"] = self.billingStatus!
        }
        if self.createdTime != nil {
            map["CreatedTime"] = self.createdTime!
        }
        if self.description_ != nil {
            map["Description"] = self.description_!
        }
        if self.domainItems != nil {
            map["DomainItems"] = self.domainItems?.toMap()
        }
        if self.groupId != nil {
            map["GroupId"] = self.groupId!
        }
        if self.groupName != nil {
            map["GroupName"] = self.groupName!
        }
        if self.illegalStatus != nil {
            map["IllegalStatus"] = self.illegalStatus!
        }
        if self.modifiedTime != nil {
            map["ModifiedTime"] = self.modifiedTime!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.status != nil {
            map["Status"] = self.status!
        }
        if self.subDomain != nil {
            map["SubDomain"] = self.subDomain!
        }
        if self.trafficLimit != nil {
            map["TrafficLimit"] = self.trafficLimit!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("BillingStatus") && dict["BillingStatus"] != nil {
            self.billingStatus = dict["BillingStatus"] as! String
        }
        if dict.keys.contains("CreatedTime") && dict["CreatedTime"] != nil {
            self.createdTime = dict["CreatedTime"] as! String
        }
        if dict.keys.contains("Description") && dict["Description"] != nil {
            self.description_ = dict["Description"] as! String
        }
        if dict.keys.contains("DomainItems") && dict["DomainItems"] != nil {
            var model = DescribeApiGroupDetailResponseBody.DomainItems()
            model.fromMap(dict["DomainItems"] as! [String: Any])
            self.domainItems = model
        }
        if dict.keys.contains("GroupId") && dict["GroupId"] != nil {
            self.groupId = dict["GroupId"] as! String
        }
        if dict.keys.contains("GroupName") && dict["GroupName"] != nil {
            self.groupName = dict["GroupName"] as! String
        }
        if dict.keys.contains("IllegalStatus") && dict["IllegalStatus"] != nil {
            self.illegalStatus = dict["IllegalStatus"] as! String
        }
        if dict.keys.contains("ModifiedTime") && dict["ModifiedTime"] != nil {
            self.modifiedTime = dict["ModifiedTime"] as! String
        }
        if dict.keys.contains("RegionId") && dict["RegionId"] != nil {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Status") && dict["Status"] != nil {
            self.status = dict["Status"] as! String
        }
        if dict.keys.contains("SubDomain") && dict["SubDomain"] != nil {
            self.subDomain = dict["SubDomain"] as! String
        }
        if dict.keys.contains("TrafficLimit") && dict["TrafficLimit"] != nil {
            self.trafficLimit = dict["TrafficLimit"] as! Int32
        }
    }
}

public class DescribeApiGroupDetailResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeApiGroupDetailResponseBody?

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
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = DescribeApiGroupDetailResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeApiGroupsRequest : Tea.TeaModel {
    public var groupId: String?

    public var groupName: String?

    public var pageNumber: Int32?

    public var pageSize: Int32?

    public var securityToken: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.groupId != nil {
            map["GroupId"] = self.groupId!
        }
        if self.groupName != nil {
            map["GroupName"] = self.groupName!
        }
        if self.pageNumber != nil {
            map["PageNumber"] = self.pageNumber!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.securityToken != nil {
            map["SecurityToken"] = self.securityToken!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("GroupId") && dict["GroupId"] != nil {
            self.groupId = dict["GroupId"] as! String
        }
        if dict.keys.contains("GroupName") && dict["GroupName"] != nil {
            self.groupName = dict["GroupName"] as! String
        }
        if dict.keys.contains("PageNumber") && dict["PageNumber"] != nil {
            self.pageNumber = dict["PageNumber"] as! Int32
        }
        if dict.keys.contains("PageSize") && dict["PageSize"] != nil {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("SecurityToken") && dict["SecurityToken"] != nil {
            self.securityToken = dict["SecurityToken"] as! String
        }
    }
}

public class DescribeApiGroupsResponseBody : Tea.TeaModel {
    public class ApiGroupAttributes : Tea.TeaModel {
        public class ApiGroupAttribute : Tea.TeaModel {
            public var billingStatus: String?

            public var createdTime: String?

            public var description_: String?

            public var groupId: String?

            public var groupName: String?

            public var illegalStatus: String?

            public var modifiedTime: String?

            public var regionId: String?

            public var subDomain: String?

            public var trafficLimit: Int32?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.billingStatus != nil {
                    map["BillingStatus"] = self.billingStatus!
                }
                if self.createdTime != nil {
                    map["CreatedTime"] = self.createdTime!
                }
                if self.description_ != nil {
                    map["Description"] = self.description_!
                }
                if self.groupId != nil {
                    map["GroupId"] = self.groupId!
                }
                if self.groupName != nil {
                    map["GroupName"] = self.groupName!
                }
                if self.illegalStatus != nil {
                    map["IllegalStatus"] = self.illegalStatus!
                }
                if self.modifiedTime != nil {
                    map["ModifiedTime"] = self.modifiedTime!
                }
                if self.regionId != nil {
                    map["RegionId"] = self.regionId!
                }
                if self.subDomain != nil {
                    map["SubDomain"] = self.subDomain!
                }
                if self.trafficLimit != nil {
                    map["TrafficLimit"] = self.trafficLimit!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("BillingStatus") && dict["BillingStatus"] != nil {
                    self.billingStatus = dict["BillingStatus"] as! String
                }
                if dict.keys.contains("CreatedTime") && dict["CreatedTime"] != nil {
                    self.createdTime = dict["CreatedTime"] as! String
                }
                if dict.keys.contains("Description") && dict["Description"] != nil {
                    self.description_ = dict["Description"] as! String
                }
                if dict.keys.contains("GroupId") && dict["GroupId"] != nil {
                    self.groupId = dict["GroupId"] as! String
                }
                if dict.keys.contains("GroupName") && dict["GroupName"] != nil {
                    self.groupName = dict["GroupName"] as! String
                }
                if dict.keys.contains("IllegalStatus") && dict["IllegalStatus"] != nil {
                    self.illegalStatus = dict["IllegalStatus"] as! String
                }
                if dict.keys.contains("ModifiedTime") && dict["ModifiedTime"] != nil {
                    self.modifiedTime = dict["ModifiedTime"] as! String
                }
                if dict.keys.contains("RegionId") && dict["RegionId"] != nil {
                    self.regionId = dict["RegionId"] as! String
                }
                if dict.keys.contains("SubDomain") && dict["SubDomain"] != nil {
                    self.subDomain = dict["SubDomain"] as! String
                }
                if dict.keys.contains("TrafficLimit") && dict["TrafficLimit"] != nil {
                    self.trafficLimit = dict["TrafficLimit"] as! Int32
                }
            }
        }
        public var apiGroupAttribute: [DescribeApiGroupsResponseBody.ApiGroupAttributes.ApiGroupAttribute]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.apiGroupAttribute != nil {
                var tmp : [Any] = []
                for k in self.apiGroupAttribute! {
                    tmp.append(k.toMap())
                }
                map["ApiGroupAttribute"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("ApiGroupAttribute") && dict["ApiGroupAttribute"] != nil {
                var tmp : [DescribeApiGroupsResponseBody.ApiGroupAttributes.ApiGroupAttribute] = []
                for v in dict["ApiGroupAttribute"] as! [Any] {
                    var model = DescribeApiGroupsResponseBody.ApiGroupAttributes.ApiGroupAttribute()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.apiGroupAttribute = tmp
            }
        }
    }
    public var apiGroupAttributes: DescribeApiGroupsResponseBody.ApiGroupAttributes?

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
        try self.apiGroupAttributes?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.apiGroupAttributes != nil {
            map["ApiGroupAttributes"] = self.apiGroupAttributes?.toMap()
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
        if dict.keys.contains("ApiGroupAttributes") && dict["ApiGroupAttributes"] != nil {
            var model = DescribeApiGroupsResponseBody.ApiGroupAttributes()
            model.fromMap(dict["ApiGroupAttributes"] as! [String: Any])
            self.apiGroupAttributes = model
        }
        if dict.keys.contains("PageNumber") && dict["PageNumber"] != nil {
            self.pageNumber = dict["PageNumber"] as! Int32
        }
        if dict.keys.contains("PageSize") && dict["PageSize"] != nil {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("TotalCount") && dict["TotalCount"] != nil {
            self.totalCount = dict["TotalCount"] as! Int32
        }
    }
}

public class DescribeApiGroupsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeApiGroupsResponseBody?

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
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = DescribeApiGroupsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeApiLatencyRequest : Tea.TeaModel {
    public var apiId: String?

    public var endTime: String?

    public var groupId: String?

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
        if self.apiId != nil {
            map["ApiId"] = self.apiId!
        }
        if self.endTime != nil {
            map["EndTime"] = self.endTime!
        }
        if self.groupId != nil {
            map["GroupId"] = self.groupId!
        }
        if self.startTime != nil {
            map["StartTime"] = self.startTime!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ApiId") && dict["ApiId"] != nil {
            self.apiId = dict["ApiId"] as! String
        }
        if dict.keys.contains("EndTime") && dict["EndTime"] != nil {
            self.endTime = dict["EndTime"] as! String
        }
        if dict.keys.contains("GroupId") && dict["GroupId"] != nil {
            self.groupId = dict["GroupId"] as! String
        }
        if dict.keys.contains("StartTime") && dict["StartTime"] != nil {
            self.startTime = dict["StartTime"] as! String
        }
    }
}

public class DescribeApiLatencyResponseBody : Tea.TeaModel {
    public class Latencys : Tea.TeaModel {
        public class Latency : Tea.TeaModel {
            public var time: String?

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
                if self.time != nil {
                    map["Time"] = self.time!
                }
                if self.value != nil {
                    map["Value"] = self.value!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("Time") && dict["Time"] != nil {
                    self.time = dict["Time"] as! String
                }
                if dict.keys.contains("Value") && dict["Value"] != nil {
                    self.value = dict["Value"] as! String
                }
            }
        }
        public var latency: [DescribeApiLatencyResponseBody.Latencys.Latency]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.latency != nil {
                var tmp : [Any] = []
                for k in self.latency! {
                    tmp.append(k.toMap())
                }
                map["Latency"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Latency") && dict["Latency"] != nil {
                var tmp : [DescribeApiLatencyResponseBody.Latencys.Latency] = []
                for v in dict["Latency"] as! [Any] {
                    var model = DescribeApiLatencyResponseBody.Latencys.Latency()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.latency = tmp
            }
        }
    }
    public var latencys: DescribeApiLatencyResponseBody.Latencys?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.latencys?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.latencys != nil {
            map["Latencys"] = self.latencys?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Latencys") && dict["Latencys"] != nil {
            var model = DescribeApiLatencyResponseBody.Latencys()
            model.fromMap(dict["Latencys"] as! [String: Any])
            self.latencys = model
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class DescribeApiLatencyResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeApiLatencyResponseBody?

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
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = DescribeApiLatencyResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeApiMarketInstanceRequest : Tea.TeaModel {
    public var aliUid: String?

    public var groupId: String?

    public override init() {
        super.init()
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
        if self.groupId != nil {
            map["GroupId"] = self.groupId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AliUid") && dict["AliUid"] != nil {
            self.aliUid = dict["AliUid"] as! String
        }
        if dict.keys.contains("GroupId") && dict["GroupId"] != nil {
            self.groupId = dict["GroupId"] as! String
        }
    }
}

public class DescribeApiMarketInstanceResponseBody : Tea.TeaModel {
    public var instanceAttributes: String?

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
        if self.instanceAttributes != nil {
            map["InstanceAttributes"] = self.instanceAttributes!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("InstanceAttributes") && dict["InstanceAttributes"] != nil {
            self.instanceAttributes = dict["InstanceAttributes"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class DescribeApiMarketInstanceResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeApiMarketInstanceResponseBody?

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
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = DescribeApiMarketInstanceResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeApiQpsRequest : Tea.TeaModel {
    public var apiId: String?

    public var endTime: String?

    public var groupId: String?

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
        if self.apiId != nil {
            map["ApiId"] = self.apiId!
        }
        if self.endTime != nil {
            map["EndTime"] = self.endTime!
        }
        if self.groupId != nil {
            map["GroupId"] = self.groupId!
        }
        if self.startTime != nil {
            map["StartTime"] = self.startTime!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ApiId") && dict["ApiId"] != nil {
            self.apiId = dict["ApiId"] as! String
        }
        if dict.keys.contains("EndTime") && dict["EndTime"] != nil {
            self.endTime = dict["EndTime"] as! String
        }
        if dict.keys.contains("GroupId") && dict["GroupId"] != nil {
            self.groupId = dict["GroupId"] as! String
        }
        if dict.keys.contains("StartTime") && dict["StartTime"] != nil {
            self.startTime = dict["StartTime"] as! String
        }
    }
}

public class DescribeApiQpsResponseBody : Tea.TeaModel {
    public class Fails : Tea.TeaModel {
        public class Fail : Tea.TeaModel {
            public var time: String?

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
                if self.time != nil {
                    map["Time"] = self.time!
                }
                if self.value != nil {
                    map["Value"] = self.value!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("Time") && dict["Time"] != nil {
                    self.time = dict["Time"] as! String
                }
                if dict.keys.contains("Value") && dict["Value"] != nil {
                    self.value = dict["Value"] as! String
                }
            }
        }
        public var fail: [DescribeApiQpsResponseBody.Fails.Fail]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.fail != nil {
                var tmp : [Any] = []
                for k in self.fail! {
                    tmp.append(k.toMap())
                }
                map["Fail"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Fail") && dict["Fail"] != nil {
                var tmp : [DescribeApiQpsResponseBody.Fails.Fail] = []
                for v in dict["Fail"] as! [Any] {
                    var model = DescribeApiQpsResponseBody.Fails.Fail()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.fail = tmp
            }
        }
    }
    public class Successes : Tea.TeaModel {
        public class Success : Tea.TeaModel {
            public var time: String?

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
                if self.time != nil {
                    map["Time"] = self.time!
                }
                if self.value != nil {
                    map["Value"] = self.value!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("Time") && dict["Time"] != nil {
                    self.time = dict["Time"] as! String
                }
                if dict.keys.contains("Value") && dict["Value"] != nil {
                    self.value = dict["Value"] as! String
                }
            }
        }
        public var success: [DescribeApiQpsResponseBody.Successes.Success]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.success != nil {
                var tmp : [Any] = []
                for k in self.success! {
                    tmp.append(k.toMap())
                }
                map["Success"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Success") && dict["Success"] != nil {
                var tmp : [DescribeApiQpsResponseBody.Successes.Success] = []
                for v in dict["Success"] as! [Any] {
                    var model = DescribeApiQpsResponseBody.Successes.Success()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.success = tmp
            }
        }
    }
    public var fails: DescribeApiQpsResponseBody.Fails?

    public var requestId: String?

    public var successes: DescribeApiQpsResponseBody.Successes?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.fails?.validate()
        try self.successes?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.fails != nil {
            map["Fails"] = self.fails?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.successes != nil {
            map["Successes"] = self.successes?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Fails") && dict["Fails"] != nil {
            var model = DescribeApiQpsResponseBody.Fails()
            model.fromMap(dict["Fails"] as! [String: Any])
            self.fails = model
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Successes") && dict["Successes"] != nil {
            var model = DescribeApiQpsResponseBody.Successes()
            model.fromMap(dict["Successes"] as! [String: Any])
            self.successes = model
        }
    }
}

public class DescribeApiQpsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeApiQpsResponseBody?

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
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = DescribeApiQpsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeApiRulesRequest : Tea.TeaModel {
    public var apiIds: String?

    public var groupId: String?

    public var pageNumber: Int32?

    public var pageSize: Int32?

    public var ruleType: String?

    public var stageName: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.apiIds != nil {
            map["ApiIds"] = self.apiIds!
        }
        if self.groupId != nil {
            map["GroupId"] = self.groupId!
        }
        if self.pageNumber != nil {
            map["PageNumber"] = self.pageNumber!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.ruleType != nil {
            map["RuleType"] = self.ruleType!
        }
        if self.stageName != nil {
            map["StageName"] = self.stageName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ApiIds") && dict["ApiIds"] != nil {
            self.apiIds = dict["ApiIds"] as! String
        }
        if dict.keys.contains("GroupId") && dict["GroupId"] != nil {
            self.groupId = dict["GroupId"] as! String
        }
        if dict.keys.contains("PageNumber") && dict["PageNumber"] != nil {
            self.pageNumber = dict["PageNumber"] as! Int32
        }
        if dict.keys.contains("PageSize") && dict["PageSize"] != nil {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("RuleType") && dict["RuleType"] != nil {
            self.ruleType = dict["RuleType"] as! String
        }
        if dict.keys.contains("StageName") && dict["StageName"] != nil {
            self.stageName = dict["StageName"] as! String
        }
    }
}

public class DescribeApiRulesResponseBody : Tea.TeaModel {
    public class ApiRules : Tea.TeaModel {
        public class ApiRule : Tea.TeaModel {
            public var apiId: String?

            public var apiName: String?

            public var createdTime: String?

            public var ruleId: String?

            public var ruleName: String?

            public var ruleType: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.apiId != nil {
                    map["ApiId"] = self.apiId!
                }
                if self.apiName != nil {
                    map["ApiName"] = self.apiName!
                }
                if self.createdTime != nil {
                    map["CreatedTime"] = self.createdTime!
                }
                if self.ruleId != nil {
                    map["RuleId"] = self.ruleId!
                }
                if self.ruleName != nil {
                    map["RuleName"] = self.ruleName!
                }
                if self.ruleType != nil {
                    map["RuleType"] = self.ruleType!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("ApiId") && dict["ApiId"] != nil {
                    self.apiId = dict["ApiId"] as! String
                }
                if dict.keys.contains("ApiName") && dict["ApiName"] != nil {
                    self.apiName = dict["ApiName"] as! String
                }
                if dict.keys.contains("CreatedTime") && dict["CreatedTime"] != nil {
                    self.createdTime = dict["CreatedTime"] as! String
                }
                if dict.keys.contains("RuleId") && dict["RuleId"] != nil {
                    self.ruleId = dict["RuleId"] as! String
                }
                if dict.keys.contains("RuleName") && dict["RuleName"] != nil {
                    self.ruleName = dict["RuleName"] as! String
                }
                if dict.keys.contains("RuleType") && dict["RuleType"] != nil {
                    self.ruleType = dict["RuleType"] as! String
                }
            }
        }
        public var apiRule: [DescribeApiRulesResponseBody.ApiRules.ApiRule]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.apiRule != nil {
                var tmp : [Any] = []
                for k in self.apiRule! {
                    tmp.append(k.toMap())
                }
                map["ApiRule"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("ApiRule") && dict["ApiRule"] != nil {
                var tmp : [DescribeApiRulesResponseBody.ApiRules.ApiRule] = []
                for v in dict["ApiRule"] as! [Any] {
                    var model = DescribeApiRulesResponseBody.ApiRules.ApiRule()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.apiRule = tmp
            }
        }
    }
    public var apiRules: DescribeApiRulesResponseBody.ApiRules?

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
        try self.apiRules?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.apiRules != nil {
            map["ApiRules"] = self.apiRules?.toMap()
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
        if dict.keys.contains("ApiRules") && dict["ApiRules"] != nil {
            var model = DescribeApiRulesResponseBody.ApiRules()
            model.fromMap(dict["ApiRules"] as! [String: Any])
            self.apiRules = model
        }
        if dict.keys.contains("PageNumber") && dict["PageNumber"] != nil {
            self.pageNumber = dict["PageNumber"] as! Int32
        }
        if dict.keys.contains("PageSize") && dict["PageSize"] != nil {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("TotalCount") && dict["TotalCount"] != nil {
            self.totalCount = dict["TotalCount"] as! Int32
        }
    }
}

public class DescribeApiRulesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeApiRulesResponseBody?

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
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = DescribeApiRulesResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeApiTrafficRequest : Tea.TeaModel {
    public var apiId: String?

    public var endTime: String?

    public var groupId: String?

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
        if self.apiId != nil {
            map["ApiId"] = self.apiId!
        }
        if self.endTime != nil {
            map["EndTime"] = self.endTime!
        }
        if self.groupId != nil {
            map["GroupId"] = self.groupId!
        }
        if self.startTime != nil {
            map["StartTime"] = self.startTime!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ApiId") && dict["ApiId"] != nil {
            self.apiId = dict["ApiId"] as! String
        }
        if dict.keys.contains("EndTime") && dict["EndTime"] != nil {
            self.endTime = dict["EndTime"] as! String
        }
        if dict.keys.contains("GroupId") && dict["GroupId"] != nil {
            self.groupId = dict["GroupId"] as! String
        }
        if dict.keys.contains("StartTime") && dict["StartTime"] != nil {
            self.startTime = dict["StartTime"] as! String
        }
    }
}

public class DescribeApiTrafficResponseBody : Tea.TeaModel {
    public class Downloads : Tea.TeaModel {
        public class Download : Tea.TeaModel {
            public var time: String?

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
                if self.time != nil {
                    map["Time"] = self.time!
                }
                if self.value != nil {
                    map["Value"] = self.value!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("Time") && dict["Time"] != nil {
                    self.time = dict["Time"] as! String
                }
                if dict.keys.contains("Value") && dict["Value"] != nil {
                    self.value = dict["Value"] as! String
                }
            }
        }
        public var download: [DescribeApiTrafficResponseBody.Downloads.Download]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.download != nil {
                var tmp : [Any] = []
                for k in self.download! {
                    tmp.append(k.toMap())
                }
                map["Download"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Download") && dict["Download"] != nil {
                var tmp : [DescribeApiTrafficResponseBody.Downloads.Download] = []
                for v in dict["Download"] as! [Any] {
                    var model = DescribeApiTrafficResponseBody.Downloads.Download()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.download = tmp
            }
        }
    }
    public class Uploads : Tea.TeaModel {
        public class Upload : Tea.TeaModel {
            public var time: String?

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
                if self.time != nil {
                    map["Time"] = self.time!
                }
                if self.value != nil {
                    map["Value"] = self.value!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("Time") && dict["Time"] != nil {
                    self.time = dict["Time"] as! String
                }
                if dict.keys.contains("Value") && dict["Value"] != nil {
                    self.value = dict["Value"] as! String
                }
            }
        }
        public var upload: [DescribeApiTrafficResponseBody.Uploads.Upload]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.upload != nil {
                var tmp : [Any] = []
                for k in self.upload! {
                    tmp.append(k.toMap())
                }
                map["Upload"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Upload") && dict["Upload"] != nil {
                var tmp : [DescribeApiTrafficResponseBody.Uploads.Upload] = []
                for v in dict["Upload"] as! [Any] {
                    var model = DescribeApiTrafficResponseBody.Uploads.Upload()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.upload = tmp
            }
        }
    }
    public var downloads: DescribeApiTrafficResponseBody.Downloads?

    public var requestId: String?

    public var uploads: DescribeApiTrafficResponseBody.Uploads?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.downloads?.validate()
        try self.uploads?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.downloads != nil {
            map["Downloads"] = self.downloads?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.uploads != nil {
            map["Uploads"] = self.uploads?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Downloads") && dict["Downloads"] != nil {
            var model = DescribeApiTrafficResponseBody.Downloads()
            model.fromMap(dict["Downloads"] as! [String: Any])
            self.downloads = model
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Uploads") && dict["Uploads"] != nil {
            var model = DescribeApiTrafficResponseBody.Uploads()
            model.fromMap(dict["Uploads"] as! [String: Any])
            self.uploads = model
        }
    }
}

public class DescribeApiTrafficResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeApiTrafficResponseBody?

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
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = DescribeApiTrafficResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeApisRequest : Tea.TeaModel {
    public var apiId: String?

    public var apiName: String?

    public var groupId: String?

    public var pageNumber: Int32?

    public var pageSize: Int32?

    public var visibility: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.apiId != nil {
            map["ApiId"] = self.apiId!
        }
        if self.apiName != nil {
            map["ApiName"] = self.apiName!
        }
        if self.groupId != nil {
            map["GroupId"] = self.groupId!
        }
        if self.pageNumber != nil {
            map["PageNumber"] = self.pageNumber!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.visibility != nil {
            map["Visibility"] = self.visibility!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ApiId") && dict["ApiId"] != nil {
            self.apiId = dict["ApiId"] as! String
        }
        if dict.keys.contains("ApiName") && dict["ApiName"] != nil {
            self.apiName = dict["ApiName"] as! String
        }
        if dict.keys.contains("GroupId") && dict["GroupId"] != nil {
            self.groupId = dict["GroupId"] as! String
        }
        if dict.keys.contains("PageNumber") && dict["PageNumber"] != nil {
            self.pageNumber = dict["PageNumber"] as! Int32
        }
        if dict.keys.contains("PageSize") && dict["PageSize"] != nil {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("Visibility") && dict["Visibility"] != nil {
            self.visibility = dict["Visibility"] as! String
        }
    }
}

public class DescribeApisResponseBody : Tea.TeaModel {
    public class ApiInfos : Tea.TeaModel {
        public class ApiInfo : Tea.TeaModel {
            public var apiId: String?

            public var apiName: String?

            public var createdTime: String?

            public var description_: String?

            public var groupId: String?

            public var groupName: String?

            public var modifiedTime: String?

            public var regionId: String?

            public var visibility: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.apiId != nil {
                    map["ApiId"] = self.apiId!
                }
                if self.apiName != nil {
                    map["ApiName"] = self.apiName!
                }
                if self.createdTime != nil {
                    map["CreatedTime"] = self.createdTime!
                }
                if self.description_ != nil {
                    map["Description"] = self.description_!
                }
                if self.groupId != nil {
                    map["GroupId"] = self.groupId!
                }
                if self.groupName != nil {
                    map["GroupName"] = self.groupName!
                }
                if self.modifiedTime != nil {
                    map["ModifiedTime"] = self.modifiedTime!
                }
                if self.regionId != nil {
                    map["RegionId"] = self.regionId!
                }
                if self.visibility != nil {
                    map["Visibility"] = self.visibility!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("ApiId") && dict["ApiId"] != nil {
                    self.apiId = dict["ApiId"] as! String
                }
                if dict.keys.contains("ApiName") && dict["ApiName"] != nil {
                    self.apiName = dict["ApiName"] as! String
                }
                if dict.keys.contains("CreatedTime") && dict["CreatedTime"] != nil {
                    self.createdTime = dict["CreatedTime"] as! String
                }
                if dict.keys.contains("Description") && dict["Description"] != nil {
                    self.description_ = dict["Description"] as! String
                }
                if dict.keys.contains("GroupId") && dict["GroupId"] != nil {
                    self.groupId = dict["GroupId"] as! String
                }
                if dict.keys.contains("GroupName") && dict["GroupName"] != nil {
                    self.groupName = dict["GroupName"] as! String
                }
                if dict.keys.contains("ModifiedTime") && dict["ModifiedTime"] != nil {
                    self.modifiedTime = dict["ModifiedTime"] as! String
                }
                if dict.keys.contains("RegionId") && dict["RegionId"] != nil {
                    self.regionId = dict["RegionId"] as! String
                }
                if dict.keys.contains("Visibility") && dict["Visibility"] != nil {
                    self.visibility = dict["Visibility"] as! String
                }
            }
        }
        public var apiInfo: [DescribeApisResponseBody.ApiInfos.ApiInfo]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.apiInfo != nil {
                var tmp : [Any] = []
                for k in self.apiInfo! {
                    tmp.append(k.toMap())
                }
                map["ApiInfo"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("ApiInfo") && dict["ApiInfo"] != nil {
                var tmp : [DescribeApisResponseBody.ApiInfos.ApiInfo] = []
                for v in dict["ApiInfo"] as! [Any] {
                    var model = DescribeApisResponseBody.ApiInfos.ApiInfo()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.apiInfo = tmp
            }
        }
    }
    public var apiInfos: DescribeApisResponseBody.ApiInfos?

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
        try self.apiInfos?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.apiInfos != nil {
            map["ApiInfos"] = self.apiInfos?.toMap()
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
        if dict.keys.contains("ApiInfos") && dict["ApiInfos"] != nil {
            var model = DescribeApisResponseBody.ApiInfos()
            model.fromMap(dict["ApiInfos"] as! [String: Any])
            self.apiInfos = model
        }
        if dict.keys.contains("PageNumber") && dict["PageNumber"] != nil {
            self.pageNumber = dict["PageNumber"] as! Int32
        }
        if dict.keys.contains("PageSize") && dict["PageSize"] != nil {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("TotalCount") && dict["TotalCount"] != nil {
            self.totalCount = dict["TotalCount"] as! Int32
        }
    }
}

public class DescribeApisResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeApisResponseBody?

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
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = DescribeApisResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeApisByAppRequest : Tea.TeaModel {
    public var appId: Int64?

    public var pageNumber: Int32?

    public var pageSize: Int32?

    public override init() {
        super.init()
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
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AppId") && dict["AppId"] != nil {
            self.appId = dict["AppId"] as! Int64
        }
        if dict.keys.contains("PageNumber") && dict["PageNumber"] != nil {
            self.pageNumber = dict["PageNumber"] as! Int32
        }
        if dict.keys.contains("PageSize") && dict["PageSize"] != nil {
            self.pageSize = dict["PageSize"] as! Int32
        }
    }
}

public class DescribeApisByAppResponseBody : Tea.TeaModel {
    public class AppApiRelationInfos : Tea.TeaModel {
        public class AppApiRelationInfo : Tea.TeaModel {
            public var apiId: String?

            public var apiName: String?

            public var authorizationSource: String?

            public var createdTime: String?

            public var description_: String?

            public var groupId: String?

            public var groupName: String?

            public var operator_: String?

            public var regionId: String?

            public var stageName: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.apiId != nil {
                    map["ApiId"] = self.apiId!
                }
                if self.apiName != nil {
                    map["ApiName"] = self.apiName!
                }
                if self.authorizationSource != nil {
                    map["AuthorizationSource"] = self.authorizationSource!
                }
                if self.createdTime != nil {
                    map["CreatedTime"] = self.createdTime!
                }
                if self.description_ != nil {
                    map["Description"] = self.description_!
                }
                if self.groupId != nil {
                    map["GroupId"] = self.groupId!
                }
                if self.groupName != nil {
                    map["GroupName"] = self.groupName!
                }
                if self.operator_ != nil {
                    map["Operator"] = self.operator_!
                }
                if self.regionId != nil {
                    map["RegionId"] = self.regionId!
                }
                if self.stageName != nil {
                    map["StageName"] = self.stageName!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("ApiId") && dict["ApiId"] != nil {
                    self.apiId = dict["ApiId"] as! String
                }
                if dict.keys.contains("ApiName") && dict["ApiName"] != nil {
                    self.apiName = dict["ApiName"] as! String
                }
                if dict.keys.contains("AuthorizationSource") && dict["AuthorizationSource"] != nil {
                    self.authorizationSource = dict["AuthorizationSource"] as! String
                }
                if dict.keys.contains("CreatedTime") && dict["CreatedTime"] != nil {
                    self.createdTime = dict["CreatedTime"] as! String
                }
                if dict.keys.contains("Description") && dict["Description"] != nil {
                    self.description_ = dict["Description"] as! String
                }
                if dict.keys.contains("GroupId") && dict["GroupId"] != nil {
                    self.groupId = dict["GroupId"] as! String
                }
                if dict.keys.contains("GroupName") && dict["GroupName"] != nil {
                    self.groupName = dict["GroupName"] as! String
                }
                if dict.keys.contains("Operator") && dict["Operator"] != nil {
                    self.operator_ = dict["Operator"] as! String
                }
                if dict.keys.contains("RegionId") && dict["RegionId"] != nil {
                    self.regionId = dict["RegionId"] as! String
                }
                if dict.keys.contains("StageName") && dict["StageName"] != nil {
                    self.stageName = dict["StageName"] as! String
                }
            }
        }
        public var appApiRelationInfo: [DescribeApisByAppResponseBody.AppApiRelationInfos.AppApiRelationInfo]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.appApiRelationInfo != nil {
                var tmp : [Any] = []
                for k in self.appApiRelationInfo! {
                    tmp.append(k.toMap())
                }
                map["AppApiRelationInfo"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("AppApiRelationInfo") && dict["AppApiRelationInfo"] != nil {
                var tmp : [DescribeApisByAppResponseBody.AppApiRelationInfos.AppApiRelationInfo] = []
                for v in dict["AppApiRelationInfo"] as! [Any] {
                    var model = DescribeApisByAppResponseBody.AppApiRelationInfos.AppApiRelationInfo()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.appApiRelationInfo = tmp
            }
        }
    }
    public var appApiRelationInfos: DescribeApisByAppResponseBody.AppApiRelationInfos?

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
        try self.appApiRelationInfos?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.appApiRelationInfos != nil {
            map["AppApiRelationInfos"] = self.appApiRelationInfos?.toMap()
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
        if dict.keys.contains("AppApiRelationInfos") && dict["AppApiRelationInfos"] != nil {
            var model = DescribeApisByAppResponseBody.AppApiRelationInfos()
            model.fromMap(dict["AppApiRelationInfos"] as! [String: Any])
            self.appApiRelationInfos = model
        }
        if dict.keys.contains("PageNumber") && dict["PageNumber"] != nil {
            self.pageNumber = dict["PageNumber"] as! Int32
        }
        if dict.keys.contains("PageSize") && dict["PageSize"] != nil {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("TotalCount") && dict["TotalCount"] != nil {
            self.totalCount = dict["TotalCount"] as! Int32
        }
    }
}

public class DescribeApisByAppResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeApisByAppResponseBody?

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
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = DescribeApisByAppResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeApisByRuleRequest : Tea.TeaModel {
    public var pageNumber: Int32?

    public var pageSize: Int32?

    public var ruleId: String?

    public var ruleType: String?

    public override init() {
        super.init()
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
        if self.ruleId != nil {
            map["RuleId"] = self.ruleId!
        }
        if self.ruleType != nil {
            map["RuleType"] = self.ruleType!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("PageNumber") && dict["PageNumber"] != nil {
            self.pageNumber = dict["PageNumber"] as! Int32
        }
        if dict.keys.contains("PageSize") && dict["PageSize"] != nil {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("RuleId") && dict["RuleId"] != nil {
            self.ruleId = dict["RuleId"] as! String
        }
        if dict.keys.contains("RuleType") && dict["RuleType"] != nil {
            self.ruleType = dict["RuleType"] as! String
        }
    }
}

public class DescribeApisByRuleResponseBody : Tea.TeaModel {
    public class ApiInfos : Tea.TeaModel {
        public class ApiInfo : Tea.TeaModel {
            public var apiId: String?

            public var apiName: String?

            public var createdTime: String?

            public var description_: String?

            public var groupId: String?

            public var groupName: String?

            public var modifiedTime: String?

            public var regionId: String?

            public var stageName: String?

            public var visibility: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.apiId != nil {
                    map["ApiId"] = self.apiId!
                }
                if self.apiName != nil {
                    map["ApiName"] = self.apiName!
                }
                if self.createdTime != nil {
                    map["CreatedTime"] = self.createdTime!
                }
                if self.description_ != nil {
                    map["Description"] = self.description_!
                }
                if self.groupId != nil {
                    map["GroupId"] = self.groupId!
                }
                if self.groupName != nil {
                    map["GroupName"] = self.groupName!
                }
                if self.modifiedTime != nil {
                    map["ModifiedTime"] = self.modifiedTime!
                }
                if self.regionId != nil {
                    map["RegionId"] = self.regionId!
                }
                if self.stageName != nil {
                    map["StageName"] = self.stageName!
                }
                if self.visibility != nil {
                    map["Visibility"] = self.visibility!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("ApiId") && dict["ApiId"] != nil {
                    self.apiId = dict["ApiId"] as! String
                }
                if dict.keys.contains("ApiName") && dict["ApiName"] != nil {
                    self.apiName = dict["ApiName"] as! String
                }
                if dict.keys.contains("CreatedTime") && dict["CreatedTime"] != nil {
                    self.createdTime = dict["CreatedTime"] as! String
                }
                if dict.keys.contains("Description") && dict["Description"] != nil {
                    self.description_ = dict["Description"] as! String
                }
                if dict.keys.contains("GroupId") && dict["GroupId"] != nil {
                    self.groupId = dict["GroupId"] as! String
                }
                if dict.keys.contains("GroupName") && dict["GroupName"] != nil {
                    self.groupName = dict["GroupName"] as! String
                }
                if dict.keys.contains("ModifiedTime") && dict["ModifiedTime"] != nil {
                    self.modifiedTime = dict["ModifiedTime"] as! String
                }
                if dict.keys.contains("RegionId") && dict["RegionId"] != nil {
                    self.regionId = dict["RegionId"] as! String
                }
                if dict.keys.contains("StageName") && dict["StageName"] != nil {
                    self.stageName = dict["StageName"] as! String
                }
                if dict.keys.contains("Visibility") && dict["Visibility"] != nil {
                    self.visibility = dict["Visibility"] as! String
                }
            }
        }
        public var apiInfo: [DescribeApisByRuleResponseBody.ApiInfos.ApiInfo]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.apiInfo != nil {
                var tmp : [Any] = []
                for k in self.apiInfo! {
                    tmp.append(k.toMap())
                }
                map["ApiInfo"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("ApiInfo") && dict["ApiInfo"] != nil {
                var tmp : [DescribeApisByRuleResponseBody.ApiInfos.ApiInfo] = []
                for v in dict["ApiInfo"] as! [Any] {
                    var model = DescribeApisByRuleResponseBody.ApiInfos.ApiInfo()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.apiInfo = tmp
            }
        }
    }
    public var apiInfos: DescribeApisByRuleResponseBody.ApiInfos?

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
        try self.apiInfos?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.apiInfos != nil {
            map["ApiInfos"] = self.apiInfos?.toMap()
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
        if dict.keys.contains("ApiInfos") && dict["ApiInfos"] != nil {
            var model = DescribeApisByRuleResponseBody.ApiInfos()
            model.fromMap(dict["ApiInfos"] as! [String: Any])
            self.apiInfos = model
        }
        if dict.keys.contains("PageNumber") && dict["PageNumber"] != nil {
            self.pageNumber = dict["PageNumber"] as! Int32
        }
        if dict.keys.contains("PageSize") && dict["PageSize"] != nil {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("TotalCount") && dict["TotalCount"] != nil {
            self.totalCount = dict["TotalCount"] as! Int32
        }
    }
}

public class DescribeApisByRuleResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeApisByRuleResponseBody?

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
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = DescribeApisByRuleResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeApisForConsoleRequest : Tea.TeaModel {
    public var apiId: String?

    public var apiName: String?

    public var groupId: String?

    public var pageNumber: Int32?

    public var pageSize: Int32?

    public var stageName: String?

    public var visibility: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.apiId != nil {
            map["ApiId"] = self.apiId!
        }
        if self.apiName != nil {
            map["ApiName"] = self.apiName!
        }
        if self.groupId != nil {
            map["GroupId"] = self.groupId!
        }
        if self.pageNumber != nil {
            map["PageNumber"] = self.pageNumber!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.stageName != nil {
            map["StageName"] = self.stageName!
        }
        if self.visibility != nil {
            map["Visibility"] = self.visibility!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ApiId") && dict["ApiId"] != nil {
            self.apiId = dict["ApiId"] as! String
        }
        if dict.keys.contains("ApiName") && dict["ApiName"] != nil {
            self.apiName = dict["ApiName"] as! String
        }
        if dict.keys.contains("GroupId") && dict["GroupId"] != nil {
            self.groupId = dict["GroupId"] as! String
        }
        if dict.keys.contains("PageNumber") && dict["PageNumber"] != nil {
            self.pageNumber = dict["PageNumber"] as! Int32
        }
        if dict.keys.contains("PageSize") && dict["PageSize"] != nil {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("StageName") && dict["StageName"] != nil {
            self.stageName = dict["StageName"] as! String
        }
        if dict.keys.contains("Visibility") && dict["Visibility"] != nil {
            self.visibility = dict["Visibility"] as! String
        }
    }
}

public class DescribeApisForConsoleResponseBody : Tea.TeaModel {
    public class ApiInfos : Tea.TeaModel {
        public class ApiInfo : Tea.TeaModel {
            public class DeployedInfos : Tea.TeaModel {
                public class DeployedInfo : Tea.TeaModel {
                    public var deployedStatus: String?

                    public var effectiveVersion: String?

                    public var stageName: String?

                    public override init() {
                        super.init()
                    }

                    public init(_ dict: [String: Any]) {
                        super.init()
                        self.fromMap(dict)
                    }

                    public override func validate() throws -> Void {
                    }

                    public override func toMap() -> [String : Any] {
                        var map = super.toMap()
                        if self.deployedStatus != nil {
                            map["DeployedStatus"] = self.deployedStatus!
                        }
                        if self.effectiveVersion != nil {
                            map["EffectiveVersion"] = self.effectiveVersion!
                        }
                        if self.stageName != nil {
                            map["StageName"] = self.stageName!
                        }
                        return map
                    }

                    public override func fromMap(_ dict: [String: Any]) -> Void {
                        if dict.keys.contains("DeployedStatus") && dict["DeployedStatus"] != nil {
                            self.deployedStatus = dict["DeployedStatus"] as! String
                        }
                        if dict.keys.contains("EffectiveVersion") && dict["EffectiveVersion"] != nil {
                            self.effectiveVersion = dict["EffectiveVersion"] as! String
                        }
                        if dict.keys.contains("StageName") && dict["StageName"] != nil {
                            self.stageName = dict["StageName"] as! String
                        }
                    }
                }
                public var deployedInfo: [DescribeApisForConsoleResponseBody.ApiInfos.ApiInfo.DeployedInfos.DeployedInfo]?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.deployedInfo != nil {
                        var tmp : [Any] = []
                        for k in self.deployedInfo! {
                            tmp.append(k.toMap())
                        }
                        map["DeployedInfo"] = tmp
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("DeployedInfo") && dict["DeployedInfo"] != nil {
                        var tmp : [DescribeApisForConsoleResponseBody.ApiInfos.ApiInfo.DeployedInfos.DeployedInfo] = []
                        for v in dict["DeployedInfo"] as! [Any] {
                            var model = DescribeApisForConsoleResponseBody.ApiInfos.ApiInfo.DeployedInfos.DeployedInfo()
                            if v != nil {
                                model.fromMap(v as! [String: Any])
                            }
                            tmp.append(model)
                        }
                        self.deployedInfo = tmp
                    }
                }
            }
            public var apiId: String?

            public var apiName: String?

            public var createdTime: String?

            public var deployedInfos: DescribeApisForConsoleResponseBody.ApiInfos.ApiInfo.DeployedInfos?

            public var description_: String?

            public var groupId: String?

            public var groupName: String?

            public var modifiedTime: String?

            public var regionId: String?

            public var visibility: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
                try self.deployedInfos?.validate()
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.apiId != nil {
                    map["ApiId"] = self.apiId!
                }
                if self.apiName != nil {
                    map["ApiName"] = self.apiName!
                }
                if self.createdTime != nil {
                    map["CreatedTime"] = self.createdTime!
                }
                if self.deployedInfos != nil {
                    map["DeployedInfos"] = self.deployedInfos?.toMap()
                }
                if self.description_ != nil {
                    map["Description"] = self.description_!
                }
                if self.groupId != nil {
                    map["GroupId"] = self.groupId!
                }
                if self.groupName != nil {
                    map["GroupName"] = self.groupName!
                }
                if self.modifiedTime != nil {
                    map["ModifiedTime"] = self.modifiedTime!
                }
                if self.regionId != nil {
                    map["RegionId"] = self.regionId!
                }
                if self.visibility != nil {
                    map["Visibility"] = self.visibility!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("ApiId") && dict["ApiId"] != nil {
                    self.apiId = dict["ApiId"] as! String
                }
                if dict.keys.contains("ApiName") && dict["ApiName"] != nil {
                    self.apiName = dict["ApiName"] as! String
                }
                if dict.keys.contains("CreatedTime") && dict["CreatedTime"] != nil {
                    self.createdTime = dict["CreatedTime"] as! String
                }
                if dict.keys.contains("DeployedInfos") && dict["DeployedInfos"] != nil {
                    var model = DescribeApisForConsoleResponseBody.ApiInfos.ApiInfo.DeployedInfos()
                    model.fromMap(dict["DeployedInfos"] as! [String: Any])
                    self.deployedInfos = model
                }
                if dict.keys.contains("Description") && dict["Description"] != nil {
                    self.description_ = dict["Description"] as! String
                }
                if dict.keys.contains("GroupId") && dict["GroupId"] != nil {
                    self.groupId = dict["GroupId"] as! String
                }
                if dict.keys.contains("GroupName") && dict["GroupName"] != nil {
                    self.groupName = dict["GroupName"] as! String
                }
                if dict.keys.contains("ModifiedTime") && dict["ModifiedTime"] != nil {
                    self.modifiedTime = dict["ModifiedTime"] as! String
                }
                if dict.keys.contains("RegionId") && dict["RegionId"] != nil {
                    self.regionId = dict["RegionId"] as! String
                }
                if dict.keys.contains("Visibility") && dict["Visibility"] != nil {
                    self.visibility = dict["Visibility"] as! String
                }
            }
        }
        public var apiInfo: [DescribeApisForConsoleResponseBody.ApiInfos.ApiInfo]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.apiInfo != nil {
                var tmp : [Any] = []
                for k in self.apiInfo! {
                    tmp.append(k.toMap())
                }
                map["ApiInfo"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("ApiInfo") && dict["ApiInfo"] != nil {
                var tmp : [DescribeApisForConsoleResponseBody.ApiInfos.ApiInfo] = []
                for v in dict["ApiInfo"] as! [Any] {
                    var model = DescribeApisForConsoleResponseBody.ApiInfos.ApiInfo()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.apiInfo = tmp
            }
        }
    }
    public var apiInfos: DescribeApisForConsoleResponseBody.ApiInfos?

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
        try self.apiInfos?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.apiInfos != nil {
            map["ApiInfos"] = self.apiInfos?.toMap()
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
        if dict.keys.contains("ApiInfos") && dict["ApiInfos"] != nil {
            var model = DescribeApisForConsoleResponseBody.ApiInfos()
            model.fromMap(dict["ApiInfos"] as! [String: Any])
            self.apiInfos = model
        }
        if dict.keys.contains("PageNumber") && dict["PageNumber"] != nil {
            self.pageNumber = dict["PageNumber"] as! Int32
        }
        if dict.keys.contains("PageSize") && dict["PageSize"] != nil {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("TotalCount") && dict["TotalCount"] != nil {
            self.totalCount = dict["TotalCount"] as! Int32
        }
    }
}

public class DescribeApisForConsoleResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeApisForConsoleResponseBody?

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
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = DescribeApisForConsoleResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeAppRequest : Tea.TeaModel {
    public var appId: Int64?

    public override init() {
        super.init()
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
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AppId") && dict["AppId"] != nil {
            self.appId = dict["AppId"] as! Int64
        }
    }
}

public class DescribeAppResponseBody : Tea.TeaModel {
    public var appId: Int64?

    public var appName: String?

    public var createdTime: String?

    public var description_: String?

    public var modifiedTime: String?

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
        if self.appName != nil {
            map["AppName"] = self.appName!
        }
        if self.createdTime != nil {
            map["CreatedTime"] = self.createdTime!
        }
        if self.description_ != nil {
            map["Description"] = self.description_!
        }
        if self.modifiedTime != nil {
            map["ModifiedTime"] = self.modifiedTime!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AppId") && dict["AppId"] != nil {
            self.appId = dict["AppId"] as! Int64
        }
        if dict.keys.contains("AppName") && dict["AppName"] != nil {
            self.appName = dict["AppName"] as! String
        }
        if dict.keys.contains("CreatedTime") && dict["CreatedTime"] != nil {
            self.createdTime = dict["CreatedTime"] as! String
        }
        if dict.keys.contains("Description") && dict["Description"] != nil {
            self.description_ = dict["Description"] as! String
        }
        if dict.keys.contains("ModifiedTime") && dict["ModifiedTime"] != nil {
            self.modifiedTime = dict["ModifiedTime"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class DescribeAppResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeAppResponseBody?

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
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = DescribeAppResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeAppSecuritiesRequest : Tea.TeaModel {
    public var appId: Int64?

    public var securityToken: String?

    public override init() {
        super.init()
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
        if self.securityToken != nil {
            map["SecurityToken"] = self.securityToken!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AppId") && dict["AppId"] != nil {
            self.appId = dict["AppId"] as! Int64
        }
        if dict.keys.contains("SecurityToken") && dict["SecurityToken"] != nil {
            self.securityToken = dict["SecurityToken"] as! String
        }
    }
}

public class DescribeAppSecuritiesResponseBody : Tea.TeaModel {
    public class AppSecuritys : Tea.TeaModel {
        public class AppSecurity : Tea.TeaModel {
            public var appCode: String?

            public var appKey: String?

            public var appSecret: String?

            public var createdTime: String?

            public var modifiedTime: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.appCode != nil {
                    map["AppCode"] = self.appCode!
                }
                if self.appKey != nil {
                    map["AppKey"] = self.appKey!
                }
                if self.appSecret != nil {
                    map["AppSecret"] = self.appSecret!
                }
                if self.createdTime != nil {
                    map["CreatedTime"] = self.createdTime!
                }
                if self.modifiedTime != nil {
                    map["ModifiedTime"] = self.modifiedTime!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("AppCode") && dict["AppCode"] != nil {
                    self.appCode = dict["AppCode"] as! String
                }
                if dict.keys.contains("AppKey") && dict["AppKey"] != nil {
                    self.appKey = dict["AppKey"] as! String
                }
                if dict.keys.contains("AppSecret") && dict["AppSecret"] != nil {
                    self.appSecret = dict["AppSecret"] as! String
                }
                if dict.keys.contains("CreatedTime") && dict["CreatedTime"] != nil {
                    self.createdTime = dict["CreatedTime"] as! String
                }
                if dict.keys.contains("ModifiedTime") && dict["ModifiedTime"] != nil {
                    self.modifiedTime = dict["ModifiedTime"] as! String
                }
            }
        }
        public var appSecurity: [DescribeAppSecuritiesResponseBody.AppSecuritys.AppSecurity]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.appSecurity != nil {
                var tmp : [Any] = []
                for k in self.appSecurity! {
                    tmp.append(k.toMap())
                }
                map["AppSecurity"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("AppSecurity") && dict["AppSecurity"] != nil {
                var tmp : [DescribeAppSecuritiesResponseBody.AppSecuritys.AppSecurity] = []
                for v in dict["AppSecurity"] as! [Any] {
                    var model = DescribeAppSecuritiesResponseBody.AppSecuritys.AppSecurity()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.appSecurity = tmp
            }
        }
    }
    public var appSecuritys: DescribeAppSecuritiesResponseBody.AppSecuritys?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.appSecuritys?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.appSecuritys != nil {
            map["AppSecuritys"] = self.appSecuritys?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AppSecuritys") && dict["AppSecuritys"] != nil {
            var model = DescribeAppSecuritiesResponseBody.AppSecuritys()
            model.fromMap(dict["AppSecuritys"] as! [String: Any])
            self.appSecuritys = model
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class DescribeAppSecuritiesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeAppSecuritiesResponseBody?

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
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = DescribeAppSecuritiesResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeAppSecurityRequest : Tea.TeaModel {
    public var appKey: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.appKey != nil {
            map["AppKey"] = self.appKey!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AppKey") && dict["AppKey"] != nil {
            self.appKey = dict["AppKey"] as! String
        }
    }
}

public class DescribeAppSecurityResponseBody : Tea.TeaModel {
    public var appKey: String?

    public var appSecret: String?

    public var createdTime: String?

    public var modifiedTime: String?

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
        if self.appKey != nil {
            map["AppKey"] = self.appKey!
        }
        if self.appSecret != nil {
            map["AppSecret"] = self.appSecret!
        }
        if self.createdTime != nil {
            map["CreatedTime"] = self.createdTime!
        }
        if self.modifiedTime != nil {
            map["ModifiedTime"] = self.modifiedTime!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AppKey") && dict["AppKey"] != nil {
            self.appKey = dict["AppKey"] as! String
        }
        if dict.keys.contains("AppSecret") && dict["AppSecret"] != nil {
            self.appSecret = dict["AppSecret"] as! String
        }
        if dict.keys.contains("CreatedTime") && dict["CreatedTime"] != nil {
            self.createdTime = dict["CreatedTime"] as! String
        }
        if dict.keys.contains("ModifiedTime") && dict["ModifiedTime"] != nil {
            self.modifiedTime = dict["ModifiedTime"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class DescribeAppSecurityResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeAppSecurityResponseBody?

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
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = DescribeAppSecurityResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeAppSecurityForInnerRequest : Tea.TeaModel {
    public var aliUid: Int64?

    public var appId: Int64?

    public var securityToken: String?

    public override init() {
        super.init()
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
        if self.appId != nil {
            map["AppId"] = self.appId!
        }
        if self.securityToken != nil {
            map["SecurityToken"] = self.securityToken!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AliUid") && dict["AliUid"] != nil {
            self.aliUid = dict["AliUid"] as! Int64
        }
        if dict.keys.contains("AppId") && dict["AppId"] != nil {
            self.appId = dict["AppId"] as! Int64
        }
        if dict.keys.contains("SecurityToken") && dict["SecurityToken"] != nil {
            self.securityToken = dict["SecurityToken"] as! String
        }
    }
}

public class DescribeAppSecurityForInnerResponseBody : Tea.TeaModel {
    public var appCode: String?

    public var appKey: String?

    public var appSecret: String?

    public var createdTime: String?

    public var modifiedTime: String?

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
        if self.appCode != nil {
            map["AppCode"] = self.appCode!
        }
        if self.appKey != nil {
            map["AppKey"] = self.appKey!
        }
        if self.appSecret != nil {
            map["AppSecret"] = self.appSecret!
        }
        if self.createdTime != nil {
            map["CreatedTime"] = self.createdTime!
        }
        if self.modifiedTime != nil {
            map["ModifiedTime"] = self.modifiedTime!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AppCode") && dict["AppCode"] != nil {
            self.appCode = dict["AppCode"] as! String
        }
        if dict.keys.contains("AppKey") && dict["AppKey"] != nil {
            self.appKey = dict["AppKey"] as! String
        }
        if dict.keys.contains("AppSecret") && dict["AppSecret"] != nil {
            self.appSecret = dict["AppSecret"] as! String
        }
        if dict.keys.contains("CreatedTime") && dict["CreatedTime"] != nil {
            self.createdTime = dict["CreatedTime"] as! String
        }
        if dict.keys.contains("ModifiedTime") && dict["ModifiedTime"] != nil {
            self.modifiedTime = dict["ModifiedTime"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class DescribeAppSecurityForInnerResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeAppSecurityForInnerResponseBody?

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
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = DescribeAppSecurityForInnerResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeAppsRequest : Tea.TeaModel {
    public var appId: Int64?

    public var pageNumber: Int32?

    public var pageSize: Int32?

    public override init() {
        super.init()
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
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AppId") && dict["AppId"] != nil {
            self.appId = dict["AppId"] as! Int64
        }
        if dict.keys.contains("PageNumber") && dict["PageNumber"] != nil {
            self.pageNumber = dict["PageNumber"] as! Int32
        }
        if dict.keys.contains("PageSize") && dict["PageSize"] != nil {
            self.pageSize = dict["PageSize"] as! Int32
        }
    }
}

public class DescribeAppsResponseBody : Tea.TeaModel {
    public class Apps : Tea.TeaModel {
        public class App : Tea.TeaModel {
            public var appId: Int64?

            public var appName: String?

            public var createdTime: String?

            public var description_: String?

            public var modifiedTime: String?

            public override init() {
                super.init()
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
                if self.createdTime != nil {
                    map["CreatedTime"] = self.createdTime!
                }
                if self.description_ != nil {
                    map["Description"] = self.description_!
                }
                if self.modifiedTime != nil {
                    map["ModifiedTime"] = self.modifiedTime!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("AppId") && dict["AppId"] != nil {
                    self.appId = dict["AppId"] as! Int64
                }
                if dict.keys.contains("AppName") && dict["AppName"] != nil {
                    self.appName = dict["AppName"] as! String
                }
                if dict.keys.contains("CreatedTime") && dict["CreatedTime"] != nil {
                    self.createdTime = dict["CreatedTime"] as! String
                }
                if dict.keys.contains("Description") && dict["Description"] != nil {
                    self.description_ = dict["Description"] as! String
                }
                if dict.keys.contains("ModifiedTime") && dict["ModifiedTime"] != nil {
                    self.modifiedTime = dict["ModifiedTime"] as! String
                }
            }
        }
        public var app: [DescribeAppsResponseBody.Apps.App]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.app != nil {
                var tmp : [Any] = []
                for k in self.app! {
                    tmp.append(k.toMap())
                }
                map["App"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("App") && dict["App"] != nil {
                var tmp : [DescribeAppsResponseBody.Apps.App] = []
                for v in dict["App"] as! [Any] {
                    var model = DescribeAppsResponseBody.Apps.App()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.app = tmp
            }
        }
    }
    public var apps: DescribeAppsResponseBody.Apps?

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
        try self.apps?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.apps != nil {
            map["Apps"] = self.apps?.toMap()
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
        if dict.keys.contains("Apps") && dict["Apps"] != nil {
            var model = DescribeAppsResponseBody.Apps()
            model.fromMap(dict["Apps"] as! [String: Any])
            self.apps = model
        }
        if dict.keys.contains("PageNumber") && dict["PageNumber"] != nil {
            self.pageNumber = dict["PageNumber"] as! Int32
        }
        if dict.keys.contains("PageSize") && dict["PageSize"] != nil {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("TotalCount") && dict["TotalCount"] != nil {
            self.totalCount = dict["TotalCount"] as! Int32
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
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = DescribeAppsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeAppsByApiRequest : Tea.TeaModel {
    public var apiId: String?

    public var groupId: String?

    public var pageNumber: Int32?

    public var pageSize: Int32?

    public var stageName: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.apiId != nil {
            map["ApiId"] = self.apiId!
        }
        if self.groupId != nil {
            map["GroupId"] = self.groupId!
        }
        if self.pageNumber != nil {
            map["PageNumber"] = self.pageNumber!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.stageName != nil {
            map["StageName"] = self.stageName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ApiId") && dict["ApiId"] != nil {
            self.apiId = dict["ApiId"] as! String
        }
        if dict.keys.contains("GroupId") && dict["GroupId"] != nil {
            self.groupId = dict["GroupId"] as! String
        }
        if dict.keys.contains("PageNumber") && dict["PageNumber"] != nil {
            self.pageNumber = dict["PageNumber"] as! Int32
        }
        if dict.keys.contains("PageSize") && dict["PageSize"] != nil {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("StageName") && dict["StageName"] != nil {
            self.stageName = dict["StageName"] as! String
        }
    }
}

public class DescribeAppsByApiResponseBody : Tea.TeaModel {
    public class AppApiRelationInfos : Tea.TeaModel {
        public class AppApiRelationInfo : Tea.TeaModel {
            public var appId: String?

            public var appName: String?

            public var authorizationSource: String?

            public var createdTime: String?

            public var description_: String?

            public var operator_: String?

            public var stageName: String?

            public override init() {
                super.init()
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
                if self.authorizationSource != nil {
                    map["AuthorizationSource"] = self.authorizationSource!
                }
                if self.createdTime != nil {
                    map["CreatedTime"] = self.createdTime!
                }
                if self.description_ != nil {
                    map["Description"] = self.description_!
                }
                if self.operator_ != nil {
                    map["Operator"] = self.operator_!
                }
                if self.stageName != nil {
                    map["StageName"] = self.stageName!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("AppId") && dict["AppId"] != nil {
                    self.appId = dict["AppId"] as! String
                }
                if dict.keys.contains("AppName") && dict["AppName"] != nil {
                    self.appName = dict["AppName"] as! String
                }
                if dict.keys.contains("AuthorizationSource") && dict["AuthorizationSource"] != nil {
                    self.authorizationSource = dict["AuthorizationSource"] as! String
                }
                if dict.keys.contains("CreatedTime") && dict["CreatedTime"] != nil {
                    self.createdTime = dict["CreatedTime"] as! String
                }
                if dict.keys.contains("Description") && dict["Description"] != nil {
                    self.description_ = dict["Description"] as! String
                }
                if dict.keys.contains("Operator") && dict["Operator"] != nil {
                    self.operator_ = dict["Operator"] as! String
                }
                if dict.keys.contains("StageName") && dict["StageName"] != nil {
                    self.stageName = dict["StageName"] as! String
                }
            }
        }
        public var appApiRelationInfo: [DescribeAppsByApiResponseBody.AppApiRelationInfos.AppApiRelationInfo]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.appApiRelationInfo != nil {
                var tmp : [Any] = []
                for k in self.appApiRelationInfo! {
                    tmp.append(k.toMap())
                }
                map["AppApiRelationInfo"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("AppApiRelationInfo") && dict["AppApiRelationInfo"] != nil {
                var tmp : [DescribeAppsByApiResponseBody.AppApiRelationInfos.AppApiRelationInfo] = []
                for v in dict["AppApiRelationInfo"] as! [Any] {
                    var model = DescribeAppsByApiResponseBody.AppApiRelationInfos.AppApiRelationInfo()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.appApiRelationInfo = tmp
            }
        }
    }
    public var appApiRelationInfos: DescribeAppsByApiResponseBody.AppApiRelationInfos?

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
        try self.appApiRelationInfos?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.appApiRelationInfos != nil {
            map["AppApiRelationInfos"] = self.appApiRelationInfos?.toMap()
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
        if dict.keys.contains("AppApiRelationInfos") && dict["AppApiRelationInfos"] != nil {
            var model = DescribeAppsByApiResponseBody.AppApiRelationInfos()
            model.fromMap(dict["AppApiRelationInfos"] as! [String: Any])
            self.appApiRelationInfos = model
        }
        if dict.keys.contains("PageNumber") && dict["PageNumber"] != nil {
            self.pageNumber = dict["PageNumber"] as! Int32
        }
        if dict.keys.contains("PageSize") && dict["PageSize"] != nil {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("TotalCount") && dict["TotalCount"] != nil {
            self.totalCount = dict["TotalCount"] as! Int32
        }
    }
}

public class DescribeAppsByApiResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeAppsByApiResponseBody?

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
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = DescribeAppsByApiResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeAppsForProviderRequest : Tea.TeaModel {
    public var appId: Int64?

    public var appOwner: String?

    public var pageNumber: Int32?

    public var pageSize: Int32?

    public override init() {
        super.init()
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
        if self.appOwner != nil {
            map["AppOwner"] = self.appOwner!
        }
        if self.pageNumber != nil {
            map["PageNumber"] = self.pageNumber!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AppId") && dict["AppId"] != nil {
            self.appId = dict["AppId"] as! Int64
        }
        if dict.keys.contains("AppOwner") && dict["AppOwner"] != nil {
            self.appOwner = dict["AppOwner"] as! String
        }
        if dict.keys.contains("PageNumber") && dict["PageNumber"] != nil {
            self.pageNumber = dict["PageNumber"] as! Int32
        }
        if dict.keys.contains("PageSize") && dict["PageSize"] != nil {
            self.pageSize = dict["PageSize"] as! Int32
        }
    }
}

public class DescribeAppsForProviderResponseBody : Tea.TeaModel {
    public class Apps : Tea.TeaModel {
        public class App : Tea.TeaModel {
            public var appId: Int64?

            public var appName: String?

            public var createTime: String?

            public var description_: String?

            public var modifiedTime: String?

            public override init() {
                super.init()
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
                if self.description_ != nil {
                    map["Description"] = self.description_!
                }
                if self.modifiedTime != nil {
                    map["ModifiedTime"] = self.modifiedTime!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("AppId") && dict["AppId"] != nil {
                    self.appId = dict["AppId"] as! Int64
                }
                if dict.keys.contains("AppName") && dict["AppName"] != nil {
                    self.appName = dict["AppName"] as! String
                }
                if dict.keys.contains("CreateTime") && dict["CreateTime"] != nil {
                    self.createTime = dict["CreateTime"] as! String
                }
                if dict.keys.contains("Description") && dict["Description"] != nil {
                    self.description_ = dict["Description"] as! String
                }
                if dict.keys.contains("ModifiedTime") && dict["ModifiedTime"] != nil {
                    self.modifiedTime = dict["ModifiedTime"] as! String
                }
            }
        }
        public var app: [DescribeAppsForProviderResponseBody.Apps.App]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.app != nil {
                var tmp : [Any] = []
                for k in self.app! {
                    tmp.append(k.toMap())
                }
                map["App"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("App") && dict["App"] != nil {
                var tmp : [DescribeAppsForProviderResponseBody.Apps.App] = []
                for v in dict["App"] as! [Any] {
                    var model = DescribeAppsForProviderResponseBody.Apps.App()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.app = tmp
            }
        }
    }
    public var apps: DescribeAppsForProviderResponseBody.Apps?

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
        try self.apps?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.apps != nil {
            map["Apps"] = self.apps?.toMap()
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
        if dict.keys.contains("Apps") && dict["Apps"] != nil {
            var model = DescribeAppsForProviderResponseBody.Apps()
            model.fromMap(dict["Apps"] as! [String: Any])
            self.apps = model
        }
        if dict.keys.contains("PageNumber") && dict["PageNumber"] != nil {
            self.pageNumber = dict["PageNumber"] as! Int32
        }
        if dict.keys.contains("PageSize") && dict["PageSize"] != nil {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("TotalCount") && dict["TotalCount"] != nil {
            self.totalCount = dict["TotalCount"] as! Int32
        }
    }
}

public class DescribeAppsForProviderResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeAppsForProviderResponseBody?

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
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = DescribeAppsForProviderResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeAvailableVipsRequest : Tea.TeaModel {
    public var vip: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.vip != nil {
            map["Vip"] = self.vip!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Vip") && dict["Vip"] != nil {
            self.vip = dict["Vip"] as! String
        }
    }
}

public class DescribeAvailableVipsResponseBody : Tea.TeaModel {
    public class AvailableVips : Tea.TeaModel {
        public var availableVip: [String]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.availableVip != nil {
                map["AvailableVip"] = self.availableVip!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("AvailableVip") && dict["AvailableVip"] != nil {
                self.availableVip = dict["AvailableVip"] as! [String]
            }
        }
    }
    public var availableVips: DescribeAvailableVipsResponseBody.AvailableVips?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.availableVips?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.availableVips != nil {
            map["AvailableVips"] = self.availableVips?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AvailableVips") && dict["AvailableVips"] != nil {
            var model = DescribeAvailableVipsResponseBody.AvailableVips()
            model.fromMap(dict["AvailableVips"] as! [String: Any])
            self.availableVips = model
        }
    }
}

public class DescribeAvailableVipsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeAvailableVipsResponseBody?

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
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = DescribeAvailableVipsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeBidByUserIdForInnerRequest : Tea.TeaModel {
    public var aliUid: Int64?

    public override init() {
        super.init()
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
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AliUid") && dict["AliUid"] != nil {
            self.aliUid = dict["AliUid"] as! Int64
        }
    }
}

public class DescribeBidByUserIdForInnerResponseBody : Tea.TeaModel {
    public var bid: String?

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
        if self.bid != nil {
            map["Bid"] = self.bid!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Bid") && dict["Bid"] != nil {
            self.bid = dict["Bid"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class DescribeBidByUserIdForInnerResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeBidByUserIdForInnerResponseBody?

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
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = DescribeBidByUserIdForInnerResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeBlackListsRequest : Tea.TeaModel {
    public var blackType: String?

    public var pageNumber: Int32?

    public var pageSize: Int32?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.blackType != nil {
            map["BlackType"] = self.blackType!
        }
        if self.pageNumber != nil {
            map["PageNumber"] = self.pageNumber!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("BlackType") && dict["BlackType"] != nil {
            self.blackType = dict["BlackType"] as! String
        }
        if dict.keys.contains("PageNumber") && dict["PageNumber"] != nil {
            self.pageNumber = dict["PageNumber"] as! Int32
        }
        if dict.keys.contains("PageSize") && dict["PageSize"] != nil {
            self.pageSize = dict["PageSize"] as! Int32
        }
    }
}

public class DescribeBlackListsResponseBody : Tea.TeaModel {
    public class BlackLists : Tea.TeaModel {
        public class BlackList : Tea.TeaModel {
            public var blackContent: String?

            public var blackType: String?

            public var createTime: String?

            public var description_: String?

            public var modifiedTime: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.blackContent != nil {
                    map["BlackContent"] = self.blackContent!
                }
                if self.blackType != nil {
                    map["BlackType"] = self.blackType!
                }
                if self.createTime != nil {
                    map["CreateTime"] = self.createTime!
                }
                if self.description_ != nil {
                    map["Description"] = self.description_!
                }
                if self.modifiedTime != nil {
                    map["ModifiedTime"] = self.modifiedTime!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("BlackContent") && dict["BlackContent"] != nil {
                    self.blackContent = dict["BlackContent"] as! String
                }
                if dict.keys.contains("BlackType") && dict["BlackType"] != nil {
                    self.blackType = dict["BlackType"] as! String
                }
                if dict.keys.contains("CreateTime") && dict["CreateTime"] != nil {
                    self.createTime = dict["CreateTime"] as! String
                }
                if dict.keys.contains("Description") && dict["Description"] != nil {
                    self.description_ = dict["Description"] as! String
                }
                if dict.keys.contains("ModifiedTime") && dict["ModifiedTime"] != nil {
                    self.modifiedTime = dict["ModifiedTime"] as! String
                }
            }
        }
        public var blackList: [DescribeBlackListsResponseBody.BlackLists.BlackList]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.blackList != nil {
                var tmp : [Any] = []
                for k in self.blackList! {
                    tmp.append(k.toMap())
                }
                map["BlackList"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("BlackList") && dict["BlackList"] != nil {
                var tmp : [DescribeBlackListsResponseBody.BlackLists.BlackList] = []
                for v in dict["BlackList"] as! [Any] {
                    var model = DescribeBlackListsResponseBody.BlackLists.BlackList()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.blackList = tmp
            }
        }
    }
    public var blackLists: DescribeBlackListsResponseBody.BlackLists?

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
        try self.blackLists?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.blackLists != nil {
            map["BlackLists"] = self.blackLists?.toMap()
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
        if dict.keys.contains("BlackLists") && dict["BlackLists"] != nil {
            var model = DescribeBlackListsResponseBody.BlackLists()
            model.fromMap(dict["BlackLists"] as! [String: Any])
            self.blackLists = model
        }
        if dict.keys.contains("PageNumber") && dict["PageNumber"] != nil {
            self.pageNumber = dict["PageNumber"] as! Int32
        }
        if dict.keys.contains("PageSize") && dict["PageSize"] != nil {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("TotalCount") && dict["TotalCount"] != nil {
            self.totalCount = dict["TotalCount"] as! Int32
        }
    }
}

public class DescribeBlackListsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeBlackListsResponseBody?

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
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = DescribeBlackListsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeDeployedApiRequest : Tea.TeaModel {
    public var apiId: String?

    public var groupId: String?

    public var stageName: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.apiId != nil {
            map["ApiId"] = self.apiId!
        }
        if self.groupId != nil {
            map["GroupId"] = self.groupId!
        }
        if self.stageName != nil {
            map["StageName"] = self.stageName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ApiId") && dict["ApiId"] != nil {
            self.apiId = dict["ApiId"] as! String
        }
        if dict.keys.contains("GroupId") && dict["GroupId"] != nil {
            self.groupId = dict["GroupId"] as! String
        }
        if dict.keys.contains("StageName") && dict["StageName"] != nil {
            self.stageName = dict["StageName"] as! String
        }
    }
}

public class DescribeDeployedApiResponseBody : Tea.TeaModel {
    public class ConstantParameters : Tea.TeaModel {
        public class ConstantParameter : Tea.TeaModel {
            public var constantValue: String?

            public var description_: String?

            public var location: String?

            public var serviceParameterName: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.constantValue != nil {
                    map["ConstantValue"] = self.constantValue!
                }
                if self.description_ != nil {
                    map["Description"] = self.description_!
                }
                if self.location != nil {
                    map["Location"] = self.location!
                }
                if self.serviceParameterName != nil {
                    map["ServiceParameterName"] = self.serviceParameterName!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("ConstantValue") && dict["ConstantValue"] != nil {
                    self.constantValue = dict["ConstantValue"] as! String
                }
                if dict.keys.contains("Description") && dict["Description"] != nil {
                    self.description_ = dict["Description"] as! String
                }
                if dict.keys.contains("Location") && dict["Location"] != nil {
                    self.location = dict["Location"] as! String
                }
                if dict.keys.contains("ServiceParameterName") && dict["ServiceParameterName"] != nil {
                    self.serviceParameterName = dict["ServiceParameterName"] as! String
                }
            }
        }
        public var constantParameter: [DescribeDeployedApiResponseBody.ConstantParameters.ConstantParameter]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.constantParameter != nil {
                var tmp : [Any] = []
                for k in self.constantParameter! {
                    tmp.append(k.toMap())
                }
                map["ConstantParameter"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("ConstantParameter") && dict["ConstantParameter"] != nil {
                var tmp : [DescribeDeployedApiResponseBody.ConstantParameters.ConstantParameter] = []
                for v in dict["ConstantParameter"] as! [Any] {
                    var model = DescribeDeployedApiResponseBody.ConstantParameters.ConstantParameter()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.constantParameter = tmp
            }
        }
    }
    public class ErrorCodeSamples : Tea.TeaModel {
        public class ErrorCodeSample : Tea.TeaModel {
            public var code: String?

            public var description_: String?

            public var message: String?

            public override init() {
                super.init()
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
                if self.description_ != nil {
                    map["Description"] = self.description_!
                }
                if self.message != nil {
                    map["Message"] = self.message!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("Code") && dict["Code"] != nil {
                    self.code = dict["Code"] as! String
                }
                if dict.keys.contains("Description") && dict["Description"] != nil {
                    self.description_ = dict["Description"] as! String
                }
                if dict.keys.contains("Message") && dict["Message"] != nil {
                    self.message = dict["Message"] as! String
                }
            }
        }
        public var errorCodeSample: [DescribeDeployedApiResponseBody.ErrorCodeSamples.ErrorCodeSample]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.errorCodeSample != nil {
                var tmp : [Any] = []
                for k in self.errorCodeSample! {
                    tmp.append(k.toMap())
                }
                map["ErrorCodeSample"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("ErrorCodeSample") && dict["ErrorCodeSample"] != nil {
                var tmp : [DescribeDeployedApiResponseBody.ErrorCodeSamples.ErrorCodeSample] = []
                for v in dict["ErrorCodeSample"] as! [Any] {
                    var model = DescribeDeployedApiResponseBody.ErrorCodeSamples.ErrorCodeSample()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.errorCodeSample = tmp
            }
        }
    }
    public class FunctionComputeConfig : Tea.TeaModel {
        public var fcRegionId: String?

        public var functionName: String?

        public var roleArn: String?

        public var serviceName: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.fcRegionId != nil {
                map["FcRegionId"] = self.fcRegionId!
            }
            if self.functionName != nil {
                map["FunctionName"] = self.functionName!
            }
            if self.roleArn != nil {
                map["RoleArn"] = self.roleArn!
            }
            if self.serviceName != nil {
                map["ServiceName"] = self.serviceName!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("FcRegionId") && dict["FcRegionId"] != nil {
                self.fcRegionId = dict["FcRegionId"] as! String
            }
            if dict.keys.contains("FunctionName") && dict["FunctionName"] != nil {
                self.functionName = dict["FunctionName"] as! String
            }
            if dict.keys.contains("RoleArn") && dict["RoleArn"] != nil {
                self.roleArn = dict["RoleArn"] as! String
            }
            if dict.keys.contains("ServiceName") && dict["ServiceName"] != nil {
                self.serviceName = dict["ServiceName"] as! String
            }
        }
    }
    public class PathParameters : Tea.TeaModel {
        public class PathParameter : Tea.TeaModel {
            public var apiParameterName: String?

            public var demoValue: String?

            public var description_: String?

            public var serviceParameterName: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.apiParameterName != nil {
                    map["ApiParameterName"] = self.apiParameterName!
                }
                if self.demoValue != nil {
                    map["DemoValue"] = self.demoValue!
                }
                if self.description_ != nil {
                    map["Description"] = self.description_!
                }
                if self.serviceParameterName != nil {
                    map["ServiceParameterName"] = self.serviceParameterName!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("ApiParameterName") && dict["ApiParameterName"] != nil {
                    self.apiParameterName = dict["ApiParameterName"] as! String
                }
                if dict.keys.contains("DemoValue") && dict["DemoValue"] != nil {
                    self.demoValue = dict["DemoValue"] as! String
                }
                if dict.keys.contains("Description") && dict["Description"] != nil {
                    self.description_ = dict["Description"] as! String
                }
                if dict.keys.contains("ServiceParameterName") && dict["ServiceParameterName"] != nil {
                    self.serviceParameterName = dict["ServiceParameterName"] as! String
                }
            }
        }
        public var pathParameter: [DescribeDeployedApiResponseBody.PathParameters.PathParameter]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.pathParameter != nil {
                var tmp : [Any] = []
                for k in self.pathParameter! {
                    tmp.append(k.toMap())
                }
                map["PathParameter"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("PathParameter") && dict["PathParameter"] != nil {
                var tmp : [DescribeDeployedApiResponseBody.PathParameters.PathParameter] = []
                for v in dict["PathParameter"] as! [Any] {
                    var model = DescribeDeployedApiResponseBody.PathParameters.PathParameter()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.pathParameter = tmp
            }
        }
    }
    public class RequestBody : Tea.TeaModel {
        public class RequestParam : Tea.TeaModel {
            public var apiParameterName: String?

            public var defaultValue: String?

            public var demoValue: String?

            public var description_: String?

            public var docOrder: String?

            public var docShow: String?

            public var enumValue: String?

            public var jsonScheme: String?

            public var maxLength: Int64?

            public var maxValue: Int64?

            public var minLength: Int64?

            public var minValue: Int64?

            public var parameterType: String?

            public var regularExpression: String?

            public var required_: String?

            public var serviceParameterName: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.apiParameterName != nil {
                    map["ApiParameterName"] = self.apiParameterName!
                }
                if self.defaultValue != nil {
                    map["DefaultValue"] = self.defaultValue!
                }
                if self.demoValue != nil {
                    map["DemoValue"] = self.demoValue!
                }
                if self.description_ != nil {
                    map["Description"] = self.description_!
                }
                if self.docOrder != nil {
                    map["DocOrder"] = self.docOrder!
                }
                if self.docShow != nil {
                    map["DocShow"] = self.docShow!
                }
                if self.enumValue != nil {
                    map["EnumValue"] = self.enumValue!
                }
                if self.jsonScheme != nil {
                    map["JsonScheme"] = self.jsonScheme!
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
                if self.parameterType != nil {
                    map["ParameterType"] = self.parameterType!
                }
                if self.regularExpression != nil {
                    map["RegularExpression"] = self.regularExpression!
                }
                if self.required_ != nil {
                    map["Required"] = self.required_!
                }
                if self.serviceParameterName != nil {
                    map["ServiceParameterName"] = self.serviceParameterName!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("ApiParameterName") && dict["ApiParameterName"] != nil {
                    self.apiParameterName = dict["ApiParameterName"] as! String
                }
                if dict.keys.contains("DefaultValue") && dict["DefaultValue"] != nil {
                    self.defaultValue = dict["DefaultValue"] as! String
                }
                if dict.keys.contains("DemoValue") && dict["DemoValue"] != nil {
                    self.demoValue = dict["DemoValue"] as! String
                }
                if dict.keys.contains("Description") && dict["Description"] != nil {
                    self.description_ = dict["Description"] as! String
                }
                if dict.keys.contains("DocOrder") && dict["DocOrder"] != nil {
                    self.docOrder = dict["DocOrder"] as! String
                }
                if dict.keys.contains("DocShow") && dict["DocShow"] != nil {
                    self.docShow = dict["DocShow"] as! String
                }
                if dict.keys.contains("EnumValue") && dict["EnumValue"] != nil {
                    self.enumValue = dict["EnumValue"] as! String
                }
                if dict.keys.contains("JsonScheme") && dict["JsonScheme"] != nil {
                    self.jsonScheme = dict["JsonScheme"] as! String
                }
                if dict.keys.contains("MaxLength") && dict["MaxLength"] != nil {
                    self.maxLength = dict["MaxLength"] as! Int64
                }
                if dict.keys.contains("MaxValue") && dict["MaxValue"] != nil {
                    self.maxValue = dict["MaxValue"] as! Int64
                }
                if dict.keys.contains("MinLength") && dict["MinLength"] != nil {
                    self.minLength = dict["MinLength"] as! Int64
                }
                if dict.keys.contains("MinValue") && dict["MinValue"] != nil {
                    self.minValue = dict["MinValue"] as! Int64
                }
                if dict.keys.contains("ParameterType") && dict["ParameterType"] != nil {
                    self.parameterType = dict["ParameterType"] as! String
                }
                if dict.keys.contains("RegularExpression") && dict["RegularExpression"] != nil {
                    self.regularExpression = dict["RegularExpression"] as! String
                }
                if dict.keys.contains("Required") && dict["Required"] != nil {
                    self.required_ = dict["Required"] as! String
                }
                if dict.keys.contains("ServiceParameterName") && dict["ServiceParameterName"] != nil {
                    self.serviceParameterName = dict["ServiceParameterName"] as! String
                }
            }
        }
        public var requestParam: [DescribeDeployedApiResponseBody.RequestBody.RequestParam]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.requestParam != nil {
                var tmp : [Any] = []
                for k in self.requestParam! {
                    tmp.append(k.toMap())
                }
                map["RequestParam"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("RequestParam") && dict["RequestParam"] != nil {
                var tmp : [DescribeDeployedApiResponseBody.RequestBody.RequestParam] = []
                for v in dict["RequestParam"] as! [Any] {
                    var model = DescribeDeployedApiResponseBody.RequestBody.RequestParam()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.requestParam = tmp
            }
        }
    }
    public class RequestHeaders : Tea.TeaModel {
        public class RequestParam : Tea.TeaModel {
            public var apiParameterName: String?

            public var defaultValue: String?

            public var demoValue: String?

            public var description_: String?

            public var docOrder: String?

            public var docShow: String?

            public var enumValue: String?

            public var jsonScheme: String?

            public var maxLength: Int64?

            public var maxValue: Int64?

            public var minLength: Int64?

            public var minValue: Int64?

            public var parameterType: String?

            public var regularExpression: String?

            public var required_: String?

            public var serviceParameterName: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.apiParameterName != nil {
                    map["ApiParameterName"] = self.apiParameterName!
                }
                if self.defaultValue != nil {
                    map["DefaultValue"] = self.defaultValue!
                }
                if self.demoValue != nil {
                    map["DemoValue"] = self.demoValue!
                }
                if self.description_ != nil {
                    map["Description"] = self.description_!
                }
                if self.docOrder != nil {
                    map["DocOrder"] = self.docOrder!
                }
                if self.docShow != nil {
                    map["DocShow"] = self.docShow!
                }
                if self.enumValue != nil {
                    map["EnumValue"] = self.enumValue!
                }
                if self.jsonScheme != nil {
                    map["JsonScheme"] = self.jsonScheme!
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
                if self.parameterType != nil {
                    map["ParameterType"] = self.parameterType!
                }
                if self.regularExpression != nil {
                    map["RegularExpression"] = self.regularExpression!
                }
                if self.required_ != nil {
                    map["Required"] = self.required_!
                }
                if self.serviceParameterName != nil {
                    map["ServiceParameterName"] = self.serviceParameterName!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("ApiParameterName") && dict["ApiParameterName"] != nil {
                    self.apiParameterName = dict["ApiParameterName"] as! String
                }
                if dict.keys.contains("DefaultValue") && dict["DefaultValue"] != nil {
                    self.defaultValue = dict["DefaultValue"] as! String
                }
                if dict.keys.contains("DemoValue") && dict["DemoValue"] != nil {
                    self.demoValue = dict["DemoValue"] as! String
                }
                if dict.keys.contains("Description") && dict["Description"] != nil {
                    self.description_ = dict["Description"] as! String
                }
                if dict.keys.contains("DocOrder") && dict["DocOrder"] != nil {
                    self.docOrder = dict["DocOrder"] as! String
                }
                if dict.keys.contains("DocShow") && dict["DocShow"] != nil {
                    self.docShow = dict["DocShow"] as! String
                }
                if dict.keys.contains("EnumValue") && dict["EnumValue"] != nil {
                    self.enumValue = dict["EnumValue"] as! String
                }
                if dict.keys.contains("JsonScheme") && dict["JsonScheme"] != nil {
                    self.jsonScheme = dict["JsonScheme"] as! String
                }
                if dict.keys.contains("MaxLength") && dict["MaxLength"] != nil {
                    self.maxLength = dict["MaxLength"] as! Int64
                }
                if dict.keys.contains("MaxValue") && dict["MaxValue"] != nil {
                    self.maxValue = dict["MaxValue"] as! Int64
                }
                if dict.keys.contains("MinLength") && dict["MinLength"] != nil {
                    self.minLength = dict["MinLength"] as! Int64
                }
                if dict.keys.contains("MinValue") && dict["MinValue"] != nil {
                    self.minValue = dict["MinValue"] as! Int64
                }
                if dict.keys.contains("ParameterType") && dict["ParameterType"] != nil {
                    self.parameterType = dict["ParameterType"] as! String
                }
                if dict.keys.contains("RegularExpression") && dict["RegularExpression"] != nil {
                    self.regularExpression = dict["RegularExpression"] as! String
                }
                if dict.keys.contains("Required") && dict["Required"] != nil {
                    self.required_ = dict["Required"] as! String
                }
                if dict.keys.contains("ServiceParameterName") && dict["ServiceParameterName"] != nil {
                    self.serviceParameterName = dict["ServiceParameterName"] as! String
                }
            }
        }
        public var requestParam: [DescribeDeployedApiResponseBody.RequestHeaders.RequestParam]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.requestParam != nil {
                var tmp : [Any] = []
                for k in self.requestParam! {
                    tmp.append(k.toMap())
                }
                map["RequestParam"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("RequestParam") && dict["RequestParam"] != nil {
                var tmp : [DescribeDeployedApiResponseBody.RequestHeaders.RequestParam] = []
                for v in dict["RequestParam"] as! [Any] {
                    var model = DescribeDeployedApiResponseBody.RequestHeaders.RequestParam()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.requestParam = tmp
            }
        }
    }
    public class RequestQueries : Tea.TeaModel {
        public class RequestParam : Tea.TeaModel {
            public var apiParameterName: String?

            public var defaultValue: String?

            public var demoValue: String?

            public var description_: String?

            public var docOrder: String?

            public var docShow: String?

            public var enumValue: String?

            public var jsonScheme: String?

            public var maxLength: Int64?

            public var maxValue: Int64?

            public var minLength: Int64?

            public var minValue: Int64?

            public var parameterType: String?

            public var regularExpression: String?

            public var required_: String?

            public var serviceParameterName: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.apiParameterName != nil {
                    map["ApiParameterName"] = self.apiParameterName!
                }
                if self.defaultValue != nil {
                    map["DefaultValue"] = self.defaultValue!
                }
                if self.demoValue != nil {
                    map["DemoValue"] = self.demoValue!
                }
                if self.description_ != nil {
                    map["Description"] = self.description_!
                }
                if self.docOrder != nil {
                    map["DocOrder"] = self.docOrder!
                }
                if self.docShow != nil {
                    map["DocShow"] = self.docShow!
                }
                if self.enumValue != nil {
                    map["EnumValue"] = self.enumValue!
                }
                if self.jsonScheme != nil {
                    map["JsonScheme"] = self.jsonScheme!
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
                if self.parameterType != nil {
                    map["ParameterType"] = self.parameterType!
                }
                if self.regularExpression != nil {
                    map["RegularExpression"] = self.regularExpression!
                }
                if self.required_ != nil {
                    map["Required"] = self.required_!
                }
                if self.serviceParameterName != nil {
                    map["ServiceParameterName"] = self.serviceParameterName!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("ApiParameterName") && dict["ApiParameterName"] != nil {
                    self.apiParameterName = dict["ApiParameterName"] as! String
                }
                if dict.keys.contains("DefaultValue") && dict["DefaultValue"] != nil {
                    self.defaultValue = dict["DefaultValue"] as! String
                }
                if dict.keys.contains("DemoValue") && dict["DemoValue"] != nil {
                    self.demoValue = dict["DemoValue"] as! String
                }
                if dict.keys.contains("Description") && dict["Description"] != nil {
                    self.description_ = dict["Description"] as! String
                }
                if dict.keys.contains("DocOrder") && dict["DocOrder"] != nil {
                    self.docOrder = dict["DocOrder"] as! String
                }
                if dict.keys.contains("DocShow") && dict["DocShow"] != nil {
                    self.docShow = dict["DocShow"] as! String
                }
                if dict.keys.contains("EnumValue") && dict["EnumValue"] != nil {
                    self.enumValue = dict["EnumValue"] as! String
                }
                if dict.keys.contains("JsonScheme") && dict["JsonScheme"] != nil {
                    self.jsonScheme = dict["JsonScheme"] as! String
                }
                if dict.keys.contains("MaxLength") && dict["MaxLength"] != nil {
                    self.maxLength = dict["MaxLength"] as! Int64
                }
                if dict.keys.contains("MaxValue") && dict["MaxValue"] != nil {
                    self.maxValue = dict["MaxValue"] as! Int64
                }
                if dict.keys.contains("MinLength") && dict["MinLength"] != nil {
                    self.minLength = dict["MinLength"] as! Int64
                }
                if dict.keys.contains("MinValue") && dict["MinValue"] != nil {
                    self.minValue = dict["MinValue"] as! Int64
                }
                if dict.keys.contains("ParameterType") && dict["ParameterType"] != nil {
                    self.parameterType = dict["ParameterType"] as! String
                }
                if dict.keys.contains("RegularExpression") && dict["RegularExpression"] != nil {
                    self.regularExpression = dict["RegularExpression"] as! String
                }
                if dict.keys.contains("Required") && dict["Required"] != nil {
                    self.required_ = dict["Required"] as! String
                }
                if dict.keys.contains("ServiceParameterName") && dict["ServiceParameterName"] != nil {
                    self.serviceParameterName = dict["ServiceParameterName"] as! String
                }
            }
        }
        public var requestParam: [DescribeDeployedApiResponseBody.RequestQueries.RequestParam]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.requestParam != nil {
                var tmp : [Any] = []
                for k in self.requestParam! {
                    tmp.append(k.toMap())
                }
                map["RequestParam"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("RequestParam") && dict["RequestParam"] != nil {
                var tmp : [DescribeDeployedApiResponseBody.RequestQueries.RequestParam] = []
                for v in dict["RequestParam"] as! [Any] {
                    var model = DescribeDeployedApiResponseBody.RequestQueries.RequestParam()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.requestParam = tmp
            }
        }
    }
    public class SystemParameters : Tea.TeaModel {
        public class SystemParameter : Tea.TeaModel {
            public var demoValue: String?

            public var description_: String?

            public var location: String?

            public var parameterName: String?

            public var serviceParameterName: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.demoValue != nil {
                    map["DemoValue"] = self.demoValue!
                }
                if self.description_ != nil {
                    map["Description"] = self.description_!
                }
                if self.location != nil {
                    map["Location"] = self.location!
                }
                if self.parameterName != nil {
                    map["ParameterName"] = self.parameterName!
                }
                if self.serviceParameterName != nil {
                    map["ServiceParameterName"] = self.serviceParameterName!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("DemoValue") && dict["DemoValue"] != nil {
                    self.demoValue = dict["DemoValue"] as! String
                }
                if dict.keys.contains("Description") && dict["Description"] != nil {
                    self.description_ = dict["Description"] as! String
                }
                if dict.keys.contains("Location") && dict["Location"] != nil {
                    self.location = dict["Location"] as! String
                }
                if dict.keys.contains("ParameterName") && dict["ParameterName"] != nil {
                    self.parameterName = dict["ParameterName"] as! String
                }
                if dict.keys.contains("ServiceParameterName") && dict["ServiceParameterName"] != nil {
                    self.serviceParameterName = dict["ServiceParameterName"] as! String
                }
            }
        }
        public var systemParameter: [DescribeDeployedApiResponseBody.SystemParameters.SystemParameter]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.systemParameter != nil {
                var tmp : [Any] = []
                for k in self.systemParameter! {
                    tmp.append(k.toMap())
                }
                map["SystemParameter"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("SystemParameter") && dict["SystemParameter"] != nil {
                var tmp : [DescribeDeployedApiResponseBody.SystemParameters.SystemParameter] = []
                for v in dict["SystemParameter"] as! [Any] {
                    var model = DescribeDeployedApiResponseBody.SystemParameters.SystemParameter()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.systemParameter = tmp
            }
        }
    }
    public var apiId: String?

    public var apiName: String?

    public var authType: String?

    public var bodyFormat: String?

    public var constantParameters: DescribeDeployedApiResponseBody.ConstantParameters?

    public var deployedTime: String?

    public var errorCodeSamples: DescribeDeployedApiResponseBody.ErrorCodeSamples?

    public var functionComputeConfig: DescribeDeployedApiResponseBody.FunctionComputeConfig?

    public var groupId: String?

    public var groupName: String?

    public var httpMethod: String?

    public var httpProtocol: String?

    public var path: String?

    public var pathParameters: DescribeDeployedApiResponseBody.PathParameters?

    public var postBodyDescription: String?

    public var postBodyType: String?

    public var regionId: String?

    public var requestBody: DescribeDeployedApiResponseBody.RequestBody?

    public var requestHeaders: DescribeDeployedApiResponseBody.RequestHeaders?

    public var requestId: String?

    public var requestQueries: DescribeDeployedApiResponseBody.RequestQueries?

    public var resultSample: String?

    public var resultType: String?

    public var serviceAddress: String?

    public var serviceFCEnable: String?

    public var serviceProtocol: String?

    public var serviceTimeout: Int32?

    public var serviceVpcEnable: String?

    public var stageName: String?

    public var systemParameters: DescribeDeployedApiResponseBody.SystemParameters?

    public var visibility: String?

    public var vpcName: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.constantParameters?.validate()
        try self.errorCodeSamples?.validate()
        try self.functionComputeConfig?.validate()
        try self.pathParameters?.validate()
        try self.requestBody?.validate()
        try self.requestHeaders?.validate()
        try self.requestQueries?.validate()
        try self.systemParameters?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.apiId != nil {
            map["ApiId"] = self.apiId!
        }
        if self.apiName != nil {
            map["ApiName"] = self.apiName!
        }
        if self.authType != nil {
            map["AuthType"] = self.authType!
        }
        if self.bodyFormat != nil {
            map["BodyFormat"] = self.bodyFormat!
        }
        if self.constantParameters != nil {
            map["ConstantParameters"] = self.constantParameters?.toMap()
        }
        if self.deployedTime != nil {
            map["DeployedTime"] = self.deployedTime!
        }
        if self.errorCodeSamples != nil {
            map["ErrorCodeSamples"] = self.errorCodeSamples?.toMap()
        }
        if self.functionComputeConfig != nil {
            map["FunctionComputeConfig"] = self.functionComputeConfig?.toMap()
        }
        if self.groupId != nil {
            map["GroupId"] = self.groupId!
        }
        if self.groupName != nil {
            map["GroupName"] = self.groupName!
        }
        if self.httpMethod != nil {
            map["HttpMethod"] = self.httpMethod!
        }
        if self.httpProtocol != nil {
            map["HttpProtocol"] = self.httpProtocol!
        }
        if self.path != nil {
            map["Path"] = self.path!
        }
        if self.pathParameters != nil {
            map["PathParameters"] = self.pathParameters?.toMap()
        }
        if self.postBodyDescription != nil {
            map["PostBodyDescription"] = self.postBodyDescription!
        }
        if self.postBodyType != nil {
            map["PostBodyType"] = self.postBodyType!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.requestBody != nil {
            map["RequestBody"] = self.requestBody?.toMap()
        }
        if self.requestHeaders != nil {
            map["RequestHeaders"] = self.requestHeaders?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.requestQueries != nil {
            map["RequestQueries"] = self.requestQueries?.toMap()
        }
        if self.resultSample != nil {
            map["ResultSample"] = self.resultSample!
        }
        if self.resultType != nil {
            map["ResultType"] = self.resultType!
        }
        if self.serviceAddress != nil {
            map["ServiceAddress"] = self.serviceAddress!
        }
        if self.serviceFCEnable != nil {
            map["ServiceFCEnable"] = self.serviceFCEnable!
        }
        if self.serviceProtocol != nil {
            map["ServiceProtocol"] = self.serviceProtocol!
        }
        if self.serviceTimeout != nil {
            map["ServiceTimeout"] = self.serviceTimeout!
        }
        if self.serviceVpcEnable != nil {
            map["ServiceVpcEnable"] = self.serviceVpcEnable!
        }
        if self.stageName != nil {
            map["StageName"] = self.stageName!
        }
        if self.systemParameters != nil {
            map["SystemParameters"] = self.systemParameters?.toMap()
        }
        if self.visibility != nil {
            map["Visibility"] = self.visibility!
        }
        if self.vpcName != nil {
            map["VpcName"] = self.vpcName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ApiId") && dict["ApiId"] != nil {
            self.apiId = dict["ApiId"] as! String
        }
        if dict.keys.contains("ApiName") && dict["ApiName"] != nil {
            self.apiName = dict["ApiName"] as! String
        }
        if dict.keys.contains("AuthType") && dict["AuthType"] != nil {
            self.authType = dict["AuthType"] as! String
        }
        if dict.keys.contains("BodyFormat") && dict["BodyFormat"] != nil {
            self.bodyFormat = dict["BodyFormat"] as! String
        }
        if dict.keys.contains("ConstantParameters") && dict["ConstantParameters"] != nil {
            var model = DescribeDeployedApiResponseBody.ConstantParameters()
            model.fromMap(dict["ConstantParameters"] as! [String: Any])
            self.constantParameters = model
        }
        if dict.keys.contains("DeployedTime") && dict["DeployedTime"] != nil {
            self.deployedTime = dict["DeployedTime"] as! String
        }
        if dict.keys.contains("ErrorCodeSamples") && dict["ErrorCodeSamples"] != nil {
            var model = DescribeDeployedApiResponseBody.ErrorCodeSamples()
            model.fromMap(dict["ErrorCodeSamples"] as! [String: Any])
            self.errorCodeSamples = model
        }
        if dict.keys.contains("FunctionComputeConfig") && dict["FunctionComputeConfig"] != nil {
            var model = DescribeDeployedApiResponseBody.FunctionComputeConfig()
            model.fromMap(dict["FunctionComputeConfig"] as! [String: Any])
            self.functionComputeConfig = model
        }
        if dict.keys.contains("GroupId") && dict["GroupId"] != nil {
            self.groupId = dict["GroupId"] as! String
        }
        if dict.keys.contains("GroupName") && dict["GroupName"] != nil {
            self.groupName = dict["GroupName"] as! String
        }
        if dict.keys.contains("HttpMethod") && dict["HttpMethod"] != nil {
            self.httpMethod = dict["HttpMethod"] as! String
        }
        if dict.keys.contains("HttpProtocol") && dict["HttpProtocol"] != nil {
            self.httpProtocol = dict["HttpProtocol"] as! String
        }
        if dict.keys.contains("Path") && dict["Path"] != nil {
            self.path = dict["Path"] as! String
        }
        if dict.keys.contains("PathParameters") && dict["PathParameters"] != nil {
            var model = DescribeDeployedApiResponseBody.PathParameters()
            model.fromMap(dict["PathParameters"] as! [String: Any])
            self.pathParameters = model
        }
        if dict.keys.contains("PostBodyDescription") && dict["PostBodyDescription"] != nil {
            self.postBodyDescription = dict["PostBodyDescription"] as! String
        }
        if dict.keys.contains("PostBodyType") && dict["PostBodyType"] != nil {
            self.postBodyType = dict["PostBodyType"] as! String
        }
        if dict.keys.contains("RegionId") && dict["RegionId"] != nil {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("RequestBody") && dict["RequestBody"] != nil {
            var model = DescribeDeployedApiResponseBody.RequestBody()
            model.fromMap(dict["RequestBody"] as! [String: Any])
            self.requestBody = model
        }
        if dict.keys.contains("RequestHeaders") && dict["RequestHeaders"] != nil {
            var model = DescribeDeployedApiResponseBody.RequestHeaders()
            model.fromMap(dict["RequestHeaders"] as! [String: Any])
            self.requestHeaders = model
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("RequestQueries") && dict["RequestQueries"] != nil {
            var model = DescribeDeployedApiResponseBody.RequestQueries()
            model.fromMap(dict["RequestQueries"] as! [String: Any])
            self.requestQueries = model
        }
        if dict.keys.contains("ResultSample") && dict["ResultSample"] != nil {
            self.resultSample = dict["ResultSample"] as! String
        }
        if dict.keys.contains("ResultType") && dict["ResultType"] != nil {
            self.resultType = dict["ResultType"] as! String
        }
        if dict.keys.contains("ServiceAddress") && dict["ServiceAddress"] != nil {
            self.serviceAddress = dict["ServiceAddress"] as! String
        }
        if dict.keys.contains("ServiceFCEnable") && dict["ServiceFCEnable"] != nil {
            self.serviceFCEnable = dict["ServiceFCEnable"] as! String
        }
        if dict.keys.contains("ServiceProtocol") && dict["ServiceProtocol"] != nil {
            self.serviceProtocol = dict["ServiceProtocol"] as! String
        }
        if dict.keys.contains("ServiceTimeout") && dict["ServiceTimeout"] != nil {
            self.serviceTimeout = dict["ServiceTimeout"] as! Int32
        }
        if dict.keys.contains("ServiceVpcEnable") && dict["ServiceVpcEnable"] != nil {
            self.serviceVpcEnable = dict["ServiceVpcEnable"] as! String
        }
        if dict.keys.contains("StageName") && dict["StageName"] != nil {
            self.stageName = dict["StageName"] as! String
        }
        if dict.keys.contains("SystemParameters") && dict["SystemParameters"] != nil {
            var model = DescribeDeployedApiResponseBody.SystemParameters()
            model.fromMap(dict["SystemParameters"] as! [String: Any])
            self.systemParameters = model
        }
        if dict.keys.contains("Visibility") && dict["Visibility"] != nil {
            self.visibility = dict["Visibility"] as! String
        }
        if dict.keys.contains("VpcName") && dict["VpcName"] != nil {
            self.vpcName = dict["VpcName"] as! String
        }
    }
}

public class DescribeDeployedApiResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeDeployedApiResponseBody?

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
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = DescribeDeployedApiResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeDeployedApisRequest : Tea.TeaModel {
    public var apiId: String?

    public var apiName: String?

    public var groupId: String?

    public var pageNumber: Int32?

    public var pageSize: Int32?

    public var stageName: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.apiId != nil {
            map["ApiId"] = self.apiId!
        }
        if self.apiName != nil {
            map["ApiName"] = self.apiName!
        }
        if self.groupId != nil {
            map["GroupId"] = self.groupId!
        }
        if self.pageNumber != nil {
            map["PageNumber"] = self.pageNumber!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.stageName != nil {
            map["StageName"] = self.stageName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ApiId") && dict["ApiId"] != nil {
            self.apiId = dict["ApiId"] as! String
        }
        if dict.keys.contains("ApiName") && dict["ApiName"] != nil {
            self.apiName = dict["ApiName"] as! String
        }
        if dict.keys.contains("GroupId") && dict["GroupId"] != nil {
            self.groupId = dict["GroupId"] as! String
        }
        if dict.keys.contains("PageNumber") && dict["PageNumber"] != nil {
            self.pageNumber = dict["PageNumber"] as! Int32
        }
        if dict.keys.contains("PageSize") && dict["PageSize"] != nil {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("StageName") && dict["StageName"] != nil {
            self.stageName = dict["StageName"] as! String
        }
    }
}

public class DescribeDeployedApisResponseBody : Tea.TeaModel {
    public class ApiInfos : Tea.TeaModel {
        public class ApiInfo : Tea.TeaModel {
            public var apiId: String?

            public var apiName: String?

            public var deployedTime: String?

            public var description_: String?

            public var groupId: String?

            public var groupName: String?

            public var regionId: String?

            public var stageName: String?

            public var visibility: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.apiId != nil {
                    map["ApiId"] = self.apiId!
                }
                if self.apiName != nil {
                    map["ApiName"] = self.apiName!
                }
                if self.deployedTime != nil {
                    map["DeployedTime"] = self.deployedTime!
                }
                if self.description_ != nil {
                    map["Description"] = self.description_!
                }
                if self.groupId != nil {
                    map["GroupId"] = self.groupId!
                }
                if self.groupName != nil {
                    map["GroupName"] = self.groupName!
                }
                if self.regionId != nil {
                    map["RegionId"] = self.regionId!
                }
                if self.stageName != nil {
                    map["StageName"] = self.stageName!
                }
                if self.visibility != nil {
                    map["Visibility"] = self.visibility!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("ApiId") && dict["ApiId"] != nil {
                    self.apiId = dict["ApiId"] as! String
                }
                if dict.keys.contains("ApiName") && dict["ApiName"] != nil {
                    self.apiName = dict["ApiName"] as! String
                }
                if dict.keys.contains("DeployedTime") && dict["DeployedTime"] != nil {
                    self.deployedTime = dict["DeployedTime"] as! String
                }
                if dict.keys.contains("Description") && dict["Description"] != nil {
                    self.description_ = dict["Description"] as! String
                }
                if dict.keys.contains("GroupId") && dict["GroupId"] != nil {
                    self.groupId = dict["GroupId"] as! String
                }
                if dict.keys.contains("GroupName") && dict["GroupName"] != nil {
                    self.groupName = dict["GroupName"] as! String
                }
                if dict.keys.contains("RegionId") && dict["RegionId"] != nil {
                    self.regionId = dict["RegionId"] as! String
                }
                if dict.keys.contains("StageName") && dict["StageName"] != nil {
                    self.stageName = dict["StageName"] as! String
                }
                if dict.keys.contains("Visibility") && dict["Visibility"] != nil {
                    self.visibility = dict["Visibility"] as! String
                }
            }
        }
        public var apiInfo: [DescribeDeployedApisResponseBody.ApiInfos.ApiInfo]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.apiInfo != nil {
                var tmp : [Any] = []
                for k in self.apiInfo! {
                    tmp.append(k.toMap())
                }
                map["ApiInfo"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("ApiInfo") && dict["ApiInfo"] != nil {
                var tmp : [DescribeDeployedApisResponseBody.ApiInfos.ApiInfo] = []
                for v in dict["ApiInfo"] as! [Any] {
                    var model = DescribeDeployedApisResponseBody.ApiInfos.ApiInfo()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.apiInfo = tmp
            }
        }
    }
    public var apiInfos: DescribeDeployedApisResponseBody.ApiInfos?

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
        try self.apiInfos?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.apiInfos != nil {
            map["ApiInfos"] = self.apiInfos?.toMap()
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
        if dict.keys.contains("ApiInfos") && dict["ApiInfos"] != nil {
            var model = DescribeDeployedApisResponseBody.ApiInfos()
            model.fromMap(dict["ApiInfos"] as! [String: Any])
            self.apiInfos = model
        }
        if dict.keys.contains("PageNumber") && dict["PageNumber"] != nil {
            self.pageNumber = dict["PageNumber"] as! Int32
        }
        if dict.keys.contains("PageSize") && dict["PageSize"] != nil {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("TotalCount") && dict["TotalCount"] != nil {
            self.totalCount = dict["TotalCount"] as! Int32
        }
    }
}

public class DescribeDeployedApisResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeDeployedApisResponseBody?

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
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = DescribeDeployedApisResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeDomainRequest : Tea.TeaModel {
    public var domainName: String?

    public var groupId: String?

    public override init() {
        super.init()
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
        if self.groupId != nil {
            map["GroupId"] = self.groupId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DomainName") && dict["DomainName"] != nil {
            self.domainName = dict["DomainName"] as! String
        }
        if dict.keys.contains("GroupId") && dict["GroupId"] != nil {
            self.groupId = dict["GroupId"] as! String
        }
    }
}

public class DescribeDomainResponseBody : Tea.TeaModel {
    public var certificateBody: String?

    public var certificateId: String?

    public var certificateName: String?

    public var domainName: String?

    public var domainNameResolution: String?

    public var domainStatus: String?

    public var groupId: String?

    public var privateKey: String?

    public var requestId: String?

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
        if self.certificateBody != nil {
            map["CertificateBody"] = self.certificateBody!
        }
        if self.certificateId != nil {
            map["CertificateId"] = self.certificateId!
        }
        if self.certificateName != nil {
            map["CertificateName"] = self.certificateName!
        }
        if self.domainName != nil {
            map["DomainName"] = self.domainName!
        }
        if self.domainNameResolution != nil {
            map["DomainNameResolution"] = self.domainNameResolution!
        }
        if self.domainStatus != nil {
            map["DomainStatus"] = self.domainStatus!
        }
        if self.groupId != nil {
            map["GroupId"] = self.groupId!
        }
        if self.privateKey != nil {
            map["PrivateKey"] = self.privateKey!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.subDomain != nil {
            map["SubDomain"] = self.subDomain!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("CertificateBody") && dict["CertificateBody"] != nil {
            self.certificateBody = dict["CertificateBody"] as! String
        }
        if dict.keys.contains("CertificateId") && dict["CertificateId"] != nil {
            self.certificateId = dict["CertificateId"] as! String
        }
        if dict.keys.contains("CertificateName") && dict["CertificateName"] != nil {
            self.certificateName = dict["CertificateName"] as! String
        }
        if dict.keys.contains("DomainName") && dict["DomainName"] != nil {
            self.domainName = dict["DomainName"] as! String
        }
        if dict.keys.contains("DomainNameResolution") && dict["DomainNameResolution"] != nil {
            self.domainNameResolution = dict["DomainNameResolution"] as! String
        }
        if dict.keys.contains("DomainStatus") && dict["DomainStatus"] != nil {
            self.domainStatus = dict["DomainStatus"] as! String
        }
        if dict.keys.contains("GroupId") && dict["GroupId"] != nil {
            self.groupId = dict["GroupId"] as! String
        }
        if dict.keys.contains("PrivateKey") && dict["PrivateKey"] != nil {
            self.privateKey = dict["PrivateKey"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("SubDomain") && dict["SubDomain"] != nil {
            self.subDomain = dict["SubDomain"] as! String
        }
    }
}

public class DescribeDomainResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeDomainResponseBody?

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
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = DescribeDomainResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeDomainResolutionRequest : Tea.TeaModel {
    public var domainNames: String?

    public var groupId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.domainNames != nil {
            map["DomainNames"] = self.domainNames!
        }
        if self.groupId != nil {
            map["GroupId"] = self.groupId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DomainNames") && dict["DomainNames"] != nil {
            self.domainNames = dict["DomainNames"] as! String
        }
        if dict.keys.contains("GroupId") && dict["GroupId"] != nil {
            self.groupId = dict["GroupId"] as! String
        }
    }
}

public class DescribeDomainResolutionResponseBody : Tea.TeaModel {
    public class DomainResolutions : Tea.TeaModel {
        public class DomainResolution : Tea.TeaModel {
            public var domainName: String?

            public var domainNameResolution: String?

            public override init() {
                super.init()
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
                if self.domainNameResolution != nil {
                    map["DomainNameResolution"] = self.domainNameResolution!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("DomainName") && dict["DomainName"] != nil {
                    self.domainName = dict["DomainName"] as! String
                }
                if dict.keys.contains("DomainNameResolution") && dict["DomainNameResolution"] != nil {
                    self.domainNameResolution = dict["DomainNameResolution"] as! String
                }
            }
        }
        public var domainResolution: [DescribeDomainResolutionResponseBody.DomainResolutions.DomainResolution]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.domainResolution != nil {
                var tmp : [Any] = []
                for k in self.domainResolution! {
                    tmp.append(k.toMap())
                }
                map["DomainResolution"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("DomainResolution") && dict["DomainResolution"] != nil {
                var tmp : [DescribeDomainResolutionResponseBody.DomainResolutions.DomainResolution] = []
                for v in dict["DomainResolution"] as! [Any] {
                    var model = DescribeDomainResolutionResponseBody.DomainResolutions.DomainResolution()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.domainResolution = tmp
            }
        }
    }
    public var domainResolutions: DescribeDomainResolutionResponseBody.DomainResolutions?

    public var groupId: String?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.domainResolutions?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.domainResolutions != nil {
            map["DomainResolutions"] = self.domainResolutions?.toMap()
        }
        if self.groupId != nil {
            map["GroupId"] = self.groupId!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DomainResolutions") && dict["DomainResolutions"] != nil {
            var model = DescribeDomainResolutionResponseBody.DomainResolutions()
            model.fromMap(dict["DomainResolutions"] as! [String: Any])
            self.domainResolutions = model
        }
        if dict.keys.contains("GroupId") && dict["GroupId"] != nil {
            self.groupId = dict["GroupId"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class DescribeDomainResolutionResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeDomainResolutionResponseBody?

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
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = DescribeDomainResolutionResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeHistoryApiRequest : Tea.TeaModel {
    public var apiId: String?

    public var groupId: String?

    public var historyVersion: String?

    public var stageName: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.apiId != nil {
            map["ApiId"] = self.apiId!
        }
        if self.groupId != nil {
            map["GroupId"] = self.groupId!
        }
        if self.historyVersion != nil {
            map["HistoryVersion"] = self.historyVersion!
        }
        if self.stageName != nil {
            map["StageName"] = self.stageName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ApiId") && dict["ApiId"] != nil {
            self.apiId = dict["ApiId"] as! String
        }
        if dict.keys.contains("GroupId") && dict["GroupId"] != nil {
            self.groupId = dict["GroupId"] as! String
        }
        if dict.keys.contains("HistoryVersion") && dict["HistoryVersion"] != nil {
            self.historyVersion = dict["HistoryVersion"] as! String
        }
        if dict.keys.contains("StageName") && dict["StageName"] != nil {
            self.stageName = dict["StageName"] as! String
        }
    }
}

public class DescribeHistoryApiResponseBody : Tea.TeaModel {
    public class ConstantParameters : Tea.TeaModel {
        public class ConstantParameter : Tea.TeaModel {
            public var constantValue: String?

            public var description_: String?

            public var location: String?

            public var serviceParameterName: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.constantValue != nil {
                    map["ConstantValue"] = self.constantValue!
                }
                if self.description_ != nil {
                    map["Description"] = self.description_!
                }
                if self.location != nil {
                    map["Location"] = self.location!
                }
                if self.serviceParameterName != nil {
                    map["ServiceParameterName"] = self.serviceParameterName!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("ConstantValue") && dict["ConstantValue"] != nil {
                    self.constantValue = dict["ConstantValue"] as! String
                }
                if dict.keys.contains("Description") && dict["Description"] != nil {
                    self.description_ = dict["Description"] as! String
                }
                if dict.keys.contains("Location") && dict["Location"] != nil {
                    self.location = dict["Location"] as! String
                }
                if dict.keys.contains("ServiceParameterName") && dict["ServiceParameterName"] != nil {
                    self.serviceParameterName = dict["ServiceParameterName"] as! String
                }
            }
        }
        public var constantParameter: [DescribeHistoryApiResponseBody.ConstantParameters.ConstantParameter]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.constantParameter != nil {
                var tmp : [Any] = []
                for k in self.constantParameter! {
                    tmp.append(k.toMap())
                }
                map["ConstantParameter"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("ConstantParameter") && dict["ConstantParameter"] != nil {
                var tmp : [DescribeHistoryApiResponseBody.ConstantParameters.ConstantParameter] = []
                for v in dict["ConstantParameter"] as! [Any] {
                    var model = DescribeHistoryApiResponseBody.ConstantParameters.ConstantParameter()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.constantParameter = tmp
            }
        }
    }
    public class ErrorCodeSamples : Tea.TeaModel {
        public class ErrorCodeSample : Tea.TeaModel {
            public var code: String?

            public var description_: String?

            public var message: String?

            public override init() {
                super.init()
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
                if self.description_ != nil {
                    map["Description"] = self.description_!
                }
                if self.message != nil {
                    map["Message"] = self.message!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("Code") && dict["Code"] != nil {
                    self.code = dict["Code"] as! String
                }
                if dict.keys.contains("Description") && dict["Description"] != nil {
                    self.description_ = dict["Description"] as! String
                }
                if dict.keys.contains("Message") && dict["Message"] != nil {
                    self.message = dict["Message"] as! String
                }
            }
        }
        public var errorCodeSample: [DescribeHistoryApiResponseBody.ErrorCodeSamples.ErrorCodeSample]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.errorCodeSample != nil {
                var tmp : [Any] = []
                for k in self.errorCodeSample! {
                    tmp.append(k.toMap())
                }
                map["ErrorCodeSample"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("ErrorCodeSample") && dict["ErrorCodeSample"] != nil {
                var tmp : [DescribeHistoryApiResponseBody.ErrorCodeSamples.ErrorCodeSample] = []
                for v in dict["ErrorCodeSample"] as! [Any] {
                    var model = DescribeHistoryApiResponseBody.ErrorCodeSamples.ErrorCodeSample()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.errorCodeSample = tmp
            }
        }
    }
    public class FunctionComputeConfig : Tea.TeaModel {
        public var fcRegionId: String?

        public var functionName: String?

        public var roleArn: String?

        public var serviceName: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.fcRegionId != nil {
                map["FcRegionId"] = self.fcRegionId!
            }
            if self.functionName != nil {
                map["FunctionName"] = self.functionName!
            }
            if self.roleArn != nil {
                map["RoleArn"] = self.roleArn!
            }
            if self.serviceName != nil {
                map["ServiceName"] = self.serviceName!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("FcRegionId") && dict["FcRegionId"] != nil {
                self.fcRegionId = dict["FcRegionId"] as! String
            }
            if dict.keys.contains("FunctionName") && dict["FunctionName"] != nil {
                self.functionName = dict["FunctionName"] as! String
            }
            if dict.keys.contains("RoleArn") && dict["RoleArn"] != nil {
                self.roleArn = dict["RoleArn"] as! String
            }
            if dict.keys.contains("ServiceName") && dict["ServiceName"] != nil {
                self.serviceName = dict["ServiceName"] as! String
            }
        }
    }
    public class PathParameters : Tea.TeaModel {
        public class PathParameter : Tea.TeaModel {
            public var apiParameterName: String?

            public var demoValue: String?

            public var description_: String?

            public var serviceParameterName: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.apiParameterName != nil {
                    map["ApiParameterName"] = self.apiParameterName!
                }
                if self.demoValue != nil {
                    map["DemoValue"] = self.demoValue!
                }
                if self.description_ != nil {
                    map["Description"] = self.description_!
                }
                if self.serviceParameterName != nil {
                    map["ServiceParameterName"] = self.serviceParameterName!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("ApiParameterName") && dict["ApiParameterName"] != nil {
                    self.apiParameterName = dict["ApiParameterName"] as! String
                }
                if dict.keys.contains("DemoValue") && dict["DemoValue"] != nil {
                    self.demoValue = dict["DemoValue"] as! String
                }
                if dict.keys.contains("Description") && dict["Description"] != nil {
                    self.description_ = dict["Description"] as! String
                }
                if dict.keys.contains("ServiceParameterName") && dict["ServiceParameterName"] != nil {
                    self.serviceParameterName = dict["ServiceParameterName"] as! String
                }
            }
        }
        public var pathParameter: [DescribeHistoryApiResponseBody.PathParameters.PathParameter]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.pathParameter != nil {
                var tmp : [Any] = []
                for k in self.pathParameter! {
                    tmp.append(k.toMap())
                }
                map["PathParameter"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("PathParameter") && dict["PathParameter"] != nil {
                var tmp : [DescribeHistoryApiResponseBody.PathParameters.PathParameter] = []
                for v in dict["PathParameter"] as! [Any] {
                    var model = DescribeHistoryApiResponseBody.PathParameters.PathParameter()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.pathParameter = tmp
            }
        }
    }
    public class RequestBody : Tea.TeaModel {
        public class RequestParam : Tea.TeaModel {
            public var apiParameterName: String?

            public var defaultValue: String?

            public var demoValue: String?

            public var description_: String?

            public var docOrder: String?

            public var docShow: String?

            public var enumValue: String?

            public var jsonScheme: String?

            public var maxLength: Int64?

            public var maxValue: Int64?

            public var minLength: Int64?

            public var minValue: Int64?

            public var parameterType: String?

            public var regularExpression: String?

            public var required_: String?

            public var serviceParameterName: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.apiParameterName != nil {
                    map["ApiParameterName"] = self.apiParameterName!
                }
                if self.defaultValue != nil {
                    map["DefaultValue"] = self.defaultValue!
                }
                if self.demoValue != nil {
                    map["DemoValue"] = self.demoValue!
                }
                if self.description_ != nil {
                    map["Description"] = self.description_!
                }
                if self.docOrder != nil {
                    map["DocOrder"] = self.docOrder!
                }
                if self.docShow != nil {
                    map["DocShow"] = self.docShow!
                }
                if self.enumValue != nil {
                    map["EnumValue"] = self.enumValue!
                }
                if self.jsonScheme != nil {
                    map["JsonScheme"] = self.jsonScheme!
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
                if self.parameterType != nil {
                    map["ParameterType"] = self.parameterType!
                }
                if self.regularExpression != nil {
                    map["RegularExpression"] = self.regularExpression!
                }
                if self.required_ != nil {
                    map["Required"] = self.required_!
                }
                if self.serviceParameterName != nil {
                    map["ServiceParameterName"] = self.serviceParameterName!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("ApiParameterName") && dict["ApiParameterName"] != nil {
                    self.apiParameterName = dict["ApiParameterName"] as! String
                }
                if dict.keys.contains("DefaultValue") && dict["DefaultValue"] != nil {
                    self.defaultValue = dict["DefaultValue"] as! String
                }
                if dict.keys.contains("DemoValue") && dict["DemoValue"] != nil {
                    self.demoValue = dict["DemoValue"] as! String
                }
                if dict.keys.contains("Description") && dict["Description"] != nil {
                    self.description_ = dict["Description"] as! String
                }
                if dict.keys.contains("DocOrder") && dict["DocOrder"] != nil {
                    self.docOrder = dict["DocOrder"] as! String
                }
                if dict.keys.contains("DocShow") && dict["DocShow"] != nil {
                    self.docShow = dict["DocShow"] as! String
                }
                if dict.keys.contains("EnumValue") && dict["EnumValue"] != nil {
                    self.enumValue = dict["EnumValue"] as! String
                }
                if dict.keys.contains("JsonScheme") && dict["JsonScheme"] != nil {
                    self.jsonScheme = dict["JsonScheme"] as! String
                }
                if dict.keys.contains("MaxLength") && dict["MaxLength"] != nil {
                    self.maxLength = dict["MaxLength"] as! Int64
                }
                if dict.keys.contains("MaxValue") && dict["MaxValue"] != nil {
                    self.maxValue = dict["MaxValue"] as! Int64
                }
                if dict.keys.contains("MinLength") && dict["MinLength"] != nil {
                    self.minLength = dict["MinLength"] as! Int64
                }
                if dict.keys.contains("MinValue") && dict["MinValue"] != nil {
                    self.minValue = dict["MinValue"] as! Int64
                }
                if dict.keys.contains("ParameterType") && dict["ParameterType"] != nil {
                    self.parameterType = dict["ParameterType"] as! String
                }
                if dict.keys.contains("RegularExpression") && dict["RegularExpression"] != nil {
                    self.regularExpression = dict["RegularExpression"] as! String
                }
                if dict.keys.contains("Required") && dict["Required"] != nil {
                    self.required_ = dict["Required"] as! String
                }
                if dict.keys.contains("ServiceParameterName") && dict["ServiceParameterName"] != nil {
                    self.serviceParameterName = dict["ServiceParameterName"] as! String
                }
            }
        }
        public var requestParam: [DescribeHistoryApiResponseBody.RequestBody.RequestParam]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.requestParam != nil {
                var tmp : [Any] = []
                for k in self.requestParam! {
                    tmp.append(k.toMap())
                }
                map["RequestParam"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("RequestParam") && dict["RequestParam"] != nil {
                var tmp : [DescribeHistoryApiResponseBody.RequestBody.RequestParam] = []
                for v in dict["RequestParam"] as! [Any] {
                    var model = DescribeHistoryApiResponseBody.RequestBody.RequestParam()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.requestParam = tmp
            }
        }
    }
    public class RequestHeaders : Tea.TeaModel {
        public class RequestParam : Tea.TeaModel {
            public var apiParameterName: String?

            public var defaultValue: String?

            public var demoValue: String?

            public var description_: String?

            public var docOrder: String?

            public var docShow: String?

            public var enumValue: String?

            public var jsonScheme: String?

            public var maxLength: Int64?

            public var maxValue: Int64?

            public var minLength: Int64?

            public var minValue: Int64?

            public var parameterType: String?

            public var regularExpression: String?

            public var required_: String?

            public var serviceParameterName: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.apiParameterName != nil {
                    map["ApiParameterName"] = self.apiParameterName!
                }
                if self.defaultValue != nil {
                    map["DefaultValue"] = self.defaultValue!
                }
                if self.demoValue != nil {
                    map["DemoValue"] = self.demoValue!
                }
                if self.description_ != nil {
                    map["Description"] = self.description_!
                }
                if self.docOrder != nil {
                    map["DocOrder"] = self.docOrder!
                }
                if self.docShow != nil {
                    map["DocShow"] = self.docShow!
                }
                if self.enumValue != nil {
                    map["EnumValue"] = self.enumValue!
                }
                if self.jsonScheme != nil {
                    map["JsonScheme"] = self.jsonScheme!
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
                if self.parameterType != nil {
                    map["ParameterType"] = self.parameterType!
                }
                if self.regularExpression != nil {
                    map["RegularExpression"] = self.regularExpression!
                }
                if self.required_ != nil {
                    map["Required"] = self.required_!
                }
                if self.serviceParameterName != nil {
                    map["ServiceParameterName"] = self.serviceParameterName!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("ApiParameterName") && dict["ApiParameterName"] != nil {
                    self.apiParameterName = dict["ApiParameterName"] as! String
                }
                if dict.keys.contains("DefaultValue") && dict["DefaultValue"] != nil {
                    self.defaultValue = dict["DefaultValue"] as! String
                }
                if dict.keys.contains("DemoValue") && dict["DemoValue"] != nil {
                    self.demoValue = dict["DemoValue"] as! String
                }
                if dict.keys.contains("Description") && dict["Description"] != nil {
                    self.description_ = dict["Description"] as! String
                }
                if dict.keys.contains("DocOrder") && dict["DocOrder"] != nil {
                    self.docOrder = dict["DocOrder"] as! String
                }
                if dict.keys.contains("DocShow") && dict["DocShow"] != nil {
                    self.docShow = dict["DocShow"] as! String
                }
                if dict.keys.contains("EnumValue") && dict["EnumValue"] != nil {
                    self.enumValue = dict["EnumValue"] as! String
                }
                if dict.keys.contains("JsonScheme") && dict["JsonScheme"] != nil {
                    self.jsonScheme = dict["JsonScheme"] as! String
                }
                if dict.keys.contains("MaxLength") && dict["MaxLength"] != nil {
                    self.maxLength = dict["MaxLength"] as! Int64
                }
                if dict.keys.contains("MaxValue") && dict["MaxValue"] != nil {
                    self.maxValue = dict["MaxValue"] as! Int64
                }
                if dict.keys.contains("MinLength") && dict["MinLength"] != nil {
                    self.minLength = dict["MinLength"] as! Int64
                }
                if dict.keys.contains("MinValue") && dict["MinValue"] != nil {
                    self.minValue = dict["MinValue"] as! Int64
                }
                if dict.keys.contains("ParameterType") && dict["ParameterType"] != nil {
                    self.parameterType = dict["ParameterType"] as! String
                }
                if dict.keys.contains("RegularExpression") && dict["RegularExpression"] != nil {
                    self.regularExpression = dict["RegularExpression"] as! String
                }
                if dict.keys.contains("Required") && dict["Required"] != nil {
                    self.required_ = dict["Required"] as! String
                }
                if dict.keys.contains("ServiceParameterName") && dict["ServiceParameterName"] != nil {
                    self.serviceParameterName = dict["ServiceParameterName"] as! String
                }
            }
        }
        public var requestParam: [DescribeHistoryApiResponseBody.RequestHeaders.RequestParam]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.requestParam != nil {
                var tmp : [Any] = []
                for k in self.requestParam! {
                    tmp.append(k.toMap())
                }
                map["RequestParam"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("RequestParam") && dict["RequestParam"] != nil {
                var tmp : [DescribeHistoryApiResponseBody.RequestHeaders.RequestParam] = []
                for v in dict["RequestParam"] as! [Any] {
                    var model = DescribeHistoryApiResponseBody.RequestHeaders.RequestParam()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.requestParam = tmp
            }
        }
    }
    public class RequestQueries : Tea.TeaModel {
        public class RequestParam : Tea.TeaModel {
            public var apiParameterName: String?

            public var defaultValue: String?

            public var demoValue: String?

            public var description_: String?

            public var docOrder: String?

            public var docShow: String?

            public var enumValue: String?

            public var jsonScheme: String?

            public var maxLength: Int64?

            public var maxValue: Int64?

            public var minLength: Int64?

            public var minValue: Int64?

            public var parameterType: String?

            public var regularExpression: String?

            public var required_: String?

            public var serviceParameterName: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.apiParameterName != nil {
                    map["ApiParameterName"] = self.apiParameterName!
                }
                if self.defaultValue != nil {
                    map["DefaultValue"] = self.defaultValue!
                }
                if self.demoValue != nil {
                    map["DemoValue"] = self.demoValue!
                }
                if self.description_ != nil {
                    map["Description"] = self.description_!
                }
                if self.docOrder != nil {
                    map["DocOrder"] = self.docOrder!
                }
                if self.docShow != nil {
                    map["DocShow"] = self.docShow!
                }
                if self.enumValue != nil {
                    map["EnumValue"] = self.enumValue!
                }
                if self.jsonScheme != nil {
                    map["JsonScheme"] = self.jsonScheme!
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
                if self.parameterType != nil {
                    map["ParameterType"] = self.parameterType!
                }
                if self.regularExpression != nil {
                    map["RegularExpression"] = self.regularExpression!
                }
                if self.required_ != nil {
                    map["Required"] = self.required_!
                }
                if self.serviceParameterName != nil {
                    map["ServiceParameterName"] = self.serviceParameterName!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("ApiParameterName") && dict["ApiParameterName"] != nil {
                    self.apiParameterName = dict["ApiParameterName"] as! String
                }
                if dict.keys.contains("DefaultValue") && dict["DefaultValue"] != nil {
                    self.defaultValue = dict["DefaultValue"] as! String
                }
                if dict.keys.contains("DemoValue") && dict["DemoValue"] != nil {
                    self.demoValue = dict["DemoValue"] as! String
                }
                if dict.keys.contains("Description") && dict["Description"] != nil {
                    self.description_ = dict["Description"] as! String
                }
                if dict.keys.contains("DocOrder") && dict["DocOrder"] != nil {
                    self.docOrder = dict["DocOrder"] as! String
                }
                if dict.keys.contains("DocShow") && dict["DocShow"] != nil {
                    self.docShow = dict["DocShow"] as! String
                }
                if dict.keys.contains("EnumValue") && dict["EnumValue"] != nil {
                    self.enumValue = dict["EnumValue"] as! String
                }
                if dict.keys.contains("JsonScheme") && dict["JsonScheme"] != nil {
                    self.jsonScheme = dict["JsonScheme"] as! String
                }
                if dict.keys.contains("MaxLength") && dict["MaxLength"] != nil {
                    self.maxLength = dict["MaxLength"] as! Int64
                }
                if dict.keys.contains("MaxValue") && dict["MaxValue"] != nil {
                    self.maxValue = dict["MaxValue"] as! Int64
                }
                if dict.keys.contains("MinLength") && dict["MinLength"] != nil {
                    self.minLength = dict["MinLength"] as! Int64
                }
                if dict.keys.contains("MinValue") && dict["MinValue"] != nil {
                    self.minValue = dict["MinValue"] as! Int64
                }
                if dict.keys.contains("ParameterType") && dict["ParameterType"] != nil {
                    self.parameterType = dict["ParameterType"] as! String
                }
                if dict.keys.contains("RegularExpression") && dict["RegularExpression"] != nil {
                    self.regularExpression = dict["RegularExpression"] as! String
                }
                if dict.keys.contains("Required") && dict["Required"] != nil {
                    self.required_ = dict["Required"] as! String
                }
                if dict.keys.contains("ServiceParameterName") && dict["ServiceParameterName"] != nil {
                    self.serviceParameterName = dict["ServiceParameterName"] as! String
                }
            }
        }
        public var requestParam: [DescribeHistoryApiResponseBody.RequestQueries.RequestParam]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.requestParam != nil {
                var tmp : [Any] = []
                for k in self.requestParam! {
                    tmp.append(k.toMap())
                }
                map["RequestParam"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("RequestParam") && dict["RequestParam"] != nil {
                var tmp : [DescribeHistoryApiResponseBody.RequestQueries.RequestParam] = []
                for v in dict["RequestParam"] as! [Any] {
                    var model = DescribeHistoryApiResponseBody.RequestQueries.RequestParam()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.requestParam = tmp
            }
        }
    }
    public class SystemParameters : Tea.TeaModel {
        public class SystemParameter : Tea.TeaModel {
            public var demoValue: String?

            public var description_: String?

            public var location: String?

            public var parameterName: String?

            public var serviceParameterName: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.demoValue != nil {
                    map["DemoValue"] = self.demoValue!
                }
                if self.description_ != nil {
                    map["Description"] = self.description_!
                }
                if self.location != nil {
                    map["Location"] = self.location!
                }
                if self.parameterName != nil {
                    map["ParameterName"] = self.parameterName!
                }
                if self.serviceParameterName != nil {
                    map["ServiceParameterName"] = self.serviceParameterName!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("DemoValue") && dict["DemoValue"] != nil {
                    self.demoValue = dict["DemoValue"] as! String
                }
                if dict.keys.contains("Description") && dict["Description"] != nil {
                    self.description_ = dict["Description"] as! String
                }
                if dict.keys.contains("Location") && dict["Location"] != nil {
                    self.location = dict["Location"] as! String
                }
                if dict.keys.contains("ParameterName") && dict["ParameterName"] != nil {
                    self.parameterName = dict["ParameterName"] as! String
                }
                if dict.keys.contains("ServiceParameterName") && dict["ServiceParameterName"] != nil {
                    self.serviceParameterName = dict["ServiceParameterName"] as! String
                }
            }
        }
        public var systemParameter: [DescribeHistoryApiResponseBody.SystemParameters.SystemParameter]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.systemParameter != nil {
                var tmp : [Any] = []
                for k in self.systemParameter! {
                    tmp.append(k.toMap())
                }
                map["SystemParameter"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("SystemParameter") && dict["SystemParameter"] != nil {
                var tmp : [DescribeHistoryApiResponseBody.SystemParameters.SystemParameter] = []
                for v in dict["SystemParameter"] as! [Any] {
                    var model = DescribeHistoryApiResponseBody.SystemParameters.SystemParameter()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.systemParameter = tmp
            }
        }
    }
    public var apiId: String?

    public var apiName: String?

    public var authType: String?

    public var bodyFormat: String?

    public var constantParameters: DescribeHistoryApiResponseBody.ConstantParameters?

    public var deployedTime: String?

    public var description_: String?

    public var errorCodeSamples: DescribeHistoryApiResponseBody.ErrorCodeSamples?

    public var functionComputeConfig: DescribeHistoryApiResponseBody.FunctionComputeConfig?

    public var groupId: String?

    public var groupName: String?

    public var historyVersion: String?

    public var httpMethod: String?

    public var httpProtocol: String?

    public var mock: String?

    public var mockResult: String?

    public var originResultDescription: String?

    public var path: String?

    public var pathParameters: DescribeHistoryApiResponseBody.PathParameters?

    public var postBodyDescription: String?

    public var postBodyType: String?

    public var regionId: String?

    public var requestBody: DescribeHistoryApiResponseBody.RequestBody?

    public var requestHeaders: DescribeHistoryApiResponseBody.RequestHeaders?

    public var requestId: String?

    public var requestQueries: DescribeHistoryApiResponseBody.RequestQueries?

    public var resultSample: String?

    public var resultType: String?

    public var serviceAddress: String?

    public var serviceFCEnable: String?

    public var serviceProtocol: String?

    public var serviceTimeout: Int32?

    public var serviceVpcEnable: String?

    public var status: String?

    public var systemParameters: DescribeHistoryApiResponseBody.SystemParameters?

    public var visibility: String?

    public var vpcName: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.constantParameters?.validate()
        try self.errorCodeSamples?.validate()
        try self.functionComputeConfig?.validate()
        try self.pathParameters?.validate()
        try self.requestBody?.validate()
        try self.requestHeaders?.validate()
        try self.requestQueries?.validate()
        try self.systemParameters?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.apiId != nil {
            map["ApiId"] = self.apiId!
        }
        if self.apiName != nil {
            map["ApiName"] = self.apiName!
        }
        if self.authType != nil {
            map["AuthType"] = self.authType!
        }
        if self.bodyFormat != nil {
            map["BodyFormat"] = self.bodyFormat!
        }
        if self.constantParameters != nil {
            map["ConstantParameters"] = self.constantParameters?.toMap()
        }
        if self.deployedTime != nil {
            map["DeployedTime"] = self.deployedTime!
        }
        if self.description_ != nil {
            map["Description"] = self.description_!
        }
        if self.errorCodeSamples != nil {
            map["ErrorCodeSamples"] = self.errorCodeSamples?.toMap()
        }
        if self.functionComputeConfig != nil {
            map["FunctionComputeConfig"] = self.functionComputeConfig?.toMap()
        }
        if self.groupId != nil {
            map["GroupId"] = self.groupId!
        }
        if self.groupName != nil {
            map["GroupName"] = self.groupName!
        }
        if self.historyVersion != nil {
            map["HistoryVersion"] = self.historyVersion!
        }
        if self.httpMethod != nil {
            map["HttpMethod"] = self.httpMethod!
        }
        if self.httpProtocol != nil {
            map["HttpProtocol"] = self.httpProtocol!
        }
        if self.mock != nil {
            map["Mock"] = self.mock!
        }
        if self.mockResult != nil {
            map["MockResult"] = self.mockResult!
        }
        if self.originResultDescription != nil {
            map["OriginResultDescription"] = self.originResultDescription!
        }
        if self.path != nil {
            map["Path"] = self.path!
        }
        if self.pathParameters != nil {
            map["PathParameters"] = self.pathParameters?.toMap()
        }
        if self.postBodyDescription != nil {
            map["PostBodyDescription"] = self.postBodyDescription!
        }
        if self.postBodyType != nil {
            map["PostBodyType"] = self.postBodyType!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.requestBody != nil {
            map["RequestBody"] = self.requestBody?.toMap()
        }
        if self.requestHeaders != nil {
            map["RequestHeaders"] = self.requestHeaders?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.requestQueries != nil {
            map["RequestQueries"] = self.requestQueries?.toMap()
        }
        if self.resultSample != nil {
            map["ResultSample"] = self.resultSample!
        }
        if self.resultType != nil {
            map["ResultType"] = self.resultType!
        }
        if self.serviceAddress != nil {
            map["ServiceAddress"] = self.serviceAddress!
        }
        if self.serviceFCEnable != nil {
            map["ServiceFCEnable"] = self.serviceFCEnable!
        }
        if self.serviceProtocol != nil {
            map["ServiceProtocol"] = self.serviceProtocol!
        }
        if self.serviceTimeout != nil {
            map["ServiceTimeout"] = self.serviceTimeout!
        }
        if self.serviceVpcEnable != nil {
            map["ServiceVpcEnable"] = self.serviceVpcEnable!
        }
        if self.status != nil {
            map["Status"] = self.status!
        }
        if self.systemParameters != nil {
            map["SystemParameters"] = self.systemParameters?.toMap()
        }
        if self.visibility != nil {
            map["Visibility"] = self.visibility!
        }
        if self.vpcName != nil {
            map["VpcName"] = self.vpcName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ApiId") && dict["ApiId"] != nil {
            self.apiId = dict["ApiId"] as! String
        }
        if dict.keys.contains("ApiName") && dict["ApiName"] != nil {
            self.apiName = dict["ApiName"] as! String
        }
        if dict.keys.contains("AuthType") && dict["AuthType"] != nil {
            self.authType = dict["AuthType"] as! String
        }
        if dict.keys.contains("BodyFormat") && dict["BodyFormat"] != nil {
            self.bodyFormat = dict["BodyFormat"] as! String
        }
        if dict.keys.contains("ConstantParameters") && dict["ConstantParameters"] != nil {
            var model = DescribeHistoryApiResponseBody.ConstantParameters()
            model.fromMap(dict["ConstantParameters"] as! [String: Any])
            self.constantParameters = model
        }
        if dict.keys.contains("DeployedTime") && dict["DeployedTime"] != nil {
            self.deployedTime = dict["DeployedTime"] as! String
        }
        if dict.keys.contains("Description") && dict["Description"] != nil {
            self.description_ = dict["Description"] as! String
        }
        if dict.keys.contains("ErrorCodeSamples") && dict["ErrorCodeSamples"] != nil {
            var model = DescribeHistoryApiResponseBody.ErrorCodeSamples()
            model.fromMap(dict["ErrorCodeSamples"] as! [String: Any])
            self.errorCodeSamples = model
        }
        if dict.keys.contains("FunctionComputeConfig") && dict["FunctionComputeConfig"] != nil {
            var model = DescribeHistoryApiResponseBody.FunctionComputeConfig()
            model.fromMap(dict["FunctionComputeConfig"] as! [String: Any])
            self.functionComputeConfig = model
        }
        if dict.keys.contains("GroupId") && dict["GroupId"] != nil {
            self.groupId = dict["GroupId"] as! String
        }
        if dict.keys.contains("GroupName") && dict["GroupName"] != nil {
            self.groupName = dict["GroupName"] as! String
        }
        if dict.keys.contains("HistoryVersion") && dict["HistoryVersion"] != nil {
            self.historyVersion = dict["HistoryVersion"] as! String
        }
        if dict.keys.contains("HttpMethod") && dict["HttpMethod"] != nil {
            self.httpMethod = dict["HttpMethod"] as! String
        }
        if dict.keys.contains("HttpProtocol") && dict["HttpProtocol"] != nil {
            self.httpProtocol = dict["HttpProtocol"] as! String
        }
        if dict.keys.contains("Mock") && dict["Mock"] != nil {
            self.mock = dict["Mock"] as! String
        }
        if dict.keys.contains("MockResult") && dict["MockResult"] != nil {
            self.mockResult = dict["MockResult"] as! String
        }
        if dict.keys.contains("OriginResultDescription") && dict["OriginResultDescription"] != nil {
            self.originResultDescription = dict["OriginResultDescription"] as! String
        }
        if dict.keys.contains("Path") && dict["Path"] != nil {
            self.path = dict["Path"] as! String
        }
        if dict.keys.contains("PathParameters") && dict["PathParameters"] != nil {
            var model = DescribeHistoryApiResponseBody.PathParameters()
            model.fromMap(dict["PathParameters"] as! [String: Any])
            self.pathParameters = model
        }
        if dict.keys.contains("PostBodyDescription") && dict["PostBodyDescription"] != nil {
            self.postBodyDescription = dict["PostBodyDescription"] as! String
        }
        if dict.keys.contains("PostBodyType") && dict["PostBodyType"] != nil {
            self.postBodyType = dict["PostBodyType"] as! String
        }
        if dict.keys.contains("RegionId") && dict["RegionId"] != nil {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("RequestBody") && dict["RequestBody"] != nil {
            var model = DescribeHistoryApiResponseBody.RequestBody()
            model.fromMap(dict["RequestBody"] as! [String: Any])
            self.requestBody = model
        }
        if dict.keys.contains("RequestHeaders") && dict["RequestHeaders"] != nil {
            var model = DescribeHistoryApiResponseBody.RequestHeaders()
            model.fromMap(dict["RequestHeaders"] as! [String: Any])
            self.requestHeaders = model
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("RequestQueries") && dict["RequestQueries"] != nil {
            var model = DescribeHistoryApiResponseBody.RequestQueries()
            model.fromMap(dict["RequestQueries"] as! [String: Any])
            self.requestQueries = model
        }
        if dict.keys.contains("ResultSample") && dict["ResultSample"] != nil {
            self.resultSample = dict["ResultSample"] as! String
        }
        if dict.keys.contains("ResultType") && dict["ResultType"] != nil {
            self.resultType = dict["ResultType"] as! String
        }
        if dict.keys.contains("ServiceAddress") && dict["ServiceAddress"] != nil {
            self.serviceAddress = dict["ServiceAddress"] as! String
        }
        if dict.keys.contains("ServiceFCEnable") && dict["ServiceFCEnable"] != nil {
            self.serviceFCEnable = dict["ServiceFCEnable"] as! String
        }
        if dict.keys.contains("ServiceProtocol") && dict["ServiceProtocol"] != nil {
            self.serviceProtocol = dict["ServiceProtocol"] as! String
        }
        if dict.keys.contains("ServiceTimeout") && dict["ServiceTimeout"] != nil {
            self.serviceTimeout = dict["ServiceTimeout"] as! Int32
        }
        if dict.keys.contains("ServiceVpcEnable") && dict["ServiceVpcEnable"] != nil {
            self.serviceVpcEnable = dict["ServiceVpcEnable"] as! String
        }
        if dict.keys.contains("Status") && dict["Status"] != nil {
            self.status = dict["Status"] as! String
        }
        if dict.keys.contains("SystemParameters") && dict["SystemParameters"] != nil {
            var model = DescribeHistoryApiResponseBody.SystemParameters()
            model.fromMap(dict["SystemParameters"] as! [String: Any])
            self.systemParameters = model
        }
        if dict.keys.contains("Visibility") && dict["Visibility"] != nil {
            self.visibility = dict["Visibility"] as! String
        }
        if dict.keys.contains("VpcName") && dict["VpcName"] != nil {
            self.vpcName = dict["VpcName"] as! String
        }
    }
}

public class DescribeHistoryApiResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeHistoryApiResponseBody?

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
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = DescribeHistoryApiResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeHistoryApisRequest : Tea.TeaModel {
    public var apiId: String?

    public var apiName: String?

    public var groupId: String?

    public var pageNumber: Int32?

    public var pageSize: Int32?

    public var stageName: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.apiId != nil {
            map["ApiId"] = self.apiId!
        }
        if self.apiName != nil {
            map["ApiName"] = self.apiName!
        }
        if self.groupId != nil {
            map["GroupId"] = self.groupId!
        }
        if self.pageNumber != nil {
            map["PageNumber"] = self.pageNumber!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.stageName != nil {
            map["StageName"] = self.stageName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ApiId") && dict["ApiId"] != nil {
            self.apiId = dict["ApiId"] as! String
        }
        if dict.keys.contains("ApiName") && dict["ApiName"] != nil {
            self.apiName = dict["ApiName"] as! String
        }
        if dict.keys.contains("GroupId") && dict["GroupId"] != nil {
            self.groupId = dict["GroupId"] as! String
        }
        if dict.keys.contains("PageNumber") && dict["PageNumber"] != nil {
            self.pageNumber = dict["PageNumber"] as! Int32
        }
        if dict.keys.contains("PageSize") && dict["PageSize"] != nil {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("StageName") && dict["StageName"] != nil {
            self.stageName = dict["StageName"] as! String
        }
    }
}

public class DescribeHistoryApisResponseBody : Tea.TeaModel {
    public class ApiInfos : Tea.TeaModel {
        public class ApiInfo : Tea.TeaModel {
            public var apiId: String?

            public var apiName: String?

            public var deployedTime: String?

            public var description_: String?

            public var groupId: String?

            public var groupName: String?

            public var historyVersion: String?

            public var regionId: String?

            public var stageName: String?

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
                if self.apiId != nil {
                    map["ApiId"] = self.apiId!
                }
                if self.apiName != nil {
                    map["ApiName"] = self.apiName!
                }
                if self.deployedTime != nil {
                    map["DeployedTime"] = self.deployedTime!
                }
                if self.description_ != nil {
                    map["Description"] = self.description_!
                }
                if self.groupId != nil {
                    map["GroupId"] = self.groupId!
                }
                if self.groupName != nil {
                    map["GroupName"] = self.groupName!
                }
                if self.historyVersion != nil {
                    map["HistoryVersion"] = self.historyVersion!
                }
                if self.regionId != nil {
                    map["RegionId"] = self.regionId!
                }
                if self.stageName != nil {
                    map["StageName"] = self.stageName!
                }
                if self.status != nil {
                    map["Status"] = self.status!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("ApiId") && dict["ApiId"] != nil {
                    self.apiId = dict["ApiId"] as! String
                }
                if dict.keys.contains("ApiName") && dict["ApiName"] != nil {
                    self.apiName = dict["ApiName"] as! String
                }
                if dict.keys.contains("DeployedTime") && dict["DeployedTime"] != nil {
                    self.deployedTime = dict["DeployedTime"] as! String
                }
                if dict.keys.contains("Description") && dict["Description"] != nil {
                    self.description_ = dict["Description"] as! String
                }
                if dict.keys.contains("GroupId") && dict["GroupId"] != nil {
                    self.groupId = dict["GroupId"] as! String
                }
                if dict.keys.contains("GroupName") && dict["GroupName"] != nil {
                    self.groupName = dict["GroupName"] as! String
                }
                if dict.keys.contains("HistoryVersion") && dict["HistoryVersion"] != nil {
                    self.historyVersion = dict["HistoryVersion"] as! String
                }
                if dict.keys.contains("RegionId") && dict["RegionId"] != nil {
                    self.regionId = dict["RegionId"] as! String
                }
                if dict.keys.contains("StageName") && dict["StageName"] != nil {
                    self.stageName = dict["StageName"] as! String
                }
                if dict.keys.contains("Status") && dict["Status"] != nil {
                    self.status = dict["Status"] as! String
                }
            }
        }
        public var apiInfo: [DescribeHistoryApisResponseBody.ApiInfos.ApiInfo]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.apiInfo != nil {
                var tmp : [Any] = []
                for k in self.apiInfo! {
                    tmp.append(k.toMap())
                }
                map["ApiInfo"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("ApiInfo") && dict["ApiInfo"] != nil {
                var tmp : [DescribeHistoryApisResponseBody.ApiInfos.ApiInfo] = []
                for v in dict["ApiInfo"] as! [Any] {
                    var model = DescribeHistoryApisResponseBody.ApiInfos.ApiInfo()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.apiInfo = tmp
            }
        }
    }
    public var apiInfos: DescribeHistoryApisResponseBody.ApiInfos?

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
        try self.apiInfos?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.apiInfos != nil {
            map["ApiInfos"] = self.apiInfos?.toMap()
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
        if dict.keys.contains("ApiInfos") && dict["ApiInfos"] != nil {
            var model = DescribeHistoryApisResponseBody.ApiInfos()
            model.fromMap(dict["ApiInfos"] as! [String: Any])
            self.apiInfos = model
        }
        if dict.keys.contains("PageNumber") && dict["PageNumber"] != nil {
            self.pageNumber = dict["PageNumber"] as! Int32
        }
        if dict.keys.contains("PageSize") && dict["PageSize"] != nil {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("TotalCount") && dict["TotalCount"] != nil {
            self.totalCount = dict["TotalCount"] as! Int32
        }
    }
}

public class DescribeHistoryApisResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeHistoryApisResponseBody?

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
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = DescribeHistoryApisResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeModelsForInnerRequest : Tea.TeaModel {
    public var aliUid: Int64?

    public var groupId: String?

    public var modelId: String?

    public var modelName: String?

    public var pageNumber: Int32?

    public var pageSize: Int32?

    public override init() {
        super.init()
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
        if self.groupId != nil {
            map["GroupId"] = self.groupId!
        }
        if self.modelId != nil {
            map["ModelId"] = self.modelId!
        }
        if self.modelName != nil {
            map["ModelName"] = self.modelName!
        }
        if self.pageNumber != nil {
            map["PageNumber"] = self.pageNumber!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AliUid") && dict["AliUid"] != nil {
            self.aliUid = dict["AliUid"] as! Int64
        }
        if dict.keys.contains("GroupId") && dict["GroupId"] != nil {
            self.groupId = dict["GroupId"] as! String
        }
        if dict.keys.contains("ModelId") && dict["ModelId"] != nil {
            self.modelId = dict["ModelId"] as! String
        }
        if dict.keys.contains("ModelName") && dict["ModelName"] != nil {
            self.modelName = dict["ModelName"] as! String
        }
        if dict.keys.contains("PageNumber") && dict["PageNumber"] != nil {
            self.pageNumber = dict["PageNumber"] as! Int32
        }
        if dict.keys.contains("PageSize") && dict["PageSize"] != nil {
            self.pageSize = dict["PageSize"] as! Int32
        }
    }
}

public class DescribeModelsForInnerResponseBody : Tea.TeaModel {
    public class ModelDetails : Tea.TeaModel {
        public class ModelDetail : Tea.TeaModel {
            public var createdTime: String?

            public var description_: String?

            public var groupId: String?

            public var modelName: String?

            public var modelRef: String?

            public var modifiedTime: String?

            public var schema: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.createdTime != nil {
                    map["CreatedTime"] = self.createdTime!
                }
                if self.description_ != nil {
                    map["Description"] = self.description_!
                }
                if self.groupId != nil {
                    map["GroupId"] = self.groupId!
                }
                if self.modelName != nil {
                    map["ModelName"] = self.modelName!
                }
                if self.modelRef != nil {
                    map["ModelRef"] = self.modelRef!
                }
                if self.modifiedTime != nil {
                    map["ModifiedTime"] = self.modifiedTime!
                }
                if self.schema != nil {
                    map["Schema"] = self.schema!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("CreatedTime") && dict["CreatedTime"] != nil {
                    self.createdTime = dict["CreatedTime"] as! String
                }
                if dict.keys.contains("Description") && dict["Description"] != nil {
                    self.description_ = dict["Description"] as! String
                }
                if dict.keys.contains("GroupId") && dict["GroupId"] != nil {
                    self.groupId = dict["GroupId"] as! String
                }
                if dict.keys.contains("ModelName") && dict["ModelName"] != nil {
                    self.modelName = dict["ModelName"] as! String
                }
                if dict.keys.contains("ModelRef") && dict["ModelRef"] != nil {
                    self.modelRef = dict["ModelRef"] as! String
                }
                if dict.keys.contains("ModifiedTime") && dict["ModifiedTime"] != nil {
                    self.modifiedTime = dict["ModifiedTime"] as! String
                }
                if dict.keys.contains("Schema") && dict["Schema"] != nil {
                    self.schema = dict["Schema"] as! String
                }
            }
        }
        public var modelDetail: [DescribeModelsForInnerResponseBody.ModelDetails.ModelDetail]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.modelDetail != nil {
                var tmp : [Any] = []
                for k in self.modelDetail! {
                    tmp.append(k.toMap())
                }
                map["ModelDetail"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("ModelDetail") && dict["ModelDetail"] != nil {
                var tmp : [DescribeModelsForInnerResponseBody.ModelDetails.ModelDetail] = []
                for v in dict["ModelDetail"] as! [Any] {
                    var model = DescribeModelsForInnerResponseBody.ModelDetails.ModelDetail()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.modelDetail = tmp
            }
        }
    }
    public var modelDetails: DescribeModelsForInnerResponseBody.ModelDetails?

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
        try self.modelDetails?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.modelDetails != nil {
            map["ModelDetails"] = self.modelDetails?.toMap()
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
        if dict.keys.contains("ModelDetails") && dict["ModelDetails"] != nil {
            var model = DescribeModelsForInnerResponseBody.ModelDetails()
            model.fromMap(dict["ModelDetails"] as! [String: Any])
            self.modelDetails = model
        }
        if dict.keys.contains("PageNumber") && dict["PageNumber"] != nil {
            self.pageNumber = dict["PageNumber"] as! Int32
        }
        if dict.keys.contains("PageSize") && dict["PageSize"] != nil {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("TotalCount") && dict["TotalCount"] != nil {
            self.totalCount = dict["TotalCount"] as! Int32
        }
    }
}

public class DescribeModelsForInnerResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeModelsForInnerResponseBody?

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
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = DescribeModelsForInnerResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribePurchasedApiRequest : Tea.TeaModel {
    public var apiId: String?

    public var groupId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.apiId != nil {
            map["ApiId"] = self.apiId!
        }
        if self.groupId != nil {
            map["GroupId"] = self.groupId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ApiId") && dict["ApiId"] != nil {
            self.apiId = dict["ApiId"] as! String
        }
        if dict.keys.contains("GroupId") && dict["GroupId"] != nil {
            self.groupId = dict["GroupId"] as! String
        }
    }
}

public class DescribePurchasedApiResponseBody : Tea.TeaModel {
    public class PathParameters : Tea.TeaModel {
        public class PathParameter : Tea.TeaModel {
            public var apiParameterName: String?

            public var demoValue: String?

            public var description_: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.apiParameterName != nil {
                    map["ApiParameterName"] = self.apiParameterName!
                }
                if self.demoValue != nil {
                    map["DemoValue"] = self.demoValue!
                }
                if self.description_ != nil {
                    map["Description"] = self.description_!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("ApiParameterName") && dict["ApiParameterName"] != nil {
                    self.apiParameterName = dict["ApiParameterName"] as! String
                }
                if dict.keys.contains("DemoValue") && dict["DemoValue"] != nil {
                    self.demoValue = dict["DemoValue"] as! String
                }
                if dict.keys.contains("Description") && dict["Description"] != nil {
                    self.description_ = dict["Description"] as! String
                }
            }
        }
        public var pathParameter: [DescribePurchasedApiResponseBody.PathParameters.PathParameter]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.pathParameter != nil {
                var tmp : [Any] = []
                for k in self.pathParameter! {
                    tmp.append(k.toMap())
                }
                map["PathParameter"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("PathParameter") && dict["PathParameter"] != nil {
                var tmp : [DescribePurchasedApiResponseBody.PathParameters.PathParameter] = []
                for v in dict["PathParameter"] as! [Any] {
                    var model = DescribePurchasedApiResponseBody.PathParameters.PathParameter()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.pathParameter = tmp
            }
        }
    }
    public class RequestBody : Tea.TeaModel {
        public class RequestParam : Tea.TeaModel {
            public var apiParameterName: String?

            public var defaultValue: String?

            public var demoValue: String?

            public var description_: String?

            public var docOrder: String?

            public var docShow: String?

            public var enumValue: String?

            public var jsonScheme: String?

            public var maxLength: Int64?

            public var maxValue: String?

            public var minLength: Int64?

            public var minValue: String?

            public var parameterType: String?

            public var regularExpression: String?

            public var required_: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.apiParameterName != nil {
                    map["ApiParameterName"] = self.apiParameterName!
                }
                if self.defaultValue != nil {
                    map["DefaultValue"] = self.defaultValue!
                }
                if self.demoValue != nil {
                    map["DemoValue"] = self.demoValue!
                }
                if self.description_ != nil {
                    map["Description"] = self.description_!
                }
                if self.docOrder != nil {
                    map["DocOrder"] = self.docOrder!
                }
                if self.docShow != nil {
                    map["DocShow"] = self.docShow!
                }
                if self.enumValue != nil {
                    map["EnumValue"] = self.enumValue!
                }
                if self.jsonScheme != nil {
                    map["JsonScheme"] = self.jsonScheme!
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
                if self.parameterType != nil {
                    map["ParameterType"] = self.parameterType!
                }
                if self.regularExpression != nil {
                    map["RegularExpression"] = self.regularExpression!
                }
                if self.required_ != nil {
                    map["Required"] = self.required_!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("ApiParameterName") && dict["ApiParameterName"] != nil {
                    self.apiParameterName = dict["ApiParameterName"] as! String
                }
                if dict.keys.contains("DefaultValue") && dict["DefaultValue"] != nil {
                    self.defaultValue = dict["DefaultValue"] as! String
                }
                if dict.keys.contains("DemoValue") && dict["DemoValue"] != nil {
                    self.demoValue = dict["DemoValue"] as! String
                }
                if dict.keys.contains("Description") && dict["Description"] != nil {
                    self.description_ = dict["Description"] as! String
                }
                if dict.keys.contains("DocOrder") && dict["DocOrder"] != nil {
                    self.docOrder = dict["DocOrder"] as! String
                }
                if dict.keys.contains("DocShow") && dict["DocShow"] != nil {
                    self.docShow = dict["DocShow"] as! String
                }
                if dict.keys.contains("EnumValue") && dict["EnumValue"] != nil {
                    self.enumValue = dict["EnumValue"] as! String
                }
                if dict.keys.contains("JsonScheme") && dict["JsonScheme"] != nil {
                    self.jsonScheme = dict["JsonScheme"] as! String
                }
                if dict.keys.contains("MaxLength") && dict["MaxLength"] != nil {
                    self.maxLength = dict["MaxLength"] as! Int64
                }
                if dict.keys.contains("MaxValue") && dict["MaxValue"] != nil {
                    self.maxValue = dict["MaxValue"] as! String
                }
                if dict.keys.contains("MinLength") && dict["MinLength"] != nil {
                    self.minLength = dict["MinLength"] as! Int64
                }
                if dict.keys.contains("MinValue") && dict["MinValue"] != nil {
                    self.minValue = dict["MinValue"] as! String
                }
                if dict.keys.contains("ParameterType") && dict["ParameterType"] != nil {
                    self.parameterType = dict["ParameterType"] as! String
                }
                if dict.keys.contains("RegularExpression") && dict["RegularExpression"] != nil {
                    self.regularExpression = dict["RegularExpression"] as! String
                }
                if dict.keys.contains("Required") && dict["Required"] != nil {
                    self.required_ = dict["Required"] as! String
                }
            }
        }
        public var requestParam: [DescribePurchasedApiResponseBody.RequestBody.RequestParam]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.requestParam != nil {
                var tmp : [Any] = []
                for k in self.requestParam! {
                    tmp.append(k.toMap())
                }
                map["RequestParam"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("RequestParam") && dict["RequestParam"] != nil {
                var tmp : [DescribePurchasedApiResponseBody.RequestBody.RequestParam] = []
                for v in dict["RequestParam"] as! [Any] {
                    var model = DescribePurchasedApiResponseBody.RequestBody.RequestParam()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.requestParam = tmp
            }
        }
    }
    public class RequestHeaders : Tea.TeaModel {
        public class RequestParam : Tea.TeaModel {
            public var apiParameterName: String?

            public var defaultValue: String?

            public var demoValue: String?

            public var description_: String?

            public var docOrder: String?

            public var docShow: String?

            public var enumValue: String?

            public var jsonScheme: String?

            public var maxLength: Int64?

            public var maxValue: Int64?

            public var minLength: Int64?

            public var minValue: Int64?

            public var parameterType: String?

            public var regularExpression: String?

            public var required_: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.apiParameterName != nil {
                    map["ApiParameterName"] = self.apiParameterName!
                }
                if self.defaultValue != nil {
                    map["DefaultValue"] = self.defaultValue!
                }
                if self.demoValue != nil {
                    map["DemoValue"] = self.demoValue!
                }
                if self.description_ != nil {
                    map["Description"] = self.description_!
                }
                if self.docOrder != nil {
                    map["DocOrder"] = self.docOrder!
                }
                if self.docShow != nil {
                    map["DocShow"] = self.docShow!
                }
                if self.enumValue != nil {
                    map["EnumValue"] = self.enumValue!
                }
                if self.jsonScheme != nil {
                    map["JsonScheme"] = self.jsonScheme!
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
                if self.parameterType != nil {
                    map["ParameterType"] = self.parameterType!
                }
                if self.regularExpression != nil {
                    map["RegularExpression"] = self.regularExpression!
                }
                if self.required_ != nil {
                    map["Required"] = self.required_!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("ApiParameterName") && dict["ApiParameterName"] != nil {
                    self.apiParameterName = dict["ApiParameterName"] as! String
                }
                if dict.keys.contains("DefaultValue") && dict["DefaultValue"] != nil {
                    self.defaultValue = dict["DefaultValue"] as! String
                }
                if dict.keys.contains("DemoValue") && dict["DemoValue"] != nil {
                    self.demoValue = dict["DemoValue"] as! String
                }
                if dict.keys.contains("Description") && dict["Description"] != nil {
                    self.description_ = dict["Description"] as! String
                }
                if dict.keys.contains("DocOrder") && dict["DocOrder"] != nil {
                    self.docOrder = dict["DocOrder"] as! String
                }
                if dict.keys.contains("DocShow") && dict["DocShow"] != nil {
                    self.docShow = dict["DocShow"] as! String
                }
                if dict.keys.contains("EnumValue") && dict["EnumValue"] != nil {
                    self.enumValue = dict["EnumValue"] as! String
                }
                if dict.keys.contains("JsonScheme") && dict["JsonScheme"] != nil {
                    self.jsonScheme = dict["JsonScheme"] as! String
                }
                if dict.keys.contains("MaxLength") && dict["MaxLength"] != nil {
                    self.maxLength = dict["MaxLength"] as! Int64
                }
                if dict.keys.contains("MaxValue") && dict["MaxValue"] != nil {
                    self.maxValue = dict["MaxValue"] as! Int64
                }
                if dict.keys.contains("MinLength") && dict["MinLength"] != nil {
                    self.minLength = dict["MinLength"] as! Int64
                }
                if dict.keys.contains("MinValue") && dict["MinValue"] != nil {
                    self.minValue = dict["MinValue"] as! Int64
                }
                if dict.keys.contains("ParameterType") && dict["ParameterType"] != nil {
                    self.parameterType = dict["ParameterType"] as! String
                }
                if dict.keys.contains("RegularExpression") && dict["RegularExpression"] != nil {
                    self.regularExpression = dict["RegularExpression"] as! String
                }
                if dict.keys.contains("Required") && dict["Required"] != nil {
                    self.required_ = dict["Required"] as! String
                }
            }
        }
        public var requestParam: [DescribePurchasedApiResponseBody.RequestHeaders.RequestParam]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.requestParam != nil {
                var tmp : [Any] = []
                for k in self.requestParam! {
                    tmp.append(k.toMap())
                }
                map["RequestParam"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("RequestParam") && dict["RequestParam"] != nil {
                var tmp : [DescribePurchasedApiResponseBody.RequestHeaders.RequestParam] = []
                for v in dict["RequestParam"] as! [Any] {
                    var model = DescribePurchasedApiResponseBody.RequestHeaders.RequestParam()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.requestParam = tmp
            }
        }
    }
    public class RequestQueries : Tea.TeaModel {
        public class RequestParam : Tea.TeaModel {
            public var apiParameterName: String?

            public var defaultValue: String?

            public var demoValue: String?

            public var description_: String?

            public var docOrder: String?

            public var docShow: String?

            public var enumValue: String?

            public var jsonScheme: String?

            public var maxLength: Int64?

            public var maxValue: String?

            public var minLength: Int64?

            public var minValue: String?

            public var parameterType: String?

            public var regularExpression: String?

            public var required_: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.apiParameterName != nil {
                    map["ApiParameterName"] = self.apiParameterName!
                }
                if self.defaultValue != nil {
                    map["DefaultValue"] = self.defaultValue!
                }
                if self.demoValue != nil {
                    map["DemoValue"] = self.demoValue!
                }
                if self.description_ != nil {
                    map["Description"] = self.description_!
                }
                if self.docOrder != nil {
                    map["DocOrder"] = self.docOrder!
                }
                if self.docShow != nil {
                    map["DocShow"] = self.docShow!
                }
                if self.enumValue != nil {
                    map["EnumValue"] = self.enumValue!
                }
                if self.jsonScheme != nil {
                    map["JsonScheme"] = self.jsonScheme!
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
                if self.parameterType != nil {
                    map["ParameterType"] = self.parameterType!
                }
                if self.regularExpression != nil {
                    map["RegularExpression"] = self.regularExpression!
                }
                if self.required_ != nil {
                    map["Required"] = self.required_!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("ApiParameterName") && dict["ApiParameterName"] != nil {
                    self.apiParameterName = dict["ApiParameterName"] as! String
                }
                if dict.keys.contains("DefaultValue") && dict["DefaultValue"] != nil {
                    self.defaultValue = dict["DefaultValue"] as! String
                }
                if dict.keys.contains("DemoValue") && dict["DemoValue"] != nil {
                    self.demoValue = dict["DemoValue"] as! String
                }
                if dict.keys.contains("Description") && dict["Description"] != nil {
                    self.description_ = dict["Description"] as! String
                }
                if dict.keys.contains("DocOrder") && dict["DocOrder"] != nil {
                    self.docOrder = dict["DocOrder"] as! String
                }
                if dict.keys.contains("DocShow") && dict["DocShow"] != nil {
                    self.docShow = dict["DocShow"] as! String
                }
                if dict.keys.contains("EnumValue") && dict["EnumValue"] != nil {
                    self.enumValue = dict["EnumValue"] as! String
                }
                if dict.keys.contains("JsonScheme") && dict["JsonScheme"] != nil {
                    self.jsonScheme = dict["JsonScheme"] as! String
                }
                if dict.keys.contains("MaxLength") && dict["MaxLength"] != nil {
                    self.maxLength = dict["MaxLength"] as! Int64
                }
                if dict.keys.contains("MaxValue") && dict["MaxValue"] != nil {
                    self.maxValue = dict["MaxValue"] as! String
                }
                if dict.keys.contains("MinLength") && dict["MinLength"] != nil {
                    self.minLength = dict["MinLength"] as! Int64
                }
                if dict.keys.contains("MinValue") && dict["MinValue"] != nil {
                    self.minValue = dict["MinValue"] as! String
                }
                if dict.keys.contains("ParameterType") && dict["ParameterType"] != nil {
                    self.parameterType = dict["ParameterType"] as! String
                }
                if dict.keys.contains("RegularExpression") && dict["RegularExpression"] != nil {
                    self.regularExpression = dict["RegularExpression"] as! String
                }
                if dict.keys.contains("Required") && dict["Required"] != nil {
                    self.required_ = dict["Required"] as! String
                }
            }
        }
        public var requestParam: [DescribePurchasedApiResponseBody.RequestQueries.RequestParam]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.requestParam != nil {
                var tmp : [Any] = []
                for k in self.requestParam! {
                    tmp.append(k.toMap())
                }
                map["RequestParam"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("RequestParam") && dict["RequestParam"] != nil {
                var tmp : [DescribePurchasedApiResponseBody.RequestQueries.RequestParam] = []
                for v in dict["RequestParam"] as! [Any] {
                    var model = DescribePurchasedApiResponseBody.RequestQueries.RequestParam()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.requestParam = tmp
            }
        }
    }
    public var apiId: String?

    public var apiName: String?

    public var bodyFormat: String?

    public var createdTime: String?

    public var description_: String?

    public var groupId: String?

    public var groupName: String?

    public var httpMethod: String?

    public var httpProtocol: String?

    public var mock: String?

    public var mockResult: String?

    public var modifiedTime: String?

    public var path: String?

    public var pathParameters: DescribePurchasedApiResponseBody.PathParameters?

    public var postBodyDescription: String?

    public var postBodyType: String?

    public var regionId: String?

    public var requestBody: DescribePurchasedApiResponseBody.RequestBody?

    public var requestHeaders: DescribePurchasedApiResponseBody.RequestHeaders?

    public var requestId: String?

    public var requestQueries: DescribePurchasedApiResponseBody.RequestQueries?

    public var resultSample: String?

    public var resultType: String?

    public var visibility: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.pathParameters?.validate()
        try self.requestBody?.validate()
        try self.requestHeaders?.validate()
        try self.requestQueries?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.apiId != nil {
            map["ApiId"] = self.apiId!
        }
        if self.apiName != nil {
            map["ApiName"] = self.apiName!
        }
        if self.bodyFormat != nil {
            map["BodyFormat"] = self.bodyFormat!
        }
        if self.createdTime != nil {
            map["CreatedTime"] = self.createdTime!
        }
        if self.description_ != nil {
            map["Description"] = self.description_!
        }
        if self.groupId != nil {
            map["GroupId"] = self.groupId!
        }
        if self.groupName != nil {
            map["GroupName"] = self.groupName!
        }
        if self.httpMethod != nil {
            map["HttpMethod"] = self.httpMethod!
        }
        if self.httpProtocol != nil {
            map["HttpProtocol"] = self.httpProtocol!
        }
        if self.mock != nil {
            map["Mock"] = self.mock!
        }
        if self.mockResult != nil {
            map["MockResult"] = self.mockResult!
        }
        if self.modifiedTime != nil {
            map["ModifiedTime"] = self.modifiedTime!
        }
        if self.path != nil {
            map["Path"] = self.path!
        }
        if self.pathParameters != nil {
            map["PathParameters"] = self.pathParameters?.toMap()
        }
        if self.postBodyDescription != nil {
            map["PostBodyDescription"] = self.postBodyDescription!
        }
        if self.postBodyType != nil {
            map["PostBodyType"] = self.postBodyType!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.requestBody != nil {
            map["RequestBody"] = self.requestBody?.toMap()
        }
        if self.requestHeaders != nil {
            map["RequestHeaders"] = self.requestHeaders?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.requestQueries != nil {
            map["RequestQueries"] = self.requestQueries?.toMap()
        }
        if self.resultSample != nil {
            map["ResultSample"] = self.resultSample!
        }
        if self.resultType != nil {
            map["ResultType"] = self.resultType!
        }
        if self.visibility != nil {
            map["Visibility"] = self.visibility!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ApiId") && dict["ApiId"] != nil {
            self.apiId = dict["ApiId"] as! String
        }
        if dict.keys.contains("ApiName") && dict["ApiName"] != nil {
            self.apiName = dict["ApiName"] as! String
        }
        if dict.keys.contains("BodyFormat") && dict["BodyFormat"] != nil {
            self.bodyFormat = dict["BodyFormat"] as! String
        }
        if dict.keys.contains("CreatedTime") && dict["CreatedTime"] != nil {
            self.createdTime = dict["CreatedTime"] as! String
        }
        if dict.keys.contains("Description") && dict["Description"] != nil {
            self.description_ = dict["Description"] as! String
        }
        if dict.keys.contains("GroupId") && dict["GroupId"] != nil {
            self.groupId = dict["GroupId"] as! String
        }
        if dict.keys.contains("GroupName") && dict["GroupName"] != nil {
            self.groupName = dict["GroupName"] as! String
        }
        if dict.keys.contains("HttpMethod") && dict["HttpMethod"] != nil {
            self.httpMethod = dict["HttpMethod"] as! String
        }
        if dict.keys.contains("HttpProtocol") && dict["HttpProtocol"] != nil {
            self.httpProtocol = dict["HttpProtocol"] as! String
        }
        if dict.keys.contains("Mock") && dict["Mock"] != nil {
            self.mock = dict["Mock"] as! String
        }
        if dict.keys.contains("MockResult") && dict["MockResult"] != nil {
            self.mockResult = dict["MockResult"] as! String
        }
        if dict.keys.contains("ModifiedTime") && dict["ModifiedTime"] != nil {
            self.modifiedTime = dict["ModifiedTime"] as! String
        }
        if dict.keys.contains("Path") && dict["Path"] != nil {
            self.path = dict["Path"] as! String
        }
        if dict.keys.contains("PathParameters") && dict["PathParameters"] != nil {
            var model = DescribePurchasedApiResponseBody.PathParameters()
            model.fromMap(dict["PathParameters"] as! [String: Any])
            self.pathParameters = model
        }
        if dict.keys.contains("PostBodyDescription") && dict["PostBodyDescription"] != nil {
            self.postBodyDescription = dict["PostBodyDescription"] as! String
        }
        if dict.keys.contains("PostBodyType") && dict["PostBodyType"] != nil {
            self.postBodyType = dict["PostBodyType"] as! String
        }
        if dict.keys.contains("RegionId") && dict["RegionId"] != nil {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("RequestBody") && dict["RequestBody"] != nil {
            var model = DescribePurchasedApiResponseBody.RequestBody()
            model.fromMap(dict["RequestBody"] as! [String: Any])
            self.requestBody = model
        }
        if dict.keys.contains("RequestHeaders") && dict["RequestHeaders"] != nil {
            var model = DescribePurchasedApiResponseBody.RequestHeaders()
            model.fromMap(dict["RequestHeaders"] as! [String: Any])
            self.requestHeaders = model
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("RequestQueries") && dict["RequestQueries"] != nil {
            var model = DescribePurchasedApiResponseBody.RequestQueries()
            model.fromMap(dict["RequestQueries"] as! [String: Any])
            self.requestQueries = model
        }
        if dict.keys.contains("ResultSample") && dict["ResultSample"] != nil {
            self.resultSample = dict["ResultSample"] as! String
        }
        if dict.keys.contains("ResultType") && dict["ResultType"] != nil {
            self.resultType = dict["ResultType"] as! String
        }
        if dict.keys.contains("Visibility") && dict["Visibility"] != nil {
            self.visibility = dict["Visibility"] as! String
        }
    }
}

public class DescribePurchasedApiResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribePurchasedApiResponseBody?

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
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = DescribePurchasedApiResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribePurchasedApiGroupDetailRequest : Tea.TeaModel {
    public var groupId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.groupId != nil {
            map["GroupId"] = self.groupId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("GroupId") && dict["GroupId"] != nil {
            self.groupId = dict["GroupId"] as! String
        }
    }
}

public class DescribePurchasedApiGroupDetailResponseBody : Tea.TeaModel {
    public class DomainItems : Tea.TeaModel {
        public class DomainItem : Tea.TeaModel {
            public var domainName: String?

            public override init() {
                super.init()
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
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("DomainName") && dict["DomainName"] != nil {
                    self.domainName = dict["DomainName"] as! String
                }
            }
        }
        public var domainItem: [DescribePurchasedApiGroupDetailResponseBody.DomainItems.DomainItem]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.domainItem != nil {
                var tmp : [Any] = []
                for k in self.domainItem! {
                    tmp.append(k.toMap())
                }
                map["DomainItem"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("DomainItem") && dict["DomainItem"] != nil {
                var tmp : [DescribePurchasedApiGroupDetailResponseBody.DomainItems.DomainItem] = []
                for v in dict["DomainItem"] as! [Any] {
                    var model = DescribePurchasedApiGroupDetailResponseBody.DomainItems.DomainItem()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.domainItem = tmp
            }
        }
    }
    public var createdTime: String?

    public var description_: String?

    public var domainItems: DescribePurchasedApiGroupDetailResponseBody.DomainItems?

    public var groupId: String?

    public var groupName: String?

    public var modifiedTime: String?

    public var regionId: String?

    public var requestId: String?

    public var status: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.domainItems?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.createdTime != nil {
            map["CreatedTime"] = self.createdTime!
        }
        if self.description_ != nil {
            map["Description"] = self.description_!
        }
        if self.domainItems != nil {
            map["DomainItems"] = self.domainItems?.toMap()
        }
        if self.groupId != nil {
            map["GroupId"] = self.groupId!
        }
        if self.groupName != nil {
            map["GroupName"] = self.groupName!
        }
        if self.modifiedTime != nil {
            map["ModifiedTime"] = self.modifiedTime!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.status != nil {
            map["Status"] = self.status!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("CreatedTime") && dict["CreatedTime"] != nil {
            self.createdTime = dict["CreatedTime"] as! String
        }
        if dict.keys.contains("Description") && dict["Description"] != nil {
            self.description_ = dict["Description"] as! String
        }
        if dict.keys.contains("DomainItems") && dict["DomainItems"] != nil {
            var model = DescribePurchasedApiGroupDetailResponseBody.DomainItems()
            model.fromMap(dict["DomainItems"] as! [String: Any])
            self.domainItems = model
        }
        if dict.keys.contains("GroupId") && dict["GroupId"] != nil {
            self.groupId = dict["GroupId"] as! String
        }
        if dict.keys.contains("GroupName") && dict["GroupName"] != nil {
            self.groupName = dict["GroupName"] as! String
        }
        if dict.keys.contains("ModifiedTime") && dict["ModifiedTime"] != nil {
            self.modifiedTime = dict["ModifiedTime"] as! String
        }
        if dict.keys.contains("RegionId") && dict["RegionId"] != nil {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Status") && dict["Status"] != nil {
            self.status = dict["Status"] as! String
        }
    }
}

public class DescribePurchasedApiGroupDetailResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribePurchasedApiGroupDetailResponseBody?

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
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = DescribePurchasedApiGroupDetailResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribePurchasedApiGroupsRequest : Tea.TeaModel {
    public var groupIds: String?

    public var pageNumber: Int32?

    public var pageSize: Int32?

    public var securityToken: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.groupIds != nil {
            map["GroupIds"] = self.groupIds!
        }
        if self.pageNumber != nil {
            map["PageNumber"] = self.pageNumber!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.securityToken != nil {
            map["SecurityToken"] = self.securityToken!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("GroupIds") && dict["GroupIds"] != nil {
            self.groupIds = dict["GroupIds"] as! String
        }
        if dict.keys.contains("PageNumber") && dict["PageNumber"] != nil {
            self.pageNumber = dict["PageNumber"] as! Int32
        }
        if dict.keys.contains("PageSize") && dict["PageSize"] != nil {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("SecurityToken") && dict["SecurityToken"] != nil {
            self.securityToken = dict["SecurityToken"] as! String
        }
    }
}

public class DescribePurchasedApiGroupsResponseBody : Tea.TeaModel {
    public class PurchasedApiGroupAttributes : Tea.TeaModel {
        public class PurchasedApiGroupAttribute : Tea.TeaModel {
            public var billingType: String?

            public var createdTime: String?

            public var expireTime: String?

            public var groupDescription: String?

            public var groupId: String?

            public var groupName: String?

            public var invokeTimesMax: Int64?

            public var invokeTimesNow: Int64?

            public var modifiedTime: String?

            public var regionId: String?

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
                if self.billingType != nil {
                    map["BillingType"] = self.billingType!
                }
                if self.createdTime != nil {
                    map["CreatedTime"] = self.createdTime!
                }
                if self.expireTime != nil {
                    map["ExpireTime"] = self.expireTime!
                }
                if self.groupDescription != nil {
                    map["GroupDescription"] = self.groupDescription!
                }
                if self.groupId != nil {
                    map["GroupId"] = self.groupId!
                }
                if self.groupName != nil {
                    map["GroupName"] = self.groupName!
                }
                if self.invokeTimesMax != nil {
                    map["InvokeTimesMax"] = self.invokeTimesMax!
                }
                if self.invokeTimesNow != nil {
                    map["InvokeTimesNow"] = self.invokeTimesNow!
                }
                if self.modifiedTime != nil {
                    map["ModifiedTime"] = self.modifiedTime!
                }
                if self.regionId != nil {
                    map["RegionId"] = self.regionId!
                }
                if self.status != nil {
                    map["Status"] = self.status!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("BillingType") && dict["BillingType"] != nil {
                    self.billingType = dict["BillingType"] as! String
                }
                if dict.keys.contains("CreatedTime") && dict["CreatedTime"] != nil {
                    self.createdTime = dict["CreatedTime"] as! String
                }
                if dict.keys.contains("ExpireTime") && dict["ExpireTime"] != nil {
                    self.expireTime = dict["ExpireTime"] as! String
                }
                if dict.keys.contains("GroupDescription") && dict["GroupDescription"] != nil {
                    self.groupDescription = dict["GroupDescription"] as! String
                }
                if dict.keys.contains("GroupId") && dict["GroupId"] != nil {
                    self.groupId = dict["GroupId"] as! String
                }
                if dict.keys.contains("GroupName") && dict["GroupName"] != nil {
                    self.groupName = dict["GroupName"] as! String
                }
                if dict.keys.contains("InvokeTimesMax") && dict["InvokeTimesMax"] != nil {
                    self.invokeTimesMax = dict["InvokeTimesMax"] as! Int64
                }
                if dict.keys.contains("InvokeTimesNow") && dict["InvokeTimesNow"] != nil {
                    self.invokeTimesNow = dict["InvokeTimesNow"] as! Int64
                }
                if dict.keys.contains("ModifiedTime") && dict["ModifiedTime"] != nil {
                    self.modifiedTime = dict["ModifiedTime"] as! String
                }
                if dict.keys.contains("RegionId") && dict["RegionId"] != nil {
                    self.regionId = dict["RegionId"] as! String
                }
                if dict.keys.contains("Status") && dict["Status"] != nil {
                    self.status = dict["Status"] as! String
                }
            }
        }
        public var purchasedApiGroupAttribute: [DescribePurchasedApiGroupsResponseBody.PurchasedApiGroupAttributes.PurchasedApiGroupAttribute]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.purchasedApiGroupAttribute != nil {
                var tmp : [Any] = []
                for k in self.purchasedApiGroupAttribute! {
                    tmp.append(k.toMap())
                }
                map["PurchasedApiGroupAttribute"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("PurchasedApiGroupAttribute") && dict["PurchasedApiGroupAttribute"] != nil {
                var tmp : [DescribePurchasedApiGroupsResponseBody.PurchasedApiGroupAttributes.PurchasedApiGroupAttribute] = []
                for v in dict["PurchasedApiGroupAttribute"] as! [Any] {
                    var model = DescribePurchasedApiGroupsResponseBody.PurchasedApiGroupAttributes.PurchasedApiGroupAttribute()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.purchasedApiGroupAttribute = tmp
            }
        }
    }
    public var pageNumber: Int32?

    public var pageSize: Int32?

    public var purchasedApiGroupAttributes: DescribePurchasedApiGroupsResponseBody.PurchasedApiGroupAttributes?

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
        try self.purchasedApiGroupAttributes?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.pageNumber != nil {
            map["PageNumber"] = self.pageNumber!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.purchasedApiGroupAttributes != nil {
            map["PurchasedApiGroupAttributes"] = self.purchasedApiGroupAttributes?.toMap()
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
        if dict.keys.contains("PageNumber") && dict["PageNumber"] != nil {
            self.pageNumber = dict["PageNumber"] as! Int32
        }
        if dict.keys.contains("PageSize") && dict["PageSize"] != nil {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("PurchasedApiGroupAttributes") && dict["PurchasedApiGroupAttributes"] != nil {
            var model = DescribePurchasedApiGroupsResponseBody.PurchasedApiGroupAttributes()
            model.fromMap(dict["PurchasedApiGroupAttributes"] as! [String: Any])
            self.purchasedApiGroupAttributes = model
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("TotalCount") && dict["TotalCount"] != nil {
            self.totalCount = dict["TotalCount"] as! Int32
        }
    }
}

public class DescribePurchasedApiGroupsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribePurchasedApiGroupsResponseBody?

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
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = DescribePurchasedApiGroupsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribePurchasedApisRequest : Tea.TeaModel {
    public var apiId: String?

    public var apiName: String?

    public var groupId: String?

    public var pageNumber: Int32?

    public var pageSize: Int32?

    public var stageName: String?

    public var visibility: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.apiId != nil {
            map["ApiId"] = self.apiId!
        }
        if self.apiName != nil {
            map["ApiName"] = self.apiName!
        }
        if self.groupId != nil {
            map["GroupId"] = self.groupId!
        }
        if self.pageNumber != nil {
            map["PageNumber"] = self.pageNumber!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.stageName != nil {
            map["StageName"] = self.stageName!
        }
        if self.visibility != nil {
            map["Visibility"] = self.visibility!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ApiId") && dict["ApiId"] != nil {
            self.apiId = dict["ApiId"] as! String
        }
        if dict.keys.contains("ApiName") && dict["ApiName"] != nil {
            self.apiName = dict["ApiName"] as! String
        }
        if dict.keys.contains("GroupId") && dict["GroupId"] != nil {
            self.groupId = dict["GroupId"] as! String
        }
        if dict.keys.contains("PageNumber") && dict["PageNumber"] != nil {
            self.pageNumber = dict["PageNumber"] as! Int32
        }
        if dict.keys.contains("PageSize") && dict["PageSize"] != nil {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("StageName") && dict["StageName"] != nil {
            self.stageName = dict["StageName"] as! String
        }
        if dict.keys.contains("Visibility") && dict["Visibility"] != nil {
            self.visibility = dict["Visibility"] as! String
        }
    }
}

public class DescribePurchasedApisResponseBody : Tea.TeaModel {
    public class ApiInfos : Tea.TeaModel {
        public class ApiInfo : Tea.TeaModel {
            public var apiId: String?

            public var apiName: String?

            public var createdTime: String?

            public var description_: String?

            public var groupId: String?

            public var groupName: String?

            public var modifiedTime: String?

            public var regionId: String?

            public var stageName: String?

            public var visibility: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.apiId != nil {
                    map["ApiId"] = self.apiId!
                }
                if self.apiName != nil {
                    map["ApiName"] = self.apiName!
                }
                if self.createdTime != nil {
                    map["CreatedTime"] = self.createdTime!
                }
                if self.description_ != nil {
                    map["Description"] = self.description_!
                }
                if self.groupId != nil {
                    map["GroupId"] = self.groupId!
                }
                if self.groupName != nil {
                    map["GroupName"] = self.groupName!
                }
                if self.modifiedTime != nil {
                    map["ModifiedTime"] = self.modifiedTime!
                }
                if self.regionId != nil {
                    map["RegionId"] = self.regionId!
                }
                if self.stageName != nil {
                    map["StageName"] = self.stageName!
                }
                if self.visibility != nil {
                    map["Visibility"] = self.visibility!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("ApiId") && dict["ApiId"] != nil {
                    self.apiId = dict["ApiId"] as! String
                }
                if dict.keys.contains("ApiName") && dict["ApiName"] != nil {
                    self.apiName = dict["ApiName"] as! String
                }
                if dict.keys.contains("CreatedTime") && dict["CreatedTime"] != nil {
                    self.createdTime = dict["CreatedTime"] as! String
                }
                if dict.keys.contains("Description") && dict["Description"] != nil {
                    self.description_ = dict["Description"] as! String
                }
                if dict.keys.contains("GroupId") && dict["GroupId"] != nil {
                    self.groupId = dict["GroupId"] as! String
                }
                if dict.keys.contains("GroupName") && dict["GroupName"] != nil {
                    self.groupName = dict["GroupName"] as! String
                }
                if dict.keys.contains("ModifiedTime") && dict["ModifiedTime"] != nil {
                    self.modifiedTime = dict["ModifiedTime"] as! String
                }
                if dict.keys.contains("RegionId") && dict["RegionId"] != nil {
                    self.regionId = dict["RegionId"] as! String
                }
                if dict.keys.contains("StageName") && dict["StageName"] != nil {
                    self.stageName = dict["StageName"] as! String
                }
                if dict.keys.contains("Visibility") && dict["Visibility"] != nil {
                    self.visibility = dict["Visibility"] as! String
                }
            }
        }
        public var apiInfo: [DescribePurchasedApisResponseBody.ApiInfos.ApiInfo]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.apiInfo != nil {
                var tmp : [Any] = []
                for k in self.apiInfo! {
                    tmp.append(k.toMap())
                }
                map["ApiInfo"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("ApiInfo") && dict["ApiInfo"] != nil {
                var tmp : [DescribePurchasedApisResponseBody.ApiInfos.ApiInfo] = []
                for v in dict["ApiInfo"] as! [Any] {
                    var model = DescribePurchasedApisResponseBody.ApiInfos.ApiInfo()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.apiInfo = tmp
            }
        }
    }
    public var apiInfos: DescribePurchasedApisResponseBody.ApiInfos?

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
        try self.apiInfos?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.apiInfos != nil {
            map["ApiInfos"] = self.apiInfos?.toMap()
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
        if dict.keys.contains("ApiInfos") && dict["ApiInfos"] != nil {
            var model = DescribePurchasedApisResponseBody.ApiInfos()
            model.fromMap(dict["ApiInfos"] as! [String: Any])
            self.apiInfos = model
        }
        if dict.keys.contains("PageNumber") && dict["PageNumber"] != nil {
            self.pageNumber = dict["PageNumber"] as! Int32
        }
        if dict.keys.contains("PageSize") && dict["PageSize"] != nil {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("TotalCount") && dict["TotalCount"] != nil {
            self.totalCount = dict["TotalCount"] as! Int32
        }
    }
}

public class DescribePurchasedApisResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribePurchasedApisResponseBody?

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
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = DescribePurchasedApisResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeRaceWorkForInnerRequest : Tea.TeaModel {
    public var groupId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.groupId != nil {
            map["GroupId"] = self.groupId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("GroupId") && dict["GroupId"] != nil {
            self.groupId = dict["GroupId"] as! String
        }
    }
}

public class DescribeRaceWorkForInnerResponseBody : Tea.TeaModel {
    public var commodityCode: String?

    public var createTime: String?

    public var groupId: String?

    public var keywords: String?

    public var logoUrl: String?

    public var modifiedTime: String?

    public var requestId: String?

    public var shortDescription: String?

    public var workName: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.commodityCode != nil {
            map["CommodityCode"] = self.commodityCode!
        }
        if self.createTime != nil {
            map["CreateTime"] = self.createTime!
        }
        if self.groupId != nil {
            map["GroupId"] = self.groupId!
        }
        if self.keywords != nil {
            map["Keywords"] = self.keywords!
        }
        if self.logoUrl != nil {
            map["LogoUrl"] = self.logoUrl!
        }
        if self.modifiedTime != nil {
            map["ModifiedTime"] = self.modifiedTime!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.shortDescription != nil {
            map["ShortDescription"] = self.shortDescription!
        }
        if self.workName != nil {
            map["WorkName"] = self.workName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("CommodityCode") && dict["CommodityCode"] != nil {
            self.commodityCode = dict["CommodityCode"] as! String
        }
        if dict.keys.contains("CreateTime") && dict["CreateTime"] != nil {
            self.createTime = dict["CreateTime"] as! String
        }
        if dict.keys.contains("GroupId") && dict["GroupId"] != nil {
            self.groupId = dict["GroupId"] as! String
        }
        if dict.keys.contains("Keywords") && dict["Keywords"] != nil {
            self.keywords = dict["Keywords"] as! String
        }
        if dict.keys.contains("LogoUrl") && dict["LogoUrl"] != nil {
            self.logoUrl = dict["LogoUrl"] as! String
        }
        if dict.keys.contains("ModifiedTime") && dict["ModifiedTime"] != nil {
            self.modifiedTime = dict["ModifiedTime"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("ShortDescription") && dict["ShortDescription"] != nil {
            self.shortDescription = dict["ShortDescription"] as! String
        }
        if dict.keys.contains("WorkName") && dict["WorkName"] != nil {
            self.workName = dict["WorkName"] as! String
        }
    }
}

public class DescribeRaceWorkForInnerResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeRaceWorkForInnerResponseBody?

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
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = DescribeRaceWorkForInnerResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeRaceWorksForInnerRequest : Tea.TeaModel {
    public var pageNumber: Int32?

    public var pageSize: Int32?

    public override init() {
        super.init()
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
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("PageNumber") && dict["PageNumber"] != nil {
            self.pageNumber = dict["PageNumber"] as! Int32
        }
        if dict.keys.contains("PageSize") && dict["PageSize"] != nil {
            self.pageSize = dict["PageSize"] as! Int32
        }
    }
}

public class DescribeRaceWorksForInnerResponseBody : Tea.TeaModel {
    public class ApiWorks : Tea.TeaModel {
        public class ApiWork : Tea.TeaModel {
            public var commodityCode: String?

            public var createTime: String?

            public var groupId: String?

            public var keywords: String?

            public var logoUrl: String?

            public var modifiedTime: String?

            public var shortDescription: String?

            public var workName: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.commodityCode != nil {
                    map["CommodityCode"] = self.commodityCode!
                }
                if self.createTime != nil {
                    map["CreateTime"] = self.createTime!
                }
                if self.groupId != nil {
                    map["GroupId"] = self.groupId!
                }
                if self.keywords != nil {
                    map["Keywords"] = self.keywords!
                }
                if self.logoUrl != nil {
                    map["LogoUrl"] = self.logoUrl!
                }
                if self.modifiedTime != nil {
                    map["ModifiedTime"] = self.modifiedTime!
                }
                if self.shortDescription != nil {
                    map["ShortDescription"] = self.shortDescription!
                }
                if self.workName != nil {
                    map["WorkName"] = self.workName!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("CommodityCode") && dict["CommodityCode"] != nil {
                    self.commodityCode = dict["CommodityCode"] as! String
                }
                if dict.keys.contains("CreateTime") && dict["CreateTime"] != nil {
                    self.createTime = dict["CreateTime"] as! String
                }
                if dict.keys.contains("GroupId") && dict["GroupId"] != nil {
                    self.groupId = dict["GroupId"] as! String
                }
                if dict.keys.contains("Keywords") && dict["Keywords"] != nil {
                    self.keywords = dict["Keywords"] as! String
                }
                if dict.keys.contains("LogoUrl") && dict["LogoUrl"] != nil {
                    self.logoUrl = dict["LogoUrl"] as! String
                }
                if dict.keys.contains("ModifiedTime") && dict["ModifiedTime"] != nil {
                    self.modifiedTime = dict["ModifiedTime"] as! String
                }
                if dict.keys.contains("ShortDescription") && dict["ShortDescription"] != nil {
                    self.shortDescription = dict["ShortDescription"] as! String
                }
                if dict.keys.contains("WorkName") && dict["WorkName"] != nil {
                    self.workName = dict["WorkName"] as! String
                }
            }
        }
        public var apiWork: [DescribeRaceWorksForInnerResponseBody.ApiWorks.ApiWork]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.apiWork != nil {
                var tmp : [Any] = []
                for k in self.apiWork! {
                    tmp.append(k.toMap())
                }
                map["ApiWork"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("ApiWork") && dict["ApiWork"] != nil {
                var tmp : [DescribeRaceWorksForInnerResponseBody.ApiWorks.ApiWork] = []
                for v in dict["ApiWork"] as! [Any] {
                    var model = DescribeRaceWorksForInnerResponseBody.ApiWorks.ApiWork()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.apiWork = tmp
            }
        }
    }
    public var apiWorks: DescribeRaceWorksForInnerResponseBody.ApiWorks?

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
        try self.apiWorks?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.apiWorks != nil {
            map["ApiWorks"] = self.apiWorks?.toMap()
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
        if dict.keys.contains("ApiWorks") && dict["ApiWorks"] != nil {
            var model = DescribeRaceWorksForInnerResponseBody.ApiWorks()
            model.fromMap(dict["ApiWorks"] as! [String: Any])
            self.apiWorks = model
        }
        if dict.keys.contains("PageNumber") && dict["PageNumber"] != nil {
            self.pageNumber = dict["PageNumber"] as! Int32
        }
        if dict.keys.contains("PageSize") && dict["PageSize"] != nil {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("TotalCount") && dict["TotalCount"] != nil {
            self.totalCount = dict["TotalCount"] as! Int32
        }
    }
}

public class DescribeRaceWorksForInnerResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeRaceWorksForInnerResponseBody?

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
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = DescribeRaceWorksForInnerResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeRegionsRequest : Tea.TeaModel {
    public var language: String?

    public var securityToken: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.language != nil {
            map["Language"] = self.language!
        }
        if self.securityToken != nil {
            map["SecurityToken"] = self.securityToken!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Language") && dict["Language"] != nil {
            self.language = dict["Language"] as! String
        }
        if dict.keys.contains("SecurityToken") && dict["SecurityToken"] != nil {
            self.securityToken = dict["SecurityToken"] as! String
        }
    }
}

public class DescribeRegionsResponseBody : Tea.TeaModel {
    public class Regions : Tea.TeaModel {
        public class Region : Tea.TeaModel {
            public var endPoint: String?

            public var localName: String?

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
                if self.endPoint != nil {
                    map["EndPoint"] = self.endPoint!
                }
                if self.localName != nil {
                    map["LocalName"] = self.localName!
                }
                if self.regionId != nil {
                    map["RegionId"] = self.regionId!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("EndPoint") && dict["EndPoint"] != nil {
                    self.endPoint = dict["EndPoint"] as! String
                }
                if dict.keys.contains("LocalName") && dict["LocalName"] != nil {
                    self.localName = dict["LocalName"] as! String
                }
                if dict.keys.contains("RegionId") && dict["RegionId"] != nil {
                    self.regionId = dict["RegionId"] as! String
                }
            }
        }
        public var region: [DescribeRegionsResponseBody.Regions.Region]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.region != nil {
                var tmp : [Any] = []
                for k in self.region! {
                    tmp.append(k.toMap())
                }
                map["Region"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Region") && dict["Region"] != nil {
                var tmp : [DescribeRegionsResponseBody.Regions.Region] = []
                for v in dict["Region"] as! [Any] {
                    var model = DescribeRegionsResponseBody.Regions.Region()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.region = tmp
            }
        }
    }
    public var regions: DescribeRegionsResponseBody.Regions?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.regions?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.regions != nil {
            map["Regions"] = self.regions?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Regions") && dict["Regions"] != nil {
            var model = DescribeRegionsResponseBody.Regions()
            model.fromMap(dict["Regions"] as! [String: Any])
            self.regions = model
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
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
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = DescribeRegionsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeRulesByApiRequest : Tea.TeaModel {
    public var apiId: String?

    public var groupId: String?

    public var stageName: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.apiId != nil {
            map["ApiId"] = self.apiId!
        }
        if self.groupId != nil {
            map["GroupId"] = self.groupId!
        }
        if self.stageName != nil {
            map["StageName"] = self.stageName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ApiId") && dict["ApiId"] != nil {
            self.apiId = dict["ApiId"] as! String
        }
        if dict.keys.contains("GroupId") && dict["GroupId"] != nil {
            self.groupId = dict["GroupId"] as! String
        }
        if dict.keys.contains("StageName") && dict["StageName"] != nil {
            self.stageName = dict["StageName"] as! String
        }
    }
}

public class DescribeRulesByApiResponseBody : Tea.TeaModel {
    public class Rules : Tea.TeaModel {
        public class Rule : Tea.TeaModel {
            public var createdTime: Int32?

            public var ruleId: String?

            public var ruleName: String?

            public var ruleType: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.createdTime != nil {
                    map["CreatedTime"] = self.createdTime!
                }
                if self.ruleId != nil {
                    map["RuleId"] = self.ruleId!
                }
                if self.ruleName != nil {
                    map["RuleName"] = self.ruleName!
                }
                if self.ruleType != nil {
                    map["RuleType"] = self.ruleType!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("CreatedTime") && dict["CreatedTime"] != nil {
                    self.createdTime = dict["CreatedTime"] as! Int32
                }
                if dict.keys.contains("RuleId") && dict["RuleId"] != nil {
                    self.ruleId = dict["RuleId"] as! String
                }
                if dict.keys.contains("RuleName") && dict["RuleName"] != nil {
                    self.ruleName = dict["RuleName"] as! String
                }
                if dict.keys.contains("RuleType") && dict["RuleType"] != nil {
                    self.ruleType = dict["RuleType"] as! String
                }
            }
        }
        public var rule: [DescribeRulesByApiResponseBody.Rules.Rule]?

        public override init() {
            super.init()
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
            if dict.keys.contains("Rule") && dict["Rule"] != nil {
                var tmp : [DescribeRulesByApiResponseBody.Rules.Rule] = []
                for v in dict["Rule"] as! [Any] {
                    var model = DescribeRulesByApiResponseBody.Rules.Rule()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.rule = tmp
            }
        }
    }
    public var requestId: String?

    public var rules: DescribeRulesByApiResponseBody.Rules?

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
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.rules != nil {
            map["Rules"] = self.rules?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Rules") && dict["Rules"] != nil {
            var model = DescribeRulesByApiResponseBody.Rules()
            model.fromMap(dict["Rules"] as! [String: Any])
            self.rules = model
        }
    }
}

public class DescribeRulesByApiResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeRulesByApiResponseBody?

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
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = DescribeRulesByApiResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeSecretKeysRequest : Tea.TeaModel {
    public var pageNumber: Int32?

    public var pageSize: Int32?

    public var secretKeyId: String?

    public var secretKeyName: String?

    public override init() {
        super.init()
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
        if self.secretKeyId != nil {
            map["SecretKeyId"] = self.secretKeyId!
        }
        if self.secretKeyName != nil {
            map["SecretKeyName"] = self.secretKeyName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("PageNumber") && dict["PageNumber"] != nil {
            self.pageNumber = dict["PageNumber"] as! Int32
        }
        if dict.keys.contains("PageSize") && dict["PageSize"] != nil {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("SecretKeyId") && dict["SecretKeyId"] != nil {
            self.secretKeyId = dict["SecretKeyId"] as! String
        }
        if dict.keys.contains("SecretKeyName") && dict["SecretKeyName"] != nil {
            self.secretKeyName = dict["SecretKeyName"] as! String
        }
    }
}

public class DescribeSecretKeysResponseBody : Tea.TeaModel {
    public class SecretKeys : Tea.TeaModel {
        public class SecretKey : Tea.TeaModel {
            public var createdTime: String?

            public var modifiedTime: String?

            public var regionId: String?

            public var secretKey: String?

            public var secretKeyId: String?

            public var secretKeyName: String?

            public var secretKeyValue: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.createdTime != nil {
                    map["CreatedTime"] = self.createdTime!
                }
                if self.modifiedTime != nil {
                    map["ModifiedTime"] = self.modifiedTime!
                }
                if self.regionId != nil {
                    map["RegionId"] = self.regionId!
                }
                if self.secretKey != nil {
                    map["SecretKey"] = self.secretKey!
                }
                if self.secretKeyId != nil {
                    map["SecretKeyId"] = self.secretKeyId!
                }
                if self.secretKeyName != nil {
                    map["SecretKeyName"] = self.secretKeyName!
                }
                if self.secretKeyValue != nil {
                    map["SecretKeyValue"] = self.secretKeyValue!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("CreatedTime") && dict["CreatedTime"] != nil {
                    self.createdTime = dict["CreatedTime"] as! String
                }
                if dict.keys.contains("ModifiedTime") && dict["ModifiedTime"] != nil {
                    self.modifiedTime = dict["ModifiedTime"] as! String
                }
                if dict.keys.contains("RegionId") && dict["RegionId"] != nil {
                    self.regionId = dict["RegionId"] as! String
                }
                if dict.keys.contains("SecretKey") && dict["SecretKey"] != nil {
                    self.secretKey = dict["SecretKey"] as! String
                }
                if dict.keys.contains("SecretKeyId") && dict["SecretKeyId"] != nil {
                    self.secretKeyId = dict["SecretKeyId"] as! String
                }
                if dict.keys.contains("SecretKeyName") && dict["SecretKeyName"] != nil {
                    self.secretKeyName = dict["SecretKeyName"] as! String
                }
                if dict.keys.contains("SecretKeyValue") && dict["SecretKeyValue"] != nil {
                    self.secretKeyValue = dict["SecretKeyValue"] as! String
                }
            }
        }
        public var secretKey: [DescribeSecretKeysResponseBody.SecretKeys.SecretKey]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.secretKey != nil {
                var tmp : [Any] = []
                for k in self.secretKey! {
                    tmp.append(k.toMap())
                }
                map["SecretKey"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("SecretKey") && dict["SecretKey"] != nil {
                var tmp : [DescribeSecretKeysResponseBody.SecretKeys.SecretKey] = []
                for v in dict["SecretKey"] as! [Any] {
                    var model = DescribeSecretKeysResponseBody.SecretKeys.SecretKey()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.secretKey = tmp
            }
        }
    }
    public var pageNumber: Int32?

    public var pageSize: Int32?

    public var requestId: String?

    public var secretKeys: DescribeSecretKeysResponseBody.SecretKeys?

    public var totalCount: Int32?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.secretKeys?.validate()
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
        if self.secretKeys != nil {
            map["SecretKeys"] = self.secretKeys?.toMap()
        }
        if self.totalCount != nil {
            map["TotalCount"] = self.totalCount!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("PageNumber") && dict["PageNumber"] != nil {
            self.pageNumber = dict["PageNumber"] as! Int32
        }
        if dict.keys.contains("PageSize") && dict["PageSize"] != nil {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("SecretKeys") && dict["SecretKeys"] != nil {
            var model = DescribeSecretKeysResponseBody.SecretKeys()
            model.fromMap(dict["SecretKeys"] as! [String: Any])
            self.secretKeys = model
        }
        if dict.keys.contains("TotalCount") && dict["TotalCount"] != nil {
            self.totalCount = dict["TotalCount"] as! Int32
        }
    }
}

public class DescribeSecretKeysResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeSecretKeysResponseBody?

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
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = DescribeSecretKeysResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeSystemParametersRequest : Tea.TeaModel {
    public var securityToken: String?

    public override init() {
        super.init()
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
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("SecurityToken") && dict["SecurityToken"] != nil {
            self.securityToken = dict["SecurityToken"] as! String
        }
    }
}

public class DescribeSystemParametersResponseBody : Tea.TeaModel {
    public class SystemParameters : Tea.TeaModel {
        public class SystemParameter : Tea.TeaModel {
            public var demoValue: String?

            public var description_: String?

            public var paramName: String?

            public var paramType: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.demoValue != nil {
                    map["DemoValue"] = self.demoValue!
                }
                if self.description_ != nil {
                    map["Description"] = self.description_!
                }
                if self.paramName != nil {
                    map["ParamName"] = self.paramName!
                }
                if self.paramType != nil {
                    map["ParamType"] = self.paramType!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("DemoValue") && dict["DemoValue"] != nil {
                    self.demoValue = dict["DemoValue"] as! String
                }
                if dict.keys.contains("Description") && dict["Description"] != nil {
                    self.description_ = dict["Description"] as! String
                }
                if dict.keys.contains("ParamName") && dict["ParamName"] != nil {
                    self.paramName = dict["ParamName"] as! String
                }
                if dict.keys.contains("ParamType") && dict["ParamType"] != nil {
                    self.paramType = dict["ParamType"] as! String
                }
            }
        }
        public var systemParameter: [DescribeSystemParametersResponseBody.SystemParameters.SystemParameter]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.systemParameter != nil {
                var tmp : [Any] = []
                for k in self.systemParameter! {
                    tmp.append(k.toMap())
                }
                map["SystemParameter"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("SystemParameter") && dict["SystemParameter"] != nil {
                var tmp : [DescribeSystemParametersResponseBody.SystemParameters.SystemParameter] = []
                for v in dict["SystemParameter"] as! [Any] {
                    var model = DescribeSystemParametersResponseBody.SystemParameters.SystemParameter()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.systemParameter = tmp
            }
        }
    }
    public var requestId: String?

    public var systemParameters: DescribeSystemParametersResponseBody.SystemParameters?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.systemParameters?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.systemParameters != nil {
            map["SystemParameters"] = self.systemParameters?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("SystemParameters") && dict["SystemParameters"] != nil {
            var model = DescribeSystemParametersResponseBody.SystemParameters()
            model.fromMap(dict["SystemParameters"] as! [String: Any])
            self.systemParameters = model
        }
    }
}

public class DescribeSystemParametersResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeSystemParametersResponseBody?

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
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = DescribeSystemParametersResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeSystemParamsRequest : Tea.TeaModel {
    public var securityToken: String?

    public override init() {
        super.init()
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
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("SecurityToken") && dict["SecurityToken"] != nil {
            self.securityToken = dict["SecurityToken"] as! String
        }
    }
}

public class DescribeSystemParamsResponseBody : Tea.TeaModel {
    public class SystemParams : Tea.TeaModel {
        public class SystemParam : Tea.TeaModel {
            public var demoValue: String?

            public var description_: String?

            public var paramName: String?

            public var paramType: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.demoValue != nil {
                    map["DemoValue"] = self.demoValue!
                }
                if self.description_ != nil {
                    map["Description"] = self.description_!
                }
                if self.paramName != nil {
                    map["ParamName"] = self.paramName!
                }
                if self.paramType != nil {
                    map["ParamType"] = self.paramType!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("DemoValue") && dict["DemoValue"] != nil {
                    self.demoValue = dict["DemoValue"] as! String
                }
                if dict.keys.contains("Description") && dict["Description"] != nil {
                    self.description_ = dict["Description"] as! String
                }
                if dict.keys.contains("ParamName") && dict["ParamName"] != nil {
                    self.paramName = dict["ParamName"] as! String
                }
                if dict.keys.contains("ParamType") && dict["ParamType"] != nil {
                    self.paramType = dict["ParamType"] as! String
                }
            }
        }
        public var systemParam: [DescribeSystemParamsResponseBody.SystemParams.SystemParam]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.systemParam != nil {
                var tmp : [Any] = []
                for k in self.systemParam! {
                    tmp.append(k.toMap())
                }
                map["SystemParam"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("SystemParam") && dict["SystemParam"] != nil {
                var tmp : [DescribeSystemParamsResponseBody.SystemParams.SystemParam] = []
                for v in dict["SystemParam"] as! [Any] {
                    var model = DescribeSystemParamsResponseBody.SystemParams.SystemParam()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.systemParam = tmp
            }
        }
    }
    public var requestId: String?

    public var systemParams: DescribeSystemParamsResponseBody.SystemParams?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.systemParams?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.systemParams != nil {
            map["SystemParams"] = self.systemParams?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("SystemParams") && dict["SystemParams"] != nil {
            var model = DescribeSystemParamsResponseBody.SystemParams()
            model.fromMap(dict["SystemParams"] as! [String: Any])
            self.systemParams = model
        }
    }
}

public class DescribeSystemParamsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeSystemParamsResponseBody?

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
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = DescribeSystemParamsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeTrafficControlsRequest : Tea.TeaModel {
    public var apiUid: String?

    public var groupId: String?

    public var pageNumber: Int32?

    public var pageSize: Int32?

    public var stageName: String?

    public var trafficControlId: String?

    public var trafficControlName: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.apiUid != nil {
            map["ApiUid"] = self.apiUid!
        }
        if self.groupId != nil {
            map["GroupId"] = self.groupId!
        }
        if self.pageNumber != nil {
            map["PageNumber"] = self.pageNumber!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.stageName != nil {
            map["StageName"] = self.stageName!
        }
        if self.trafficControlId != nil {
            map["TrafficControlId"] = self.trafficControlId!
        }
        if self.trafficControlName != nil {
            map["TrafficControlName"] = self.trafficControlName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ApiUid") && dict["ApiUid"] != nil {
            self.apiUid = dict["ApiUid"] as! String
        }
        if dict.keys.contains("GroupId") && dict["GroupId"] != nil {
            self.groupId = dict["GroupId"] as! String
        }
        if dict.keys.contains("PageNumber") && dict["PageNumber"] != nil {
            self.pageNumber = dict["PageNumber"] as! Int32
        }
        if dict.keys.contains("PageSize") && dict["PageSize"] != nil {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("StageName") && dict["StageName"] != nil {
            self.stageName = dict["StageName"] as! String
        }
        if dict.keys.contains("TrafficControlId") && dict["TrafficControlId"] != nil {
            self.trafficControlId = dict["TrafficControlId"] as! String
        }
        if dict.keys.contains("TrafficControlName") && dict["TrafficControlName"] != nil {
            self.trafficControlName = dict["TrafficControlName"] as! String
        }
    }
}

public class DescribeTrafficControlsResponseBody : Tea.TeaModel {
    public class TrafficControls : Tea.TeaModel {
        public class TrafficControl : Tea.TeaModel {
            public class SpecialPolicies : Tea.TeaModel {
                public class SpecialPolicy : Tea.TeaModel {
                    public class Specials : Tea.TeaModel {
                        public class Special : Tea.TeaModel {
                            public var specialKey: String?

                            public var trafficValue: Int32?

                            public override init() {
                                super.init()
                            }

                            public init(_ dict: [String: Any]) {
                                super.init()
                                self.fromMap(dict)
                            }

                            public override func validate() throws -> Void {
                            }

                            public override func toMap() -> [String : Any] {
                                var map = super.toMap()
                                if self.specialKey != nil {
                                    map["SpecialKey"] = self.specialKey!
                                }
                                if self.trafficValue != nil {
                                    map["TrafficValue"] = self.trafficValue!
                                }
                                return map
                            }

                            public override func fromMap(_ dict: [String: Any]) -> Void {
                                if dict.keys.contains("SpecialKey") && dict["SpecialKey"] != nil {
                                    self.specialKey = dict["SpecialKey"] as! String
                                }
                                if dict.keys.contains("TrafficValue") && dict["TrafficValue"] != nil {
                                    self.trafficValue = dict["TrafficValue"] as! Int32
                                }
                            }
                        }
                        public var special: [DescribeTrafficControlsResponseBody.TrafficControls.TrafficControl.SpecialPolicies.SpecialPolicy.Specials.Special]?

                        public override init() {
                            super.init()
                        }

                        public init(_ dict: [String: Any]) {
                            super.init()
                            self.fromMap(dict)
                        }

                        public override func validate() throws -> Void {
                        }

                        public override func toMap() -> [String : Any] {
                            var map = super.toMap()
                            if self.special != nil {
                                var tmp : [Any] = []
                                for k in self.special! {
                                    tmp.append(k.toMap())
                                }
                                map["Special"] = tmp
                            }
                            return map
                        }

                        public override func fromMap(_ dict: [String: Any]) -> Void {
                            if dict.keys.contains("Special") && dict["Special"] != nil {
                                var tmp : [DescribeTrafficControlsResponseBody.TrafficControls.TrafficControl.SpecialPolicies.SpecialPolicy.Specials.Special] = []
                                for v in dict["Special"] as! [Any] {
                                    var model = DescribeTrafficControlsResponseBody.TrafficControls.TrafficControl.SpecialPolicies.SpecialPolicy.Specials.Special()
                                    if v != nil {
                                        model.fromMap(v as! [String: Any])
                                    }
                                    tmp.append(model)
                                }
                                self.special = tmp
                            }
                        }
                    }
                    public var specialType: String?

                    public var specials: DescribeTrafficControlsResponseBody.TrafficControls.TrafficControl.SpecialPolicies.SpecialPolicy.Specials?

                    public override init() {
                        super.init()
                    }

                    public init(_ dict: [String: Any]) {
                        super.init()
                        self.fromMap(dict)
                    }

                    public override func validate() throws -> Void {
                        try self.specials?.validate()
                    }

                    public override func toMap() -> [String : Any] {
                        var map = super.toMap()
                        if self.specialType != nil {
                            map["SpecialType"] = self.specialType!
                        }
                        if self.specials != nil {
                            map["Specials"] = self.specials?.toMap()
                        }
                        return map
                    }

                    public override func fromMap(_ dict: [String: Any]) -> Void {
                        if dict.keys.contains("SpecialType") && dict["SpecialType"] != nil {
                            self.specialType = dict["SpecialType"] as! String
                        }
                        if dict.keys.contains("Specials") && dict["Specials"] != nil {
                            var model = DescribeTrafficControlsResponseBody.TrafficControls.TrafficControl.SpecialPolicies.SpecialPolicy.Specials()
                            model.fromMap(dict["Specials"] as! [String: Any])
                            self.specials = model
                        }
                    }
                }
                public var specialPolicy: [DescribeTrafficControlsResponseBody.TrafficControls.TrafficControl.SpecialPolicies.SpecialPolicy]?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.specialPolicy != nil {
                        var tmp : [Any] = []
                        for k in self.specialPolicy! {
                            tmp.append(k.toMap())
                        }
                        map["SpecialPolicy"] = tmp
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("SpecialPolicy") && dict["SpecialPolicy"] != nil {
                        var tmp : [DescribeTrafficControlsResponseBody.TrafficControls.TrafficControl.SpecialPolicies.SpecialPolicy] = []
                        for v in dict["SpecialPolicy"] as! [Any] {
                            var model = DescribeTrafficControlsResponseBody.TrafficControls.TrafficControl.SpecialPolicies.SpecialPolicy()
                            if v != nil {
                                model.fromMap(v as! [String: Any])
                            }
                            tmp.append(model)
                        }
                        self.specialPolicy = tmp
                    }
                }
            }
            public var apiDefault: Int32?

            public var appDefault: Int32?

            public var createdTime: String?

            public var description_: String?

            public var modifiedTime: String?

            public var specialPolicies: DescribeTrafficControlsResponseBody.TrafficControls.TrafficControl.SpecialPolicies?

            public var trafficControlId: String?

            public var trafficControlName: String?

            public var trafficControlUnit: String?

            public var userDefault: Int32?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
                try self.specialPolicies?.validate()
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.apiDefault != nil {
                    map["ApiDefault"] = self.apiDefault!
                }
                if self.appDefault != nil {
                    map["AppDefault"] = self.appDefault!
                }
                if self.createdTime != nil {
                    map["CreatedTime"] = self.createdTime!
                }
                if self.description_ != nil {
                    map["Description"] = self.description_!
                }
                if self.modifiedTime != nil {
                    map["ModifiedTime"] = self.modifiedTime!
                }
                if self.specialPolicies != nil {
                    map["SpecialPolicies"] = self.specialPolicies?.toMap()
                }
                if self.trafficControlId != nil {
                    map["TrafficControlId"] = self.trafficControlId!
                }
                if self.trafficControlName != nil {
                    map["TrafficControlName"] = self.trafficControlName!
                }
                if self.trafficControlUnit != nil {
                    map["TrafficControlUnit"] = self.trafficControlUnit!
                }
                if self.userDefault != nil {
                    map["UserDefault"] = self.userDefault!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("ApiDefault") && dict["ApiDefault"] != nil {
                    self.apiDefault = dict["ApiDefault"] as! Int32
                }
                if dict.keys.contains("AppDefault") && dict["AppDefault"] != nil {
                    self.appDefault = dict["AppDefault"] as! Int32
                }
                if dict.keys.contains("CreatedTime") && dict["CreatedTime"] != nil {
                    self.createdTime = dict["CreatedTime"] as! String
                }
                if dict.keys.contains("Description") && dict["Description"] != nil {
                    self.description_ = dict["Description"] as! String
                }
                if dict.keys.contains("ModifiedTime") && dict["ModifiedTime"] != nil {
                    self.modifiedTime = dict["ModifiedTime"] as! String
                }
                if dict.keys.contains("SpecialPolicies") && dict["SpecialPolicies"] != nil {
                    var model = DescribeTrafficControlsResponseBody.TrafficControls.TrafficControl.SpecialPolicies()
                    model.fromMap(dict["SpecialPolicies"] as! [String: Any])
                    self.specialPolicies = model
                }
                if dict.keys.contains("TrafficControlId") && dict["TrafficControlId"] != nil {
                    self.trafficControlId = dict["TrafficControlId"] as! String
                }
                if dict.keys.contains("TrafficControlName") && dict["TrafficControlName"] != nil {
                    self.trafficControlName = dict["TrafficControlName"] as! String
                }
                if dict.keys.contains("TrafficControlUnit") && dict["TrafficControlUnit"] != nil {
                    self.trafficControlUnit = dict["TrafficControlUnit"] as! String
                }
                if dict.keys.contains("UserDefault") && dict["UserDefault"] != nil {
                    self.userDefault = dict["UserDefault"] as! Int32
                }
            }
        }
        public var trafficControl: [DescribeTrafficControlsResponseBody.TrafficControls.TrafficControl]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.trafficControl != nil {
                var tmp : [Any] = []
                for k in self.trafficControl! {
                    tmp.append(k.toMap())
                }
                map["TrafficControl"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("TrafficControl") && dict["TrafficControl"] != nil {
                var tmp : [DescribeTrafficControlsResponseBody.TrafficControls.TrafficControl] = []
                for v in dict["TrafficControl"] as! [Any] {
                    var model = DescribeTrafficControlsResponseBody.TrafficControls.TrafficControl()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.trafficControl = tmp
            }
        }
    }
    public var pageNumber: Int32?

    public var pageSize: Int32?

    public var requestId: String?

    public var totalCount: Int32?

    public var trafficControls: DescribeTrafficControlsResponseBody.TrafficControls?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.trafficControls?.validate()
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
        if self.totalCount != nil {
            map["TotalCount"] = self.totalCount!
        }
        if self.trafficControls != nil {
            map["TrafficControls"] = self.trafficControls?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("PageNumber") && dict["PageNumber"] != nil {
            self.pageNumber = dict["PageNumber"] as! Int32
        }
        if dict.keys.contains("PageSize") && dict["PageSize"] != nil {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("TotalCount") && dict["TotalCount"] != nil {
            self.totalCount = dict["TotalCount"] as! Int32
        }
        if dict.keys.contains("TrafficControls") && dict["TrafficControls"] != nil {
            var model = DescribeTrafficControlsResponseBody.TrafficControls()
            model.fromMap(dict["TrafficControls"] as! [String: Any])
            self.trafficControls = model
        }
    }
}

public class DescribeTrafficControlsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeTrafficControlsResponseBody?

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
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = DescribeTrafficControlsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeUserWhiteListsRequest : Tea.TeaModel {
    public var pageNumber: Int32?

    public var pageSize: Int32?

    public var type: String?

    public var uid: Int64?

    public override init() {
        super.init()
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
        if self.type != nil {
            map["Type"] = self.type!
        }
        if self.uid != nil {
            map["Uid"] = self.uid!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("PageNumber") && dict["PageNumber"] != nil {
            self.pageNumber = dict["PageNumber"] as! Int32
        }
        if dict.keys.contains("PageSize") && dict["PageSize"] != nil {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("Type") && dict["Type"] != nil {
            self.type = dict["Type"] as! String
        }
        if dict.keys.contains("Uid") && dict["Uid"] != nil {
            self.uid = dict["Uid"] as! Int64
        }
    }
}

public class DescribeUserWhiteListsResponseBody : Tea.TeaModel {
    public class UserWhiteListInfos : Tea.TeaModel {
        public class UserWhiteListInfo : Tea.TeaModel {
            public var aoneId: String?

            public var createTime: String?

            public var description_: String?

            public var id: Int64?

            public var modifiedTime: String?

            public var type: String?

            public var uid: Int64?

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
                if self.aoneId != nil {
                    map["AoneId"] = self.aoneId!
                }
                if self.createTime != nil {
                    map["CreateTime"] = self.createTime!
                }
                if self.description_ != nil {
                    map["Description"] = self.description_!
                }
                if self.id != nil {
                    map["Id"] = self.id!
                }
                if self.modifiedTime != nil {
                    map["ModifiedTime"] = self.modifiedTime!
                }
                if self.type != nil {
                    map["Type"] = self.type!
                }
                if self.uid != nil {
                    map["Uid"] = self.uid!
                }
                if self.value != nil {
                    map["Value"] = self.value!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("AoneId") && dict["AoneId"] != nil {
                    self.aoneId = dict["AoneId"] as! String
                }
                if dict.keys.contains("CreateTime") && dict["CreateTime"] != nil {
                    self.createTime = dict["CreateTime"] as! String
                }
                if dict.keys.contains("Description") && dict["Description"] != nil {
                    self.description_ = dict["Description"] as! String
                }
                if dict.keys.contains("Id") && dict["Id"] != nil {
                    self.id = dict["Id"] as! Int64
                }
                if dict.keys.contains("ModifiedTime") && dict["ModifiedTime"] != nil {
                    self.modifiedTime = dict["ModifiedTime"] as! String
                }
                if dict.keys.contains("Type") && dict["Type"] != nil {
                    self.type = dict["Type"] as! String
                }
                if dict.keys.contains("Uid") && dict["Uid"] != nil {
                    self.uid = dict["Uid"] as! Int64
                }
                if dict.keys.contains("Value") && dict["Value"] != nil {
                    self.value = dict["Value"] as! String
                }
            }
        }
        public var userWhiteListInfo: [DescribeUserWhiteListsResponseBody.UserWhiteListInfos.UserWhiteListInfo]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.userWhiteListInfo != nil {
                var tmp : [Any] = []
                for k in self.userWhiteListInfo! {
                    tmp.append(k.toMap())
                }
                map["UserWhiteListInfo"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("UserWhiteListInfo") && dict["UserWhiteListInfo"] != nil {
                var tmp : [DescribeUserWhiteListsResponseBody.UserWhiteListInfos.UserWhiteListInfo] = []
                for v in dict["UserWhiteListInfo"] as! [Any] {
                    var model = DescribeUserWhiteListsResponseBody.UserWhiteListInfos.UserWhiteListInfo()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.userWhiteListInfo = tmp
            }
        }
    }
    public var pageNumber: Int32?

    public var pageSize: Int32?

    public var requestId: String?

    public var totalCount: Int32?

    public var userWhiteListInfos: DescribeUserWhiteListsResponseBody.UserWhiteListInfos?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.userWhiteListInfos?.validate()
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
        if self.totalCount != nil {
            map["TotalCount"] = self.totalCount!
        }
        if self.userWhiteListInfos != nil {
            map["UserWhiteListInfos"] = self.userWhiteListInfos?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("PageNumber") && dict["PageNumber"] != nil {
            self.pageNumber = dict["PageNumber"] as! Int32
        }
        if dict.keys.contains("PageSize") && dict["PageSize"] != nil {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("TotalCount") && dict["TotalCount"] != nil {
            self.totalCount = dict["TotalCount"] as! Int32
        }
        if dict.keys.contains("UserWhiteListInfos") && dict["UserWhiteListInfos"] != nil {
            var model = DescribeUserWhiteListsResponseBody.UserWhiteListInfos()
            model.fromMap(dict["UserWhiteListInfos"] as! [String: Any])
            self.userWhiteListInfos = model
        }
    }
}

public class DescribeUserWhiteListsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeUserWhiteListsResponseBody?

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
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = DescribeUserWhiteListsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class IsIncludedByUserWhitelistRequest : Tea.TeaModel {
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
        if self.type != nil {
            map["Type"] = self.type!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Type") && dict["Type"] != nil {
            self.type = dict["Type"] as! String
        }
    }
}

public class IsIncludedByUserWhitelistResponseBody : Tea.TeaModel {
    public var isIncluded: Bool?

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
        if self.isIncluded != nil {
            map["IsIncluded"] = self.isIncluded!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("IsIncluded") && dict["IsIncluded"] != nil {
            self.isIncluded = dict["IsIncluded"] as! Bool
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class IsIncludedByUserWhitelistResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: IsIncludedByUserWhitelistResponseBody?

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
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = IsIncludedByUserWhitelistResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ModifyApiRequest : Tea.TeaModel {
    public var apiId: String?

    public var apiName: String?

    public var authType: String?

    public var bodyFormat: String?

    public var constantParameters: String?

    public var description_: String?

    public var groupId: String?

    public var httpMethod: String?

    public var httpProtocol: String?

    public var path: String?

    public var pathParameters: String?

    public var postBodyDescription: String?

    public var postBodyType: String?

    public var requestBody: String?

    public var requestHeaders: String?

    public var requestQueries: String?

    public var resultSample: String?

    public var resultType: String?

    public var serviceAddress: String?

    public var serviceProtocol: String?

    public var serviceTimeout: Int32?

    public var systemParameters: String?

    public var visibility: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.apiId != nil {
            map["ApiId"] = self.apiId!
        }
        if self.apiName != nil {
            map["ApiName"] = self.apiName!
        }
        if self.authType != nil {
            map["AuthType"] = self.authType!
        }
        if self.bodyFormat != nil {
            map["BodyFormat"] = self.bodyFormat!
        }
        if self.constantParameters != nil {
            map["ConstantParameters"] = self.constantParameters!
        }
        if self.description_ != nil {
            map["Description"] = self.description_!
        }
        if self.groupId != nil {
            map["GroupId"] = self.groupId!
        }
        if self.httpMethod != nil {
            map["HttpMethod"] = self.httpMethod!
        }
        if self.httpProtocol != nil {
            map["HttpProtocol"] = self.httpProtocol!
        }
        if self.path != nil {
            map["Path"] = self.path!
        }
        if self.pathParameters != nil {
            map["PathParameters"] = self.pathParameters!
        }
        if self.postBodyDescription != nil {
            map["PostBodyDescription"] = self.postBodyDescription!
        }
        if self.postBodyType != nil {
            map["PostBodyType"] = self.postBodyType!
        }
        if self.requestBody != nil {
            map["RequestBody"] = self.requestBody!
        }
        if self.requestHeaders != nil {
            map["RequestHeaders"] = self.requestHeaders!
        }
        if self.requestQueries != nil {
            map["RequestQueries"] = self.requestQueries!
        }
        if self.resultSample != nil {
            map["ResultSample"] = self.resultSample!
        }
        if self.resultType != nil {
            map["ResultType"] = self.resultType!
        }
        if self.serviceAddress != nil {
            map["ServiceAddress"] = self.serviceAddress!
        }
        if self.serviceProtocol != nil {
            map["ServiceProtocol"] = self.serviceProtocol!
        }
        if self.serviceTimeout != nil {
            map["ServiceTimeout"] = self.serviceTimeout!
        }
        if self.systemParameters != nil {
            map["SystemParameters"] = self.systemParameters!
        }
        if self.visibility != nil {
            map["Visibility"] = self.visibility!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ApiId") && dict["ApiId"] != nil {
            self.apiId = dict["ApiId"] as! String
        }
        if dict.keys.contains("ApiName") && dict["ApiName"] != nil {
            self.apiName = dict["ApiName"] as! String
        }
        if dict.keys.contains("AuthType") && dict["AuthType"] != nil {
            self.authType = dict["AuthType"] as! String
        }
        if dict.keys.contains("BodyFormat") && dict["BodyFormat"] != nil {
            self.bodyFormat = dict["BodyFormat"] as! String
        }
        if dict.keys.contains("ConstantParameters") && dict["ConstantParameters"] != nil {
            self.constantParameters = dict["ConstantParameters"] as! String
        }
        if dict.keys.contains("Description") && dict["Description"] != nil {
            self.description_ = dict["Description"] as! String
        }
        if dict.keys.contains("GroupId") && dict["GroupId"] != nil {
            self.groupId = dict["GroupId"] as! String
        }
        if dict.keys.contains("HttpMethod") && dict["HttpMethod"] != nil {
            self.httpMethod = dict["HttpMethod"] as! String
        }
        if dict.keys.contains("HttpProtocol") && dict["HttpProtocol"] != nil {
            self.httpProtocol = dict["HttpProtocol"] as! String
        }
        if dict.keys.contains("Path") && dict["Path"] != nil {
            self.path = dict["Path"] as! String
        }
        if dict.keys.contains("PathParameters") && dict["PathParameters"] != nil {
            self.pathParameters = dict["PathParameters"] as! String
        }
        if dict.keys.contains("PostBodyDescription") && dict["PostBodyDescription"] != nil {
            self.postBodyDescription = dict["PostBodyDescription"] as! String
        }
        if dict.keys.contains("PostBodyType") && dict["PostBodyType"] != nil {
            self.postBodyType = dict["PostBodyType"] as! String
        }
        if dict.keys.contains("RequestBody") && dict["RequestBody"] != nil {
            self.requestBody = dict["RequestBody"] as! String
        }
        if dict.keys.contains("RequestHeaders") && dict["RequestHeaders"] != nil {
            self.requestHeaders = dict["RequestHeaders"] as! String
        }
        if dict.keys.contains("RequestQueries") && dict["RequestQueries"] != nil {
            self.requestQueries = dict["RequestQueries"] as! String
        }
        if dict.keys.contains("ResultSample") && dict["ResultSample"] != nil {
            self.resultSample = dict["ResultSample"] as! String
        }
        if dict.keys.contains("ResultType") && dict["ResultType"] != nil {
            self.resultType = dict["ResultType"] as! String
        }
        if dict.keys.contains("ServiceAddress") && dict["ServiceAddress"] != nil {
            self.serviceAddress = dict["ServiceAddress"] as! String
        }
        if dict.keys.contains("ServiceProtocol") && dict["ServiceProtocol"] != nil {
            self.serviceProtocol = dict["ServiceProtocol"] as! String
        }
        if dict.keys.contains("ServiceTimeout") && dict["ServiceTimeout"] != nil {
            self.serviceTimeout = dict["ServiceTimeout"] as! Int32
        }
        if dict.keys.contains("SystemParameters") && dict["SystemParameters"] != nil {
            self.systemParameters = dict["SystemParameters"] as! String
        }
        if dict.keys.contains("Visibility") && dict["Visibility"] != nil {
            self.visibility = dict["Visibility"] as! String
        }
    }
}

public class ModifyApiResponseBody : Tea.TeaModel {
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
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class ModifyApiResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ModifyApiResponseBody?

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
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = ModifyApiResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ModifyApiForInnerRequest : Tea.TeaModel {
    public var aliUid: Int64?

    public var apiId: String?

    public var apiName: String?

    public var authType: String?

    public var description_: String?

    public var groupId: String?

    public var requestConfig: String?

    public var requestParamters: String?

    public var resultSample: String?

    public var resultType: String?

    public var serviceConfig: String?

    public var serviceParameters: String?

    public var serviceParametersMap: String?

    public var visibility: String?

    public override init() {
        super.init()
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
        if self.apiId != nil {
            map["ApiId"] = self.apiId!
        }
        if self.apiName != nil {
            map["ApiName"] = self.apiName!
        }
        if self.authType != nil {
            map["AuthType"] = self.authType!
        }
        if self.description_ != nil {
            map["Description"] = self.description_!
        }
        if self.groupId != nil {
            map["GroupId"] = self.groupId!
        }
        if self.requestConfig != nil {
            map["RequestConfig"] = self.requestConfig!
        }
        if self.requestParamters != nil {
            map["RequestParamters"] = self.requestParamters!
        }
        if self.resultSample != nil {
            map["ResultSample"] = self.resultSample!
        }
        if self.resultType != nil {
            map["ResultType"] = self.resultType!
        }
        if self.serviceConfig != nil {
            map["ServiceConfig"] = self.serviceConfig!
        }
        if self.serviceParameters != nil {
            map["ServiceParameters"] = self.serviceParameters!
        }
        if self.serviceParametersMap != nil {
            map["ServiceParametersMap"] = self.serviceParametersMap!
        }
        if self.visibility != nil {
            map["Visibility"] = self.visibility!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AliUid") && dict["AliUid"] != nil {
            self.aliUid = dict["AliUid"] as! Int64
        }
        if dict.keys.contains("ApiId") && dict["ApiId"] != nil {
            self.apiId = dict["ApiId"] as! String
        }
        if dict.keys.contains("ApiName") && dict["ApiName"] != nil {
            self.apiName = dict["ApiName"] as! String
        }
        if dict.keys.contains("AuthType") && dict["AuthType"] != nil {
            self.authType = dict["AuthType"] as! String
        }
        if dict.keys.contains("Description") && dict["Description"] != nil {
            self.description_ = dict["Description"] as! String
        }
        if dict.keys.contains("GroupId") && dict["GroupId"] != nil {
            self.groupId = dict["GroupId"] as! String
        }
        if dict.keys.contains("RequestConfig") && dict["RequestConfig"] != nil {
            self.requestConfig = dict["RequestConfig"] as! String
        }
        if dict.keys.contains("RequestParamters") && dict["RequestParamters"] != nil {
            self.requestParamters = dict["RequestParamters"] as! String
        }
        if dict.keys.contains("ResultSample") && dict["ResultSample"] != nil {
            self.resultSample = dict["ResultSample"] as! String
        }
        if dict.keys.contains("ResultType") && dict["ResultType"] != nil {
            self.resultType = dict["ResultType"] as! String
        }
        if dict.keys.contains("ServiceConfig") && dict["ServiceConfig"] != nil {
            self.serviceConfig = dict["ServiceConfig"] as! String
        }
        if dict.keys.contains("ServiceParameters") && dict["ServiceParameters"] != nil {
            self.serviceParameters = dict["ServiceParameters"] as! String
        }
        if dict.keys.contains("ServiceParametersMap") && dict["ServiceParametersMap"] != nil {
            self.serviceParametersMap = dict["ServiceParametersMap"] as! String
        }
        if dict.keys.contains("Visibility") && dict["Visibility"] != nil {
            self.visibility = dict["Visibility"] as! String
        }
    }
}

public class ModifyApiForInnerResponseBody : Tea.TeaModel {
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
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class ModifyApiForInnerResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ModifyApiForInnerResponseBody?

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
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = ModifyApiForInnerResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ModifyApiGroupRequest : Tea.TeaModel {
    public var description_: String?

    public var groupId: String?

    public var groupName: String?

    public override init() {
        super.init()
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
        if self.groupId != nil {
            map["GroupId"] = self.groupId!
        }
        if self.groupName != nil {
            map["GroupName"] = self.groupName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Description") && dict["Description"] != nil {
            self.description_ = dict["Description"] as! String
        }
        if dict.keys.contains("GroupId") && dict["GroupId"] != nil {
            self.groupId = dict["GroupId"] as! String
        }
        if dict.keys.contains("GroupName") && dict["GroupName"] != nil {
            self.groupName = dict["GroupName"] as! String
        }
    }
}

public class ModifyApiGroupResponseBody : Tea.TeaModel {
    public var description_: String?

    public var groupId: String?

    public var groupName: String?

    public var requestId: String?

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
        if self.description_ != nil {
            map["Description"] = self.description_!
        }
        if self.groupId != nil {
            map["GroupId"] = self.groupId!
        }
        if self.groupName != nil {
            map["GroupName"] = self.groupName!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.subDomain != nil {
            map["SubDomain"] = self.subDomain!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Description") && dict["Description"] != nil {
            self.description_ = dict["Description"] as! String
        }
        if dict.keys.contains("GroupId") && dict["GroupId"] != nil {
            self.groupId = dict["GroupId"] as! String
        }
        if dict.keys.contains("GroupName") && dict["GroupName"] != nil {
            self.groupName = dict["GroupName"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("SubDomain") && dict["SubDomain"] != nil {
            self.subDomain = dict["SubDomain"] as! String
        }
    }
}

public class ModifyApiGroupResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ModifyApiGroupResponseBody?

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
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = ModifyApiGroupResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ModifyApiMarketInstanceAttributeRequest : Tea.TeaModel {
    public var aliUid: String?

    public var groupId: String?

    public var instanceAttributes: String?

    public override init() {
        super.init()
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
        if self.groupId != nil {
            map["GroupId"] = self.groupId!
        }
        if self.instanceAttributes != nil {
            map["InstanceAttributes"] = self.instanceAttributes!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AliUid") && dict["AliUid"] != nil {
            self.aliUid = dict["AliUid"] as! String
        }
        if dict.keys.contains("GroupId") && dict["GroupId"] != nil {
            self.groupId = dict["GroupId"] as! String
        }
        if dict.keys.contains("InstanceAttributes") && dict["InstanceAttributes"] != nil {
            self.instanceAttributes = dict["InstanceAttributes"] as! String
        }
    }
}

public class ModifyApiMarketInstanceAttributeResponseBody : Tea.TeaModel {
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
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class ModifyApiMarketInstanceAttributeResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ModifyApiMarketInstanceAttributeResponseBody?

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
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = ModifyApiMarketInstanceAttributeResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ModifyAppRequest : Tea.TeaModel {
    public var appId: Int64?

    public var appName: String?

    public var description_: String?

    public override init() {
        super.init()
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
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AppId") && dict["AppId"] != nil {
            self.appId = dict["AppId"] as! Int64
        }
        if dict.keys.contains("AppName") && dict["AppName"] != nil {
            self.appName = dict["AppName"] as! String
        }
        if dict.keys.contains("Description") && dict["Description"] != nil {
            self.description_ = dict["Description"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
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
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = ModifyAppResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ModifyAppForInnerRequest : Tea.TeaModel {
    public var aliUid: Int64?

    public var appId: Int64?

    public var appName: String?

    public var description_: String?

    public var extend: String?

    public override init() {
        super.init()
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
        if self.appId != nil {
            map["AppId"] = self.appId!
        }
        if self.appName != nil {
            map["AppName"] = self.appName!
        }
        if self.description_ != nil {
            map["Description"] = self.description_!
        }
        if self.extend != nil {
            map["Extend"] = self.extend!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AliUid") && dict["AliUid"] != nil {
            self.aliUid = dict["AliUid"] as! Int64
        }
        if dict.keys.contains("AppId") && dict["AppId"] != nil {
            self.appId = dict["AppId"] as! Int64
        }
        if dict.keys.contains("AppName") && dict["AppName"] != nil {
            self.appName = dict["AppName"] as! String
        }
        if dict.keys.contains("Description") && dict["Description"] != nil {
            self.description_ = dict["Description"] as! String
        }
        if dict.keys.contains("Extend") && dict["Extend"] != nil {
            self.extend = dict["Extend"] as! String
        }
    }
}

public class ModifyAppForInnerResponseBody : Tea.TeaModel {
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
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class ModifyAppForInnerResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ModifyAppForInnerResponseBody?

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
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = ModifyAppForInnerResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ModifyGroupAuthAppCodeForBackendRequest : Tea.TeaModel {
    public var aliUid: Int64?

    public var authAppCode: String?

    public var groupId: String?

    public override init() {
        super.init()
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
        if self.authAppCode != nil {
            map["AuthAppCode"] = self.authAppCode!
        }
        if self.groupId != nil {
            map["GroupId"] = self.groupId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AliUid") && dict["AliUid"] != nil {
            self.aliUid = dict["AliUid"] as! Int64
        }
        if dict.keys.contains("AuthAppCode") && dict["AuthAppCode"] != nil {
            self.authAppCode = dict["AuthAppCode"] as! String
        }
        if dict.keys.contains("GroupId") && dict["GroupId"] != nil {
            self.groupId = dict["GroupId"] as! String
        }
    }
}

public class ModifyGroupAuthAppCodeForBackendResponseBody : Tea.TeaModel {
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
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class ModifyGroupAuthAppCodeForBackendResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ModifyGroupAuthAppCodeForBackendResponseBody?

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
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = ModifyGroupAuthAppCodeForBackendResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ModifySecretKeyRequest : Tea.TeaModel {
    public var secretKey: String?

    public var secretKeyId: String?

    public var secretKeyName: String?

    public var secretValue: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.secretKey != nil {
            map["SecretKey"] = self.secretKey!
        }
        if self.secretKeyId != nil {
            map["SecretKeyId"] = self.secretKeyId!
        }
        if self.secretKeyName != nil {
            map["SecretKeyName"] = self.secretKeyName!
        }
        if self.secretValue != nil {
            map["SecretValue"] = self.secretValue!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("SecretKey") && dict["SecretKey"] != nil {
            self.secretKey = dict["SecretKey"] as! String
        }
        if dict.keys.contains("SecretKeyId") && dict["SecretKeyId"] != nil {
            self.secretKeyId = dict["SecretKeyId"] as! String
        }
        if dict.keys.contains("SecretKeyName") && dict["SecretKeyName"] != nil {
            self.secretKeyName = dict["SecretKeyName"] as! String
        }
        if dict.keys.contains("SecretValue") && dict["SecretValue"] != nil {
            self.secretValue = dict["SecretValue"] as! String
        }
    }
}

public class ModifySecretKeyResponseBody : Tea.TeaModel {
    public var requestId: String?

    public var secretKeyId: String?

    public var secretKeyName: String?

    public override init() {
        super.init()
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
        if self.secretKeyId != nil {
            map["SecretKeyId"] = self.secretKeyId!
        }
        if self.secretKeyName != nil {
            map["SecretKeyName"] = self.secretKeyName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("SecretKeyId") && dict["SecretKeyId"] != nil {
            self.secretKeyId = dict["SecretKeyId"] as! String
        }
        if dict.keys.contains("SecretKeyName") && dict["SecretKeyName"] != nil {
            self.secretKeyName = dict["SecretKeyName"] as! String
        }
    }
}

public class ModifySecretKeyResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ModifySecretKeyResponseBody?

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
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = ModifySecretKeyResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ModifyTrafficControlRequest : Tea.TeaModel {
    public var apiDefault: Int32?

    public var appDefault: Int32?

    public var description_: String?

    public var trafficControlId: String?

    public var trafficControlName: String?

    public var trafficControlUnit: String?

    public var userDefault: Int32?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.apiDefault != nil {
            map["ApiDefault"] = self.apiDefault!
        }
        if self.appDefault != nil {
            map["AppDefault"] = self.appDefault!
        }
        if self.description_ != nil {
            map["Description"] = self.description_!
        }
        if self.trafficControlId != nil {
            map["TrafficControlId"] = self.trafficControlId!
        }
        if self.trafficControlName != nil {
            map["TrafficControlName"] = self.trafficControlName!
        }
        if self.trafficControlUnit != nil {
            map["TrafficControlUnit"] = self.trafficControlUnit!
        }
        if self.userDefault != nil {
            map["UserDefault"] = self.userDefault!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ApiDefault") && dict["ApiDefault"] != nil {
            self.apiDefault = dict["ApiDefault"] as! Int32
        }
        if dict.keys.contains("AppDefault") && dict["AppDefault"] != nil {
            self.appDefault = dict["AppDefault"] as! Int32
        }
        if dict.keys.contains("Description") && dict["Description"] != nil {
            self.description_ = dict["Description"] as! String
        }
        if dict.keys.contains("TrafficControlId") && dict["TrafficControlId"] != nil {
            self.trafficControlId = dict["TrafficControlId"] as! String
        }
        if dict.keys.contains("TrafficControlName") && dict["TrafficControlName"] != nil {
            self.trafficControlName = dict["TrafficControlName"] as! String
        }
        if dict.keys.contains("TrafficControlUnit") && dict["TrafficControlUnit"] != nil {
            self.trafficControlUnit = dict["TrafficControlUnit"] as! String
        }
        if dict.keys.contains("UserDefault") && dict["UserDefault"] != nil {
            self.userDefault = dict["UserDefault"] as! Int32
        }
    }
}

public class ModifyTrafficControlResponseBody : Tea.TeaModel {
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
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class ModifyTrafficControlResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ModifyTrafficControlResponseBody?

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
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = ModifyTrafficControlResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ModifyUserWhiteListValueByTypeRequest : Tea.TeaModel {
    public var description_: String?

    public var type: String?

    public var uid: Int64?

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
        if self.description_ != nil {
            map["Description"] = self.description_!
        }
        if self.type != nil {
            map["Type"] = self.type!
        }
        if self.uid != nil {
            map["Uid"] = self.uid!
        }
        if self.value != nil {
            map["Value"] = self.value!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Description") && dict["Description"] != nil {
            self.description_ = dict["Description"] as! String
        }
        if dict.keys.contains("Type") && dict["Type"] != nil {
            self.type = dict["Type"] as! String
        }
        if dict.keys.contains("Uid") && dict["Uid"] != nil {
            self.uid = dict["Uid"] as! Int64
        }
        if dict.keys.contains("Value") && dict["Value"] != nil {
            self.value = dict["Value"] as! String
        }
    }
}

public class ModifyUserWhiteListValueByTypeResponseBody : Tea.TeaModel {
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
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class ModifyUserWhiteListValueByTypeResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ModifyUserWhiteListValueByTypeResponseBody?

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
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = ModifyUserWhiteListValueByTypeResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ReactivateDomainForBackendRequest : Tea.TeaModel {
    public var aliuid: Int64?

    public var domainName: String?

    public var groupId: String?

    public override init() {
        super.init()
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
        if self.domainName != nil {
            map["DomainName"] = self.domainName!
        }
        if self.groupId != nil {
            map["GroupId"] = self.groupId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Aliuid") && dict["Aliuid"] != nil {
            self.aliuid = dict["Aliuid"] as! Int64
        }
        if dict.keys.contains("DomainName") && dict["DomainName"] != nil {
            self.domainName = dict["DomainName"] as! String
        }
        if dict.keys.contains("GroupId") && dict["GroupId"] != nil {
            self.groupId = dict["GroupId"] as! String
        }
    }
}

public class ReactivateDomainForBackendResponseBody : Tea.TeaModel {
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
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class ReactivateDomainForBackendResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ReactivateDomainForBackendResponseBody?

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
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = ReactivateDomainForBackendResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class RecoverApiFromHistoricalRequest : Tea.TeaModel {
    public var apiId: String?

    public var groupId: String?

    public var historyVersion: String?

    public var stageName: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.apiId != nil {
            map["ApiId"] = self.apiId!
        }
        if self.groupId != nil {
            map["GroupId"] = self.groupId!
        }
        if self.historyVersion != nil {
            map["HistoryVersion"] = self.historyVersion!
        }
        if self.stageName != nil {
            map["StageName"] = self.stageName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ApiId") && dict["ApiId"] != nil {
            self.apiId = dict["ApiId"] as! String
        }
        if dict.keys.contains("GroupId") && dict["GroupId"] != nil {
            self.groupId = dict["GroupId"] as! String
        }
        if dict.keys.contains("HistoryVersion") && dict["HistoryVersion"] != nil {
            self.historyVersion = dict["HistoryVersion"] as! String
        }
        if dict.keys.contains("StageName") && dict["StageName"] != nil {
            self.stageName = dict["StageName"] as! String
        }
    }
}

public class RecoverApiFromHistoricalResponseBody : Tea.TeaModel {
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
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class RecoverApiFromHistoricalResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: RecoverApiFromHistoricalResponseBody?

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
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = RecoverApiFromHistoricalResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class RecoveryApiDefineFromHistoricalRequest : Tea.TeaModel {
    public var apiId: String?

    public var groupId: String?

    public var historyVersion: String?

    public var stageName: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.apiId != nil {
            map["ApiId"] = self.apiId!
        }
        if self.groupId != nil {
            map["GroupId"] = self.groupId!
        }
        if self.historyVersion != nil {
            map["HistoryVersion"] = self.historyVersion!
        }
        if self.stageName != nil {
            map["StageName"] = self.stageName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ApiId") && dict["ApiId"] != nil {
            self.apiId = dict["ApiId"] as! String
        }
        if dict.keys.contains("GroupId") && dict["GroupId"] != nil {
            self.groupId = dict["GroupId"] as! String
        }
        if dict.keys.contains("HistoryVersion") && dict["HistoryVersion"] != nil {
            self.historyVersion = dict["HistoryVersion"] as! String
        }
        if dict.keys.contains("StageName") && dict["StageName"] != nil {
            self.stageName = dict["StageName"] as! String
        }
    }
}

public class RecoveryApiDefineFromHistoricalResponseBody : Tea.TeaModel {
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
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class RecoveryApiDefineFromHistoricalResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: RecoveryApiDefineFromHistoricalResponseBody?

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
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = RecoveryApiDefineFromHistoricalResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class RecoveryApiFromHistoricalRequest : Tea.TeaModel {
    public var apiId: String?

    public var groupId: String?

    public var historyVersion: String?

    public var stageName: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.apiId != nil {
            map["ApiId"] = self.apiId!
        }
        if self.groupId != nil {
            map["GroupId"] = self.groupId!
        }
        if self.historyVersion != nil {
            map["HistoryVersion"] = self.historyVersion!
        }
        if self.stageName != nil {
            map["StageName"] = self.stageName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ApiId") && dict["ApiId"] != nil {
            self.apiId = dict["ApiId"] as! String
        }
        if dict.keys.contains("GroupId") && dict["GroupId"] != nil {
            self.groupId = dict["GroupId"] as! String
        }
        if dict.keys.contains("HistoryVersion") && dict["HistoryVersion"] != nil {
            self.historyVersion = dict["HistoryVersion"] as! String
        }
        if dict.keys.contains("StageName") && dict["StageName"] != nil {
            self.stageName = dict["StageName"] as! String
        }
    }
}

public class RecoveryApiFromHistoricalResponseBody : Tea.TeaModel {
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
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class RecoveryApiFromHistoricalResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: RecoveryApiFromHistoricalResponseBody?

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
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = RecoveryApiFromHistoricalResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class RefreshDomainRequest : Tea.TeaModel {
    public var domainName: String?

    public var groupId: String?

    public override init() {
        super.init()
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
        if self.groupId != nil {
            map["GroupId"] = self.groupId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DomainName") && dict["DomainName"] != nil {
            self.domainName = dict["DomainName"] as! String
        }
        if dict.keys.contains("GroupId") && dict["GroupId"] != nil {
            self.groupId = dict["GroupId"] as! String
        }
    }
}

public class RefreshDomainResponseBody : Tea.TeaModel {
    public var certificateId: String?

    public var certificateName: String?

    public var domainName: String?

    public var domainNameResolution: String?

    public var domainStatus: String?

    public var groupId: String?

    public var requestId: String?

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
        if self.certificateId != nil {
            map["CertificateId"] = self.certificateId!
        }
        if self.certificateName != nil {
            map["CertificateName"] = self.certificateName!
        }
        if self.domainName != nil {
            map["DomainName"] = self.domainName!
        }
        if self.domainNameResolution != nil {
            map["DomainNameResolution"] = self.domainNameResolution!
        }
        if self.domainStatus != nil {
            map["DomainStatus"] = self.domainStatus!
        }
        if self.groupId != nil {
            map["GroupId"] = self.groupId!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.subDomain != nil {
            map["SubDomain"] = self.subDomain!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("CertificateId") && dict["CertificateId"] != nil {
            self.certificateId = dict["CertificateId"] as! String
        }
        if dict.keys.contains("CertificateName") && dict["CertificateName"] != nil {
            self.certificateName = dict["CertificateName"] as! String
        }
        if dict.keys.contains("DomainName") && dict["DomainName"] != nil {
            self.domainName = dict["DomainName"] as! String
        }
        if dict.keys.contains("DomainNameResolution") && dict["DomainNameResolution"] != nil {
            self.domainNameResolution = dict["DomainNameResolution"] as! String
        }
        if dict.keys.contains("DomainStatus") && dict["DomainStatus"] != nil {
            self.domainStatus = dict["DomainStatus"] as! String
        }
        if dict.keys.contains("GroupId") && dict["GroupId"] != nil {
            self.groupId = dict["GroupId"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("SubDomain") && dict["SubDomain"] != nil {
            self.subDomain = dict["SubDomain"] as! String
        }
    }
}

public class RefreshDomainResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: RefreshDomainResponseBody?

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
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = RefreshDomainResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class RemoveAccessPermissionByApisRequest : Tea.TeaModel {
    public var apiIds: String?

    public var appId: Int64?

    public var description_: String?

    public var groupId: String?

    public var stageName: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.apiIds != nil {
            map["ApiIds"] = self.apiIds!
        }
        if self.appId != nil {
            map["AppId"] = self.appId!
        }
        if self.description_ != nil {
            map["Description"] = self.description_!
        }
        if self.groupId != nil {
            map["GroupId"] = self.groupId!
        }
        if self.stageName != nil {
            map["StageName"] = self.stageName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ApiIds") && dict["ApiIds"] != nil {
            self.apiIds = dict["ApiIds"] as! String
        }
        if dict.keys.contains("AppId") && dict["AppId"] != nil {
            self.appId = dict["AppId"] as! Int64
        }
        if dict.keys.contains("Description") && dict["Description"] != nil {
            self.description_ = dict["Description"] as! String
        }
        if dict.keys.contains("GroupId") && dict["GroupId"] != nil {
            self.groupId = dict["GroupId"] as! String
        }
        if dict.keys.contains("StageName") && dict["StageName"] != nil {
            self.stageName = dict["StageName"] as! String
        }
    }
}

public class RemoveAccessPermissionByApisResponseBody : Tea.TeaModel {
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
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class RemoveAccessPermissionByApisResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: RemoveAccessPermissionByApisResponseBody?

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
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = RemoveAccessPermissionByApisResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class RemoveAccessPermissionByAppsRequest : Tea.TeaModel {
    public var apiId: String?

    public var appIds: String?

    public var groupId: String?

    public var stageName: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.apiId != nil {
            map["ApiId"] = self.apiId!
        }
        if self.appIds != nil {
            map["AppIds"] = self.appIds!
        }
        if self.groupId != nil {
            map["GroupId"] = self.groupId!
        }
        if self.stageName != nil {
            map["StageName"] = self.stageName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ApiId") && dict["ApiId"] != nil {
            self.apiId = dict["ApiId"] as! String
        }
        if dict.keys.contains("AppIds") && dict["AppIds"] != nil {
            self.appIds = dict["AppIds"] as! String
        }
        if dict.keys.contains("GroupId") && dict["GroupId"] != nil {
            self.groupId = dict["GroupId"] as! String
        }
        if dict.keys.contains("StageName") && dict["StageName"] != nil {
            self.stageName = dict["StageName"] as! String
        }
    }
}

public class RemoveAccessPermissionByAppsResponseBody : Tea.TeaModel {
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
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class RemoveAccessPermissionByAppsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: RemoveAccessPermissionByAppsResponseBody?

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
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = RemoveAccessPermissionByAppsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class RemoveAccessPermissionByAppsForInnerRequest : Tea.TeaModel {
    public var aliUid: Int64?

    public var apiId: String?

    public var appIds: String?

    public var groupId: String?

    public var source: String?

    public var stageName: String?

    public override init() {
        super.init()
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
        if self.apiId != nil {
            map["ApiId"] = self.apiId!
        }
        if self.appIds != nil {
            map["AppIds"] = self.appIds!
        }
        if self.groupId != nil {
            map["GroupId"] = self.groupId!
        }
        if self.source != nil {
            map["Source"] = self.source!
        }
        if self.stageName != nil {
            map["StageName"] = self.stageName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AliUid") && dict["AliUid"] != nil {
            self.aliUid = dict["AliUid"] as! Int64
        }
        if dict.keys.contains("ApiId") && dict["ApiId"] != nil {
            self.apiId = dict["ApiId"] as! String
        }
        if dict.keys.contains("AppIds") && dict["AppIds"] != nil {
            self.appIds = dict["AppIds"] as! String
        }
        if dict.keys.contains("GroupId") && dict["GroupId"] != nil {
            self.groupId = dict["GroupId"] as! String
        }
        if dict.keys.contains("Source") && dict["Source"] != nil {
            self.source = dict["Source"] as! String
        }
        if dict.keys.contains("StageName") && dict["StageName"] != nil {
            self.stageName = dict["StageName"] as! String
        }
    }
}

public class RemoveAccessPermissionByAppsForInnerResponseBody : Tea.TeaModel {
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
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class RemoveAccessPermissionByAppsForInnerResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: RemoveAccessPermissionByAppsForInnerResponseBody?

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
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = RemoveAccessPermissionByAppsForInnerResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class RemoveAllBlackListRequest : Tea.TeaModel {
    public var blackType: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.blackType != nil {
            map["BlackType"] = self.blackType!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("BlackType") && dict["BlackType"] != nil {
            self.blackType = dict["BlackType"] as! String
        }
    }
}

public class RemoveAllBlackListResponseBody : Tea.TeaModel {
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
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class RemoveAllBlackListResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: RemoveAllBlackListResponseBody?

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
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = RemoveAllBlackListResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class RemoveApiRuleRequest : Tea.TeaModel {
    public var apiIds: String?

    public var groupId: String?

    public var ruleId: String?

    public var ruleType: String?

    public var stageName: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.apiIds != nil {
            map["ApiIds"] = self.apiIds!
        }
        if self.groupId != nil {
            map["GroupId"] = self.groupId!
        }
        if self.ruleId != nil {
            map["RuleId"] = self.ruleId!
        }
        if self.ruleType != nil {
            map["RuleType"] = self.ruleType!
        }
        if self.stageName != nil {
            map["StageName"] = self.stageName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ApiIds") && dict["ApiIds"] != nil {
            self.apiIds = dict["ApiIds"] as! String
        }
        if dict.keys.contains("GroupId") && dict["GroupId"] != nil {
            self.groupId = dict["GroupId"] as! String
        }
        if dict.keys.contains("RuleId") && dict["RuleId"] != nil {
            self.ruleId = dict["RuleId"] as! String
        }
        if dict.keys.contains("RuleType") && dict["RuleType"] != nil {
            self.ruleType = dict["RuleType"] as! String
        }
        if dict.keys.contains("StageName") && dict["StageName"] != nil {
            self.stageName = dict["StageName"] as! String
        }
    }
}

public class RemoveApiRuleResponseBody : Tea.TeaModel {
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
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class RemoveApiRuleResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: RemoveApiRuleResponseBody?

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
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = RemoveApiRuleResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class RemoveAppsFromApiRequest : Tea.TeaModel {
    public var apiId: String?

    public var appIds: String?

    public var groupId: String?

    public var stageName: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.apiId != nil {
            map["ApiId"] = self.apiId!
        }
        if self.appIds != nil {
            map["AppIds"] = self.appIds!
        }
        if self.groupId != nil {
            map["GroupId"] = self.groupId!
        }
        if self.stageName != nil {
            map["StageName"] = self.stageName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ApiId") && dict["ApiId"] != nil {
            self.apiId = dict["ApiId"] as! String
        }
        if dict.keys.contains("AppIds") && dict["AppIds"] != nil {
            self.appIds = dict["AppIds"] as! String
        }
        if dict.keys.contains("GroupId") && dict["GroupId"] != nil {
            self.groupId = dict["GroupId"] as! String
        }
        if dict.keys.contains("StageName") && dict["StageName"] != nil {
            self.stageName = dict["StageName"] as! String
        }
    }
}

public class RemoveAppsFromApiResponseBody : Tea.TeaModel {
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
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class RemoveAppsFromApiResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: RemoveAppsFromApiResponseBody?

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
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = RemoveAppsFromApiResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class RemoveBlackListRequest : Tea.TeaModel {
    public var blackContent: String?

    public var blackType: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.blackContent != nil {
            map["BlackContent"] = self.blackContent!
        }
        if self.blackType != nil {
            map["BlackType"] = self.blackType!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("BlackContent") && dict["BlackContent"] != nil {
            self.blackContent = dict["BlackContent"] as! String
        }
        if dict.keys.contains("BlackType") && dict["BlackType"] != nil {
            self.blackType = dict["BlackType"] as! String
        }
    }
}

public class RemoveBlackListResponseBody : Tea.TeaModel {
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
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class RemoveBlackListResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: RemoveBlackListResponseBody?

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
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = RemoveBlackListResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ResetAppCodeRequest : Tea.TeaModel {
    public var appCode: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.appCode != nil {
            map["AppCode"] = self.appCode!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AppCode") && dict["AppCode"] != nil {
            self.appCode = dict["AppCode"] as! String
        }
    }
}

public class ResetAppCodeResponseBody : Tea.TeaModel {
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
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class ResetAppCodeResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ResetAppCodeResponseBody?

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
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = ResetAppCodeResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ResetAppCodeForInnerRequest : Tea.TeaModel {
    public var aliUid: Int64?

    public var appCode: String?

    public var newAppCode: String?

    public override init() {
        super.init()
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
        if self.appCode != nil {
            map["AppCode"] = self.appCode!
        }
        if self.newAppCode != nil {
            map["NewAppCode"] = self.newAppCode!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AliUid") && dict["AliUid"] != nil {
            self.aliUid = dict["AliUid"] as! Int64
        }
        if dict.keys.contains("AppCode") && dict["AppCode"] != nil {
            self.appCode = dict["AppCode"] as! String
        }
        if dict.keys.contains("NewAppCode") && dict["NewAppCode"] != nil {
            self.newAppCode = dict["NewAppCode"] as! String
        }
    }
}

public class ResetAppCodeForInnerResponseBody : Tea.TeaModel {
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
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class ResetAppCodeForInnerResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ResetAppCodeForInnerResponseBody?

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
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = ResetAppCodeForInnerResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ResetAppKeySecretRequest : Tea.TeaModel {
    public var appKey: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.appKey != nil {
            map["AppKey"] = self.appKey!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AppKey") && dict["AppKey"] != nil {
            self.appKey = dict["AppKey"] as! String
        }
    }
}

public class ResetAppKeySecretResponseBody : Tea.TeaModel {
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
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class ResetAppKeySecretResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ResetAppKeySecretResponseBody?

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
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = ResetAppKeySecretResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ResetSecretByAppKeyForInnerRequest : Tea.TeaModel {
    public var aliUid: Int64?

    public var appKey: String?

    public var newAppKey: String?

    public var newAppSecret: String?

    public override init() {
        super.init()
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
        if self.appKey != nil {
            map["AppKey"] = self.appKey!
        }
        if self.newAppKey != nil {
            map["NewAppKey"] = self.newAppKey!
        }
        if self.newAppSecret != nil {
            map["NewAppSecret"] = self.newAppSecret!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AliUid") && dict["AliUid"] != nil {
            self.aliUid = dict["AliUid"] as! Int64
        }
        if dict.keys.contains("AppKey") && dict["AppKey"] != nil {
            self.appKey = dict["AppKey"] as! String
        }
        if dict.keys.contains("NewAppKey") && dict["NewAppKey"] != nil {
            self.newAppKey = dict["NewAppKey"] as! String
        }
        if dict.keys.contains("NewAppSecret") && dict["NewAppSecret"] != nil {
            self.newAppSecret = dict["NewAppSecret"] as! String
        }
    }
}

public class ResetSecretByAppKeyForInnerResponseBody : Tea.TeaModel {
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
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class ResetSecretByAppKeyForInnerResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ResetSecretByAppKeyForInnerResponseBody?

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
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = ResetSecretByAppKeyForInnerResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class SetAccessPermissionByApisRequest : Tea.TeaModel {
    public var apiIds: String?

    public var appId: Int64?

    public var description_: String?

    public var groupId: String?

    public var stageName: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.apiIds != nil {
            map["ApiIds"] = self.apiIds!
        }
        if self.appId != nil {
            map["AppId"] = self.appId!
        }
        if self.description_ != nil {
            map["Description"] = self.description_!
        }
        if self.groupId != nil {
            map["GroupId"] = self.groupId!
        }
        if self.stageName != nil {
            map["StageName"] = self.stageName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ApiIds") && dict["ApiIds"] != nil {
            self.apiIds = dict["ApiIds"] as! String
        }
        if dict.keys.contains("AppId") && dict["AppId"] != nil {
            self.appId = dict["AppId"] as! Int64
        }
        if dict.keys.contains("Description") && dict["Description"] != nil {
            self.description_ = dict["Description"] as! String
        }
        if dict.keys.contains("GroupId") && dict["GroupId"] != nil {
            self.groupId = dict["GroupId"] as! String
        }
        if dict.keys.contains("StageName") && dict["StageName"] != nil {
            self.stageName = dict["StageName"] as! String
        }
    }
}

public class SetAccessPermissionByApisResponseBody : Tea.TeaModel {
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
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class SetAccessPermissionByApisResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: SetAccessPermissionByApisResponseBody?

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
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = SetAccessPermissionByApisResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class SetAccessPermissionByGroupForBackendRequest : Tea.TeaModel {
    public var appId: Int64?

    public var groupId: String?

    public override init() {
        super.init()
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
        if self.groupId != nil {
            map["GroupId"] = self.groupId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AppId") && dict["AppId"] != nil {
            self.appId = dict["AppId"] as! Int64
        }
        if dict.keys.contains("GroupId") && dict["GroupId"] != nil {
            self.groupId = dict["GroupId"] as! String
        }
    }
}

public class SetAccessPermissionByGroupForBackendResponseBody : Tea.TeaModel {
    public var instanceId: String?

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
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("InstanceId") && dict["InstanceId"] != nil {
            self.instanceId = dict["InstanceId"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class SetAccessPermissionByGroupForBackendResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: SetAccessPermissionByGroupForBackendResponseBody?

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
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = SetAccessPermissionByGroupForBackendResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class SetAccessPermissionsRequest : Tea.TeaModel {
    public var apiId: String?

    public var appIds: String?

    public var description_: String?

    public var groupId: String?

    public var stageName: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.apiId != nil {
            map["ApiId"] = self.apiId!
        }
        if self.appIds != nil {
            map["AppIds"] = self.appIds!
        }
        if self.description_ != nil {
            map["Description"] = self.description_!
        }
        if self.groupId != nil {
            map["GroupId"] = self.groupId!
        }
        if self.stageName != nil {
            map["StageName"] = self.stageName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ApiId") && dict["ApiId"] != nil {
            self.apiId = dict["ApiId"] as! String
        }
        if dict.keys.contains("AppIds") && dict["AppIds"] != nil {
            self.appIds = dict["AppIds"] as! String
        }
        if dict.keys.contains("Description") && dict["Description"] != nil {
            self.description_ = dict["Description"] as! String
        }
        if dict.keys.contains("GroupId") && dict["GroupId"] != nil {
            self.groupId = dict["GroupId"] as! String
        }
        if dict.keys.contains("StageName") && dict["StageName"] != nil {
            self.stageName = dict["StageName"] as! String
        }
    }
}

public class SetAccessPermissionsResponseBody : Tea.TeaModel {
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
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class SetAccessPermissionsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: SetAccessPermissionsResponseBody?

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
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = SetAccessPermissionsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class SetAccessPermissionsForInnerRequest : Tea.TeaModel {
    public var aliUid: Int64?

    public var apiId: String?

    public var appIds: String?

    public var description_: String?

    public var groupId: String?

    public var source: String?

    public var stageName: String?

    public override init() {
        super.init()
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
        if self.apiId != nil {
            map["ApiId"] = self.apiId!
        }
        if self.appIds != nil {
            map["AppIds"] = self.appIds!
        }
        if self.description_ != nil {
            map["Description"] = self.description_!
        }
        if self.groupId != nil {
            map["GroupId"] = self.groupId!
        }
        if self.source != nil {
            map["Source"] = self.source!
        }
        if self.stageName != nil {
            map["StageName"] = self.stageName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AliUid") && dict["AliUid"] != nil {
            self.aliUid = dict["AliUid"] as! Int64
        }
        if dict.keys.contains("ApiId") && dict["ApiId"] != nil {
            self.apiId = dict["ApiId"] as! String
        }
        if dict.keys.contains("AppIds") && dict["AppIds"] != nil {
            self.appIds = dict["AppIds"] as! String
        }
        if dict.keys.contains("Description") && dict["Description"] != nil {
            self.description_ = dict["Description"] as! String
        }
        if dict.keys.contains("GroupId") && dict["GroupId"] != nil {
            self.groupId = dict["GroupId"] as! String
        }
        if dict.keys.contains("Source") && dict["Source"] != nil {
            self.source = dict["Source"] as! String
        }
        if dict.keys.contains("StageName") && dict["StageName"] != nil {
            self.stageName = dict["StageName"] as! String
        }
    }
}

public class SetAccessPermissionsForInnerResponseBody : Tea.TeaModel {
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
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class SetAccessPermissionsForInnerResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: SetAccessPermissionsForInnerResponseBody?

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
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = SetAccessPermissionsForInnerResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class SetApiRuleRequest : Tea.TeaModel {
    public var apiIds: String?

    public var groupId: String?

    public var ruleId: String?

    public var ruleType: String?

    public var stageName: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.apiIds != nil {
            map["ApiIds"] = self.apiIds!
        }
        if self.groupId != nil {
            map["GroupId"] = self.groupId!
        }
        if self.ruleId != nil {
            map["RuleId"] = self.ruleId!
        }
        if self.ruleType != nil {
            map["RuleType"] = self.ruleType!
        }
        if self.stageName != nil {
            map["StageName"] = self.stageName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ApiIds") && dict["ApiIds"] != nil {
            self.apiIds = dict["ApiIds"] as! String
        }
        if dict.keys.contains("GroupId") && dict["GroupId"] != nil {
            self.groupId = dict["GroupId"] as! String
        }
        if dict.keys.contains("RuleId") && dict["RuleId"] != nil {
            self.ruleId = dict["RuleId"] as! String
        }
        if dict.keys.contains("RuleType") && dict["RuleType"] != nil {
            self.ruleType = dict["RuleType"] as! String
        }
        if dict.keys.contains("StageName") && dict["StageName"] != nil {
            self.stageName = dict["StageName"] as! String
        }
    }
}

public class SetApiRuleResponseBody : Tea.TeaModel {
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
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class SetApiRuleResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: SetApiRuleResponseBody?

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
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = SetApiRuleResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class SetDomainRequest : Tea.TeaModel {
    public var certificateBody: String?

    public var certificateName: String?

    public var domainName: String?

    public var groupId: String?

    public var privateKey: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.certificateBody != nil {
            map["CertificateBody"] = self.certificateBody!
        }
        if self.certificateName != nil {
            map["CertificateName"] = self.certificateName!
        }
        if self.domainName != nil {
            map["DomainName"] = self.domainName!
        }
        if self.groupId != nil {
            map["GroupId"] = self.groupId!
        }
        if self.privateKey != nil {
            map["PrivateKey"] = self.privateKey!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("CertificateBody") && dict["CertificateBody"] != nil {
            self.certificateBody = dict["CertificateBody"] as! String
        }
        if dict.keys.contains("CertificateName") && dict["CertificateName"] != nil {
            self.certificateName = dict["CertificateName"] as! String
        }
        if dict.keys.contains("DomainName") && dict["DomainName"] != nil {
            self.domainName = dict["DomainName"] as! String
        }
        if dict.keys.contains("GroupId") && dict["GroupId"] != nil {
            self.groupId = dict["GroupId"] as! String
        }
        if dict.keys.contains("PrivateKey") && dict["PrivateKey"] != nil {
            self.privateKey = dict["PrivateKey"] as! String
        }
    }
}

public class SetDomainResponseBody : Tea.TeaModel {
    public var domainName: String?

    public var domainStatus: String?

    public var groupId: String?

    public var requestId: String?

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
        if self.domainStatus != nil {
            map["DomainStatus"] = self.domainStatus!
        }
        if self.groupId != nil {
            map["GroupId"] = self.groupId!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.subDomain != nil {
            map["SubDomain"] = self.subDomain!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DomainName") && dict["DomainName"] != nil {
            self.domainName = dict["DomainName"] as! String
        }
        if dict.keys.contains("DomainStatus") && dict["DomainStatus"] != nil {
            self.domainStatus = dict["DomainStatus"] as! String
        }
        if dict.keys.contains("GroupId") && dict["GroupId"] != nil {
            self.groupId = dict["GroupId"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("SubDomain") && dict["SubDomain"] != nil {
            self.subDomain = dict["SubDomain"] as! String
        }
    }
}

public class SetDomainResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: SetDomainResponseBody?

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
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = SetDomainResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class SetDomainCertificateRequest : Tea.TeaModel {
    public var certificateBody: String?

    public var certificateName: String?

    public var domainName: String?

    public var groupId: String?

    public var privateKey: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.certificateBody != nil {
            map["CertificateBody"] = self.certificateBody!
        }
        if self.certificateName != nil {
            map["CertificateName"] = self.certificateName!
        }
        if self.domainName != nil {
            map["DomainName"] = self.domainName!
        }
        if self.groupId != nil {
            map["GroupId"] = self.groupId!
        }
        if self.privateKey != nil {
            map["PrivateKey"] = self.privateKey!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("CertificateBody") && dict["CertificateBody"] != nil {
            self.certificateBody = dict["CertificateBody"] as! String
        }
        if dict.keys.contains("CertificateName") && dict["CertificateName"] != nil {
            self.certificateName = dict["CertificateName"] as! String
        }
        if dict.keys.contains("DomainName") && dict["DomainName"] != nil {
            self.domainName = dict["DomainName"] as! String
        }
        if dict.keys.contains("GroupId") && dict["GroupId"] != nil {
            self.groupId = dict["GroupId"] as! String
        }
        if dict.keys.contains("PrivateKey") && dict["PrivateKey"] != nil {
            self.privateKey = dict["PrivateKey"] as! String
        }
    }
}

public class SetDomainCertificateResponseBody : Tea.TeaModel {
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
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class SetDomainCertificateResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: SetDomainCertificateResponseBody?

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
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = SetDomainCertificateResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class SetDomainForBackendRequest : Tea.TeaModel {
    public var certificateBody: String?

    public var certificateName: String?

    public var certificatePrivateKey: String?

    public var domainName: String?

    public var groupId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.certificateBody != nil {
            map["CertificateBody"] = self.certificateBody!
        }
        if self.certificateName != nil {
            map["CertificateName"] = self.certificateName!
        }
        if self.certificatePrivateKey != nil {
            map["CertificatePrivateKey"] = self.certificatePrivateKey!
        }
        if self.domainName != nil {
            map["DomainName"] = self.domainName!
        }
        if self.groupId != nil {
            map["GroupId"] = self.groupId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("CertificateBody") && dict["CertificateBody"] != nil {
            self.certificateBody = dict["CertificateBody"] as! String
        }
        if dict.keys.contains("CertificateName") && dict["CertificateName"] != nil {
            self.certificateName = dict["CertificateName"] as! String
        }
        if dict.keys.contains("CertificatePrivateKey") && dict["CertificatePrivateKey"] != nil {
            self.certificatePrivateKey = dict["CertificatePrivateKey"] as! String
        }
        if dict.keys.contains("DomainName") && dict["DomainName"] != nil {
            self.domainName = dict["DomainName"] as! String
        }
        if dict.keys.contains("GroupId") && dict["GroupId"] != nil {
            self.groupId = dict["GroupId"] as! String
        }
    }
}

public class SetDomainForBackendResponseBody : Tea.TeaModel {
    public var domainBindingStatus: String?

    public var domainName: String?

    public var groupId: String?

    public var requestId: String?

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
        if self.domainBindingStatus != nil {
            map["DomainBindingStatus"] = self.domainBindingStatus!
        }
        if self.domainName != nil {
            map["DomainName"] = self.domainName!
        }
        if self.groupId != nil {
            map["GroupId"] = self.groupId!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.subDomain != nil {
            map["SubDomain"] = self.subDomain!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DomainBindingStatus") && dict["DomainBindingStatus"] != nil {
            self.domainBindingStatus = dict["DomainBindingStatus"] as! String
        }
        if dict.keys.contains("DomainName") && dict["DomainName"] != nil {
            self.domainName = dict["DomainName"] as! String
        }
        if dict.keys.contains("GroupId") && dict["GroupId"] != nil {
            self.groupId = dict["GroupId"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("SubDomain") && dict["SubDomain"] != nil {
            self.subDomain = dict["SubDomain"] as! String
        }
    }
}

public class SetDomainForBackendResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: SetDomainForBackendResponseBody?

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
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = SetDomainForBackendResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class SetMockIntegrationRequest : Tea.TeaModel {
    public var apiId: String?

    public var groupId: String?

    public var mock: String?

    public var mockResult: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.apiId != nil {
            map["ApiId"] = self.apiId!
        }
        if self.groupId != nil {
            map["GroupId"] = self.groupId!
        }
        if self.mock != nil {
            map["Mock"] = self.mock!
        }
        if self.mockResult != nil {
            map["MockResult"] = self.mockResult!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ApiId") && dict["ApiId"] != nil {
            self.apiId = dict["ApiId"] as! String
        }
        if dict.keys.contains("GroupId") && dict["GroupId"] != nil {
            self.groupId = dict["GroupId"] as! String
        }
        if dict.keys.contains("Mock") && dict["Mock"] != nil {
            self.mock = dict["Mock"] as! String
        }
        if dict.keys.contains("MockResult") && dict["MockResult"] != nil {
            self.mockResult = dict["MockResult"] as! String
        }
    }
}

public class SetMockIntegrationResponseBody : Tea.TeaModel {
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
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class SetMockIntegrationResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: SetMockIntegrationResponseBody?

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
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = SetMockIntegrationResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class SetPurchasedApiGroupStatusRequest : Tea.TeaModel {
    public var aliUid: Int64?

    public var billingStatus: String?

    public var closeOrder: Bool?

    public var groupId: String?

    public override init() {
        super.init()
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
        if self.billingStatus != nil {
            map["BillingStatus"] = self.billingStatus!
        }
        if self.closeOrder != nil {
            map["CloseOrder"] = self.closeOrder!
        }
        if self.groupId != nil {
            map["GroupId"] = self.groupId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AliUid") && dict["AliUid"] != nil {
            self.aliUid = dict["AliUid"] as! Int64
        }
        if dict.keys.contains("BillingStatus") && dict["BillingStatus"] != nil {
            self.billingStatus = dict["BillingStatus"] as! String
        }
        if dict.keys.contains("CloseOrder") && dict["CloseOrder"] != nil {
            self.closeOrder = dict["CloseOrder"] as! Bool
        }
        if dict.keys.contains("GroupId") && dict["GroupId"] != nil {
            self.groupId = dict["GroupId"] as! String
        }
    }
}

public class SetPurchasedApiGroupStatusResponseBody : Tea.TeaModel {
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
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class SetPurchasedApiGroupStatusResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: SetPurchasedApiGroupStatusResponseBody?

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
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = SetPurchasedApiGroupStatusResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class SwitchApiRequest : Tea.TeaModel {
    public var apiId: String?

    public var description_: String?

    public var groupId: String?

    public var historyVersion: String?

    public var stageName: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.apiId != nil {
            map["ApiId"] = self.apiId!
        }
        if self.description_ != nil {
            map["Description"] = self.description_!
        }
        if self.groupId != nil {
            map["GroupId"] = self.groupId!
        }
        if self.historyVersion != nil {
            map["HistoryVersion"] = self.historyVersion!
        }
        if self.stageName != nil {
            map["StageName"] = self.stageName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ApiId") && dict["ApiId"] != nil {
            self.apiId = dict["ApiId"] as! String
        }
        if dict.keys.contains("Description") && dict["Description"] != nil {
            self.description_ = dict["Description"] as! String
        }
        if dict.keys.contains("GroupId") && dict["GroupId"] != nil {
            self.groupId = dict["GroupId"] as! String
        }
        if dict.keys.contains("HistoryVersion") && dict["HistoryVersion"] != nil {
            self.historyVersion = dict["HistoryVersion"] as! String
        }
        if dict.keys.contains("StageName") && dict["StageName"] != nil {
            self.stageName = dict["StageName"] as! String
        }
    }
}

public class SwitchApiResponseBody : Tea.TeaModel {
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
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class SwitchApiResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: SwitchApiResponseBody?

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
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = SwitchApiResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class SwitchApiForInnerRequest : Tea.TeaModel {
    public var apiId: String?

    public var description_: String?

    public var groupId: String?

    public var historyVersion: String?

    public var stageName: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.apiId != nil {
            map["ApiId"] = self.apiId!
        }
        if self.description_ != nil {
            map["Description"] = self.description_!
        }
        if self.groupId != nil {
            map["GroupId"] = self.groupId!
        }
        if self.historyVersion != nil {
            map["HistoryVersion"] = self.historyVersion!
        }
        if self.stageName != nil {
            map["StageName"] = self.stageName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ApiId") && dict["ApiId"] != nil {
            self.apiId = dict["ApiId"] as! String
        }
        if dict.keys.contains("Description") && dict["Description"] != nil {
            self.description_ = dict["Description"] as! String
        }
        if dict.keys.contains("GroupId") && dict["GroupId"] != nil {
            self.groupId = dict["GroupId"] as! String
        }
        if dict.keys.contains("HistoryVersion") && dict["HistoryVersion"] != nil {
            self.historyVersion = dict["HistoryVersion"] as! String
        }
        if dict.keys.contains("StageName") && dict["StageName"] != nil {
            self.stageName = dict["StageName"] as! String
        }
    }
}

public class SwitchApiForInnerResponseBody : Tea.TeaModel {
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
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class SwitchApiForInnerResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: SwitchApiForInnerResponseBody?

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
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = SwitchApiForInnerResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class SynCreateAppForInnerRequest : Tea.TeaModel {
    public var aliUid: Int64?

    public var appKey: Int64?

    public var appName: String?

    public var appSecret: String?

    public var description_: String?

    public var source: String?

    public override init() {
        super.init()
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
        if self.appKey != nil {
            map["AppKey"] = self.appKey!
        }
        if self.appName != nil {
            map["AppName"] = self.appName!
        }
        if self.appSecret != nil {
            map["AppSecret"] = self.appSecret!
        }
        if self.description_ != nil {
            map["Description"] = self.description_!
        }
        if self.source != nil {
            map["Source"] = self.source!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AliUid") && dict["AliUid"] != nil {
            self.aliUid = dict["AliUid"] as! Int64
        }
        if dict.keys.contains("AppKey") && dict["AppKey"] != nil {
            self.appKey = dict["AppKey"] as! Int64
        }
        if dict.keys.contains("AppName") && dict["AppName"] != nil {
            self.appName = dict["AppName"] as! String
        }
        if dict.keys.contains("AppSecret") && dict["AppSecret"] != nil {
            self.appSecret = dict["AppSecret"] as! String
        }
        if dict.keys.contains("Description") && dict["Description"] != nil {
            self.description_ = dict["Description"] as! String
        }
        if dict.keys.contains("Source") && dict["Source"] != nil {
            self.source = dict["Source"] as! String
        }
    }
}

public class SynCreateAppForInnerResponseBody : Tea.TeaModel {
    public var appId: Int64?

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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AppId") && dict["AppId"] != nil {
            self.appId = dict["AppId"] as! Int64
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class SynCreateAppForInnerResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: SynCreateAppForInnerResponseBody?

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
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = SynCreateAppForInnerResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class TagResourcesSystemTagsRequest : Tea.TeaModel {
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
            if dict.keys.contains("Key") && dict["Key"] != nil {
                self.key = dict["Key"] as! String
            }
            if dict.keys.contains("Value") && dict["Value"] != nil {
                self.value = dict["Value"] as! String
            }
        }
    }
    public var resourceId: [String]?

    public var resourceType: String?

    public var scope: String?

    public var securityToken: String?

    public var tag: [TagResourcesSystemTagsRequest.Tag]?

    public var tagOwnerBid: String?

    public var tagOwnerUid: Int64?

    public override init() {
        super.init()
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
        if self.resourceType != nil {
            map["ResourceType"] = self.resourceType!
        }
        if self.scope != nil {
            map["Scope"] = self.scope!
        }
        if self.securityToken != nil {
            map["SecurityToken"] = self.securityToken!
        }
        if self.tag != nil {
            var tmp : [Any] = []
            for k in self.tag! {
                tmp.append(k.toMap())
            }
            map["Tag"] = tmp
        }
        if self.tagOwnerBid != nil {
            map["TagOwnerBid"] = self.tagOwnerBid!
        }
        if self.tagOwnerUid != nil {
            map["TagOwnerUid"] = self.tagOwnerUid!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ResourceId") && dict["ResourceId"] != nil {
            self.resourceId = dict["ResourceId"] as! [String]
        }
        if dict.keys.contains("ResourceType") && dict["ResourceType"] != nil {
            self.resourceType = dict["ResourceType"] as! String
        }
        if dict.keys.contains("Scope") && dict["Scope"] != nil {
            self.scope = dict["Scope"] as! String
        }
        if dict.keys.contains("SecurityToken") && dict["SecurityToken"] != nil {
            self.securityToken = dict["SecurityToken"] as! String
        }
        if dict.keys.contains("Tag") && dict["Tag"] != nil {
            var tmp : [TagResourcesSystemTagsRequest.Tag] = []
            for v in dict["Tag"] as! [Any] {
                var model = TagResourcesSystemTagsRequest.Tag()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.tag = tmp
        }
        if dict.keys.contains("TagOwnerBid") && dict["TagOwnerBid"] != nil {
            self.tagOwnerBid = dict["TagOwnerBid"] as! String
        }
        if dict.keys.contains("TagOwnerUid") && dict["TagOwnerUid"] != nil {
            self.tagOwnerUid = dict["TagOwnerUid"] as! Int64
        }
    }
}

public class TagResourcesSystemTagsResponseBody : Tea.TeaModel {
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
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class TagResourcesSystemTagsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: TagResourcesSystemTagsResponseBody?

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
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = TagResourcesSystemTagsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class UntagResourcesSystemTagsRequest : Tea.TeaModel {
    public var all: Bool?

    public var resourceId: [String]?

    public var resourceType: String?

    public var securityToken: String?

    public var tagKey: [String]?

    public var tagOwnerBid: String?

    public var tagOwnerUid: Int64?

    public override init() {
        super.init()
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
        if self.resourceId != nil {
            map["ResourceId"] = self.resourceId!
        }
        if self.resourceType != nil {
            map["ResourceType"] = self.resourceType!
        }
        if self.securityToken != nil {
            map["SecurityToken"] = self.securityToken!
        }
        if self.tagKey != nil {
            map["TagKey"] = self.tagKey!
        }
        if self.tagOwnerBid != nil {
            map["TagOwnerBid"] = self.tagOwnerBid!
        }
        if self.tagOwnerUid != nil {
            map["TagOwnerUid"] = self.tagOwnerUid!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("All") && dict["All"] != nil {
            self.all = dict["All"] as! Bool
        }
        if dict.keys.contains("ResourceId") && dict["ResourceId"] != nil {
            self.resourceId = dict["ResourceId"] as! [String]
        }
        if dict.keys.contains("ResourceType") && dict["ResourceType"] != nil {
            self.resourceType = dict["ResourceType"] as! String
        }
        if dict.keys.contains("SecurityToken") && dict["SecurityToken"] != nil {
            self.securityToken = dict["SecurityToken"] as! String
        }
        if dict.keys.contains("TagKey") && dict["TagKey"] != nil {
            self.tagKey = dict["TagKey"] as! [String]
        }
        if dict.keys.contains("TagOwnerBid") && dict["TagOwnerBid"] != nil {
            self.tagOwnerBid = dict["TagOwnerBid"] as! String
        }
        if dict.keys.contains("TagOwnerUid") && dict["TagOwnerUid"] != nil {
            self.tagOwnerUid = dict["TagOwnerUid"] as! Int64
        }
    }
}

public class UntagResourcesSystemTagsResponseBody : Tea.TeaModel {
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
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class UntagResourcesSystemTagsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UntagResourcesSystemTagsResponseBody?

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
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = UntagResourcesSystemTagsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class VipMigrationRequest : Tea.TeaModel {
    public var newVip: String?

    public var originalVip: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.newVip != nil {
            map["NewVip"] = self.newVip!
        }
        if self.originalVip != nil {
            map["OriginalVip"] = self.originalVip!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("NewVip") && dict["NewVip"] != nil {
            self.newVip = dict["NewVip"] as! String
        }
        if dict.keys.contains("OriginalVip") && dict["OriginalVip"] != nil {
            self.originalVip = dict["OriginalVip"] as! String
        }
    }
}

public class VipMigrationResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

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
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
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
    }
}

public class VipMigrationByUidRequest : Tea.TeaModel {
    public var newVip: String?

    public var originalVip: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.newVip != nil {
            map["NewVip"] = self.newVip!
        }
        if self.originalVip != nil {
            map["OriginalVip"] = self.originalVip!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("NewVip") && dict["NewVip"] != nil {
            self.newVip = dict["NewVip"] as! String
        }
        if dict.keys.contains("OriginalVip") && dict["OriginalVip"] != nil {
            self.originalVip = dict["OriginalVip"] as! String
        }
    }
}

public class VipMigrationByUidResponseBody : Tea.TeaModel {
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
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class VipMigrationByUidResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: VipMigrationByUidResponseBody?

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
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = VipMigrationByUidResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class VpcAddAppServerRequest : Tea.TeaModel {
    public var addressPoolId: String?

    public var appId: String?

    public var serverIp: String?

    public var token: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.addressPoolId != nil {
            map["AddressPoolId"] = self.addressPoolId!
        }
        if self.appId != nil {
            map["AppId"] = self.appId!
        }
        if self.serverIp != nil {
            map["ServerIp"] = self.serverIp!
        }
        if self.token != nil {
            map["Token"] = self.token!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AddressPoolId") && dict["AddressPoolId"] != nil {
            self.addressPoolId = dict["AddressPoolId"] as! String
        }
        if dict.keys.contains("AppId") && dict["AppId"] != nil {
            self.appId = dict["AppId"] as! String
        }
        if dict.keys.contains("ServerIp") && dict["ServerIp"] != nil {
            self.serverIp = dict["ServerIp"] as! String
        }
        if dict.keys.contains("Token") && dict["Token"] != nil {
            self.token = dict["Token"] as! String
        }
    }
}

public class VpcAddAppServerResponseBody : Tea.TeaModel {
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
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class VpcAddAppServerResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: VpcAddAppServerResponseBody?

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
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = VpcAddAppServerResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class VpcCreateAddressPoolRequest : Tea.TeaModel {
    public var appId: String?

    public var description_: String?

    public var name: String?

    public var token: String?

    public override init() {
        super.init()
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
        if self.description_ != nil {
            map["Description"] = self.description_!
        }
        if self.name != nil {
            map["Name"] = self.name!
        }
        if self.token != nil {
            map["Token"] = self.token!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AppId") && dict["AppId"] != nil {
            self.appId = dict["AppId"] as! String
        }
        if dict.keys.contains("Description") && dict["Description"] != nil {
            self.description_ = dict["Description"] as! String
        }
        if dict.keys.contains("Name") && dict["Name"] != nil {
            self.name = dict["Name"] as! String
        }
        if dict.keys.contains("Token") && dict["Token"] != nil {
            self.token = dict["Token"] as! String
        }
    }
}

public class VpcCreateAddressPoolResponseBody : Tea.TeaModel {
    public var addressPoolId: String?

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
        if self.addressPoolId != nil {
            map["AddressPoolId"] = self.addressPoolId!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AddressPoolId") && dict["AddressPoolId"] != nil {
            self.addressPoolId = dict["AddressPoolId"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class VpcCreateAddressPoolResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: VpcCreateAddressPoolResponseBody?

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
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = VpcCreateAddressPoolResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class VpcQueryAppServersRequest : Tea.TeaModel {
    public var addressPoolId: String?

    public var appId: String?

    public var serverIp: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.addressPoolId != nil {
            map["AddressPoolId"] = self.addressPoolId!
        }
        if self.appId != nil {
            map["AppId"] = self.appId!
        }
        if self.serverIp != nil {
            map["ServerIp"] = self.serverIp!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AddressPoolId") && dict["AddressPoolId"] != nil {
            self.addressPoolId = dict["AddressPoolId"] as! String
        }
        if dict.keys.contains("AppId") && dict["AppId"] != nil {
            self.appId = dict["AppId"] as! String
        }
        if dict.keys.contains("ServerIp") && dict["ServerIp"] != nil {
            self.serverIp = dict["ServerIp"] as! String
        }
    }
}

public class VpcQueryAppServersResponseBody : Tea.TeaModel {
    public class AppServerInfos : Tea.TeaModel {
        public class AppServerInfo : Tea.TeaModel {
            public var addressPoolId: String?

            public var appId: String?

            public var serverIp: String?

            public var serverMappingIp: String?

            public var serverType: String?

            public var status: String?

            public var vpcId: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.addressPoolId != nil {
                    map["AddressPoolId"] = self.addressPoolId!
                }
                if self.appId != nil {
                    map["AppId"] = self.appId!
                }
                if self.serverIp != nil {
                    map["ServerIp"] = self.serverIp!
                }
                if self.serverMappingIp != nil {
                    map["ServerMappingIp"] = self.serverMappingIp!
                }
                if self.serverType != nil {
                    map["ServerType"] = self.serverType!
                }
                if self.status != nil {
                    map["Status"] = self.status!
                }
                if self.vpcId != nil {
                    map["VpcId"] = self.vpcId!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("AddressPoolId") && dict["AddressPoolId"] != nil {
                    self.addressPoolId = dict["AddressPoolId"] as! String
                }
                if dict.keys.contains("AppId") && dict["AppId"] != nil {
                    self.appId = dict["AppId"] as! String
                }
                if dict.keys.contains("ServerIp") && dict["ServerIp"] != nil {
                    self.serverIp = dict["ServerIp"] as! String
                }
                if dict.keys.contains("ServerMappingIp") && dict["ServerMappingIp"] != nil {
                    self.serverMappingIp = dict["ServerMappingIp"] as! String
                }
                if dict.keys.contains("ServerType") && dict["ServerType"] != nil {
                    self.serverType = dict["ServerType"] as! String
                }
                if dict.keys.contains("Status") && dict["Status"] != nil {
                    self.status = dict["Status"] as! String
                }
                if dict.keys.contains("VpcId") && dict["VpcId"] != nil {
                    self.vpcId = dict["VpcId"] as! String
                }
            }
        }
        public var appServerInfo: [VpcQueryAppServersResponseBody.AppServerInfos.AppServerInfo]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.appServerInfo != nil {
                var tmp : [Any] = []
                for k in self.appServerInfo! {
                    tmp.append(k.toMap())
                }
                map["AppServerInfo"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("AppServerInfo") && dict["AppServerInfo"] != nil {
                var tmp : [VpcQueryAppServersResponseBody.AppServerInfos.AppServerInfo] = []
                for v in dict["AppServerInfo"] as! [Any] {
                    var model = VpcQueryAppServersResponseBody.AppServerInfos.AppServerInfo()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.appServerInfo = tmp
            }
        }
    }
    public var appServerInfos: VpcQueryAppServersResponseBody.AppServerInfos?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.appServerInfos?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.appServerInfos != nil {
            map["AppServerInfos"] = self.appServerInfos?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AppServerInfos") && dict["AppServerInfos"] != nil {
            var model = VpcQueryAppServersResponseBody.AppServerInfos()
            model.fromMap(dict["AppServerInfos"] as! [String: Any])
            self.appServerInfos = model
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class VpcQueryAppServersResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: VpcQueryAppServersResponseBody?

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
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = VpcQueryAppServersResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class VpcRegisterAppRequest : Tea.TeaModel {
    public var appId: String?

    public var description_: String?

    public var name: String?

    public var token: String?

    public override init() {
        super.init()
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
        if self.description_ != nil {
            map["Description"] = self.description_!
        }
        if self.name != nil {
            map["Name"] = self.name!
        }
        if self.token != nil {
            map["Token"] = self.token!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AppId") && dict["AppId"] != nil {
            self.appId = dict["AppId"] as! String
        }
        if dict.keys.contains("Description") && dict["Description"] != nil {
            self.description_ = dict["Description"] as! String
        }
        if dict.keys.contains("Name") && dict["Name"] != nil {
            self.name = dict["Name"] as! String
        }
        if dict.keys.contains("Token") && dict["Token"] != nil {
            self.token = dict["Token"] as! String
        }
    }
}

public class VpcRegisterAppResponseBody : Tea.TeaModel {
    public var appId: String?

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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AppId") && dict["AppId"] != nil {
            self.appId = dict["AppId"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class VpcRegisterAppResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: VpcRegisterAppResponseBody?

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
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = VpcRegisterAppResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class VpcRemoveAppServerRequest : Tea.TeaModel {
    public var appId: String?

    public var serverIp: String?

    public var token: String?

    public override init() {
        super.init()
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
        if self.serverIp != nil {
            map["ServerIp"] = self.serverIp!
        }
        if self.token != nil {
            map["Token"] = self.token!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AppId") && dict["AppId"] != nil {
            self.appId = dict["AppId"] as! String
        }
        if dict.keys.contains("ServerIp") && dict["ServerIp"] != nil {
            self.serverIp = dict["ServerIp"] as! String
        }
        if dict.keys.contains("Token") && dict["Token"] != nil {
            self.token = dict["Token"] as! String
        }
    }
}

public class VpcRemoveAppServerResponseBody : Tea.TeaModel {
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
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class VpcRemoveAppServerResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: VpcRemoveAppServerResponseBody?

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
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = VpcRemoveAppServerResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}
