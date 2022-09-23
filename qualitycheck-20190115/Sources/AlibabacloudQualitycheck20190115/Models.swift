import Foundation
import Tea
import TeaUtils
import AlibabacloudOpenApi
import AlibabaCloudOpenApiUtil
import AlibabacloudEndpointUtil

public class AddBusinessCategoryRequest : Tea.TeaModel {
    public var jsonStr: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.jsonStr != nil {
            map["JsonStr"] = self.jsonStr!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("JsonStr") {
            self.jsonStr = dict["JsonStr"] as! String
        }
    }
}

public class AddBusinessCategoryResponseBody : Tea.TeaModel {
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

public class AddBusinessCategoryResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: AddBusinessCategoryResponseBody?

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
            var model = AddBusinessCategoryResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class AddRuleCategoryRequest : Tea.TeaModel {
    public var jsonStr: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.jsonStr != nil {
            map["JsonStr"] = self.jsonStr!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("JsonStr") {
            self.jsonStr = dict["JsonStr"] as! String
        }
    }
}

public class AddRuleCategoryResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var select: Bool?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.select != nil {
                map["Select"] = self.select!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Select") {
                self.select = dict["Select"] as! Bool
            }
        }
    }
    public var code: String?

    public var data: AddRuleCategoryResponseBody.Data?

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
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Data") {
            var model = AddRuleCategoryResponseBody.Data()
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

public class AddRuleCategoryResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: AddRuleCategoryResponseBody?

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
            var model = AddRuleCategoryResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class AddThesaurusForApiRequest : Tea.TeaModel {
    public var jsonStr: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.jsonStr != nil {
            map["JsonStr"] = self.jsonStr!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("JsonStr") {
            self.jsonStr = dict["JsonStr"] as! String
        }
    }
}

public class AddThesaurusForApiResponseBody : Tea.TeaModel {
    public var code: String?

    public var data: Int64?

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
            self.data = dict["Data"] as! Int64
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

public class AddThesaurusForApiResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: AddThesaurusForApiResponseBody?

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
            var model = AddThesaurusForApiResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class AssignReviewerRequest : Tea.TeaModel {
    public var jsonStr: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.jsonStr != nil {
            map["JsonStr"] = self.jsonStr!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("JsonStr") {
            self.jsonStr = dict["JsonStr"] as! String
        }
    }
}

public class AssignReviewerResponseBody : Tea.TeaModel {
    public var code: String?

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

public class AssignReviewerResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: AssignReviewerResponseBody?

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
            var model = AssignReviewerResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class CreateAsrVocabRequest : Tea.TeaModel {
    public var jsonStr: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.jsonStr != nil {
            map["JsonStr"] = self.jsonStr!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("JsonStr") {
            self.jsonStr = dict["JsonStr"] as! String
        }
    }
}

public class CreateAsrVocabResponseBody : Tea.TeaModel {
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

public class CreateAsrVocabResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateAsrVocabResponseBody?

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
            var model = CreateAsrVocabResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class CreateSkillGroupConfigRequest : Tea.TeaModel {
    public var jsonStr: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.jsonStr != nil {
            map["JsonStr"] = self.jsonStr!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("JsonStr") {
            self.jsonStr = dict["JsonStr"] as! String
        }
    }
}

public class CreateSkillGroupConfigResponseBody : Tea.TeaModel {
    public var code: String?

    public var data: Int64?

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
            self.data = dict["Data"] as! Int64
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

public class CreateSkillGroupConfigResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateSkillGroupConfigResponseBody?

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
            var model = CreateSkillGroupConfigResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class CreateTaskAssignRuleRequest : Tea.TeaModel {
    public var jsonStr: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.jsonStr != nil {
            map["JsonStr"] = self.jsonStr!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("JsonStr") {
            self.jsonStr = dict["JsonStr"] as! String
        }
    }
}

public class CreateTaskAssignRuleResponseBody : Tea.TeaModel {
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

public class CreateTaskAssignRuleResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateTaskAssignRuleResponseBody?

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
            var model = CreateTaskAssignRuleResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class CreateUserRequest : Tea.TeaModel {
    public var jsonStr: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.jsonStr != nil {
            map["JsonStr"] = self.jsonStr!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("JsonStr") {
            self.jsonStr = dict["JsonStr"] as! String
        }
    }
}

public class CreateUserResponseBody : Tea.TeaModel {
    public var code: String?

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

public class CreateUserResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateUserResponseBody?

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
            var model = CreateUserResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class CreateWarningConfigRequest : Tea.TeaModel {
    public var jsonStr: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.jsonStr != nil {
            map["JsonStr"] = self.jsonStr!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("JsonStr") {
            self.jsonStr = dict["JsonStr"] as! String
        }
    }
}

public class CreateWarningConfigResponseBody : Tea.TeaModel {
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

public class CreateWarningConfigResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateWarningConfigResponseBody?

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
            var model = CreateWarningConfigResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class CreateWarningStrategyConfigRequest : Tea.TeaModel {
    public var jsonStr: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.jsonStr != nil {
            map["JsonStr"] = self.jsonStr!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("JsonStr") {
            self.jsonStr = dict["JsonStr"] as! String
        }
    }
}

public class CreateWarningStrategyConfigResponseBody : Tea.TeaModel {
    public var code: String?

    public var data: Int64?

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
            self.data = dict["Data"] as! Int64
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

public class CreateWarningStrategyConfigResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateWarningStrategyConfigResponseBody?

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
            var model = CreateWarningStrategyConfigResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DelRuleCategoryRequest : Tea.TeaModel {
    public var jsonStr: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.jsonStr != nil {
            map["JsonStr"] = self.jsonStr!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("JsonStr") {
            self.jsonStr = dict["JsonStr"] as! String
        }
    }
}

public class DelRuleCategoryResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var select: Bool?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.select != nil {
                map["Select"] = self.select!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Select") {
                self.select = dict["Select"] as! Bool
            }
        }
    }
    public var code: String?

    public var data: DelRuleCategoryResponseBody.Data?

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
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Data") {
            var model = DelRuleCategoryResponseBody.Data()
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

public class DelRuleCategoryResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DelRuleCategoryResponseBody?

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
            var model = DelRuleCategoryResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DelThesaurusForApiRequest : Tea.TeaModel {
    public var jsonStr: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.jsonStr != nil {
            map["JsonStr"] = self.jsonStr!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("JsonStr") {
            self.jsonStr = dict["JsonStr"] as! String
        }
    }
}

public class DelThesaurusForApiResponseBody : Tea.TeaModel {
    public var code: String?

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

public class DelThesaurusForApiResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DelThesaurusForApiResponseBody?

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
            var model = DelThesaurusForApiResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DeleteAsrVocabRequest : Tea.TeaModel {
    public var jsonStr: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.jsonStr != nil {
            map["JsonStr"] = self.jsonStr!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("JsonStr") {
            self.jsonStr = dict["JsonStr"] as! String
        }
    }
}

public class DeleteAsrVocabResponseBody : Tea.TeaModel {
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

public class DeleteAsrVocabResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteAsrVocabResponseBody?

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
            var model = DeleteAsrVocabResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DeleteBusinessCategoryRequest : Tea.TeaModel {
    public var jsonStr: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.jsonStr != nil {
            map["JsonStr"] = self.jsonStr!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("JsonStr") {
            self.jsonStr = dict["JsonStr"] as! String
        }
    }
}

public class DeleteBusinessCategoryResponseBody : Tea.TeaModel {
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

public class DeleteBusinessCategoryResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteBusinessCategoryResponseBody?

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
            var model = DeleteBusinessCategoryResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DeleteCustomizationConfigRequest : Tea.TeaModel {
    public var jsonStr: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.jsonStr != nil {
            map["JsonStr"] = self.jsonStr!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("JsonStr") {
            self.jsonStr = dict["JsonStr"] as! String
        }
    }
}

public class DeleteCustomizationConfigResponseBody : Tea.TeaModel {
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

public class DeleteCustomizationConfigResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteCustomizationConfigResponseBody?

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
            var model = DeleteCustomizationConfigResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DeleteDataSetRequest : Tea.TeaModel {
    public var jsonStr: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.jsonStr != nil {
            map["JsonStr"] = self.jsonStr!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("JsonStr") {
            self.jsonStr = dict["JsonStr"] as! String
        }
    }
}

public class DeleteDataSetResponseBody : Tea.TeaModel {
    public var code: String?

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

public class DeleteDataSetResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteDataSetResponseBody?

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
            var model = DeleteDataSetResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DeletePrecisionTaskRequest : Tea.TeaModel {
    public var jsonStr: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.jsonStr != nil {
            map["JsonStr"] = self.jsonStr!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("JsonStr") {
            self.jsonStr = dict["JsonStr"] as! String
        }
    }
}

public class DeletePrecisionTaskResponseBody : Tea.TeaModel {
    public var code: String?

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

public class DeletePrecisionTaskResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeletePrecisionTaskResponseBody?

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
            var model = DeletePrecisionTaskResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DeleteScoreForApiRequest : Tea.TeaModel {
    public var jsonStr: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.jsonStr != nil {
            map["JsonStr"] = self.jsonStr!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("JsonStr") {
            self.jsonStr = dict["JsonStr"] as! String
        }
    }
}

public class DeleteScoreForApiResponseBody : Tea.TeaModel {
    public var code: String?

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

public class DeleteScoreForApiResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteScoreForApiResponseBody?

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
            var model = DeleteScoreForApiResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DeleteSkillGroupConfigRequest : Tea.TeaModel {
    public var jsonStr: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.jsonStr != nil {
            map["JsonStr"] = self.jsonStr!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("JsonStr") {
            self.jsonStr = dict["JsonStr"] as! String
        }
    }
}

public class DeleteSkillGroupConfigResponseBody : Tea.TeaModel {
    public var code: String?

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

public class DeleteSkillGroupConfigResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteSkillGroupConfigResponseBody?

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
            var model = DeleteSkillGroupConfigResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DeleteSubScoreForApiRequest : Tea.TeaModel {
    public var jsonStr: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.jsonStr != nil {
            map["JsonStr"] = self.jsonStr!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("JsonStr") {
            self.jsonStr = dict["JsonStr"] as! String
        }
    }
}

public class DeleteSubScoreForApiResponseBody : Tea.TeaModel {
    public var code: String?

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

public class DeleteSubScoreForApiResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteSubScoreForApiResponseBody?

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
            var model = DeleteSubScoreForApiResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DeleteTaskAssignRuleRequest : Tea.TeaModel {
    public var jsonStr: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.jsonStr != nil {
            map["JsonStr"] = self.jsonStr!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("JsonStr") {
            self.jsonStr = dict["JsonStr"] as! String
        }
    }
}

public class DeleteTaskAssignRuleResponseBody : Tea.TeaModel {
    public var code: String?

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

public class DeleteTaskAssignRuleResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteTaskAssignRuleResponseBody?

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
            var model = DeleteTaskAssignRuleResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DeleteUserRequest : Tea.TeaModel {
    public var jsonStr: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.jsonStr != nil {
            map["JsonStr"] = self.jsonStr!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("JsonStr") {
            self.jsonStr = dict["JsonStr"] as! String
        }
    }
}

public class DeleteUserResponseBody : Tea.TeaModel {
    public var code: String?

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

public class DeleteUserResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteUserResponseBody?

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
            var model = DeleteUserResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DeleteWarningConfigRequest : Tea.TeaModel {
    public var jsonStr: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.jsonStr != nil {
            map["JsonStr"] = self.jsonStr!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("JsonStr") {
            self.jsonStr = dict["JsonStr"] as! String
        }
    }
}

public class DeleteWarningConfigResponseBody : Tea.TeaModel {
    public var code: String?

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

public class DeleteWarningConfigResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteWarningConfigResponseBody?

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
            var model = DeleteWarningConfigResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DeleteWarningStrategyConfigRequest : Tea.TeaModel {
    public var jsonStr: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.jsonStr != nil {
            map["JsonStr"] = self.jsonStr!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("JsonStr") {
            self.jsonStr = dict["JsonStr"] as! String
        }
    }
}

public class DeleteWarningStrategyConfigResponseBody : Tea.TeaModel {
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

public class DeleteWarningStrategyConfigResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteWarningStrategyConfigResponseBody?

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
            var model = DeleteWarningStrategyConfigResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class EditThesaurusForApiRequest : Tea.TeaModel {
    public var jsonStr: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.jsonStr != nil {
            map["JsonStr"] = self.jsonStr!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("JsonStr") {
            self.jsonStr = dict["JsonStr"] as! String
        }
    }
}

public class EditThesaurusForApiResponseBody : Tea.TeaModel {
    public var code: String?

    public var data: Int64?

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
            self.data = dict["Data"] as! Int64
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

public class EditThesaurusForApiResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: EditThesaurusForApiResponseBody?

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
            var model = EditThesaurusForApiResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetAsrVocabRequest : Tea.TeaModel {
    public var jsonStr: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.jsonStr != nil {
            map["JsonStr"] = self.jsonStr!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("JsonStr") {
            self.jsonStr = dict["JsonStr"] as! String
        }
    }
}

public class GetAsrVocabResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class Words : Tea.TeaModel {
            public class Word : Tea.TeaModel {
                public var weight: Int32?

                public var word: String?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.weight != nil {
                        map["Weight"] = self.weight!
                    }
                    if self.word != nil {
                        map["Word"] = self.word!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("Weight") {
                        self.weight = dict["Weight"] as! Int32
                    }
                    if dict.keys.contains("Word") {
                        self.word = dict["Word"] as! String
                    }
                }
            }
            public var word: [GetAsrVocabResponseBody.Data.Words.Word]?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.word != nil {
                    var tmp : [Any] = []
                    for k in self.word! {
                        tmp.append(k.toMap())
                    }
                    map["Word"] = tmp
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("Word") {
                    self.word = dict["Word"] as! [GetAsrVocabResponseBody.Data.Words.Word]
                }
            }
        }
        public var name: String?

        public var words: GetAsrVocabResponseBody.Data.Words?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.words?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.name != nil {
                map["Name"] = self.name!
            }
            if self.words != nil {
                map["Words"] = self.words?.toMap()
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Name") {
                self.name = dict["Name"] as! String
            }
            if dict.keys.contains("Words") {
                var model = GetAsrVocabResponseBody.Data.Words()
                model.fromMap(dict["Words"] as! [String: Any])
                self.words = model
            }
        }
    }
    public var code: String?

    public var data: GetAsrVocabResponseBody.Data?

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
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Data") {
            var model = GetAsrVocabResponseBody.Data()
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

public class GetAsrVocabResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetAsrVocabResponseBody?

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
            var model = GetAsrVocabResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetBusinessCategoryListRequest : Tea.TeaModel {
    public var jsonStr: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.jsonStr != nil {
            map["JsonStr"] = self.jsonStr!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("JsonStr") {
            self.jsonStr = dict["JsonStr"] as! String
        }
    }
}

public class GetBusinessCategoryListResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class BusinessCategoryBasicInfo : Tea.TeaModel {
            public var bid: Int32?

            public var businessName: String?

            public var serviceType: Int32?

            public override init() {
                super.init()
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
                if self.businessName != nil {
                    map["BusinessName"] = self.businessName!
                }
                if self.serviceType != nil {
                    map["ServiceType"] = self.serviceType!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("Bid") {
                    self.bid = dict["Bid"] as! Int32
                }
                if dict.keys.contains("BusinessName") {
                    self.businessName = dict["BusinessName"] as! String
                }
                if dict.keys.contains("ServiceType") {
                    self.serviceType = dict["ServiceType"] as! Int32
                }
            }
        }
        public var businessCategoryBasicInfo: [GetBusinessCategoryListResponseBody.Data.BusinessCategoryBasicInfo]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.businessCategoryBasicInfo != nil {
                var tmp : [Any] = []
                for k in self.businessCategoryBasicInfo! {
                    tmp.append(k.toMap())
                }
                map["BusinessCategoryBasicInfo"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("BusinessCategoryBasicInfo") {
                self.businessCategoryBasicInfo = dict["BusinessCategoryBasicInfo"] as! [GetBusinessCategoryListResponseBody.Data.BusinessCategoryBasicInfo]
            }
        }
    }
    public var code: String?

    public var data: GetBusinessCategoryListResponseBody.Data?

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
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Data") {
            var model = GetBusinessCategoryListResponseBody.Data()
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

public class GetBusinessCategoryListResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetBusinessCategoryListResponseBody?

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
            var model = GetBusinessCategoryListResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetCustomizationConfigListRequest : Tea.TeaModel {
    public var jsonStr: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.jsonStr != nil {
            map["JsonStr"] = self.jsonStr!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("JsonStr") {
            self.jsonStr = dict["JsonStr"] as! String
        }
    }
}

public class GetCustomizationConfigListResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class ModelCustomizationDataSetPo : Tea.TeaModel {
            public var createTime: String?

            public var modeCustomizationId: String?

            public var modelId: Int64?

            public var modelName: String?

            public var modelStatus: Int32?

            public var taskType: Int32?

            public override init() {
                super.init()
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
                if self.modeCustomizationId != nil {
                    map["ModeCustomizationId"] = self.modeCustomizationId!
                }
                if self.modelId != nil {
                    map["ModelId"] = self.modelId!
                }
                if self.modelName != nil {
                    map["ModelName"] = self.modelName!
                }
                if self.modelStatus != nil {
                    map["ModelStatus"] = self.modelStatus!
                }
                if self.taskType != nil {
                    map["TaskType"] = self.taskType!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("CreateTime") {
                    self.createTime = dict["CreateTime"] as! String
                }
                if dict.keys.contains("ModeCustomizationId") {
                    self.modeCustomizationId = dict["ModeCustomizationId"] as! String
                }
                if dict.keys.contains("ModelId") {
                    self.modelId = dict["ModelId"] as! Int64
                }
                if dict.keys.contains("ModelName") {
                    self.modelName = dict["ModelName"] as! String
                }
                if dict.keys.contains("ModelStatus") {
                    self.modelStatus = dict["ModelStatus"] as! Int32
                }
                if dict.keys.contains("TaskType") {
                    self.taskType = dict["TaskType"] as! Int32
                }
            }
        }
        public var modelCustomizationDataSetPo: [GetCustomizationConfigListResponseBody.Data.ModelCustomizationDataSetPo]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.modelCustomizationDataSetPo != nil {
                var tmp : [Any] = []
                for k in self.modelCustomizationDataSetPo! {
                    tmp.append(k.toMap())
                }
                map["ModelCustomizationDataSetPo"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("ModelCustomizationDataSetPo") {
                self.modelCustomizationDataSetPo = dict["ModelCustomizationDataSetPo"] as! [GetCustomizationConfigListResponseBody.Data.ModelCustomizationDataSetPo]
            }
        }
    }
    public var code: String?

    public var data: GetCustomizationConfigListResponseBody.Data?

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
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Data") {
            var model = GetCustomizationConfigListResponseBody.Data()
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

public class GetCustomizationConfigListResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetCustomizationConfigListResponseBody?

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
            var model = GetCustomizationConfigListResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetHitResultRequest : Tea.TeaModel {
    public var jsonStr: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.jsonStr != nil {
            map["JsonStr"] = self.jsonStr!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("JsonStr") {
            self.jsonStr = dict["JsonStr"] as! String
        }
    }
}

public class GetHitResultResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class ResultInfo : Tea.TeaModel {
            public var rid: Int64?

            public var ruleName: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.rid != nil {
                    map["Rid"] = self.rid!
                }
                if self.ruleName != nil {
                    map["RuleName"] = self.ruleName!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("Rid") {
                    self.rid = dict["Rid"] as! Int64
                }
                if dict.keys.contains("RuleName") {
                    self.ruleName = dict["RuleName"] as! String
                }
            }
        }
        public var resultInfo: [GetHitResultResponseBody.Data.ResultInfo]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.resultInfo != nil {
                var tmp : [Any] = []
                for k in self.resultInfo! {
                    tmp.append(k.toMap())
                }
                map["ResultInfo"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("ResultInfo") {
                self.resultInfo = dict["ResultInfo"] as! [GetHitResultResponseBody.Data.ResultInfo]
            }
        }
    }
    public var code: String?

    public var count: Int32?

    public var data: GetHitResultResponseBody.Data?

    public var message: String?

    public var pageNumber: Int32?

    public var pageSize: Int32?

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
        if self.count != nil {
            map["Count"] = self.count!
        }
        if self.data != nil {
            map["Data"] = self.data?.toMap()
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
        if self.success != nil {
            map["Success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Count") {
            self.count = dict["Count"] as! Int32
        }
        if dict.keys.contains("Data") {
            var model = GetHitResultResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
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
        if dict.keys.contains("Success") {
            self.success = dict["Success"] as! Bool
        }
    }
}

public class GetHitResultResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetHitResultResponseBody?

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
            var model = GetHitResultResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetNextResultToVerifyRequest : Tea.TeaModel {
    public var jsonStr: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.jsonStr != nil {
            map["JsonStr"] = self.jsonStr!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("JsonStr") {
            self.jsonStr = dict["JsonStr"] as! String
        }
    }
}

public class GetNextResultToVerifyResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class Dialogues : Tea.TeaModel {
            public class Dialogue : Tea.TeaModel {
                public class Deltas : Tea.TeaModel {
                    public class Delta : Tea.TeaModel {
                        public class Source : Tea.TeaModel {
                            public class Line : Tea.TeaModel {
                                public var line: [String]?

                                public override init() {
                                    super.init()
                                }

                                public init(_ dict: [String: Any]) {
                                    super.init()
                                    self.fromMap(dict)
                                }

                                public override func validate() throws -> Void {
                                }

                                public override func toMap() -> [String : Any] {
                                    var map = super.toMap()
                                    if self.line != nil {
                                        map["Line"] = self.line!
                                    }
                                    return map
                                }

                                public override func fromMap(_ dict: [String: Any]) -> Void {
                                    if dict.keys.contains("Line") {
                                        self.line = dict["Line"] as! [String]
                                    }
                                }
                            }
                            public var line: GetNextResultToVerifyResponseBody.Data.Dialogues.Dialogue.Deltas.Delta.Source.Line?

                            public var position: Int32?

                            public override init() {
                                super.init()
                            }

                            public init(_ dict: [String: Any]) {
                                super.init()
                                self.fromMap(dict)
                            }

                            public override func validate() throws -> Void {
                                try self.line?.validate()
                            }

                            public override func toMap() -> [String : Any] {
                                var map = super.toMap()
                                if self.line != nil {
                                    map["Line"] = self.line?.toMap()
                                }
                                if self.position != nil {
                                    map["Position"] = self.position!
                                }
                                return map
                            }

                            public override func fromMap(_ dict: [String: Any]) -> Void {
                                if dict.keys.contains("Line") {
                                    var model = GetNextResultToVerifyResponseBody.Data.Dialogues.Dialogue.Deltas.Delta.Source.Line()
                                    model.fromMap(dict["Line"] as! [String: Any])
                                    self.line = model
                                }
                                if dict.keys.contains("Position") {
                                    self.position = dict["Position"] as! Int32
                                }
                            }
                        }
                        public class Target : Tea.TeaModel {
                            public class Line : Tea.TeaModel {
                                public var line: [String]?

                                public override init() {
                                    super.init()
                                }

                                public init(_ dict: [String: Any]) {
                                    super.init()
                                    self.fromMap(dict)
                                }

                                public override func validate() throws -> Void {
                                }

                                public override func toMap() -> [String : Any] {
                                    var map = super.toMap()
                                    if self.line != nil {
                                        map["Line"] = self.line!
                                    }
                                    return map
                                }

                                public override func fromMap(_ dict: [String: Any]) -> Void {
                                    if dict.keys.contains("Line") {
                                        self.line = dict["Line"] as! [String]
                                    }
                                }
                            }
                            public var line: GetNextResultToVerifyResponseBody.Data.Dialogues.Dialogue.Deltas.Delta.Target.Line?

                            public var position: Int32?

                            public override init() {
                                super.init()
                            }

                            public init(_ dict: [String: Any]) {
                                super.init()
                                self.fromMap(dict)
                            }

                            public override func validate() throws -> Void {
                                try self.line?.validate()
                            }

                            public override func toMap() -> [String : Any] {
                                var map = super.toMap()
                                if self.line != nil {
                                    map["Line"] = self.line?.toMap()
                                }
                                if self.position != nil {
                                    map["Position"] = self.position!
                                }
                                return map
                            }

                            public override func fromMap(_ dict: [String: Any]) -> Void {
                                if dict.keys.contains("Line") {
                                    var model = GetNextResultToVerifyResponseBody.Data.Dialogues.Dialogue.Deltas.Delta.Target.Line()
                                    model.fromMap(dict["Line"] as! [String: Any])
                                    self.line = model
                                }
                                if dict.keys.contains("Position") {
                                    self.position = dict["Position"] as! Int32
                                }
                            }
                        }
                        public var source: GetNextResultToVerifyResponseBody.Data.Dialogues.Dialogue.Deltas.Delta.Source?

                        public var target: GetNextResultToVerifyResponseBody.Data.Dialogues.Dialogue.Deltas.Delta.Target?

                        public var type: String?

                        public override init() {
                            super.init()
                        }

                        public init(_ dict: [String: Any]) {
                            super.init()
                            self.fromMap(dict)
                        }

                        public override func validate() throws -> Void {
                            try self.source?.validate()
                            try self.target?.validate()
                        }

                        public override func toMap() -> [String : Any] {
                            var map = super.toMap()
                            if self.source != nil {
                                map["Source"] = self.source?.toMap()
                            }
                            if self.target != nil {
                                map["Target"] = self.target?.toMap()
                            }
                            if self.type != nil {
                                map["Type"] = self.type!
                            }
                            return map
                        }

                        public override func fromMap(_ dict: [String: Any]) -> Void {
                            if dict.keys.contains("Source") {
                                var model = GetNextResultToVerifyResponseBody.Data.Dialogues.Dialogue.Deltas.Delta.Source()
                                model.fromMap(dict["Source"] as! [String: Any])
                                self.source = model
                            }
                            if dict.keys.contains("Target") {
                                var model = GetNextResultToVerifyResponseBody.Data.Dialogues.Dialogue.Deltas.Delta.Target()
                                model.fromMap(dict["Target"] as! [String: Any])
                                self.target = model
                            }
                            if dict.keys.contains("Type") {
                                self.type = dict["Type"] as! String
                            }
                        }
                    }
                    public var delta: [GetNextResultToVerifyResponseBody.Data.Dialogues.Dialogue.Deltas.Delta]?

                    public override init() {
                        super.init()
                    }

                    public init(_ dict: [String: Any]) {
                        super.init()
                        self.fromMap(dict)
                    }

                    public override func validate() throws -> Void {
                    }

                    public override func toMap() -> [String : Any] {
                        var map = super.toMap()
                        if self.delta != nil {
                            var tmp : [Any] = []
                            for k in self.delta! {
                                tmp.append(k.toMap())
                            }
                            map["Delta"] = tmp
                        }
                        return map
                    }

                    public override func fromMap(_ dict: [String: Any]) -> Void {
                        if dict.keys.contains("Delta") {
                            self.delta = dict["Delta"] as! [GetNextResultToVerifyResponseBody.Data.Dialogues.Dialogue.Deltas.Delta]
                        }
                    }
                }
                public var begin: Int64?

                public var beginTime: String?

                public var deltas: GetNextResultToVerifyResponseBody.Data.Dialogues.Dialogue.Deltas?

                public var emotionValue: Int32?

                public var end: Int64?

                public var hourMinSec: String?

                public var identity: String?

                public var incorrectWords: Int32?

                public var role: String?

                public var silenceDuration: Int32?

                public var sourceRole: String?

                public var sourceWords: String?

                public var speechRate: Int32?

                public var words: String?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                    try self.deltas?.validate()
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.begin != nil {
                        map["Begin"] = self.begin!
                    }
                    if self.beginTime != nil {
                        map["BeginTime"] = self.beginTime!
                    }
                    if self.deltas != nil {
                        map["Deltas"] = self.deltas?.toMap()
                    }
                    if self.emotionValue != nil {
                        map["EmotionValue"] = self.emotionValue!
                    }
                    if self.end != nil {
                        map["End"] = self.end!
                    }
                    if self.hourMinSec != nil {
                        map["HourMinSec"] = self.hourMinSec!
                    }
                    if self.identity != nil {
                        map["Identity"] = self.identity!
                    }
                    if self.incorrectWords != nil {
                        map["IncorrectWords"] = self.incorrectWords!
                    }
                    if self.role != nil {
                        map["Role"] = self.role!
                    }
                    if self.silenceDuration != nil {
                        map["SilenceDuration"] = self.silenceDuration!
                    }
                    if self.sourceRole != nil {
                        map["SourceRole"] = self.sourceRole!
                    }
                    if self.sourceWords != nil {
                        map["SourceWords"] = self.sourceWords!
                    }
                    if self.speechRate != nil {
                        map["SpeechRate"] = self.speechRate!
                    }
                    if self.words != nil {
                        map["Words"] = self.words!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("Begin") {
                        self.begin = dict["Begin"] as! Int64
                    }
                    if dict.keys.contains("BeginTime") {
                        self.beginTime = dict["BeginTime"] as! String
                    }
                    if dict.keys.contains("Deltas") {
                        var model = GetNextResultToVerifyResponseBody.Data.Dialogues.Dialogue.Deltas()
                        model.fromMap(dict["Deltas"] as! [String: Any])
                        self.deltas = model
                    }
                    if dict.keys.contains("EmotionValue") {
                        self.emotionValue = dict["EmotionValue"] as! Int32
                    }
                    if dict.keys.contains("End") {
                        self.end = dict["End"] as! Int64
                    }
                    if dict.keys.contains("HourMinSec") {
                        self.hourMinSec = dict["HourMinSec"] as! String
                    }
                    if dict.keys.contains("Identity") {
                        self.identity = dict["Identity"] as! String
                    }
                    if dict.keys.contains("IncorrectWords") {
                        self.incorrectWords = dict["IncorrectWords"] as! Int32
                    }
                    if dict.keys.contains("Role") {
                        self.role = dict["Role"] as! String
                    }
                    if dict.keys.contains("SilenceDuration") {
                        self.silenceDuration = dict["SilenceDuration"] as! Int32
                    }
                    if dict.keys.contains("SourceRole") {
                        self.sourceRole = dict["SourceRole"] as! String
                    }
                    if dict.keys.contains("SourceWords") {
                        self.sourceWords = dict["SourceWords"] as! String
                    }
                    if dict.keys.contains("SpeechRate") {
                        self.speechRate = dict["SpeechRate"] as! Int32
                    }
                    if dict.keys.contains("Words") {
                        self.words = dict["Words"] as! String
                    }
                }
            }
            public var dialogue: [GetNextResultToVerifyResponseBody.Data.Dialogues.Dialogue]?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.dialogue != nil {
                    var tmp : [Any] = []
                    for k in self.dialogue! {
                        tmp.append(k.toMap())
                    }
                    map["Dialogue"] = tmp
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("Dialogue") {
                    self.dialogue = dict["Dialogue"] as! [GetNextResultToVerifyResponseBody.Data.Dialogues.Dialogue]
                }
            }
        }
        public var audioScheme: String?

        public var audioURL: String?

        public var dialogues: GetNextResultToVerifyResponseBody.Data.Dialogues?

        public var duration: Int32?

        public var fileId: String?

        public var fileName: String?

        public var incorrectWords: Int32?

        public var index: Int32?

        public var precision: Double?

        public var status: Int32?

        public var totalCount: Int32?

        public var updateTime: String?

        public var verified: Bool?

        public var verifiedCount: Int32?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.dialogues?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.audioScheme != nil {
                map["AudioScheme"] = self.audioScheme!
            }
            if self.audioURL != nil {
                map["AudioURL"] = self.audioURL!
            }
            if self.dialogues != nil {
                map["Dialogues"] = self.dialogues?.toMap()
            }
            if self.duration != nil {
                map["Duration"] = self.duration!
            }
            if self.fileId != nil {
                map["FileId"] = self.fileId!
            }
            if self.fileName != nil {
                map["FileName"] = self.fileName!
            }
            if self.incorrectWords != nil {
                map["IncorrectWords"] = self.incorrectWords!
            }
            if self.index != nil {
                map["Index"] = self.index!
            }
            if self.precision != nil {
                map["Precision"] = self.precision!
            }
            if self.status != nil {
                map["Status"] = self.status!
            }
            if self.totalCount != nil {
                map["TotalCount"] = self.totalCount!
            }
            if self.updateTime != nil {
                map["UpdateTime"] = self.updateTime!
            }
            if self.verified != nil {
                map["Verified"] = self.verified!
            }
            if self.verifiedCount != nil {
                map["VerifiedCount"] = self.verifiedCount!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("AudioScheme") {
                self.audioScheme = dict["AudioScheme"] as! String
            }
            if dict.keys.contains("AudioURL") {
                self.audioURL = dict["AudioURL"] as! String
            }
            if dict.keys.contains("Dialogues") {
                var model = GetNextResultToVerifyResponseBody.Data.Dialogues()
                model.fromMap(dict["Dialogues"] as! [String: Any])
                self.dialogues = model
            }
            if dict.keys.contains("Duration") {
                self.duration = dict["Duration"] as! Int32
            }
            if dict.keys.contains("FileId") {
                self.fileId = dict["FileId"] as! String
            }
            if dict.keys.contains("FileName") {
                self.fileName = dict["FileName"] as! String
            }
            if dict.keys.contains("IncorrectWords") {
                self.incorrectWords = dict["IncorrectWords"] as! Int32
            }
            if dict.keys.contains("Index") {
                self.index = dict["Index"] as! Int32
            }
            if dict.keys.contains("Precision") {
                self.precision = dict["Precision"] as! Double
            }
            if dict.keys.contains("Status") {
                self.status = dict["Status"] as! Int32
            }
            if dict.keys.contains("TotalCount") {
                self.totalCount = dict["TotalCount"] as! Int32
            }
            if dict.keys.contains("UpdateTime") {
                self.updateTime = dict["UpdateTime"] as! String
            }
            if dict.keys.contains("Verified") {
                self.verified = dict["Verified"] as! Bool
            }
            if dict.keys.contains("VerifiedCount") {
                self.verifiedCount = dict["VerifiedCount"] as! Int32
            }
        }
    }
    public var code: String?

    public var data: GetNextResultToVerifyResponseBody.Data?

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
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Data") {
            var model = GetNextResultToVerifyResponseBody.Data()
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

public class GetNextResultToVerifyResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetNextResultToVerifyResponseBody?

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
            var model = GetNextResultToVerifyResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetPrecisionTaskRequest : Tea.TeaModel {
    public var jsonStr: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.jsonStr != nil {
            map["JsonStr"] = self.jsonStr!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("JsonStr") {
            self.jsonStr = dict["JsonStr"] as! String
        }
    }
}

public class GetPrecisionTaskResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class Precisions : Tea.TeaModel {
            public class Precision : Tea.TeaModel {
                public var modelId: Int64?

                public var modelName: String?

                public var precision: Double?

                public var status: Int32?

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
                    if self.modelId != nil {
                        map["ModelId"] = self.modelId!
                    }
                    if self.modelName != nil {
                        map["ModelName"] = self.modelName!
                    }
                    if self.precision != nil {
                        map["Precision"] = self.precision!
                    }
                    if self.status != nil {
                        map["Status"] = self.status!
                    }
                    if self.taskId != nil {
                        map["TaskId"] = self.taskId!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("ModelId") {
                        self.modelId = dict["ModelId"] as! Int64
                    }
                    if dict.keys.contains("ModelName") {
                        self.modelName = dict["ModelName"] as! String
                    }
                    if dict.keys.contains("Precision") {
                        self.precision = dict["Precision"] as! Double
                    }
                    if dict.keys.contains("Status") {
                        self.status = dict["Status"] as! Int32
                    }
                    if dict.keys.contains("TaskId") {
                        self.taskId = dict["TaskId"] as! String
                    }
                }
            }
            public var precision: [GetPrecisionTaskResponseBody.Data.Precisions.Precision]?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.precision != nil {
                    var tmp : [Any] = []
                    for k in self.precision! {
                        tmp.append(k.toMap())
                    }
                    map["Precision"] = tmp
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("Precision") {
                    self.precision = dict["Precision"] as! [GetPrecisionTaskResponseBody.Data.Precisions.Precision]
                }
            }
        }
        public var dataSetId: Int64?

        public var dataSetName: String?

        public var duration: Int32?

        public var incorrectWords: Int32?

        public var name: String?

        public var precisions: GetPrecisionTaskResponseBody.Data.Precisions?

        public var source: Int32?

        public var status: Int32?

        public var taskId: String?

        public var totalCount: Int32?

        public var updateTime: String?

        public var verifiedCount: Int32?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.precisions?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.dataSetId != nil {
                map["DataSetId"] = self.dataSetId!
            }
            if self.dataSetName != nil {
                map["DataSetName"] = self.dataSetName!
            }
            if self.duration != nil {
                map["Duration"] = self.duration!
            }
            if self.incorrectWords != nil {
                map["IncorrectWords"] = self.incorrectWords!
            }
            if self.name != nil {
                map["Name"] = self.name!
            }
            if self.precisions != nil {
                map["Precisions"] = self.precisions?.toMap()
            }
            if self.source != nil {
                map["Source"] = self.source!
            }
            if self.status != nil {
                map["Status"] = self.status!
            }
            if self.taskId != nil {
                map["TaskId"] = self.taskId!
            }
            if self.totalCount != nil {
                map["TotalCount"] = self.totalCount!
            }
            if self.updateTime != nil {
                map["UpdateTime"] = self.updateTime!
            }
            if self.verifiedCount != nil {
                map["VerifiedCount"] = self.verifiedCount!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("DataSetId") {
                self.dataSetId = dict["DataSetId"] as! Int64
            }
            if dict.keys.contains("DataSetName") {
                self.dataSetName = dict["DataSetName"] as! String
            }
            if dict.keys.contains("Duration") {
                self.duration = dict["Duration"] as! Int32
            }
            if dict.keys.contains("IncorrectWords") {
                self.incorrectWords = dict["IncorrectWords"] as! Int32
            }
            if dict.keys.contains("Name") {
                self.name = dict["Name"] as! String
            }
            if dict.keys.contains("Precisions") {
                var model = GetPrecisionTaskResponseBody.Data.Precisions()
                model.fromMap(dict["Precisions"] as! [String: Any])
                self.precisions = model
            }
            if dict.keys.contains("Source") {
                self.source = dict["Source"] as! Int32
            }
            if dict.keys.contains("Status") {
                self.status = dict["Status"] as! Int32
            }
            if dict.keys.contains("TaskId") {
                self.taskId = dict["TaskId"] as! String
            }
            if dict.keys.contains("TotalCount") {
                self.totalCount = dict["TotalCount"] as! Int32
            }
            if dict.keys.contains("UpdateTime") {
                self.updateTime = dict["UpdateTime"] as! String
            }
            if dict.keys.contains("VerifiedCount") {
                self.verifiedCount = dict["VerifiedCount"] as! Int32
            }
        }
    }
    public var code: String?

    public var data: GetPrecisionTaskResponseBody.Data?

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
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Data") {
            var model = GetPrecisionTaskResponseBody.Data()
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

public class GetPrecisionTaskResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetPrecisionTaskResponseBody?

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
            var model = GetPrecisionTaskResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetResultRequest : Tea.TeaModel {
    public var jsonStr: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.jsonStr != nil {
            map["JsonStr"] = self.jsonStr!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("JsonStr") {
            self.jsonStr = dict["JsonStr"] as! String
        }
    }
}

public class GetResultResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class ResultInfo : Tea.TeaModel {
            public class Agent : Tea.TeaModel {
                public var id: String?

                public var name: String?

                public var skillGroup: String?

                public override init() {
                    super.init()
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
                    if self.skillGroup != nil {
                        map["SkillGroup"] = self.skillGroup!
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
                    if dict.keys.contains("SkillGroup") {
                        self.skillGroup = dict["SkillGroup"] as! String
                    }
                }
            }
            public class AsrResult : Tea.TeaModel {
                public class AsrResult : Tea.TeaModel {
                    public var begin: Int64?

                    public var emotionValue: Int32?

                    public var end: Int64?

                    public var role: String?

                    public var speechRate: Int32?

                    public var words: String?

                    public override init() {
                        super.init()
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
                        if self.emotionValue != nil {
                            map["EmotionValue"] = self.emotionValue!
                        }
                        if self.end != nil {
                            map["End"] = self.end!
                        }
                        if self.role != nil {
                            map["Role"] = self.role!
                        }
                        if self.speechRate != nil {
                            map["SpeechRate"] = self.speechRate!
                        }
                        if self.words != nil {
                            map["Words"] = self.words!
                        }
                        return map
                    }

                    public override func fromMap(_ dict: [String: Any]) -> Void {
                        if dict.keys.contains("Begin") {
                            self.begin = dict["Begin"] as! Int64
                        }
                        if dict.keys.contains("EmotionValue") {
                            self.emotionValue = dict["EmotionValue"] as! Int32
                        }
                        if dict.keys.contains("End") {
                            self.end = dict["End"] as! Int64
                        }
                        if dict.keys.contains("Role") {
                            self.role = dict["Role"] as! String
                        }
                        if dict.keys.contains("SpeechRate") {
                            self.speechRate = dict["SpeechRate"] as! Int32
                        }
                        if dict.keys.contains("Words") {
                            self.words = dict["Words"] as! String
                        }
                    }
                }
                public var asrResult: [GetResultResponseBody.Data.ResultInfo.AsrResult.AsrResult]?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.asrResult != nil {
                        var tmp : [Any] = []
                        for k in self.asrResult! {
                            tmp.append(k.toMap())
                        }
                        map["AsrResult"] = tmp
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("AsrResult") {
                        self.asrResult = dict["AsrResult"] as! [GetResultResponseBody.Data.ResultInfo.AsrResult.AsrResult]
                    }
                }
            }
            public class HitResult : Tea.TeaModel {
                public class HitResult : Tea.TeaModel {
                    public class Hits : Tea.TeaModel {
                        public class Hit : Tea.TeaModel {
                            public class Cid : Tea.TeaModel {
                                public var cid: [String]?

                                public override init() {
                                    super.init()
                                }

                                public init(_ dict: [String: Any]) {
                                    super.init()
                                    self.fromMap(dict)
                                }

                                public override func validate() throws -> Void {
                                }

                                public override func toMap() -> [String : Any] {
                                    var map = super.toMap()
                                    if self.cid != nil {
                                        map["Cid"] = self.cid!
                                    }
                                    return map
                                }

                                public override func fromMap(_ dict: [String: Any]) -> Void {
                                    if dict.keys.contains("Cid") {
                                        self.cid = dict["Cid"] as! [String]
                                    }
                                }
                            }
                            public class KeyWords : Tea.TeaModel {
                                public class KeyWord : Tea.TeaModel {
                                    public var cid: String?

                                    public var from: Int32?

                                    public var to: Int32?

                                    public var val: String?

                                    public override init() {
                                        super.init()
                                    }

                                    public init(_ dict: [String: Any]) {
                                        super.init()
                                        self.fromMap(dict)
                                    }

                                    public override func validate() throws -> Void {
                                    }

                                    public override func toMap() -> [String : Any] {
                                        var map = super.toMap()
                                        if self.cid != nil {
                                            map["Cid"] = self.cid!
                                        }
                                        if self.from != nil {
                                            map["From"] = self.from!
                                        }
                                        if self.to != nil {
                                            map["To"] = self.to!
                                        }
                                        if self.val != nil {
                                            map["Val"] = self.val!
                                        }
                                        return map
                                    }

                                    public override func fromMap(_ dict: [String: Any]) -> Void {
                                        if dict.keys.contains("Cid") {
                                            self.cid = dict["Cid"] as! String
                                        }
                                        if dict.keys.contains("From") {
                                            self.from = dict["From"] as! Int32
                                        }
                                        if dict.keys.contains("To") {
                                            self.to = dict["To"] as! Int32
                                        }
                                        if dict.keys.contains("Val") {
                                            self.val = dict["Val"] as! String
                                        }
                                    }
                                }
                                public var keyWord: [GetResultResponseBody.Data.ResultInfo.HitResult.HitResult.Hits.Hit.KeyWords.KeyWord]?

                                public override init() {
                                    super.init()
                                }

                                public init(_ dict: [String: Any]) {
                                    super.init()
                                    self.fromMap(dict)
                                }

                                public override func validate() throws -> Void {
                                }

                                public override func toMap() -> [String : Any] {
                                    var map = super.toMap()
                                    if self.keyWord != nil {
                                        var tmp : [Any] = []
                                        for k in self.keyWord! {
                                            tmp.append(k.toMap())
                                        }
                                        map["KeyWord"] = tmp
                                    }
                                    return map
                                }

                                public override func fromMap(_ dict: [String: Any]) -> Void {
                                    if dict.keys.contains("KeyWord") {
                                        self.keyWord = dict["KeyWord"] as! [GetResultResponseBody.Data.ResultInfo.HitResult.HitResult.Hits.Hit.KeyWords.KeyWord]
                                    }
                                }
                            }
                            public class Phrase : Tea.TeaModel {
                                public var begin: Int64?

                                public var emotionValue: Int32?

                                public var end: Int32?

                                public var role: String?

                                public var words: String?

                                public override init() {
                                    super.init()
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
                                    if self.emotionValue != nil {
                                        map["EmotionValue"] = self.emotionValue!
                                    }
                                    if self.end != nil {
                                        map["End"] = self.end!
                                    }
                                    if self.role != nil {
                                        map["Role"] = self.role!
                                    }
                                    if self.words != nil {
                                        map["Words"] = self.words!
                                    }
                                    return map
                                }

                                public override func fromMap(_ dict: [String: Any]) -> Void {
                                    if dict.keys.contains("Begin") {
                                        self.begin = dict["Begin"] as! Int64
                                    }
                                    if dict.keys.contains("EmotionValue") {
                                        self.emotionValue = dict["EmotionValue"] as! Int32
                                    }
                                    if dict.keys.contains("End") {
                                        self.end = dict["End"] as! Int32
                                    }
                                    if dict.keys.contains("Role") {
                                        self.role = dict["Role"] as! String
                                    }
                                    if dict.keys.contains("Words") {
                                        self.words = dict["Words"] as! String
                                    }
                                }
                            }
                            public var cid: GetResultResponseBody.Data.ResultInfo.HitResult.HitResult.Hits.Hit.Cid?

                            public var keyWords: GetResultResponseBody.Data.ResultInfo.HitResult.HitResult.Hits.Hit.KeyWords?

                            public var phrase: GetResultResponseBody.Data.ResultInfo.HitResult.HitResult.Hits.Hit.Phrase?

                            public override init() {
                                super.init()
                            }

                            public init(_ dict: [String: Any]) {
                                super.init()
                                self.fromMap(dict)
                            }

                            public override func validate() throws -> Void {
                                try self.cid?.validate()
                                try self.keyWords?.validate()
                                try self.phrase?.validate()
                            }

                            public override func toMap() -> [String : Any] {
                                var map = super.toMap()
                                if self.cid != nil {
                                    map["Cid"] = self.cid?.toMap()
                                }
                                if self.keyWords != nil {
                                    map["KeyWords"] = self.keyWords?.toMap()
                                }
                                if self.phrase != nil {
                                    map["Phrase"] = self.phrase?.toMap()
                                }
                                return map
                            }

                            public override func fromMap(_ dict: [String: Any]) -> Void {
                                if dict.keys.contains("Cid") {
                                    var model = GetResultResponseBody.Data.ResultInfo.HitResult.HitResult.Hits.Hit.Cid()
                                    model.fromMap(dict["Cid"] as! [String: Any])
                                    self.cid = model
                                }
                                if dict.keys.contains("KeyWords") {
                                    var model = GetResultResponseBody.Data.ResultInfo.HitResult.HitResult.Hits.Hit.KeyWords()
                                    model.fromMap(dict["KeyWords"] as! [String: Any])
                                    self.keyWords = model
                                }
                                if dict.keys.contains("Phrase") {
                                    var model = GetResultResponseBody.Data.ResultInfo.HitResult.HitResult.Hits.Hit.Phrase()
                                    model.fromMap(dict["Phrase"] as! [String: Any])
                                    self.phrase = model
                                }
                            }
                        }
                        public var hit: [GetResultResponseBody.Data.ResultInfo.HitResult.HitResult.Hits.Hit]?

                        public override init() {
                            super.init()
                        }

                        public init(_ dict: [String: Any]) {
                            super.init()
                            self.fromMap(dict)
                        }

                        public override func validate() throws -> Void {
                        }

                        public override func toMap() -> [String : Any] {
                            var map = super.toMap()
                            if self.hit != nil {
                                var tmp : [Any] = []
                                for k in self.hit! {
                                    tmp.append(k.toMap())
                                }
                                map["Hit"] = tmp
                            }
                            return map
                        }

                        public override func fromMap(_ dict: [String: Any]) -> Void {
                            if dict.keys.contains("Hit") {
                                self.hit = dict["Hit"] as! [GetResultResponseBody.Data.ResultInfo.HitResult.HitResult.Hits.Hit]
                            }
                        }
                    }
                    public var hits: GetResultResponseBody.Data.ResultInfo.HitResult.HitResult.Hits?

                    public var name: String?

                    public var reviewResult: Int32?

                    public var rid: String?

                    public var schemeId: Int64?

                    public var schemeVersion: Int64?

                    public var type: String?

                    public override init() {
                        super.init()
                    }

                    public init(_ dict: [String: Any]) {
                        super.init()
                        self.fromMap(dict)
                    }

                    public override func validate() throws -> Void {
                        try self.hits?.validate()
                    }

                    public override func toMap() -> [String : Any] {
                        var map = super.toMap()
                        if self.hits != nil {
                            map["Hits"] = self.hits?.toMap()
                        }
                        if self.name != nil {
                            map["Name"] = self.name!
                        }
                        if self.reviewResult != nil {
                            map["ReviewResult"] = self.reviewResult!
                        }
                        if self.rid != nil {
                            map["Rid"] = self.rid!
                        }
                        if self.schemeId != nil {
                            map["SchemeId"] = self.schemeId!
                        }
                        if self.schemeVersion != nil {
                            map["SchemeVersion"] = self.schemeVersion!
                        }
                        if self.type != nil {
                            map["Type"] = self.type!
                        }
                        return map
                    }

                    public override func fromMap(_ dict: [String: Any]) -> Void {
                        if dict.keys.contains("Hits") {
                            var model = GetResultResponseBody.Data.ResultInfo.HitResult.HitResult.Hits()
                            model.fromMap(dict["Hits"] as! [String: Any])
                            self.hits = model
                        }
                        if dict.keys.contains("Name") {
                            self.name = dict["Name"] as! String
                        }
                        if dict.keys.contains("ReviewResult") {
                            self.reviewResult = dict["ReviewResult"] as! Int32
                        }
                        if dict.keys.contains("Rid") {
                            self.rid = dict["Rid"] as! String
                        }
                        if dict.keys.contains("SchemeId") {
                            self.schemeId = dict["SchemeId"] as! Int64
                        }
                        if dict.keys.contains("SchemeVersion") {
                            self.schemeVersion = dict["SchemeVersion"] as! Int64
                        }
                        if dict.keys.contains("Type") {
                            self.type = dict["Type"] as! String
                        }
                    }
                }
                public var hitResult: [GetResultResponseBody.Data.ResultInfo.HitResult.HitResult]?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.hitResult != nil {
                        var tmp : [Any] = []
                        for k in self.hitResult! {
                            tmp.append(k.toMap())
                        }
                        map["HitResult"] = tmp
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("HitResult") {
                        self.hitResult = dict["HitResult"] as! [GetResultResponseBody.Data.ResultInfo.HitResult.HitResult]
                    }
                }
            }
            public class HitScore : Tea.TeaModel {
                public class HitScore : Tea.TeaModel {
                    public var ruleId: String?

                    public var scoreId: String?

                    public var scoreName: String?

                    public var scoreNumber: String?

                    public override init() {
                        super.init()
                    }

                    public init(_ dict: [String: Any]) {
                        super.init()
                        self.fromMap(dict)
                    }

                    public override func validate() throws -> Void {
                    }

                    public override func toMap() -> [String : Any] {
                        var map = super.toMap()
                        if self.ruleId != nil {
                            map["RuleId"] = self.ruleId!
                        }
                        if self.scoreId != nil {
                            map["ScoreId"] = self.scoreId!
                        }
                        if self.scoreName != nil {
                            map["ScoreName"] = self.scoreName!
                        }
                        if self.scoreNumber != nil {
                            map["ScoreNumber"] = self.scoreNumber!
                        }
                        return map
                    }

                    public override func fromMap(_ dict: [String: Any]) -> Void {
                        if dict.keys.contains("RuleId") {
                            self.ruleId = dict["RuleId"] as! String
                        }
                        if dict.keys.contains("ScoreId") {
                            self.scoreId = dict["ScoreId"] as! String
                        }
                        if dict.keys.contains("ScoreName") {
                            self.scoreName = dict["ScoreName"] as! String
                        }
                        if dict.keys.contains("ScoreNumber") {
                            self.scoreNumber = dict["ScoreNumber"] as! String
                        }
                    }
                }
                public var hitScore: [GetResultResponseBody.Data.ResultInfo.HitScore.HitScore]?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.hitScore != nil {
                        var tmp : [Any] = []
                        for k in self.hitScore! {
                            tmp.append(k.toMap())
                        }
                        map["HitScore"] = tmp
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("HitScore") {
                        self.hitScore = dict["HitScore"] as! [GetResultResponseBody.Data.ResultInfo.HitScore.HitScore]
                    }
                }
            }
            public class Recording : Tea.TeaModel {
                public var business: String?

                public var callId: String?

                public var callTime: String?

                public var callType: Int32?

                public var callee: String?

                public var caller: String?

                public var dataSetName: String?

                public var dialogueSize: Int32?

                public var duration: Int64?

                public var id: String?

                public var name: String?

                public var primaryId: String?

                public var remark1: String?

                public var remark10: String?

                public var remark11: String?

                public var remark12: String?

                public var remark13: String?

                public var remark2: String?

                public var remark3: String?

                public var remark4: String?

                public var remark5: Int64?

                public var remark6: String?

                public var remark7: String?

                public var remark8: String?

                public var remark9: String?

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
                    if self.business != nil {
                        map["Business"] = self.business!
                    }
                    if self.callId != nil {
                        map["CallId"] = self.callId!
                    }
                    if self.callTime != nil {
                        map["CallTime"] = self.callTime!
                    }
                    if self.callType != nil {
                        map["CallType"] = self.callType!
                    }
                    if self.callee != nil {
                        map["Callee"] = self.callee!
                    }
                    if self.caller != nil {
                        map["Caller"] = self.caller!
                    }
                    if self.dataSetName != nil {
                        map["DataSetName"] = self.dataSetName!
                    }
                    if self.dialogueSize != nil {
                        map["DialogueSize"] = self.dialogueSize!
                    }
                    if self.duration != nil {
                        map["Duration"] = self.duration!
                    }
                    if self.id != nil {
                        map["Id"] = self.id!
                    }
                    if self.name != nil {
                        map["Name"] = self.name!
                    }
                    if self.primaryId != nil {
                        map["PrimaryId"] = self.primaryId!
                    }
                    if self.remark1 != nil {
                        map["Remark1"] = self.remark1!
                    }
                    if self.remark10 != nil {
                        map["Remark10"] = self.remark10!
                    }
                    if self.remark11 != nil {
                        map["Remark11"] = self.remark11!
                    }
                    if self.remark12 != nil {
                        map["Remark12"] = self.remark12!
                    }
                    if self.remark13 != nil {
                        map["Remark13"] = self.remark13!
                    }
                    if self.remark2 != nil {
                        map["Remark2"] = self.remark2!
                    }
                    if self.remark3 != nil {
                        map["Remark3"] = self.remark3!
                    }
                    if self.remark4 != nil {
                        map["Remark4"] = self.remark4!
                    }
                    if self.remark5 != nil {
                        map["Remark5"] = self.remark5!
                    }
                    if self.remark6 != nil {
                        map["Remark6"] = self.remark6!
                    }
                    if self.remark7 != nil {
                        map["Remark7"] = self.remark7!
                    }
                    if self.remark8 != nil {
                        map["Remark8"] = self.remark8!
                    }
                    if self.remark9 != nil {
                        map["Remark9"] = self.remark9!
                    }
                    if self.url != nil {
                        map["Url"] = self.url!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("Business") {
                        self.business = dict["Business"] as! String
                    }
                    if dict.keys.contains("CallId") {
                        self.callId = dict["CallId"] as! String
                    }
                    if dict.keys.contains("CallTime") {
                        self.callTime = dict["CallTime"] as! String
                    }
                    if dict.keys.contains("CallType") {
                        self.callType = dict["CallType"] as! Int32
                    }
                    if dict.keys.contains("Callee") {
                        self.callee = dict["Callee"] as! String
                    }
                    if dict.keys.contains("Caller") {
                        self.caller = dict["Caller"] as! String
                    }
                    if dict.keys.contains("DataSetName") {
                        self.dataSetName = dict["DataSetName"] as! String
                    }
                    if dict.keys.contains("DialogueSize") {
                        self.dialogueSize = dict["DialogueSize"] as! Int32
                    }
                    if dict.keys.contains("Duration") {
                        self.duration = dict["Duration"] as! Int64
                    }
                    if dict.keys.contains("Id") {
                        self.id = dict["Id"] as! String
                    }
                    if dict.keys.contains("Name") {
                        self.name = dict["Name"] as! String
                    }
                    if dict.keys.contains("PrimaryId") {
                        self.primaryId = dict["PrimaryId"] as! String
                    }
                    if dict.keys.contains("Remark1") {
                        self.remark1 = dict["Remark1"] as! String
                    }
                    if dict.keys.contains("Remark10") {
                        self.remark10 = dict["Remark10"] as! String
                    }
                    if dict.keys.contains("Remark11") {
                        self.remark11 = dict["Remark11"] as! String
                    }
                    if dict.keys.contains("Remark12") {
                        self.remark12 = dict["Remark12"] as! String
                    }
                    if dict.keys.contains("Remark13") {
                        self.remark13 = dict["Remark13"] as! String
                    }
                    if dict.keys.contains("Remark2") {
                        self.remark2 = dict["Remark2"] as! String
                    }
                    if dict.keys.contains("Remark3") {
                        self.remark3 = dict["Remark3"] as! String
                    }
                    if dict.keys.contains("Remark4") {
                        self.remark4 = dict["Remark4"] as! String
                    }
                    if dict.keys.contains("Remark5") {
                        self.remark5 = dict["Remark5"] as! Int64
                    }
                    if dict.keys.contains("Remark6") {
                        self.remark6 = dict["Remark6"] as! String
                    }
                    if dict.keys.contains("Remark7") {
                        self.remark7 = dict["Remark7"] as! String
                    }
                    if dict.keys.contains("Remark8") {
                        self.remark8 = dict["Remark8"] as! String
                    }
                    if dict.keys.contains("Remark9") {
                        self.remark9 = dict["Remark9"] as! String
                    }
                    if dict.keys.contains("Url") {
                        self.url = dict["Url"] as! String
                    }
                }
            }
            public class SchemeIdList : Tea.TeaModel {
                public var schemeIdList: [Int64]?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.schemeIdList != nil {
                        map["SchemeIdList"] = self.schemeIdList!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("SchemeIdList") {
                        self.schemeIdList = dict["SchemeIdList"] as! [Int64]
                    }
                }
            }
            public class SchemeNameList : Tea.TeaModel {
                public var schemeNameList: [String]?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.schemeNameList != nil {
                        map["SchemeNameList"] = self.schemeNameList!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("SchemeNameList") {
                        self.schemeNameList = dict["SchemeNameList"] as! [String]
                    }
                }
            }
            public var agent: GetResultResponseBody.Data.ResultInfo.Agent?

            public var asrResult: GetResultResponseBody.Data.ResultInfo.AsrResult?

            public var assignmentTime: String?

            public var comments: String?

            public var createTime: String?

            public var createTimeLong: String?

            public var errorMessage: String?

            public var hitResult: GetResultResponseBody.Data.ResultInfo.HitResult?

            public var hitScore: GetResultResponseBody.Data.ResultInfo.HitScore?

            public var lastDataId: String?

            public var recording: GetResultResponseBody.Data.ResultInfo.Recording?

            public var resolver: String?

            public var reviewResult: Int32?

            public var reviewStatus: Int32?

            public var reviewTime: String?

            public var reviewTimeLong: String?

            public var reviewType: Int32?

            public var reviewer: String?

            public var schemeIdList: GetResultResponseBody.Data.ResultInfo.SchemeIdList?

            public var schemeNameList: GetResultResponseBody.Data.ResultInfo.SchemeNameList?

            public var score: Int32?

            public var status: Int32?

            public var taskId: String?

            public var taskName: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
                try self.agent?.validate()
                try self.asrResult?.validate()
                try self.hitResult?.validate()
                try self.hitScore?.validate()
                try self.recording?.validate()
                try self.schemeIdList?.validate()
                try self.schemeNameList?.validate()
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.agent != nil {
                    map["Agent"] = self.agent?.toMap()
                }
                if self.asrResult != nil {
                    map["AsrResult"] = self.asrResult?.toMap()
                }
                if self.assignmentTime != nil {
                    map["AssignmentTime"] = self.assignmentTime!
                }
                if self.comments != nil {
                    map["Comments"] = self.comments!
                }
                if self.createTime != nil {
                    map["CreateTime"] = self.createTime!
                }
                if self.createTimeLong != nil {
                    map["CreateTimeLong"] = self.createTimeLong!
                }
                if self.errorMessage != nil {
                    map["ErrorMessage"] = self.errorMessage!
                }
                if self.hitResult != nil {
                    map["HitResult"] = self.hitResult?.toMap()
                }
                if self.hitScore != nil {
                    map["HitScore"] = self.hitScore?.toMap()
                }
                if self.lastDataId != nil {
                    map["LastDataId"] = self.lastDataId!
                }
                if self.recording != nil {
                    map["Recording"] = self.recording?.toMap()
                }
                if self.resolver != nil {
                    map["Resolver"] = self.resolver!
                }
                if self.reviewResult != nil {
                    map["ReviewResult"] = self.reviewResult!
                }
                if self.reviewStatus != nil {
                    map["ReviewStatus"] = self.reviewStatus!
                }
                if self.reviewTime != nil {
                    map["ReviewTime"] = self.reviewTime!
                }
                if self.reviewTimeLong != nil {
                    map["ReviewTimeLong"] = self.reviewTimeLong!
                }
                if self.reviewType != nil {
                    map["ReviewType"] = self.reviewType!
                }
                if self.reviewer != nil {
                    map["Reviewer"] = self.reviewer!
                }
                if self.schemeIdList != nil {
                    map["SchemeIdList"] = self.schemeIdList?.toMap()
                }
                if self.schemeNameList != nil {
                    map["SchemeNameList"] = self.schemeNameList?.toMap()
                }
                if self.score != nil {
                    map["Score"] = self.score!
                }
                if self.status != nil {
                    map["Status"] = self.status!
                }
                if self.taskId != nil {
                    map["TaskId"] = self.taskId!
                }
                if self.taskName != nil {
                    map["TaskName"] = self.taskName!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("Agent") {
                    var model = GetResultResponseBody.Data.ResultInfo.Agent()
                    model.fromMap(dict["Agent"] as! [String: Any])
                    self.agent = model
                }
                if dict.keys.contains("AsrResult") {
                    var model = GetResultResponseBody.Data.ResultInfo.AsrResult()
                    model.fromMap(dict["AsrResult"] as! [String: Any])
                    self.asrResult = model
                }
                if dict.keys.contains("AssignmentTime") {
                    self.assignmentTime = dict["AssignmentTime"] as! String
                }
                if dict.keys.contains("Comments") {
                    self.comments = dict["Comments"] as! String
                }
                if dict.keys.contains("CreateTime") {
                    self.createTime = dict["CreateTime"] as! String
                }
                if dict.keys.contains("CreateTimeLong") {
                    self.createTimeLong = dict["CreateTimeLong"] as! String
                }
                if dict.keys.contains("ErrorMessage") {
                    self.errorMessage = dict["ErrorMessage"] as! String
                }
                if dict.keys.contains("HitResult") {
                    var model = GetResultResponseBody.Data.ResultInfo.HitResult()
                    model.fromMap(dict["HitResult"] as! [String: Any])
                    self.hitResult = model
                }
                if dict.keys.contains("HitScore") {
                    var model = GetResultResponseBody.Data.ResultInfo.HitScore()
                    model.fromMap(dict["HitScore"] as! [String: Any])
                    self.hitScore = model
                }
                if dict.keys.contains("LastDataId") {
                    self.lastDataId = dict["LastDataId"] as! String
                }
                if dict.keys.contains("Recording") {
                    var model = GetResultResponseBody.Data.ResultInfo.Recording()
                    model.fromMap(dict["Recording"] as! [String: Any])
                    self.recording = model
                }
                if dict.keys.contains("Resolver") {
                    self.resolver = dict["Resolver"] as! String
                }
                if dict.keys.contains("ReviewResult") {
                    self.reviewResult = dict["ReviewResult"] as! Int32
                }
                if dict.keys.contains("ReviewStatus") {
                    self.reviewStatus = dict["ReviewStatus"] as! Int32
                }
                if dict.keys.contains("ReviewTime") {
                    self.reviewTime = dict["ReviewTime"] as! String
                }
                if dict.keys.contains("ReviewTimeLong") {
                    self.reviewTimeLong = dict["ReviewTimeLong"] as! String
                }
                if dict.keys.contains("ReviewType") {
                    self.reviewType = dict["ReviewType"] as! Int32
                }
                if dict.keys.contains("Reviewer") {
                    self.reviewer = dict["Reviewer"] as! String
                }
                if dict.keys.contains("SchemeIdList") {
                    var model = GetResultResponseBody.Data.ResultInfo.SchemeIdList()
                    model.fromMap(dict["SchemeIdList"] as! [String: Any])
                    self.schemeIdList = model
                }
                if dict.keys.contains("SchemeNameList") {
                    var model = GetResultResponseBody.Data.ResultInfo.SchemeNameList()
                    model.fromMap(dict["SchemeNameList"] as! [String: Any])
                    self.schemeNameList = model
                }
                if dict.keys.contains("Score") {
                    self.score = dict["Score"] as! Int32
                }
                if dict.keys.contains("Status") {
                    self.status = dict["Status"] as! Int32
                }
                if dict.keys.contains("TaskId") {
                    self.taskId = dict["TaskId"] as! String
                }
                if dict.keys.contains("TaskName") {
                    self.taskName = dict["TaskName"] as! String
                }
            }
        }
        public var resultInfo: [GetResultResponseBody.Data.ResultInfo]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.resultInfo != nil {
                var tmp : [Any] = []
                for k in self.resultInfo! {
                    tmp.append(k.toMap())
                }
                map["ResultInfo"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("ResultInfo") {
                self.resultInfo = dict["ResultInfo"] as! [GetResultResponseBody.Data.ResultInfo]
            }
        }
    }
    public var code: String?

    public var count: Int32?

    public var data: GetResultResponseBody.Data?

    public var message: String?

    public var pageNumber: Int32?

    public var pageSize: Int32?

    public var requestId: String?

    public var resultCountId: String?

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
        if self.count != nil {
            map["Count"] = self.count!
        }
        if self.data != nil {
            map["Data"] = self.data?.toMap()
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
        if self.resultCountId != nil {
            map["ResultCountId"] = self.resultCountId!
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
        if dict.keys.contains("Count") {
            self.count = dict["Count"] as! Int32
        }
        if dict.keys.contains("Data") {
            var model = GetResultResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
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
        if dict.keys.contains("ResultCountId") {
            self.resultCountId = dict["ResultCountId"] as! String
        }
        if dict.keys.contains("Success") {
            self.success = dict["Success"] as! Bool
        }
    }
}

public class GetResultResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetResultResponseBody?

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
            var model = GetResultResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetResultCallbackRequest : Tea.TeaModel {
    public var jsonStr: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.jsonStr != nil {
            map["JsonStr"] = self.jsonStr!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("JsonStr") {
            self.jsonStr = dict["JsonStr"] as! String
        }
    }
}

public class GetResultCallbackResponseBody : Tea.TeaModel {
    public var code: String?

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

public class GetResultCallbackResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetResultCallbackResponseBody?

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
            var model = GetResultCallbackResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetResultToReviewRequest : Tea.TeaModel {
    public var jsonStr: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.jsonStr != nil {
            map["JsonStr"] = self.jsonStr!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("JsonStr") {
            self.jsonStr = dict["JsonStr"] as! String
        }
    }
}

public class GetResultToReviewResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class Dialogues : Tea.TeaModel {
            public class Dialogue : Tea.TeaModel {
                public var begin: Int64?

                public var beginTime: String?

                public var emotionValue: Int32?

                public var end: Int64?

                public var hourMinSec: String?

                public var identity: String?

                public var role: String?

                public var silenceDuration: Int32?

                public var speechRate: Int32?

                public var words: String?

                public override init() {
                    super.init()
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
                    if self.beginTime != nil {
                        map["BeginTime"] = self.beginTime!
                    }
                    if self.emotionValue != nil {
                        map["EmotionValue"] = self.emotionValue!
                    }
                    if self.end != nil {
                        map["End"] = self.end!
                    }
                    if self.hourMinSec != nil {
                        map["HourMinSec"] = self.hourMinSec!
                    }
                    if self.identity != nil {
                        map["Identity"] = self.identity!
                    }
                    if self.role != nil {
                        map["Role"] = self.role!
                    }
                    if self.silenceDuration != nil {
                        map["SilenceDuration"] = self.silenceDuration!
                    }
                    if self.speechRate != nil {
                        map["SpeechRate"] = self.speechRate!
                    }
                    if self.words != nil {
                        map["Words"] = self.words!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("Begin") {
                        self.begin = dict["Begin"] as! Int64
                    }
                    if dict.keys.contains("BeginTime") {
                        self.beginTime = dict["BeginTime"] as! String
                    }
                    if dict.keys.contains("EmotionValue") {
                        self.emotionValue = dict["EmotionValue"] as! Int32
                    }
                    if dict.keys.contains("End") {
                        self.end = dict["End"] as! Int64
                    }
                    if dict.keys.contains("HourMinSec") {
                        self.hourMinSec = dict["HourMinSec"] as! String
                    }
                    if dict.keys.contains("Identity") {
                        self.identity = dict["Identity"] as! String
                    }
                    if dict.keys.contains("Role") {
                        self.role = dict["Role"] as! String
                    }
                    if dict.keys.contains("SilenceDuration") {
                        self.silenceDuration = dict["SilenceDuration"] as! Int32
                    }
                    if dict.keys.contains("SpeechRate") {
                        self.speechRate = dict["SpeechRate"] as! Int32
                    }
                    if dict.keys.contains("Words") {
                        self.words = dict["Words"] as! String
                    }
                }
            }
            public var dialogue: [GetResultToReviewResponseBody.Data.Dialogues.Dialogue]?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.dialogue != nil {
                    var tmp : [Any] = []
                    for k in self.dialogue! {
                        tmp.append(k.toMap())
                    }
                    map["Dialogue"] = tmp
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("Dialogue") {
                    self.dialogue = dict["Dialogue"] as! [GetResultToReviewResponseBody.Data.Dialogues.Dialogue]
                }
            }
        }
        public class HitRuleReviewInfoList : Tea.TeaModel {
            public class HitRuleReviewInfo : Tea.TeaModel {
                public class ComplainHistories : Tea.TeaModel {
                    public class ComplainHistories : Tea.TeaModel {
                        public var comments: String?

                        public var operationTime: String?

                        public var operationType: Int32?

                        public var operator_: Int64?

                        public var operatorName: String?

                        public override init() {
                            super.init()
                        }

                        public init(_ dict: [String: Any]) {
                            super.init()
                            self.fromMap(dict)
                        }

                        public override func validate() throws -> Void {
                        }

                        public override func toMap() -> [String : Any] {
                            var map = super.toMap()
                            if self.comments != nil {
                                map["Comments"] = self.comments!
                            }
                            if self.operationTime != nil {
                                map["OperationTime"] = self.operationTime!
                            }
                            if self.operationType != nil {
                                map["OperationType"] = self.operationType!
                            }
                            if self.operator_ != nil {
                                map["Operator"] = self.operator_!
                            }
                            if self.operatorName != nil {
                                map["OperatorName"] = self.operatorName!
                            }
                            return map
                        }

                        public override func fromMap(_ dict: [String: Any]) -> Void {
                            if dict.keys.contains("Comments") {
                                self.comments = dict["Comments"] as! String
                            }
                            if dict.keys.contains("OperationTime") {
                                self.operationTime = dict["OperationTime"] as! String
                            }
                            if dict.keys.contains("OperationType") {
                                self.operationType = dict["OperationType"] as! Int32
                            }
                            if dict.keys.contains("Operator") {
                                self.operator_ = dict["Operator"] as! Int64
                            }
                            if dict.keys.contains("OperatorName") {
                                self.operatorName = dict["OperatorName"] as! String
                            }
                        }
                    }
                    public var complainHistories: [GetResultToReviewResponseBody.Data.HitRuleReviewInfoList.HitRuleReviewInfo.ComplainHistories.ComplainHistories]?

                    public override init() {
                        super.init()
                    }

                    public init(_ dict: [String: Any]) {
                        super.init()
                        self.fromMap(dict)
                    }

                    public override func validate() throws -> Void {
                    }

                    public override func toMap() -> [String : Any] {
                        var map = super.toMap()
                        if self.complainHistories != nil {
                            var tmp : [Any] = []
                            for k in self.complainHistories! {
                                tmp.append(k.toMap())
                            }
                            map["ComplainHistories"] = tmp
                        }
                        return map
                    }

                    public override func fromMap(_ dict: [String: Any]) -> Void {
                        if dict.keys.contains("ComplainHistories") {
                            self.complainHistories = dict["ComplainHistories"] as! [GetResultToReviewResponseBody.Data.HitRuleReviewInfoList.HitRuleReviewInfo.ComplainHistories.ComplainHistories]
                        }
                    }
                }
                public class ConditionHitInfoList : Tea.TeaModel {
                    public class ConditionHitInfo : Tea.TeaModel {
                        public class Cid : Tea.TeaModel {
                            public var cid: [String]?

                            public override init() {
                                super.init()
                            }

                            public init(_ dict: [String: Any]) {
                                super.init()
                                self.fromMap(dict)
                            }

                            public override func validate() throws -> Void {
                            }

                            public override func toMap() -> [String : Any] {
                                var map = super.toMap()
                                if self.cid != nil {
                                    map["Cid"] = self.cid!
                                }
                                return map
                            }

                            public override func fromMap(_ dict: [String: Any]) -> Void {
                                if dict.keys.contains("Cid") {
                                    self.cid = dict["Cid"] as! [String]
                                }
                            }
                        }
                        public class KeyWords : Tea.TeaModel {
                            public class KeyWord : Tea.TeaModel {
                                public var cid: String?

                                public var customizeCode: String?

                                public var from: Int32?

                                public var pid: Int32?

                                public var tid: String?

                                public var to: Int32?

                                public var val: String?

                                public override init() {
                                    super.init()
                                }

                                public init(_ dict: [String: Any]) {
                                    super.init()
                                    self.fromMap(dict)
                                }

                                public override func validate() throws -> Void {
                                }

                                public override func toMap() -> [String : Any] {
                                    var map = super.toMap()
                                    if self.cid != nil {
                                        map["Cid"] = self.cid!
                                    }
                                    if self.customizeCode != nil {
                                        map["CustomizeCode"] = self.customizeCode!
                                    }
                                    if self.from != nil {
                                        map["From"] = self.from!
                                    }
                                    if self.pid != nil {
                                        map["Pid"] = self.pid!
                                    }
                                    if self.tid != nil {
                                        map["Tid"] = self.tid!
                                    }
                                    if self.to != nil {
                                        map["To"] = self.to!
                                    }
                                    if self.val != nil {
                                        map["Val"] = self.val!
                                    }
                                    return map
                                }

                                public override func fromMap(_ dict: [String: Any]) -> Void {
                                    if dict.keys.contains("Cid") {
                                        self.cid = dict["Cid"] as! String
                                    }
                                    if dict.keys.contains("CustomizeCode") {
                                        self.customizeCode = dict["CustomizeCode"] as! String
                                    }
                                    if dict.keys.contains("From") {
                                        self.from = dict["From"] as! Int32
                                    }
                                    if dict.keys.contains("Pid") {
                                        self.pid = dict["Pid"] as! Int32
                                    }
                                    if dict.keys.contains("Tid") {
                                        self.tid = dict["Tid"] as! String
                                    }
                                    if dict.keys.contains("To") {
                                        self.to = dict["To"] as! Int32
                                    }
                                    if dict.keys.contains("Val") {
                                        self.val = dict["Val"] as! String
                                    }
                                }
                            }
                            public var keyWord: [GetResultToReviewResponseBody.Data.HitRuleReviewInfoList.HitRuleReviewInfo.ConditionHitInfoList.ConditionHitInfo.KeyWords.KeyWord]?

                            public override init() {
                                super.init()
                            }

                            public init(_ dict: [String: Any]) {
                                super.init()
                                self.fromMap(dict)
                            }

                            public override func validate() throws -> Void {
                            }

                            public override func toMap() -> [String : Any] {
                                var map = super.toMap()
                                if self.keyWord != nil {
                                    var tmp : [Any] = []
                                    for k in self.keyWord! {
                                        tmp.append(k.toMap())
                                    }
                                    map["KeyWord"] = tmp
                                }
                                return map
                            }

                            public override func fromMap(_ dict: [String: Any]) -> Void {
                                if dict.keys.contains("KeyWord") {
                                    self.keyWord = dict["KeyWord"] as! [GetResultToReviewResponseBody.Data.HitRuleReviewInfoList.HitRuleReviewInfo.ConditionHitInfoList.ConditionHitInfo.KeyWords.KeyWord]
                                }
                            }
                        }
                        public class Phrase : Tea.TeaModel {
                            public var begin: Int64?

                            public var emotionValue: Int32?

                            public var end: Int64?

                            public var identity: String?

                            public var pid: Int32?

                            public var role: String?

                            public var words: String?

                            public override init() {
                                super.init()
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
                                if self.emotionValue != nil {
                                    map["EmotionValue"] = self.emotionValue!
                                }
                                if self.end != nil {
                                    map["End"] = self.end!
                                }
                                if self.identity != nil {
                                    map["Identity"] = self.identity!
                                }
                                if self.pid != nil {
                                    map["Pid"] = self.pid!
                                }
                                if self.role != nil {
                                    map["Role"] = self.role!
                                }
                                if self.words != nil {
                                    map["Words"] = self.words!
                                }
                                return map
                            }

                            public override func fromMap(_ dict: [String: Any]) -> Void {
                                if dict.keys.contains("Begin") {
                                    self.begin = dict["Begin"] as! Int64
                                }
                                if dict.keys.contains("EmotionValue") {
                                    self.emotionValue = dict["EmotionValue"] as! Int32
                                }
                                if dict.keys.contains("End") {
                                    self.end = dict["End"] as! Int64
                                }
                                if dict.keys.contains("Identity") {
                                    self.identity = dict["Identity"] as! String
                                }
                                if dict.keys.contains("Pid") {
                                    self.pid = dict["Pid"] as! Int32
                                }
                                if dict.keys.contains("Role") {
                                    self.role = dict["Role"] as! String
                                }
                                if dict.keys.contains("Words") {
                                    self.words = dict["Words"] as! String
                                }
                            }
                        }
                        public var cid: GetResultToReviewResponseBody.Data.HitRuleReviewInfoList.HitRuleReviewInfo.ConditionHitInfoList.ConditionHitInfo.Cid?

                        public var keyWords: GetResultToReviewResponseBody.Data.HitRuleReviewInfoList.HitRuleReviewInfo.ConditionHitInfoList.ConditionHitInfo.KeyWords?

                        public var phrase: GetResultToReviewResponseBody.Data.HitRuleReviewInfoList.HitRuleReviewInfo.ConditionHitInfoList.ConditionHitInfo.Phrase?

                        public override init() {
                            super.init()
                        }

                        public init(_ dict: [String: Any]) {
                            super.init()
                            self.fromMap(dict)
                        }

                        public override func validate() throws -> Void {
                            try self.cid?.validate()
                            try self.keyWords?.validate()
                            try self.phrase?.validate()
                        }

                        public override func toMap() -> [String : Any] {
                            var map = super.toMap()
                            if self.cid != nil {
                                map["Cid"] = self.cid?.toMap()
                            }
                            if self.keyWords != nil {
                                map["KeyWords"] = self.keyWords?.toMap()
                            }
                            if self.phrase != nil {
                                map["Phrase"] = self.phrase?.toMap()
                            }
                            return map
                        }

                        public override func fromMap(_ dict: [String: Any]) -> Void {
                            if dict.keys.contains("Cid") {
                                var model = GetResultToReviewResponseBody.Data.HitRuleReviewInfoList.HitRuleReviewInfo.ConditionHitInfoList.ConditionHitInfo.Cid()
                                model.fromMap(dict["Cid"] as! [String: Any])
                                self.cid = model
                            }
                            if dict.keys.contains("KeyWords") {
                                var model = GetResultToReviewResponseBody.Data.HitRuleReviewInfoList.HitRuleReviewInfo.ConditionHitInfoList.ConditionHitInfo.KeyWords()
                                model.fromMap(dict["KeyWords"] as! [String: Any])
                                self.keyWords = model
                            }
                            if dict.keys.contains("Phrase") {
                                var model = GetResultToReviewResponseBody.Data.HitRuleReviewInfoList.HitRuleReviewInfo.ConditionHitInfoList.ConditionHitInfo.Phrase()
                                model.fromMap(dict["Phrase"] as! [String: Any])
                                self.phrase = model
                            }
                        }
                    }
                    public var conditionHitInfo: [GetResultToReviewResponseBody.Data.HitRuleReviewInfoList.HitRuleReviewInfo.ConditionHitInfoList.ConditionHitInfo]?

                    public override init() {
                        super.init()
                    }

                    public init(_ dict: [String: Any]) {
                        super.init()
                        self.fromMap(dict)
                    }

                    public override func validate() throws -> Void {
                    }

                    public override func toMap() -> [String : Any] {
                        var map = super.toMap()
                        if self.conditionHitInfo != nil {
                            var tmp : [Any] = []
                            for k in self.conditionHitInfo! {
                                tmp.append(k.toMap())
                            }
                            map["ConditionHitInfo"] = tmp
                        }
                        return map
                    }

                    public override func fromMap(_ dict: [String: Any]) -> Void {
                        if dict.keys.contains("ConditionHitInfo") {
                            self.conditionHitInfo = dict["ConditionHitInfo"] as! [GetResultToReviewResponseBody.Data.HitRuleReviewInfoList.HitRuleReviewInfo.ConditionHitInfoList.ConditionHitInfo]
                        }
                    }
                }
                public class ReviewInfo : Tea.TeaModel {
                    public var hitId: String?

                    public var reviewResult: Int32?

                    public var reviewTime: String?

                    public var reviewer: String?

                    public var rid: Int64?

                    public override init() {
                        super.init()
                    }

                    public init(_ dict: [String: Any]) {
                        super.init()
                        self.fromMap(dict)
                    }

                    public override func validate() throws -> Void {
                    }

                    public override func toMap() -> [String : Any] {
                        var map = super.toMap()
                        if self.hitId != nil {
                            map["HitId"] = self.hitId!
                        }
                        if self.reviewResult != nil {
                            map["ReviewResult"] = self.reviewResult!
                        }
                        if self.reviewTime != nil {
                            map["ReviewTime"] = self.reviewTime!
                        }
                        if self.reviewer != nil {
                            map["Reviewer"] = self.reviewer!
                        }
                        if self.rid != nil {
                            map["Rid"] = self.rid!
                        }
                        return map
                    }

                    public override func fromMap(_ dict: [String: Any]) -> Void {
                        if dict.keys.contains("HitId") {
                            self.hitId = dict["HitId"] as! String
                        }
                        if dict.keys.contains("ReviewResult") {
                            self.reviewResult = dict["ReviewResult"] as! Int32
                        }
                        if dict.keys.contains("ReviewTime") {
                            self.reviewTime = dict["ReviewTime"] as! String
                        }
                        if dict.keys.contains("Reviewer") {
                            self.reviewer = dict["Reviewer"] as! String
                        }
                        if dict.keys.contains("Rid") {
                            self.rid = dict["Rid"] as! Int64
                        }
                    }
                }
                public var autoReview: Int32?

                public var complainHistories: GetResultToReviewResponseBody.Data.HitRuleReviewInfoList.HitRuleReviewInfo.ComplainHistories?

                public var complainable: Bool?

                public var conditionHitInfoList: GetResultToReviewResponseBody.Data.HitRuleReviewInfoList.HitRuleReviewInfo.ConditionHitInfoList?

                public var reviewInfo: GetResultToReviewResponseBody.Data.HitRuleReviewInfoList.HitRuleReviewInfo.ReviewInfo?

                public var rid: Int64?

                public var ruleName: String?

                public var scoreId: Int64?

                public var scoreNum: Int32?

                public var scoreSubId: Int64?

                public var scoreSubName: String?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                    try self.complainHistories?.validate()
                    try self.conditionHitInfoList?.validate()
                    try self.reviewInfo?.validate()
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.autoReview != nil {
                        map["AutoReview"] = self.autoReview!
                    }
                    if self.complainHistories != nil {
                        map["ComplainHistories"] = self.complainHistories?.toMap()
                    }
                    if self.complainable != nil {
                        map["Complainable"] = self.complainable!
                    }
                    if self.conditionHitInfoList != nil {
                        map["ConditionHitInfoList"] = self.conditionHitInfoList?.toMap()
                    }
                    if self.reviewInfo != nil {
                        map["ReviewInfo"] = self.reviewInfo?.toMap()
                    }
                    if self.rid != nil {
                        map["Rid"] = self.rid!
                    }
                    if self.ruleName != nil {
                        map["RuleName"] = self.ruleName!
                    }
                    if self.scoreId != nil {
                        map["ScoreId"] = self.scoreId!
                    }
                    if self.scoreNum != nil {
                        map["ScoreNum"] = self.scoreNum!
                    }
                    if self.scoreSubId != nil {
                        map["ScoreSubId"] = self.scoreSubId!
                    }
                    if self.scoreSubName != nil {
                        map["ScoreSubName"] = self.scoreSubName!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("AutoReview") {
                        self.autoReview = dict["AutoReview"] as! Int32
                    }
                    if dict.keys.contains("ComplainHistories") {
                        var model = GetResultToReviewResponseBody.Data.HitRuleReviewInfoList.HitRuleReviewInfo.ComplainHistories()
                        model.fromMap(dict["ComplainHistories"] as! [String: Any])
                        self.complainHistories = model
                    }
                    if dict.keys.contains("Complainable") {
                        self.complainable = dict["Complainable"] as! Bool
                    }
                    if dict.keys.contains("ConditionHitInfoList") {
                        var model = GetResultToReviewResponseBody.Data.HitRuleReviewInfoList.HitRuleReviewInfo.ConditionHitInfoList()
                        model.fromMap(dict["ConditionHitInfoList"] as! [String: Any])
                        self.conditionHitInfoList = model
                    }
                    if dict.keys.contains("ReviewInfo") {
                        var model = GetResultToReviewResponseBody.Data.HitRuleReviewInfoList.HitRuleReviewInfo.ReviewInfo()
                        model.fromMap(dict["ReviewInfo"] as! [String: Any])
                        self.reviewInfo = model
                    }
                    if dict.keys.contains("Rid") {
                        self.rid = dict["Rid"] as! Int64
                    }
                    if dict.keys.contains("RuleName") {
                        self.ruleName = dict["RuleName"] as! String
                    }
                    if dict.keys.contains("ScoreId") {
                        self.scoreId = dict["ScoreId"] as! Int64
                    }
                    if dict.keys.contains("ScoreNum") {
                        self.scoreNum = dict["ScoreNum"] as! Int32
                    }
                    if dict.keys.contains("ScoreSubId") {
                        self.scoreSubId = dict["ScoreSubId"] as! Int64
                    }
                    if dict.keys.contains("ScoreSubName") {
                        self.scoreSubName = dict["ScoreSubName"] as! String
                    }
                }
            }
            public var hitRuleReviewInfo: [GetResultToReviewResponseBody.Data.HitRuleReviewInfoList.HitRuleReviewInfo]?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.hitRuleReviewInfo != nil {
                    var tmp : [Any] = []
                    for k in self.hitRuleReviewInfo! {
                        tmp.append(k.toMap())
                    }
                    map["HitRuleReviewInfo"] = tmp
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("HitRuleReviewInfo") {
                    self.hitRuleReviewInfo = dict["HitRuleReviewInfo"] as! [GetResultToReviewResponseBody.Data.HitRuleReviewInfoList.HitRuleReviewInfo]
                }
            }
        }
        public class ManualScoreInfoList : Tea.TeaModel {
            public class ManualScoreInfo : Tea.TeaModel {
                public class ComplainHistories : Tea.TeaModel {
                    public class ComplainHistories : Tea.TeaModel {
                        public var comments: String?

                        public var operationTime: String?

                        public var operationType: Int32?

                        public var operator_: Int64?

                        public var operatorName: String?

                        public override init() {
                            super.init()
                        }

                        public init(_ dict: [String: Any]) {
                            super.init()
                            self.fromMap(dict)
                        }

                        public override func validate() throws -> Void {
                        }

                        public override func toMap() -> [String : Any] {
                            var map = super.toMap()
                            if self.comments != nil {
                                map["Comments"] = self.comments!
                            }
                            if self.operationTime != nil {
                                map["OperationTime"] = self.operationTime!
                            }
                            if self.operationType != nil {
                                map["OperationType"] = self.operationType!
                            }
                            if self.operator_ != nil {
                                map["Operator"] = self.operator_!
                            }
                            if self.operatorName != nil {
                                map["OperatorName"] = self.operatorName!
                            }
                            return map
                        }

                        public override func fromMap(_ dict: [String: Any]) -> Void {
                            if dict.keys.contains("Comments") {
                                self.comments = dict["Comments"] as! String
                            }
                            if dict.keys.contains("OperationTime") {
                                self.operationTime = dict["OperationTime"] as! String
                            }
                            if dict.keys.contains("OperationType") {
                                self.operationType = dict["OperationType"] as! Int32
                            }
                            if dict.keys.contains("Operator") {
                                self.operator_ = dict["Operator"] as! Int64
                            }
                            if dict.keys.contains("OperatorName") {
                                self.operatorName = dict["OperatorName"] as! String
                            }
                        }
                    }
                    public var complainHistories: [GetResultToReviewResponseBody.Data.ManualScoreInfoList.ManualScoreInfo.ComplainHistories.ComplainHistories]?

                    public override init() {
                        super.init()
                    }

                    public init(_ dict: [String: Any]) {
                        super.init()
                        self.fromMap(dict)
                    }

                    public override func validate() throws -> Void {
                    }

                    public override func toMap() -> [String : Any] {
                        var map = super.toMap()
                        if self.complainHistories != nil {
                            var tmp : [Any] = []
                            for k in self.complainHistories! {
                                tmp.append(k.toMap())
                            }
                            map["ComplainHistories"] = tmp
                        }
                        return map
                    }

                    public override func fromMap(_ dict: [String: Any]) -> Void {
                        if dict.keys.contains("ComplainHistories") {
                            self.complainHistories = dict["ComplainHistories"] as! [GetResultToReviewResponseBody.Data.ManualScoreInfoList.ManualScoreInfo.ComplainHistories.ComplainHistories]
                        }
                    }
                }
                public var complainHistories: GetResultToReviewResponseBody.Data.ManualScoreInfoList.ManualScoreInfo.ComplainHistories?

                public var complainable: Bool?

                public var scoreId: Int64?

                public var scoreNum: Int32?

                public var scoreSubId: Int64?

                public var scoreSubName: String?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                    try self.complainHistories?.validate()
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.complainHistories != nil {
                        map["ComplainHistories"] = self.complainHistories?.toMap()
                    }
                    if self.complainable != nil {
                        map["Complainable"] = self.complainable!
                    }
                    if self.scoreId != nil {
                        map["ScoreId"] = self.scoreId!
                    }
                    if self.scoreNum != nil {
                        map["ScoreNum"] = self.scoreNum!
                    }
                    if self.scoreSubId != nil {
                        map["ScoreSubId"] = self.scoreSubId!
                    }
                    if self.scoreSubName != nil {
                        map["ScoreSubName"] = self.scoreSubName!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("ComplainHistories") {
                        var model = GetResultToReviewResponseBody.Data.ManualScoreInfoList.ManualScoreInfo.ComplainHistories()
                        model.fromMap(dict["ComplainHistories"] as! [String: Any])
                        self.complainHistories = model
                    }
                    if dict.keys.contains("Complainable") {
                        self.complainable = dict["Complainable"] as! Bool
                    }
                    if dict.keys.contains("ScoreId") {
                        self.scoreId = dict["ScoreId"] as! Int64
                    }
                    if dict.keys.contains("ScoreNum") {
                        self.scoreNum = dict["ScoreNum"] as! Int32
                    }
                    if dict.keys.contains("ScoreSubId") {
                        self.scoreSubId = dict["ScoreSubId"] as! Int64
                    }
                    if dict.keys.contains("ScoreSubName") {
                        self.scoreSubName = dict["ScoreSubName"] as! String
                    }
                }
            }
            public var manualScoreInfo: [GetResultToReviewResponseBody.Data.ManualScoreInfoList.ManualScoreInfo]?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.manualScoreInfo != nil {
                    var tmp : [Any] = []
                    for k in self.manualScoreInfo! {
                        tmp.append(k.toMap())
                    }
                    map["ManualScoreInfo"] = tmp
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("ManualScoreInfo") {
                    self.manualScoreInfo = dict["ManualScoreInfo"] as! [GetResultToReviewResponseBody.Data.ManualScoreInfoList.ManualScoreInfo]
                }
            }
        }
        public class ReviewHistoryList : Tea.TeaModel {
            public class ReviewHistory : Tea.TeaModel {
                public var complainResult: Int32?

                public var oldScore: Int32?

                public var operatorName: String?

                public var reviewResult: Int32?

                public var score: Int32?

                public var timeStr: String?

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
                    if self.complainResult != nil {
                        map["ComplainResult"] = self.complainResult!
                    }
                    if self.oldScore != nil {
                        map["OldScore"] = self.oldScore!
                    }
                    if self.operatorName != nil {
                        map["OperatorName"] = self.operatorName!
                    }
                    if self.reviewResult != nil {
                        map["ReviewResult"] = self.reviewResult!
                    }
                    if self.score != nil {
                        map["Score"] = self.score!
                    }
                    if self.timeStr != nil {
                        map["TimeStr"] = self.timeStr!
                    }
                    if self.type != nil {
                        map["Type"] = self.type!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("ComplainResult") {
                        self.complainResult = dict["ComplainResult"] as! Int32
                    }
                    if dict.keys.contains("OldScore") {
                        self.oldScore = dict["OldScore"] as! Int32
                    }
                    if dict.keys.contains("OperatorName") {
                        self.operatorName = dict["OperatorName"] as! String
                    }
                    if dict.keys.contains("ReviewResult") {
                        self.reviewResult = dict["ReviewResult"] as! Int32
                    }
                    if dict.keys.contains("Score") {
                        self.score = dict["Score"] as! Int32
                    }
                    if dict.keys.contains("TimeStr") {
                        self.timeStr = dict["TimeStr"] as! String
                    }
                    if dict.keys.contains("Type") {
                        self.type = dict["Type"] as! Int32
                    }
                }
            }
            public var reviewHistory: [GetResultToReviewResponseBody.Data.ReviewHistoryList.ReviewHistory]?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.reviewHistory != nil {
                    var tmp : [Any] = []
                    for k in self.reviewHistory! {
                        tmp.append(k.toMap())
                    }
                    map["ReviewHistory"] = tmp
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("ReviewHistory") {
                    self.reviewHistory = dict["ReviewHistory"] as! [GetResultToReviewResponseBody.Data.ReviewHistoryList.ReviewHistory]
                }
            }
        }
        public var audioScheme: String?

        public var audioURL: String?

        public var comments: String?

        public var dialogues: GetResultToReviewResponseBody.Data.Dialogues?

        public var fileId: String?

        public var fileMergeName: String?

        public var hitRuleReviewInfoList: GetResultToReviewResponseBody.Data.HitRuleReviewInfoList?

        public var manualScoreInfoList: GetResultToReviewResponseBody.Data.ManualScoreInfoList?

        public var reviewHistoryList: GetResultToReviewResponseBody.Data.ReviewHistoryList?

        public var status: Int32?

        public var totalScore: Int32?

        public var vid: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.dialogues?.validate()
            try self.hitRuleReviewInfoList?.validate()
            try self.manualScoreInfoList?.validate()
            try self.reviewHistoryList?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.audioScheme != nil {
                map["AudioScheme"] = self.audioScheme!
            }
            if self.audioURL != nil {
                map["AudioURL"] = self.audioURL!
            }
            if self.comments != nil {
                map["Comments"] = self.comments!
            }
            if self.dialogues != nil {
                map["Dialogues"] = self.dialogues?.toMap()
            }
            if self.fileId != nil {
                map["FileId"] = self.fileId!
            }
            if self.fileMergeName != nil {
                map["FileMergeName"] = self.fileMergeName!
            }
            if self.hitRuleReviewInfoList != nil {
                map["HitRuleReviewInfoList"] = self.hitRuleReviewInfoList?.toMap()
            }
            if self.manualScoreInfoList != nil {
                map["ManualScoreInfoList"] = self.manualScoreInfoList?.toMap()
            }
            if self.reviewHistoryList != nil {
                map["ReviewHistoryList"] = self.reviewHistoryList?.toMap()
            }
            if self.status != nil {
                map["Status"] = self.status!
            }
            if self.totalScore != nil {
                map["TotalScore"] = self.totalScore!
            }
            if self.vid != nil {
                map["Vid"] = self.vid!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("AudioScheme") {
                self.audioScheme = dict["AudioScheme"] as! String
            }
            if dict.keys.contains("AudioURL") {
                self.audioURL = dict["AudioURL"] as! String
            }
            if dict.keys.contains("Comments") {
                self.comments = dict["Comments"] as! String
            }
            if dict.keys.contains("Dialogues") {
                var model = GetResultToReviewResponseBody.Data.Dialogues()
                model.fromMap(dict["Dialogues"] as! [String: Any])
                self.dialogues = model
            }
            if dict.keys.contains("FileId") {
                self.fileId = dict["FileId"] as! String
            }
            if dict.keys.contains("FileMergeName") {
                self.fileMergeName = dict["FileMergeName"] as! String
            }
            if dict.keys.contains("HitRuleReviewInfoList") {
                var model = GetResultToReviewResponseBody.Data.HitRuleReviewInfoList()
                model.fromMap(dict["HitRuleReviewInfoList"] as! [String: Any])
                self.hitRuleReviewInfoList = model
            }
            if dict.keys.contains("ManualScoreInfoList") {
                var model = GetResultToReviewResponseBody.Data.ManualScoreInfoList()
                model.fromMap(dict["ManualScoreInfoList"] as! [String: Any])
                self.manualScoreInfoList = model
            }
            if dict.keys.contains("ReviewHistoryList") {
                var model = GetResultToReviewResponseBody.Data.ReviewHistoryList()
                model.fromMap(dict["ReviewHistoryList"] as! [String: Any])
                self.reviewHistoryList = model
            }
            if dict.keys.contains("Status") {
                self.status = dict["Status"] as! Int32
            }
            if dict.keys.contains("TotalScore") {
                self.totalScore = dict["TotalScore"] as! Int32
            }
            if dict.keys.contains("Vid") {
                self.vid = dict["Vid"] as! String
            }
        }
    }
    public var code: String?

    public var data: GetResultToReviewResponseBody.Data?

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
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Data") {
            var model = GetResultToReviewResponseBody.Data()
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

public class GetResultToReviewResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetResultToReviewResponseBody?

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
            var model = GetResultToReviewResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetRuleRequest : Tea.TeaModel {
    public var jsonStr: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.jsonStr != nil {
            map["JsonStr"] = self.jsonStr!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("JsonStr") {
            self.jsonStr = dict["JsonStr"] as! String
        }
    }
}

public class GetRuleResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class Rules : Tea.TeaModel {
            public class RuleInfo : Tea.TeaModel {
                public class BusinessCategoryNameList : Tea.TeaModel {
                    public var businessCategoryNameList: [String]?

                    public override init() {
                        super.init()
                    }

                    public init(_ dict: [String: Any]) {
                        super.init()
                        self.fromMap(dict)
                    }

                    public override func validate() throws -> Void {
                    }

                    public override func toMap() -> [String : Any] {
                        var map = super.toMap()
                        if self.businessCategoryNameList != nil {
                            map["BusinessCategoryNameList"] = self.businessCategoryNameList!
                        }
                        return map
                    }

                    public override func fromMap(_ dict: [String: Any]) -> Void {
                        if dict.keys.contains("BusinessCategoryNameList") {
                            self.businessCategoryNameList = dict["BusinessCategoryNameList"] as! [String]
                        }
                    }
                }
                public var autoReview: Int32?

                public var businessCategoryNameList: GetRuleResponseBody.Data.Rules.RuleInfo.BusinessCategoryNameList?

                public var comments: String?

                public var createEmpid: String?

                public var createTime: String?

                public var endTime: String?

                public var isDelete: Int32?

                public var isOnline: Int32?

                public var lastUpdateEmpid: String?

                public var lastUpdateTime: String?

                public var name: String?

                public var rid: String?

                public var ruleLambda: String?

                public var ruleScoreType: Int32?

                public var scoreId: Int32?

                public var scoreName: String?

                public var scoreSubId: Int32?

                public var scoreSubName: String?

                public var startTime: String?

                public var status: Int32?

                public var type: Int32?

                public var weight: String?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                    try self.businessCategoryNameList?.validate()
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.autoReview != nil {
                        map["AutoReview"] = self.autoReview!
                    }
                    if self.businessCategoryNameList != nil {
                        map["BusinessCategoryNameList"] = self.businessCategoryNameList?.toMap()
                    }
                    if self.comments != nil {
                        map["Comments"] = self.comments!
                    }
                    if self.createEmpid != nil {
                        map["CreateEmpid"] = self.createEmpid!
                    }
                    if self.createTime != nil {
                        map["CreateTime"] = self.createTime!
                    }
                    if self.endTime != nil {
                        map["EndTime"] = self.endTime!
                    }
                    if self.isDelete != nil {
                        map["IsDelete"] = self.isDelete!
                    }
                    if self.isOnline != nil {
                        map["IsOnline"] = self.isOnline!
                    }
                    if self.lastUpdateEmpid != nil {
                        map["LastUpdateEmpid"] = self.lastUpdateEmpid!
                    }
                    if self.lastUpdateTime != nil {
                        map["LastUpdateTime"] = self.lastUpdateTime!
                    }
                    if self.name != nil {
                        map["Name"] = self.name!
                    }
                    if self.rid != nil {
                        map["Rid"] = self.rid!
                    }
                    if self.ruleLambda != nil {
                        map["RuleLambda"] = self.ruleLambda!
                    }
                    if self.ruleScoreType != nil {
                        map["RuleScoreType"] = self.ruleScoreType!
                    }
                    if self.scoreId != nil {
                        map["ScoreId"] = self.scoreId!
                    }
                    if self.scoreName != nil {
                        map["ScoreName"] = self.scoreName!
                    }
                    if self.scoreSubId != nil {
                        map["ScoreSubId"] = self.scoreSubId!
                    }
                    if self.scoreSubName != nil {
                        map["ScoreSubName"] = self.scoreSubName!
                    }
                    if self.startTime != nil {
                        map["StartTime"] = self.startTime!
                    }
                    if self.status != nil {
                        map["Status"] = self.status!
                    }
                    if self.type != nil {
                        map["Type"] = self.type!
                    }
                    if self.weight != nil {
                        map["Weight"] = self.weight!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("AutoReview") {
                        self.autoReview = dict["AutoReview"] as! Int32
                    }
                    if dict.keys.contains("BusinessCategoryNameList") {
                        var model = GetRuleResponseBody.Data.Rules.RuleInfo.BusinessCategoryNameList()
                        model.fromMap(dict["BusinessCategoryNameList"] as! [String: Any])
                        self.businessCategoryNameList = model
                    }
                    if dict.keys.contains("Comments") {
                        self.comments = dict["Comments"] as! String
                    }
                    if dict.keys.contains("CreateEmpid") {
                        self.createEmpid = dict["CreateEmpid"] as! String
                    }
                    if dict.keys.contains("CreateTime") {
                        self.createTime = dict["CreateTime"] as! String
                    }
                    if dict.keys.contains("EndTime") {
                        self.endTime = dict["EndTime"] as! String
                    }
                    if dict.keys.contains("IsDelete") {
                        self.isDelete = dict["IsDelete"] as! Int32
                    }
                    if dict.keys.contains("IsOnline") {
                        self.isOnline = dict["IsOnline"] as! Int32
                    }
                    if dict.keys.contains("LastUpdateEmpid") {
                        self.lastUpdateEmpid = dict["LastUpdateEmpid"] as! String
                    }
                    if dict.keys.contains("LastUpdateTime") {
                        self.lastUpdateTime = dict["LastUpdateTime"] as! String
                    }
                    if dict.keys.contains("Name") {
                        self.name = dict["Name"] as! String
                    }
                    if dict.keys.contains("Rid") {
                        self.rid = dict["Rid"] as! String
                    }
                    if dict.keys.contains("RuleLambda") {
                        self.ruleLambda = dict["RuleLambda"] as! String
                    }
                    if dict.keys.contains("RuleScoreType") {
                        self.ruleScoreType = dict["RuleScoreType"] as! Int32
                    }
                    if dict.keys.contains("ScoreId") {
                        self.scoreId = dict["ScoreId"] as! Int32
                    }
                    if dict.keys.contains("ScoreName") {
                        self.scoreName = dict["ScoreName"] as! String
                    }
                    if dict.keys.contains("ScoreSubId") {
                        self.scoreSubId = dict["ScoreSubId"] as! Int32
                    }
                    if dict.keys.contains("ScoreSubName") {
                        self.scoreSubName = dict["ScoreSubName"] as! String
                    }
                    if dict.keys.contains("StartTime") {
                        self.startTime = dict["StartTime"] as! String
                    }
                    if dict.keys.contains("Status") {
                        self.status = dict["Status"] as! Int32
                    }
                    if dict.keys.contains("Type") {
                        self.type = dict["Type"] as! Int32
                    }
                    if dict.keys.contains("Weight") {
                        self.weight = dict["Weight"] as! String
                    }
                }
            }
            public var ruleInfo: [GetRuleResponseBody.Data.Rules.RuleInfo]?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.ruleInfo != nil {
                    var tmp : [Any] = []
                    for k in self.ruleInfo! {
                        tmp.append(k.toMap())
                    }
                    map["RuleInfo"] = tmp
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("RuleInfo") {
                    self.ruleInfo = dict["RuleInfo"] as! [GetRuleResponseBody.Data.Rules.RuleInfo]
                }
            }
        }
        public var rules: GetRuleResponseBody.Data.Rules?

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
            if self.rules != nil {
                map["Rules"] = self.rules?.toMap()
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Rules") {
                var model = GetRuleResponseBody.Data.Rules()
                model.fromMap(dict["Rules"] as! [String: Any])
                self.rules = model
            }
        }
    }
    public var code: String?

    public var data: GetRuleResponseBody.Data?

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
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Data") {
            var model = GetRuleResponseBody.Data()
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

public class GetRuleResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetRuleResponseBody?

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
            var model = GetRuleResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetRuleCategoryRequest : Tea.TeaModel {
    public var jsonStr: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.jsonStr != nil {
            map["JsonStr"] = self.jsonStr!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("JsonStr") {
            self.jsonStr = dict["JsonStr"] as! String
        }
    }
}

public class GetRuleCategoryResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class RuleCountInfo : Tea.TeaModel {
            public var select: Bool?

            public var type: Int32?

            public var typeName: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.select != nil {
                    map["Select"] = self.select!
                }
                if self.type != nil {
                    map["Type"] = self.type!
                }
                if self.typeName != nil {
                    map["TypeName"] = self.typeName!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("Select") {
                    self.select = dict["Select"] as! Bool
                }
                if dict.keys.contains("Type") {
                    self.type = dict["Type"] as! Int32
                }
                if dict.keys.contains("TypeName") {
                    self.typeName = dict["TypeName"] as! String
                }
            }
        }
        public var ruleCountInfo: [GetRuleCategoryResponseBody.Data.RuleCountInfo]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.ruleCountInfo != nil {
                var tmp : [Any] = []
                for k in self.ruleCountInfo! {
                    tmp.append(k.toMap())
                }
                map["RuleCountInfo"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("RuleCountInfo") {
                self.ruleCountInfo = dict["RuleCountInfo"] as! [GetRuleCategoryResponseBody.Data.RuleCountInfo]
            }
        }
    }
    public var code: String?

    public var data: GetRuleCategoryResponseBody.Data?

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
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Data") {
            var model = GetRuleCategoryResponseBody.Data()
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

public class GetRuleCategoryResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetRuleCategoryResponseBody?

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
            var model = GetRuleCategoryResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetRuleDetailRequest : Tea.TeaModel {
    public var jsonStr: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.jsonStr != nil {
            map["JsonStr"] = self.jsonStr!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("JsonStr") {
            self.jsonStr = dict["JsonStr"] as! String
        }
    }
}

public class GetRuleDetailResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class Conditions : Tea.TeaModel {
            public class ConditionBasicInfo : Tea.TeaModel {
                public class CheckRange : Tea.TeaModel {
                    public class Anchor : Tea.TeaModel {
                        public var anchorCid: String?

                        public var hitTime: Int32?

                        public var location: String?

                        public override init() {
                            super.init()
                        }

                        public init(_ dict: [String: Any]) {
                            super.init()
                            self.fromMap(dict)
                        }

                        public override func validate() throws -> Void {
                        }

                        public override func toMap() -> [String : Any] {
                            var map = super.toMap()
                            if self.anchorCid != nil {
                                map["AnchorCid"] = self.anchorCid!
                            }
                            if self.hitTime != nil {
                                map["HitTime"] = self.hitTime!
                            }
                            if self.location != nil {
                                map["Location"] = self.location!
                            }
                            return map
                        }

                        public override func fromMap(_ dict: [String: Any]) -> Void {
                            if dict.keys.contains("AnchorCid") {
                                self.anchorCid = dict["AnchorCid"] as! String
                            }
                            if dict.keys.contains("HitTime") {
                                self.hitTime = dict["HitTime"] as! Int32
                            }
                            if dict.keys.contains("Location") {
                                self.location = dict["Location"] as! String
                            }
                        }
                    }
                    public class Range : Tea.TeaModel {
                        public var from: Int32?

                        public var to: Int32?

                        public override init() {
                            super.init()
                        }

                        public init(_ dict: [String: Any]) {
                            super.init()
                            self.fromMap(dict)
                        }

                        public override func validate() throws -> Void {
                        }

                        public override func toMap() -> [String : Any] {
                            var map = super.toMap()
                            if self.from != nil {
                                map["From"] = self.from!
                            }
                            if self.to != nil {
                                map["To"] = self.to!
                            }
                            return map
                        }

                        public override func fromMap(_ dict: [String: Any]) -> Void {
                            if dict.keys.contains("From") {
                                self.from = dict["From"] as! Int32
                            }
                            if dict.keys.contains("To") {
                                self.to = dict["To"] as! Int32
                            }
                        }
                    }
                    public var absolute: Bool?

                    public var anchor: GetRuleDetailResponseBody.Data.Conditions.ConditionBasicInfo.CheckRange.Anchor?

                    public var range: GetRuleDetailResponseBody.Data.Conditions.ConditionBasicInfo.CheckRange.Range?

                    public var role: String?

                    public override init() {
                        super.init()
                    }

                    public init(_ dict: [String: Any]) {
                        super.init()
                        self.fromMap(dict)
                    }

                    public override func validate() throws -> Void {
                        try self.anchor?.validate()
                        try self.range?.validate()
                    }

                    public override func toMap() -> [String : Any] {
                        var map = super.toMap()
                        if self.absolute != nil {
                            map["Absolute"] = self.absolute!
                        }
                        if self.anchor != nil {
                            map["Anchor"] = self.anchor?.toMap()
                        }
                        if self.range != nil {
                            map["Range"] = self.range?.toMap()
                        }
                        if self.role != nil {
                            map["Role"] = self.role!
                        }
                        return map
                    }

                    public override func fromMap(_ dict: [String: Any]) -> Void {
                        if dict.keys.contains("Absolute") {
                            self.absolute = dict["Absolute"] as! Bool
                        }
                        if dict.keys.contains("Anchor") {
                            var model = GetRuleDetailResponseBody.Data.Conditions.ConditionBasicInfo.CheckRange.Anchor()
                            model.fromMap(dict["Anchor"] as! [String: Any])
                            self.anchor = model
                        }
                        if dict.keys.contains("Range") {
                            var model = GetRuleDetailResponseBody.Data.Conditions.ConditionBasicInfo.CheckRange.Range()
                            model.fromMap(dict["Range"] as! [String: Any])
                            self.range = model
                        }
                        if dict.keys.contains("Role") {
                            self.role = dict["Role"] as! String
                        }
                    }
                }
                public class Operators : Tea.TeaModel {
                    public class OperatorBasicInfo : Tea.TeaModel {
                        public class Param : Tea.TeaModel {
                            public class AntModelInfo : Tea.TeaModel {
                                public var antModelInfo: [String]?

                                public override init() {
                                    super.init()
                                }

                                public init(_ dict: [String: Any]) {
                                    super.init()
                                    self.fromMap(dict)
                                }

                                public override func validate() throws -> Void {
                                }

                                public override func toMap() -> [String : Any] {
                                    var map = super.toMap()
                                    if self.antModelInfo != nil {
                                        map["AntModelInfo"] = self.antModelInfo!
                                    }
                                    return map
                                }

                                public override func fromMap(_ dict: [String: Any]) -> Void {
                                    if dict.keys.contains("AntModelInfo") {
                                        self.antModelInfo = dict["AntModelInfo"] as! [String]
                                    }
                                }
                            }
                            public class Excludes : Tea.TeaModel {
                                public var excludes: [String]?

                                public override init() {
                                    super.init()
                                }

                                public init(_ dict: [String: Any]) {
                                    super.init()
                                    self.fromMap(dict)
                                }

                                public override func validate() throws -> Void {
                                }

                                public override func toMap() -> [String : Any] {
                                    var map = super.toMap()
                                    if self.excludes != nil {
                                        map["Excludes"] = self.excludes!
                                    }
                                    return map
                                }

                                public override func fromMap(_ dict: [String: Any]) -> Void {
                                    if dict.keys.contains("Excludes") {
                                        self.excludes = dict["Excludes"] as! [String]
                                    }
                                }
                            }
                            public class OperKeyWords : Tea.TeaModel {
                                public var operKeyWord: [String]?

                                public override init() {
                                    super.init()
                                }

                                public init(_ dict: [String: Any]) {
                                    super.init()
                                    self.fromMap(dict)
                                }

                                public override func validate() throws -> Void {
                                }

                                public override func toMap() -> [String : Any] {
                                    var map = super.toMap()
                                    if self.operKeyWord != nil {
                                        map["OperKeyWord"] = self.operKeyWord!
                                    }
                                    return map
                                }

                                public override func fromMap(_ dict: [String: Any]) -> Void {
                                    if dict.keys.contains("OperKeyWord") {
                                        self.operKeyWord = dict["OperKeyWord"] as! [String]
                                    }
                                }
                            }
                            public class Pvalues : Tea.TeaModel {
                                public var pvalues: [String]?

                                public override init() {
                                    super.init()
                                }

                                public init(_ dict: [String: Any]) {
                                    super.init()
                                    self.fromMap(dict)
                                }

                                public override func validate() throws -> Void {
                                }

                                public override func toMap() -> [String : Any] {
                                    var map = super.toMap()
                                    if self.pvalues != nil {
                                        map["Pvalues"] = self.pvalues!
                                    }
                                    return map
                                }

                                public override func fromMap(_ dict: [String: Any]) -> Void {
                                    if dict.keys.contains("Pvalues") {
                                        self.pvalues = dict["Pvalues"] as! [String]
                                    }
                                }
                            }
                            public class References : Tea.TeaModel {
                                public var reference: [String]?

                                public override init() {
                                    super.init()
                                }

                                public init(_ dict: [String: Any]) {
                                    super.init()
                                    self.fromMap(dict)
                                }

                                public override func validate() throws -> Void {
                                }

                                public override func toMap() -> [String : Any] {
                                    var map = super.toMap()
                                    if self.reference != nil {
                                        map["Reference"] = self.reference!
                                    }
                                    return map
                                }

                                public override func fromMap(_ dict: [String: Any]) -> Void {
                                    if dict.keys.contains("Reference") {
                                        self.reference = dict["Reference"] as! [String]
                                    }
                                }
                            }
                            public class SimilarlySentences : Tea.TeaModel {
                                public var similarlySentence: [String]?

                                public override init() {
                                    super.init()
                                }

                                public init(_ dict: [String: Any]) {
                                    super.init()
                                    self.fromMap(dict)
                                }

                                public override func validate() throws -> Void {
                                }

                                public override func toMap() -> [String : Any] {
                                    var map = super.toMap()
                                    if self.similarlySentence != nil {
                                        map["SimilarlySentence"] = self.similarlySentence!
                                    }
                                    return map
                                }

                                public override func fromMap(_ dict: [String: Any]) -> Void {
                                    if dict.keys.contains("SimilarlySentence") {
                                        self.similarlySentence = dict["SimilarlySentence"] as! [String]
                                    }
                                }
                            }
                            public var antModelInfo: GetRuleDetailResponseBody.Data.Conditions.ConditionBasicInfo.Operators.OperatorBasicInfo.Param.AntModelInfo?

                            public var average: Bool?

                            public var beginType: String?

                            public var checkType: Int32?

                            public var compareOperator: String?

                            public var contextChatMatch: Bool?

                            public var delayTime: Int32?

                            public var differentRole: Bool?

                            public var excludes: GetRuleDetailResponseBody.Data.Conditions.ConditionBasicInfo.Operators.OperatorBasicInfo.Param.Excludes?

                            public var from: Int32?

                            public var fromEnd: Bool?

                            public var hitTime: Int32?

                            public var inSentence: Bool?

                            public var interval: Int32?

                            public var keywordExtension: Bool?

                            public var keywordMatchSize: Int32?

                            public var maxEmotionChangeValue: Int32?

                            public var minWordSize: Int32?

                            public var notRegex: String?

                            public var operKeyWords: GetRuleDetailResponseBody.Data.Conditions.ConditionBasicInfo.Operators.OperatorBasicInfo.Param.OperKeyWords?

                            public var phrase: String?

                            public var pvalues: GetRuleDetailResponseBody.Data.Conditions.ConditionBasicInfo.Operators.OperatorBasicInfo.Param.Pvalues?

                            public var references: GetRuleDetailResponseBody.Data.Conditions.ConditionBasicInfo.Operators.OperatorBasicInfo.Param.References?

                            public var regex: String?

                            public var score: Int32?

                            public var similarityThreshold: Double?

                            public var similarlySentences: GetRuleDetailResponseBody.Data.Conditions.ConditionBasicInfo.Operators.OperatorBasicInfo.Param.SimilarlySentences?

                            public var target: Int32?

                            public var targetRole: String?

                            public var threshold: Double?

                            public var velocityInMint: Int32?

                            public override init() {
                                super.init()
                            }

                            public init(_ dict: [String: Any]) {
                                super.init()
                                self.fromMap(dict)
                            }

                            public override func validate() throws -> Void {
                                try self.antModelInfo?.validate()
                                try self.excludes?.validate()
                                try self.operKeyWords?.validate()
                                try self.pvalues?.validate()
                                try self.references?.validate()
                                try self.similarlySentences?.validate()
                            }

                            public override func toMap() -> [String : Any] {
                                var map = super.toMap()
                                if self.antModelInfo != nil {
                                    map["AntModelInfo"] = self.antModelInfo?.toMap()
                                }
                                if self.average != nil {
                                    map["Average"] = self.average!
                                }
                                if self.beginType != nil {
                                    map["BeginType"] = self.beginType!
                                }
                                if self.checkType != nil {
                                    map["CheckType"] = self.checkType!
                                }
                                if self.compareOperator != nil {
                                    map["CompareOperator"] = self.compareOperator!
                                }
                                if self.contextChatMatch != nil {
                                    map["ContextChatMatch"] = self.contextChatMatch!
                                }
                                if self.delayTime != nil {
                                    map["DelayTime"] = self.delayTime!
                                }
                                if self.differentRole != nil {
                                    map["DifferentRole"] = self.differentRole!
                                }
                                if self.excludes != nil {
                                    map["Excludes"] = self.excludes?.toMap()
                                }
                                if self.from != nil {
                                    map["From"] = self.from!
                                }
                                if self.fromEnd != nil {
                                    map["FromEnd"] = self.fromEnd!
                                }
                                if self.hitTime != nil {
                                    map["HitTime"] = self.hitTime!
                                }
                                if self.inSentence != nil {
                                    map["InSentence"] = self.inSentence!
                                }
                                if self.interval != nil {
                                    map["Interval"] = self.interval!
                                }
                                if self.keywordExtension != nil {
                                    map["KeywordExtension"] = self.keywordExtension!
                                }
                                if self.keywordMatchSize != nil {
                                    map["KeywordMatchSize"] = self.keywordMatchSize!
                                }
                                if self.maxEmotionChangeValue != nil {
                                    map["MaxEmotionChangeValue"] = self.maxEmotionChangeValue!
                                }
                                if self.minWordSize != nil {
                                    map["MinWordSize"] = self.minWordSize!
                                }
                                if self.notRegex != nil {
                                    map["NotRegex"] = self.notRegex!
                                }
                                if self.operKeyWords != nil {
                                    map["OperKeyWords"] = self.operKeyWords?.toMap()
                                }
                                if self.phrase != nil {
                                    map["Phrase"] = self.phrase!
                                }
                                if self.pvalues != nil {
                                    map["Pvalues"] = self.pvalues?.toMap()
                                }
                                if self.references != nil {
                                    map["References"] = self.references?.toMap()
                                }
                                if self.regex != nil {
                                    map["Regex"] = self.regex!
                                }
                                if self.score != nil {
                                    map["Score"] = self.score!
                                }
                                if self.similarityThreshold != nil {
                                    map["Similarity_threshold"] = self.similarityThreshold!
                                }
                                if self.similarlySentences != nil {
                                    map["SimilarlySentences"] = self.similarlySentences?.toMap()
                                }
                                if self.target != nil {
                                    map["Target"] = self.target!
                                }
                                if self.targetRole != nil {
                                    map["TargetRole"] = self.targetRole!
                                }
                                if self.threshold != nil {
                                    map["Threshold"] = self.threshold!
                                }
                                if self.velocityInMint != nil {
                                    map["VelocityInMint"] = self.velocityInMint!
                                }
                                return map
                            }

                            public override func fromMap(_ dict: [String: Any]) -> Void {
                                if dict.keys.contains("AntModelInfo") {
                                    var model = GetRuleDetailResponseBody.Data.Conditions.ConditionBasicInfo.Operators.OperatorBasicInfo.Param.AntModelInfo()
                                    model.fromMap(dict["AntModelInfo"] as! [String: Any])
                                    self.antModelInfo = model
                                }
                                if dict.keys.contains("Average") {
                                    self.average = dict["Average"] as! Bool
                                }
                                if dict.keys.contains("BeginType") {
                                    self.beginType = dict["BeginType"] as! String
                                }
                                if dict.keys.contains("CheckType") {
                                    self.checkType = dict["CheckType"] as! Int32
                                }
                                if dict.keys.contains("CompareOperator") {
                                    self.compareOperator = dict["CompareOperator"] as! String
                                }
                                if dict.keys.contains("ContextChatMatch") {
                                    self.contextChatMatch = dict["ContextChatMatch"] as! Bool
                                }
                                if dict.keys.contains("DelayTime") {
                                    self.delayTime = dict["DelayTime"] as! Int32
                                }
                                if dict.keys.contains("DifferentRole") {
                                    self.differentRole = dict["DifferentRole"] as! Bool
                                }
                                if dict.keys.contains("Excludes") {
                                    var model = GetRuleDetailResponseBody.Data.Conditions.ConditionBasicInfo.Operators.OperatorBasicInfo.Param.Excludes()
                                    model.fromMap(dict["Excludes"] as! [String: Any])
                                    self.excludes = model
                                }
                                if dict.keys.contains("From") {
                                    self.from = dict["From"] as! Int32
                                }
                                if dict.keys.contains("FromEnd") {
                                    self.fromEnd = dict["FromEnd"] as! Bool
                                }
                                if dict.keys.contains("HitTime") {
                                    self.hitTime = dict["HitTime"] as! Int32
                                }
                                if dict.keys.contains("InSentence") {
                                    self.inSentence = dict["InSentence"] as! Bool
                                }
                                if dict.keys.contains("Interval") {
                                    self.interval = dict["Interval"] as! Int32
                                }
                                if dict.keys.contains("KeywordExtension") {
                                    self.keywordExtension = dict["KeywordExtension"] as! Bool
                                }
                                if dict.keys.contains("KeywordMatchSize") {
                                    self.keywordMatchSize = dict["KeywordMatchSize"] as! Int32
                                }
                                if dict.keys.contains("MaxEmotionChangeValue") {
                                    self.maxEmotionChangeValue = dict["MaxEmotionChangeValue"] as! Int32
                                }
                                if dict.keys.contains("MinWordSize") {
                                    self.minWordSize = dict["MinWordSize"] as! Int32
                                }
                                if dict.keys.contains("NotRegex") {
                                    self.notRegex = dict["NotRegex"] as! String
                                }
                                if dict.keys.contains("OperKeyWords") {
                                    var model = GetRuleDetailResponseBody.Data.Conditions.ConditionBasicInfo.Operators.OperatorBasicInfo.Param.OperKeyWords()
                                    model.fromMap(dict["OperKeyWords"] as! [String: Any])
                                    self.operKeyWords = model
                                }
                                if dict.keys.contains("Phrase") {
                                    self.phrase = dict["Phrase"] as! String
                                }
                                if dict.keys.contains("Pvalues") {
                                    var model = GetRuleDetailResponseBody.Data.Conditions.ConditionBasicInfo.Operators.OperatorBasicInfo.Param.Pvalues()
                                    model.fromMap(dict["Pvalues"] as! [String: Any])
                                    self.pvalues = model
                                }
                                if dict.keys.contains("References") {
                                    var model = GetRuleDetailResponseBody.Data.Conditions.ConditionBasicInfo.Operators.OperatorBasicInfo.Param.References()
                                    model.fromMap(dict["References"] as! [String: Any])
                                    self.references = model
                                }
                                if dict.keys.contains("Regex") {
                                    self.regex = dict["Regex"] as! String
                                }
                                if dict.keys.contains("Score") {
                                    self.score = dict["Score"] as! Int32
                                }
                                if dict.keys.contains("Similarity_threshold") {
                                    self.similarityThreshold = dict["Similarity_threshold"] as! Double
                                }
                                if dict.keys.contains("SimilarlySentences") {
                                    var model = GetRuleDetailResponseBody.Data.Conditions.ConditionBasicInfo.Operators.OperatorBasicInfo.Param.SimilarlySentences()
                                    model.fromMap(dict["SimilarlySentences"] as! [String: Any])
                                    self.similarlySentences = model
                                }
                                if dict.keys.contains("Target") {
                                    self.target = dict["Target"] as! Int32
                                }
                                if dict.keys.contains("TargetRole") {
                                    self.targetRole = dict["TargetRole"] as! String
                                }
                                if dict.keys.contains("Threshold") {
                                    self.threshold = dict["Threshold"] as! Double
                                }
                                if dict.keys.contains("VelocityInMint") {
                                    self.velocityInMint = dict["VelocityInMint"] as! Int32
                                }
                            }
                        }
                        public var oid: String?

                        public var operName: String?

                        public var param: GetRuleDetailResponseBody.Data.Conditions.ConditionBasicInfo.Operators.OperatorBasicInfo.Param?

                        public var type: String?

                        public override init() {
                            super.init()
                        }

                        public init(_ dict: [String: Any]) {
                            super.init()
                            self.fromMap(dict)
                        }

                        public override func validate() throws -> Void {
                            try self.param?.validate()
                        }

                        public override func toMap() -> [String : Any] {
                            var map = super.toMap()
                            if self.oid != nil {
                                map["Oid"] = self.oid!
                            }
                            if self.operName != nil {
                                map["OperName"] = self.operName!
                            }
                            if self.param != nil {
                                map["Param"] = self.param?.toMap()
                            }
                            if self.type != nil {
                                map["Type"] = self.type!
                            }
                            return map
                        }

                        public override func fromMap(_ dict: [String: Any]) -> Void {
                            if dict.keys.contains("Oid") {
                                self.oid = dict["Oid"] as! String
                            }
                            if dict.keys.contains("OperName") {
                                self.operName = dict["OperName"] as! String
                            }
                            if dict.keys.contains("Param") {
                                var model = GetRuleDetailResponseBody.Data.Conditions.ConditionBasicInfo.Operators.OperatorBasicInfo.Param()
                                model.fromMap(dict["Param"] as! [String: Any])
                                self.param = model
                            }
                            if dict.keys.contains("Type") {
                                self.type = dict["Type"] as! String
                            }
                        }
                    }
                    public var operatorBasicInfo: [GetRuleDetailResponseBody.Data.Conditions.ConditionBasicInfo.Operators.OperatorBasicInfo]?

                    public override init() {
                        super.init()
                    }

                    public init(_ dict: [String: Any]) {
                        super.init()
                        self.fromMap(dict)
                    }

                    public override func validate() throws -> Void {
                    }

                    public override func toMap() -> [String : Any] {
                        var map = super.toMap()
                        if self.operatorBasicInfo != nil {
                            var tmp : [Any] = []
                            for k in self.operatorBasicInfo! {
                                tmp.append(k.toMap())
                            }
                            map["OperatorBasicInfo"] = tmp
                        }
                        return map
                    }

                    public override func fromMap(_ dict: [String: Any]) -> Void {
                        if dict.keys.contains("OperatorBasicInfo") {
                            self.operatorBasicInfo = dict["OperatorBasicInfo"] as! [GetRuleDetailResponseBody.Data.Conditions.ConditionBasicInfo.Operators.OperatorBasicInfo]
                        }
                    }
                }
                public var checkRange: GetRuleDetailResponseBody.Data.Conditions.ConditionBasicInfo.CheckRange?

                public var conditionInfoCid: String?

                public var operLambda: String?

                public var operators: GetRuleDetailResponseBody.Data.Conditions.ConditionBasicInfo.Operators?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                    try self.checkRange?.validate()
                    try self.operators?.validate()
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.checkRange != nil {
                        map["CheckRange"] = self.checkRange?.toMap()
                    }
                    if self.conditionInfoCid != nil {
                        map["ConditionInfoCid"] = self.conditionInfoCid!
                    }
                    if self.operLambda != nil {
                        map["OperLambda"] = self.operLambda!
                    }
                    if self.operators != nil {
                        map["Operators"] = self.operators?.toMap()
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("CheckRange") {
                        var model = GetRuleDetailResponseBody.Data.Conditions.ConditionBasicInfo.CheckRange()
                        model.fromMap(dict["CheckRange"] as! [String: Any])
                        self.checkRange = model
                    }
                    if dict.keys.contains("ConditionInfoCid") {
                        self.conditionInfoCid = dict["ConditionInfoCid"] as! String
                    }
                    if dict.keys.contains("OperLambda") {
                        self.operLambda = dict["OperLambda"] as! String
                    }
                    if dict.keys.contains("Operators") {
                        var model = GetRuleDetailResponseBody.Data.Conditions.ConditionBasicInfo.Operators()
                        model.fromMap(dict["Operators"] as! [String: Any])
                        self.operators = model
                    }
                }
            }
            public var conditionBasicInfo: [GetRuleDetailResponseBody.Data.Conditions.ConditionBasicInfo]?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.conditionBasicInfo != nil {
                    var tmp : [Any] = []
                    for k in self.conditionBasicInfo! {
                        tmp.append(k.toMap())
                    }
                    map["ConditionBasicInfo"] = tmp
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("ConditionBasicInfo") {
                    self.conditionBasicInfo = dict["ConditionBasicInfo"] as! [GetRuleDetailResponseBody.Data.Conditions.ConditionBasicInfo]
                }
            }
        }
        public class Rules : Tea.TeaModel {
            public class RuleBasicInfo : Tea.TeaModel {
                public class BusinessCategories : Tea.TeaModel {
                    public class BusinessCategoryBasicInfo : Tea.TeaModel {
                        public var bid: Int32?

                        public var businessName: String?

                        public var serviceType: Int32?

                        public override init() {
                            super.init()
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
                            if self.businessName != nil {
                                map["BusinessName"] = self.businessName!
                            }
                            if self.serviceType != nil {
                                map["ServiceType"] = self.serviceType!
                            }
                            return map
                        }

                        public override func fromMap(_ dict: [String: Any]) -> Void {
                            if dict.keys.contains("Bid") {
                                self.bid = dict["Bid"] as! Int32
                            }
                            if dict.keys.contains("BusinessName") {
                                self.businessName = dict["BusinessName"] as! String
                            }
                            if dict.keys.contains("ServiceType") {
                                self.serviceType = dict["ServiceType"] as! Int32
                            }
                        }
                    }
                    public var businessCategoryBasicInfo: [GetRuleDetailResponseBody.Data.Rules.RuleBasicInfo.BusinessCategories.BusinessCategoryBasicInfo]?

                    public override init() {
                        super.init()
                    }

                    public init(_ dict: [String: Any]) {
                        super.init()
                        self.fromMap(dict)
                    }

                    public override func validate() throws -> Void {
                    }

                    public override func toMap() -> [String : Any] {
                        var map = super.toMap()
                        if self.businessCategoryBasicInfo != nil {
                            var tmp : [Any] = []
                            for k in self.businessCategoryBasicInfo! {
                                tmp.append(k.toMap())
                            }
                            map["BusinessCategoryBasicInfo"] = tmp
                        }
                        return map
                    }

                    public override func fromMap(_ dict: [String: Any]) -> Void {
                        if dict.keys.contains("BusinessCategoryBasicInfo") {
                            self.businessCategoryBasicInfo = dict["BusinessCategoryBasicInfo"] as! [GetRuleDetailResponseBody.Data.Rules.RuleBasicInfo.BusinessCategories.BusinessCategoryBasicInfo]
                        }
                    }
                }
                public class Triggers : Tea.TeaModel {
                    public var trigger: [String]?

                    public override init() {
                        super.init()
                    }

                    public init(_ dict: [String: Any]) {
                        super.init()
                        self.fromMap(dict)
                    }

                    public override func validate() throws -> Void {
                    }

                    public override func toMap() -> [String : Any] {
                        var map = super.toMap()
                        if self.trigger != nil {
                            map["Trigger"] = self.trigger!
                        }
                        return map
                    }

                    public override func fromMap(_ dict: [String: Any]) -> Void {
                        if dict.keys.contains("Trigger") {
                            self.trigger = dict["Trigger"] as! [String]
                        }
                    }
                }
                public var businessCategories: GetRuleDetailResponseBody.Data.Rules.RuleBasicInfo.BusinessCategories?

                public var rid: String?

                public var ruleLambda: String?

                public var triggers: GetRuleDetailResponseBody.Data.Rules.RuleBasicInfo.Triggers?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                    try self.businessCategories?.validate()
                    try self.triggers?.validate()
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.businessCategories != nil {
                        map["BusinessCategories"] = self.businessCategories?.toMap()
                    }
                    if self.rid != nil {
                        map["Rid"] = self.rid!
                    }
                    if self.ruleLambda != nil {
                        map["RuleLambda"] = self.ruleLambda!
                    }
                    if self.triggers != nil {
                        map["Triggers"] = self.triggers?.toMap()
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("BusinessCategories") {
                        var model = GetRuleDetailResponseBody.Data.Rules.RuleBasicInfo.BusinessCategories()
                        model.fromMap(dict["BusinessCategories"] as! [String: Any])
                        self.businessCategories = model
                    }
                    if dict.keys.contains("Rid") {
                        self.rid = dict["Rid"] as! String
                    }
                    if dict.keys.contains("RuleLambda") {
                        self.ruleLambda = dict["RuleLambda"] as! String
                    }
                    if dict.keys.contains("Triggers") {
                        var model = GetRuleDetailResponseBody.Data.Rules.RuleBasicInfo.Triggers()
                        model.fromMap(dict["Triggers"] as! [String: Any])
                        self.triggers = model
                    }
                }
            }
            public var ruleBasicInfo: [GetRuleDetailResponseBody.Data.Rules.RuleBasicInfo]?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.ruleBasicInfo != nil {
                    var tmp : [Any] = []
                    for k in self.ruleBasicInfo! {
                        tmp.append(k.toMap())
                    }
                    map["RuleBasicInfo"] = tmp
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("RuleBasicInfo") {
                    self.ruleBasicInfo = dict["RuleBasicInfo"] as! [GetRuleDetailResponseBody.Data.Rules.RuleBasicInfo]
                }
            }
        }
        public var conditions: GetRuleDetailResponseBody.Data.Conditions?

        public var count: Int32?

        public var pageNumber: Int32?

        public var pageSize: Int32?

        public var rules: GetRuleDetailResponseBody.Data.Rules?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.conditions?.validate()
            try self.rules?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.conditions != nil {
                map["Conditions"] = self.conditions?.toMap()
            }
            if self.count != nil {
                map["Count"] = self.count!
            }
            if self.pageNumber != nil {
                map["PageNumber"] = self.pageNumber!
            }
            if self.pageSize != nil {
                map["PageSize"] = self.pageSize!
            }
            if self.rules != nil {
                map["Rules"] = self.rules?.toMap()
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Conditions") {
                var model = GetRuleDetailResponseBody.Data.Conditions()
                model.fromMap(dict["Conditions"] as! [String: Any])
                self.conditions = model
            }
            if dict.keys.contains("Count") {
                self.count = dict["Count"] as! Int32
            }
            if dict.keys.contains("PageNumber") {
                self.pageNumber = dict["PageNumber"] as! Int32
            }
            if dict.keys.contains("PageSize") {
                self.pageSize = dict["PageSize"] as! Int32
            }
            if dict.keys.contains("Rules") {
                var model = GetRuleDetailResponseBody.Data.Rules()
                model.fromMap(dict["Rules"] as! [String: Any])
                self.rules = model
            }
        }
    }
    public var code: String?

    public var data: GetRuleDetailResponseBody.Data?

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
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Data") {
            var model = GetRuleDetailResponseBody.Data()
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

public class GetRuleDetailResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetRuleDetailResponseBody?

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
            var model = GetRuleDetailResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetScoreInfoRequest : Tea.TeaModel {
    public var jsonStr: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.jsonStr != nil {
            map["JsonStr"] = self.jsonStr!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("JsonStr") {
            self.jsonStr = dict["JsonStr"] as! String
        }
    }
}

public class GetScoreInfoResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class ScorePo : Tea.TeaModel {
            public class ScoreInfos : Tea.TeaModel {
                public class ScoreParam : Tea.TeaModel {
                    public var scoreNum: Int32?

                    public var scoreSubId: Int32?

                    public var scoreSubName: String?

                    public var scoreType: Int32?

                    public override init() {
                        super.init()
                    }

                    public init(_ dict: [String: Any]) {
                        super.init()
                        self.fromMap(dict)
                    }

                    public override func validate() throws -> Void {
                    }

                    public override func toMap() -> [String : Any] {
                        var map = super.toMap()
                        if self.scoreNum != nil {
                            map["ScoreNum"] = self.scoreNum!
                        }
                        if self.scoreSubId != nil {
                            map["ScoreSubId"] = self.scoreSubId!
                        }
                        if self.scoreSubName != nil {
                            map["ScoreSubName"] = self.scoreSubName!
                        }
                        if self.scoreType != nil {
                            map["ScoreType"] = self.scoreType!
                        }
                        return map
                    }

                    public override func fromMap(_ dict: [String: Any]) -> Void {
                        if dict.keys.contains("ScoreNum") {
                            self.scoreNum = dict["ScoreNum"] as! Int32
                        }
                        if dict.keys.contains("ScoreSubId") {
                            self.scoreSubId = dict["ScoreSubId"] as! Int32
                        }
                        if dict.keys.contains("ScoreSubName") {
                            self.scoreSubName = dict["ScoreSubName"] as! String
                        }
                        if dict.keys.contains("ScoreType") {
                            self.scoreType = dict["ScoreType"] as! Int32
                        }
                    }
                }
                public var scoreParam: [GetScoreInfoResponseBody.Data.ScorePo.ScoreInfos.ScoreParam]?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.scoreParam != nil {
                        var tmp : [Any] = []
                        for k in self.scoreParam! {
                            tmp.append(k.toMap())
                        }
                        map["ScoreParam"] = tmp
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("ScoreParam") {
                        self.scoreParam = dict["ScoreParam"] as! [GetScoreInfoResponseBody.Data.ScorePo.ScoreInfos.ScoreParam]
                    }
                }
            }
            public var scoreId: Int32?

            public var scoreInfos: GetScoreInfoResponseBody.Data.ScorePo.ScoreInfos?

            public var scoreName: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
                try self.scoreInfos?.validate()
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.scoreId != nil {
                    map["ScoreId"] = self.scoreId!
                }
                if self.scoreInfos != nil {
                    map["ScoreInfos"] = self.scoreInfos?.toMap()
                }
                if self.scoreName != nil {
                    map["ScoreName"] = self.scoreName!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("ScoreId") {
                    self.scoreId = dict["ScoreId"] as! Int32
                }
                if dict.keys.contains("ScoreInfos") {
                    var model = GetScoreInfoResponseBody.Data.ScorePo.ScoreInfos()
                    model.fromMap(dict["ScoreInfos"] as! [String: Any])
                    self.scoreInfos = model
                }
                if dict.keys.contains("ScoreName") {
                    self.scoreName = dict["ScoreName"] as! String
                }
            }
        }
        public var scorePo: [GetScoreInfoResponseBody.Data.ScorePo]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.scorePo != nil {
                var tmp : [Any] = []
                for k in self.scorePo! {
                    tmp.append(k.toMap())
                }
                map["ScorePo"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("ScorePo") {
                self.scorePo = dict["ScorePo"] as! [GetScoreInfoResponseBody.Data.ScorePo]
            }
        }
    }
    public var code: String?

    public var data: GetScoreInfoResponseBody.Data?

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
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Data") {
            var model = GetScoreInfoResponseBody.Data()
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

public class GetScoreInfoResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetScoreInfoResponseBody?

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
            var model = GetScoreInfoResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetSkillGroupConfigRequest : Tea.TeaModel {
    public var jsonStr: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.jsonStr != nil {
            map["JsonStr"] = self.jsonStr!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("JsonStr") {
            self.jsonStr = dict["JsonStr"] as! String
        }
    }
}

public class GetSkillGroupConfigResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class AllRuleList : Tea.TeaModel {
            public class RuleNameInfo : Tea.TeaModel {
                public var rid: Int64?

                public var ruleName: String?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.rid != nil {
                        map["Rid"] = self.rid!
                    }
                    if self.ruleName != nil {
                        map["RuleName"] = self.ruleName!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("Rid") {
                        self.rid = dict["Rid"] as! Int64
                    }
                    if dict.keys.contains("RuleName") {
                        self.ruleName = dict["RuleName"] as! String
                    }
                }
            }
            public var ruleNameInfo: [GetSkillGroupConfigResponseBody.Data.AllRuleList.RuleNameInfo]?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.ruleNameInfo != nil {
                    var tmp : [Any] = []
                    for k in self.ruleNameInfo! {
                        tmp.append(k.toMap())
                    }
                    map["RuleNameInfo"] = tmp
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("RuleNameInfo") {
                    self.ruleNameInfo = dict["RuleNameInfo"] as! [GetSkillGroupConfigResponseBody.Data.AllRuleList.RuleNameInfo]
                }
            }
        }
        public class RuleList : Tea.TeaModel {
            public class RuleNameInfo : Tea.TeaModel {
                public var rid: Int64?

                public var ruleName: String?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.rid != nil {
                        map["Rid"] = self.rid!
                    }
                    if self.ruleName != nil {
                        map["RuleName"] = self.ruleName!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("Rid") {
                        self.rid = dict["Rid"] as! Int64
                    }
                    if dict.keys.contains("RuleName") {
                        self.ruleName = dict["RuleName"] as! String
                    }
                }
            }
            public var ruleNameInfo: [GetSkillGroupConfigResponseBody.Data.RuleList.RuleNameInfo]?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.ruleNameInfo != nil {
                    var tmp : [Any] = []
                    for k in self.ruleNameInfo! {
                        tmp.append(k.toMap())
                    }
                    map["RuleNameInfo"] = tmp
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("RuleNameInfo") {
                    self.ruleNameInfo = dict["RuleNameInfo"] as! [GetSkillGroupConfigResponseBody.Data.RuleList.RuleNameInfo]
                }
            }
        }
        public var allContentQualityCheck: Int32?

        public var allRids: String?

        public var allRuleList: GetSkillGroupConfigResponseBody.Data.AllRuleList?

        public var createTime: String?

        public var id: Int64?

        public var instanceId: String?

        public var modelId: Int64?

        public var modelName: String?

        public var name: String?

        public var qualityCheckType: Int32?

        public var rid: String?

        public var ruleList: GetSkillGroupConfigResponseBody.Data.RuleList?

        public var skillGroupFrom: Int32?

        public var skillGroupId: String?

        public var skillGroupName: String?

        public var status: Int32?

        public var type: Int32?

        public var updateTime: String?

        public var vocabId: Int64?

        public var vocabName: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.allRuleList?.validate()
            try self.ruleList?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.allContentQualityCheck != nil {
                map["AllContentQualityCheck"] = self.allContentQualityCheck!
            }
            if self.allRids != nil {
                map["AllRids"] = self.allRids!
            }
            if self.allRuleList != nil {
                map["AllRuleList"] = self.allRuleList?.toMap()
            }
            if self.createTime != nil {
                map["CreateTime"] = self.createTime!
            }
            if self.id != nil {
                map["Id"] = self.id!
            }
            if self.instanceId != nil {
                map["InstanceId"] = self.instanceId!
            }
            if self.modelId != nil {
                map["ModelId"] = self.modelId!
            }
            if self.modelName != nil {
                map["ModelName"] = self.modelName!
            }
            if self.name != nil {
                map["Name"] = self.name!
            }
            if self.qualityCheckType != nil {
                map["QualityCheckType"] = self.qualityCheckType!
            }
            if self.rid != nil {
                map["Rid"] = self.rid!
            }
            if self.ruleList != nil {
                map["RuleList"] = self.ruleList?.toMap()
            }
            if self.skillGroupFrom != nil {
                map["SkillGroupFrom"] = self.skillGroupFrom!
            }
            if self.skillGroupId != nil {
                map["SkillGroupId"] = self.skillGroupId!
            }
            if self.skillGroupName != nil {
                map["SkillGroupName"] = self.skillGroupName!
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
            if self.vocabId != nil {
                map["VocabId"] = self.vocabId!
            }
            if self.vocabName != nil {
                map["VocabName"] = self.vocabName!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("AllContentQualityCheck") {
                self.allContentQualityCheck = dict["AllContentQualityCheck"] as! Int32
            }
            if dict.keys.contains("AllRids") {
                self.allRids = dict["AllRids"] as! String
            }
            if dict.keys.contains("AllRuleList") {
                var model = GetSkillGroupConfigResponseBody.Data.AllRuleList()
                model.fromMap(dict["AllRuleList"] as! [String: Any])
                self.allRuleList = model
            }
            if dict.keys.contains("CreateTime") {
                self.createTime = dict["CreateTime"] as! String
            }
            if dict.keys.contains("Id") {
                self.id = dict["Id"] as! Int64
            }
            if dict.keys.contains("InstanceId") {
                self.instanceId = dict["InstanceId"] as! String
            }
            if dict.keys.contains("ModelId") {
                self.modelId = dict["ModelId"] as! Int64
            }
            if dict.keys.contains("ModelName") {
                self.modelName = dict["ModelName"] as! String
            }
            if dict.keys.contains("Name") {
                self.name = dict["Name"] as! String
            }
            if dict.keys.contains("QualityCheckType") {
                self.qualityCheckType = dict["QualityCheckType"] as! Int32
            }
            if dict.keys.contains("Rid") {
                self.rid = dict["Rid"] as! String
            }
            if dict.keys.contains("RuleList") {
                var model = GetSkillGroupConfigResponseBody.Data.RuleList()
                model.fromMap(dict["RuleList"] as! [String: Any])
                self.ruleList = model
            }
            if dict.keys.contains("SkillGroupFrom") {
                self.skillGroupFrom = dict["SkillGroupFrom"] as! Int32
            }
            if dict.keys.contains("SkillGroupId") {
                self.skillGroupId = dict["SkillGroupId"] as! String
            }
            if dict.keys.contains("SkillGroupName") {
                self.skillGroupName = dict["SkillGroupName"] as! String
            }
            if dict.keys.contains("Status") {
                self.status = dict["Status"] as! Int32
            }
            if dict.keys.contains("Type") {
                self.type = dict["Type"] as! Int32
            }
            if dict.keys.contains("UpdateTime") {
                self.updateTime = dict["UpdateTime"] as! String
            }
            if dict.keys.contains("VocabId") {
                self.vocabId = dict["VocabId"] as! Int64
            }
            if dict.keys.contains("VocabName") {
                self.vocabName = dict["VocabName"] as! String
            }
        }
    }
    public var code: String?

    public var data: GetSkillGroupConfigResponseBody.Data?

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
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Data") {
            var model = GetSkillGroupConfigResponseBody.Data()
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

public class GetSkillGroupConfigResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetSkillGroupConfigResponseBody?

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
            var model = GetSkillGroupConfigResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetSyncResultRequest : Tea.TeaModel {
    public var jsonStr: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.jsonStr != nil {
            map["JsonStr"] = self.jsonStr!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("JsonStr") {
            self.jsonStr = dict["JsonStr"] as! String
        }
    }
}

public class GetSyncResultResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class Agent : Tea.TeaModel {
            public var id: String?

            public var name: String?

            public var skillGroup: String?

            public override init() {
                super.init()
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
                if self.skillGroup != nil {
                    map["SkillGroup"] = self.skillGroup!
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
                if dict.keys.contains("SkillGroup") {
                    self.skillGroup = dict["SkillGroup"] as! String
                }
            }
        }
        public class AsrResult : Tea.TeaModel {
            public var begin: Int64?

            public var emotionValue: Int32?

            public var end: Int64?

            public var role: String?

            public var silenceDuration: Int32?

            public var speechRate: Int32?

            public var words: String?

            public override init() {
                super.init()
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
                if self.emotionValue != nil {
                    map["EmotionValue"] = self.emotionValue!
                }
                if self.end != nil {
                    map["End"] = self.end!
                }
                if self.role != nil {
                    map["Role"] = self.role!
                }
                if self.silenceDuration != nil {
                    map["SilenceDuration"] = self.silenceDuration!
                }
                if self.speechRate != nil {
                    map["SpeechRate"] = self.speechRate!
                }
                if self.words != nil {
                    map["Words"] = self.words!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("Begin") {
                    self.begin = dict["Begin"] as! Int64
                }
                if dict.keys.contains("EmotionValue") {
                    self.emotionValue = dict["EmotionValue"] as! Int32
                }
                if dict.keys.contains("End") {
                    self.end = dict["End"] as! Int64
                }
                if dict.keys.contains("Role") {
                    self.role = dict["Role"] as! String
                }
                if dict.keys.contains("SilenceDuration") {
                    self.silenceDuration = dict["SilenceDuration"] as! Int32
                }
                if dict.keys.contains("SpeechRate") {
                    self.speechRate = dict["SpeechRate"] as! Int32
                }
                if dict.keys.contains("Words") {
                    self.words = dict["Words"] as! String
                }
            }
        }
        public class HitResult : Tea.TeaModel {
            public class Hits : Tea.TeaModel {
                public class KeyWords : Tea.TeaModel {
                    public var cid: String?

                    public var from: Int32?

                    public var to: Int32?

                    public var val: String?

                    public override init() {
                        super.init()
                    }

                    public init(_ dict: [String: Any]) {
                        super.init()
                        self.fromMap(dict)
                    }

                    public override func validate() throws -> Void {
                    }

                    public override func toMap() -> [String : Any] {
                        var map = super.toMap()
                        if self.cid != nil {
                            map["Cid"] = self.cid!
                        }
                        if self.from != nil {
                            map["From"] = self.from!
                        }
                        if self.to != nil {
                            map["To"] = self.to!
                        }
                        if self.val != nil {
                            map["Val"] = self.val!
                        }
                        return map
                    }

                    public override func fromMap(_ dict: [String: Any]) -> Void {
                        if dict.keys.contains("Cid") {
                            self.cid = dict["Cid"] as! String
                        }
                        if dict.keys.contains("From") {
                            self.from = dict["From"] as! Int32
                        }
                        if dict.keys.contains("To") {
                            self.to = dict["To"] as! Int32
                        }
                        if dict.keys.contains("Val") {
                            self.val = dict["Val"] as! String
                        }
                    }
                }
                public class Phrase : Tea.TeaModel {
                    public var begin: Int64?

                    public var emotionValue: Int32?

                    public var end: Int32?

                    public var role: String?

                    public var silenceDuration: Int32?

                    public var speechRate: Int32?

                    public var words: String?

                    public override init() {
                        super.init()
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
                        if self.emotionValue != nil {
                            map["EmotionValue"] = self.emotionValue!
                        }
                        if self.end != nil {
                            map["End"] = self.end!
                        }
                        if self.role != nil {
                            map["Role"] = self.role!
                        }
                        if self.silenceDuration != nil {
                            map["SilenceDuration"] = self.silenceDuration!
                        }
                        if self.speechRate != nil {
                            map["SpeechRate"] = self.speechRate!
                        }
                        if self.words != nil {
                            map["Words"] = self.words!
                        }
                        return map
                    }

                    public override func fromMap(_ dict: [String: Any]) -> Void {
                        if dict.keys.contains("Begin") {
                            self.begin = dict["Begin"] as! Int64
                        }
                        if dict.keys.contains("EmotionValue") {
                            self.emotionValue = dict["EmotionValue"] as! Int32
                        }
                        if dict.keys.contains("End") {
                            self.end = dict["End"] as! Int32
                        }
                        if dict.keys.contains("Role") {
                            self.role = dict["Role"] as! String
                        }
                        if dict.keys.contains("SilenceDuration") {
                            self.silenceDuration = dict["SilenceDuration"] as! Int32
                        }
                        if dict.keys.contains("SpeechRate") {
                            self.speechRate = dict["SpeechRate"] as! Int32
                        }
                        if dict.keys.contains("Words") {
                            self.words = dict["Words"] as! String
                        }
                    }
                }
                public var cid: [String]?

                public var keyWords: [GetSyncResultResponseBody.Data.HitResult.Hits.KeyWords]?

                public var phrase: GetSyncResultResponseBody.Data.HitResult.Hits.Phrase?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                    try self.phrase?.validate()
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.cid != nil {
                        map["Cid"] = self.cid!
                    }
                    if self.keyWords != nil {
                        var tmp : [Any] = []
                        for k in self.keyWords! {
                            tmp.append(k.toMap())
                        }
                        map["KeyWords"] = tmp
                    }
                    if self.phrase != nil {
                        map["Phrase"] = self.phrase?.toMap()
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("Cid") {
                        self.cid = dict["Cid"] as! [String]
                    }
                    if dict.keys.contains("KeyWords") {
                        self.keyWords = dict["KeyWords"] as! [GetSyncResultResponseBody.Data.HitResult.Hits.KeyWords]
                    }
                    if dict.keys.contains("Phrase") {
                        var model = GetSyncResultResponseBody.Data.HitResult.Hits.Phrase()
                        model.fromMap(dict["Phrase"] as! [String: Any])
                        self.phrase = model
                    }
                }
            }
            public var hits: [GetSyncResultResponseBody.Data.HitResult.Hits]?

            public var name: String?

            public var reviewResult: Int32?

            public var rid: String?

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
                if self.hits != nil {
                    var tmp : [Any] = []
                    for k in self.hits! {
                        tmp.append(k.toMap())
                    }
                    map["Hits"] = tmp
                }
                if self.name != nil {
                    map["Name"] = self.name!
                }
                if self.reviewResult != nil {
                    map["ReviewResult"] = self.reviewResult!
                }
                if self.rid != nil {
                    map["Rid"] = self.rid!
                }
                if self.type != nil {
                    map["Type"] = self.type!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("Hits") {
                    self.hits = dict["Hits"] as! [GetSyncResultResponseBody.Data.HitResult.Hits]
                }
                if dict.keys.contains("Name") {
                    self.name = dict["Name"] as! String
                }
                if dict.keys.contains("ReviewResult") {
                    self.reviewResult = dict["ReviewResult"] as! Int32
                }
                if dict.keys.contains("Rid") {
                    self.rid = dict["Rid"] as! String
                }
                if dict.keys.contains("Type") {
                    self.type = dict["Type"] as! String
                }
            }
        }
        public class Recording : Tea.TeaModel {
            public var business: String?

            public var callId: String?

            public var callTime: String?

            public var callType: Int32?

            public var callee: String?

            public var caller: String?

            public var dataSetName: String?

            public var duration: Int64?

            public var durationAudio: Int64?

            public var id: String?

            public var name: String?

            public var primaryId: String?

            public var remark1: String?

            public var remark2: String?

            public var remark3: String?

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
                if self.business != nil {
                    map["Business"] = self.business!
                }
                if self.callId != nil {
                    map["CallId"] = self.callId!
                }
                if self.callTime != nil {
                    map["CallTime"] = self.callTime!
                }
                if self.callType != nil {
                    map["CallType"] = self.callType!
                }
                if self.callee != nil {
                    map["Callee"] = self.callee!
                }
                if self.caller != nil {
                    map["Caller"] = self.caller!
                }
                if self.dataSetName != nil {
                    map["DataSetName"] = self.dataSetName!
                }
                if self.duration != nil {
                    map["Duration"] = self.duration!
                }
                if self.durationAudio != nil {
                    map["DurationAudio"] = self.durationAudio!
                }
                if self.id != nil {
                    map["Id"] = self.id!
                }
                if self.name != nil {
                    map["Name"] = self.name!
                }
                if self.primaryId != nil {
                    map["PrimaryId"] = self.primaryId!
                }
                if self.remark1 != nil {
                    map["Remark1"] = self.remark1!
                }
                if self.remark2 != nil {
                    map["Remark2"] = self.remark2!
                }
                if self.remark3 != nil {
                    map["Remark3"] = self.remark3!
                }
                if self.url != nil {
                    map["Url"] = self.url!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("Business") {
                    self.business = dict["Business"] as! String
                }
                if dict.keys.contains("CallId") {
                    self.callId = dict["CallId"] as! String
                }
                if dict.keys.contains("CallTime") {
                    self.callTime = dict["CallTime"] as! String
                }
                if dict.keys.contains("CallType") {
                    self.callType = dict["CallType"] as! Int32
                }
                if dict.keys.contains("Callee") {
                    self.callee = dict["Callee"] as! String
                }
                if dict.keys.contains("Caller") {
                    self.caller = dict["Caller"] as! String
                }
                if dict.keys.contains("DataSetName") {
                    self.dataSetName = dict["DataSetName"] as! String
                }
                if dict.keys.contains("Duration") {
                    self.duration = dict["Duration"] as! Int64
                }
                if dict.keys.contains("DurationAudio") {
                    self.durationAudio = dict["DurationAudio"] as! Int64
                }
                if dict.keys.contains("Id") {
                    self.id = dict["Id"] as! String
                }
                if dict.keys.contains("Name") {
                    self.name = dict["Name"] as! String
                }
                if dict.keys.contains("PrimaryId") {
                    self.primaryId = dict["PrimaryId"] as! String
                }
                if dict.keys.contains("Remark1") {
                    self.remark1 = dict["Remark1"] as! String
                }
                if dict.keys.contains("Remark2") {
                    self.remark2 = dict["Remark2"] as! String
                }
                if dict.keys.contains("Remark3") {
                    self.remark3 = dict["Remark3"] as! String
                }
                if dict.keys.contains("Url") {
                    self.url = dict["Url"] as! String
                }
            }
        }
        public var agent: GetSyncResultResponseBody.Data.Agent?

        public var asrResult: [GetSyncResultResponseBody.Data.AsrResult]?

        public var comments: String?

        public var createTime: String?

        public var errorMessage: String?

        public var hitResult: [GetSyncResultResponseBody.Data.HitResult]?

        public var recording: GetSyncResultResponseBody.Data.Recording?

        public var resolver: String?

        public var reviewResult: Int32?

        public var reviewStatus: Int32?

        public var reviewer: String?

        public var score: Int32?

        public var status: Int32?

        public var taskId: String?

        public var taskName: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.agent?.validate()
            try self.recording?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.agent != nil {
                map["Agent"] = self.agent?.toMap()
            }
            if self.asrResult != nil {
                var tmp : [Any] = []
                for k in self.asrResult! {
                    tmp.append(k.toMap())
                }
                map["AsrResult"] = tmp
            }
            if self.comments != nil {
                map["Comments"] = self.comments!
            }
            if self.createTime != nil {
                map["CreateTime"] = self.createTime!
            }
            if self.errorMessage != nil {
                map["ErrorMessage"] = self.errorMessage!
            }
            if self.hitResult != nil {
                var tmp : [Any] = []
                for k in self.hitResult! {
                    tmp.append(k.toMap())
                }
                map["HitResult"] = tmp
            }
            if self.recording != nil {
                map["Recording"] = self.recording?.toMap()
            }
            if self.resolver != nil {
                map["Resolver"] = self.resolver!
            }
            if self.reviewResult != nil {
                map["ReviewResult"] = self.reviewResult!
            }
            if self.reviewStatus != nil {
                map["ReviewStatus"] = self.reviewStatus!
            }
            if self.reviewer != nil {
                map["Reviewer"] = self.reviewer!
            }
            if self.score != nil {
                map["Score"] = self.score!
            }
            if self.status != nil {
                map["Status"] = self.status!
            }
            if self.taskId != nil {
                map["TaskId"] = self.taskId!
            }
            if self.taskName != nil {
                map["TaskName"] = self.taskName!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Agent") {
                var model = GetSyncResultResponseBody.Data.Agent()
                model.fromMap(dict["Agent"] as! [String: Any])
                self.agent = model
            }
            if dict.keys.contains("AsrResult") {
                self.asrResult = dict["AsrResult"] as! [GetSyncResultResponseBody.Data.AsrResult]
            }
            if dict.keys.contains("Comments") {
                self.comments = dict["Comments"] as! String
            }
            if dict.keys.contains("CreateTime") {
                self.createTime = dict["CreateTime"] as! String
            }
            if dict.keys.contains("ErrorMessage") {
                self.errorMessage = dict["ErrorMessage"] as! String
            }
            if dict.keys.contains("HitResult") {
                self.hitResult = dict["HitResult"] as! [GetSyncResultResponseBody.Data.HitResult]
            }
            if dict.keys.contains("Recording") {
                var model = GetSyncResultResponseBody.Data.Recording()
                model.fromMap(dict["Recording"] as! [String: Any])
                self.recording = model
            }
            if dict.keys.contains("Resolver") {
                self.resolver = dict["Resolver"] as! String
            }
            if dict.keys.contains("ReviewResult") {
                self.reviewResult = dict["ReviewResult"] as! Int32
            }
            if dict.keys.contains("ReviewStatus") {
                self.reviewStatus = dict["ReviewStatus"] as! Int32
            }
            if dict.keys.contains("Reviewer") {
                self.reviewer = dict["Reviewer"] as! String
            }
            if dict.keys.contains("Score") {
                self.score = dict["Score"] as! Int32
            }
            if dict.keys.contains("Status") {
                self.status = dict["Status"] as! Int32
            }
            if dict.keys.contains("TaskId") {
                self.taskId = dict["TaskId"] as! String
            }
            if dict.keys.contains("TaskName") {
                self.taskName = dict["TaskName"] as! String
            }
        }
    }
    public var code: String?

    public var count: Int32?

    public var data: [GetSyncResultResponseBody.Data]?

    public var message: String?

    public var pageNumber: Int32?

    public var pageSize: Int32?

    public var requestId: String?

    public var resultCountId: String?

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
        if self.count != nil {
            map["Count"] = self.count!
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
        if self.pageNumber != nil {
            map["PageNumber"] = self.pageNumber!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.resultCountId != nil {
            map["ResultCountId"] = self.resultCountId!
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
        if dict.keys.contains("Count") {
            self.count = dict["Count"] as! Int32
        }
        if dict.keys.contains("Data") {
            self.data = dict["Data"] as! [GetSyncResultResponseBody.Data]
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
        if dict.keys.contains("ResultCountId") {
            self.resultCountId = dict["ResultCountId"] as! String
        }
        if dict.keys.contains("Success") {
            self.success = dict["Success"] as! Bool
        }
    }
}

public class GetSyncResultResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetSyncResultResponseBody?

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
            var model = GetSyncResultResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetThesaurusBySynonymForApiRequest : Tea.TeaModel {
    public var jsonStr: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.jsonStr != nil {
            map["JsonStr"] = self.jsonStr!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("JsonStr") {
            self.jsonStr = dict["JsonStr"] as! String
        }
    }
}

public class GetThesaurusBySynonymForApiResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class ThesaurusPo : Tea.TeaModel {
            public class SynonymList : Tea.TeaModel {
                public var synonymList: [String]?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.synonymList != nil {
                        map["SynonymList"] = self.synonymList!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("SynonymList") {
                        self.synonymList = dict["SynonymList"] as! [String]
                    }
                }
            }
            public var business: String?

            public var id: Int64?

            public var synonymList: GetThesaurusBySynonymForApiResponseBody.Data.ThesaurusPo.SynonymList?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
                try self.synonymList?.validate()
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.business != nil {
                    map["Business"] = self.business!
                }
                if self.id != nil {
                    map["Id"] = self.id!
                }
                if self.synonymList != nil {
                    map["SynonymList"] = self.synonymList?.toMap()
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("Business") {
                    self.business = dict["Business"] as! String
                }
                if dict.keys.contains("Id") {
                    self.id = dict["Id"] as! Int64
                }
                if dict.keys.contains("SynonymList") {
                    var model = GetThesaurusBySynonymForApiResponseBody.Data.ThesaurusPo.SynonymList()
                    model.fromMap(dict["SynonymList"] as! [String: Any])
                    self.synonymList = model
                }
            }
        }
        public var thesaurusPo: [GetThesaurusBySynonymForApiResponseBody.Data.ThesaurusPo]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.thesaurusPo != nil {
                var tmp : [Any] = []
                for k in self.thesaurusPo! {
                    tmp.append(k.toMap())
                }
                map["ThesaurusPo"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("ThesaurusPo") {
                self.thesaurusPo = dict["ThesaurusPo"] as! [GetThesaurusBySynonymForApiResponseBody.Data.ThesaurusPo]
            }
        }
    }
    public var code: String?

    public var data: GetThesaurusBySynonymForApiResponseBody.Data?

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
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Data") {
            var model = GetThesaurusBySynonymForApiResponseBody.Data()
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

public class GetThesaurusBySynonymForApiResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetThesaurusBySynonymForApiResponseBody?

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
            var model = GetThesaurusBySynonymForApiResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetWarningStrategyConfigRequest : Tea.TeaModel {
    public var jsonStr: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.jsonStr != nil {
            map["JsonStr"] = self.jsonStr!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("JsonStr") {
            self.jsonStr = dict["JsonStr"] as! String
        }
    }
}

public class GetWarningStrategyConfigResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class WarningStrategyList : Tea.TeaModel {
            public class WarningStrategyList : Tea.TeaModel {
                public class Range : Tea.TeaModel {
                    public var rangeNum: Int64?

                    public var type: Int64?

                    public override init() {
                        super.init()
                    }

                    public init(_ dict: [String: Any]) {
                        super.init()
                        self.fromMap(dict)
                    }

                    public override func validate() throws -> Void {
                    }

                    public override func toMap() -> [String : Any] {
                        var map = super.toMap()
                        if self.rangeNum != nil {
                            map["RangeNum"] = self.rangeNum!
                        }
                        if self.type != nil {
                            map["Type"] = self.type!
                        }
                        return map
                    }

                    public override func fromMap(_ dict: [String: Any]) -> Void {
                        if dict.keys.contains("RangeNum") {
                            self.rangeNum = dict["RangeNum"] as! Int64
                        }
                        if dict.keys.contains("Type") {
                            self.type = dict["Type"] as! Int64
                        }
                    }
                }
                public var code: String?

                public var duration: Int64?

                public var durationExpression: Int64?

                public var hitNumber: Int64?

                public var hitNumberExpression: Int64?

                public var hitRuleList: String?

                public var hitType: Int64?

                public var id: Int64?

                public var range: GetWarningStrategyConfigResponseBody.Data.WarningStrategyList.WarningStrategyList.Range?

                public var status: Int64?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                    try self.range?.validate()
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.code != nil {
                        map["Code"] = self.code!
                    }
                    if self.duration != nil {
                        map["Duration"] = self.duration!
                    }
                    if self.durationExpression != nil {
                        map["DurationExpression"] = self.durationExpression!
                    }
                    if self.hitNumber != nil {
                        map["HitNumber"] = self.hitNumber!
                    }
                    if self.hitNumberExpression != nil {
                        map["HitNumberExpression"] = self.hitNumberExpression!
                    }
                    if self.hitRuleList != nil {
                        map["HitRuleList"] = self.hitRuleList!
                    }
                    if self.hitType != nil {
                        map["HitType"] = self.hitType!
                    }
                    if self.id != nil {
                        map["Id"] = self.id!
                    }
                    if self.range != nil {
                        map["Range"] = self.range?.toMap()
                    }
                    if self.status != nil {
                        map["Status"] = self.status!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("Code") {
                        self.code = dict["Code"] as! String
                    }
                    if dict.keys.contains("Duration") {
                        self.duration = dict["Duration"] as! Int64
                    }
                    if dict.keys.contains("DurationExpression") {
                        self.durationExpression = dict["DurationExpression"] as! Int64
                    }
                    if dict.keys.contains("HitNumber") {
                        self.hitNumber = dict["HitNumber"] as! Int64
                    }
                    if dict.keys.contains("HitNumberExpression") {
                        self.hitNumberExpression = dict["HitNumberExpression"] as! Int64
                    }
                    if dict.keys.contains("HitRuleList") {
                        self.hitRuleList = dict["HitRuleList"] as! String
                    }
                    if dict.keys.contains("HitType") {
                        self.hitType = dict["HitType"] as! Int64
                    }
                    if dict.keys.contains("Id") {
                        self.id = dict["Id"] as! Int64
                    }
                    if dict.keys.contains("Range") {
                        var model = GetWarningStrategyConfigResponseBody.Data.WarningStrategyList.WarningStrategyList.Range()
                        model.fromMap(dict["Range"] as! [String: Any])
                        self.range = model
                    }
                    if dict.keys.contains("Status") {
                        self.status = dict["Status"] as! Int64
                    }
                }
            }
            public var warningStrategyList: [GetWarningStrategyConfigResponseBody.Data.WarningStrategyList.WarningStrategyList]?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.warningStrategyList != nil {
                    var tmp : [Any] = []
                    for k in self.warningStrategyList! {
                        tmp.append(k.toMap())
                    }
                    map["warningStrategyList"] = tmp
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("warningStrategyList") {
                    self.warningStrategyList = dict["warningStrategyList"] as! [GetWarningStrategyConfigResponseBody.Data.WarningStrategyList.WarningStrategyList]
                }
            }
        }
        public var id: Int64?

        public var intervalTime: Int64?

        public var lambda: String?

        public var level: Int64?

        public var maxNumber: Int64?

        public var name: String?

        public var warningStrategyList: GetWarningStrategyConfigResponseBody.Data.WarningStrategyList?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.warningStrategyList?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.id != nil {
                map["Id"] = self.id!
            }
            if self.intervalTime != nil {
                map["IntervalTime"] = self.intervalTime!
            }
            if self.lambda != nil {
                map["Lambda"] = self.lambda!
            }
            if self.level != nil {
                map["Level"] = self.level!
            }
            if self.maxNumber != nil {
                map["MaxNumber"] = self.maxNumber!
            }
            if self.name != nil {
                map["Name"] = self.name!
            }
            if self.warningStrategyList != nil {
                map["WarningStrategyList"] = self.warningStrategyList?.toMap()
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Id") {
                self.id = dict["Id"] as! Int64
            }
            if dict.keys.contains("IntervalTime") {
                self.intervalTime = dict["IntervalTime"] as! Int64
            }
            if dict.keys.contains("Lambda") {
                self.lambda = dict["Lambda"] as! String
            }
            if dict.keys.contains("Level") {
                self.level = dict["Level"] as! Int64
            }
            if dict.keys.contains("MaxNumber") {
                self.maxNumber = dict["MaxNumber"] as! Int64
            }
            if dict.keys.contains("Name") {
                self.name = dict["Name"] as! String
            }
            if dict.keys.contains("WarningStrategyList") {
                var model = GetWarningStrategyConfigResponseBody.Data.WarningStrategyList()
                model.fromMap(dict["WarningStrategyList"] as! [String: Any])
                self.warningStrategyList = model
            }
        }
    }
    public var code: String?

    public var data: GetWarningStrategyConfigResponseBody.Data?

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
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Data") {
            var model = GetWarningStrategyConfigResponseBody.Data()
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

public class GetWarningStrategyConfigResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetWarningStrategyConfigResponseBody?

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
            var model = GetWarningStrategyConfigResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class HandleComplaintRequest : Tea.TeaModel {
    public var jsonStr: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.jsonStr != nil {
            map["JsonStr"] = self.jsonStr!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("JsonStr") {
            self.jsonStr = dict["JsonStr"] as! String
        }
    }
}

public class HandleComplaintResponseBody : Tea.TeaModel {
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

public class HandleComplaintResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: HandleComplaintResponseBody?

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
            var model = HandleComplaintResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class InsertScoreForApiRequest : Tea.TeaModel {
    public var jsonStr: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.jsonStr != nil {
            map["JsonStr"] = self.jsonStr!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("JsonStr") {
            self.jsonStr = dict["JsonStr"] as! String
        }
    }
}

public class InsertScoreForApiResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var scoreId: Int64?

        public var scoreName: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.scoreId != nil {
                map["ScoreId"] = self.scoreId!
            }
            if self.scoreName != nil {
                map["ScoreName"] = self.scoreName!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("ScoreId") {
                self.scoreId = dict["ScoreId"] as! Int64
            }
            if dict.keys.contains("ScoreName") {
                self.scoreName = dict["ScoreName"] as! String
            }
        }
    }
    public var code: String?

    public var data: InsertScoreForApiResponseBody.Data?

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
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Data") {
            var model = InsertScoreForApiResponseBody.Data()
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

public class InsertScoreForApiResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: InsertScoreForApiResponseBody?

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
            var model = InsertScoreForApiResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class InsertSubScoreForApiRequest : Tea.TeaModel {
    public var jsonStr: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.jsonStr != nil {
            map["JsonStr"] = self.jsonStr!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("JsonStr") {
            self.jsonStr = dict["JsonStr"] as! String
        }
    }
}

public class InsertSubScoreForApiResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var scoreSubId: Int64?

        public var scoreSubName: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.scoreSubId != nil {
                map["ScoreSubId"] = self.scoreSubId!
            }
            if self.scoreSubName != nil {
                map["ScoreSubName"] = self.scoreSubName!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("ScoreSubId") {
                self.scoreSubId = dict["ScoreSubId"] as! Int64
            }
            if dict.keys.contains("ScoreSubName") {
                self.scoreSubName = dict["ScoreSubName"] as! String
            }
        }
    }
    public var code: String?

    public var data: InsertSubScoreForApiResponseBody.Data?

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
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Data") {
            var model = InsertSubScoreForApiResponseBody.Data()
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

public class InsertSubScoreForApiResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: InsertSubScoreForApiResponseBody?

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
            var model = InsertSubScoreForApiResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class InvalidRuleRequest : Tea.TeaModel {
    public var jsonStr: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.jsonStr != nil {
            map["JsonStr"] = self.jsonStr!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("JsonStr") {
            self.jsonStr = dict["JsonStr"] as! String
        }
    }
}

public class InvalidRuleResponseBody : Tea.TeaModel {
    public var code: String?

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
            self.code = dict["Code"] as! String
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

public class InvalidRuleResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: InvalidRuleResponseBody?

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
            var model = InvalidRuleResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListAsrVocabRequest : Tea.TeaModel {
    public var jsonStr: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.jsonStr != nil {
            map["JsonStr"] = self.jsonStr!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("JsonStr") {
            self.jsonStr = dict["JsonStr"] as! String
        }
    }
}

public class ListAsrVocabResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class AsrVocab : Tea.TeaModel {
            public var createTime: String?

            public var id: String?

            public var name: String?

            public var updateTime: String?

            public var vocabularyId: String?

            public override init() {
                super.init()
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
                if self.id != nil {
                    map["Id"] = self.id!
                }
                if self.name != nil {
                    map["Name"] = self.name!
                }
                if self.updateTime != nil {
                    map["UpdateTime"] = self.updateTime!
                }
                if self.vocabularyId != nil {
                    map["VocabularyId"] = self.vocabularyId!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("CreateTime") {
                    self.createTime = dict["CreateTime"] as! String
                }
                if dict.keys.contains("Id") {
                    self.id = dict["Id"] as! String
                }
                if dict.keys.contains("Name") {
                    self.name = dict["Name"] as! String
                }
                if dict.keys.contains("UpdateTime") {
                    self.updateTime = dict["UpdateTime"] as! String
                }
                if dict.keys.contains("VocabularyId") {
                    self.vocabularyId = dict["VocabularyId"] as! String
                }
            }
        }
        public var asrVocab: [ListAsrVocabResponseBody.Data.AsrVocab]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.asrVocab != nil {
                var tmp : [Any] = []
                for k in self.asrVocab! {
                    tmp.append(k.toMap())
                }
                map["AsrVocab"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("AsrVocab") {
                self.asrVocab = dict["AsrVocab"] as! [ListAsrVocabResponseBody.Data.AsrVocab]
            }
        }
    }
    public var code: String?

    public var data: ListAsrVocabResponseBody.Data?

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
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Data") {
            var model = ListAsrVocabResponseBody.Data()
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

public class ListAsrVocabResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListAsrVocabResponseBody?

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
            var model = ListAsrVocabResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListBusinessSpacesRequest : Tea.TeaModel {
    public var jsonStr: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.jsonStr != nil {
            map["JsonStr"] = self.jsonStr!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("JsonStr") {
            self.jsonStr = dict["JsonStr"] as! String
        }
    }
}

public class ListBusinessSpacesResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var aliUid: Int64?

        public var businessSpaceCode: String?

        public var businessSpaceName: String?

        public var currentStatus: Int32?

        public var endTime: String?

        public var id: Int64?

        public var language: String?

        public var loginUserType: Int32?

        public var orderInstanceId: String?

        public var productType: String?

        public var roleName: String?

        public var startTime: String?

        public var subAliUid: Int64?

        public var xspaceCommodityCode: String?

        public var xspaceProductCode: String?

        public override init() {
            super.init()
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
            if self.businessSpaceCode != nil {
                map["BusinessSpaceCode"] = self.businessSpaceCode!
            }
            if self.businessSpaceName != nil {
                map["BusinessSpaceName"] = self.businessSpaceName!
            }
            if self.currentStatus != nil {
                map["CurrentStatus"] = self.currentStatus!
            }
            if self.endTime != nil {
                map["EndTime"] = self.endTime!
            }
            if self.id != nil {
                map["Id"] = self.id!
            }
            if self.language != nil {
                map["Language"] = self.language!
            }
            if self.loginUserType != nil {
                map["LoginUserType"] = self.loginUserType!
            }
            if self.orderInstanceId != nil {
                map["OrderInstanceId"] = self.orderInstanceId!
            }
            if self.productType != nil {
                map["ProductType"] = self.productType!
            }
            if self.roleName != nil {
                map["RoleName"] = self.roleName!
            }
            if self.startTime != nil {
                map["StartTime"] = self.startTime!
            }
            if self.subAliUid != nil {
                map["SubAliUid"] = self.subAliUid!
            }
            if self.xspaceCommodityCode != nil {
                map["XspaceCommodityCode"] = self.xspaceCommodityCode!
            }
            if self.xspaceProductCode != nil {
                map["XspaceProductCode"] = self.xspaceProductCode!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("AliUid") {
                self.aliUid = dict["AliUid"] as! Int64
            }
            if dict.keys.contains("BusinessSpaceCode") {
                self.businessSpaceCode = dict["BusinessSpaceCode"] as! String
            }
            if dict.keys.contains("BusinessSpaceName") {
                self.businessSpaceName = dict["BusinessSpaceName"] as! String
            }
            if dict.keys.contains("CurrentStatus") {
                self.currentStatus = dict["CurrentStatus"] as! Int32
            }
            if dict.keys.contains("EndTime") {
                self.endTime = dict["EndTime"] as! String
            }
            if dict.keys.contains("Id") {
                self.id = dict["Id"] as! Int64
            }
            if dict.keys.contains("Language") {
                self.language = dict["Language"] as! String
            }
            if dict.keys.contains("LoginUserType") {
                self.loginUserType = dict["LoginUserType"] as! Int32
            }
            if dict.keys.contains("OrderInstanceId") {
                self.orderInstanceId = dict["OrderInstanceId"] as! String
            }
            if dict.keys.contains("ProductType") {
                self.productType = dict["ProductType"] as! String
            }
            if dict.keys.contains("RoleName") {
                self.roleName = dict["RoleName"] as! String
            }
            if dict.keys.contains("StartTime") {
                self.startTime = dict["StartTime"] as! String
            }
            if dict.keys.contains("SubAliUid") {
                self.subAliUid = dict["SubAliUid"] as! Int64
            }
            if dict.keys.contains("XspaceCommodityCode") {
                self.xspaceCommodityCode = dict["XspaceCommodityCode"] as! String
            }
            if dict.keys.contains("XspaceProductCode") {
                self.xspaceProductCode = dict["XspaceProductCode"] as! String
            }
        }
    }
    public var code: String?

    public var currentPage: Int32?

    public var data: [ListBusinessSpacesResponseBody.Data]?

    public var message: String?

    public var pageNumber: Int32?

    public var pageSize: Int32?

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
        if self.currentPage != nil {
            map["CurrentPage"] = self.currentPage!
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
        if self.pageNumber != nil {
            map["PageNumber"] = self.pageNumber!
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
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("CurrentPage") {
            self.currentPage = dict["CurrentPage"] as! Int32
        }
        if dict.keys.contains("Data") {
            self.data = dict["Data"] as! [ListBusinessSpacesResponseBody.Data]
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
        if dict.keys.contains("Success") {
            self.success = dict["Success"] as! Bool
        }
    }
}

public class ListBusinessSpacesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListBusinessSpacesResponseBody?

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
            var model = ListBusinessSpacesResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListHotWordsTasksRequest : Tea.TeaModel {
    public var jsonStr: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.jsonStr != nil {
            map["JsonStr"] = self.jsonStr!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("JsonStr") {
            self.jsonStr = dict["JsonStr"] as! String
        }
    }
}

public class ListHotWordsTasksResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class HotWordsTaskPo : Tea.TeaModel {
            public class DialogueParam : Tea.TeaModel {
                public var dataSetIds: String?

                public var dialogueId: Int64?

                public var endIndex: Int32?

                public var endTime: String?

                public var role: Int32?

                public var sourceType: Int32?

                public var startIndex: Int32?

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
                    if self.dataSetIds != nil {
                        map["DataSetIds"] = self.dataSetIds!
                    }
                    if self.dialogueId != nil {
                        map["DialogueId"] = self.dialogueId!
                    }
                    if self.endIndex != nil {
                        map["EndIndex"] = self.endIndex!
                    }
                    if self.endTime != nil {
                        map["EndTime"] = self.endTime!
                    }
                    if self.role != nil {
                        map["Role"] = self.role!
                    }
                    if self.sourceType != nil {
                        map["SourceType"] = self.sourceType!
                    }
                    if self.startIndex != nil {
                        map["StartIndex"] = self.startIndex!
                    }
                    if self.startTime != nil {
                        map["StartTime"] = self.startTime!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("DataSetIds") {
                        self.dataSetIds = dict["DataSetIds"] as! String
                    }
                    if dict.keys.contains("DialogueId") {
                        self.dialogueId = dict["DialogueId"] as! Int64
                    }
                    if dict.keys.contains("EndIndex") {
                        self.endIndex = dict["EndIndex"] as! Int32
                    }
                    if dict.keys.contains("EndTime") {
                        self.endTime = dict["EndTime"] as! String
                    }
                    if dict.keys.contains("Role") {
                        self.role = dict["Role"] as! Int32
                    }
                    if dict.keys.contains("SourceType") {
                        self.sourceType = dict["SourceType"] as! Int32
                    }
                    if dict.keys.contains("StartIndex") {
                        self.startIndex = dict["StartIndex"] as! Int32
                    }
                    if dict.keys.contains("StartTime") {
                        self.startTime = dict["StartTime"] as! String
                    }
                }
            }
            public class WordsParam : Tea.TeaModel {
                public var excludes: String?

                public var extraConfigId: Int64?

                public var includes: String?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.excludes != nil {
                        map["Excludes"] = self.excludes!
                    }
                    if self.extraConfigId != nil {
                        map["ExtraConfigId"] = self.extraConfigId!
                    }
                    if self.includes != nil {
                        map["Includes"] = self.includes!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("Excludes") {
                        self.excludes = dict["Excludes"] as! String
                    }
                    if dict.keys.contains("ExtraConfigId") {
                        self.extraConfigId = dict["ExtraConfigId"] as! Int64
                    }
                    if dict.keys.contains("Includes") {
                        self.includes = dict["Includes"] as! String
                    }
                }
            }
            public var dialogueParam: ListHotWordsTasksResponseBody.Data.HotWordsTaskPo.DialogueParam?

            public var endTime: String?

            public var instanceStatus: Int32?

            public var lastExecutionTime: String?

            public var message: String?

            public var name: String?

            public var startTime: String?

            public var status: Int32?

            public var taskConfigId: Int64?

            public var timeInterval: Int32?

            public var timeUnit: Int32?

            public var type: Int32?

            public var wordsParam: ListHotWordsTasksResponseBody.Data.HotWordsTaskPo.WordsParam?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
                try self.dialogueParam?.validate()
                try self.wordsParam?.validate()
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.dialogueParam != nil {
                    map["DialogueParam"] = self.dialogueParam?.toMap()
                }
                if self.endTime != nil {
                    map["EndTime"] = self.endTime!
                }
                if self.instanceStatus != nil {
                    map["InstanceStatus"] = self.instanceStatus!
                }
                if self.lastExecutionTime != nil {
                    map["LastExecutionTime"] = self.lastExecutionTime!
                }
                if self.message != nil {
                    map["Message"] = self.message!
                }
                if self.name != nil {
                    map["Name"] = self.name!
                }
                if self.startTime != nil {
                    map["StartTime"] = self.startTime!
                }
                if self.status != nil {
                    map["Status"] = self.status!
                }
                if self.taskConfigId != nil {
                    map["TaskConfigId"] = self.taskConfigId!
                }
                if self.timeInterval != nil {
                    map["TimeInterval"] = self.timeInterval!
                }
                if self.timeUnit != nil {
                    map["TimeUnit"] = self.timeUnit!
                }
                if self.type != nil {
                    map["Type"] = self.type!
                }
                if self.wordsParam != nil {
                    map["WordsParam"] = self.wordsParam?.toMap()
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("DialogueParam") {
                    var model = ListHotWordsTasksResponseBody.Data.HotWordsTaskPo.DialogueParam()
                    model.fromMap(dict["DialogueParam"] as! [String: Any])
                    self.dialogueParam = model
                }
                if dict.keys.contains("EndTime") {
                    self.endTime = dict["EndTime"] as! String
                }
                if dict.keys.contains("InstanceStatus") {
                    self.instanceStatus = dict["InstanceStatus"] as! Int32
                }
                if dict.keys.contains("LastExecutionTime") {
                    self.lastExecutionTime = dict["LastExecutionTime"] as! String
                }
                if dict.keys.contains("Message") {
                    self.message = dict["Message"] as! String
                }
                if dict.keys.contains("Name") {
                    self.name = dict["Name"] as! String
                }
                if dict.keys.contains("StartTime") {
                    self.startTime = dict["StartTime"] as! String
                }
                if dict.keys.contains("Status") {
                    self.status = dict["Status"] as! Int32
                }
                if dict.keys.contains("TaskConfigId") {
                    self.taskConfigId = dict["TaskConfigId"] as! Int64
                }
                if dict.keys.contains("TimeInterval") {
                    self.timeInterval = dict["TimeInterval"] as! Int32
                }
                if dict.keys.contains("TimeUnit") {
                    self.timeUnit = dict["TimeUnit"] as! Int32
                }
                if dict.keys.contains("Type") {
                    self.type = dict["Type"] as! Int32
                }
                if dict.keys.contains("WordsParam") {
                    var model = ListHotWordsTasksResponseBody.Data.HotWordsTaskPo.WordsParam()
                    model.fromMap(dict["WordsParam"] as! [String: Any])
                    self.wordsParam = model
                }
            }
        }
        public var hotWordsTaskPo: [ListHotWordsTasksResponseBody.Data.HotWordsTaskPo]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.hotWordsTaskPo != nil {
                var tmp : [Any] = []
                for k in self.hotWordsTaskPo! {
                    tmp.append(k.toMap())
                }
                map["HotWordsTaskPo"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("HotWordsTaskPo") {
                self.hotWordsTaskPo = dict["HotWordsTaskPo"] as! [ListHotWordsTasksResponseBody.Data.HotWordsTaskPo]
            }
        }
    }
    public var code: String?

    public var count: Int32?

    public var data: ListHotWordsTasksResponseBody.Data?

    public var message: String?

    public var pageNumber: Int32?

    public var pageSize: Int32?

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
        if self.count != nil {
            map["Count"] = self.count!
        }
        if self.data != nil {
            map["Data"] = self.data?.toMap()
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
        if self.success != nil {
            map["Success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Count") {
            self.count = dict["Count"] as! Int32
        }
        if dict.keys.contains("Data") {
            var model = ListHotWordsTasksResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
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
        if dict.keys.contains("Success") {
            self.success = dict["Success"] as! Bool
        }
    }
}

public class ListHotWordsTasksResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListHotWordsTasksResponseBody?

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
            var model = ListHotWordsTasksResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListPrecisionTaskRequest : Tea.TeaModel {
    public var jsonStr: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.jsonStr != nil {
            map["JsonStr"] = self.jsonStr!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("JsonStr") {
            self.jsonStr = dict["JsonStr"] as! String
        }
    }
}

public class ListPrecisionTaskResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class PrecisionTask : Tea.TeaModel {
            public class Precisions : Tea.TeaModel {
                public class Precision : Tea.TeaModel {
                    public var createTime: String?

                    public var modelId: Int64?

                    public var modelName: String?

                    public var precision: Double?

                    public var status: Int32?

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
                        if self.createTime != nil {
                            map["CreateTime"] = self.createTime!
                        }
                        if self.modelId != nil {
                            map["ModelId"] = self.modelId!
                        }
                        if self.modelName != nil {
                            map["ModelName"] = self.modelName!
                        }
                        if self.precision != nil {
                            map["Precision"] = self.precision!
                        }
                        if self.status != nil {
                            map["Status"] = self.status!
                        }
                        if self.taskId != nil {
                            map["TaskId"] = self.taskId!
                        }
                        return map
                    }

                    public override func fromMap(_ dict: [String: Any]) -> Void {
                        if dict.keys.contains("CreateTime") {
                            self.createTime = dict["CreateTime"] as! String
                        }
                        if dict.keys.contains("ModelId") {
                            self.modelId = dict["ModelId"] as! Int64
                        }
                        if dict.keys.contains("ModelName") {
                            self.modelName = dict["ModelName"] as! String
                        }
                        if dict.keys.contains("Precision") {
                            self.precision = dict["Precision"] as! Double
                        }
                        if dict.keys.contains("Status") {
                            self.status = dict["Status"] as! Int32
                        }
                        if dict.keys.contains("TaskId") {
                            self.taskId = dict["TaskId"] as! String
                        }
                    }
                }
                public var precision: [ListPrecisionTaskResponseBody.Data.PrecisionTask.Precisions.Precision]?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.precision != nil {
                        var tmp : [Any] = []
                        for k in self.precision! {
                            tmp.append(k.toMap())
                        }
                        map["Precision"] = tmp
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("Precision") {
                        self.precision = dict["Precision"] as! [ListPrecisionTaskResponseBody.Data.PrecisionTask.Precisions.Precision]
                    }
                }
            }
            public var createTime: String?

            public var dataSetId: Int64?

            public var dataSetName: String?

            public var duration: Int32?

            public var incorrectWords: Int32?

            public var name: String?

            public var precisions: ListPrecisionTaskResponseBody.Data.PrecisionTask.Precisions?

            public var source: Int32?

            public var status: Int32?

            public var taskId: String?

            public var totalCount: Int32?

            public var updateTime: String?

            public var verifiedCount: Int32?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
                try self.precisions?.validate()
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.createTime != nil {
                    map["CreateTime"] = self.createTime!
                }
                if self.dataSetId != nil {
                    map["DataSetId"] = self.dataSetId!
                }
                if self.dataSetName != nil {
                    map["DataSetName"] = self.dataSetName!
                }
                if self.duration != nil {
                    map["Duration"] = self.duration!
                }
                if self.incorrectWords != nil {
                    map["IncorrectWords"] = self.incorrectWords!
                }
                if self.name != nil {
                    map["Name"] = self.name!
                }
                if self.precisions != nil {
                    map["Precisions"] = self.precisions?.toMap()
                }
                if self.source != nil {
                    map["Source"] = self.source!
                }
                if self.status != nil {
                    map["Status"] = self.status!
                }
                if self.taskId != nil {
                    map["TaskId"] = self.taskId!
                }
                if self.totalCount != nil {
                    map["TotalCount"] = self.totalCount!
                }
                if self.updateTime != nil {
                    map["UpdateTime"] = self.updateTime!
                }
                if self.verifiedCount != nil {
                    map["VerifiedCount"] = self.verifiedCount!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("CreateTime") {
                    self.createTime = dict["CreateTime"] as! String
                }
                if dict.keys.contains("DataSetId") {
                    self.dataSetId = dict["DataSetId"] as! Int64
                }
                if dict.keys.contains("DataSetName") {
                    self.dataSetName = dict["DataSetName"] as! String
                }
                if dict.keys.contains("Duration") {
                    self.duration = dict["Duration"] as! Int32
                }
                if dict.keys.contains("IncorrectWords") {
                    self.incorrectWords = dict["IncorrectWords"] as! Int32
                }
                if dict.keys.contains("Name") {
                    self.name = dict["Name"] as! String
                }
                if dict.keys.contains("Precisions") {
                    var model = ListPrecisionTaskResponseBody.Data.PrecisionTask.Precisions()
                    model.fromMap(dict["Precisions"] as! [String: Any])
                    self.precisions = model
                }
                if dict.keys.contains("Source") {
                    self.source = dict["Source"] as! Int32
                }
                if dict.keys.contains("Status") {
                    self.status = dict["Status"] as! Int32
                }
                if dict.keys.contains("TaskId") {
                    self.taskId = dict["TaskId"] as! String
                }
                if dict.keys.contains("TotalCount") {
                    self.totalCount = dict["TotalCount"] as! Int32
                }
                if dict.keys.contains("UpdateTime") {
                    self.updateTime = dict["UpdateTime"] as! String
                }
                if dict.keys.contains("VerifiedCount") {
                    self.verifiedCount = dict["VerifiedCount"] as! Int32
                }
            }
        }
        public var precisionTask: [ListPrecisionTaskResponseBody.Data.PrecisionTask]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.precisionTask != nil {
                var tmp : [Any] = []
                for k in self.precisionTask! {
                    tmp.append(k.toMap())
                }
                map["PrecisionTask"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("PrecisionTask") {
                self.precisionTask = dict["PrecisionTask"] as! [ListPrecisionTaskResponseBody.Data.PrecisionTask]
            }
        }
    }
    public var code: String?

    public var count: Int32?

    public var data: ListPrecisionTaskResponseBody.Data?

    public var message: String?

    public var pageNumber: Int32?

    public var pageSize: Int32?

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
        if self.count != nil {
            map["Count"] = self.count!
        }
        if self.data != nil {
            map["Data"] = self.data?.toMap()
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
        if self.success != nil {
            map["Success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Count") {
            self.count = dict["Count"] as! Int32
        }
        if dict.keys.contains("Data") {
            var model = ListPrecisionTaskResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
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
        if dict.keys.contains("Success") {
            self.success = dict["Success"] as! Bool
        }
    }
}

public class ListPrecisionTaskResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListPrecisionTaskResponseBody?

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
            var model = ListPrecisionTaskResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListQualityCheckSchemeRequest : Tea.TeaModel {
    public var jsonStr: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.jsonStr != nil {
            map["JsonStr"] = self.jsonStr!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("JsonStr") {
            self.jsonStr = dict["JsonStr"] as! String
        }
    }
}

public class ListQualityCheckSchemeResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class RuleList : Tea.TeaModel {
            public class Rules : Tea.TeaModel {
                public var checkType: Int32?

                public var name: String?

                public var rid: Int64?

                public var ruleScoreType: Int32?

                public var scoreNum: Int32?

                public var scoreNumType: Int32?

                public var scoreType: Int32?

                public var targetType: Int32?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.checkType != nil {
                        map["CheckType"] = self.checkType!
                    }
                    if self.name != nil {
                        map["Name"] = self.name!
                    }
                    if self.rid != nil {
                        map["Rid"] = self.rid!
                    }
                    if self.ruleScoreType != nil {
                        map["RuleScoreType"] = self.ruleScoreType!
                    }
                    if self.scoreNum != nil {
                        map["ScoreNum"] = self.scoreNum!
                    }
                    if self.scoreNumType != nil {
                        map["ScoreNumType"] = self.scoreNumType!
                    }
                    if self.scoreType != nil {
                        map["ScoreType"] = self.scoreType!
                    }
                    if self.targetType != nil {
                        map["TargetType"] = self.targetType!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("CheckType") {
                        self.checkType = dict["CheckType"] as! Int32
                    }
                    if dict.keys.contains("Name") {
                        self.name = dict["Name"] as! String
                    }
                    if dict.keys.contains("Rid") {
                        self.rid = dict["Rid"] as! Int64
                    }
                    if dict.keys.contains("RuleScoreType") {
                        self.ruleScoreType = dict["RuleScoreType"] as! Int32
                    }
                    if dict.keys.contains("ScoreNum") {
                        self.scoreNum = dict["ScoreNum"] as! Int32
                    }
                    if dict.keys.contains("ScoreNumType") {
                        self.scoreNumType = dict["ScoreNumType"] as! Int32
                    }
                    if dict.keys.contains("ScoreType") {
                        self.scoreType = dict["ScoreType"] as! Int32
                    }
                    if dict.keys.contains("TargetType") {
                        self.targetType = dict["TargetType"] as! Int32
                    }
                }
            }
            public var rules: [ListQualityCheckSchemeResponseBody.Data.RuleList.Rules]?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.rules != nil {
                    var tmp : [Any] = []
                    for k in self.rules! {
                        tmp.append(k.toMap())
                    }
                    map["Rules"] = tmp
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("Rules") {
                    self.rules = dict["Rules"] as! [ListQualityCheckSchemeResponseBody.Data.RuleList.Rules]
                }
            }
        }
        public class SchemeCheckTypeList : Tea.TeaModel {
            public var checkName: String?

            public var checkType: Int32?

            public var enable: Int32?

            public var score: Int32?

            public var targetType: Int32?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.checkName != nil {
                    map["CheckName"] = self.checkName!
                }
                if self.checkType != nil {
                    map["CheckType"] = self.checkType!
                }
                if self.enable != nil {
                    map["Enable"] = self.enable!
                }
                if self.score != nil {
                    map["Score"] = self.score!
                }
                if self.targetType != nil {
                    map["TargetType"] = self.targetType!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("CheckName") {
                    self.checkName = dict["CheckName"] as! String
                }
                if dict.keys.contains("CheckType") {
                    self.checkType = dict["CheckType"] as! Int32
                }
                if dict.keys.contains("Enable") {
                    self.enable = dict["Enable"] as! Int32
                }
                if dict.keys.contains("Score") {
                    self.score = dict["Score"] as! Int32
                }
                if dict.keys.contains("TargetType") {
                    self.targetType = dict["TargetType"] as! Int32
                }
            }
        }
        public var createTime: String?

        public var createUserName: String?

        public var dataType: Int32?

        public var description_: String?

        public var name: String?

        public var ruleList: [ListQualityCheckSchemeResponseBody.Data.RuleList]?

        public var schemeCheckTypeList: [ListQualityCheckSchemeResponseBody.Data.SchemeCheckTypeList]?

        public var schemeId: Int64?

        public var status: Int32?

        public var templateType: Int32?

        public var type: Int32?

        public var updateTime: String?

        public var updateUserName: String?

        public var version: Int64?

        public override init() {
            super.init()
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
            if self.createUserName != nil {
                map["CreateUserName"] = self.createUserName!
            }
            if self.dataType != nil {
                map["DataType"] = self.dataType!
            }
            if self.description_ != nil {
                map["Description"] = self.description_!
            }
            if self.name != nil {
                map["Name"] = self.name!
            }
            if self.ruleList != nil {
                var tmp : [Any] = []
                for k in self.ruleList! {
                    tmp.append(k.toMap())
                }
                map["RuleList"] = tmp
            }
            if self.schemeCheckTypeList != nil {
                var tmp : [Any] = []
                for k in self.schemeCheckTypeList! {
                    tmp.append(k.toMap())
                }
                map["SchemeCheckTypeList"] = tmp
            }
            if self.schemeId != nil {
                map["SchemeId"] = self.schemeId!
            }
            if self.status != nil {
                map["Status"] = self.status!
            }
            if self.templateType != nil {
                map["TemplateType"] = self.templateType!
            }
            if self.type != nil {
                map["Type"] = self.type!
            }
            if self.updateTime != nil {
                map["UpdateTime"] = self.updateTime!
            }
            if self.updateUserName != nil {
                map["UpdateUserName"] = self.updateUserName!
            }
            if self.version != nil {
                map["Version"] = self.version!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("CreateTime") {
                self.createTime = dict["CreateTime"] as! String
            }
            if dict.keys.contains("CreateUserName") {
                self.createUserName = dict["CreateUserName"] as! String
            }
            if dict.keys.contains("DataType") {
                self.dataType = dict["DataType"] as! Int32
            }
            if dict.keys.contains("Description") {
                self.description_ = dict["Description"] as! String
            }
            if dict.keys.contains("Name") {
                self.name = dict["Name"] as! String
            }
            if dict.keys.contains("RuleList") {
                self.ruleList = dict["RuleList"] as! [ListQualityCheckSchemeResponseBody.Data.RuleList]
            }
            if dict.keys.contains("SchemeCheckTypeList") {
                self.schemeCheckTypeList = dict["SchemeCheckTypeList"] as! [ListQualityCheckSchemeResponseBody.Data.SchemeCheckTypeList]
            }
            if dict.keys.contains("SchemeId") {
                self.schemeId = dict["SchemeId"] as! Int64
            }
            if dict.keys.contains("Status") {
                self.status = dict["Status"] as! Int32
            }
            if dict.keys.contains("TemplateType") {
                self.templateType = dict["TemplateType"] as! Int32
            }
            if dict.keys.contains("Type") {
                self.type = dict["Type"] as! Int32
            }
            if dict.keys.contains("UpdateTime") {
                self.updateTime = dict["UpdateTime"] as! String
            }
            if dict.keys.contains("UpdateUserName") {
                self.updateUserName = dict["UpdateUserName"] as! String
            }
            if dict.keys.contains("Version") {
                self.version = dict["Version"] as! Int64
            }
        }
    }
    public var code: String?

    public var count: Int32?

    public var data: [ListQualityCheckSchemeResponseBody.Data]?

    public var message: String?

    public var pageNumber: Int32?

    public var pageSize: Int32?

    public var requestId: String?

    public var resultCountId: String?

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
        if self.count != nil {
            map["Count"] = self.count!
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
        if self.pageNumber != nil {
            map["PageNumber"] = self.pageNumber!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.resultCountId != nil {
            map["ResultCountId"] = self.resultCountId!
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
        if dict.keys.contains("Count") {
            self.count = dict["Count"] as! Int32
        }
        if dict.keys.contains("Data") {
            self.data = dict["Data"] as! [ListQualityCheckSchemeResponseBody.Data]
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
        if dict.keys.contains("ResultCountId") {
            self.resultCountId = dict["ResultCountId"] as! String
        }
        if dict.keys.contains("Success") {
            self.success = dict["Success"] as! Bool
        }
    }
}

public class ListQualityCheckSchemeResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListQualityCheckSchemeResponseBody?

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
            var model = ListQualityCheckSchemeResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListRolesRequest : Tea.TeaModel {
    public var jsonStr: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.jsonStr != nil {
            map["JsonStr"] = self.jsonStr!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("JsonStr") {
            self.jsonStr = dict["JsonStr"] as! String
        }
    }
}

public class ListRolesResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class Role : Tea.TeaModel {
            public var createTime: String?

            public var displayName: String?

            public var id: Int64?

            public var level: Int32?

            public var name: String?

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
                if self.createTime != nil {
                    map["CreateTime"] = self.createTime!
                }
                if self.displayName != nil {
                    map["DisplayName"] = self.displayName!
                }
                if self.id != nil {
                    map["Id"] = self.id!
                }
                if self.level != nil {
                    map["Level"] = self.level!
                }
                if self.name != nil {
                    map["Name"] = self.name!
                }
                if self.updateTime != nil {
                    map["UpdateTime"] = self.updateTime!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("CreateTime") {
                    self.createTime = dict["CreateTime"] as! String
                }
                if dict.keys.contains("DisplayName") {
                    self.displayName = dict["DisplayName"] as! String
                }
                if dict.keys.contains("Id") {
                    self.id = dict["Id"] as! Int64
                }
                if dict.keys.contains("Level") {
                    self.level = dict["Level"] as! Int32
                }
                if dict.keys.contains("Name") {
                    self.name = dict["Name"] as! String
                }
                if dict.keys.contains("UpdateTime") {
                    self.updateTime = dict["UpdateTime"] as! String
                }
            }
        }
        public var role: [ListRolesResponseBody.Data.Role]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.role != nil {
                var tmp : [Any] = []
                for k in self.role! {
                    tmp.append(k.toMap())
                }
                map["Role"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Role") {
                self.role = dict["Role"] as! [ListRolesResponseBody.Data.Role]
            }
        }
    }
    public var code: String?

    public var data: ListRolesResponseBody.Data?

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
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Data") {
            var model = ListRolesResponseBody.Data()
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

public class ListRolesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListRolesResponseBody?

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
            var model = ListRolesResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListRulesRequest : Tea.TeaModel {
    public var jsonStr: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.jsonStr != nil {
            map["JsonStr"] = self.jsonStr!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("JsonStr") {
            self.jsonStr = dict["JsonStr"] as! String
        }
    }
}

public class ListRulesResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var businessCategoryNameList: [String]?

        public var comments: String?

        public var createTime: String?

        public var name: String?

        public var rid: Int64?

        public var ruleType: Int32?

        public var type: Int32?

        public var typeName: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.businessCategoryNameList != nil {
                map["BusinessCategoryNameList"] = self.businessCategoryNameList!
            }
            if self.comments != nil {
                map["Comments"] = self.comments!
            }
            if self.createTime != nil {
                map["CreateTime"] = self.createTime!
            }
            if self.name != nil {
                map["Name"] = self.name!
            }
            if self.rid != nil {
                map["Rid"] = self.rid!
            }
            if self.ruleType != nil {
                map["RuleType"] = self.ruleType!
            }
            if self.type != nil {
                map["Type"] = self.type!
            }
            if self.typeName != nil {
                map["TypeName"] = self.typeName!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("BusinessCategoryNameList") {
                self.businessCategoryNameList = dict["BusinessCategoryNameList"] as! [String]
            }
            if dict.keys.contains("Comments") {
                self.comments = dict["Comments"] as! String
            }
            if dict.keys.contains("CreateTime") {
                self.createTime = dict["CreateTime"] as! String
            }
            if dict.keys.contains("Name") {
                self.name = dict["Name"] as! String
            }
            if dict.keys.contains("Rid") {
                self.rid = dict["Rid"] as! Int64
            }
            if dict.keys.contains("RuleType") {
                self.ruleType = dict["RuleType"] as! Int32
            }
            if dict.keys.contains("Type") {
                self.type = dict["Type"] as! Int32
            }
            if dict.keys.contains("TypeName") {
                self.typeName = dict["TypeName"] as! String
            }
        }
    }
    public var code: String?

    public var count: Int32?

    public var data: [ListRulesResponseBody.Data]?

    public var message: String?

    public var pageNumber: Int32?

    public var pageSize: Int32?

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
        if self.count != nil {
            map["Count"] = self.count!
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
        if self.pageNumber != nil {
            map["PageNumber"] = self.pageNumber!
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
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Count") {
            self.count = dict["Count"] as! Int32
        }
        if dict.keys.contains("Data") {
            self.data = dict["Data"] as! [ListRulesResponseBody.Data]
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
        if dict.keys.contains("Success") {
            self.success = dict["Success"] as! Bool
        }
    }
}

public class ListRulesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListRulesResponseBody?

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
            var model = ListRulesResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListSkillGroupConfigRequest : Tea.TeaModel {
    public var jsonStr: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.jsonStr != nil {
            map["JsonStr"] = self.jsonStr!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("JsonStr") {
            self.jsonStr = dict["JsonStr"] as! String
        }
    }
}

public class ListSkillGroupConfigResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class SkillGroupConfig : Tea.TeaModel {
            public class AllRuleList : Tea.TeaModel {
                public class RuleNameInfo : Tea.TeaModel {
                    public var rid: Int64?

                    public var ruleName: String?

                    public override init() {
                        super.init()
                    }

                    public init(_ dict: [String: Any]) {
                        super.init()
                        self.fromMap(dict)
                    }

                    public override func validate() throws -> Void {
                    }

                    public override func toMap() -> [String : Any] {
                        var map = super.toMap()
                        if self.rid != nil {
                            map["Rid"] = self.rid!
                        }
                        if self.ruleName != nil {
                            map["RuleName"] = self.ruleName!
                        }
                        return map
                    }

                    public override func fromMap(_ dict: [String: Any]) -> Void {
                        if dict.keys.contains("Rid") {
                            self.rid = dict["Rid"] as! Int64
                        }
                        if dict.keys.contains("RuleName") {
                            self.ruleName = dict["RuleName"] as! String
                        }
                    }
                }
                public var ruleNameInfo: [ListSkillGroupConfigResponseBody.Data.SkillGroupConfig.AllRuleList.RuleNameInfo]?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.ruleNameInfo != nil {
                        var tmp : [Any] = []
                        for k in self.ruleNameInfo! {
                            tmp.append(k.toMap())
                        }
                        map["RuleNameInfo"] = tmp
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("RuleNameInfo") {
                        self.ruleNameInfo = dict["RuleNameInfo"] as! [ListSkillGroupConfigResponseBody.Data.SkillGroupConfig.AllRuleList.RuleNameInfo]
                    }
                }
            }
            public class RuleList : Tea.TeaModel {
                public class RuleNameInfo : Tea.TeaModel {
                    public var rid: Int64?

                    public var ruleName: String?

                    public override init() {
                        super.init()
                    }

                    public init(_ dict: [String: Any]) {
                        super.init()
                        self.fromMap(dict)
                    }

                    public override func validate() throws -> Void {
                    }

                    public override func toMap() -> [String : Any] {
                        var map = super.toMap()
                        if self.rid != nil {
                            map["Rid"] = self.rid!
                        }
                        if self.ruleName != nil {
                            map["RuleName"] = self.ruleName!
                        }
                        return map
                    }

                    public override func fromMap(_ dict: [String: Any]) -> Void {
                        if dict.keys.contains("Rid") {
                            self.rid = dict["Rid"] as! Int64
                        }
                        if dict.keys.contains("RuleName") {
                            self.ruleName = dict["RuleName"] as! String
                        }
                    }
                }
                public var ruleNameInfo: [ListSkillGroupConfigResponseBody.Data.SkillGroupConfig.RuleList.RuleNameInfo]?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.ruleNameInfo != nil {
                        var tmp : [Any] = []
                        for k in self.ruleNameInfo! {
                            tmp.append(k.toMap())
                        }
                        map["RuleNameInfo"] = tmp
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("RuleNameInfo") {
                        self.ruleNameInfo = dict["RuleNameInfo"] as! [ListSkillGroupConfigResponseBody.Data.SkillGroupConfig.RuleList.RuleNameInfo]
                    }
                }
            }
            public class SkillGroupScreens : Tea.TeaModel {
                public class SkillGroupScreen : Tea.TeaModel {
                    public var dataType: Int32?

                    public var name: String?

                    public var symbol: Int32?

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
                        if self.dataType != nil {
                            map["DataType"] = self.dataType!
                        }
                        if self.name != nil {
                            map["Name"] = self.name!
                        }
                        if self.symbol != nil {
                            map["Symbol"] = self.symbol!
                        }
                        if self.value != nil {
                            map["Value"] = self.value!
                        }
                        return map
                    }

                    public override func fromMap(_ dict: [String: Any]) -> Void {
                        if dict.keys.contains("DataType") {
                            self.dataType = dict["DataType"] as! Int32
                        }
                        if dict.keys.contains("Name") {
                            self.name = dict["Name"] as! String
                        }
                        if dict.keys.contains("Symbol") {
                            self.symbol = dict["Symbol"] as! Int32
                        }
                        if dict.keys.contains("Value") {
                            self.value = dict["Value"] as! String
                        }
                    }
                }
                public var skillGroupScreen: [ListSkillGroupConfigResponseBody.Data.SkillGroupConfig.SkillGroupScreens.SkillGroupScreen]?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.skillGroupScreen != nil {
                        var tmp : [Any] = []
                        for k in self.skillGroupScreen! {
                            tmp.append(k.toMap())
                        }
                        map["SkillGroupScreen"] = tmp
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("SkillGroupScreen") {
                        self.skillGroupScreen = dict["SkillGroupScreen"] as! [ListSkillGroupConfigResponseBody.Data.SkillGroupConfig.SkillGroupScreens.SkillGroupScreen]
                    }
                }
            }
            public var allContentQualityCheck: Int32?

            public var allRids: String?

            public var allRuleList: ListSkillGroupConfigResponseBody.Data.SkillGroupConfig.AllRuleList?

            public var createTime: String?

            public var id: Int64?

            public var instanceId: String?

            public var modelId: Int64?

            public var modelName: String?

            public var name: String?

            public var qualityCheckType: Int32?

            public var rid: String?

            public var ruleList: ListSkillGroupConfigResponseBody.Data.SkillGroupConfig.RuleList?

            public var screenSwitch: Bool?

            public var skillGroupFrom: Int32?

            public var skillGroupId: String?

            public var skillGroupName: String?

            public var skillGroupScreens: ListSkillGroupConfigResponseBody.Data.SkillGroupConfig.SkillGroupScreens?

            public var status: Int32?

            public var type: Int32?

            public var updateTime: String?

            public var vocabId: Int64?

            public var vocabName: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
                try self.allRuleList?.validate()
                try self.ruleList?.validate()
                try self.skillGroupScreens?.validate()
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.allContentQualityCheck != nil {
                    map["AllContentQualityCheck"] = self.allContentQualityCheck!
                }
                if self.allRids != nil {
                    map["AllRids"] = self.allRids!
                }
                if self.allRuleList != nil {
                    map["AllRuleList"] = self.allRuleList?.toMap()
                }
                if self.createTime != nil {
                    map["CreateTime"] = self.createTime!
                }
                if self.id != nil {
                    map["Id"] = self.id!
                }
                if self.instanceId != nil {
                    map["InstanceId"] = self.instanceId!
                }
                if self.modelId != nil {
                    map["ModelId"] = self.modelId!
                }
                if self.modelName != nil {
                    map["ModelName"] = self.modelName!
                }
                if self.name != nil {
                    map["Name"] = self.name!
                }
                if self.qualityCheckType != nil {
                    map["QualityCheckType"] = self.qualityCheckType!
                }
                if self.rid != nil {
                    map["Rid"] = self.rid!
                }
                if self.ruleList != nil {
                    map["RuleList"] = self.ruleList?.toMap()
                }
                if self.screenSwitch != nil {
                    map["ScreenSwitch"] = self.screenSwitch!
                }
                if self.skillGroupFrom != nil {
                    map["SkillGroupFrom"] = self.skillGroupFrom!
                }
                if self.skillGroupId != nil {
                    map["SkillGroupId"] = self.skillGroupId!
                }
                if self.skillGroupName != nil {
                    map["SkillGroupName"] = self.skillGroupName!
                }
                if self.skillGroupScreens != nil {
                    map["SkillGroupScreens"] = self.skillGroupScreens?.toMap()
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
                if self.vocabId != nil {
                    map["VocabId"] = self.vocabId!
                }
                if self.vocabName != nil {
                    map["VocabName"] = self.vocabName!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("AllContentQualityCheck") {
                    self.allContentQualityCheck = dict["AllContentQualityCheck"] as! Int32
                }
                if dict.keys.contains("AllRids") {
                    self.allRids = dict["AllRids"] as! String
                }
                if dict.keys.contains("AllRuleList") {
                    var model = ListSkillGroupConfigResponseBody.Data.SkillGroupConfig.AllRuleList()
                    model.fromMap(dict["AllRuleList"] as! [String: Any])
                    self.allRuleList = model
                }
                if dict.keys.contains("CreateTime") {
                    self.createTime = dict["CreateTime"] as! String
                }
                if dict.keys.contains("Id") {
                    self.id = dict["Id"] as! Int64
                }
                if dict.keys.contains("InstanceId") {
                    self.instanceId = dict["InstanceId"] as! String
                }
                if dict.keys.contains("ModelId") {
                    self.modelId = dict["ModelId"] as! Int64
                }
                if dict.keys.contains("ModelName") {
                    self.modelName = dict["ModelName"] as! String
                }
                if dict.keys.contains("Name") {
                    self.name = dict["Name"] as! String
                }
                if dict.keys.contains("QualityCheckType") {
                    self.qualityCheckType = dict["QualityCheckType"] as! Int32
                }
                if dict.keys.contains("Rid") {
                    self.rid = dict["Rid"] as! String
                }
                if dict.keys.contains("RuleList") {
                    var model = ListSkillGroupConfigResponseBody.Data.SkillGroupConfig.RuleList()
                    model.fromMap(dict["RuleList"] as! [String: Any])
                    self.ruleList = model
                }
                if dict.keys.contains("ScreenSwitch") {
                    self.screenSwitch = dict["ScreenSwitch"] as! Bool
                }
                if dict.keys.contains("SkillGroupFrom") {
                    self.skillGroupFrom = dict["SkillGroupFrom"] as! Int32
                }
                if dict.keys.contains("SkillGroupId") {
                    self.skillGroupId = dict["SkillGroupId"] as! String
                }
                if dict.keys.contains("SkillGroupName") {
                    self.skillGroupName = dict["SkillGroupName"] as! String
                }
                if dict.keys.contains("SkillGroupScreens") {
                    var model = ListSkillGroupConfigResponseBody.Data.SkillGroupConfig.SkillGroupScreens()
                    model.fromMap(dict["SkillGroupScreens"] as! [String: Any])
                    self.skillGroupScreens = model
                }
                if dict.keys.contains("Status") {
                    self.status = dict["Status"] as! Int32
                }
                if dict.keys.contains("Type") {
                    self.type = dict["Type"] as! Int32
                }
                if dict.keys.contains("UpdateTime") {
                    self.updateTime = dict["UpdateTime"] as! String
                }
                if dict.keys.contains("VocabId") {
                    self.vocabId = dict["VocabId"] as! Int64
                }
                if dict.keys.contains("VocabName") {
                    self.vocabName = dict["VocabName"] as! String
                }
            }
        }
        public var skillGroupConfig: [ListSkillGroupConfigResponseBody.Data.SkillGroupConfig]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.skillGroupConfig != nil {
                var tmp : [Any] = []
                for k in self.skillGroupConfig! {
                    tmp.append(k.toMap())
                }
                map["SkillGroupConfig"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("SkillGroupConfig") {
                self.skillGroupConfig = dict["SkillGroupConfig"] as! [ListSkillGroupConfigResponseBody.Data.SkillGroupConfig]
            }
        }
    }
    public var code: String?

    public var data: ListSkillGroupConfigResponseBody.Data?

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
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Data") {
            var model = ListSkillGroupConfigResponseBody.Data()
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

public class ListSkillGroupConfigResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListSkillGroupConfigResponseBody?

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
            var model = ListSkillGroupConfigResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListTaskAssignRulesRequest : Tea.TeaModel {
    public var jsonStr: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.jsonStr != nil {
            map["JsonStr"] = self.jsonStr!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("JsonStr") {
            self.jsonStr = dict["JsonStr"] as! String
        }
    }
}

public class ListTaskAssignRulesResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class TaskAssignRuleInfo : Tea.TeaModel {
            public class Agents : Tea.TeaModel {
                public class Agent : Tea.TeaModel {
                    public var agentId: String?

                    public var agentName: String?

                    public override init() {
                        super.init()
                    }

                    public init(_ dict: [String: Any]) {
                        super.init()
                        self.fromMap(dict)
                    }

                    public override func validate() throws -> Void {
                    }

                    public override func toMap() -> [String : Any] {
                        var map = super.toMap()
                        if self.agentId != nil {
                            map["AgentId"] = self.agentId!
                        }
                        if self.agentName != nil {
                            map["AgentName"] = self.agentName!
                        }
                        return map
                    }

                    public override func fromMap(_ dict: [String: Any]) -> Void {
                        if dict.keys.contains("AgentId") {
                            self.agentId = dict["AgentId"] as! String
                        }
                        if dict.keys.contains("AgentName") {
                            self.agentName = dict["AgentName"] as! String
                        }
                    }
                }
                public var agent: [ListTaskAssignRulesResponseBody.Data.TaskAssignRuleInfo.Agents.Agent]?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.agent != nil {
                        var tmp : [Any] = []
                        for k in self.agent! {
                            tmp.append(k.toMap())
                        }
                        map["Agent"] = tmp
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("Agent") {
                        self.agent = dict["Agent"] as! [ListTaskAssignRulesResponseBody.Data.TaskAssignRuleInfo.Agents.Agent]
                    }
                }
            }
            public class Reviewers : Tea.TeaModel {
                public class Reviewer : Tea.TeaModel {
                    public var reviewerId: String?

                    public var reviewerName: String?

                    public override init() {
                        super.init()
                    }

                    public init(_ dict: [String: Any]) {
                        super.init()
                        self.fromMap(dict)
                    }

                    public override func validate() throws -> Void {
                    }

                    public override func toMap() -> [String : Any] {
                        var map = super.toMap()
                        if self.reviewerId != nil {
                            map["ReviewerId"] = self.reviewerId!
                        }
                        if self.reviewerName != nil {
                            map["ReviewerName"] = self.reviewerName!
                        }
                        return map
                    }

                    public override func fromMap(_ dict: [String: Any]) -> Void {
                        if dict.keys.contains("ReviewerId") {
                            self.reviewerId = dict["ReviewerId"] as! String
                        }
                        if dict.keys.contains("ReviewerName") {
                            self.reviewerName = dict["ReviewerName"] as! String
                        }
                    }
                }
                public var reviewer: [ListTaskAssignRulesResponseBody.Data.TaskAssignRuleInfo.Reviewers.Reviewer]?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.reviewer != nil {
                        var tmp : [Any] = []
                        for k in self.reviewer! {
                            tmp.append(k.toMap())
                        }
                        map["Reviewer"] = tmp
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("Reviewer") {
                        self.reviewer = dict["Reviewer"] as! [ListTaskAssignRulesResponseBody.Data.TaskAssignRuleInfo.Reviewers.Reviewer]
                    }
                }
            }
            public class Rules : Tea.TeaModel {
                public class RuleBasicInfo : Tea.TeaModel {
                    public var name: String?

                    public var rid: String?

                    public override init() {
                        super.init()
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
                        if self.rid != nil {
                            map["Rid"] = self.rid!
                        }
                        return map
                    }

                    public override func fromMap(_ dict: [String: Any]) -> Void {
                        if dict.keys.contains("Name") {
                            self.name = dict["Name"] as! String
                        }
                        if dict.keys.contains("Rid") {
                            self.rid = dict["Rid"] as! String
                        }
                    }
                }
                public var ruleBasicInfo: [ListTaskAssignRulesResponseBody.Data.TaskAssignRuleInfo.Rules.RuleBasicInfo]?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.ruleBasicInfo != nil {
                        var tmp : [Any] = []
                        for k in self.ruleBasicInfo! {
                            tmp.append(k.toMap())
                        }
                        map["RuleBasicInfo"] = tmp
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("RuleBasicInfo") {
                        self.ruleBasicInfo = dict["RuleBasicInfo"] as! [ListTaskAssignRulesResponseBody.Data.TaskAssignRuleInfo.Rules.RuleBasicInfo]
                    }
                }
            }
            public class SamplingMode : Tea.TeaModel {
                public class SamplingModeAgents : Tea.TeaModel {
                    public class SamplingModeAgent : Tea.TeaModel {
                        public var agentId: String?

                        public var agentName: String?

                        public override init() {
                            super.init()
                        }

                        public init(_ dict: [String: Any]) {
                            super.init()
                            self.fromMap(dict)
                        }

                        public override func validate() throws -> Void {
                        }

                        public override func toMap() -> [String : Any] {
                            var map = super.toMap()
                            if self.agentId != nil {
                                map["AgentId"] = self.agentId!
                            }
                            if self.agentName != nil {
                                map["AgentName"] = self.agentName!
                            }
                            return map
                        }

                        public override func fromMap(_ dict: [String: Any]) -> Void {
                            if dict.keys.contains("AgentId") {
                                self.agentId = dict["AgentId"] as! String
                            }
                            if dict.keys.contains("AgentName") {
                                self.agentName = dict["AgentName"] as! String
                            }
                        }
                    }
                    public var samplingModeAgent: [ListTaskAssignRulesResponseBody.Data.TaskAssignRuleInfo.SamplingMode.SamplingModeAgents.SamplingModeAgent]?

                    public override init() {
                        super.init()
                    }

                    public init(_ dict: [String: Any]) {
                        super.init()
                        self.fromMap(dict)
                    }

                    public override func validate() throws -> Void {
                    }

                    public override func toMap() -> [String : Any] {
                        var map = super.toMap()
                        if self.samplingModeAgent != nil {
                            var tmp : [Any] = []
                            for k in self.samplingModeAgent! {
                                tmp.append(k.toMap())
                            }
                            map["SamplingModeAgent"] = tmp
                        }
                        return map
                    }

                    public override func fromMap(_ dict: [String: Any]) -> Void {
                        if dict.keys.contains("SamplingModeAgent") {
                            self.samplingModeAgent = dict["SamplingModeAgent"] as! [ListTaskAssignRulesResponseBody.Data.TaskAssignRuleInfo.SamplingMode.SamplingModeAgents.SamplingModeAgent]
                        }
                    }
                }
                public var anyNumberOfDraws: Int32?

                public var designated: Bool?

                public var dimension: Int32?

                public var limit: Int32?

                public var numberOfDraws: Int32?

                public var proportion: Double?

                public var randomInspectionNumber: Int32?

                public var samplingModeAgents: ListTaskAssignRulesResponseBody.Data.TaskAssignRuleInfo.SamplingMode.SamplingModeAgents?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                    try self.samplingModeAgents?.validate()
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.anyNumberOfDraws != nil {
                        map["AnyNumberOfDraws"] = self.anyNumberOfDraws!
                    }
                    if self.designated != nil {
                        map["Designated"] = self.designated!
                    }
                    if self.dimension != nil {
                        map["Dimension"] = self.dimension!
                    }
                    if self.limit != nil {
                        map["Limit"] = self.limit!
                    }
                    if self.numberOfDraws != nil {
                        map["NumberOfDraws"] = self.numberOfDraws!
                    }
                    if self.proportion != nil {
                        map["Proportion"] = self.proportion!
                    }
                    if self.randomInspectionNumber != nil {
                        map["RandomInspectionNumber"] = self.randomInspectionNumber!
                    }
                    if self.samplingModeAgents != nil {
                        map["SamplingModeAgents"] = self.samplingModeAgents?.toMap()
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("AnyNumberOfDraws") {
                        self.anyNumberOfDraws = dict["AnyNumberOfDraws"] as! Int32
                    }
                    if dict.keys.contains("Designated") {
                        self.designated = dict["Designated"] as! Bool
                    }
                    if dict.keys.contains("Dimension") {
                        self.dimension = dict["Dimension"] as! Int32
                    }
                    if dict.keys.contains("Limit") {
                        self.limit = dict["Limit"] as! Int32
                    }
                    if dict.keys.contains("NumberOfDraws") {
                        self.numberOfDraws = dict["NumberOfDraws"] as! Int32
                    }
                    if dict.keys.contains("Proportion") {
                        self.proportion = dict["Proportion"] as! Double
                    }
                    if dict.keys.contains("RandomInspectionNumber") {
                        self.randomInspectionNumber = dict["RandomInspectionNumber"] as! Int32
                    }
                    if dict.keys.contains("SamplingModeAgents") {
                        var model = ListTaskAssignRulesResponseBody.Data.TaskAssignRuleInfo.SamplingMode.SamplingModeAgents()
                        model.fromMap(dict["SamplingModeAgents"] as! [String: Any])
                        self.samplingModeAgents = model
                    }
                }
            }
            public class SkillGroups : Tea.TeaModel {
                public class SkillGroup : Tea.TeaModel {
                    public var skillId: String?

                    public var skillName: String?

                    public override init() {
                        super.init()
                    }

                    public init(_ dict: [String: Any]) {
                        super.init()
                        self.fromMap(dict)
                    }

                    public override func validate() throws -> Void {
                    }

                    public override func toMap() -> [String : Any] {
                        var map = super.toMap()
                        if self.skillId != nil {
                            map["SkillId"] = self.skillId!
                        }
                        if self.skillName != nil {
                            map["SkillName"] = self.skillName!
                        }
                        return map
                    }

                    public override func fromMap(_ dict: [String: Any]) -> Void {
                        if dict.keys.contains("SkillId") {
                            self.skillId = dict["SkillId"] as! String
                        }
                        if dict.keys.contains("SkillName") {
                            self.skillName = dict["SkillName"] as! String
                        }
                    }
                }
                public var skillGroup: [ListTaskAssignRulesResponseBody.Data.TaskAssignRuleInfo.SkillGroups.SkillGroup]?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.skillGroup != nil {
                        var tmp : [Any] = []
                        for k in self.skillGroup! {
                            tmp.append(k.toMap())
                        }
                        map["SkillGroup"] = tmp
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("SkillGroup") {
                        self.skillGroup = dict["SkillGroup"] as! [ListTaskAssignRulesResponseBody.Data.TaskAssignRuleInfo.SkillGroups.SkillGroup]
                    }
                }
            }
            public var agents: ListTaskAssignRulesResponseBody.Data.TaskAssignRuleInfo.Agents?

            public var agentsStr: String?

            public var assignmentType: Int32?

            public var callTimeEnd: Int64?

            public var callTimeStart: Int64?

            public var callType: Int32?

            public var createTime: String?

            public var durationMax: Int32?

            public var durationMin: Int32?

            public var enabled: Int32?

            public var priority: Int32?

            public var reviewers: ListTaskAssignRulesResponseBody.Data.TaskAssignRuleInfo.Reviewers?

            public var ruleId: Int64?

            public var ruleName: String?

            public var rules: ListTaskAssignRulesResponseBody.Data.TaskAssignRuleInfo.Rules?

            public var samplingMode: ListTaskAssignRulesResponseBody.Data.TaskAssignRuleInfo.SamplingMode?

            public var skillGroups: ListTaskAssignRulesResponseBody.Data.TaskAssignRuleInfo.SkillGroups?

            public var skillGroupsStr: String?

            public var updateTime: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
                try self.agents?.validate()
                try self.reviewers?.validate()
                try self.rules?.validate()
                try self.samplingMode?.validate()
                try self.skillGroups?.validate()
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.agents != nil {
                    map["Agents"] = self.agents?.toMap()
                }
                if self.agentsStr != nil {
                    map["AgentsStr"] = self.agentsStr!
                }
                if self.assignmentType != nil {
                    map["AssignmentType"] = self.assignmentType!
                }
                if self.callTimeEnd != nil {
                    map["CallTimeEnd"] = self.callTimeEnd!
                }
                if self.callTimeStart != nil {
                    map["CallTimeStart"] = self.callTimeStart!
                }
                if self.callType != nil {
                    map["CallType"] = self.callType!
                }
                if self.createTime != nil {
                    map["CreateTime"] = self.createTime!
                }
                if self.durationMax != nil {
                    map["DurationMax"] = self.durationMax!
                }
                if self.durationMin != nil {
                    map["DurationMin"] = self.durationMin!
                }
                if self.enabled != nil {
                    map["Enabled"] = self.enabled!
                }
                if self.priority != nil {
                    map["Priority"] = self.priority!
                }
                if self.reviewers != nil {
                    map["Reviewers"] = self.reviewers?.toMap()
                }
                if self.ruleId != nil {
                    map["RuleId"] = self.ruleId!
                }
                if self.ruleName != nil {
                    map["RuleName"] = self.ruleName!
                }
                if self.rules != nil {
                    map["Rules"] = self.rules?.toMap()
                }
                if self.samplingMode != nil {
                    map["SamplingMode"] = self.samplingMode?.toMap()
                }
                if self.skillGroups != nil {
                    map["SkillGroups"] = self.skillGroups?.toMap()
                }
                if self.skillGroupsStr != nil {
                    map["SkillGroupsStr"] = self.skillGroupsStr!
                }
                if self.updateTime != nil {
                    map["UpdateTime"] = self.updateTime!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("Agents") {
                    var model = ListTaskAssignRulesResponseBody.Data.TaskAssignRuleInfo.Agents()
                    model.fromMap(dict["Agents"] as! [String: Any])
                    self.agents = model
                }
                if dict.keys.contains("AgentsStr") {
                    self.agentsStr = dict["AgentsStr"] as! String
                }
                if dict.keys.contains("AssignmentType") {
                    self.assignmentType = dict["AssignmentType"] as! Int32
                }
                if dict.keys.contains("CallTimeEnd") {
                    self.callTimeEnd = dict["CallTimeEnd"] as! Int64
                }
                if dict.keys.contains("CallTimeStart") {
                    self.callTimeStart = dict["CallTimeStart"] as! Int64
                }
                if dict.keys.contains("CallType") {
                    self.callType = dict["CallType"] as! Int32
                }
                if dict.keys.contains("CreateTime") {
                    self.createTime = dict["CreateTime"] as! String
                }
                if dict.keys.contains("DurationMax") {
                    self.durationMax = dict["DurationMax"] as! Int32
                }
                if dict.keys.contains("DurationMin") {
                    self.durationMin = dict["DurationMin"] as! Int32
                }
                if dict.keys.contains("Enabled") {
                    self.enabled = dict["Enabled"] as! Int32
                }
                if dict.keys.contains("Priority") {
                    self.priority = dict["Priority"] as! Int32
                }
                if dict.keys.contains("Reviewers") {
                    var model = ListTaskAssignRulesResponseBody.Data.TaskAssignRuleInfo.Reviewers()
                    model.fromMap(dict["Reviewers"] as! [String: Any])
                    self.reviewers = model
                }
                if dict.keys.contains("RuleId") {
                    self.ruleId = dict["RuleId"] as! Int64
                }
                if dict.keys.contains("RuleName") {
                    self.ruleName = dict["RuleName"] as! String
                }
                if dict.keys.contains("Rules") {
                    var model = ListTaskAssignRulesResponseBody.Data.TaskAssignRuleInfo.Rules()
                    model.fromMap(dict["Rules"] as! [String: Any])
                    self.rules = model
                }
                if dict.keys.contains("SamplingMode") {
                    var model = ListTaskAssignRulesResponseBody.Data.TaskAssignRuleInfo.SamplingMode()
                    model.fromMap(dict["SamplingMode"] as! [String: Any])
                    self.samplingMode = model
                }
                if dict.keys.contains("SkillGroups") {
                    var model = ListTaskAssignRulesResponseBody.Data.TaskAssignRuleInfo.SkillGroups()
                    model.fromMap(dict["SkillGroups"] as! [String: Any])
                    self.skillGroups = model
                }
                if dict.keys.contains("SkillGroupsStr") {
                    self.skillGroupsStr = dict["SkillGroupsStr"] as! String
                }
                if dict.keys.contains("UpdateTime") {
                    self.updateTime = dict["UpdateTime"] as! String
                }
            }
        }
        public var taskAssignRuleInfo: [ListTaskAssignRulesResponseBody.Data.TaskAssignRuleInfo]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.taskAssignRuleInfo != nil {
                var tmp : [Any] = []
                for k in self.taskAssignRuleInfo! {
                    tmp.append(k.toMap())
                }
                map["TaskAssignRuleInfo"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("TaskAssignRuleInfo") {
                self.taskAssignRuleInfo = dict["TaskAssignRuleInfo"] as! [ListTaskAssignRulesResponseBody.Data.TaskAssignRuleInfo]
            }
        }
    }
    public var code: String?

    public var count: Int32?

    public var data: ListTaskAssignRulesResponseBody.Data?

    public var message: String?

    public var pageNumber: Int32?

    public var pageSize: Int32?

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
        if self.count != nil {
            map["Count"] = self.count!
        }
        if self.data != nil {
            map["Data"] = self.data?.toMap()
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
        if self.success != nil {
            map["Success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Count") {
            self.count = dict["Count"] as! Int32
        }
        if dict.keys.contains("Data") {
            var model = ListTaskAssignRulesResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
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
        if dict.keys.contains("Success") {
            self.success = dict["Success"] as! Bool
        }
    }
}

public class ListTaskAssignRulesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListTaskAssignRulesResponseBody?

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
            var model = ListTaskAssignRulesResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListUsersRequest : Tea.TeaModel {
    public var jsonStr: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.jsonStr != nil {
            map["JsonStr"] = self.jsonStr!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("JsonStr") {
            self.jsonStr = dict["JsonStr"] as! String
        }
    }
}

public class ListUsersResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class User : Tea.TeaModel {
            public var aliUid: String?

            public var createTime: String?

            public var description_: String?

            public var displayName: String?

            public var id: Int64?

            public var loginUserType: Int32?

            public var roleName: String?

            public var updateTime: String?

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
                if self.aliUid != nil {
                    map["AliUid"] = self.aliUid!
                }
                if self.createTime != nil {
                    map["CreateTime"] = self.createTime!
                }
                if self.description_ != nil {
                    map["Description"] = self.description_!
                }
                if self.displayName != nil {
                    map["DisplayName"] = self.displayName!
                }
                if self.id != nil {
                    map["Id"] = self.id!
                }
                if self.loginUserType != nil {
                    map["LoginUserType"] = self.loginUserType!
                }
                if self.roleName != nil {
                    map["RoleName"] = self.roleName!
                }
                if self.updateTime != nil {
                    map["UpdateTime"] = self.updateTime!
                }
                if self.userName != nil {
                    map["UserName"] = self.userName!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("AliUid") {
                    self.aliUid = dict["AliUid"] as! String
                }
                if dict.keys.contains("CreateTime") {
                    self.createTime = dict["CreateTime"] as! String
                }
                if dict.keys.contains("Description") {
                    self.description_ = dict["Description"] as! String
                }
                if dict.keys.contains("DisplayName") {
                    self.displayName = dict["DisplayName"] as! String
                }
                if dict.keys.contains("Id") {
                    self.id = dict["Id"] as! Int64
                }
                if dict.keys.contains("LoginUserType") {
                    self.loginUserType = dict["LoginUserType"] as! Int32
                }
                if dict.keys.contains("RoleName") {
                    self.roleName = dict["RoleName"] as! String
                }
                if dict.keys.contains("UpdateTime") {
                    self.updateTime = dict["UpdateTime"] as! String
                }
                if dict.keys.contains("UserName") {
                    self.userName = dict["UserName"] as! String
                }
            }
        }
        public var user: [ListUsersResponseBody.Data.User]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.user != nil {
                var tmp : [Any] = []
                for k in self.user! {
                    tmp.append(k.toMap())
                }
                map["User"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("User") {
                self.user = dict["User"] as! [ListUsersResponseBody.Data.User]
            }
        }
    }
    public var code: String?

    public var count: Int32?

    public var data: ListUsersResponseBody.Data?

    public var message: String?

    public var pageNumber: Int32?

    public var pageSize: Int32?

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
        if self.count != nil {
            map["Count"] = self.count!
        }
        if self.data != nil {
            map["Data"] = self.data?.toMap()
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
        if self.success != nil {
            map["Success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Count") {
            self.count = dict["Count"] as! Int32
        }
        if dict.keys.contains("Data") {
            var model = ListUsersResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
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
        if dict.keys.contains("Success") {
            self.success = dict["Success"] as! Bool
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
            var model = ListUsersResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListWarningConfigRequest : Tea.TeaModel {
    public var jsonStr: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.jsonStr != nil {
            map["JsonStr"] = self.jsonStr!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("JsonStr") {
            self.jsonStr = dict["JsonStr"] as! String
        }
    }
}

public class ListWarningConfigResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class WarningConfigInfo : Tea.TeaModel {
            public class Channels : Tea.TeaModel {
                public class Channel : Tea.TeaModel {
                    public var type: Int32?

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
                        if self.type != nil {
                            map["Type"] = self.type!
                        }
                        if self.url != nil {
                            map["Url"] = self.url!
                        }
                        return map
                    }

                    public override func fromMap(_ dict: [String: Any]) -> Void {
                        if dict.keys.contains("Type") {
                            self.type = dict["Type"] as! Int32
                        }
                        if dict.keys.contains("Url") {
                            self.url = dict["Url"] as! String
                        }
                    }
                }
                public var channel: [ListWarningConfigResponseBody.Data.WarningConfigInfo.Channels.Channel]?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.channel != nil {
                        var tmp : [Any] = []
                        for k in self.channel! {
                            tmp.append(k.toMap())
                        }
                        map["Channel"] = tmp
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("Channel") {
                        self.channel = dict["Channel"] as! [ListWarningConfigResponseBody.Data.WarningConfigInfo.Channels.Channel]
                    }
                }
            }
            public class RidList : Tea.TeaModel {
                public var ridList: [String]?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.ridList != nil {
                        map["RidList"] = self.ridList!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("RidList") {
                        self.ridList = dict["RidList"] as! [String]
                    }
                }
            }
            public class RuleList : Tea.TeaModel {
                public class WarningRule : Tea.TeaModel {
                    public var rid: Int64?

                    public var ruleName: String?

                    public override init() {
                        super.init()
                    }

                    public init(_ dict: [String: Any]) {
                        super.init()
                        self.fromMap(dict)
                    }

                    public override func validate() throws -> Void {
                    }

                    public override func toMap() -> [String : Any] {
                        var map = super.toMap()
                        if self.rid != nil {
                            map["Rid"] = self.rid!
                        }
                        if self.ruleName != nil {
                            map["RuleName"] = self.ruleName!
                        }
                        return map
                    }

                    public override func fromMap(_ dict: [String: Any]) -> Void {
                        if dict.keys.contains("Rid") {
                            self.rid = dict["Rid"] as! Int64
                        }
                        if dict.keys.contains("RuleName") {
                            self.ruleName = dict["RuleName"] as! String
                        }
                    }
                }
                public var warningRule: [ListWarningConfigResponseBody.Data.WarningConfigInfo.RuleList.WarningRule]?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.warningRule != nil {
                        var tmp : [Any] = []
                        for k in self.warningRule! {
                            tmp.append(k.toMap())
                        }
                        map["WarningRule"] = tmp
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("WarningRule") {
                        self.warningRule = dict["WarningRule"] as! [ListWarningConfigResponseBody.Data.WarningConfigInfo.RuleList.WarningRule]
                    }
                }
            }
            public var channels: ListWarningConfigResponseBody.Data.WarningConfigInfo.Channels?

            public var configId: Int64?

            public var configName: String?

            public var createTime: String?

            public var ridList: ListWarningConfigResponseBody.Data.WarningConfigInfo.RidList?

            public var ruleList: ListWarningConfigResponseBody.Data.WarningConfigInfo.RuleList?

            public var status: Int32?

            public var updateTime: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
                try self.channels?.validate()
                try self.ridList?.validate()
                try self.ruleList?.validate()
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.channels != nil {
                    map["Channels"] = self.channels?.toMap()
                }
                if self.configId != nil {
                    map["ConfigId"] = self.configId!
                }
                if self.configName != nil {
                    map["ConfigName"] = self.configName!
                }
                if self.createTime != nil {
                    map["CreateTime"] = self.createTime!
                }
                if self.ridList != nil {
                    map["RidList"] = self.ridList?.toMap()
                }
                if self.ruleList != nil {
                    map["RuleList"] = self.ruleList?.toMap()
                }
                if self.status != nil {
                    map["Status"] = self.status!
                }
                if self.updateTime != nil {
                    map["UpdateTime"] = self.updateTime!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("Channels") {
                    var model = ListWarningConfigResponseBody.Data.WarningConfigInfo.Channels()
                    model.fromMap(dict["Channels"] as! [String: Any])
                    self.channels = model
                }
                if dict.keys.contains("ConfigId") {
                    self.configId = dict["ConfigId"] as! Int64
                }
                if dict.keys.contains("ConfigName") {
                    self.configName = dict["ConfigName"] as! String
                }
                if dict.keys.contains("CreateTime") {
                    self.createTime = dict["CreateTime"] as! String
                }
                if dict.keys.contains("RidList") {
                    var model = ListWarningConfigResponseBody.Data.WarningConfigInfo.RidList()
                    model.fromMap(dict["RidList"] as! [String: Any])
                    self.ridList = model
                }
                if dict.keys.contains("RuleList") {
                    var model = ListWarningConfigResponseBody.Data.WarningConfigInfo.RuleList()
                    model.fromMap(dict["RuleList"] as! [String: Any])
                    self.ruleList = model
                }
                if dict.keys.contains("Status") {
                    self.status = dict["Status"] as! Int32
                }
                if dict.keys.contains("UpdateTime") {
                    self.updateTime = dict["UpdateTime"] as! String
                }
            }
        }
        public var warningConfigInfo: [ListWarningConfigResponseBody.Data.WarningConfigInfo]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.warningConfigInfo != nil {
                var tmp : [Any] = []
                for k in self.warningConfigInfo! {
                    tmp.append(k.toMap())
                }
                map["WarningConfigInfo"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("WarningConfigInfo") {
                self.warningConfigInfo = dict["WarningConfigInfo"] as! [ListWarningConfigResponseBody.Data.WarningConfigInfo]
            }
        }
    }
    public var code: String?

    public var data: ListWarningConfigResponseBody.Data?

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
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Data") {
            var model = ListWarningConfigResponseBody.Data()
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

public class ListWarningConfigResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListWarningConfigResponseBody?

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
            var model = ListWarningConfigResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListWarningStrategyConfigRequest : Tea.TeaModel {
    public var jsonStr: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.jsonStr != nil {
            map["JsonStr"] = self.jsonStr!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("JsonStr") {
            self.jsonStr = dict["JsonStr"] as! String
        }
    }
}

public class ListWarningStrategyConfigResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class Data : Tea.TeaModel {
            public var id: Int64?

            public var intervalTime: Int64?

            public var lambda: String?

            public var level: Int64?

            public var maxNumber: Int64?

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
                if self.intervalTime != nil {
                    map["IntervalTime"] = self.intervalTime!
                }
                if self.lambda != nil {
                    map["Lambda"] = self.lambda!
                }
                if self.level != nil {
                    map["Level"] = self.level!
                }
                if self.maxNumber != nil {
                    map["MaxNumber"] = self.maxNumber!
                }
                if self.name != nil {
                    map["Name"] = self.name!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("Id") {
                    self.id = dict["Id"] as! Int64
                }
                if dict.keys.contains("IntervalTime") {
                    self.intervalTime = dict["IntervalTime"] as! Int64
                }
                if dict.keys.contains("Lambda") {
                    self.lambda = dict["Lambda"] as! String
                }
                if dict.keys.contains("Level") {
                    self.level = dict["Level"] as! Int64
                }
                if dict.keys.contains("MaxNumber") {
                    self.maxNumber = dict["MaxNumber"] as! Int64
                }
                if dict.keys.contains("Name") {
                    self.name = dict["Name"] as! String
                }
            }
        }
        public var data: [ListWarningStrategyConfigResponseBody.Data.Data]?

        public override init() {
            super.init()
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
                map["data"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("data") {
                self.data = dict["data"] as! [ListWarningStrategyConfigResponseBody.Data.Data]
            }
        }
    }
    public var code: String?

    public var count: Int32?

    public var data: ListWarningStrategyConfigResponseBody.Data?

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
        if self.count != nil {
            map["Count"] = self.count!
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
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Count") {
            self.count = dict["Count"] as! Int32
        }
        if dict.keys.contains("Data") {
            var model = ListWarningStrategyConfigResponseBody.Data()
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

public class ListWarningStrategyConfigResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListWarningStrategyConfigResponseBody?

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
            var model = ListWarningStrategyConfigResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class RestartAsrTaskRequest : Tea.TeaModel {
    public var jsonStr: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.jsonStr != nil {
            map["JsonStr"] = self.jsonStr!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("JsonStr") {
            self.jsonStr = dict["JsonStr"] as! String
        }
    }
}

public class RestartAsrTaskResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class RestartResult : Tea.TeaModel {
            public var data: String?

            public var message: String?

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
                if self.data != nil {
                    map["Data"] = self.data!
                }
                if self.message != nil {
                    map["Message"] = self.message!
                }
                if self.success != nil {
                    map["Success"] = self.success!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("Data") {
                    self.data = dict["Data"] as! String
                }
                if dict.keys.contains("Message") {
                    self.message = dict["Message"] as! String
                }
                if dict.keys.contains("Success") {
                    self.success = dict["Success"] as! Bool
                }
            }
        }
        public var restartResult: [RestartAsrTaskResponseBody.Data.RestartResult]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.restartResult != nil {
                var tmp : [Any] = []
                for k in self.restartResult! {
                    tmp.append(k.toMap())
                }
                map["RestartResult"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("RestartResult") {
                self.restartResult = dict["RestartResult"] as! [RestartAsrTaskResponseBody.Data.RestartResult]
            }
        }
    }
    public var code: String?

    public var data: RestartAsrTaskResponseBody.Data?

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
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Data") {
            var model = RestartAsrTaskResponseBody.Data()
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

public class RestartAsrTaskResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: RestartAsrTaskResponseBody?

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
            var model = RestartAsrTaskResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class SaveConfigDataSetRequest : Tea.TeaModel {
    public var jsonStr: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.jsonStr != nil {
            map["JsonStr"] = self.jsonStr!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("JsonStr") {
            self.jsonStr = dict["JsonStr"] as! String
        }
    }
}

public class SaveConfigDataSetResponseBody : Tea.TeaModel {
    public var code: String?

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

public class SaveConfigDataSetResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: SaveConfigDataSetResponseBody?

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
            var model = SaveConfigDataSetResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class SubmitComplaintRequest : Tea.TeaModel {
    public var jsonStr: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.jsonStr != nil {
            map["JsonStr"] = self.jsonStr!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("JsonStr") {
            self.jsonStr = dict["JsonStr"] as! String
        }
    }
}

public class SubmitComplaintResponseBody : Tea.TeaModel {
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

public class SubmitComplaintResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: SubmitComplaintResponseBody?

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
            var model = SubmitComplaintResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class SubmitPrecisionTaskRequest : Tea.TeaModel {
    public var jsonStr: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.jsonStr != nil {
            map["JsonStr"] = self.jsonStr!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("JsonStr") {
            self.jsonStr = dict["JsonStr"] as! String
        }
    }
}

public class SubmitPrecisionTaskResponseBody : Tea.TeaModel {
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

public class SubmitPrecisionTaskResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: SubmitPrecisionTaskResponseBody?

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
            var model = SubmitPrecisionTaskResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class SubmitQualityCheckTaskRequest : Tea.TeaModel {
    public var jsonStr: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.jsonStr != nil {
            map["JsonStr"] = self.jsonStr!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("JsonStr") {
            self.jsonStr = dict["JsonStr"] as! String
        }
    }
}

public class SubmitQualityCheckTaskResponseBody : Tea.TeaModel {
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

public class SubmitQualityCheckTaskResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: SubmitQualityCheckTaskResponseBody?

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
            var model = SubmitQualityCheckTaskResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class SubmitReviewInfoRequest : Tea.TeaModel {
    public var jsonStr: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.jsonStr != nil {
            map["JsonStr"] = self.jsonStr!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("JsonStr") {
            self.jsonStr = dict["JsonStr"] as! String
        }
    }
}

public class SubmitReviewInfoResponseBody : Tea.TeaModel {
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

public class SubmitReviewInfoResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: SubmitReviewInfoResponseBody?

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
            var model = SubmitReviewInfoResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class SyncQualityCheckRequest : Tea.TeaModel {
    public var jsonStr: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.jsonStr != nil {
            map["JsonStr"] = self.jsonStr!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("JsonStr") {
            self.jsonStr = dict["JsonStr"] as! String
        }
    }
}

public class SyncQualityCheckResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class Rules : Tea.TeaModel {
            public class Hit : Tea.TeaModel {
                public class HitKeyWords : Tea.TeaModel {
                    public var cid: Int32?

                    public var from: Int32?

                    public var pid: Int32?

                    public var to: Int32?

                    public var val: String?

                    public override init() {
                        super.init()
                    }

                    public init(_ dict: [String: Any]) {
                        super.init()
                        self.fromMap(dict)
                    }

                    public override func validate() throws -> Void {
                    }

                    public override func toMap() -> [String : Any] {
                        var map = super.toMap()
                        if self.cid != nil {
                            map["Cid"] = self.cid!
                        }
                        if self.from != nil {
                            map["From"] = self.from!
                        }
                        if self.pid != nil {
                            map["Pid"] = self.pid!
                        }
                        if self.to != nil {
                            map["To"] = self.to!
                        }
                        if self.val != nil {
                            map["Val"] = self.val!
                        }
                        return map
                    }

                    public override func fromMap(_ dict: [String: Any]) -> Void {
                        if dict.keys.contains("Cid") {
                            self.cid = dict["Cid"] as! Int32
                        }
                        if dict.keys.contains("From") {
                            self.from = dict["From"] as! Int32
                        }
                        if dict.keys.contains("Pid") {
                            self.pid = dict["Pid"] as! Int32
                        }
                        if dict.keys.contains("To") {
                            self.to = dict["To"] as! Int32
                        }
                        if dict.keys.contains("Val") {
                            self.val = dict["Val"] as! String
                        }
                    }
                }
                public class Phrase : Tea.TeaModel {
                    public var begin: Int64?

                    public var emotionValue: Int32?

                    public var end: Int64?

                    public var identity: String?

                    public var role: String?

                    public var silenceDuration: Int32?

                    public var speechRate: Int32?

                    public var words: String?

                    public override init() {
                        super.init()
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
                        if self.emotionValue != nil {
                            map["EmotionValue"] = self.emotionValue!
                        }
                        if self.end != nil {
                            map["End"] = self.end!
                        }
                        if self.identity != nil {
                            map["Identity"] = self.identity!
                        }
                        if self.role != nil {
                            map["Role"] = self.role!
                        }
                        if self.silenceDuration != nil {
                            map["SilenceDuration"] = self.silenceDuration!
                        }
                        if self.speechRate != nil {
                            map["SpeechRate"] = self.speechRate!
                        }
                        if self.words != nil {
                            map["Words"] = self.words!
                        }
                        return map
                    }

                    public override func fromMap(_ dict: [String: Any]) -> Void {
                        if dict.keys.contains("Begin") {
                            self.begin = dict["Begin"] as! Int64
                        }
                        if dict.keys.contains("EmotionValue") {
                            self.emotionValue = dict["EmotionValue"] as! Int32
                        }
                        if dict.keys.contains("End") {
                            self.end = dict["End"] as! Int64
                        }
                        if dict.keys.contains("Identity") {
                            self.identity = dict["Identity"] as! String
                        }
                        if dict.keys.contains("Role") {
                            self.role = dict["Role"] as! String
                        }
                        if dict.keys.contains("SilenceDuration") {
                            self.silenceDuration = dict["SilenceDuration"] as! Int32
                        }
                        if dict.keys.contains("SpeechRate") {
                            self.speechRate = dict["SpeechRate"] as! Int32
                        }
                        if dict.keys.contains("Words") {
                            self.words = dict["Words"] as! String
                        }
                    }
                }
                public var hitKeyWords: [SyncQualityCheckResponseBody.Data.Rules.Hit.HitKeyWords]?

                public var phrase: SyncQualityCheckResponseBody.Data.Rules.Hit.Phrase?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                    try self.phrase?.validate()
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.hitKeyWords != nil {
                        var tmp : [Any] = []
                        for k in self.hitKeyWords! {
                            tmp.append(k.toMap())
                        }
                        map["HitKeyWords"] = tmp
                    }
                    if self.phrase != nil {
                        map["Phrase"] = self.phrase?.toMap()
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("HitKeyWords") {
                        self.hitKeyWords = dict["HitKeyWords"] as! [SyncQualityCheckResponseBody.Data.Rules.Hit.HitKeyWords]
                    }
                    if dict.keys.contains("Phrase") {
                        var model = SyncQualityCheckResponseBody.Data.Rules.Hit.Phrase()
                        model.fromMap(dict["Phrase"] as! [String: Any])
                        self.phrase = model
                    }
                }
            }
            public var hit: [SyncQualityCheckResponseBody.Data.Rules.Hit]?

            public var rid: String?

            public var ruleName: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.hit != nil {
                    var tmp : [Any] = []
                    for k in self.hit! {
                        tmp.append(k.toMap())
                    }
                    map["Hit"] = tmp
                }
                if self.rid != nil {
                    map["Rid"] = self.rid!
                }
                if self.ruleName != nil {
                    map["RuleName"] = self.ruleName!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("Hit") {
                    self.hit = dict["Hit"] as! [SyncQualityCheckResponseBody.Data.Rules.Hit]
                }
                if dict.keys.contains("Rid") {
                    self.rid = dict["Rid"] as! String
                }
                if dict.keys.contains("RuleName") {
                    self.ruleName = dict["RuleName"] as! String
                }
            }
        }
        public var beginTime: Int64?

        public var rules: [SyncQualityCheckResponseBody.Data.Rules]?

        public var score: Int32?

        public var taskId: String?

        public var tid: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.beginTime != nil {
                map["BeginTime"] = self.beginTime!
            }
            if self.rules != nil {
                var tmp : [Any] = []
                for k in self.rules! {
                    tmp.append(k.toMap())
                }
                map["Rules"] = tmp
            }
            if self.score != nil {
                map["Score"] = self.score!
            }
            if self.taskId != nil {
                map["TaskId"] = self.taskId!
            }
            if self.tid != nil {
                map["Tid"] = self.tid!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("BeginTime") {
                self.beginTime = dict["BeginTime"] as! Int64
            }
            if dict.keys.contains("Rules") {
                self.rules = dict["Rules"] as! [SyncQualityCheckResponseBody.Data.Rules]
            }
            if dict.keys.contains("Score") {
                self.score = dict["Score"] as! Int32
            }
            if dict.keys.contains("TaskId") {
                self.taskId = dict["TaskId"] as! String
            }
            if dict.keys.contains("Tid") {
                self.tid = dict["Tid"] as! String
            }
        }
    }
    public var code: String?

    public var data: SyncQualityCheckResponseBody.Data?

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
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Data") {
            var model = SyncQualityCheckResponseBody.Data()
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

public class SyncQualityCheckResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: SyncQualityCheckResponseBody?

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
            var model = SyncQualityCheckResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class UpdateAsrVocabRequest : Tea.TeaModel {
    public var jsonStr: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.jsonStr != nil {
            map["JsonStr"] = self.jsonStr!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("JsonStr") {
            self.jsonStr = dict["JsonStr"] as! String
        }
    }
}

public class UpdateAsrVocabResponseBody : Tea.TeaModel {
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

public class UpdateAsrVocabResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpdateAsrVocabResponseBody?

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
            var model = UpdateAsrVocabResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class UpdateQualityCheckDataRequest : Tea.TeaModel {
    public var jsonStr: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.jsonStr != nil {
            map["JsonStr"] = self.jsonStr!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("JsonStr") {
            self.jsonStr = dict["JsonStr"] as! String
        }
    }
}

public class UpdateQualityCheckDataResponseBody : Tea.TeaModel {
    public var code: String?

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

public class UpdateQualityCheckDataResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpdateQualityCheckDataResponseBody?

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
            var model = UpdateQualityCheckDataResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class UpdateRuleRequest : Tea.TeaModel {
    public var jsonStr: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.jsonStr != nil {
            map["JsonStr"] = self.jsonStr!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("JsonStr") {
            self.jsonStr = dict["JsonStr"] as! String
        }
    }
}

public class UpdateRuleResponseBody : Tea.TeaModel {
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

public class UpdateRuleResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpdateRuleResponseBody?

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
            var model = UpdateRuleResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class UpdateScoreForApiRequest : Tea.TeaModel {
    public var jsonStr: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.jsonStr != nil {
            map["JsonStr"] = self.jsonStr!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("JsonStr") {
            self.jsonStr = dict["JsonStr"] as! String
        }
    }
}

public class UpdateScoreForApiResponseBody : Tea.TeaModel {
    public var code: String?

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

public class UpdateScoreForApiResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpdateScoreForApiResponseBody?

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
            var model = UpdateScoreForApiResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class UpdateSkillGroupConfigRequest : Tea.TeaModel {
    public var jsonStr: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.jsonStr != nil {
            map["JsonStr"] = self.jsonStr!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("JsonStr") {
            self.jsonStr = dict["JsonStr"] as! String
        }
    }
}

public class UpdateSkillGroupConfigResponseBody : Tea.TeaModel {
    public var code: String?

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

public class UpdateSkillGroupConfigResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpdateSkillGroupConfigResponseBody?

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
            var model = UpdateSkillGroupConfigResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class UpdateSubScoreForApiRequest : Tea.TeaModel {
    public var jsonStr: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.jsonStr != nil {
            map["JsonStr"] = self.jsonStr!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("JsonStr") {
            self.jsonStr = dict["JsonStr"] as! String
        }
    }
}

public class UpdateSubScoreForApiResponseBody : Tea.TeaModel {
    public var code: String?

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

public class UpdateSubScoreForApiResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpdateSubScoreForApiResponseBody?

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
            var model = UpdateSubScoreForApiResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class UpdateSyncQualityCheckDataRequest : Tea.TeaModel {
    public var jsonStr: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.jsonStr != nil {
            map["JsonStr"] = self.jsonStr!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("JsonStr") {
            self.jsonStr = dict["JsonStr"] as! String
        }
    }
}

public class UpdateSyncQualityCheckDataResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var taskId: String?

        public var tid: String?

        public override init() {
            super.init()
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
            if self.tid != nil {
                map["Tid"] = self.tid!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("TaskId") {
                self.taskId = dict["TaskId"] as! String
            }
            if dict.keys.contains("Tid") {
                self.tid = dict["Tid"] as! String
            }
        }
    }
    public var code: String?

    public var data: UpdateSyncQualityCheckDataResponseBody.Data?

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
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Data") {
            var model = UpdateSyncQualityCheckDataResponseBody.Data()
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

public class UpdateSyncQualityCheckDataResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpdateSyncQualityCheckDataResponseBody?

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
            var model = UpdateSyncQualityCheckDataResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class UpdateTaskAssignRuleRequest : Tea.TeaModel {
    public var jsonStr: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.jsonStr != nil {
            map["JsonStr"] = self.jsonStr!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("JsonStr") {
            self.jsonStr = dict["JsonStr"] as! String
        }
    }
}

public class UpdateTaskAssignRuleResponseBody : Tea.TeaModel {
    public var code: String?

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

public class UpdateTaskAssignRuleResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpdateTaskAssignRuleResponseBody?

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
            var model = UpdateTaskAssignRuleResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class UpdateUserRequest : Tea.TeaModel {
    public var jsonStr: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.jsonStr != nil {
            map["JsonStr"] = self.jsonStr!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("JsonStr") {
            self.jsonStr = dict["JsonStr"] as! String
        }
    }
}

public class UpdateUserResponseBody : Tea.TeaModel {
    public var code: String?

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

public class UpdateUserResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpdateUserResponseBody?

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
            var model = UpdateUserResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class UpdateUserConfigRequest : Tea.TeaModel {
    public var jsonStr: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.jsonStr != nil {
            map["JsonStr"] = self.jsonStr!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("JsonStr") {
            self.jsonStr = dict["JsonStr"] as! String
        }
    }
}

public class UpdateUserConfigResponseBody : Tea.TeaModel {
    public var code: String?

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

public class UpdateUserConfigResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpdateUserConfigResponseBody?

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
            var model = UpdateUserConfigResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class UpdateWarningConfigRequest : Tea.TeaModel {
    public var jsonStr: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.jsonStr != nil {
            map["JsonStr"] = self.jsonStr!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("JsonStr") {
            self.jsonStr = dict["JsonStr"] as! String
        }
    }
}

public class UpdateWarningConfigResponseBody : Tea.TeaModel {
    public var code: String?

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

public class UpdateWarningConfigResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpdateWarningConfigResponseBody?

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
            var model = UpdateWarningConfigResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class UpdateWarningStrategyConfigRequest : Tea.TeaModel {
    public var jsonStr: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.jsonStr != nil {
            map["JsonStr"] = self.jsonStr!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("JsonStr") {
            self.jsonStr = dict["JsonStr"] as! String
        }
    }
}

public class UpdateWarningStrategyConfigResponseBody : Tea.TeaModel {
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

public class UpdateWarningStrategyConfigResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpdateWarningStrategyConfigResponseBody?

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
            var model = UpdateWarningStrategyConfigResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class UploadAudioDataRequest : Tea.TeaModel {
    public var jsonStr: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.jsonStr != nil {
            map["JsonStr"] = self.jsonStr!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("JsonStr") {
            self.jsonStr = dict["JsonStr"] as! String
        }
    }
}

public class UploadAudioDataResponseBody : Tea.TeaModel {
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

public class UploadAudioDataResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UploadAudioDataResponseBody?

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
            var model = UploadAudioDataResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class UploadDataRequest : Tea.TeaModel {
    public var jsonStr: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.jsonStr != nil {
            map["JsonStr"] = self.jsonStr!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("JsonStr") {
            self.jsonStr = dict["JsonStr"] as! String
        }
    }
}

public class UploadDataResponseBody : Tea.TeaModel {
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

public class UploadDataResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UploadDataResponseBody?

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
            var model = UploadDataResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class UploadDataSyncRequest : Tea.TeaModel {
    public var jsonStr: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.jsonStr != nil {
            map["JsonStr"] = self.jsonStr!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("JsonStr") {
            self.jsonStr = dict["JsonStr"] as! String
        }
    }
}

public class UploadDataSyncResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class ResultInfo : Tea.TeaModel {
            public class HandScoreIdList : Tea.TeaModel {
                public var handScoreIdList: [String]?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.handScoreIdList != nil {
                        map["HandScoreIdList"] = self.handScoreIdList!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("HandScoreIdList") {
                        self.handScoreIdList = dict["HandScoreIdList"] as! [String]
                    }
                }
            }
            public class Rules : Tea.TeaModel {
                public class RuleHitInfo : Tea.TeaModel {
                    public class ConditionInfo : Tea.TeaModel {
                        public class ConditionBasicInfo : Tea.TeaModel {
                            public var conditionInfoCid: String?

                            public override init() {
                                super.init()
                            }

                            public init(_ dict: [String: Any]) {
                                super.init()
                                self.fromMap(dict)
                            }

                            public override func validate() throws -> Void {
                            }

                            public override func toMap() -> [String : Any] {
                                var map = super.toMap()
                                if self.conditionInfoCid != nil {
                                    map["ConditionInfoCid"] = self.conditionInfoCid!
                                }
                                return map
                            }

                            public override func fromMap(_ dict: [String: Any]) -> Void {
                                if dict.keys.contains("ConditionInfoCid") {
                                    self.conditionInfoCid = dict["ConditionInfoCid"] as! String
                                }
                            }
                        }
                        public var conditionBasicInfo: [UploadDataSyncResponseBody.Data.ResultInfo.Rules.RuleHitInfo.ConditionInfo.ConditionBasicInfo]?

                        public override init() {
                            super.init()
                        }

                        public init(_ dict: [String: Any]) {
                            super.init()
                            self.fromMap(dict)
                        }

                        public override func validate() throws -> Void {
                        }

                        public override func toMap() -> [String : Any] {
                            var map = super.toMap()
                            if self.conditionBasicInfo != nil {
                                var tmp : [Any] = []
                                for k in self.conditionBasicInfo! {
                                    tmp.append(k.toMap())
                                }
                                map["ConditionBasicInfo"] = tmp
                            }
                            return map
                        }

                        public override func fromMap(_ dict: [String: Any]) -> Void {
                            if dict.keys.contains("ConditionBasicInfo") {
                                self.conditionBasicInfo = dict["ConditionBasicInfo"] as! [UploadDataSyncResponseBody.Data.ResultInfo.Rules.RuleHitInfo.ConditionInfo.ConditionBasicInfo]
                            }
                        }
                    }
                    public class Hit : Tea.TeaModel {
                        public class ConditionHitInfo : Tea.TeaModel {
                            public class HitCids : Tea.TeaModel {
                                public var cidItem: [String]?

                                public override init() {
                                    super.init()
                                }

                                public init(_ dict: [String: Any]) {
                                    super.init()
                                    self.fromMap(dict)
                                }

                                public override func validate() throws -> Void {
                                }

                                public override func toMap() -> [String : Any] {
                                    var map = super.toMap()
                                    if self.cidItem != nil {
                                        map["CidItem"] = self.cidItem!
                                    }
                                    return map
                                }

                                public override func fromMap(_ dict: [String: Any]) -> Void {
                                    if dict.keys.contains("CidItem") {
                                        self.cidItem = dict["CidItem"] as! [String]
                                    }
                                }
                            }
                            public class HitKeyWords : Tea.TeaModel {
                                public class HitKeyWord : Tea.TeaModel {
                                    public var from: Int32?

                                    public var pid: Int32?

                                    public var tid: String?

                                    public var to: Int32?

                                    public var val: String?

                                    public override init() {
                                        super.init()
                                    }

                                    public init(_ dict: [String: Any]) {
                                        super.init()
                                        self.fromMap(dict)
                                    }

                                    public override func validate() throws -> Void {
                                    }

                                    public override func toMap() -> [String : Any] {
                                        var map = super.toMap()
                                        if self.from != nil {
                                            map["From"] = self.from!
                                        }
                                        if self.pid != nil {
                                            map["Pid"] = self.pid!
                                        }
                                        if self.tid != nil {
                                            map["Tid"] = self.tid!
                                        }
                                        if self.to != nil {
                                            map["To"] = self.to!
                                        }
                                        if self.val != nil {
                                            map["Val"] = self.val!
                                        }
                                        return map
                                    }

                                    public override func fromMap(_ dict: [String: Any]) -> Void {
                                        if dict.keys.contains("From") {
                                            self.from = dict["From"] as! Int32
                                        }
                                        if dict.keys.contains("Pid") {
                                            self.pid = dict["Pid"] as! Int32
                                        }
                                        if dict.keys.contains("Tid") {
                                            self.tid = dict["Tid"] as! String
                                        }
                                        if dict.keys.contains("To") {
                                            self.to = dict["To"] as! Int32
                                        }
                                        if dict.keys.contains("Val") {
                                            self.val = dict["Val"] as! String
                                        }
                                    }
                                }
                                public var hitKeyWord: [UploadDataSyncResponseBody.Data.ResultInfo.Rules.RuleHitInfo.Hit.ConditionHitInfo.HitKeyWords.HitKeyWord]?

                                public override init() {
                                    super.init()
                                }

                                public init(_ dict: [String: Any]) {
                                    super.init()
                                    self.fromMap(dict)
                                }

                                public override func validate() throws -> Void {
                                }

                                public override func toMap() -> [String : Any] {
                                    var map = super.toMap()
                                    if self.hitKeyWord != nil {
                                        var tmp : [Any] = []
                                        for k in self.hitKeyWord! {
                                            tmp.append(k.toMap())
                                        }
                                        map["HitKeyWord"] = tmp
                                    }
                                    return map
                                }

                                public override func fromMap(_ dict: [String: Any]) -> Void {
                                    if dict.keys.contains("HitKeyWord") {
                                        self.hitKeyWord = dict["HitKeyWord"] as! [UploadDataSyncResponseBody.Data.ResultInfo.Rules.RuleHitInfo.Hit.ConditionHitInfo.HitKeyWords.HitKeyWord]
                                    }
                                }
                            }
                            public class Phrase : Tea.TeaModel {
                                public var begin: Int64?

                                public var beginTime: String?

                                public var end: Int64?

                                public var identity: String?

                                public var role: String?

                                public var words: String?

                                public override init() {
                                    super.init()
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
                                    if self.beginTime != nil {
                                        map["BeginTime"] = self.beginTime!
                                    }
                                    if self.end != nil {
                                        map["End"] = self.end!
                                    }
                                    if self.identity != nil {
                                        map["Identity"] = self.identity!
                                    }
                                    if self.role != nil {
                                        map["Role"] = self.role!
                                    }
                                    if self.words != nil {
                                        map["Words"] = self.words!
                                    }
                                    return map
                                }

                                public override func fromMap(_ dict: [String: Any]) -> Void {
                                    if dict.keys.contains("Begin") {
                                        self.begin = dict["Begin"] as! Int64
                                    }
                                    if dict.keys.contains("BeginTime") {
                                        self.beginTime = dict["BeginTime"] as! String
                                    }
                                    if dict.keys.contains("End") {
                                        self.end = dict["End"] as! Int64
                                    }
                                    if dict.keys.contains("Identity") {
                                        self.identity = dict["Identity"] as! String
                                    }
                                    if dict.keys.contains("Role") {
                                        self.role = dict["Role"] as! String
                                    }
                                    if dict.keys.contains("Words") {
                                        self.words = dict["Words"] as! String
                                    }
                                }
                            }
                            public var hitCids: UploadDataSyncResponseBody.Data.ResultInfo.Rules.RuleHitInfo.Hit.ConditionHitInfo.HitCids?

                            public var hitKeyWords: UploadDataSyncResponseBody.Data.ResultInfo.Rules.RuleHitInfo.Hit.ConditionHitInfo.HitKeyWords?

                            public var phrase: UploadDataSyncResponseBody.Data.ResultInfo.Rules.RuleHitInfo.Hit.ConditionHitInfo.Phrase?

                            public override init() {
                                super.init()
                            }

                            public init(_ dict: [String: Any]) {
                                super.init()
                                self.fromMap(dict)
                            }

                            public override func validate() throws -> Void {
                                try self.hitCids?.validate()
                                try self.hitKeyWords?.validate()
                                try self.phrase?.validate()
                            }

                            public override func toMap() -> [String : Any] {
                                var map = super.toMap()
                                if self.hitCids != nil {
                                    map["HitCids"] = self.hitCids?.toMap()
                                }
                                if self.hitKeyWords != nil {
                                    map["HitKeyWords"] = self.hitKeyWords?.toMap()
                                }
                                if self.phrase != nil {
                                    map["Phrase"] = self.phrase?.toMap()
                                }
                                return map
                            }

                            public override func fromMap(_ dict: [String: Any]) -> Void {
                                if dict.keys.contains("HitCids") {
                                    var model = UploadDataSyncResponseBody.Data.ResultInfo.Rules.RuleHitInfo.Hit.ConditionHitInfo.HitCids()
                                    model.fromMap(dict["HitCids"] as! [String: Any])
                                    self.hitCids = model
                                }
                                if dict.keys.contains("HitKeyWords") {
                                    var model = UploadDataSyncResponseBody.Data.ResultInfo.Rules.RuleHitInfo.Hit.ConditionHitInfo.HitKeyWords()
                                    model.fromMap(dict["HitKeyWords"] as! [String: Any])
                                    self.hitKeyWords = model
                                }
                                if dict.keys.contains("Phrase") {
                                    var model = UploadDataSyncResponseBody.Data.ResultInfo.Rules.RuleHitInfo.Hit.ConditionHitInfo.Phrase()
                                    model.fromMap(dict["Phrase"] as! [String: Any])
                                    self.phrase = model
                                }
                            }
                        }
                        public var conditionHitInfo: [UploadDataSyncResponseBody.Data.ResultInfo.Rules.RuleHitInfo.Hit.ConditionHitInfo]?

                        public override init() {
                            super.init()
                        }

                        public init(_ dict: [String: Any]) {
                            super.init()
                            self.fromMap(dict)
                        }

                        public override func validate() throws -> Void {
                        }

                        public override func toMap() -> [String : Any] {
                            var map = super.toMap()
                            if self.conditionHitInfo != nil {
                                var tmp : [Any] = []
                                for k in self.conditionHitInfo! {
                                    tmp.append(k.toMap())
                                }
                                map["ConditionHitInfo"] = tmp
                            }
                            return map
                        }

                        public override func fromMap(_ dict: [String: Any]) -> Void {
                            if dict.keys.contains("ConditionHitInfo") {
                                self.conditionHitInfo = dict["ConditionHitInfo"] as! [UploadDataSyncResponseBody.Data.ResultInfo.Rules.RuleHitInfo.Hit.ConditionHitInfo]
                            }
                        }
                    }
                    public var conditionInfo: UploadDataSyncResponseBody.Data.ResultInfo.Rules.RuleHitInfo.ConditionInfo?

                    public var hit: UploadDataSyncResponseBody.Data.ResultInfo.Rules.RuleHitInfo.Hit?

                    public var rid: String?

                    public var tid: String?

                    public override init() {
                        super.init()
                    }

                    public init(_ dict: [String: Any]) {
                        super.init()
                        self.fromMap(dict)
                    }

                    public override func validate() throws -> Void {
                        try self.conditionInfo?.validate()
                        try self.hit?.validate()
                    }

                    public override func toMap() -> [String : Any] {
                        var map = super.toMap()
                        if self.conditionInfo != nil {
                            map["ConditionInfo"] = self.conditionInfo?.toMap()
                        }
                        if self.hit != nil {
                            map["Hit"] = self.hit?.toMap()
                        }
                        if self.rid != nil {
                            map["Rid"] = self.rid!
                        }
                        if self.tid != nil {
                            map["Tid"] = self.tid!
                        }
                        return map
                    }

                    public override func fromMap(_ dict: [String: Any]) -> Void {
                        if dict.keys.contains("ConditionInfo") {
                            var model = UploadDataSyncResponseBody.Data.ResultInfo.Rules.RuleHitInfo.ConditionInfo()
                            model.fromMap(dict["ConditionInfo"] as! [String: Any])
                            self.conditionInfo = model
                        }
                        if dict.keys.contains("Hit") {
                            var model = UploadDataSyncResponseBody.Data.ResultInfo.Rules.RuleHitInfo.Hit()
                            model.fromMap(dict["Hit"] as! [String: Any])
                            self.hit = model
                        }
                        if dict.keys.contains("Rid") {
                            self.rid = dict["Rid"] as! String
                        }
                        if dict.keys.contains("Tid") {
                            self.tid = dict["Tid"] as! String
                        }
                    }
                }
                public var ruleHitInfo: [UploadDataSyncResponseBody.Data.ResultInfo.Rules.RuleHitInfo]?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.ruleHitInfo != nil {
                        var tmp : [Any] = []
                        for k in self.ruleHitInfo! {
                            tmp.append(k.toMap())
                        }
                        map["RuleHitInfo"] = tmp
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("RuleHitInfo") {
                        self.ruleHitInfo = dict["RuleHitInfo"] as! [UploadDataSyncResponseBody.Data.ResultInfo.Rules.RuleHitInfo]
                    }
                }
            }
            public var handScoreIdList: UploadDataSyncResponseBody.Data.ResultInfo.HandScoreIdList?

            public var rules: UploadDataSyncResponseBody.Data.ResultInfo.Rules?

            public var score: Int32?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
                try self.handScoreIdList?.validate()
                try self.rules?.validate()
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.handScoreIdList != nil {
                    map["HandScoreIdList"] = self.handScoreIdList?.toMap()
                }
                if self.rules != nil {
                    map["Rules"] = self.rules?.toMap()
                }
                if self.score != nil {
                    map["Score"] = self.score!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("HandScoreIdList") {
                    var model = UploadDataSyncResponseBody.Data.ResultInfo.HandScoreIdList()
                    model.fromMap(dict["HandScoreIdList"] as! [String: Any])
                    self.handScoreIdList = model
                }
                if dict.keys.contains("Rules") {
                    var model = UploadDataSyncResponseBody.Data.ResultInfo.Rules()
                    model.fromMap(dict["Rules"] as! [String: Any])
                    self.rules = model
                }
                if dict.keys.contains("Score") {
                    self.score = dict["Score"] as! Int32
                }
            }
        }
        public var resultInfo: [UploadDataSyncResponseBody.Data.ResultInfo]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.resultInfo != nil {
                var tmp : [Any] = []
                for k in self.resultInfo! {
                    tmp.append(k.toMap())
                }
                map["ResultInfo"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("ResultInfo") {
                self.resultInfo = dict["ResultInfo"] as! [UploadDataSyncResponseBody.Data.ResultInfo]
            }
        }
    }
    public var code: String?

    public var data: UploadDataSyncResponseBody.Data?

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
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Data") {
            var model = UploadDataSyncResponseBody.Data()
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

public class UploadDataSyncResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UploadDataSyncResponseBody?

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
            var model = UploadDataSyncResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class UploadRuleRequest : Tea.TeaModel {
    public var jsonStr: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.jsonStr != nil {
            map["JsonStr"] = self.jsonStr!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("JsonStr") {
            self.jsonStr = dict["JsonStr"] as! String
        }
    }
}

public class UploadRuleResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var ridInfo: [String]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.ridInfo != nil {
                map["RidInfo"] = self.ridInfo!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("RidInfo") {
                self.ridInfo = dict["RidInfo"] as! [String]
            }
        }
    }
    public var code: String?

    public var data: UploadRuleResponseBody.Data?

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
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Data") {
            var model = UploadRuleResponseBody.Data()
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

public class UploadRuleResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UploadRuleResponseBody?

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
            var model = UploadRuleResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class VerifyFileRequest : Tea.TeaModel {
    public var jsonStr: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.jsonStr != nil {
            map["JsonStr"] = self.jsonStr!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("JsonStr") {
            self.jsonStr = dict["JsonStr"] as! String
        }
    }
}

public class VerifyFileResponseBody : Tea.TeaModel {
    public var code: String?

    public var data: Double?

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
            self.data = dict["Data"] as! Double
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

public class VerifyFileResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: VerifyFileResponseBody?

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
            var model = VerifyFileResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class VerifySentenceRequest : Tea.TeaModel {
    public var jsonStr: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.jsonStr != nil {
            map["JsonStr"] = self.jsonStr!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("JsonStr") {
            self.jsonStr = dict["JsonStr"] as! String
        }
    }
}

public class VerifySentenceResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class Delta : Tea.TeaModel {
            public class Source : Tea.TeaModel {
                public class Line : Tea.TeaModel {
                    public var line: [String]?

                    public override init() {
                        super.init()
                    }

                    public init(_ dict: [String: Any]) {
                        super.init()
                        self.fromMap(dict)
                    }

                    public override func validate() throws -> Void {
                    }

                    public override func toMap() -> [String : Any] {
                        var map = super.toMap()
                        if self.line != nil {
                            map["Line"] = self.line!
                        }
                        return map
                    }

                    public override func fromMap(_ dict: [String: Any]) -> Void {
                        if dict.keys.contains("Line") {
                            self.line = dict["Line"] as! [String]
                        }
                    }
                }
                public var line: VerifySentenceResponseBody.Data.Delta.Source.Line?

                public var position: Int32?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                    try self.line?.validate()
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.line != nil {
                        map["Line"] = self.line?.toMap()
                    }
                    if self.position != nil {
                        map["Position"] = self.position!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("Line") {
                        var model = VerifySentenceResponseBody.Data.Delta.Source.Line()
                        model.fromMap(dict["Line"] as! [String: Any])
                        self.line = model
                    }
                    if dict.keys.contains("Position") {
                        self.position = dict["Position"] as! Int32
                    }
                }
            }
            public class Target : Tea.TeaModel {
                public class Line : Tea.TeaModel {
                    public var line: [String]?

                    public override init() {
                        super.init()
                    }

                    public init(_ dict: [String: Any]) {
                        super.init()
                        self.fromMap(dict)
                    }

                    public override func validate() throws -> Void {
                    }

                    public override func toMap() -> [String : Any] {
                        var map = super.toMap()
                        if self.line != nil {
                            map["Line"] = self.line!
                        }
                        return map
                    }

                    public override func fromMap(_ dict: [String: Any]) -> Void {
                        if dict.keys.contains("Line") {
                            self.line = dict["Line"] as! [String]
                        }
                    }
                }
                public var line: VerifySentenceResponseBody.Data.Delta.Target.Line?

                public var position: Int32?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                    try self.line?.validate()
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.line != nil {
                        map["Line"] = self.line?.toMap()
                    }
                    if self.position != nil {
                        map["Position"] = self.position!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("Line") {
                        var model = VerifySentenceResponseBody.Data.Delta.Target.Line()
                        model.fromMap(dict["Line"] as! [String: Any])
                        self.line = model
                    }
                    if dict.keys.contains("Position") {
                        self.position = dict["Position"] as! Int32
                    }
                }
            }
            public var source: VerifySentenceResponseBody.Data.Delta.Source?

            public var target: VerifySentenceResponseBody.Data.Delta.Target?

            public var type: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
                try self.source?.validate()
                try self.target?.validate()
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.source != nil {
                    map["Source"] = self.source?.toMap()
                }
                if self.target != nil {
                    map["Target"] = self.target?.toMap()
                }
                if self.type != nil {
                    map["Type"] = self.type!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("Source") {
                    var model = VerifySentenceResponseBody.Data.Delta.Source()
                    model.fromMap(dict["Source"] as! [String: Any])
                    self.source = model
                }
                if dict.keys.contains("Target") {
                    var model = VerifySentenceResponseBody.Data.Delta.Target()
                    model.fromMap(dict["Target"] as! [String: Any])
                    self.target = model
                }
                if dict.keys.contains("Type") {
                    self.type = dict["Type"] as! String
                }
            }
        }
        public var delta: [VerifySentenceResponseBody.Data.Delta]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.delta != nil {
                var tmp : [Any] = []
                for k in self.delta! {
                    tmp.append(k.toMap())
                }
                map["Delta"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Delta") {
                self.delta = dict["Delta"] as! [VerifySentenceResponseBody.Data.Delta]
            }
        }
    }
    public var code: String?

    public var data: VerifySentenceResponseBody.Data?

    public var incorrectWords: Int32?

    public var message: String?

    public var requestId: String?

    public var sourceRole: Int32?

    public var success: Bool?

    public var targetRole: Int32?

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
        if self.incorrectWords != nil {
            map["IncorrectWords"] = self.incorrectWords!
        }
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.sourceRole != nil {
            map["SourceRole"] = self.sourceRole!
        }
        if self.success != nil {
            map["Success"] = self.success!
        }
        if self.targetRole != nil {
            map["TargetRole"] = self.targetRole!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Data") {
            var model = VerifySentenceResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("IncorrectWords") {
            self.incorrectWords = dict["IncorrectWords"] as! Int32
        }
        if dict.keys.contains("Message") {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("SourceRole") {
            self.sourceRole = dict["SourceRole"] as! Int32
        }
        if dict.keys.contains("Success") {
            self.success = dict["Success"] as! Bool
        }
        if dict.keys.contains("TargetRole") {
            self.targetRole = dict["TargetRole"] as! Int32
        }
    }
}

public class VerifySentenceResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: VerifySentenceResponseBody?

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
            var model = VerifySentenceResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}
