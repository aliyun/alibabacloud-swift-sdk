import Foundation
import Tea
import TeaUtils
import AlibabacloudOpenApi
import AlibabaCloudOpenApiUtil
import AlibabacloudEndpointUtil

public class AcknowledgeTaskResultRequest : Tea.TeaModel {
    public var lang: String?

    public var taskDetailNo: [String]?

    public var userClientIp: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.lang != nil {
            map["Lang"] = self.lang!
        }
        if self.taskDetailNo != nil {
            map["TaskDetailNo"] = self.taskDetailNo!
        }
        if self.userClientIp != nil {
            map["UserClientIp"] = self.userClientIp!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Lang"] as? String {
            self.lang = value
        }
        if let value = dict["TaskDetailNo"] as? [String] {
            self.taskDetailNo = value
        }
        if let value = dict["UserClientIp"] as? String {
            self.userClientIp = value
        }
    }
}

public class AcknowledgeTaskResultResponseBody : Tea.TeaModel {
    public var requestId: String?

    public var result: Int32?

    public override init() {
        super.init()
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Result"] as? Int32 {
            self.result = value
        }
    }
}

public class AcknowledgeTaskResultResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: AcknowledgeTaskResultResponseBody?

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
            var model = AcknowledgeTaskResultResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class BatchFuzzyMatchDomainSensitiveWordRequest : Tea.TeaModel {
    public var keyword: String?

    public var lang: String?

    public var userClientIp: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.keyword != nil {
            map["Keyword"] = self.keyword!
        }
        if self.lang != nil {
            map["Lang"] = self.lang!
        }
        if self.userClientIp != nil {
            map["UserClientIp"] = self.userClientIp!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Keyword"] as? String {
            self.keyword = value
        }
        if let value = dict["Lang"] as? String {
            self.lang = value
        }
        if let value = dict["UserClientIp"] as? String {
            self.userClientIp = value
        }
    }
}

public class BatchFuzzyMatchDomainSensitiveWordResponseBody : Tea.TeaModel {
    public class SensitiveWordMatchResultList : Tea.TeaModel {
        public class SensitiveWordMatchResult : Tea.TeaModel {
            public class MatchedSentiveWords : Tea.TeaModel {
                public class MatchedSensitiveWord : Tea.TeaModel {
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
                        if self.word != nil {
                            map["Word"] = self.word!
                        }
                        return map
                    }

                    public override func fromMap(_ dict: [String: Any?]?) -> Void {
                        guard let dict else { return }
                        if let value = dict["Word"] as? String {
                            self.word = value
                        }
                    }
                }
                public var matchedSensitiveWord: [BatchFuzzyMatchDomainSensitiveWordResponseBody.SensitiveWordMatchResultList.SensitiveWordMatchResult.MatchedSentiveWords.MatchedSensitiveWord]?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.matchedSensitiveWord != nil {
                        var tmp : [Any] = []
                        for k in self.matchedSensitiveWord! {
                            tmp.append(k.toMap())
                        }
                        map["MatchedSensitiveWord"] = tmp
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["MatchedSensitiveWord"] as? [Any?] {
                        var tmp : [BatchFuzzyMatchDomainSensitiveWordResponseBody.SensitiveWordMatchResultList.SensitiveWordMatchResult.MatchedSentiveWords.MatchedSensitiveWord] = []
                        for v in value {
                            if v != nil {
                                var model = BatchFuzzyMatchDomainSensitiveWordResponseBody.SensitiveWordMatchResultList.SensitiveWordMatchResult.MatchedSentiveWords.MatchedSensitiveWord()
                                if v != nil {
                                    model.fromMap(v as? [String: Any?])
                                }
                                tmp.append(model)
                            }
                        }
                        self.matchedSensitiveWord = tmp
                    }
                }
            }
            public var exist: Bool?

            public var keyword: String?

            public var matchedSentiveWords: BatchFuzzyMatchDomainSensitiveWordResponseBody.SensitiveWordMatchResultList.SensitiveWordMatchResult.MatchedSentiveWords?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
                try self.matchedSentiveWords?.validate()
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.exist != nil {
                    map["Exist"] = self.exist!
                }
                if self.keyword != nil {
                    map["Keyword"] = self.keyword!
                }
                if self.matchedSentiveWords != nil {
                    map["MatchedSentiveWords"] = self.matchedSentiveWords?.toMap()
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["Exist"] as? Bool {
                    self.exist = value
                }
                if let value = dict["Keyword"] as? String {
                    self.keyword = value
                }
                if let value = dict["MatchedSentiveWords"] as? [String: Any?] {
                    var model = BatchFuzzyMatchDomainSensitiveWordResponseBody.SensitiveWordMatchResultList.SensitiveWordMatchResult.MatchedSentiveWords()
                    model.fromMap(value)
                    self.matchedSentiveWords = model
                }
            }
        }
        public var sensitiveWordMatchResult: [BatchFuzzyMatchDomainSensitiveWordResponseBody.SensitiveWordMatchResultList.SensitiveWordMatchResult]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.sensitiveWordMatchResult != nil {
                var tmp : [Any] = []
                for k in self.sensitiveWordMatchResult! {
                    tmp.append(k.toMap())
                }
                map["SensitiveWordMatchResult"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["SensitiveWordMatchResult"] as? [Any?] {
                var tmp : [BatchFuzzyMatchDomainSensitiveWordResponseBody.SensitiveWordMatchResultList.SensitiveWordMatchResult] = []
                for v in value {
                    if v != nil {
                        var model = BatchFuzzyMatchDomainSensitiveWordResponseBody.SensitiveWordMatchResultList.SensitiveWordMatchResult()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.sensitiveWordMatchResult = tmp
            }
        }
    }
    public var requestId: String?

    public var sensitiveWordMatchResultList: BatchFuzzyMatchDomainSensitiveWordResponseBody.SensitiveWordMatchResultList?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.sensitiveWordMatchResultList?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.sensitiveWordMatchResultList != nil {
            map["SensitiveWordMatchResultList"] = self.sensitiveWordMatchResultList?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["SensitiveWordMatchResultList"] as? [String: Any?] {
            var model = BatchFuzzyMatchDomainSensitiveWordResponseBody.SensitiveWordMatchResultList()
            model.fromMap(value)
            self.sensitiveWordMatchResultList = model
        }
    }
}

public class BatchFuzzyMatchDomainSensitiveWordResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: BatchFuzzyMatchDomainSensitiveWordResponseBody?

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
            var model = BatchFuzzyMatchDomainSensitiveWordResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class CancelDomainVerificationRequest : Tea.TeaModel {
    public var actionType: String?

    public var instanceId: String?

    public var lang: String?

    public var userClientIp: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.actionType != nil {
            map["ActionType"] = self.actionType!
        }
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.lang != nil {
            map["Lang"] = self.lang!
        }
        if self.userClientIp != nil {
            map["UserClientIp"] = self.userClientIp!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ActionType"] as? String {
            self.actionType = value
        }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["Lang"] as? String {
            self.lang = value
        }
        if let value = dict["UserClientIp"] as? String {
            self.userClientIp = value
        }
    }
}

public class CancelDomainVerificationResponseBody : Tea.TeaModel {
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

public class CancelDomainVerificationResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CancelDomainVerificationResponseBody?

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
            var model = CancelDomainVerificationResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class CancelOperationAuditRequest : Tea.TeaModel {
    public var auditRecordId: Int64?

    public var lang: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.auditRecordId != nil {
            map["AuditRecordId"] = self.auditRecordId!
        }
        if self.lang != nil {
            map["Lang"] = self.lang!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AuditRecordId"] as? Int64 {
            self.auditRecordId = value
        }
        if let value = dict["Lang"] as? String {
            self.lang = value
        }
    }
}

public class CancelOperationAuditResponseBody : Tea.TeaModel {
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

public class CancelOperationAuditResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CancelOperationAuditResponseBody?

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
            var model = CancelOperationAuditResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class CancelQualificationVerificationRequest : Tea.TeaModel {
    public var instanceId: String?

    public var lang: String?

    public var qualificationType: String?

    public var userClientIp: String?

    public override init() {
        super.init()
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
        if self.lang != nil {
            map["Lang"] = self.lang!
        }
        if self.qualificationType != nil {
            map["QualificationType"] = self.qualificationType!
        }
        if self.userClientIp != nil {
            map["UserClientIp"] = self.userClientIp!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["Lang"] as? String {
            self.lang = value
        }
        if let value = dict["QualificationType"] as? String {
            self.qualificationType = value
        }
        if let value = dict["UserClientIp"] as? String {
            self.userClientIp = value
        }
    }
}

public class CancelQualificationVerificationResponseBody : Tea.TeaModel {
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

public class CancelQualificationVerificationResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CancelQualificationVerificationResponseBody?

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
            var model = CancelQualificationVerificationResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class CancelTaskRequest : Tea.TeaModel {
    public var lang: String?

    public var taskNo: String?

    public var userClientIp: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.lang != nil {
            map["Lang"] = self.lang!
        }
        if self.taskNo != nil {
            map["TaskNo"] = self.taskNo!
        }
        if self.userClientIp != nil {
            map["UserClientIp"] = self.userClientIp!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Lang"] as? String {
            self.lang = value
        }
        if let value = dict["TaskNo"] as? String {
            self.taskNo = value
        }
        if let value = dict["UserClientIp"] as? String {
            self.userClientIp = value
        }
    }
}

public class CancelTaskResponseBody : Tea.TeaModel {
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

public class CancelTaskResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CancelTaskResponseBody?

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
            var model = CancelTaskResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ChangeResourceGroupRequest : Tea.TeaModel {
    public var lang: String?

    public var newResourceGroupId: String?

    public var resourceId: String?

    public var resourceType: String?

    public var userClientIp: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.lang != nil {
            map["Lang"] = self.lang!
        }
        if self.newResourceGroupId != nil {
            map["NewResourceGroupId"] = self.newResourceGroupId!
        }
        if self.resourceId != nil {
            map["ResourceId"] = self.resourceId!
        }
        if self.resourceType != nil {
            map["ResourceType"] = self.resourceType!
        }
        if self.userClientIp != nil {
            map["UserClientIp"] = self.userClientIp!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Lang"] as? String {
            self.lang = value
        }
        if let value = dict["NewResourceGroupId"] as? String {
            self.newResourceGroupId = value
        }
        if let value = dict["ResourceId"] as? String {
            self.resourceId = value
        }
        if let value = dict["ResourceType"] as? String {
            self.resourceType = value
        }
        if let value = dict["UserClientIp"] as? String {
            self.userClientIp = value
        }
    }
}

public class ChangeResourceGroupResponseBody : Tea.TeaModel {
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Result"] as? String {
            self.result = value
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

public class CheckDomainRequest : Tea.TeaModel {
    public var domainName: String?

    public var feeCommand: String?

    public var feeCurrency: String?

    public var feePeriod: Int32?

    public var lang: String?

    public override init() {
        super.init()
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
        if self.feeCommand != nil {
            map["FeeCommand"] = self.feeCommand!
        }
        if self.feeCurrency != nil {
            map["FeeCurrency"] = self.feeCurrency!
        }
        if self.feePeriod != nil {
            map["FeePeriod"] = self.feePeriod!
        }
        if self.lang != nil {
            map["Lang"] = self.lang!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["DomainName"] as? String {
            self.domainName = value
        }
        if let value = dict["FeeCommand"] as? String {
            self.feeCommand = value
        }
        if let value = dict["FeeCurrency"] as? String {
            self.feeCurrency = value
        }
        if let value = dict["FeePeriod"] as? Int32 {
            self.feePeriod = value
        }
        if let value = dict["Lang"] as? String {
            self.lang = value
        }
    }
}

public class CheckDomainResponseBody : Tea.TeaModel {
    public class StaticPriceInfo : Tea.TeaModel {
        public class PriceInfo : Tea.TeaModel {
            public var action: String?

            public var money: Double?

            public var period: Int64?

            public override init() {
                super.init()
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
                    map["action"] = self.action!
                }
                if self.money != nil {
                    map["money"] = self.money!
                }
                if self.period != nil {
                    map["period"] = self.period!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["action"] as? String {
                    self.action = value
                }
                if let value = dict["money"] as? Double {
                    self.money = value
                }
                if let value = dict["period"] as? Int64 {
                    self.period = value
                }
            }
        }
        public var priceInfo: [CheckDomainResponseBody.StaticPriceInfo.PriceInfo]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.priceInfo != nil {
                var tmp : [Any] = []
                for k in self.priceInfo! {
                    tmp.append(k.toMap())
                }
                map["PriceInfo"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["PriceInfo"] as? [Any?] {
                var tmp : [CheckDomainResponseBody.StaticPriceInfo.PriceInfo] = []
                for v in value {
                    if v != nil {
                        var model = CheckDomainResponseBody.StaticPriceInfo.PriceInfo()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.priceInfo = tmp
            }
        }
    }
    public var avail: String?

    public var domainName: String?

    public var dynamicCheck: Bool?

    public var premium: String?

    public var price: Int64?

    public var reason: String?

    public var requestId: String?

    public var staticPriceInfo: CheckDomainResponseBody.StaticPriceInfo?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.staticPriceInfo?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.avail != nil {
            map["Avail"] = self.avail!
        }
        if self.domainName != nil {
            map["DomainName"] = self.domainName!
        }
        if self.dynamicCheck != nil {
            map["DynamicCheck"] = self.dynamicCheck!
        }
        if self.premium != nil {
            map["Premium"] = self.premium!
        }
        if self.price != nil {
            map["Price"] = self.price!
        }
        if self.reason != nil {
            map["Reason"] = self.reason!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.staticPriceInfo != nil {
            map["StaticPriceInfo"] = self.staticPriceInfo?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Avail"] as? String {
            self.avail = value
        }
        if let value = dict["DomainName"] as? String {
            self.domainName = value
        }
        if let value = dict["DynamicCheck"] as? Bool {
            self.dynamicCheck = value
        }
        if let value = dict["Premium"] as? String {
            self.premium = value
        }
        if let value = dict["Price"] as? Int64 {
            self.price = value
        }
        if let value = dict["Reason"] as? String {
            self.reason = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["StaticPriceInfo"] as? [String: Any?] {
            var model = CheckDomainResponseBody.StaticPriceInfo()
            model.fromMap(value)
            self.staticPriceInfo = model
        }
    }
}

public class CheckDomainResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CheckDomainResponseBody?

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
            var model = CheckDomainResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class CheckDomainSunriseClaimRequest : Tea.TeaModel {
    public var domainName: String?

    public var lang: String?

    public var userClientIp: String?

    public override init() {
        super.init()
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
        if self.lang != nil {
            map["Lang"] = self.lang!
        }
        if self.userClientIp != nil {
            map["UserClientIp"] = self.userClientIp!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["DomainName"] as? String {
            self.domainName = value
        }
        if let value = dict["Lang"] as? String {
            self.lang = value
        }
        if let value = dict["UserClientIp"] as? String {
            self.userClientIp = value
        }
    }
}

public class CheckDomainSunriseClaimResponseBody : Tea.TeaModel {
    public var claimKey: String?

    public var requestId: String?

    public var result: Int32?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.claimKey != nil {
            map["ClaimKey"] = self.claimKey!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.result != nil {
            map["Result"] = self.result!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ClaimKey"] as? String {
            self.claimKey = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Result"] as? Int32 {
            self.result = value
        }
    }
}

public class CheckDomainSunriseClaimResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CheckDomainSunriseClaimResponseBody?

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
            var model = CheckDomainSunriseClaimResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class CheckIntlFixPriceDomainStatusRequest : Tea.TeaModel {
    public var domain: String?

    public override init() {
        super.init()
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
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Domain"] as? String {
            self.domain = value
        }
    }
}

public class CheckIntlFixPriceDomainStatusResponseBody : Tea.TeaModel {
    public class Module : Tea.TeaModel {
        public var currency: String?

        public var deadDate: Int64?

        public var domain: String?

        public var endTime: Int64?

        public var premium: Bool?

        public var price: Int64?

        public var regDate: Int64?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.currency != nil {
                map["Currency"] = self.currency!
            }
            if self.deadDate != nil {
                map["DeadDate"] = self.deadDate!
            }
            if self.domain != nil {
                map["Domain"] = self.domain!
            }
            if self.endTime != nil {
                map["EndTime"] = self.endTime!
            }
            if self.premium != nil {
                map["Premium"] = self.premium!
            }
            if self.price != nil {
                map["Price"] = self.price!
            }
            if self.regDate != nil {
                map["RegDate"] = self.regDate!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Currency"] as? String {
                self.currency = value
            }
            if let value = dict["DeadDate"] as? Int64 {
                self.deadDate = value
            }
            if let value = dict["Domain"] as? String {
                self.domain = value
            }
            if let value = dict["EndTime"] as? Int64 {
                self.endTime = value
            }
            if let value = dict["Premium"] as? Bool {
                self.premium = value
            }
            if let value = dict["Price"] as? Int64 {
                self.price = value
            }
            if let value = dict["RegDate"] as? Int64 {
                self.regDate = value
            }
        }
    }
    public var module: CheckIntlFixPriceDomainStatusResponseBody.Module?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.module?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.module != nil {
            map["Module"] = self.module?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Module"] as? [String: Any?] {
            var model = CheckIntlFixPriceDomainStatusResponseBody.Module()
            model.fromMap(value)
            self.module = model
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class CheckIntlFixPriceDomainStatusResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CheckIntlFixPriceDomainStatusResponseBody?

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
            var model = CheckIntlFixPriceDomainStatusResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class CheckMaxYearOfServerLockRequest : Tea.TeaModel {
    public var checkAction: String?

    public var domainName: String?

    public var lang: String?

    public var userClientIp: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.checkAction != nil {
            map["CheckAction"] = self.checkAction!
        }
        if self.domainName != nil {
            map["DomainName"] = self.domainName!
        }
        if self.lang != nil {
            map["Lang"] = self.lang!
        }
        if self.userClientIp != nil {
            map["UserClientIp"] = self.userClientIp!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["CheckAction"] as? String {
            self.checkAction = value
        }
        if let value = dict["DomainName"] as? String {
            self.domainName = value
        }
        if let value = dict["Lang"] as? String {
            self.lang = value
        }
        if let value = dict["UserClientIp"] as? String {
            self.userClientIp = value
        }
    }
}

public class CheckMaxYearOfServerLockResponseBody : Tea.TeaModel {
    public var maxYear: Int32?

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
        if self.maxYear != nil {
            map["MaxYear"] = self.maxYear!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["MaxYear"] as? Int32 {
            self.maxYear = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class CheckMaxYearOfServerLockResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CheckMaxYearOfServerLockResponseBody?

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
            var model = CheckMaxYearOfServerLockResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class CheckProcessingServerLockApplyRequest : Tea.TeaModel {
    public var domainName: String?

    public var feePeriod: Int32?

    public var lang: String?

    public var userClientIp: String?

    public override init() {
        super.init()
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
        if self.feePeriod != nil {
            map["FeePeriod"] = self.feePeriod!
        }
        if self.lang != nil {
            map["Lang"] = self.lang!
        }
        if self.userClientIp != nil {
            map["UserClientIp"] = self.userClientIp!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["DomainName"] as? String {
            self.domainName = value
        }
        if let value = dict["FeePeriod"] as? Int32 {
            self.feePeriod = value
        }
        if let value = dict["Lang"] as? String {
            self.lang = value
        }
        if let value = dict["UserClientIp"] as? String {
            self.userClientIp = value
        }
    }
}

public class CheckProcessingServerLockApplyResponseBody : Tea.TeaModel {
    public var exists: Bool?

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
        if self.exists != nil {
            map["Exists"] = self.exists!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Exists"] as? Bool {
            self.exists = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class CheckProcessingServerLockApplyResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CheckProcessingServerLockApplyResponseBody?

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
            var model = CheckProcessingServerLockApplyResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class CheckTransferInFeasibilityRequest : Tea.TeaModel {
    public var domainName: String?

    public var lang: String?

    public var transferAuthorizationCode: String?

    public var userClientIp: String?

    public override init() {
        super.init()
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
        if self.lang != nil {
            map["Lang"] = self.lang!
        }
        if self.transferAuthorizationCode != nil {
            map["TransferAuthorizationCode"] = self.transferAuthorizationCode!
        }
        if self.userClientIp != nil {
            map["UserClientIp"] = self.userClientIp!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["DomainName"] as? String {
            self.domainName = value
        }
        if let value = dict["Lang"] as? String {
            self.lang = value
        }
        if let value = dict["TransferAuthorizationCode"] as? String {
            self.transferAuthorizationCode = value
        }
        if let value = dict["UserClientIp"] as? String {
            self.userClientIp = value
        }
    }
}

public class CheckTransferInFeasibilityResponseBody : Tea.TeaModel {
    public var canTransfer: Bool?

    public var code: String?

    public var message: String?

    public var productId: String?

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
        if self.canTransfer != nil {
            map["CanTransfer"] = self.canTransfer!
        }
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.productId != nil {
            map["ProductId"] = self.productId!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["CanTransfer"] as? Bool {
            self.canTransfer = value
        }
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["ProductId"] as? String {
            self.productId = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class CheckTransferInFeasibilityResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CheckTransferInFeasibilityResponseBody?

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
            var model = CheckTransferInFeasibilityResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ConfirmTransferInEmailRequest : Tea.TeaModel {
    public var domainName: [String]?

    public var email: String?

    public var lang: String?

    public var userClientIp: String?

    public override init() {
        super.init()
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
        if self.email != nil {
            map["Email"] = self.email!
        }
        if self.lang != nil {
            map["Lang"] = self.lang!
        }
        if self.userClientIp != nil {
            map["UserClientIp"] = self.userClientIp!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["DomainName"] as? [String] {
            self.domainName = value
        }
        if let value = dict["Email"] as? String {
            self.email = value
        }
        if let value = dict["Lang"] as? String {
            self.lang = value
        }
        if let value = dict["UserClientIp"] as? String {
            self.userClientIp = value
        }
    }
}

public class ConfirmTransferInEmailResponseBody : Tea.TeaModel {
    public class FailList : Tea.TeaModel {
        public var failDomain: [String]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.failDomain != nil {
                map["FailDomain"] = self.failDomain!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["FailDomain"] as? [String] {
                self.failDomain = value
            }
        }
    }
    public class SuccessList : Tea.TeaModel {
        public var successDomain: [String]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.successDomain != nil {
                map["SuccessDomain"] = self.successDomain!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["SuccessDomain"] as? [String] {
                self.successDomain = value
            }
        }
    }
    public var failList: ConfirmTransferInEmailResponseBody.FailList?

    public var requestId: String?

    public var successList: ConfirmTransferInEmailResponseBody.SuccessList?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.failList?.validate()
        try self.successList?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.failList != nil {
            map["FailList"] = self.failList?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.successList != nil {
            map["SuccessList"] = self.successList?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["FailList"] as? [String: Any?] {
            var model = ConfirmTransferInEmailResponseBody.FailList()
            model.fromMap(value)
            self.failList = model
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["SuccessList"] as? [String: Any?] {
            var model = ConfirmTransferInEmailResponseBody.SuccessList()
            model.fromMap(value)
            self.successList = model
        }
    }
}

public class ConfirmTransferInEmailResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ConfirmTransferInEmailResponseBody?

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
            var model = ConfirmTransferInEmailResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class CreateIntlFixedPriceDomainOrderRequest : Tea.TeaModel {
    public var autoPay: Bool?

    public var contactId: Int64?

    public var domain: String?

    public var expectedPrice: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.autoPay != nil {
            map["AutoPay"] = self.autoPay!
        }
        if self.contactId != nil {
            map["ContactId"] = self.contactId!
        }
        if self.domain != nil {
            map["Domain"] = self.domain!
        }
        if self.expectedPrice != nil {
            map["ExpectedPrice"] = self.expectedPrice!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AutoPay"] as? Bool {
            self.autoPay = value
        }
        if let value = dict["ContactId"] as? Int64 {
            self.contactId = value
        }
        if let value = dict["Domain"] as? String {
            self.domain = value
        }
        if let value = dict["ExpectedPrice"] as? Int64 {
            self.expectedPrice = value
        }
    }
}

public class CreateIntlFixedPriceDomainOrderResponseBody : Tea.TeaModel {
    public class Module : Tea.TeaModel {
        public var domain: String?

        public var orderNo: String?

        public var payPrice: Int64?

        public var payUrl: String?

        public override init() {
            super.init()
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
            if self.orderNo != nil {
                map["OrderNo"] = self.orderNo!
            }
            if self.payPrice != nil {
                map["PayPrice"] = self.payPrice!
            }
            if self.payUrl != nil {
                map["PayUrl"] = self.payUrl!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Domain"] as? String {
                self.domain = value
            }
            if let value = dict["OrderNo"] as? String {
                self.orderNo = value
            }
            if let value = dict["PayPrice"] as? Int64 {
                self.payPrice = value
            }
            if let value = dict["PayUrl"] as? String {
                self.payUrl = value
            }
        }
    }
    public var module: CreateIntlFixedPriceDomainOrderResponseBody.Module?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.module?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.module != nil {
            map["Module"] = self.module?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Module"] as? [String: Any?] {
            var model = CreateIntlFixedPriceDomainOrderResponseBody.Module()
            model.fromMap(value)
            self.module = model
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class CreateIntlFixedPriceDomainOrderResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateIntlFixedPriceDomainOrderResponseBody?

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
            var model = CreateIntlFixedPriceDomainOrderResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DeleteContactTemplatesRequest : Tea.TeaModel {
    public var registrantProfileIds: String?

    public var userClientIp: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.registrantProfileIds != nil {
            map["RegistrantProfileIds"] = self.registrantProfileIds!
        }
        if self.userClientIp != nil {
            map["UserClientIp"] = self.userClientIp!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RegistrantProfileIds"] as? String {
            self.registrantProfileIds = value
        }
        if let value = dict["UserClientIp"] as? String {
            self.userClientIp = value
        }
    }
}

public class DeleteContactTemplatesResponseBody : Tea.TeaModel {
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

public class DeleteContactTemplatesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteContactTemplatesResponseBody?

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
            var model = DeleteContactTemplatesResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DeleteDomainGroupRequest : Tea.TeaModel {
    public var domainGroupId: Int64?

    public var lang: String?

    public var userClientIp: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.domainGroupId != nil {
            map["DomainGroupId"] = self.domainGroupId!
        }
        if self.lang != nil {
            map["Lang"] = self.lang!
        }
        if self.userClientIp != nil {
            map["UserClientIp"] = self.userClientIp!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["DomainGroupId"] as? Int64 {
            self.domainGroupId = value
        }
        if let value = dict["Lang"] as? String {
            self.lang = value
        }
        if let value = dict["UserClientIp"] as? String {
            self.userClientIp = value
        }
    }
}

public class DeleteDomainGroupResponseBody : Tea.TeaModel {
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

public class DeleteDomainGroupResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteDomainGroupResponseBody?

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
            var model = DeleteDomainGroupResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DeleteEmailVerificationRequest : Tea.TeaModel {
    public var email: String?

    public var lang: String?

    public var userClientIp: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.email != nil {
            map["Email"] = self.email!
        }
        if self.lang != nil {
            map["Lang"] = self.lang!
        }
        if self.userClientIp != nil {
            map["UserClientIp"] = self.userClientIp!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Email"] as? String {
            self.email = value
        }
        if let value = dict["Lang"] as? String {
            self.lang = value
        }
        if let value = dict["UserClientIp"] as? String {
            self.userClientIp = value
        }
    }
}

public class DeleteEmailVerificationResponseBody : Tea.TeaModel {
    public class FailList : Tea.TeaModel {
        public var code: String?

        public var email: String?

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
            if self.email != nil {
                map["Email"] = self.email!
            }
            if self.message != nil {
                map["Message"] = self.message!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Code"] as? String {
                self.code = value
            }
            if let value = dict["Email"] as? String {
                self.email = value
            }
            if let value = dict["Message"] as? String {
                self.message = value
            }
        }
    }
    public class SuccessList : Tea.TeaModel {
        public var code: String?

        public var email: String?

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
            if self.email != nil {
                map["Email"] = self.email!
            }
            if self.message != nil {
                map["Message"] = self.message!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Code"] as? String {
                self.code = value
            }
            if let value = dict["Email"] as? String {
                self.email = value
            }
            if let value = dict["Message"] as? String {
                self.message = value
            }
        }
    }
    public var failList: [DeleteEmailVerificationResponseBody.FailList]?

    public var requestId: String?

    public var successList: [DeleteEmailVerificationResponseBody.SuccessList]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.failList != nil {
            var tmp : [Any] = []
            for k in self.failList! {
                tmp.append(k.toMap())
            }
            map["FailList"] = tmp
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.successList != nil {
            var tmp : [Any] = []
            for k in self.successList! {
                tmp.append(k.toMap())
            }
            map["SuccessList"] = tmp
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["FailList"] as? [Any?] {
            var tmp : [DeleteEmailVerificationResponseBody.FailList] = []
            for v in value {
                if v != nil {
                    var model = DeleteEmailVerificationResponseBody.FailList()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.failList = tmp
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["SuccessList"] as? [Any?] {
            var tmp : [DeleteEmailVerificationResponseBody.SuccessList] = []
            for v in value {
                if v != nil {
                    var model = DeleteEmailVerificationResponseBody.SuccessList()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.successList = tmp
        }
    }
}

public class DeleteEmailVerificationResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteEmailVerificationResponseBody?

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
            var model = DeleteEmailVerificationResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DeleteRegistrantProfileRequest : Tea.TeaModel {
    public var lang: String?

    public var registrantProfileId: Int64?

    public var userClientIp: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.lang != nil {
            map["Lang"] = self.lang!
        }
        if self.registrantProfileId != nil {
            map["RegistrantProfileId"] = self.registrantProfileId!
        }
        if self.userClientIp != nil {
            map["UserClientIp"] = self.userClientIp!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Lang"] as? String {
            self.lang = value
        }
        if let value = dict["RegistrantProfileId"] as? Int64 {
            self.registrantProfileId = value
        }
        if let value = dict["UserClientIp"] as? String {
            self.userClientIp = value
        }
    }
}

public class DeleteRegistrantProfileResponseBody : Tea.TeaModel {
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

public class DeleteRegistrantProfileResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteRegistrantProfileResponseBody?

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
            var model = DeleteRegistrantProfileResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DomainSpecialBizCancelRequest : Tea.TeaModel {
    public var bizId: Int64?

    public var userClientIp: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.bizId != nil {
            map["BizId"] = self.bizId!
        }
        if self.userClientIp != nil {
            map["UserClientIp"] = self.userClientIp!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["BizId"] as? Int64 {
            self.bizId = value
        }
        if let value = dict["UserClientIp"] as? String {
            self.userClientIp = value
        }
    }
}

public class DomainSpecialBizCancelResponseBody : Tea.TeaModel {
    public var allowRetry: Bool?

    public var appName: String?

    public var dynamicCode: String?

    public var dynamicMessage: String?

    public var errorArgs: [Any]?

    public var errorCode: String?

    public var errorMsg: String?

    public var httpStatusCode: Int32?

    public var module: Any?

    public var requestId: String?

    public var success: Bool?

    public var synchro: Bool?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.allowRetry != nil {
            map["AllowRetry"] = self.allowRetry!
        }
        if self.appName != nil {
            map["AppName"] = self.appName!
        }
        if self.dynamicCode != nil {
            map["DynamicCode"] = self.dynamicCode!
        }
        if self.dynamicMessage != nil {
            map["DynamicMessage"] = self.dynamicMessage!
        }
        if self.errorArgs != nil {
            map["ErrorArgs"] = self.errorArgs!
        }
        if self.errorCode != nil {
            map["ErrorCode"] = self.errorCode!
        }
        if self.errorMsg != nil {
            map["ErrorMsg"] = self.errorMsg!
        }
        if self.httpStatusCode != nil {
            map["HttpStatusCode"] = self.httpStatusCode!
        }
        if self.module != nil {
            map["Module"] = self.module!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.success != nil {
            map["Success"] = self.success!
        }
        if self.synchro != nil {
            map["Synchro"] = self.synchro!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AllowRetry"] as? Bool {
            self.allowRetry = value
        }
        if let value = dict["AppName"] as? String {
            self.appName = value
        }
        if let value = dict["DynamicCode"] as? String {
            self.dynamicCode = value
        }
        if let value = dict["DynamicMessage"] as? String {
            self.dynamicMessage = value
        }
        if let value = dict["ErrorArgs"] as? [Any] {
            self.errorArgs = value
        }
        if let value = dict["ErrorCode"] as? String {
            self.errorCode = value
        }
        if let value = dict["ErrorMsg"] as? String {
            self.errorMsg = value
        }
        if let value = dict["HttpStatusCode"] as? Int32 {
            self.httpStatusCode = value
        }
        if let value = dict["Module"] as? Any {
            self.module = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
        if let value = dict["Synchro"] as? Bool {
            self.synchro = value
        }
    }
}

public class DomainSpecialBizCancelResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DomainSpecialBizCancelResponseBody?

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
            var model = DomainSpecialBizCancelResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class EmailVerifiedRequest : Tea.TeaModel {
    public var email: String?

    public var lang: String?

    public var userClientIp: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.email != nil {
            map["Email"] = self.email!
        }
        if self.lang != nil {
            map["Lang"] = self.lang!
        }
        if self.userClientIp != nil {
            map["UserClientIp"] = self.userClientIp!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Email"] as? String {
            self.email = value
        }
        if let value = dict["Lang"] as? String {
            self.lang = value
        }
        if let value = dict["UserClientIp"] as? String {
            self.userClientIp = value
        }
    }
}

public class EmailVerifiedResponseBody : Tea.TeaModel {
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

public class EmailVerifiedResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: EmailVerifiedResponseBody?

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
            var model = EmailVerifiedResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class FuzzyMatchDomainSensitiveWordRequest : Tea.TeaModel {
    public var keyword: String?

    public var lang: String?

    public var userClientIp: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.keyword != nil {
            map["Keyword"] = self.keyword!
        }
        if self.lang != nil {
            map["Lang"] = self.lang!
        }
        if self.userClientIp != nil {
            map["UserClientIp"] = self.userClientIp!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Keyword"] as? String {
            self.keyword = value
        }
        if let value = dict["Lang"] as? String {
            self.lang = value
        }
        if let value = dict["UserClientIp"] as? String {
            self.userClientIp = value
        }
    }
}

public class FuzzyMatchDomainSensitiveWordResponseBody : Tea.TeaModel {
    public class MatchedSentiveWords : Tea.TeaModel {
        public class MatchedSensitiveWord : Tea.TeaModel {
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
                if self.word != nil {
                    map["Word"] = self.word!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["Word"] as? String {
                    self.word = value
                }
            }
        }
        public var matchedSensitiveWord: [FuzzyMatchDomainSensitiveWordResponseBody.MatchedSentiveWords.MatchedSensitiveWord]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.matchedSensitiveWord != nil {
                var tmp : [Any] = []
                for k in self.matchedSensitiveWord! {
                    tmp.append(k.toMap())
                }
                map["MatchedSensitiveWord"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["MatchedSensitiveWord"] as? [Any?] {
                var tmp : [FuzzyMatchDomainSensitiveWordResponseBody.MatchedSentiveWords.MatchedSensitiveWord] = []
                for v in value {
                    if v != nil {
                        var model = FuzzyMatchDomainSensitiveWordResponseBody.MatchedSentiveWords.MatchedSensitiveWord()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.matchedSensitiveWord = tmp
            }
        }
    }
    public var exist: Bool?

    public var keyword: String?

    public var matchedSentiveWords: FuzzyMatchDomainSensitiveWordResponseBody.MatchedSentiveWords?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.matchedSentiveWords?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.exist != nil {
            map["Exist"] = self.exist!
        }
        if self.keyword != nil {
            map["Keyword"] = self.keyword!
        }
        if self.matchedSentiveWords != nil {
            map["MatchedSentiveWords"] = self.matchedSentiveWords?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Exist"] as? Bool {
            self.exist = value
        }
        if let value = dict["Keyword"] as? String {
            self.keyword = value
        }
        if let value = dict["MatchedSentiveWords"] as? [String: Any?] {
            var model = FuzzyMatchDomainSensitiveWordResponseBody.MatchedSentiveWords()
            model.fromMap(value)
            self.matchedSentiveWords = model
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class FuzzyMatchDomainSensitiveWordResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: FuzzyMatchDomainSensitiveWordResponseBody?

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
            var model = FuzzyMatchDomainSensitiveWordResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetIntlFixPriceDomainListUrlRequest : Tea.TeaModel {
    public var listDate: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.listDate != nil {
            map["ListDate"] = self.listDate!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ListDate"] as? String {
            self.listDate = value
        }
    }
}

public class GetIntlFixPriceDomainListUrlResponseBody : Tea.TeaModel {
    public class Module : Tea.TeaModel {
        public var downloadUrl: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.downloadUrl != nil {
                map["DownloadUrl"] = self.downloadUrl!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["DownloadUrl"] as? String {
                self.downloadUrl = value
            }
        }
    }
    public var module: GetIntlFixPriceDomainListUrlResponseBody.Module?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.module?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.module != nil {
            map["Module"] = self.module?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Module"] as? [String: Any?] {
            var model = GetIntlFixPriceDomainListUrlResponseBody.Module()
            model.fromMap(value)
            self.module = model
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class GetIntlFixPriceDomainListUrlResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetIntlFixPriceDomainListUrlResponseBody?

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
            var model = GetIntlFixPriceDomainListUrlResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetOperationOssUploadPolicyRequest : Tea.TeaModel {
    public var auditType: Int32?

    public var lang: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.auditType != nil {
            map["AuditType"] = self.auditType!
        }
        if self.lang != nil {
            map["Lang"] = self.lang!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AuditType"] as? Int32 {
            self.auditType = value
        }
        if let value = dict["Lang"] as? String {
            self.lang = value
        }
    }
}

public class GetOperationOssUploadPolicyResponseBody : Tea.TeaModel {
    public var accessid: String?

    public var encodedPolicy: String?

    public var expireTime: String?

    public var fileDir: String?

    public var host: String?

    public var requestId: String?

    public var signature: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.accessid != nil {
            map["Accessid"] = self.accessid!
        }
        if self.encodedPolicy != nil {
            map["EncodedPolicy"] = self.encodedPolicy!
        }
        if self.expireTime != nil {
            map["ExpireTime"] = self.expireTime!
        }
        if self.fileDir != nil {
            map["FileDir"] = self.fileDir!
        }
        if self.host != nil {
            map["Host"] = self.host!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.signature != nil {
            map["Signature"] = self.signature!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Accessid"] as? String {
            self.accessid = value
        }
        if let value = dict["EncodedPolicy"] as? String {
            self.encodedPolicy = value
        }
        if let value = dict["ExpireTime"] as? String {
            self.expireTime = value
        }
        if let value = dict["FileDir"] as? String {
            self.fileDir = value
        }
        if let value = dict["Host"] as? String {
            self.host = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Signature"] as? String {
            self.signature = value
        }
    }
}

public class GetOperationOssUploadPolicyResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetOperationOssUploadPolicyResponseBody?

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
            var model = GetOperationOssUploadPolicyResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetQualificationUploadPolicyRequest : Tea.TeaModel {
    public var lang: String?

    public var userClientIp: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.lang != nil {
            map["Lang"] = self.lang!
        }
        if self.userClientIp != nil {
            map["UserClientIp"] = self.userClientIp!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Lang"] as? String {
            self.lang = value
        }
        if let value = dict["UserClientIp"] as? String {
            self.userClientIp = value
        }
    }
}

public class GetQualificationUploadPolicyResponseBody : Tea.TeaModel {
    public var accessid: String?

    public var dir: String?

    public var expire: String?

    public var host: String?

    public var policy: String?

    public var prefix_: String?

    public var requestId: String?

    public var signature: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.accessid != nil {
            map["Accessid"] = self.accessid!
        }
        if self.dir != nil {
            map["Dir"] = self.dir!
        }
        if self.expire != nil {
            map["Expire"] = self.expire!
        }
        if self.host != nil {
            map["Host"] = self.host!
        }
        if self.policy != nil {
            map["Policy"] = self.policy!
        }
        if self.prefix_ != nil {
            map["Prefix"] = self.prefix_!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.signature != nil {
            map["Signature"] = self.signature!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Accessid"] as? String {
            self.accessid = value
        }
        if let value = dict["Dir"] as? String {
            self.dir = value
        }
        if let value = dict["Expire"] as? String {
            self.expire = value
        }
        if let value = dict["Host"] as? String {
            self.host = value
        }
        if let value = dict["Policy"] as? String {
            self.policy = value
        }
        if let value = dict["Prefix"] as? String {
            self.prefix_ = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Signature"] as? String {
            self.signature = value
        }
    }
}

public class GetQualificationUploadPolicyResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetQualificationUploadPolicyResponseBody?

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
            var model = GetQualificationUploadPolicyResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ListEmailVerificationRequest : Tea.TeaModel {
    public var beginCreateTime: Int64?

    public var email: String?

    public var endCreateTime: Int64?

    public var lang: String?

    public var pageNum: Int32?

    public var pageSize: Int32?

    public var userClientIp: String?

    public var verificationStatus: Int32?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.beginCreateTime != nil {
            map["BeginCreateTime"] = self.beginCreateTime!
        }
        if self.email != nil {
            map["Email"] = self.email!
        }
        if self.endCreateTime != nil {
            map["EndCreateTime"] = self.endCreateTime!
        }
        if self.lang != nil {
            map["Lang"] = self.lang!
        }
        if self.pageNum != nil {
            map["PageNum"] = self.pageNum!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.userClientIp != nil {
            map["UserClientIp"] = self.userClientIp!
        }
        if self.verificationStatus != nil {
            map["VerificationStatus"] = self.verificationStatus!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["BeginCreateTime"] as? Int64 {
            self.beginCreateTime = value
        }
        if let value = dict["Email"] as? String {
            self.email = value
        }
        if let value = dict["EndCreateTime"] as? Int64 {
            self.endCreateTime = value
        }
        if let value = dict["Lang"] as? String {
            self.lang = value
        }
        if let value = dict["PageNum"] as? Int32 {
            self.pageNum = value
        }
        if let value = dict["PageSize"] as? Int32 {
            self.pageSize = value
        }
        if let value = dict["UserClientIp"] as? String {
            self.userClientIp = value
        }
        if let value = dict["VerificationStatus"] as? Int32 {
            self.verificationStatus = value
        }
    }
}

public class ListEmailVerificationResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var confirmIp: String?

        public var email: String?

        public var emailVerificationNo: String?

        public var gmtCreate: String?

        public var gmtModified: String?

        public var sendIp: String?

        public var tokenSendTime: String?

        public var userId: String?

        public var verificationStatus: Int32?

        public var verificationTime: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.confirmIp != nil {
                map["ConfirmIp"] = self.confirmIp!
            }
            if self.email != nil {
                map["Email"] = self.email!
            }
            if self.emailVerificationNo != nil {
                map["EmailVerificationNo"] = self.emailVerificationNo!
            }
            if self.gmtCreate != nil {
                map["GmtCreate"] = self.gmtCreate!
            }
            if self.gmtModified != nil {
                map["GmtModified"] = self.gmtModified!
            }
            if self.sendIp != nil {
                map["SendIp"] = self.sendIp!
            }
            if self.tokenSendTime != nil {
                map["TokenSendTime"] = self.tokenSendTime!
            }
            if self.userId != nil {
                map["UserId"] = self.userId!
            }
            if self.verificationStatus != nil {
                map["VerificationStatus"] = self.verificationStatus!
            }
            if self.verificationTime != nil {
                map["VerificationTime"] = self.verificationTime!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["ConfirmIp"] as? String {
                self.confirmIp = value
            }
            if let value = dict["Email"] as? String {
                self.email = value
            }
            if let value = dict["EmailVerificationNo"] as? String {
                self.emailVerificationNo = value
            }
            if let value = dict["GmtCreate"] as? String {
                self.gmtCreate = value
            }
            if let value = dict["GmtModified"] as? String {
                self.gmtModified = value
            }
            if let value = dict["SendIp"] as? String {
                self.sendIp = value
            }
            if let value = dict["TokenSendTime"] as? String {
                self.tokenSendTime = value
            }
            if let value = dict["UserId"] as? String {
                self.userId = value
            }
            if let value = dict["VerificationStatus"] as? Int32 {
                self.verificationStatus = value
            }
            if let value = dict["VerificationTime"] as? String {
                self.verificationTime = value
            }
        }
    }
    public var currentPageNum: Int32?

    public var data: [ListEmailVerificationResponseBody.Data]?

    public var nextPage: Bool?

    public var pageSize: Int32?

    public var prePage: Bool?

    public var requestId: String?

    public var totalItemNum: Int32?

    public var totalPageNum: Int32?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.currentPageNum != nil {
            map["CurrentPageNum"] = self.currentPageNum!
        }
        if self.data != nil {
            var tmp : [Any] = []
            for k in self.data! {
                tmp.append(k.toMap())
            }
            map["Data"] = tmp
        }
        if self.nextPage != nil {
            map["NextPage"] = self.nextPage!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.prePage != nil {
            map["PrePage"] = self.prePage!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.totalItemNum != nil {
            map["TotalItemNum"] = self.totalItemNum!
        }
        if self.totalPageNum != nil {
            map["TotalPageNum"] = self.totalPageNum!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["CurrentPageNum"] as? Int32 {
            self.currentPageNum = value
        }
        if let value = dict["Data"] as? [Any?] {
            var tmp : [ListEmailVerificationResponseBody.Data] = []
            for v in value {
                if v != nil {
                    var model = ListEmailVerificationResponseBody.Data()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.data = tmp
        }
        if let value = dict["NextPage"] as? Bool {
            self.nextPage = value
        }
        if let value = dict["PageSize"] as? Int32 {
            self.pageSize = value
        }
        if let value = dict["PrePage"] as? Bool {
            self.prePage = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["TotalItemNum"] as? Int32 {
            self.totalItemNum = value
        }
        if let value = dict["TotalPageNum"] as? Int32 {
            self.totalPageNum = value
        }
    }
}

public class ListEmailVerificationResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListEmailVerificationResponseBody?

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
            var model = ListEmailVerificationResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ListServerLockRequest : Tea.TeaModel {
    public var beginStartDate: Int64?

    public var domainName: String?

    public var endExpireDate: Int64?

    public var endStartDate: Int64?

    public var lang: String?

    public var lockProductId: String?

    public var orderBy: String?

    public var orderByType: String?

    public var pageNum: Int32?

    public var pageSize: Int32?

    public var serverLockStatus: Int32?

    public var startExpireDate: Int64?

    public var userClientIp: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.beginStartDate != nil {
            map["BeginStartDate"] = self.beginStartDate!
        }
        if self.domainName != nil {
            map["DomainName"] = self.domainName!
        }
        if self.endExpireDate != nil {
            map["EndExpireDate"] = self.endExpireDate!
        }
        if self.endStartDate != nil {
            map["EndStartDate"] = self.endStartDate!
        }
        if self.lang != nil {
            map["Lang"] = self.lang!
        }
        if self.lockProductId != nil {
            map["LockProductId"] = self.lockProductId!
        }
        if self.orderBy != nil {
            map["OrderBy"] = self.orderBy!
        }
        if self.orderByType != nil {
            map["OrderByType"] = self.orderByType!
        }
        if self.pageNum != nil {
            map["PageNum"] = self.pageNum!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.serverLockStatus != nil {
            map["ServerLockStatus"] = self.serverLockStatus!
        }
        if self.startExpireDate != nil {
            map["StartExpireDate"] = self.startExpireDate!
        }
        if self.userClientIp != nil {
            map["UserClientIp"] = self.userClientIp!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["BeginStartDate"] as? Int64 {
            self.beginStartDate = value
        }
        if let value = dict["DomainName"] as? String {
            self.domainName = value
        }
        if let value = dict["EndExpireDate"] as? Int64 {
            self.endExpireDate = value
        }
        if let value = dict["EndStartDate"] as? Int64 {
            self.endStartDate = value
        }
        if let value = dict["Lang"] as? String {
            self.lang = value
        }
        if let value = dict["LockProductId"] as? String {
            self.lockProductId = value
        }
        if let value = dict["OrderBy"] as? String {
            self.orderBy = value
        }
        if let value = dict["OrderByType"] as? String {
            self.orderByType = value
        }
        if let value = dict["PageNum"] as? Int32 {
            self.pageNum = value
        }
        if let value = dict["PageSize"] as? Int32 {
            self.pageSize = value
        }
        if let value = dict["ServerLockStatus"] as? Int32 {
            self.serverLockStatus = value
        }
        if let value = dict["StartExpireDate"] as? Int64 {
            self.startExpireDate = value
        }
        if let value = dict["UserClientIp"] as? String {
            self.userClientIp = value
        }
    }
}

public class ListServerLockResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var domainInstanceId: String?

        public var domainName: String?

        public var expireDate: String?

        public var gmtCreate: String?

        public var gmtModified: String?

        public var lockInstanceId: String?

        public var lockProductId: String?

        public var serverLockStatus: String?

        public var startDate: String?

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
            if self.domainInstanceId != nil {
                map["DomainInstanceId"] = self.domainInstanceId!
            }
            if self.domainName != nil {
                map["DomainName"] = self.domainName!
            }
            if self.expireDate != nil {
                map["ExpireDate"] = self.expireDate!
            }
            if self.gmtCreate != nil {
                map["GmtCreate"] = self.gmtCreate!
            }
            if self.gmtModified != nil {
                map["GmtModified"] = self.gmtModified!
            }
            if self.lockInstanceId != nil {
                map["LockInstanceId"] = self.lockInstanceId!
            }
            if self.lockProductId != nil {
                map["LockProductId"] = self.lockProductId!
            }
            if self.serverLockStatus != nil {
                map["ServerLockStatus"] = self.serverLockStatus!
            }
            if self.startDate != nil {
                map["StartDate"] = self.startDate!
            }
            if self.userId != nil {
                map["UserId"] = self.userId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["DomainInstanceId"] as? String {
                self.domainInstanceId = value
            }
            if let value = dict["DomainName"] as? String {
                self.domainName = value
            }
            if let value = dict["ExpireDate"] as? String {
                self.expireDate = value
            }
            if let value = dict["GmtCreate"] as? String {
                self.gmtCreate = value
            }
            if let value = dict["GmtModified"] as? String {
                self.gmtModified = value
            }
            if let value = dict["LockInstanceId"] as? String {
                self.lockInstanceId = value
            }
            if let value = dict["LockProductId"] as? String {
                self.lockProductId = value
            }
            if let value = dict["ServerLockStatus"] as? String {
                self.serverLockStatus = value
            }
            if let value = dict["StartDate"] as? String {
                self.startDate = value
            }
            if let value = dict["UserId"] as? String {
                self.userId = value
            }
        }
    }
    public var currentPageNum: Int32?

    public var data: [ListServerLockResponseBody.Data]?

    public var nextPage: Bool?

    public var pageSize: Int32?

    public var prePage: Bool?

    public var requestId: String?

    public var totalItemNum: Int32?

    public var totalPageNum: Int32?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.currentPageNum != nil {
            map["CurrentPageNum"] = self.currentPageNum!
        }
        if self.data != nil {
            var tmp : [Any] = []
            for k in self.data! {
                tmp.append(k.toMap())
            }
            map["Data"] = tmp
        }
        if self.nextPage != nil {
            map["NextPage"] = self.nextPage!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.prePage != nil {
            map["PrePage"] = self.prePage!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.totalItemNum != nil {
            map["TotalItemNum"] = self.totalItemNum!
        }
        if self.totalPageNum != nil {
            map["TotalPageNum"] = self.totalPageNum!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["CurrentPageNum"] as? Int32 {
            self.currentPageNum = value
        }
        if let value = dict["Data"] as? [Any?] {
            var tmp : [ListServerLockResponseBody.Data] = []
            for v in value {
                if v != nil {
                    var model = ListServerLockResponseBody.Data()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.data = tmp
        }
        if let value = dict["NextPage"] as? Bool {
            self.nextPage = value
        }
        if let value = dict["PageSize"] as? Int32 {
            self.pageSize = value
        }
        if let value = dict["PrePage"] as? Bool {
            self.prePage = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["TotalItemNum"] as? Int32 {
            self.totalItemNum = value
        }
        if let value = dict["TotalPageNum"] as? Int32 {
            self.totalPageNum = value
        }
    }
}

public class ListServerLockResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListServerLockResponseBody?

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
            var model = ListServerLockResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class LookupTmchNoticeRequest : Tea.TeaModel {
    public var claimKey: String?

    public var lang: String?

    public var userClientIp: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.claimKey != nil {
            map["ClaimKey"] = self.claimKey!
        }
        if self.lang != nil {
            map["Lang"] = self.lang!
        }
        if self.userClientIp != nil {
            map["UserClientIp"] = self.userClientIp!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ClaimKey"] as? String {
            self.claimKey = value
        }
        if let value = dict["Lang"] as? String {
            self.lang = value
        }
        if let value = dict["UserClientIp"] as? String {
            self.userClientIp = value
        }
    }
}

public class LookupTmchNoticeResponseBody : Tea.TeaModel {
    public class Claims : Tea.TeaModel {
        public class Claim : Tea.TeaModel {
            public class ClassDescs : Tea.TeaModel {
                public class ClassDesc : Tea.TeaModel {
                    public var classNum: Int32?

                    public var desc: String?

                    public override init() {
                        super.init()
                    }

                    public init(_ dict: [String: Any]) {
                        super.init()
                        self.fromMap(dict)
                    }

                    public override func validate() throws -> Void {
                    }

                    public override func toMap() -> [String : Any] {
                        var map = super.toMap()
                        if self.classNum != nil {
                            map["ClassNum"] = self.classNum!
                        }
                        if self.desc != nil {
                            map["Desc"] = self.desc!
                        }
                        return map
                    }

                    public override func fromMap(_ dict: [String: Any?]?) -> Void {
                        guard let dict else { return }
                        if let value = dict["ClassNum"] as? Int32 {
                            self.classNum = value
                        }
                        if let value = dict["Desc"] as? String {
                            self.desc = value
                        }
                    }
                }
                public var classDesc: [LookupTmchNoticeResponseBody.Claims.Claim.ClassDescs.ClassDesc]?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.classDesc != nil {
                        var tmp : [Any] = []
                        for k in self.classDesc! {
                            tmp.append(k.toMap())
                        }
                        map["ClassDesc"] = tmp
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["ClassDesc"] as? [Any?] {
                        var tmp : [LookupTmchNoticeResponseBody.Claims.Claim.ClassDescs.ClassDesc] = []
                        for v in value {
                            if v != nil {
                                var model = LookupTmchNoticeResponseBody.Claims.Claim.ClassDescs.ClassDesc()
                                if v != nil {
                                    model.fromMap(v as? [String: Any?])
                                }
                                tmp.append(model)
                            }
                        }
                        self.classDesc = tmp
                    }
                }
            }
            public class Contacts : Tea.TeaModel {
                public class Contact : Tea.TeaModel {
                    public class Addr : Tea.TeaModel {
                        public class Street : Tea.TeaModel {
                            public var street: [String]?

                            public override init() {
                                super.init()
                            }

                            public init(_ dict: [String: Any]) {
                                super.init()
                                self.fromMap(dict)
                            }

                            public override func validate() throws -> Void {
                            }

                            public override func toMap() -> [String : Any] {
                                var map = super.toMap()
                                if self.street != nil {
                                    map["Street"] = self.street!
                                }
                                return map
                            }

                            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                                guard let dict else { return }
                                if let value = dict["Street"] as? [String] {
                                    self.street = value
                                }
                            }
                        }
                        public var cc: String?

                        public var city: String?

                        public var pc: String?

                        public var sp: String?

                        public var street: LookupTmchNoticeResponseBody.Claims.Claim.Contacts.Contact.Addr.Street?

                        public override init() {
                            super.init()
                        }

                        public init(_ dict: [String: Any]) {
                            super.init()
                            self.fromMap(dict)
                        }

                        public override func validate() throws -> Void {
                            try self.street?.validate()
                        }

                        public override func toMap() -> [String : Any] {
                            var map = super.toMap()
                            if self.cc != nil {
                                map["Cc"] = self.cc!
                            }
                            if self.city != nil {
                                map["City"] = self.city!
                            }
                            if self.pc != nil {
                                map["Pc"] = self.pc!
                            }
                            if self.sp != nil {
                                map["Sp"] = self.sp!
                            }
                            if self.street != nil {
                                map["Street"] = self.street?.toMap()
                            }
                            return map
                        }

                        public override func fromMap(_ dict: [String: Any?]?) -> Void {
                            guard let dict else { return }
                            if let value = dict["Cc"] as? String {
                                self.cc = value
                            }
                            if let value = dict["City"] as? String {
                                self.city = value
                            }
                            if let value = dict["Pc"] as? String {
                                self.pc = value
                            }
                            if let value = dict["Sp"] as? String {
                                self.sp = value
                            }
                            if let value = dict["Street"] as? [String: Any?] {
                                var model = LookupTmchNoticeResponseBody.Claims.Claim.Contacts.Contact.Addr.Street()
                                model.fromMap(value)
                                self.street = model
                            }
                        }
                    }
                    public var addr: LookupTmchNoticeResponseBody.Claims.Claim.Contacts.Contact.Addr?

                    public var email: String?

                    public var fax: String?

                    public var name: String?

                    public var org: String?

                    public var type: String?

                    public var voice: String?

                    public override init() {
                        super.init()
                    }

                    public init(_ dict: [String: Any]) {
                        super.init()
                        self.fromMap(dict)
                    }

                    public override func validate() throws -> Void {
                        try self.addr?.validate()
                    }

                    public override func toMap() -> [String : Any] {
                        var map = super.toMap()
                        if self.addr != nil {
                            map["Addr"] = self.addr?.toMap()
                        }
                        if self.email != nil {
                            map["Email"] = self.email!
                        }
                        if self.fax != nil {
                            map["Fax"] = self.fax!
                        }
                        if self.name != nil {
                            map["Name"] = self.name!
                        }
                        if self.org != nil {
                            map["Org"] = self.org!
                        }
                        if self.type != nil {
                            map["Type"] = self.type!
                        }
                        if self.voice != nil {
                            map["Voice"] = self.voice!
                        }
                        return map
                    }

                    public override func fromMap(_ dict: [String: Any?]?) -> Void {
                        guard let dict else { return }
                        if let value = dict["Addr"] as? [String: Any?] {
                            var model = LookupTmchNoticeResponseBody.Claims.Claim.Contacts.Contact.Addr()
                            model.fromMap(value)
                            self.addr = model
                        }
                        if let value = dict["Email"] as? String {
                            self.email = value
                        }
                        if let value = dict["Fax"] as? String {
                            self.fax = value
                        }
                        if let value = dict["Name"] as? String {
                            self.name = value
                        }
                        if let value = dict["Org"] as? String {
                            self.org = value
                        }
                        if let value = dict["Type"] as? String {
                            self.type = value
                        }
                        if let value = dict["Voice"] as? String {
                            self.voice = value
                        }
                    }
                }
                public var contact: [LookupTmchNoticeResponseBody.Claims.Claim.Contacts.Contact]?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.contact != nil {
                        var tmp : [Any] = []
                        for k in self.contact! {
                            tmp.append(k.toMap())
                        }
                        map["Contact"] = tmp
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["Contact"] as? [Any?] {
                        var tmp : [LookupTmchNoticeResponseBody.Claims.Claim.Contacts.Contact] = []
                        for v in value {
                            if v != nil {
                                var model = LookupTmchNoticeResponseBody.Claims.Claim.Contacts.Contact()
                                if v != nil {
                                    model.fromMap(v as? [String: Any?])
                                }
                                tmp.append(model)
                            }
                        }
                        self.contact = tmp
                    }
                }
            }
            public class Holders : Tea.TeaModel {
                public class Holder : Tea.TeaModel {
                    public class Addr : Tea.TeaModel {
                        public class Street : Tea.TeaModel {
                            public var street: [String]?

                            public override init() {
                                super.init()
                            }

                            public init(_ dict: [String: Any]) {
                                super.init()
                                self.fromMap(dict)
                            }

                            public override func validate() throws -> Void {
                            }

                            public override func toMap() -> [String : Any] {
                                var map = super.toMap()
                                if self.street != nil {
                                    map["Street"] = self.street!
                                }
                                return map
                            }

                            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                                guard let dict else { return }
                                if let value = dict["Street"] as? [String] {
                                    self.street = value
                                }
                            }
                        }
                        public var cc: String?

                        public var city: String?

                        public var pc: String?

                        public var sp: String?

                        public var street: LookupTmchNoticeResponseBody.Claims.Claim.Holders.Holder.Addr.Street?

                        public override init() {
                            super.init()
                        }

                        public init(_ dict: [String: Any]) {
                            super.init()
                            self.fromMap(dict)
                        }

                        public override func validate() throws -> Void {
                            try self.street?.validate()
                        }

                        public override func toMap() -> [String : Any] {
                            var map = super.toMap()
                            if self.cc != nil {
                                map["Cc"] = self.cc!
                            }
                            if self.city != nil {
                                map["City"] = self.city!
                            }
                            if self.pc != nil {
                                map["Pc"] = self.pc!
                            }
                            if self.sp != nil {
                                map["Sp"] = self.sp!
                            }
                            if self.street != nil {
                                map["Street"] = self.street?.toMap()
                            }
                            return map
                        }

                        public override func fromMap(_ dict: [String: Any?]?) -> Void {
                            guard let dict else { return }
                            if let value = dict["Cc"] as? String {
                                self.cc = value
                            }
                            if let value = dict["City"] as? String {
                                self.city = value
                            }
                            if let value = dict["Pc"] as? String {
                                self.pc = value
                            }
                            if let value = dict["Sp"] as? String {
                                self.sp = value
                            }
                            if let value = dict["Street"] as? [String: Any?] {
                                var model = LookupTmchNoticeResponseBody.Claims.Claim.Holders.Holder.Addr.Street()
                                model.fromMap(value)
                                self.street = model
                            }
                        }
                    }
                    public var addr: LookupTmchNoticeResponseBody.Claims.Claim.Holders.Holder.Addr?

                    public var entitlement: String?

                    public var org: String?

                    public override init() {
                        super.init()
                    }

                    public init(_ dict: [String: Any]) {
                        super.init()
                        self.fromMap(dict)
                    }

                    public override func validate() throws -> Void {
                        try self.addr?.validate()
                    }

                    public override func toMap() -> [String : Any] {
                        var map = super.toMap()
                        if self.addr != nil {
                            map["Addr"] = self.addr?.toMap()
                        }
                        if self.entitlement != nil {
                            map["Entitlement"] = self.entitlement!
                        }
                        if self.org != nil {
                            map["Org"] = self.org!
                        }
                        return map
                    }

                    public override func fromMap(_ dict: [String: Any?]?) -> Void {
                        guard let dict else { return }
                        if let value = dict["Addr"] as? [String: Any?] {
                            var model = LookupTmchNoticeResponseBody.Claims.Claim.Holders.Holder.Addr()
                            model.fromMap(value)
                            self.addr = model
                        }
                        if let value = dict["Entitlement"] as? String {
                            self.entitlement = value
                        }
                        if let value = dict["Org"] as? String {
                            self.org = value
                        }
                    }
                }
                public var holder: [LookupTmchNoticeResponseBody.Claims.Claim.Holders.Holder]?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.holder != nil {
                        var tmp : [Any] = []
                        for k in self.holder! {
                            tmp.append(k.toMap())
                        }
                        map["Holder"] = tmp
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["Holder"] as? [Any?] {
                        var tmp : [LookupTmchNoticeResponseBody.Claims.Claim.Holders.Holder] = []
                        for v in value {
                            if v != nil {
                                var model = LookupTmchNoticeResponseBody.Claims.Claim.Holders.Holder()
                                if v != nil {
                                    model.fromMap(v as? [String: Any?])
                                }
                                tmp.append(model)
                            }
                        }
                        self.holder = tmp
                    }
                }
            }
            public class JurDesc : Tea.TeaModel {
                public var desc: String?

                public var jurCC: String?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.desc != nil {
                        map["Desc"] = self.desc!
                    }
                    if self.jurCC != nil {
                        map["JurCC"] = self.jurCC!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["Desc"] as? String {
                        self.desc = value
                    }
                    if let value = dict["JurCC"] as? String {
                        self.jurCC = value
                    }
                }
            }
            public var classDescs: LookupTmchNoticeResponseBody.Claims.Claim.ClassDescs?

            public var contacts: LookupTmchNoticeResponseBody.Claims.Claim.Contacts?

            public var goodsAndServices: String?

            public var holders: LookupTmchNoticeResponseBody.Claims.Claim.Holders?

            public var jurDesc: LookupTmchNoticeResponseBody.Claims.Claim.JurDesc?

            public var markName: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
                try self.classDescs?.validate()
                try self.contacts?.validate()
                try self.holders?.validate()
                try self.jurDesc?.validate()
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.classDescs != nil {
                    map["ClassDescs"] = self.classDescs?.toMap()
                }
                if self.contacts != nil {
                    map["Contacts"] = self.contacts?.toMap()
                }
                if self.goodsAndServices != nil {
                    map["GoodsAndServices"] = self.goodsAndServices!
                }
                if self.holders != nil {
                    map["Holders"] = self.holders?.toMap()
                }
                if self.jurDesc != nil {
                    map["JurDesc"] = self.jurDesc?.toMap()
                }
                if self.markName != nil {
                    map["MarkName"] = self.markName!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["ClassDescs"] as? [String: Any?] {
                    var model = LookupTmchNoticeResponseBody.Claims.Claim.ClassDescs()
                    model.fromMap(value)
                    self.classDescs = model
                }
                if let value = dict["Contacts"] as? [String: Any?] {
                    var model = LookupTmchNoticeResponseBody.Claims.Claim.Contacts()
                    model.fromMap(value)
                    self.contacts = model
                }
                if let value = dict["GoodsAndServices"] as? String {
                    self.goodsAndServices = value
                }
                if let value = dict["Holders"] as? [String: Any?] {
                    var model = LookupTmchNoticeResponseBody.Claims.Claim.Holders()
                    model.fromMap(value)
                    self.holders = model
                }
                if let value = dict["JurDesc"] as? [String: Any?] {
                    var model = LookupTmchNoticeResponseBody.Claims.Claim.JurDesc()
                    model.fromMap(value)
                    self.jurDesc = model
                }
                if let value = dict["MarkName"] as? String {
                    self.markName = value
                }
            }
        }
        public var claim: [LookupTmchNoticeResponseBody.Claims.Claim]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.claim != nil {
                var tmp : [Any] = []
                for k in self.claim! {
                    tmp.append(k.toMap())
                }
                map["Claim"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Claim"] as? [Any?] {
                var tmp : [LookupTmchNoticeResponseBody.Claims.Claim] = []
                for v in value {
                    if v != nil {
                        var model = LookupTmchNoticeResponseBody.Claims.Claim()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.claim = tmp
            }
        }
    }
    public var claims: LookupTmchNoticeResponseBody.Claims?

    public var id: Int64?

    public var label: String?

    public var notAfter: String?

    public var notBefore: String?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.claims?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.claims != nil {
            map["Claims"] = self.claims?.toMap()
        }
        if self.id != nil {
            map["Id"] = self.id!
        }
        if self.label != nil {
            map["Label"] = self.label!
        }
        if self.notAfter != nil {
            map["NotAfter"] = self.notAfter!
        }
        if self.notBefore != nil {
            map["NotBefore"] = self.notBefore!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Claims"] as? [String: Any?] {
            var model = LookupTmchNoticeResponseBody.Claims()
            model.fromMap(value)
            self.claims = model
        }
        if let value = dict["Id"] as? Int64 {
            self.id = value
        }
        if let value = dict["Label"] as? String {
            self.label = value
        }
        if let value = dict["NotAfter"] as? String {
            self.notAfter = value
        }
        if let value = dict["NotBefore"] as? String {
            self.notBefore = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class LookupTmchNoticeResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: LookupTmchNoticeResponseBody?

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
            var model = LookupTmchNoticeResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class PollTaskResultRequest : Tea.TeaModel {
    public var domainName: String?

    public var instanceId: String?

    public var lang: String?

    public var pageNum: Int32?

    public var pageSize: Int32?

    public var taskNo: String?

    public var taskResultStatus: Int32?

    public var userClientIp: String?

    public override init() {
        super.init()
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
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.lang != nil {
            map["Lang"] = self.lang!
        }
        if self.pageNum != nil {
            map["PageNum"] = self.pageNum!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.taskNo != nil {
            map["TaskNo"] = self.taskNo!
        }
        if self.taskResultStatus != nil {
            map["TaskResultStatus"] = self.taskResultStatus!
        }
        if self.userClientIp != nil {
            map["UserClientIp"] = self.userClientIp!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["DomainName"] as? String {
            self.domainName = value
        }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["Lang"] as? String {
            self.lang = value
        }
        if let value = dict["PageNum"] as? Int32 {
            self.pageNum = value
        }
        if let value = dict["PageSize"] as? Int32 {
            self.pageSize = value
        }
        if let value = dict["TaskNo"] as? String {
            self.taskNo = value
        }
        if let value = dict["TaskResultStatus"] as? Int32 {
            self.taskResultStatus = value
        }
        if let value = dict["UserClientIp"] as? String {
            self.userClientIp = value
        }
    }
}

public class PollTaskResultResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class TaskDetail : Tea.TeaModel {
            public var createTime: String?

            public var domainName: String?

            public var errorMsg: String?

            public var instanceId: String?

            public var taskDetailNo: String?

            public var taskNo: String?

            public var taskResult: String?

            public var taskStatus: String?

            public var taskStatusCode: Int32?

            public var taskType: String?

            public var taskTypeDescription: String?

            public var tryCount: Int32?

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
                if self.domainName != nil {
                    map["DomainName"] = self.domainName!
                }
                if self.errorMsg != nil {
                    map["ErrorMsg"] = self.errorMsg!
                }
                if self.instanceId != nil {
                    map["InstanceId"] = self.instanceId!
                }
                if self.taskDetailNo != nil {
                    map["TaskDetailNo"] = self.taskDetailNo!
                }
                if self.taskNo != nil {
                    map["TaskNo"] = self.taskNo!
                }
                if self.taskResult != nil {
                    map["TaskResult"] = self.taskResult!
                }
                if self.taskStatus != nil {
                    map["TaskStatus"] = self.taskStatus!
                }
                if self.taskStatusCode != nil {
                    map["TaskStatusCode"] = self.taskStatusCode!
                }
                if self.taskType != nil {
                    map["TaskType"] = self.taskType!
                }
                if self.taskTypeDescription != nil {
                    map["TaskTypeDescription"] = self.taskTypeDescription!
                }
                if self.tryCount != nil {
                    map["TryCount"] = self.tryCount!
                }
                if self.updateTime != nil {
                    map["UpdateTime"] = self.updateTime!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["CreateTime"] as? String {
                    self.createTime = value
                }
                if let value = dict["DomainName"] as? String {
                    self.domainName = value
                }
                if let value = dict["ErrorMsg"] as? String {
                    self.errorMsg = value
                }
                if let value = dict["InstanceId"] as? String {
                    self.instanceId = value
                }
                if let value = dict["TaskDetailNo"] as? String {
                    self.taskDetailNo = value
                }
                if let value = dict["TaskNo"] as? String {
                    self.taskNo = value
                }
                if let value = dict["TaskResult"] as? String {
                    self.taskResult = value
                }
                if let value = dict["TaskStatus"] as? String {
                    self.taskStatus = value
                }
                if let value = dict["TaskStatusCode"] as? Int32 {
                    self.taskStatusCode = value
                }
                if let value = dict["TaskType"] as? String {
                    self.taskType = value
                }
                if let value = dict["TaskTypeDescription"] as? String {
                    self.taskTypeDescription = value
                }
                if let value = dict["TryCount"] as? Int32 {
                    self.tryCount = value
                }
                if let value = dict["UpdateTime"] as? String {
                    self.updateTime = value
                }
            }
        }
        public var taskDetail: [PollTaskResultResponseBody.Data.TaskDetail]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.taskDetail != nil {
                var tmp : [Any] = []
                for k in self.taskDetail! {
                    tmp.append(k.toMap())
                }
                map["TaskDetail"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["TaskDetail"] as? [Any?] {
                var tmp : [PollTaskResultResponseBody.Data.TaskDetail] = []
                for v in value {
                    if v != nil {
                        var model = PollTaskResultResponseBody.Data.TaskDetail()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.taskDetail = tmp
            }
        }
    }
    public var currentPageNum: Int32?

    public var data: PollTaskResultResponseBody.Data?

    public var nextPage: Bool?

    public var pageSize: Int32?

    public var prePage: Bool?

    public var requestId: String?

    public var totalItemNum: Int32?

    public var totalPageNum: Int32?

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
        if self.currentPageNum != nil {
            map["CurrentPageNum"] = self.currentPageNum!
        }
        if self.data != nil {
            map["Data"] = self.data?.toMap()
        }
        if self.nextPage != nil {
            map["NextPage"] = self.nextPage!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.prePage != nil {
            map["PrePage"] = self.prePage!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.totalItemNum != nil {
            map["TotalItemNum"] = self.totalItemNum!
        }
        if self.totalPageNum != nil {
            map["TotalPageNum"] = self.totalPageNum!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["CurrentPageNum"] as? Int32 {
            self.currentPageNum = value
        }
        if let value = dict["Data"] as? [String: Any?] {
            var model = PollTaskResultResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["NextPage"] as? Bool {
            self.nextPage = value
        }
        if let value = dict["PageSize"] as? Int32 {
            self.pageSize = value
        }
        if let value = dict["PrePage"] as? Bool {
            self.prePage = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["TotalItemNum"] as? Int32 {
            self.totalItemNum = value
        }
        if let value = dict["TotalPageNum"] as? Int32 {
            self.totalPageNum = value
        }
    }
}

public class PollTaskResultResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: PollTaskResultResponseBody?

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
            var model = PollTaskResultResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class QueryAdvancedDomainListRequest : Tea.TeaModel {
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
    public var domainGroupId: Int64?

    public var domainNameSort: Bool?

    public var domainStatus: Int32?

    public var endExpirationDate: Int64?

    public var endLength: Int32?

    public var endRegistrationDate: Int64?

    public var excluded: String?

    public var excludedPrefix: Bool?

    public var excludedSuffix: Bool?

    public var expirationDateSort: Bool?

    public var form: Int32?

    public var isPremiumDomain: Bool?

    public var keyWord: String?

    public var keyWordPrefix: Bool?

    public var keyWordSuffix: Bool?

    public var lang: String?

    public var pageNum: Int32?

    public var pageSize: Int32?

    public var productDomainType: String?

    public var productDomainTypeSort: Bool?

    public var registrationDateSort: Bool?

    public var resourceGroupId: String?

    public var startExpirationDate: Int64?

    public var startLength: Int32?

    public var startRegistrationDate: Int64?

    public var suffixs: String?

    public var tag: [QueryAdvancedDomainListRequest.Tag]?

    public var tradeType: Int32?

    public var userClientIp: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.domainGroupId != nil {
            map["DomainGroupId"] = self.domainGroupId!
        }
        if self.domainNameSort != nil {
            map["DomainNameSort"] = self.domainNameSort!
        }
        if self.domainStatus != nil {
            map["DomainStatus"] = self.domainStatus!
        }
        if self.endExpirationDate != nil {
            map["EndExpirationDate"] = self.endExpirationDate!
        }
        if self.endLength != nil {
            map["EndLength"] = self.endLength!
        }
        if self.endRegistrationDate != nil {
            map["EndRegistrationDate"] = self.endRegistrationDate!
        }
        if self.excluded != nil {
            map["Excluded"] = self.excluded!
        }
        if self.excludedPrefix != nil {
            map["ExcludedPrefix"] = self.excludedPrefix!
        }
        if self.excludedSuffix != nil {
            map["ExcludedSuffix"] = self.excludedSuffix!
        }
        if self.expirationDateSort != nil {
            map["ExpirationDateSort"] = self.expirationDateSort!
        }
        if self.form != nil {
            map["Form"] = self.form!
        }
        if self.isPremiumDomain != nil {
            map["IsPremiumDomain"] = self.isPremiumDomain!
        }
        if self.keyWord != nil {
            map["KeyWord"] = self.keyWord!
        }
        if self.keyWordPrefix != nil {
            map["KeyWordPrefix"] = self.keyWordPrefix!
        }
        if self.keyWordSuffix != nil {
            map["KeyWordSuffix"] = self.keyWordSuffix!
        }
        if self.lang != nil {
            map["Lang"] = self.lang!
        }
        if self.pageNum != nil {
            map["PageNum"] = self.pageNum!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.productDomainType != nil {
            map["ProductDomainType"] = self.productDomainType!
        }
        if self.productDomainTypeSort != nil {
            map["ProductDomainTypeSort"] = self.productDomainTypeSort!
        }
        if self.registrationDateSort != nil {
            map["RegistrationDateSort"] = self.registrationDateSort!
        }
        if self.resourceGroupId != nil {
            map["ResourceGroupId"] = self.resourceGroupId!
        }
        if self.startExpirationDate != nil {
            map["StartExpirationDate"] = self.startExpirationDate!
        }
        if self.startLength != nil {
            map["StartLength"] = self.startLength!
        }
        if self.startRegistrationDate != nil {
            map["StartRegistrationDate"] = self.startRegistrationDate!
        }
        if self.suffixs != nil {
            map["Suffixs"] = self.suffixs!
        }
        if self.tag != nil {
            var tmp : [Any] = []
            for k in self.tag! {
                tmp.append(k.toMap())
            }
            map["Tag"] = tmp
        }
        if self.tradeType != nil {
            map["TradeType"] = self.tradeType!
        }
        if self.userClientIp != nil {
            map["UserClientIp"] = self.userClientIp!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["DomainGroupId"] as? Int64 {
            self.domainGroupId = value
        }
        if let value = dict["DomainNameSort"] as? Bool {
            self.domainNameSort = value
        }
        if let value = dict["DomainStatus"] as? Int32 {
            self.domainStatus = value
        }
        if let value = dict["EndExpirationDate"] as? Int64 {
            self.endExpirationDate = value
        }
        if let value = dict["EndLength"] as? Int32 {
            self.endLength = value
        }
        if let value = dict["EndRegistrationDate"] as? Int64 {
            self.endRegistrationDate = value
        }
        if let value = dict["Excluded"] as? String {
            self.excluded = value
        }
        if let value = dict["ExcludedPrefix"] as? Bool {
            self.excludedPrefix = value
        }
        if let value = dict["ExcludedSuffix"] as? Bool {
            self.excludedSuffix = value
        }
        if let value = dict["ExpirationDateSort"] as? Bool {
            self.expirationDateSort = value
        }
        if let value = dict["Form"] as? Int32 {
            self.form = value
        }
        if let value = dict["IsPremiumDomain"] as? Bool {
            self.isPremiumDomain = value
        }
        if let value = dict["KeyWord"] as? String {
            self.keyWord = value
        }
        if let value = dict["KeyWordPrefix"] as? Bool {
            self.keyWordPrefix = value
        }
        if let value = dict["KeyWordSuffix"] as? Bool {
            self.keyWordSuffix = value
        }
        if let value = dict["Lang"] as? String {
            self.lang = value
        }
        if let value = dict["PageNum"] as? Int32 {
            self.pageNum = value
        }
        if let value = dict["PageSize"] as? Int32 {
            self.pageSize = value
        }
        if let value = dict["ProductDomainType"] as? String {
            self.productDomainType = value
        }
        if let value = dict["ProductDomainTypeSort"] as? Bool {
            self.productDomainTypeSort = value
        }
        if let value = dict["RegistrationDateSort"] as? Bool {
            self.registrationDateSort = value
        }
        if let value = dict["ResourceGroupId"] as? String {
            self.resourceGroupId = value
        }
        if let value = dict["StartExpirationDate"] as? Int64 {
            self.startExpirationDate = value
        }
        if let value = dict["StartLength"] as? Int32 {
            self.startLength = value
        }
        if let value = dict["StartRegistrationDate"] as? Int64 {
            self.startRegistrationDate = value
        }
        if let value = dict["Suffixs"] as? String {
            self.suffixs = value
        }
        if let value = dict["Tag"] as? [Any?] {
            var tmp : [QueryAdvancedDomainListRequest.Tag] = []
            for v in value {
                if v != nil {
                    var model = QueryAdvancedDomainListRequest.Tag()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.tag = tmp
        }
        if let value = dict["TradeType"] as? Int32 {
            self.tradeType = value
        }
        if let value = dict["UserClientIp"] as? String {
            self.userClientIp = value
        }
    }
}

public class QueryAdvancedDomainListResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class Domain : Tea.TeaModel {
            public class DnsList : Tea.TeaModel {
                public var dns: [String]?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.dns != nil {
                        map["Dns"] = self.dns!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["Dns"] as? [String] {
                        self.dns = value
                    }
                }
            }
            public class Tag : Tea.TeaModel {
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
                public var tag: [QueryAdvancedDomainListResponseBody.Data.Domain.Tag.Tag]?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.tag != nil {
                        var tmp : [Any] = []
                        for k in self.tag! {
                            tmp.append(k.toMap())
                        }
                        map["Tag"] = tmp
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["Tag"] as? [Any?] {
                        var tmp : [QueryAdvancedDomainListResponseBody.Data.Domain.Tag.Tag] = []
                        for v in value {
                            if v != nil {
                                var model = QueryAdvancedDomainListResponseBody.Data.Domain.Tag.Tag()
                                if v != nil {
                                    model.fromMap(v as? [String: Any?])
                                }
                                tmp.append(model)
                            }
                        }
                        self.tag = tmp
                    }
                }
            }
            public var dnsList: QueryAdvancedDomainListResponseBody.Data.Domain.DnsList?

            public var domainAuditStatus: String?

            public var domainGroupId: String?

            public var domainGroupName: String?

            public var domainName: String?

            public var domainStatus: String?

            public var domainType: String?

            public var email: String?

            public var expirationCurrDateDiff: Int32?

            public var expirationDate: String?

            public var expirationDateLong: Int64?

            public var expirationDateStatus: String?

            public var instanceId: String?

            public var premium: Bool?

            public var productId: String?

            public var registrantOrganization: String?

            public var registrantType: String?

            public var registrationDate: String?

            public var registrationDateLong: Int64?

            public var remark: String?

            public var resourceGroupId: String?

            public var tag: QueryAdvancedDomainListResponseBody.Data.Domain.Tag?

            public var zhRegistrantOrganization: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
                try self.dnsList?.validate()
                try self.tag?.validate()
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.dnsList != nil {
                    map["DnsList"] = self.dnsList?.toMap()
                }
                if self.domainAuditStatus != nil {
                    map["DomainAuditStatus"] = self.domainAuditStatus!
                }
                if self.domainGroupId != nil {
                    map["DomainGroupId"] = self.domainGroupId!
                }
                if self.domainGroupName != nil {
                    map["DomainGroupName"] = self.domainGroupName!
                }
                if self.domainName != nil {
                    map["DomainName"] = self.domainName!
                }
                if self.domainStatus != nil {
                    map["DomainStatus"] = self.domainStatus!
                }
                if self.domainType != nil {
                    map["DomainType"] = self.domainType!
                }
                if self.email != nil {
                    map["Email"] = self.email!
                }
                if self.expirationCurrDateDiff != nil {
                    map["ExpirationCurrDateDiff"] = self.expirationCurrDateDiff!
                }
                if self.expirationDate != nil {
                    map["ExpirationDate"] = self.expirationDate!
                }
                if self.expirationDateLong != nil {
                    map["ExpirationDateLong"] = self.expirationDateLong!
                }
                if self.expirationDateStatus != nil {
                    map["ExpirationDateStatus"] = self.expirationDateStatus!
                }
                if self.instanceId != nil {
                    map["InstanceId"] = self.instanceId!
                }
                if self.premium != nil {
                    map["Premium"] = self.premium!
                }
                if self.productId != nil {
                    map["ProductId"] = self.productId!
                }
                if self.registrantOrganization != nil {
                    map["RegistrantOrganization"] = self.registrantOrganization!
                }
                if self.registrantType != nil {
                    map["RegistrantType"] = self.registrantType!
                }
                if self.registrationDate != nil {
                    map["RegistrationDate"] = self.registrationDate!
                }
                if self.registrationDateLong != nil {
                    map["RegistrationDateLong"] = self.registrationDateLong!
                }
                if self.remark != nil {
                    map["Remark"] = self.remark!
                }
                if self.resourceGroupId != nil {
                    map["ResourceGroupId"] = self.resourceGroupId!
                }
                if self.tag != nil {
                    map["Tag"] = self.tag?.toMap()
                }
                if self.zhRegistrantOrganization != nil {
                    map["ZhRegistrantOrganization"] = self.zhRegistrantOrganization!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["DnsList"] as? [String: Any?] {
                    var model = QueryAdvancedDomainListResponseBody.Data.Domain.DnsList()
                    model.fromMap(value)
                    self.dnsList = model
                }
                if let value = dict["DomainAuditStatus"] as? String {
                    self.domainAuditStatus = value
                }
                if let value = dict["DomainGroupId"] as? String {
                    self.domainGroupId = value
                }
                if let value = dict["DomainGroupName"] as? String {
                    self.domainGroupName = value
                }
                if let value = dict["DomainName"] as? String {
                    self.domainName = value
                }
                if let value = dict["DomainStatus"] as? String {
                    self.domainStatus = value
                }
                if let value = dict["DomainType"] as? String {
                    self.domainType = value
                }
                if let value = dict["Email"] as? String {
                    self.email = value
                }
                if let value = dict["ExpirationCurrDateDiff"] as? Int32 {
                    self.expirationCurrDateDiff = value
                }
                if let value = dict["ExpirationDate"] as? String {
                    self.expirationDate = value
                }
                if let value = dict["ExpirationDateLong"] as? Int64 {
                    self.expirationDateLong = value
                }
                if let value = dict["ExpirationDateStatus"] as? String {
                    self.expirationDateStatus = value
                }
                if let value = dict["InstanceId"] as? String {
                    self.instanceId = value
                }
                if let value = dict["Premium"] as? Bool {
                    self.premium = value
                }
                if let value = dict["ProductId"] as? String {
                    self.productId = value
                }
                if let value = dict["RegistrantOrganization"] as? String {
                    self.registrantOrganization = value
                }
                if let value = dict["RegistrantType"] as? String {
                    self.registrantType = value
                }
                if let value = dict["RegistrationDate"] as? String {
                    self.registrationDate = value
                }
                if let value = dict["RegistrationDateLong"] as? Int64 {
                    self.registrationDateLong = value
                }
                if let value = dict["Remark"] as? String {
                    self.remark = value
                }
                if let value = dict["ResourceGroupId"] as? String {
                    self.resourceGroupId = value
                }
                if let value = dict["Tag"] as? [String: Any?] {
                    var model = QueryAdvancedDomainListResponseBody.Data.Domain.Tag()
                    model.fromMap(value)
                    self.tag = model
                }
                if let value = dict["ZhRegistrantOrganization"] as? String {
                    self.zhRegistrantOrganization = value
                }
            }
        }
        public var domain: [QueryAdvancedDomainListResponseBody.Data.Domain]?

        public override init() {
            super.init()
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Domain"] as? [Any?] {
                var tmp : [QueryAdvancedDomainListResponseBody.Data.Domain] = []
                for v in value {
                    if v != nil {
                        var model = QueryAdvancedDomainListResponseBody.Data.Domain()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.domain = tmp
            }
        }
    }
    public var currentPageNum: Int32?

    public var data: QueryAdvancedDomainListResponseBody.Data?

    public var nextPage: Bool?

    public var pageSize: Int32?

    public var prePage: Bool?

    public var requestId: String?

    public var totalItemNum: Int32?

    public var totalPageNum: Int32?

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
        if self.currentPageNum != nil {
            map["CurrentPageNum"] = self.currentPageNum!
        }
        if self.data != nil {
            map["Data"] = self.data?.toMap()
        }
        if self.nextPage != nil {
            map["NextPage"] = self.nextPage!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.prePage != nil {
            map["PrePage"] = self.prePage!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.totalItemNum != nil {
            map["TotalItemNum"] = self.totalItemNum!
        }
        if self.totalPageNum != nil {
            map["TotalPageNum"] = self.totalPageNum!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["CurrentPageNum"] as? Int32 {
            self.currentPageNum = value
        }
        if let value = dict["Data"] as? [String: Any?] {
            var model = QueryAdvancedDomainListResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["NextPage"] as? Bool {
            self.nextPage = value
        }
        if let value = dict["PageSize"] as? Int32 {
            self.pageSize = value
        }
        if let value = dict["PrePage"] as? Bool {
            self.prePage = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["TotalItemNum"] as? Int32 {
            self.totalItemNum = value
        }
        if let value = dict["TotalPageNum"] as? Int32 {
            self.totalPageNum = value
        }
    }
}

public class QueryAdvancedDomainListResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: QueryAdvancedDomainListResponseBody?

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
            var model = QueryAdvancedDomainListResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class QueryArtExtensionRequest : Tea.TeaModel {
    public var domainName: String?

    public var lang: String?

    public var userClientIp: String?

    public override init() {
        super.init()
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
        if self.lang != nil {
            map["Lang"] = self.lang!
        }
        if self.userClientIp != nil {
            map["UserClientIp"] = self.userClientIp!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["DomainName"] as? String {
            self.domainName = value
        }
        if let value = dict["Lang"] as? String {
            self.lang = value
        }
        if let value = dict["UserClientIp"] as? String {
            self.userClientIp = value
        }
    }
}

public class QueryArtExtensionResponseBody : Tea.TeaModel {
    public var dateOrPeriod: String?

    public var dimensions: String?

    public var features: String?

    public var inscriptionsAndMarkings: String?

    public var maker: String?

    public var materialsAndTechniques: String?

    public var objectType: String?

    public var reference: String?

    public var requestId: String?

    public var subject: String?

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
        if self.dateOrPeriod != nil {
            map["DateOrPeriod"] = self.dateOrPeriod!
        }
        if self.dimensions != nil {
            map["Dimensions"] = self.dimensions!
        }
        if self.features != nil {
            map["Features"] = self.features!
        }
        if self.inscriptionsAndMarkings != nil {
            map["InscriptionsAndMarkings"] = self.inscriptionsAndMarkings!
        }
        if self.maker != nil {
            map["Maker"] = self.maker!
        }
        if self.materialsAndTechniques != nil {
            map["MaterialsAndTechniques"] = self.materialsAndTechniques!
        }
        if self.objectType != nil {
            map["ObjectType"] = self.objectType!
        }
        if self.reference != nil {
            map["Reference"] = self.reference!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.subject != nil {
            map["Subject"] = self.subject!
        }
        if self.title != nil {
            map["Title"] = self.title!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["DateOrPeriod"] as? String {
            self.dateOrPeriod = value
        }
        if let value = dict["Dimensions"] as? String {
            self.dimensions = value
        }
        if let value = dict["Features"] as? String {
            self.features = value
        }
        if let value = dict["InscriptionsAndMarkings"] as? String {
            self.inscriptionsAndMarkings = value
        }
        if let value = dict["Maker"] as? String {
            self.maker = value
        }
        if let value = dict["MaterialsAndTechniques"] as? String {
            self.materialsAndTechniques = value
        }
        if let value = dict["ObjectType"] as? String {
            self.objectType = value
        }
        if let value = dict["Reference"] as? String {
            self.reference = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Subject"] as? String {
            self.subject = value
        }
        if let value = dict["Title"] as? String {
            self.title = value
        }
    }
}

public class QueryArtExtensionResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: QueryArtExtensionResponseBody?

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
            var model = QueryArtExtensionResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class QueryChangeLogListRequest : Tea.TeaModel {
    public var domainName: String?

    public var endDate: Int64?

    public var lang: String?

    public var pageNum: Int32?

    public var pageSize: Int32?

    public var startDate: Int64?

    public var userClientIp: String?

    public override init() {
        super.init()
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
        if self.endDate != nil {
            map["EndDate"] = self.endDate!
        }
        if self.lang != nil {
            map["Lang"] = self.lang!
        }
        if self.pageNum != nil {
            map["PageNum"] = self.pageNum!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.startDate != nil {
            map["StartDate"] = self.startDate!
        }
        if self.userClientIp != nil {
            map["UserClientIp"] = self.userClientIp!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["DomainName"] as? String {
            self.domainName = value
        }
        if let value = dict["EndDate"] as? Int64 {
            self.endDate = value
        }
        if let value = dict["Lang"] as? String {
            self.lang = value
        }
        if let value = dict["PageNum"] as? Int32 {
            self.pageNum = value
        }
        if let value = dict["PageSize"] as? Int32 {
            self.pageSize = value
        }
        if let value = dict["StartDate"] as? Int64 {
            self.startDate = value
        }
        if let value = dict["UserClientIp"] as? String {
            self.userClientIp = value
        }
    }
}

public class QueryChangeLogListResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class ChangeLog : Tea.TeaModel {
            public var details: String?

            public var domainName: String?

            public var operation: String?

            public var operationIPAddress: String?

            public var remark: String?

            public var result: String?

            public var time: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.details != nil {
                    map["Details"] = self.details!
                }
                if self.domainName != nil {
                    map["DomainName"] = self.domainName!
                }
                if self.operation != nil {
                    map["Operation"] = self.operation!
                }
                if self.operationIPAddress != nil {
                    map["OperationIPAddress"] = self.operationIPAddress!
                }
                if self.remark != nil {
                    map["Remark"] = self.remark!
                }
                if self.result != nil {
                    map["Result"] = self.result!
                }
                if self.time != nil {
                    map["Time"] = self.time!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["Details"] as? String {
                    self.details = value
                }
                if let value = dict["DomainName"] as? String {
                    self.domainName = value
                }
                if let value = dict["Operation"] as? String {
                    self.operation = value
                }
                if let value = dict["OperationIPAddress"] as? String {
                    self.operationIPAddress = value
                }
                if let value = dict["Remark"] as? String {
                    self.remark = value
                }
                if let value = dict["Result"] as? String {
                    self.result = value
                }
                if let value = dict["Time"] as? String {
                    self.time = value
                }
            }
        }
        public var changeLog: [QueryChangeLogListResponseBody.Data.ChangeLog]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.changeLog != nil {
                var tmp : [Any] = []
                for k in self.changeLog! {
                    tmp.append(k.toMap())
                }
                map["ChangeLog"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["ChangeLog"] as? [Any?] {
                var tmp : [QueryChangeLogListResponseBody.Data.ChangeLog] = []
                for v in value {
                    if v != nil {
                        var model = QueryChangeLogListResponseBody.Data.ChangeLog()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.changeLog = tmp
            }
        }
    }
    public var currentPageNum: Int32?

    public var data: QueryChangeLogListResponseBody.Data?

    public var nextPage: Bool?

    public var pageSize: Int32?

    public var prePage: Bool?

    public var requestId: String?

    public var resultLimit: Bool?

    public var totalItemNum: Int32?

    public var totalPageNum: Int32?

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
        if self.currentPageNum != nil {
            map["CurrentPageNum"] = self.currentPageNum!
        }
        if self.data != nil {
            map["Data"] = self.data?.toMap()
        }
        if self.nextPage != nil {
            map["NextPage"] = self.nextPage!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.prePage != nil {
            map["PrePage"] = self.prePage!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.resultLimit != nil {
            map["ResultLimit"] = self.resultLimit!
        }
        if self.totalItemNum != nil {
            map["TotalItemNum"] = self.totalItemNum!
        }
        if self.totalPageNum != nil {
            map["TotalPageNum"] = self.totalPageNum!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["CurrentPageNum"] as? Int32 {
            self.currentPageNum = value
        }
        if let value = dict["Data"] as? [String: Any?] {
            var model = QueryChangeLogListResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["NextPage"] as? Bool {
            self.nextPage = value
        }
        if let value = dict["PageSize"] as? Int32 {
            self.pageSize = value
        }
        if let value = dict["PrePage"] as? Bool {
            self.prePage = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["ResultLimit"] as? Bool {
            self.resultLimit = value
        }
        if let value = dict["TotalItemNum"] as? Int32 {
            self.totalItemNum = value
        }
        if let value = dict["TotalPageNum"] as? Int32 {
            self.totalPageNum = value
        }
    }
}

public class QueryChangeLogListResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: QueryChangeLogListResponseBody?

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
            var model = QueryChangeLogListResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class QueryContactInfoRequest : Tea.TeaModel {
    public var contactType: String?

    public var domainName: String?

    public var lang: String?

    public var userClientIp: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.contactType != nil {
            map["ContactType"] = self.contactType!
        }
        if self.domainName != nil {
            map["DomainName"] = self.domainName!
        }
        if self.lang != nil {
            map["Lang"] = self.lang!
        }
        if self.userClientIp != nil {
            map["UserClientIp"] = self.userClientIp!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ContactType"] as? String {
            self.contactType = value
        }
        if let value = dict["DomainName"] as? String {
            self.domainName = value
        }
        if let value = dict["Lang"] as? String {
            self.lang = value
        }
        if let value = dict["UserClientIp"] as? String {
            self.userClientIp = value
        }
    }
}

public class QueryContactInfoResponseBody : Tea.TeaModel {
    public var address: String?

    public var city: String?

    public var country: String?

    public var createDate: String?

    public var email: String?

    public var postalCode: String?

    public var province: String?

    public var registrantName: String?

    public var registrantOrganization: String?

    public var requestId: String?

    public var telArea: String?

    public var telExt: String?

    public var telephone: String?

    public var zhAddress: String?

    public var zhCity: String?

    public var zhProvince: String?

    public var zhRegistrantName: String?

    public var zhRegistrantOrganization: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.address != nil {
            map["Address"] = self.address!
        }
        if self.city != nil {
            map["City"] = self.city!
        }
        if self.country != nil {
            map["Country"] = self.country!
        }
        if self.createDate != nil {
            map["CreateDate"] = self.createDate!
        }
        if self.email != nil {
            map["Email"] = self.email!
        }
        if self.postalCode != nil {
            map["PostalCode"] = self.postalCode!
        }
        if self.province != nil {
            map["Province"] = self.province!
        }
        if self.registrantName != nil {
            map["RegistrantName"] = self.registrantName!
        }
        if self.registrantOrganization != nil {
            map["RegistrantOrganization"] = self.registrantOrganization!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.telArea != nil {
            map["TelArea"] = self.telArea!
        }
        if self.telExt != nil {
            map["TelExt"] = self.telExt!
        }
        if self.telephone != nil {
            map["Telephone"] = self.telephone!
        }
        if self.zhAddress != nil {
            map["ZhAddress"] = self.zhAddress!
        }
        if self.zhCity != nil {
            map["ZhCity"] = self.zhCity!
        }
        if self.zhProvince != nil {
            map["ZhProvince"] = self.zhProvince!
        }
        if self.zhRegistrantName != nil {
            map["ZhRegistrantName"] = self.zhRegistrantName!
        }
        if self.zhRegistrantOrganization != nil {
            map["ZhRegistrantOrganization"] = self.zhRegistrantOrganization!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Address"] as? String {
            self.address = value
        }
        if let value = dict["City"] as? String {
            self.city = value
        }
        if let value = dict["Country"] as? String {
            self.country = value
        }
        if let value = dict["CreateDate"] as? String {
            self.createDate = value
        }
        if let value = dict["Email"] as? String {
            self.email = value
        }
        if let value = dict["PostalCode"] as? String {
            self.postalCode = value
        }
        if let value = dict["Province"] as? String {
            self.province = value
        }
        if let value = dict["RegistrantName"] as? String {
            self.registrantName = value
        }
        if let value = dict["RegistrantOrganization"] as? String {
            self.registrantOrganization = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["TelArea"] as? String {
            self.telArea = value
        }
        if let value = dict["TelExt"] as? String {
            self.telExt = value
        }
        if let value = dict["Telephone"] as? String {
            self.telephone = value
        }
        if let value = dict["ZhAddress"] as? String {
            self.zhAddress = value
        }
        if let value = dict["ZhCity"] as? String {
            self.zhCity = value
        }
        if let value = dict["ZhProvince"] as? String {
            self.zhProvince = value
        }
        if let value = dict["ZhRegistrantName"] as? String {
            self.zhRegistrantName = value
        }
        if let value = dict["ZhRegistrantOrganization"] as? String {
            self.zhRegistrantOrganization = value
        }
    }
}

public class QueryContactInfoResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: QueryContactInfoResponseBody?

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
            var model = QueryContactInfoResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class QueryDSRecordRequest : Tea.TeaModel {
    public var domainName: String?

    public var lang: String?

    public var userClientIp: String?

    public override init() {
        super.init()
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
        if self.lang != nil {
            map["Lang"] = self.lang!
        }
        if self.userClientIp != nil {
            map["UserClientIp"] = self.userClientIp!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["DomainName"] as? String {
            self.domainName = value
        }
        if let value = dict["Lang"] as? String {
            self.lang = value
        }
        if let value = dict["UserClientIp"] as? String {
            self.userClientIp = value
        }
    }
}

public class QueryDSRecordResponseBody : Tea.TeaModel {
    public class DSRecordList : Tea.TeaModel {
        public var algorithm: Int32?

        public var digest: String?

        public var digestType: Int32?

        public var keyTag: Int32?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.algorithm != nil {
                map["Algorithm"] = self.algorithm!
            }
            if self.digest != nil {
                map["Digest"] = self.digest!
            }
            if self.digestType != nil {
                map["DigestType"] = self.digestType!
            }
            if self.keyTag != nil {
                map["KeyTag"] = self.keyTag!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Algorithm"] as? Int32 {
                self.algorithm = value
            }
            if let value = dict["Digest"] as? String {
                self.digest = value
            }
            if let value = dict["DigestType"] as? Int32 {
                self.digestType = value
            }
            if let value = dict["KeyTag"] as? Int32 {
                self.keyTag = value
            }
        }
    }
    public var DSRecordList: [QueryDSRecordResponseBody.DSRecordList]?

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
        if self.DSRecordList != nil {
            var tmp : [Any] = []
            for k in self.DSRecordList! {
                tmp.append(k.toMap())
            }
            map["DSRecordList"] = tmp
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["DSRecordList"] as? [Any?] {
            var tmp : [QueryDSRecordResponseBody.DSRecordList] = []
            for v in value {
                if v != nil {
                    var model = QueryDSRecordResponseBody.DSRecordList()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.DSRecordList = tmp
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class QueryDSRecordResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: QueryDSRecordResponseBody?

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
            var model = QueryDSRecordResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class QueryDnsHostRequest : Tea.TeaModel {
    public var instanceId: String?

    public var lang: String?

    public var userClientIp: String?

    public override init() {
        super.init()
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
        if self.lang != nil {
            map["Lang"] = self.lang!
        }
        if self.userClientIp != nil {
            map["UserClientIp"] = self.userClientIp!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["Lang"] as? String {
            self.lang = value
        }
        if let value = dict["UserClientIp"] as? String {
            self.userClientIp = value
        }
    }
}

public class QueryDnsHostResponseBody : Tea.TeaModel {
    public class DnsHostList : Tea.TeaModel {
        public var dnsName: String?

        public var ipList: [String]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.dnsName != nil {
                map["DnsName"] = self.dnsName!
            }
            if self.ipList != nil {
                map["IpList"] = self.ipList!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["DnsName"] as? String {
                self.dnsName = value
            }
            if let value = dict["IpList"] as? [String] {
                self.ipList = value
            }
        }
    }
    public var dnsHostList: [QueryDnsHostResponseBody.DnsHostList]?

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
        if self.dnsHostList != nil {
            var tmp : [Any] = []
            for k in self.dnsHostList! {
                tmp.append(k.toMap())
            }
            map["DnsHostList"] = tmp
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["DnsHostList"] as? [Any?] {
            var tmp : [QueryDnsHostResponseBody.DnsHostList] = []
            for v in value {
                if v != nil {
                    var model = QueryDnsHostResponseBody.DnsHostList()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.dnsHostList = tmp
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class QueryDnsHostResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: QueryDnsHostResponseBody?

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
            var model = QueryDnsHostResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class QueryDomainAdminDivisionRequest : Tea.TeaModel {
    public var lang: String?

    public var userClientIp: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.lang != nil {
            map["Lang"] = self.lang!
        }
        if self.userClientIp != nil {
            map["UserClientIp"] = self.userClientIp!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Lang"] as? String {
            self.lang = value
        }
        if let value = dict["UserClientIp"] as? String {
            self.userClientIp = value
        }
    }
}

public class QueryDomainAdminDivisionResponseBody : Tea.TeaModel {
    public class AdminDivisions : Tea.TeaModel {
        public class AdminDivision : Tea.TeaModel {
            public class Children : Tea.TeaModel {
                public class Children : Tea.TeaModel {
                    public var childDivisionName: String?

                    public override init() {
                        super.init()
                    }

                    public init(_ dict: [String: Any]) {
                        super.init()
                        self.fromMap(dict)
                    }

                    public override func validate() throws -> Void {
                    }

                    public override func toMap() -> [String : Any] {
                        var map = super.toMap()
                        if self.childDivisionName != nil {
                            map["ChildDivisionName"] = self.childDivisionName!
                        }
                        return map
                    }

                    public override func fromMap(_ dict: [String: Any?]?) -> Void {
                        guard let dict else { return }
                        if let value = dict["ChildDivisionName"] as? String {
                            self.childDivisionName = value
                        }
                    }
                }
                public var children: [QueryDomainAdminDivisionResponseBody.AdminDivisions.AdminDivision.Children.Children]?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.children != nil {
                        var tmp : [Any] = []
                        for k in self.children! {
                            tmp.append(k.toMap())
                        }
                        map["Children"] = tmp
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["Children"] as? [Any?] {
                        var tmp : [QueryDomainAdminDivisionResponseBody.AdminDivisions.AdminDivision.Children.Children] = []
                        for v in value {
                            if v != nil {
                                var model = QueryDomainAdminDivisionResponseBody.AdminDivisions.AdminDivision.Children.Children()
                                if v != nil {
                                    model.fromMap(v as? [String: Any?])
                                }
                                tmp.append(model)
                            }
                        }
                        self.children = tmp
                    }
                }
            }
            public var children: QueryDomainAdminDivisionResponseBody.AdminDivisions.AdminDivision.Children?

            public var divisionName: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
                try self.children?.validate()
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.children != nil {
                    map["Children"] = self.children?.toMap()
                }
                if self.divisionName != nil {
                    map["DivisionName"] = self.divisionName!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["Children"] as? [String: Any?] {
                    var model = QueryDomainAdminDivisionResponseBody.AdminDivisions.AdminDivision.Children()
                    model.fromMap(value)
                    self.children = model
                }
                if let value = dict["DivisionName"] as? String {
                    self.divisionName = value
                }
            }
        }
        public var adminDivision: [QueryDomainAdminDivisionResponseBody.AdminDivisions.AdminDivision]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.adminDivision != nil {
                var tmp : [Any] = []
                for k in self.adminDivision! {
                    tmp.append(k.toMap())
                }
                map["AdminDivision"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["AdminDivision"] as? [Any?] {
                var tmp : [QueryDomainAdminDivisionResponseBody.AdminDivisions.AdminDivision] = []
                for v in value {
                    if v != nil {
                        var model = QueryDomainAdminDivisionResponseBody.AdminDivisions.AdminDivision()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.adminDivision = tmp
            }
        }
    }
    public var adminDivisions: QueryDomainAdminDivisionResponseBody.AdminDivisions?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.adminDivisions?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.adminDivisions != nil {
            map["AdminDivisions"] = self.adminDivisions?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AdminDivisions"] as? [String: Any?] {
            var model = QueryDomainAdminDivisionResponseBody.AdminDivisions()
            model.fromMap(value)
            self.adminDivisions = model
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class QueryDomainAdminDivisionResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: QueryDomainAdminDivisionResponseBody?

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
            var model = QueryDomainAdminDivisionResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class QueryDomainByDomainNameRequest : Tea.TeaModel {
    public var domainName: String?

    public var lang: String?

    public var userClientIp: String?

    public override init() {
        super.init()
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
        if self.lang != nil {
            map["Lang"] = self.lang!
        }
        if self.userClientIp != nil {
            map["UserClientIp"] = self.userClientIp!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["DomainName"] as? String {
            self.domainName = value
        }
        if let value = dict["Lang"] as? String {
            self.lang = value
        }
        if let value = dict["UserClientIp"] as? String {
            self.userClientIp = value
        }
    }
}

public class QueryDomainByDomainNameResponseBody : Tea.TeaModel {
    public class DnsList : Tea.TeaModel {
        public var dns: [String]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.dns != nil {
                map["Dns"] = self.dns!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Dns"] as? [String] {
                self.dns = value
            }
        }
    }
    public class Tag : Tea.TeaModel {
        public class Tag : Tea.TeaModel {
            public var key: String?

            public var vaue: String?

            public override init() {
                super.init()
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
                if self.vaue != nil {
                    map["Vaue"] = self.vaue!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["Key"] as? String {
                    self.key = value
                }
                if let value = dict["Vaue"] as? String {
                    self.vaue = value
                }
            }
        }
        public var tag: [QueryDomainByDomainNameResponseBody.Tag.Tag]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.tag != nil {
                var tmp : [Any] = []
                for k in self.tag! {
                    tmp.append(k.toMap())
                }
                map["Tag"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Tag"] as? [Any?] {
                var tmp : [QueryDomainByDomainNameResponseBody.Tag.Tag] = []
                for v in value {
                    if v != nil {
                        var model = QueryDomainByDomainNameResponseBody.Tag.Tag()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.tag = tmp
            }
        }
    }
    public var dnsList: QueryDomainByDomainNameResponseBody.DnsList?

    public var domainGroupId: Int64?

    public var domainGroupName: String?

    public var domainName: String?

    public var domainNameProxyService: Bool?

    public var domainNameVerificationStatus: String?

    public var domainStatus: String?

    public var domainType: String?

    public var email: String?

    public var emailVerificationClientHold: Bool?

    public var emailVerificationStatus: Int32?

    public var expirationCurrDateDiff: Int32?

    public var expirationDate: String?

    public var expirationDateLong: Int64?

    public var expirationDateStatus: String?

    public var instanceId: String?

    public var premium: Bool?

    public var realNameStatus: String?

    public var registrantName: String?

    public var registrantOrganization: String?

    public var registrantType: String?

    public var registrantUpdatingStatus: String?

    public var registrationDate: String?

    public var registrationDateLong: Int64?

    public var remark: String?

    public var requestId: String?

    public var resourceGroupId: String?

    public var tag: QueryDomainByDomainNameResponseBody.Tag?

    public var transferOutStatus: String?

    public var transferProhibitionLock: String?

    public var updateProhibitionLock: String?

    public var userId: String?

    public var zhRegistrantName: String?

    public var zhRegistrantOrganization: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.dnsList?.validate()
        try self.tag?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.dnsList != nil {
            map["DnsList"] = self.dnsList?.toMap()
        }
        if self.domainGroupId != nil {
            map["DomainGroupId"] = self.domainGroupId!
        }
        if self.domainGroupName != nil {
            map["DomainGroupName"] = self.domainGroupName!
        }
        if self.domainName != nil {
            map["DomainName"] = self.domainName!
        }
        if self.domainNameProxyService != nil {
            map["DomainNameProxyService"] = self.domainNameProxyService!
        }
        if self.domainNameVerificationStatus != nil {
            map["DomainNameVerificationStatus"] = self.domainNameVerificationStatus!
        }
        if self.domainStatus != nil {
            map["DomainStatus"] = self.domainStatus!
        }
        if self.domainType != nil {
            map["DomainType"] = self.domainType!
        }
        if self.email != nil {
            map["Email"] = self.email!
        }
        if self.emailVerificationClientHold != nil {
            map["EmailVerificationClientHold"] = self.emailVerificationClientHold!
        }
        if self.emailVerificationStatus != nil {
            map["EmailVerificationStatus"] = self.emailVerificationStatus!
        }
        if self.expirationCurrDateDiff != nil {
            map["ExpirationCurrDateDiff"] = self.expirationCurrDateDiff!
        }
        if self.expirationDate != nil {
            map["ExpirationDate"] = self.expirationDate!
        }
        if self.expirationDateLong != nil {
            map["ExpirationDateLong"] = self.expirationDateLong!
        }
        if self.expirationDateStatus != nil {
            map["ExpirationDateStatus"] = self.expirationDateStatus!
        }
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.premium != nil {
            map["Premium"] = self.premium!
        }
        if self.realNameStatus != nil {
            map["RealNameStatus"] = self.realNameStatus!
        }
        if self.registrantName != nil {
            map["RegistrantName"] = self.registrantName!
        }
        if self.registrantOrganization != nil {
            map["RegistrantOrganization"] = self.registrantOrganization!
        }
        if self.registrantType != nil {
            map["RegistrantType"] = self.registrantType!
        }
        if self.registrantUpdatingStatus != nil {
            map["RegistrantUpdatingStatus"] = self.registrantUpdatingStatus!
        }
        if self.registrationDate != nil {
            map["RegistrationDate"] = self.registrationDate!
        }
        if self.registrationDateLong != nil {
            map["RegistrationDateLong"] = self.registrationDateLong!
        }
        if self.remark != nil {
            map["Remark"] = self.remark!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.resourceGroupId != nil {
            map["ResourceGroupId"] = self.resourceGroupId!
        }
        if self.tag != nil {
            map["Tag"] = self.tag?.toMap()
        }
        if self.transferOutStatus != nil {
            map["TransferOutStatus"] = self.transferOutStatus!
        }
        if self.transferProhibitionLock != nil {
            map["TransferProhibitionLock"] = self.transferProhibitionLock!
        }
        if self.updateProhibitionLock != nil {
            map["UpdateProhibitionLock"] = self.updateProhibitionLock!
        }
        if self.userId != nil {
            map["UserId"] = self.userId!
        }
        if self.zhRegistrantName != nil {
            map["ZhRegistrantName"] = self.zhRegistrantName!
        }
        if self.zhRegistrantOrganization != nil {
            map["ZhRegistrantOrganization"] = self.zhRegistrantOrganization!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["DnsList"] as? [String: Any?] {
            var model = QueryDomainByDomainNameResponseBody.DnsList()
            model.fromMap(value)
            self.dnsList = model
        }
        if let value = dict["DomainGroupId"] as? Int64 {
            self.domainGroupId = value
        }
        if let value = dict["DomainGroupName"] as? String {
            self.domainGroupName = value
        }
        if let value = dict["DomainName"] as? String {
            self.domainName = value
        }
        if let value = dict["DomainNameProxyService"] as? Bool {
            self.domainNameProxyService = value
        }
        if let value = dict["DomainNameVerificationStatus"] as? String {
            self.domainNameVerificationStatus = value
        }
        if let value = dict["DomainStatus"] as? String {
            self.domainStatus = value
        }
        if let value = dict["DomainType"] as? String {
            self.domainType = value
        }
        if let value = dict["Email"] as? String {
            self.email = value
        }
        if let value = dict["EmailVerificationClientHold"] as? Bool {
            self.emailVerificationClientHold = value
        }
        if let value = dict["EmailVerificationStatus"] as? Int32 {
            self.emailVerificationStatus = value
        }
        if let value = dict["ExpirationCurrDateDiff"] as? Int32 {
            self.expirationCurrDateDiff = value
        }
        if let value = dict["ExpirationDate"] as? String {
            self.expirationDate = value
        }
        if let value = dict["ExpirationDateLong"] as? Int64 {
            self.expirationDateLong = value
        }
        if let value = dict["ExpirationDateStatus"] as? String {
            self.expirationDateStatus = value
        }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["Premium"] as? Bool {
            self.premium = value
        }
        if let value = dict["RealNameStatus"] as? String {
            self.realNameStatus = value
        }
        if let value = dict["RegistrantName"] as? String {
            self.registrantName = value
        }
        if let value = dict["RegistrantOrganization"] as? String {
            self.registrantOrganization = value
        }
        if let value = dict["RegistrantType"] as? String {
            self.registrantType = value
        }
        if let value = dict["RegistrantUpdatingStatus"] as? String {
            self.registrantUpdatingStatus = value
        }
        if let value = dict["RegistrationDate"] as? String {
            self.registrationDate = value
        }
        if let value = dict["RegistrationDateLong"] as? Int64 {
            self.registrationDateLong = value
        }
        if let value = dict["Remark"] as? String {
            self.remark = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["ResourceGroupId"] as? String {
            self.resourceGroupId = value
        }
        if let value = dict["Tag"] as? [String: Any?] {
            var model = QueryDomainByDomainNameResponseBody.Tag()
            model.fromMap(value)
            self.tag = model
        }
        if let value = dict["TransferOutStatus"] as? String {
            self.transferOutStatus = value
        }
        if let value = dict["TransferProhibitionLock"] as? String {
            self.transferProhibitionLock = value
        }
        if let value = dict["UpdateProhibitionLock"] as? String {
            self.updateProhibitionLock = value
        }
        if let value = dict["UserId"] as? String {
            self.userId = value
        }
        if let value = dict["ZhRegistrantName"] as? String {
            self.zhRegistrantName = value
        }
        if let value = dict["ZhRegistrantOrganization"] as? String {
            self.zhRegistrantOrganization = value
        }
    }
}

public class QueryDomainByDomainNameResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: QueryDomainByDomainNameResponseBody?

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
            var model = QueryDomainByDomainNameResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class QueryDomainByInstanceIdRequest : Tea.TeaModel {
    public var instanceId: String?

    public var lang: String?

    public var userClientIp: String?

    public override init() {
        super.init()
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
        if self.lang != nil {
            map["Lang"] = self.lang!
        }
        if self.userClientIp != nil {
            map["UserClientIp"] = self.userClientIp!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["Lang"] as? String {
            self.lang = value
        }
        if let value = dict["UserClientIp"] as? String {
            self.userClientIp = value
        }
    }
}

public class QueryDomainByInstanceIdResponseBody : Tea.TeaModel {
    public class DnsList : Tea.TeaModel {
        public var dns: [String]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.dns != nil {
                map["Dns"] = self.dns!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Dns"] as? [String] {
                self.dns = value
            }
        }
    }
    public class Tag : Tea.TeaModel {
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
        public var tag: [QueryDomainByInstanceIdResponseBody.Tag.Tag]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.tag != nil {
                var tmp : [Any] = []
                for k in self.tag! {
                    tmp.append(k.toMap())
                }
                map["Tag"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Tag"] as? [Any?] {
                var tmp : [QueryDomainByInstanceIdResponseBody.Tag.Tag] = []
                for v in value {
                    if v != nil {
                        var model = QueryDomainByInstanceIdResponseBody.Tag.Tag()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.tag = tmp
            }
        }
    }
    public var dnsList: QueryDomainByInstanceIdResponseBody.DnsList?

    public var domainGroupId: Int64?

    public var domainGroupName: String?

    public var domainLifecycleStatus: String?

    public var domainName: String?

    public var domainNameProxyService: Bool?

    public var domainNameVerificationStatus: String?

    public var domainStatus: String?

    public var domainType: String?

    public var email: String?

    public var emailVerificationClientHold: Bool?

    public var emailVerificationStatus: Int32?

    public var expirationCurrDateDiff: Int32?

    public var expirationDate: String?

    public var expirationDateLong: Int64?

    public var expirationDateStatus: String?

    public var instanceId: String?

    public var premium: Bool?

    public var privacyServiceStatus: String?

    public var realNameStatus: String?

    public var registrantName: String?

    public var registrantOrganization: String?

    public var registrantType: String?

    public var registrantUpdatingStatus: String?

    public var registrationDate: String?

    public var registrationDateLong: Int64?

    public var remark: String?

    public var requestId: String?

    public var resourceGroupId: String?

    public var tag: QueryDomainByInstanceIdResponseBody.Tag?

    public var transferOutStatus: String?

    public var transferProhibitionLock: String?

    public var updateProhibitionLock: String?

    public var userId: String?

    public var zhRegistrantName: String?

    public var zhRegistrantOrganization: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.dnsList?.validate()
        try self.tag?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.dnsList != nil {
            map["DnsList"] = self.dnsList?.toMap()
        }
        if self.domainGroupId != nil {
            map["DomainGroupId"] = self.domainGroupId!
        }
        if self.domainGroupName != nil {
            map["DomainGroupName"] = self.domainGroupName!
        }
        if self.domainLifecycleStatus != nil {
            map["DomainLifecycleStatus"] = self.domainLifecycleStatus!
        }
        if self.domainName != nil {
            map["DomainName"] = self.domainName!
        }
        if self.domainNameProxyService != nil {
            map["DomainNameProxyService"] = self.domainNameProxyService!
        }
        if self.domainNameVerificationStatus != nil {
            map["DomainNameVerificationStatus"] = self.domainNameVerificationStatus!
        }
        if self.domainStatus != nil {
            map["DomainStatus"] = self.domainStatus!
        }
        if self.domainType != nil {
            map["DomainType"] = self.domainType!
        }
        if self.email != nil {
            map["Email"] = self.email!
        }
        if self.emailVerificationClientHold != nil {
            map["EmailVerificationClientHold"] = self.emailVerificationClientHold!
        }
        if self.emailVerificationStatus != nil {
            map["EmailVerificationStatus"] = self.emailVerificationStatus!
        }
        if self.expirationCurrDateDiff != nil {
            map["ExpirationCurrDateDiff"] = self.expirationCurrDateDiff!
        }
        if self.expirationDate != nil {
            map["ExpirationDate"] = self.expirationDate!
        }
        if self.expirationDateLong != nil {
            map["ExpirationDateLong"] = self.expirationDateLong!
        }
        if self.expirationDateStatus != nil {
            map["ExpirationDateStatus"] = self.expirationDateStatus!
        }
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.premium != nil {
            map["Premium"] = self.premium!
        }
        if self.privacyServiceStatus != nil {
            map["PrivacyServiceStatus"] = self.privacyServiceStatus!
        }
        if self.realNameStatus != nil {
            map["RealNameStatus"] = self.realNameStatus!
        }
        if self.registrantName != nil {
            map["RegistrantName"] = self.registrantName!
        }
        if self.registrantOrganization != nil {
            map["RegistrantOrganization"] = self.registrantOrganization!
        }
        if self.registrantType != nil {
            map["RegistrantType"] = self.registrantType!
        }
        if self.registrantUpdatingStatus != nil {
            map["RegistrantUpdatingStatus"] = self.registrantUpdatingStatus!
        }
        if self.registrationDate != nil {
            map["RegistrationDate"] = self.registrationDate!
        }
        if self.registrationDateLong != nil {
            map["RegistrationDateLong"] = self.registrationDateLong!
        }
        if self.remark != nil {
            map["Remark"] = self.remark!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.resourceGroupId != nil {
            map["ResourceGroupId"] = self.resourceGroupId!
        }
        if self.tag != nil {
            map["Tag"] = self.tag?.toMap()
        }
        if self.transferOutStatus != nil {
            map["TransferOutStatus"] = self.transferOutStatus!
        }
        if self.transferProhibitionLock != nil {
            map["TransferProhibitionLock"] = self.transferProhibitionLock!
        }
        if self.updateProhibitionLock != nil {
            map["UpdateProhibitionLock"] = self.updateProhibitionLock!
        }
        if self.userId != nil {
            map["UserId"] = self.userId!
        }
        if self.zhRegistrantName != nil {
            map["ZhRegistrantName"] = self.zhRegistrantName!
        }
        if self.zhRegistrantOrganization != nil {
            map["ZhRegistrantOrganization"] = self.zhRegistrantOrganization!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["DnsList"] as? [String: Any?] {
            var model = QueryDomainByInstanceIdResponseBody.DnsList()
            model.fromMap(value)
            self.dnsList = model
        }
        if let value = dict["DomainGroupId"] as? Int64 {
            self.domainGroupId = value
        }
        if let value = dict["DomainGroupName"] as? String {
            self.domainGroupName = value
        }
        if let value = dict["DomainLifecycleStatus"] as? String {
            self.domainLifecycleStatus = value
        }
        if let value = dict["DomainName"] as? String {
            self.domainName = value
        }
        if let value = dict["DomainNameProxyService"] as? Bool {
            self.domainNameProxyService = value
        }
        if let value = dict["DomainNameVerificationStatus"] as? String {
            self.domainNameVerificationStatus = value
        }
        if let value = dict["DomainStatus"] as? String {
            self.domainStatus = value
        }
        if let value = dict["DomainType"] as? String {
            self.domainType = value
        }
        if let value = dict["Email"] as? String {
            self.email = value
        }
        if let value = dict["EmailVerificationClientHold"] as? Bool {
            self.emailVerificationClientHold = value
        }
        if let value = dict["EmailVerificationStatus"] as? Int32 {
            self.emailVerificationStatus = value
        }
        if let value = dict["ExpirationCurrDateDiff"] as? Int32 {
            self.expirationCurrDateDiff = value
        }
        if let value = dict["ExpirationDate"] as? String {
            self.expirationDate = value
        }
        if let value = dict["ExpirationDateLong"] as? Int64 {
            self.expirationDateLong = value
        }
        if let value = dict["ExpirationDateStatus"] as? String {
            self.expirationDateStatus = value
        }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["Premium"] as? Bool {
            self.premium = value
        }
        if let value = dict["PrivacyServiceStatus"] as? String {
            self.privacyServiceStatus = value
        }
        if let value = dict["RealNameStatus"] as? String {
            self.realNameStatus = value
        }
        if let value = dict["RegistrantName"] as? String {
            self.registrantName = value
        }
        if let value = dict["RegistrantOrganization"] as? String {
            self.registrantOrganization = value
        }
        if let value = dict["RegistrantType"] as? String {
            self.registrantType = value
        }
        if let value = dict["RegistrantUpdatingStatus"] as? String {
            self.registrantUpdatingStatus = value
        }
        if let value = dict["RegistrationDate"] as? String {
            self.registrationDate = value
        }
        if let value = dict["RegistrationDateLong"] as? Int64 {
            self.registrationDateLong = value
        }
        if let value = dict["Remark"] as? String {
            self.remark = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["ResourceGroupId"] as? String {
            self.resourceGroupId = value
        }
        if let value = dict["Tag"] as? [String: Any?] {
            var model = QueryDomainByInstanceIdResponseBody.Tag()
            model.fromMap(value)
            self.tag = model
        }
        if let value = dict["TransferOutStatus"] as? String {
            self.transferOutStatus = value
        }
        if let value = dict["TransferProhibitionLock"] as? String {
            self.transferProhibitionLock = value
        }
        if let value = dict["UpdateProhibitionLock"] as? String {
            self.updateProhibitionLock = value
        }
        if let value = dict["UserId"] as? String {
            self.userId = value
        }
        if let value = dict["ZhRegistrantName"] as? String {
            self.zhRegistrantName = value
        }
        if let value = dict["ZhRegistrantOrganization"] as? String {
            self.zhRegistrantOrganization = value
        }
    }
}

public class QueryDomainByInstanceIdResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: QueryDomainByInstanceIdResponseBody?

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
            var model = QueryDomainByInstanceIdResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class QueryDomainGroupListRequest : Tea.TeaModel {
    public var domainGroupName: String?

    public var lang: String?

    public var showDeletingGroup: Bool?

    public var userClientIp: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.domainGroupName != nil {
            map["DomainGroupName"] = self.domainGroupName!
        }
        if self.lang != nil {
            map["Lang"] = self.lang!
        }
        if self.showDeletingGroup != nil {
            map["ShowDeletingGroup"] = self.showDeletingGroup!
        }
        if self.userClientIp != nil {
            map["UserClientIp"] = self.userClientIp!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["DomainGroupName"] as? String {
            self.domainGroupName = value
        }
        if let value = dict["Lang"] as? String {
            self.lang = value
        }
        if let value = dict["ShowDeletingGroup"] as? Bool {
            self.showDeletingGroup = value
        }
        if let value = dict["UserClientIp"] as? String {
            self.userClientIp = value
        }
    }
}

public class QueryDomainGroupListResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class DomainGroup : Tea.TeaModel {
            public var beingDeleted: Bool?

            public var creationDate: String?

            public var domainGroupId: String?

            public var domainGroupName: String?

            public var domainGroupStatus: String?

            public var modificationDate: String?

            public var totalNumber: Int32?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.beingDeleted != nil {
                    map["BeingDeleted"] = self.beingDeleted!
                }
                if self.creationDate != nil {
                    map["CreationDate"] = self.creationDate!
                }
                if self.domainGroupId != nil {
                    map["DomainGroupId"] = self.domainGroupId!
                }
                if self.domainGroupName != nil {
                    map["DomainGroupName"] = self.domainGroupName!
                }
                if self.domainGroupStatus != nil {
                    map["DomainGroupStatus"] = self.domainGroupStatus!
                }
                if self.modificationDate != nil {
                    map["ModificationDate"] = self.modificationDate!
                }
                if self.totalNumber != nil {
                    map["TotalNumber"] = self.totalNumber!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["BeingDeleted"] as? Bool {
                    self.beingDeleted = value
                }
                if let value = dict["CreationDate"] as? String {
                    self.creationDate = value
                }
                if let value = dict["DomainGroupId"] as? String {
                    self.domainGroupId = value
                }
                if let value = dict["DomainGroupName"] as? String {
                    self.domainGroupName = value
                }
                if let value = dict["DomainGroupStatus"] as? String {
                    self.domainGroupStatus = value
                }
                if let value = dict["ModificationDate"] as? String {
                    self.modificationDate = value
                }
                if let value = dict["TotalNumber"] as? Int32 {
                    self.totalNumber = value
                }
            }
        }
        public var domainGroup: [QueryDomainGroupListResponseBody.Data.DomainGroup]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.domainGroup != nil {
                var tmp : [Any] = []
                for k in self.domainGroup! {
                    tmp.append(k.toMap())
                }
                map["DomainGroup"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["DomainGroup"] as? [Any?] {
                var tmp : [QueryDomainGroupListResponseBody.Data.DomainGroup] = []
                for v in value {
                    if v != nil {
                        var model = QueryDomainGroupListResponseBody.Data.DomainGroup()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.domainGroup = tmp
            }
        }
    }
    public var data: QueryDomainGroupListResponseBody.Data?

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
            var model = QueryDomainGroupListResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class QueryDomainGroupListResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: QueryDomainGroupListResponseBody?

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
            var model = QueryDomainGroupListResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class QueryDomainListRequest : Tea.TeaModel {
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
    public var ccompany: String?

    public var domainGroupId: String?

    public var domainName: String?

    public var endExpirationDate: Int64?

    public var endRegistrationDate: Int64?

    public var lang: String?

    public var orderByType: String?

    public var orderKeyType: String?

    public var pageNum: Int32?

    public var pageSize: Int32?

    public var productDomainType: String?

    public var queryType: String?

    public var registrar: String?

    public var resourceGroupId: String?

    public var startExpirationDate: Int64?

    public var startRegistrationDate: Int64?

    public var tag: [QueryDomainListRequest.Tag]?

    public var userClientIp: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.ccompany != nil {
            map["Ccompany"] = self.ccompany!
        }
        if self.domainGroupId != nil {
            map["DomainGroupId"] = self.domainGroupId!
        }
        if self.domainName != nil {
            map["DomainName"] = self.domainName!
        }
        if self.endExpirationDate != nil {
            map["EndExpirationDate"] = self.endExpirationDate!
        }
        if self.endRegistrationDate != nil {
            map["EndRegistrationDate"] = self.endRegistrationDate!
        }
        if self.lang != nil {
            map["Lang"] = self.lang!
        }
        if self.orderByType != nil {
            map["OrderByType"] = self.orderByType!
        }
        if self.orderKeyType != nil {
            map["OrderKeyType"] = self.orderKeyType!
        }
        if self.pageNum != nil {
            map["PageNum"] = self.pageNum!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.productDomainType != nil {
            map["ProductDomainType"] = self.productDomainType!
        }
        if self.queryType != nil {
            map["QueryType"] = self.queryType!
        }
        if self.registrar != nil {
            map["Registrar"] = self.registrar!
        }
        if self.resourceGroupId != nil {
            map["ResourceGroupId"] = self.resourceGroupId!
        }
        if self.startExpirationDate != nil {
            map["StartExpirationDate"] = self.startExpirationDate!
        }
        if self.startRegistrationDate != nil {
            map["StartRegistrationDate"] = self.startRegistrationDate!
        }
        if self.tag != nil {
            var tmp : [Any] = []
            for k in self.tag! {
                tmp.append(k.toMap())
            }
            map["Tag"] = tmp
        }
        if self.userClientIp != nil {
            map["UserClientIp"] = self.userClientIp!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Ccompany"] as? String {
            self.ccompany = value
        }
        if let value = dict["DomainGroupId"] as? String {
            self.domainGroupId = value
        }
        if let value = dict["DomainName"] as? String {
            self.domainName = value
        }
        if let value = dict["EndExpirationDate"] as? Int64 {
            self.endExpirationDate = value
        }
        if let value = dict["EndRegistrationDate"] as? Int64 {
            self.endRegistrationDate = value
        }
        if let value = dict["Lang"] as? String {
            self.lang = value
        }
        if let value = dict["OrderByType"] as? String {
            self.orderByType = value
        }
        if let value = dict["OrderKeyType"] as? String {
            self.orderKeyType = value
        }
        if let value = dict["PageNum"] as? Int32 {
            self.pageNum = value
        }
        if let value = dict["PageSize"] as? Int32 {
            self.pageSize = value
        }
        if let value = dict["ProductDomainType"] as? String {
            self.productDomainType = value
        }
        if let value = dict["QueryType"] as? String {
            self.queryType = value
        }
        if let value = dict["Registrar"] as? String {
            self.registrar = value
        }
        if let value = dict["ResourceGroupId"] as? String {
            self.resourceGroupId = value
        }
        if let value = dict["StartExpirationDate"] as? Int64 {
            self.startExpirationDate = value
        }
        if let value = dict["StartRegistrationDate"] as? Int64 {
            self.startRegistrationDate = value
        }
        if let value = dict["Tag"] as? [Any?] {
            var tmp : [QueryDomainListRequest.Tag] = []
            for v in value {
                if v != nil {
                    var model = QueryDomainListRequest.Tag()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.tag = tmp
        }
        if let value = dict["UserClientIp"] as? String {
            self.userClientIp = value
        }
    }
}

public class QueryDomainListResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class Domain : Tea.TeaModel {
            public class Tag : Tea.TeaModel {
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
                public var tag: [QueryDomainListResponseBody.Data.Domain.Tag.Tag]?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.tag != nil {
                        var tmp : [Any] = []
                        for k in self.tag! {
                            tmp.append(k.toMap())
                        }
                        map["Tag"] = tmp
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["Tag"] as? [Any?] {
                        var tmp : [QueryDomainListResponseBody.Data.Domain.Tag.Tag] = []
                        for v in value {
                            if v != nil {
                                var model = QueryDomainListResponseBody.Data.Domain.Tag.Tag()
                                if v != nil {
                                    model.fromMap(v as? [String: Any?])
                                }
                                tmp.append(model)
                            }
                        }
                        self.tag = tmp
                    }
                }
            }
            public var ccompany: String?

            public var chgholderStatus: String?

            public var domainAuditStatus: String?

            public var domainGroupId: String?

            public var domainGroupName: String?

            public var domainName: String?

            public var domainStatus: String?

            public var domainType: String?

            public var expirationCurrDateDiff: Int32?

            public var expirationDate: String?

            public var expirationDateLong: Int64?

            public var expirationDateStatus: String?

            public var instanceId: String?

            public var premium: Bool?

            public var productId: String?

            public var registrantType: String?

            public var registrar: String?

            public var registrationDate: String?

            public var registrationDateLong: Int64?

            public var remark: String?

            public var resourceGroupId: String?

            public var tag: QueryDomainListResponseBody.Data.Domain.Tag?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
                try self.tag?.validate()
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.ccompany != nil {
                    map["Ccompany"] = self.ccompany!
                }
                if self.chgholderStatus != nil {
                    map["ChgholderStatus"] = self.chgholderStatus!
                }
                if self.domainAuditStatus != nil {
                    map["DomainAuditStatus"] = self.domainAuditStatus!
                }
                if self.domainGroupId != nil {
                    map["DomainGroupId"] = self.domainGroupId!
                }
                if self.domainGroupName != nil {
                    map["DomainGroupName"] = self.domainGroupName!
                }
                if self.domainName != nil {
                    map["DomainName"] = self.domainName!
                }
                if self.domainStatus != nil {
                    map["DomainStatus"] = self.domainStatus!
                }
                if self.domainType != nil {
                    map["DomainType"] = self.domainType!
                }
                if self.expirationCurrDateDiff != nil {
                    map["ExpirationCurrDateDiff"] = self.expirationCurrDateDiff!
                }
                if self.expirationDate != nil {
                    map["ExpirationDate"] = self.expirationDate!
                }
                if self.expirationDateLong != nil {
                    map["ExpirationDateLong"] = self.expirationDateLong!
                }
                if self.expirationDateStatus != nil {
                    map["ExpirationDateStatus"] = self.expirationDateStatus!
                }
                if self.instanceId != nil {
                    map["InstanceId"] = self.instanceId!
                }
                if self.premium != nil {
                    map["Premium"] = self.premium!
                }
                if self.productId != nil {
                    map["ProductId"] = self.productId!
                }
                if self.registrantType != nil {
                    map["RegistrantType"] = self.registrantType!
                }
                if self.registrar != nil {
                    map["Registrar"] = self.registrar!
                }
                if self.registrationDate != nil {
                    map["RegistrationDate"] = self.registrationDate!
                }
                if self.registrationDateLong != nil {
                    map["RegistrationDateLong"] = self.registrationDateLong!
                }
                if self.remark != nil {
                    map["Remark"] = self.remark!
                }
                if self.resourceGroupId != nil {
                    map["ResourceGroupId"] = self.resourceGroupId!
                }
                if self.tag != nil {
                    map["Tag"] = self.tag?.toMap()
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["Ccompany"] as? String {
                    self.ccompany = value
                }
                if let value = dict["ChgholderStatus"] as? String {
                    self.chgholderStatus = value
                }
                if let value = dict["DomainAuditStatus"] as? String {
                    self.domainAuditStatus = value
                }
                if let value = dict["DomainGroupId"] as? String {
                    self.domainGroupId = value
                }
                if let value = dict["DomainGroupName"] as? String {
                    self.domainGroupName = value
                }
                if let value = dict["DomainName"] as? String {
                    self.domainName = value
                }
                if let value = dict["DomainStatus"] as? String {
                    self.domainStatus = value
                }
                if let value = dict["DomainType"] as? String {
                    self.domainType = value
                }
                if let value = dict["ExpirationCurrDateDiff"] as? Int32 {
                    self.expirationCurrDateDiff = value
                }
                if let value = dict["ExpirationDate"] as? String {
                    self.expirationDate = value
                }
                if let value = dict["ExpirationDateLong"] as? Int64 {
                    self.expirationDateLong = value
                }
                if let value = dict["ExpirationDateStatus"] as? String {
                    self.expirationDateStatus = value
                }
                if let value = dict["InstanceId"] as? String {
                    self.instanceId = value
                }
                if let value = dict["Premium"] as? Bool {
                    self.premium = value
                }
                if let value = dict["ProductId"] as? String {
                    self.productId = value
                }
                if let value = dict["RegistrantType"] as? String {
                    self.registrantType = value
                }
                if let value = dict["Registrar"] as? String {
                    self.registrar = value
                }
                if let value = dict["RegistrationDate"] as? String {
                    self.registrationDate = value
                }
                if let value = dict["RegistrationDateLong"] as? Int64 {
                    self.registrationDateLong = value
                }
                if let value = dict["Remark"] as? String {
                    self.remark = value
                }
                if let value = dict["ResourceGroupId"] as? String {
                    self.resourceGroupId = value
                }
                if let value = dict["Tag"] as? [String: Any?] {
                    var model = QueryDomainListResponseBody.Data.Domain.Tag()
                    model.fromMap(value)
                    self.tag = model
                }
            }
        }
        public var domain: [QueryDomainListResponseBody.Data.Domain]?

        public override init() {
            super.init()
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Domain"] as? [Any?] {
                var tmp : [QueryDomainListResponseBody.Data.Domain] = []
                for v in value {
                    if v != nil {
                        var model = QueryDomainListResponseBody.Data.Domain()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.domain = tmp
            }
        }
    }
    public var currentPageNum: Int32?

    public var data: QueryDomainListResponseBody.Data?

    public var nextPage: Bool?

    public var pageSize: Int32?

    public var prePage: Bool?

    public var requestId: String?

    public var totalItemNum: Int32?

    public var totalPageNum: Int32?

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
        if self.currentPageNum != nil {
            map["CurrentPageNum"] = self.currentPageNum!
        }
        if self.data != nil {
            map["Data"] = self.data?.toMap()
        }
        if self.nextPage != nil {
            map["NextPage"] = self.nextPage!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.prePage != nil {
            map["PrePage"] = self.prePage!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.totalItemNum != nil {
            map["TotalItemNum"] = self.totalItemNum!
        }
        if self.totalPageNum != nil {
            map["TotalPageNum"] = self.totalPageNum!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["CurrentPageNum"] as? Int32 {
            self.currentPageNum = value
        }
        if let value = dict["Data"] as? [String: Any?] {
            var model = QueryDomainListResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["NextPage"] as? Bool {
            self.nextPage = value
        }
        if let value = dict["PageSize"] as? Int32 {
            self.pageSize = value
        }
        if let value = dict["PrePage"] as? Bool {
            self.prePage = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["TotalItemNum"] as? Int32 {
            self.totalItemNum = value
        }
        if let value = dict["TotalPageNum"] as? Int32 {
            self.totalPageNum = value
        }
    }
}

public class QueryDomainListResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: QueryDomainListResponseBody?

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
            var model = QueryDomainListResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class QueryDomainRealNameVerificationInfoRequest : Tea.TeaModel {
    public var domainName: String?

    public var fetchImage: Bool?

    public var lang: String?

    public var userClientIp: String?

    public override init() {
        super.init()
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
        if self.fetchImage != nil {
            map["FetchImage"] = self.fetchImage!
        }
        if self.lang != nil {
            map["Lang"] = self.lang!
        }
        if self.userClientIp != nil {
            map["UserClientIp"] = self.userClientIp!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["DomainName"] as? String {
            self.domainName = value
        }
        if let value = dict["FetchImage"] as? Bool {
            self.fetchImage = value
        }
        if let value = dict["Lang"] as? String {
            self.lang = value
        }
        if let value = dict["UserClientIp"] as? String {
            self.userClientIp = value
        }
    }
}

public class QueryDomainRealNameVerificationInfoResponseBody : Tea.TeaModel {
    public var domainName: String?

    public var identityCredential: String?

    public var identityCredentialNo: String?

    public var identityCredentialType: String?

    public var identityCredentialUrl: String?

    public var instanceId: String?

    public var requestId: String?

    public var submissionDate: String?

    public override init() {
        super.init()
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
        if self.identityCredential != nil {
            map["IdentityCredential"] = self.identityCredential!
        }
        if self.identityCredentialNo != nil {
            map["IdentityCredentialNo"] = self.identityCredentialNo!
        }
        if self.identityCredentialType != nil {
            map["IdentityCredentialType"] = self.identityCredentialType!
        }
        if self.identityCredentialUrl != nil {
            map["IdentityCredentialUrl"] = self.identityCredentialUrl!
        }
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.submissionDate != nil {
            map["SubmissionDate"] = self.submissionDate!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["DomainName"] as? String {
            self.domainName = value
        }
        if let value = dict["IdentityCredential"] as? String {
            self.identityCredential = value
        }
        if let value = dict["IdentityCredentialNo"] as? String {
            self.identityCredentialNo = value
        }
        if let value = dict["IdentityCredentialType"] as? String {
            self.identityCredentialType = value
        }
        if let value = dict["IdentityCredentialUrl"] as? String {
            self.identityCredentialUrl = value
        }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["SubmissionDate"] as? String {
            self.submissionDate = value
        }
    }
}

public class QueryDomainRealNameVerificationInfoResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: QueryDomainRealNameVerificationInfoResponseBody?

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
            var model = QueryDomainRealNameVerificationInfoResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class QueryDomainRealTimePriceRequest : Tea.TeaModel {
    public class DomainItem : Tea.TeaModel {
        public var action: String?

        public var domainName: String?

        public var period: Int32?

        public var suffix: String?

        public override init() {
            super.init()
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
            if self.domainName != nil {
                map["DomainName"] = self.domainName!
            }
            if self.period != nil {
                map["Period"] = self.period!
            }
            if self.suffix != nil {
                map["Suffix"] = self.suffix!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Action"] as? String {
                self.action = value
            }
            if let value = dict["DomainName"] as? String {
                self.domainName = value
            }
            if let value = dict["Period"] as? Int32 {
                self.period = value
            }
            if let value = dict["Suffix"] as? String {
                self.suffix = value
            }
        }
    }
    public var currency: String?

    public var domainItem: [QueryDomainRealTimePriceRequest.DomainItem]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.currency != nil {
            map["Currency"] = self.currency!
        }
        if self.domainItem != nil {
            var tmp : [Any] = []
            for k in self.domainItem! {
                tmp.append(k.toMap())
            }
            map["DomainItem"] = tmp
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Currency"] as? String {
            self.currency = value
        }
        if let value = dict["DomainItem"] as? [Any?] {
            var tmp : [QueryDomainRealTimePriceRequest.DomainItem] = []
            for v in value {
                if v != nil {
                    var model = QueryDomainRealTimePriceRequest.DomainItem()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.domainItem = tmp
        }
    }
}

public class QueryDomainRealTimePriceShrinkRequest : Tea.TeaModel {
    public var currency: String?

    public var domainItemShrink: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.currency != nil {
            map["Currency"] = self.currency!
        }
        if self.domainItemShrink != nil {
            map["DomainItem"] = self.domainItemShrink!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Currency"] as? String {
            self.currency = value
        }
        if let value = dict["DomainItem"] as? String {
            self.domainItemShrink = value
        }
    }
}

public class QueryDomainRealTimePriceResponseBody : Tea.TeaModel {
    public class Module : Tea.TeaModel {
        public class DomainPrices : Tea.TeaModel {
            public var action: String?

            public var avail: Int32?

            public var currency: String?

            public var domainName: String?

            public var period: Int32?

            public var premium: Bool?

            public var price: Double?

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
                if self.action != nil {
                    map["Action"] = self.action!
                }
                if self.avail != nil {
                    map["Avail"] = self.avail!
                }
                if self.currency != nil {
                    map["Currency"] = self.currency!
                }
                if self.domainName != nil {
                    map["DomainName"] = self.domainName!
                }
                if self.period != nil {
                    map["Period"] = self.period!
                }
                if self.premium != nil {
                    map["Premium"] = self.premium!
                }
                if self.price != nil {
                    map["Price"] = self.price!
                }
                if self.reason != nil {
                    map["Reason"] = self.reason!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["Action"] as? String {
                    self.action = value
                }
                if let value = dict["Avail"] as? Int32 {
                    self.avail = value
                }
                if let value = dict["Currency"] as? String {
                    self.currency = value
                }
                if let value = dict["DomainName"] as? String {
                    self.domainName = value
                }
                if let value = dict["Period"] as? Int32 {
                    self.period = value
                }
                if let value = dict["Premium"] as? Bool {
                    self.premium = value
                }
                if let value = dict["Price"] as? Double {
                    self.price = value
                }
                if let value = dict["Reason"] as? String {
                    self.reason = value
                }
            }
        }
        public var domainPrices: [QueryDomainRealTimePriceResponseBody.Module.DomainPrices]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.domainPrices != nil {
                var tmp : [Any] = []
                for k in self.domainPrices! {
                    tmp.append(k.toMap())
                }
                map["DomainPrices"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["DomainPrices"] as? [Any?] {
                var tmp : [QueryDomainRealTimePriceResponseBody.Module.DomainPrices] = []
                for v in value {
                    if v != nil {
                        var model = QueryDomainRealTimePriceResponseBody.Module.DomainPrices()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.domainPrices = tmp
            }
        }
    }
    public var dynamicCode: String?

    public var dynamicMessage: String?

    public var errorCode: String?

    public var errorMsg: String?

    public var httpStatusCode: Int32?

    public var module: QueryDomainRealTimePriceResponseBody.Module?

    public var requestId: String?

    public var success: Bool?

    public var synchro: Bool?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.module?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.dynamicCode != nil {
            map["DynamicCode"] = self.dynamicCode!
        }
        if self.dynamicMessage != nil {
            map["DynamicMessage"] = self.dynamicMessage!
        }
        if self.errorCode != nil {
            map["ErrorCode"] = self.errorCode!
        }
        if self.errorMsg != nil {
            map["ErrorMsg"] = self.errorMsg!
        }
        if self.httpStatusCode != nil {
            map["HttpStatusCode"] = self.httpStatusCode!
        }
        if self.module != nil {
            map["Module"] = self.module?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.success != nil {
            map["Success"] = self.success!
        }
        if self.synchro != nil {
            map["Synchro"] = self.synchro!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["DynamicCode"] as? String {
            self.dynamicCode = value
        }
        if let value = dict["DynamicMessage"] as? String {
            self.dynamicMessage = value
        }
        if let value = dict["ErrorCode"] as? String {
            self.errorCode = value
        }
        if let value = dict["ErrorMsg"] as? String {
            self.errorMsg = value
        }
        if let value = dict["HttpStatusCode"] as? Int32 {
            self.httpStatusCode = value
        }
        if let value = dict["Module"] as? [String: Any?] {
            var model = QueryDomainRealTimePriceResponseBody.Module()
            model.fromMap(value)
            self.module = model
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
        if let value = dict["Synchro"] as? Bool {
            self.synchro = value
        }
    }
}

public class QueryDomainRealTimePriceResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: QueryDomainRealTimePriceResponseBody?

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
            var model = QueryDomainRealTimePriceResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class QueryDomainSpecialBizDetailRequest : Tea.TeaModel {
    public var bizId: Int64?

    public var userClientIp: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.bizId != nil {
            map["BizId"] = self.bizId!
        }
        if self.userClientIp != nil {
            map["UserClientIp"] = self.userClientIp!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["BizId"] as? Int64 {
            self.bizId = value
        }
        if let value = dict["UserClientIp"] as? String {
            self.userClientIp = value
        }
    }
}

public class QueryDomainSpecialBizDetailResponseBody : Tea.TeaModel {
    public class Module : Tea.TeaModel {
        public class DomainSpecialBizContact : Tea.TeaModel {
            public var bizId: Int64?

            public var CCity: String?

            public var CCompany: String?

            public var CCountry: String?

            public var CName: String?

            public var CProvince: String?

            public var CVenu: String?

            public var ECity: String?

            public var ECompany: String?

            public var EName: String?

            public var EProvince: String?

            public var EVenu: String?

            public var email: String?

            public var extend: String?

            public var faxArea: String?

            public var faxExt: String?

            public var faxMain: String?

            public var mobile: String?

            public var postalcode: String?

            public var regType: Int32?

            public var registrantId: String?

            public var telArea: String?

            public var telExt: String?

            public var telMain: String?

            public var vspContactId: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.bizId != nil {
                    map["BizId"] = self.bizId!
                }
                if self.CCity != nil {
                    map["CCity"] = self.CCity!
                }
                if self.CCompany != nil {
                    map["CCompany"] = self.CCompany!
                }
                if self.CCountry != nil {
                    map["CCountry"] = self.CCountry!
                }
                if self.CName != nil {
                    map["CName"] = self.CName!
                }
                if self.CProvince != nil {
                    map["CProvince"] = self.CProvince!
                }
                if self.CVenu != nil {
                    map["CVenu"] = self.CVenu!
                }
                if self.ECity != nil {
                    map["ECity"] = self.ECity!
                }
                if self.ECompany != nil {
                    map["ECompany"] = self.ECompany!
                }
                if self.EName != nil {
                    map["EName"] = self.EName!
                }
                if self.EProvince != nil {
                    map["EProvince"] = self.EProvince!
                }
                if self.EVenu != nil {
                    map["EVenu"] = self.EVenu!
                }
                if self.email != nil {
                    map["Email"] = self.email!
                }
                if self.extend != nil {
                    map["Extend"] = self.extend!
                }
                if self.faxArea != nil {
                    map["FaxArea"] = self.faxArea!
                }
                if self.faxExt != nil {
                    map["FaxExt"] = self.faxExt!
                }
                if self.faxMain != nil {
                    map["FaxMain"] = self.faxMain!
                }
                if self.mobile != nil {
                    map["Mobile"] = self.mobile!
                }
                if self.postalcode != nil {
                    map["Postalcode"] = self.postalcode!
                }
                if self.regType != nil {
                    map["RegType"] = self.regType!
                }
                if self.registrantId != nil {
                    map["RegistrantId"] = self.registrantId!
                }
                if self.telArea != nil {
                    map["TelArea"] = self.telArea!
                }
                if self.telExt != nil {
                    map["TelExt"] = self.telExt!
                }
                if self.telMain != nil {
                    map["TelMain"] = self.telMain!
                }
                if self.vspContactId != nil {
                    map["VspContactId"] = self.vspContactId!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["BizId"] as? Int64 {
                    self.bizId = value
                }
                if let value = dict["CCity"] as? String {
                    self.CCity = value
                }
                if let value = dict["CCompany"] as? String {
                    self.CCompany = value
                }
                if let value = dict["CCountry"] as? String {
                    self.CCountry = value
                }
                if let value = dict["CName"] as? String {
                    self.CName = value
                }
                if let value = dict["CProvince"] as? String {
                    self.CProvince = value
                }
                if let value = dict["CVenu"] as? String {
                    self.CVenu = value
                }
                if let value = dict["ECity"] as? String {
                    self.ECity = value
                }
                if let value = dict["ECompany"] as? String {
                    self.ECompany = value
                }
                if let value = dict["EName"] as? String {
                    self.EName = value
                }
                if let value = dict["EProvince"] as? String {
                    self.EProvince = value
                }
                if let value = dict["EVenu"] as? String {
                    self.EVenu = value
                }
                if let value = dict["Email"] as? String {
                    self.email = value
                }
                if let value = dict["Extend"] as? String {
                    self.extend = value
                }
                if let value = dict["FaxArea"] as? String {
                    self.faxArea = value
                }
                if let value = dict["FaxExt"] as? String {
                    self.faxExt = value
                }
                if let value = dict["FaxMain"] as? String {
                    self.faxMain = value
                }
                if let value = dict["Mobile"] as? String {
                    self.mobile = value
                }
                if let value = dict["Postalcode"] as? String {
                    self.postalcode = value
                }
                if let value = dict["RegType"] as? Int32 {
                    self.regType = value
                }
                if let value = dict["RegistrantId"] as? String {
                    self.registrantId = value
                }
                if let value = dict["TelArea"] as? String {
                    self.telArea = value
                }
                if let value = dict["TelExt"] as? String {
                    self.telExt = value
                }
                if let value = dict["TelMain"] as? String {
                    self.telMain = value
                }
                if let value = dict["VspContactId"] as? String {
                    self.vspContactId = value
                }
            }
        }
        public class DomainSpecialBizCredentials : Tea.TeaModel {
            public var bizId: Int64?

            public var credentialNo: String?

            public var credentialType: String?

            public var credentialUrl: String?

            public var domainName: String?

            public var holderCert: Int32?

            public var saleId: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.bizId != nil {
                    map["BizId"] = self.bizId!
                }
                if self.credentialNo != nil {
                    map["CredentialNo"] = self.credentialNo!
                }
                if self.credentialType != nil {
                    map["CredentialType"] = self.credentialType!
                }
                if self.credentialUrl != nil {
                    map["CredentialUrl"] = self.credentialUrl!
                }
                if self.domainName != nil {
                    map["DomainName"] = self.domainName!
                }
                if self.holderCert != nil {
                    map["HolderCert"] = self.holderCert!
                }
                if self.saleId != nil {
                    map["SaleId"] = self.saleId!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["BizId"] as? Int64 {
                    self.bizId = value
                }
                if let value = dict["CredentialNo"] as? String {
                    self.credentialNo = value
                }
                if let value = dict["CredentialType"] as? String {
                    self.credentialType = value
                }
                if let value = dict["CredentialUrl"] as? String {
                    self.credentialUrl = value
                }
                if let value = dict["DomainName"] as? String {
                    self.domainName = value
                }
                if let value = dict["HolderCert"] as? Int32 {
                    self.holderCert = value
                }
                if let value = dict["SaleId"] as? String {
                    self.saleId = value
                }
            }
        }
        public class DomainSpecialOrderResult : Tea.TeaModel {
            public var actionType: String?

            public var orderAmount: Double?

            public var orderCurrency: String?

            public var orderId: String?

            public var orderStatus: String?

            public var orderTime: String?

            public var orderYear: Int32?

            public var saleId: String?

            public var subOrderId: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.actionType != nil {
                    map["ActionType"] = self.actionType!
                }
                if self.orderAmount != nil {
                    map["OrderAmount"] = self.orderAmount!
                }
                if self.orderCurrency != nil {
                    map["OrderCurrency"] = self.orderCurrency!
                }
                if self.orderId != nil {
                    map["OrderId"] = self.orderId!
                }
                if self.orderStatus != nil {
                    map["OrderStatus"] = self.orderStatus!
                }
                if self.orderTime != nil {
                    map["OrderTime"] = self.orderTime!
                }
                if self.orderYear != nil {
                    map["OrderYear"] = self.orderYear!
                }
                if self.saleId != nil {
                    map["SaleId"] = self.saleId!
                }
                if self.subOrderId != nil {
                    map["SubOrderId"] = self.subOrderId!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["ActionType"] as? String {
                    self.actionType = value
                }
                if let value = dict["OrderAmount"] as? Double {
                    self.orderAmount = value
                }
                if let value = dict["OrderCurrency"] as? String {
                    self.orderCurrency = value
                }
                if let value = dict["OrderId"] as? String {
                    self.orderId = value
                }
                if let value = dict["OrderStatus"] as? String {
                    self.orderStatus = value
                }
                if let value = dict["OrderTime"] as? String {
                    self.orderTime = value
                }
                if let value = dict["OrderYear"] as? Int32 {
                    self.orderYear = value
                }
                if let value = dict["SaleId"] as? String {
                    self.saleId = value
                }
                if let value = dict["SubOrderId"] as? String {
                    self.subOrderId = value
                }
            }
        }
        public var auditMsg: String?

        public var bizName: String?

        public var bizNo: String?

        public var bizStatus: String?

        public var bizType: String?

        public var createTime: Int64?

        public var domainName: String?

        public var domainSpecialBizContact: QueryDomainSpecialBizDetailResponseBody.Module.DomainSpecialBizContact?

        public var domainSpecialBizCredentials: [QueryDomainSpecialBizDetailResponseBody.Module.DomainSpecialBizCredentials]?

        public var domainSpecialOrderResult: QueryDomainSpecialBizDetailResponseBody.Module.DomainSpecialOrderResult?

        public var gmtCreate: String?

        public var gmtModified: String?

        public var id: Int64?

        public var orderId: String?

        public var productId: String?

        public var saleId: String?

        public var status: Int32?

        public var statusDesc: String?

        public var updateTime: Int64?

        public var userId: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.domainSpecialBizContact?.validate()
            try self.domainSpecialOrderResult?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.auditMsg != nil {
                map["AuditMsg"] = self.auditMsg!
            }
            if self.bizName != nil {
                map["BizName"] = self.bizName!
            }
            if self.bizNo != nil {
                map["BizNo"] = self.bizNo!
            }
            if self.bizStatus != nil {
                map["BizStatus"] = self.bizStatus!
            }
            if self.bizType != nil {
                map["BizType"] = self.bizType!
            }
            if self.createTime != nil {
                map["CreateTime"] = self.createTime!
            }
            if self.domainName != nil {
                map["DomainName"] = self.domainName!
            }
            if self.domainSpecialBizContact != nil {
                map["DomainSpecialBizContact"] = self.domainSpecialBizContact?.toMap()
            }
            if self.domainSpecialBizCredentials != nil {
                var tmp : [Any] = []
                for k in self.domainSpecialBizCredentials! {
                    tmp.append(k.toMap())
                }
                map["DomainSpecialBizCredentials"] = tmp
            }
            if self.domainSpecialOrderResult != nil {
                map["DomainSpecialOrderResult"] = self.domainSpecialOrderResult?.toMap()
            }
            if self.gmtCreate != nil {
                map["GmtCreate"] = self.gmtCreate!
            }
            if self.gmtModified != nil {
                map["GmtModified"] = self.gmtModified!
            }
            if self.id != nil {
                map["Id"] = self.id!
            }
            if self.orderId != nil {
                map["OrderId"] = self.orderId!
            }
            if self.productId != nil {
                map["ProductId"] = self.productId!
            }
            if self.saleId != nil {
                map["SaleId"] = self.saleId!
            }
            if self.status != nil {
                map["Status"] = self.status!
            }
            if self.statusDesc != nil {
                map["StatusDesc"] = self.statusDesc!
            }
            if self.updateTime != nil {
                map["UpdateTime"] = self.updateTime!
            }
            if self.userId != nil {
                map["UserId"] = self.userId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["AuditMsg"] as? String {
                self.auditMsg = value
            }
            if let value = dict["BizName"] as? String {
                self.bizName = value
            }
            if let value = dict["BizNo"] as? String {
                self.bizNo = value
            }
            if let value = dict["BizStatus"] as? String {
                self.bizStatus = value
            }
            if let value = dict["BizType"] as? String {
                self.bizType = value
            }
            if let value = dict["CreateTime"] as? Int64 {
                self.createTime = value
            }
            if let value = dict["DomainName"] as? String {
                self.domainName = value
            }
            if let value = dict["DomainSpecialBizContact"] as? [String: Any?] {
                var model = QueryDomainSpecialBizDetailResponseBody.Module.DomainSpecialBizContact()
                model.fromMap(value)
                self.domainSpecialBizContact = model
            }
            if let value = dict["DomainSpecialBizCredentials"] as? [Any?] {
                var tmp : [QueryDomainSpecialBizDetailResponseBody.Module.DomainSpecialBizCredentials] = []
                for v in value {
                    if v != nil {
                        var model = QueryDomainSpecialBizDetailResponseBody.Module.DomainSpecialBizCredentials()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.domainSpecialBizCredentials = tmp
            }
            if let value = dict["DomainSpecialOrderResult"] as? [String: Any?] {
                var model = QueryDomainSpecialBizDetailResponseBody.Module.DomainSpecialOrderResult()
                model.fromMap(value)
                self.domainSpecialOrderResult = model
            }
            if let value = dict["GmtCreate"] as? String {
                self.gmtCreate = value
            }
            if let value = dict["GmtModified"] as? String {
                self.gmtModified = value
            }
            if let value = dict["Id"] as? Int64 {
                self.id = value
            }
            if let value = dict["OrderId"] as? String {
                self.orderId = value
            }
            if let value = dict["ProductId"] as? String {
                self.productId = value
            }
            if let value = dict["SaleId"] as? String {
                self.saleId = value
            }
            if let value = dict["Status"] as? Int32 {
                self.status = value
            }
            if let value = dict["StatusDesc"] as? String {
                self.statusDesc = value
            }
            if let value = dict["UpdateTime"] as? Int64 {
                self.updateTime = value
            }
            if let value = dict["UserId"] as? String {
                self.userId = value
            }
        }
    }
    public var allowRetry: Bool?

    public var appName: String?

    public var dynamicCode: String?

    public var dynamicMessage: String?

    public var errorArgs: [Any]?

    public var errorCode: String?

    public var errorMsg: String?

    public var httpStatusCode: Int32?

    public var module: QueryDomainSpecialBizDetailResponseBody.Module?

    public var requestId: String?

    public var success: Bool?

    public var synchro: Bool?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.module?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.allowRetry != nil {
            map["AllowRetry"] = self.allowRetry!
        }
        if self.appName != nil {
            map["AppName"] = self.appName!
        }
        if self.dynamicCode != nil {
            map["DynamicCode"] = self.dynamicCode!
        }
        if self.dynamicMessage != nil {
            map["DynamicMessage"] = self.dynamicMessage!
        }
        if self.errorArgs != nil {
            map["ErrorArgs"] = self.errorArgs!
        }
        if self.errorCode != nil {
            map["ErrorCode"] = self.errorCode!
        }
        if self.errorMsg != nil {
            map["ErrorMsg"] = self.errorMsg!
        }
        if self.httpStatusCode != nil {
            map["HttpStatusCode"] = self.httpStatusCode!
        }
        if self.module != nil {
            map["Module"] = self.module?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.success != nil {
            map["Success"] = self.success!
        }
        if self.synchro != nil {
            map["Synchro"] = self.synchro!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AllowRetry"] as? Bool {
            self.allowRetry = value
        }
        if let value = dict["AppName"] as? String {
            self.appName = value
        }
        if let value = dict["DynamicCode"] as? String {
            self.dynamicCode = value
        }
        if let value = dict["DynamicMessage"] as? String {
            self.dynamicMessage = value
        }
        if let value = dict["ErrorArgs"] as? [Any] {
            self.errorArgs = value
        }
        if let value = dict["ErrorCode"] as? String {
            self.errorCode = value
        }
        if let value = dict["ErrorMsg"] as? String {
            self.errorMsg = value
        }
        if let value = dict["HttpStatusCode"] as? Int32 {
            self.httpStatusCode = value
        }
        if let value = dict["Module"] as? [String: Any?] {
            var model = QueryDomainSpecialBizDetailResponseBody.Module()
            model.fromMap(value)
            self.module = model
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
        if let value = dict["Synchro"] as? Bool {
            self.synchro = value
        }
    }
}

public class QueryDomainSpecialBizDetailResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: QueryDomainSpecialBizDetailResponseBody?

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
            var model = QueryDomainSpecialBizDetailResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class QueryDomainSpecialBizInfoByDomainRequest : Tea.TeaModel {
    public var bizType: String?

    public var domainName: String?

    public var userClientIp: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.bizType != nil {
            map["BizType"] = self.bizType!
        }
        if self.domainName != nil {
            map["DomainName"] = self.domainName!
        }
        if self.userClientIp != nil {
            map["UserClientIp"] = self.userClientIp!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["BizType"] as? String {
            self.bizType = value
        }
        if let value = dict["DomainName"] as? String {
            self.domainName = value
        }
        if let value = dict["UserClientIp"] as? String {
            self.userClientIp = value
        }
    }
}

public class QueryDomainSpecialBizInfoByDomainResponseBody : Tea.TeaModel {
    public class Module : Tea.TeaModel {
        public class DomainSpecialBizContact : Tea.TeaModel {
            public var bizId: Int64?

            public var CCity: String?

            public var CCompany: String?

            public var CCountry: String?

            public var CName: String?

            public var CProvince: String?

            public var CVenu: String?

            public var ECity: String?

            public var ECompany: String?

            public var EName: String?

            public var EProvince: String?

            public var EVenu: String?

            public var email: String?

            public var extend: String?

            public var faxArea: String?

            public var faxExt: String?

            public var faxMain: String?

            public var mobile: String?

            public var postalcode: String?

            public var regType: Int32?

            public var registrantId: String?

            public var telArea: String?

            public var telExt: String?

            public var telMain: String?

            public var vspContactId: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.bizId != nil {
                    map["BizId"] = self.bizId!
                }
                if self.CCity != nil {
                    map["CCity"] = self.CCity!
                }
                if self.CCompany != nil {
                    map["CCompany"] = self.CCompany!
                }
                if self.CCountry != nil {
                    map["CCountry"] = self.CCountry!
                }
                if self.CName != nil {
                    map["CName"] = self.CName!
                }
                if self.CProvince != nil {
                    map["CProvince"] = self.CProvince!
                }
                if self.CVenu != nil {
                    map["CVenu"] = self.CVenu!
                }
                if self.ECity != nil {
                    map["ECity"] = self.ECity!
                }
                if self.ECompany != nil {
                    map["ECompany"] = self.ECompany!
                }
                if self.EName != nil {
                    map["EName"] = self.EName!
                }
                if self.EProvince != nil {
                    map["EProvince"] = self.EProvince!
                }
                if self.EVenu != nil {
                    map["EVenu"] = self.EVenu!
                }
                if self.email != nil {
                    map["Email"] = self.email!
                }
                if self.extend != nil {
                    map["Extend"] = self.extend!
                }
                if self.faxArea != nil {
                    map["FaxArea"] = self.faxArea!
                }
                if self.faxExt != nil {
                    map["FaxExt"] = self.faxExt!
                }
                if self.faxMain != nil {
                    map["FaxMain"] = self.faxMain!
                }
                if self.mobile != nil {
                    map["Mobile"] = self.mobile!
                }
                if self.postalcode != nil {
                    map["Postalcode"] = self.postalcode!
                }
                if self.regType != nil {
                    map["RegType"] = self.regType!
                }
                if self.registrantId != nil {
                    map["RegistrantId"] = self.registrantId!
                }
                if self.telArea != nil {
                    map["TelArea"] = self.telArea!
                }
                if self.telExt != nil {
                    map["TelExt"] = self.telExt!
                }
                if self.telMain != nil {
                    map["TelMain"] = self.telMain!
                }
                if self.vspContactId != nil {
                    map["VspContactId"] = self.vspContactId!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["BizId"] as? Int64 {
                    self.bizId = value
                }
                if let value = dict["CCity"] as? String {
                    self.CCity = value
                }
                if let value = dict["CCompany"] as? String {
                    self.CCompany = value
                }
                if let value = dict["CCountry"] as? String {
                    self.CCountry = value
                }
                if let value = dict["CName"] as? String {
                    self.CName = value
                }
                if let value = dict["CProvince"] as? String {
                    self.CProvince = value
                }
                if let value = dict["CVenu"] as? String {
                    self.CVenu = value
                }
                if let value = dict["ECity"] as? String {
                    self.ECity = value
                }
                if let value = dict["ECompany"] as? String {
                    self.ECompany = value
                }
                if let value = dict["EName"] as? String {
                    self.EName = value
                }
                if let value = dict["EProvince"] as? String {
                    self.EProvince = value
                }
                if let value = dict["EVenu"] as? String {
                    self.EVenu = value
                }
                if let value = dict["Email"] as? String {
                    self.email = value
                }
                if let value = dict["Extend"] as? String {
                    self.extend = value
                }
                if let value = dict["FaxArea"] as? String {
                    self.faxArea = value
                }
                if let value = dict["FaxExt"] as? String {
                    self.faxExt = value
                }
                if let value = dict["FaxMain"] as? String {
                    self.faxMain = value
                }
                if let value = dict["Mobile"] as? String {
                    self.mobile = value
                }
                if let value = dict["Postalcode"] as? String {
                    self.postalcode = value
                }
                if let value = dict["RegType"] as? Int32 {
                    self.regType = value
                }
                if let value = dict["RegistrantId"] as? String {
                    self.registrantId = value
                }
                if let value = dict["TelArea"] as? String {
                    self.telArea = value
                }
                if let value = dict["TelExt"] as? String {
                    self.telExt = value
                }
                if let value = dict["TelMain"] as? String {
                    self.telMain = value
                }
                if let value = dict["VspContactId"] as? String {
                    self.vspContactId = value
                }
            }
        }
        public class DomainSpecialBizCredentials : Tea.TeaModel {
            public var bizId: Int64?

            public var credentialNo: String?

            public var credentialType: String?

            public var credentialUrl: String?

            public var domainName: String?

            public var holderCert: Int32?

            public var saleId: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.bizId != nil {
                    map["BizId"] = self.bizId!
                }
                if self.credentialNo != nil {
                    map["CredentialNo"] = self.credentialNo!
                }
                if self.credentialType != nil {
                    map["CredentialType"] = self.credentialType!
                }
                if self.credentialUrl != nil {
                    map["CredentialUrl"] = self.credentialUrl!
                }
                if self.domainName != nil {
                    map["DomainName"] = self.domainName!
                }
                if self.holderCert != nil {
                    map["HolderCert"] = self.holderCert!
                }
                if self.saleId != nil {
                    map["SaleId"] = self.saleId!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["BizId"] as? Int64 {
                    self.bizId = value
                }
                if let value = dict["CredentialNo"] as? String {
                    self.credentialNo = value
                }
                if let value = dict["CredentialType"] as? String {
                    self.credentialType = value
                }
                if let value = dict["CredentialUrl"] as? String {
                    self.credentialUrl = value
                }
                if let value = dict["DomainName"] as? String {
                    self.domainName = value
                }
                if let value = dict["HolderCert"] as? Int32 {
                    self.holderCert = value
                }
                if let value = dict["SaleId"] as? String {
                    self.saleId = value
                }
            }
        }
        public var auditMsg: String?

        public var bizName: String?

        public var bizNo: String?

        public var bizStatus: String?

        public var bizType: String?

        public var createTime: Int64?

        public var domainName: String?

        public var domainSpecialBizContact: QueryDomainSpecialBizInfoByDomainResponseBody.Module.DomainSpecialBizContact?

        public var domainSpecialBizCredentials: [QueryDomainSpecialBizInfoByDomainResponseBody.Module.DomainSpecialBizCredentials]?

        public var gmtCreate: String?

        public var gmtModified: String?

        public var id: Int64?

        public var orderId: String?

        public var productId: String?

        public var saleId: String?

        public var status: Int32?

        public var statusDesc: String?

        public var updateTime: Int64?

        public var userId: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.domainSpecialBizContact?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.auditMsg != nil {
                map["AuditMsg"] = self.auditMsg!
            }
            if self.bizName != nil {
                map["BizName"] = self.bizName!
            }
            if self.bizNo != nil {
                map["BizNo"] = self.bizNo!
            }
            if self.bizStatus != nil {
                map["BizStatus"] = self.bizStatus!
            }
            if self.bizType != nil {
                map["BizType"] = self.bizType!
            }
            if self.createTime != nil {
                map["CreateTime"] = self.createTime!
            }
            if self.domainName != nil {
                map["DomainName"] = self.domainName!
            }
            if self.domainSpecialBizContact != nil {
                map["DomainSpecialBizContact"] = self.domainSpecialBizContact?.toMap()
            }
            if self.domainSpecialBizCredentials != nil {
                var tmp : [Any] = []
                for k in self.domainSpecialBizCredentials! {
                    tmp.append(k.toMap())
                }
                map["DomainSpecialBizCredentials"] = tmp
            }
            if self.gmtCreate != nil {
                map["GmtCreate"] = self.gmtCreate!
            }
            if self.gmtModified != nil {
                map["GmtModified"] = self.gmtModified!
            }
            if self.id != nil {
                map["Id"] = self.id!
            }
            if self.orderId != nil {
                map["OrderId"] = self.orderId!
            }
            if self.productId != nil {
                map["ProductId"] = self.productId!
            }
            if self.saleId != nil {
                map["SaleId"] = self.saleId!
            }
            if self.status != nil {
                map["Status"] = self.status!
            }
            if self.statusDesc != nil {
                map["StatusDesc"] = self.statusDesc!
            }
            if self.updateTime != nil {
                map["UpdateTime"] = self.updateTime!
            }
            if self.userId != nil {
                map["UserId"] = self.userId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["AuditMsg"] as? String {
                self.auditMsg = value
            }
            if let value = dict["BizName"] as? String {
                self.bizName = value
            }
            if let value = dict["BizNo"] as? String {
                self.bizNo = value
            }
            if let value = dict["BizStatus"] as? String {
                self.bizStatus = value
            }
            if let value = dict["BizType"] as? String {
                self.bizType = value
            }
            if let value = dict["CreateTime"] as? Int64 {
                self.createTime = value
            }
            if let value = dict["DomainName"] as? String {
                self.domainName = value
            }
            if let value = dict["DomainSpecialBizContact"] as? [String: Any?] {
                var model = QueryDomainSpecialBizInfoByDomainResponseBody.Module.DomainSpecialBizContact()
                model.fromMap(value)
                self.domainSpecialBizContact = model
            }
            if let value = dict["DomainSpecialBizCredentials"] as? [Any?] {
                var tmp : [QueryDomainSpecialBizInfoByDomainResponseBody.Module.DomainSpecialBizCredentials] = []
                for v in value {
                    if v != nil {
                        var model = QueryDomainSpecialBizInfoByDomainResponseBody.Module.DomainSpecialBizCredentials()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.domainSpecialBizCredentials = tmp
            }
            if let value = dict["GmtCreate"] as? String {
                self.gmtCreate = value
            }
            if let value = dict["GmtModified"] as? String {
                self.gmtModified = value
            }
            if let value = dict["Id"] as? Int64 {
                self.id = value
            }
            if let value = dict["OrderId"] as? String {
                self.orderId = value
            }
            if let value = dict["ProductId"] as? String {
                self.productId = value
            }
            if let value = dict["SaleId"] as? String {
                self.saleId = value
            }
            if let value = dict["Status"] as? Int32 {
                self.status = value
            }
            if let value = dict["StatusDesc"] as? String {
                self.statusDesc = value
            }
            if let value = dict["UpdateTime"] as? Int64 {
                self.updateTime = value
            }
            if let value = dict["UserId"] as? String {
                self.userId = value
            }
        }
    }
    public var allowRetry: Bool?

    public var appName: String?

    public var dynamicCode: String?

    public var dynamicMessage: String?

    public var errorArgs: [Any]?

    public var errorCode: String?

    public var errorMsg: String?

    public var httpStatusCode: Int32?

    public var module: QueryDomainSpecialBizInfoByDomainResponseBody.Module?

    public var requestId: String?

    public var success: Bool?

    public var synchro: Bool?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.module?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.allowRetry != nil {
            map["AllowRetry"] = self.allowRetry!
        }
        if self.appName != nil {
            map["AppName"] = self.appName!
        }
        if self.dynamicCode != nil {
            map["DynamicCode"] = self.dynamicCode!
        }
        if self.dynamicMessage != nil {
            map["DynamicMessage"] = self.dynamicMessage!
        }
        if self.errorArgs != nil {
            map["ErrorArgs"] = self.errorArgs!
        }
        if self.errorCode != nil {
            map["ErrorCode"] = self.errorCode!
        }
        if self.errorMsg != nil {
            map["ErrorMsg"] = self.errorMsg!
        }
        if self.httpStatusCode != nil {
            map["HttpStatusCode"] = self.httpStatusCode!
        }
        if self.module != nil {
            map["Module"] = self.module?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.success != nil {
            map["Success"] = self.success!
        }
        if self.synchro != nil {
            map["Synchro"] = self.synchro!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AllowRetry"] as? Bool {
            self.allowRetry = value
        }
        if let value = dict["AppName"] as? String {
            self.appName = value
        }
        if let value = dict["DynamicCode"] as? String {
            self.dynamicCode = value
        }
        if let value = dict["DynamicMessage"] as? String {
            self.dynamicMessage = value
        }
        if let value = dict["ErrorArgs"] as? [Any] {
            self.errorArgs = value
        }
        if let value = dict["ErrorCode"] as? String {
            self.errorCode = value
        }
        if let value = dict["ErrorMsg"] as? String {
            self.errorMsg = value
        }
        if let value = dict["HttpStatusCode"] as? Int32 {
            self.httpStatusCode = value
        }
        if let value = dict["Module"] as? [String: Any?] {
            var model = QueryDomainSpecialBizInfoByDomainResponseBody.Module()
            model.fromMap(value)
            self.module = model
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
        if let value = dict["Synchro"] as? Bool {
            self.synchro = value
        }
    }
}

public class QueryDomainSpecialBizInfoByDomainResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: QueryDomainSpecialBizInfoByDomainResponseBody?

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
            var model = QueryDomainSpecialBizInfoByDomainResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class QueryDomainSuffixRequest : Tea.TeaModel {
    public var lang: String?

    public var userClientIp: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.lang != nil {
            map["Lang"] = self.lang!
        }
        if self.userClientIp != nil {
            map["UserClientIp"] = self.userClientIp!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Lang"] as? String {
            self.lang = value
        }
        if let value = dict["UserClientIp"] as? String {
            self.userClientIp = value
        }
    }
}

public class QueryDomainSuffixResponseBody : Tea.TeaModel {
    public class SuffixList : Tea.TeaModel {
        public var suffix: [String]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.suffix != nil {
                map["Suffix"] = self.suffix!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Suffix"] as? [String] {
                self.suffix = value
            }
        }
    }
    public var requestId: String?

    public var suffixList: QueryDomainSuffixResponseBody.SuffixList?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.suffixList?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.suffixList != nil {
            map["SuffixList"] = self.suffixList?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["SuffixList"] as? [String: Any?] {
            var model = QueryDomainSuffixResponseBody.SuffixList()
            model.fromMap(value)
            self.suffixList = model
        }
    }
}

public class QueryDomainSuffixResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: QueryDomainSuffixResponseBody?

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
            var model = QueryDomainSuffixResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class QueryEmailVerificationRequest : Tea.TeaModel {
    public var email: String?

    public var lang: String?

    public var userClientIp: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.email != nil {
            map["Email"] = self.email!
        }
        if self.lang != nil {
            map["Lang"] = self.lang!
        }
        if self.userClientIp != nil {
            map["UserClientIp"] = self.userClientIp!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Email"] as? String {
            self.email = value
        }
        if let value = dict["Lang"] as? String {
            self.lang = value
        }
        if let value = dict["UserClientIp"] as? String {
            self.userClientIp = value
        }
    }
}

public class QueryEmailVerificationResponseBody : Tea.TeaModel {
    public var confirmIp: String?

    public var email: String?

    public var emailVerificationNo: String?

    public var gmtCreate: String?

    public var gmtModified: String?

    public var requestId: String?

    public var sendIp: String?

    public var tokenSendTime: String?

    public var userId: String?

    public var verificationStatus: Int32?

    public var verificationTime: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.confirmIp != nil {
            map["ConfirmIp"] = self.confirmIp!
        }
        if self.email != nil {
            map["Email"] = self.email!
        }
        if self.emailVerificationNo != nil {
            map["EmailVerificationNo"] = self.emailVerificationNo!
        }
        if self.gmtCreate != nil {
            map["GmtCreate"] = self.gmtCreate!
        }
        if self.gmtModified != nil {
            map["GmtModified"] = self.gmtModified!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.sendIp != nil {
            map["SendIp"] = self.sendIp!
        }
        if self.tokenSendTime != nil {
            map["TokenSendTime"] = self.tokenSendTime!
        }
        if self.userId != nil {
            map["UserId"] = self.userId!
        }
        if self.verificationStatus != nil {
            map["VerificationStatus"] = self.verificationStatus!
        }
        if self.verificationTime != nil {
            map["VerificationTime"] = self.verificationTime!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ConfirmIp"] as? String {
            self.confirmIp = value
        }
        if let value = dict["Email"] as? String {
            self.email = value
        }
        if let value = dict["EmailVerificationNo"] as? String {
            self.emailVerificationNo = value
        }
        if let value = dict["GmtCreate"] as? String {
            self.gmtCreate = value
        }
        if let value = dict["GmtModified"] as? String {
            self.gmtModified = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["SendIp"] as? String {
            self.sendIp = value
        }
        if let value = dict["TokenSendTime"] as? String {
            self.tokenSendTime = value
        }
        if let value = dict["UserId"] as? String {
            self.userId = value
        }
        if let value = dict["VerificationStatus"] as? Int32 {
            self.verificationStatus = value
        }
        if let value = dict["VerificationTime"] as? String {
            self.verificationTime = value
        }
    }
}

public class QueryEmailVerificationResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: QueryEmailVerificationResponseBody?

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
            var model = QueryEmailVerificationResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class QueryEnsAssociationRequest : Tea.TeaModel {
    public var domainName: String?

    public var lang: String?

    public var userClientIp: String?

    public override init() {
        super.init()
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
        if self.lang != nil {
            map["Lang"] = self.lang!
        }
        if self.userClientIp != nil {
            map["UserClientIp"] = self.userClientIp!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["DomainName"] as? String {
            self.domainName = value
        }
        if let value = dict["Lang"] as? String {
            self.lang = value
        }
        if let value = dict["UserClientIp"] as? String {
            self.userClientIp = value
        }
    }
}

public class QueryEnsAssociationResponseBody : Tea.TeaModel {
    public var address: String?

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
        if self.address != nil {
            map["Address"] = self.address!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Address"] as? String {
            self.address = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class QueryEnsAssociationResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: QueryEnsAssociationResponseBody?

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
            var model = QueryEnsAssociationResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class QueryFailReasonForDomainRealNameVerificationRequest : Tea.TeaModel {
    public var domainName: String?

    public var lang: String?

    public var realNameVerificationAction: String?

    public var userClientIp: String?

    public override init() {
        super.init()
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
        if self.lang != nil {
            map["Lang"] = self.lang!
        }
        if self.realNameVerificationAction != nil {
            map["RealNameVerificationAction"] = self.realNameVerificationAction!
        }
        if self.userClientIp != nil {
            map["UserClientIp"] = self.userClientIp!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["DomainName"] as? String {
            self.domainName = value
        }
        if let value = dict["Lang"] as? String {
            self.lang = value
        }
        if let value = dict["RealNameVerificationAction"] as? String {
            self.realNameVerificationAction = value
        }
        if let value = dict["UserClientIp"] as? String {
            self.userClientIp = value
        }
    }
}

public class QueryFailReasonForDomainRealNameVerificationResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var date: String?

        public var domainNameVerificationStatus: String?

        public var failReason: String?

        public override init() {
            super.init()
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
            if self.domainNameVerificationStatus != nil {
                map["DomainNameVerificationStatus"] = self.domainNameVerificationStatus!
            }
            if self.failReason != nil {
                map["FailReason"] = self.failReason!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Date"] as? String {
                self.date = value
            }
            if let value = dict["DomainNameVerificationStatus"] as? String {
                self.domainNameVerificationStatus = value
            }
            if let value = dict["FailReason"] as? String {
                self.failReason = value
            }
        }
    }
    public var data: [QueryFailReasonForDomainRealNameVerificationResponseBody.Data]?

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
            var tmp : [Any] = []
            for k in self.data! {
                tmp.append(k.toMap())
            }
            map["Data"] = tmp
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Data"] as? [Any?] {
            var tmp : [QueryFailReasonForDomainRealNameVerificationResponseBody.Data] = []
            for v in value {
                if v != nil {
                    var model = QueryFailReasonForDomainRealNameVerificationResponseBody.Data()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.data = tmp
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class QueryFailReasonForDomainRealNameVerificationResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: QueryFailReasonForDomainRealNameVerificationResponseBody?

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
            var model = QueryFailReasonForDomainRealNameVerificationResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class QueryFailReasonForRegistrantProfileRealNameVerificationRequest : Tea.TeaModel {
    public var lang: String?

    public var registrantProfileID: Int64?

    public var userClientIp: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.lang != nil {
            map["Lang"] = self.lang!
        }
        if self.registrantProfileID != nil {
            map["RegistrantProfileID"] = self.registrantProfileID!
        }
        if self.userClientIp != nil {
            map["UserClientIp"] = self.userClientIp!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Lang"] as? String {
            self.lang = value
        }
        if let value = dict["RegistrantProfileID"] as? Int64 {
            self.registrantProfileID = value
        }
        if let value = dict["UserClientIp"] as? String {
            self.userClientIp = value
        }
    }
}

public class QueryFailReasonForRegistrantProfileRealNameVerificationResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var date: String?

        public var failReason: String?

        public override init() {
            super.init()
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
            if self.failReason != nil {
                map["FailReason"] = self.failReason!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Date"] as? String {
                self.date = value
            }
            if let value = dict["FailReason"] as? String {
                self.failReason = value
            }
        }
    }
    public var data: [QueryFailReasonForRegistrantProfileRealNameVerificationResponseBody.Data]?

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
            var tmp : [Any] = []
            for k in self.data! {
                tmp.append(k.toMap())
            }
            map["Data"] = tmp
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Data"] as? [Any?] {
            var tmp : [QueryFailReasonForRegistrantProfileRealNameVerificationResponseBody.Data] = []
            for v in value {
                if v != nil {
                    var model = QueryFailReasonForRegistrantProfileRealNameVerificationResponseBody.Data()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.data = tmp
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class QueryFailReasonForRegistrantProfileRealNameVerificationResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: QueryFailReasonForRegistrantProfileRealNameVerificationResponseBody?

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
            var model = QueryFailReasonForRegistrantProfileRealNameVerificationResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class QueryFailingReasonListForQualificationRequest : Tea.TeaModel {
    public var instanceId: String?

    public var lang: String?

    public var limit: Int32?

    public var qualificationType: String?

    public var userClientIp: String?

    public override init() {
        super.init()
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
        if self.lang != nil {
            map["Lang"] = self.lang!
        }
        if self.limit != nil {
            map["Limit"] = self.limit!
        }
        if self.qualificationType != nil {
            map["QualificationType"] = self.qualificationType!
        }
        if self.userClientIp != nil {
            map["UserClientIp"] = self.userClientIp!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["Lang"] as? String {
            self.lang = value
        }
        if let value = dict["Limit"] as? Int32 {
            self.limit = value
        }
        if let value = dict["QualificationType"] as? String {
            self.qualificationType = value
        }
        if let value = dict["UserClientIp"] as? String {
            self.userClientIp = value
        }
    }
}

public class QueryFailingReasonListForQualificationResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var date: String?

        public var failReason: String?

        public override init() {
            super.init()
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
            if self.failReason != nil {
                map["FailReason"] = self.failReason!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Date"] as? String {
                self.date = value
            }
            if let value = dict["FailReason"] as? String {
                self.failReason = value
            }
        }
    }
    public var data: [QueryFailingReasonListForQualificationResponseBody.Data]?

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
            var tmp : [Any] = []
            for k in self.data! {
                tmp.append(k.toMap())
            }
            map["Data"] = tmp
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Data"] as? [Any?] {
            var tmp : [QueryFailingReasonListForQualificationResponseBody.Data] = []
            for v in value {
                if v != nil {
                    var model = QueryFailingReasonListForQualificationResponseBody.Data()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.data = tmp
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class QueryFailingReasonListForQualificationResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: QueryFailingReasonListForQualificationResponseBody?

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
            var model = QueryFailingReasonListForQualificationResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class QueryIntlFixedPriceOrderListRequest : Tea.TeaModel {
    public var bizId: String?

    public var currentPage: Int64?

    public var pageSize: Int64?

    public var status: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.bizId != nil {
            map["BizId"] = self.bizId!
        }
        if self.currentPage != nil {
            map["CurrentPage"] = self.currentPage!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.status != nil {
            map["Status"] = self.status!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["BizId"] as? String {
            self.bizId = value
        }
        if let value = dict["CurrentPage"] as? Int64 {
            self.currentPage = value
        }
        if let value = dict["PageSize"] as? Int64 {
            self.pageSize = value
        }
        if let value = dict["Status"] as? Int64 {
            self.status = value
        }
    }
}

public class QueryIntlFixedPriceOrderListResponseBody : Tea.TeaModel {
    public class Module : Tea.TeaModel {
        public class Data : Tea.TeaModel {
            public var bizId: String?

            public var createTime: Int64?

            public var domain: String?

            public var orderType: Int32?

            public var price: Int64?

            public var status: Int32?

            public var updateTime: Int64?

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
                if self.bizId != nil {
                    map["BizId"] = self.bizId!
                }
                if self.createTime != nil {
                    map["CreateTime"] = self.createTime!
                }
                if self.domain != nil {
                    map["Domain"] = self.domain!
                }
                if self.orderType != nil {
                    map["OrderType"] = self.orderType!
                }
                if self.price != nil {
                    map["Price"] = self.price!
                }
                if self.status != nil {
                    map["Status"] = self.status!
                }
                if self.updateTime != nil {
                    map["UpdateTime"] = self.updateTime!
                }
                if self.userId != nil {
                    map["UserId"] = self.userId!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["BizId"] as? String {
                    self.bizId = value
                }
                if let value = dict["CreateTime"] as? Int64 {
                    self.createTime = value
                }
                if let value = dict["Domain"] as? String {
                    self.domain = value
                }
                if let value = dict["OrderType"] as? Int32 {
                    self.orderType = value
                }
                if let value = dict["Price"] as? Int64 {
                    self.price = value
                }
                if let value = dict["Status"] as? Int32 {
                    self.status = value
                }
                if let value = dict["UpdateTime"] as? Int64 {
                    self.updateTime = value
                }
                if let value = dict["UserId"] as? String {
                    self.userId = value
                }
            }
        }
        public var currentPageNum: Int32?

        public var data: [QueryIntlFixedPriceOrderListResponseBody.Module.Data]?

        public var pageSize: Int32?

        public var totalItemNum: Int32?

        public var totalPageNum: Int32?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.currentPageNum != nil {
                map["CurrentPageNum"] = self.currentPageNum!
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
            if self.totalItemNum != nil {
                map["TotalItemNum"] = self.totalItemNum!
            }
            if self.totalPageNum != nil {
                map["TotalPageNum"] = self.totalPageNum!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["CurrentPageNum"] as? Int32 {
                self.currentPageNum = value
            }
            if let value = dict["Data"] as? [Any?] {
                var tmp : [QueryIntlFixedPriceOrderListResponseBody.Module.Data] = []
                for v in value {
                    if v != nil {
                        var model = QueryIntlFixedPriceOrderListResponseBody.Module.Data()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.data = tmp
            }
            if let value = dict["PageSize"] as? Int32 {
                self.pageSize = value
            }
            if let value = dict["TotalItemNum"] as? Int32 {
                self.totalItemNum = value
            }
            if let value = dict["TotalPageNum"] as? Int32 {
                self.totalPageNum = value
            }
        }
    }
    public var module: QueryIntlFixedPriceOrderListResponseBody.Module?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.module?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.module != nil {
            map["Module"] = self.module?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Module"] as? [String: Any?] {
            var model = QueryIntlFixedPriceOrderListResponseBody.Module()
            model.fromMap(value)
            self.module = model
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class QueryIntlFixedPriceOrderListResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: QueryIntlFixedPriceOrderListResponseBody?

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
            var model = QueryIntlFixedPriceOrderListResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class QueryLocalEnsAssociationRequest : Tea.TeaModel {
    public var domainName: String?

    public var lang: String?

    public var userClientIp: String?

    public override init() {
        super.init()
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
        if self.lang != nil {
            map["Lang"] = self.lang!
        }
        if self.userClientIp != nil {
            map["UserClientIp"] = self.userClientIp!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["DomainName"] as? String {
            self.domainName = value
        }
        if let value = dict["Lang"] as? String {
            self.lang = value
        }
        if let value = dict["UserClientIp"] as? String {
            self.userClientIp = value
        }
    }
}

public class QueryLocalEnsAssociationResponseBody : Tea.TeaModel {
    public var address: String?

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
        if self.address != nil {
            map["Address"] = self.address!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Address"] as? String {
            self.address = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class QueryLocalEnsAssociationResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: QueryLocalEnsAssociationResponseBody?

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
            var model = QueryLocalEnsAssociationResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class QueryOperationAuditInfoDetailRequest : Tea.TeaModel {
    public var auditRecordId: Int64?

    public var lang: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.auditRecordId != nil {
            map["AuditRecordId"] = self.auditRecordId!
        }
        if self.lang != nil {
            map["Lang"] = self.lang!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AuditRecordId"] as? Int64 {
            self.auditRecordId = value
        }
        if let value = dict["Lang"] as? String {
            self.lang = value
        }
    }
}

public class QueryOperationAuditInfoDetailResponseBody : Tea.TeaModel {
    public var auditInfo: String?

    public var auditStatus: Int32?

    public var auditType: Int32?

    public var businessName: String?

    public var createTime: Int64?

    public var domainName: String?

    public var id: String?

    public var remark: String?

    public var requestId: String?

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
        if self.auditInfo != nil {
            map["AuditInfo"] = self.auditInfo!
        }
        if self.auditStatus != nil {
            map["AuditStatus"] = self.auditStatus!
        }
        if self.auditType != nil {
            map["AuditType"] = self.auditType!
        }
        if self.businessName != nil {
            map["BusinessName"] = self.businessName!
        }
        if self.createTime != nil {
            map["CreateTime"] = self.createTime!
        }
        if self.domainName != nil {
            map["DomainName"] = self.domainName!
        }
        if self.id != nil {
            map["Id"] = self.id!
        }
        if self.remark != nil {
            map["Remark"] = self.remark!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.updateTime != nil {
            map["UpdateTime"] = self.updateTime!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AuditInfo"] as? String {
            self.auditInfo = value
        }
        if let value = dict["AuditStatus"] as? Int32 {
            self.auditStatus = value
        }
        if let value = dict["AuditType"] as? Int32 {
            self.auditType = value
        }
        if let value = dict["BusinessName"] as? String {
            self.businessName = value
        }
        if let value = dict["CreateTime"] as? Int64 {
            self.createTime = value
        }
        if let value = dict["DomainName"] as? String {
            self.domainName = value
        }
        if let value = dict["Id"] as? String {
            self.id = value
        }
        if let value = dict["Remark"] as? String {
            self.remark = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["UpdateTime"] as? Int64 {
            self.updateTime = value
        }
    }
}

public class QueryOperationAuditInfoDetailResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: QueryOperationAuditInfoDetailResponseBody?

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
            var model = QueryOperationAuditInfoDetailResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class QueryOperationAuditInfoListRequest : Tea.TeaModel {
    public var auditStatus: Int32?

    public var auditType: Int32?

    public var domainName: String?

    public var lang: String?

    public var pageNum: Int32?

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
        if self.auditStatus != nil {
            map["AuditStatus"] = self.auditStatus!
        }
        if self.auditType != nil {
            map["AuditType"] = self.auditType!
        }
        if self.domainName != nil {
            map["DomainName"] = self.domainName!
        }
        if self.lang != nil {
            map["Lang"] = self.lang!
        }
        if self.pageNum != nil {
            map["PageNum"] = self.pageNum!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AuditStatus"] as? Int32 {
            self.auditStatus = value
        }
        if let value = dict["AuditType"] as? Int32 {
            self.auditType = value
        }
        if let value = dict["DomainName"] as? String {
            self.domainName = value
        }
        if let value = dict["Lang"] as? String {
            self.lang = value
        }
        if let value = dict["PageNum"] as? Int32 {
            self.pageNum = value
        }
        if let value = dict["PageSize"] as? Int32 {
            self.pageSize = value
        }
    }
}

public class QueryOperationAuditInfoListResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var auditInfo: String?

        public var auditStatus: Int32?

        public var auditType: Int32?

        public var businessName: String?

        public var createTime: Int64?

        public var domainName: String?

        public var id: Int64?

        public var remark: String?

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
            if self.auditInfo != nil {
                map["AuditInfo"] = self.auditInfo!
            }
            if self.auditStatus != nil {
                map["AuditStatus"] = self.auditStatus!
            }
            if self.auditType != nil {
                map["AuditType"] = self.auditType!
            }
            if self.businessName != nil {
                map["BusinessName"] = self.businessName!
            }
            if self.createTime != nil {
                map["CreateTime"] = self.createTime!
            }
            if self.domainName != nil {
                map["DomainName"] = self.domainName!
            }
            if self.id != nil {
                map["Id"] = self.id!
            }
            if self.remark != nil {
                map["Remark"] = self.remark!
            }
            if self.updateTime != nil {
                map["UpdateTime"] = self.updateTime!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["AuditInfo"] as? String {
                self.auditInfo = value
            }
            if let value = dict["AuditStatus"] as? Int32 {
                self.auditStatus = value
            }
            if let value = dict["AuditType"] as? Int32 {
                self.auditType = value
            }
            if let value = dict["BusinessName"] as? String {
                self.businessName = value
            }
            if let value = dict["CreateTime"] as? Int64 {
                self.createTime = value
            }
            if let value = dict["DomainName"] as? String {
                self.domainName = value
            }
            if let value = dict["Id"] as? Int64 {
                self.id = value
            }
            if let value = dict["Remark"] as? String {
                self.remark = value
            }
            if let value = dict["UpdateTime"] as? Int64 {
                self.updateTime = value
            }
        }
    }
    public var currentPageNum: Int32?

    public var data: [QueryOperationAuditInfoListResponseBody.Data]?

    public var nextPage: Bool?

    public var pageSize: Int32?

    public var prePage: Bool?

    public var requestId: String?

    public var totalItemNum: Int32?

    public var totalPageNum: Int32?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.currentPageNum != nil {
            map["CurrentPageNum"] = self.currentPageNum!
        }
        if self.data != nil {
            var tmp : [Any] = []
            for k in self.data! {
                tmp.append(k.toMap())
            }
            map["Data"] = tmp
        }
        if self.nextPage != nil {
            map["NextPage"] = self.nextPage!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.prePage != nil {
            map["PrePage"] = self.prePage!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.totalItemNum != nil {
            map["TotalItemNum"] = self.totalItemNum!
        }
        if self.totalPageNum != nil {
            map["TotalPageNum"] = self.totalPageNum!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["CurrentPageNum"] as? Int32 {
            self.currentPageNum = value
        }
        if let value = dict["Data"] as? [Any?] {
            var tmp : [QueryOperationAuditInfoListResponseBody.Data] = []
            for v in value {
                if v != nil {
                    var model = QueryOperationAuditInfoListResponseBody.Data()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.data = tmp
        }
        if let value = dict["NextPage"] as? Bool {
            self.nextPage = value
        }
        if let value = dict["PageSize"] as? Int32 {
            self.pageSize = value
        }
        if let value = dict["PrePage"] as? Bool {
            self.prePage = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["TotalItemNum"] as? Int32 {
            self.totalItemNum = value
        }
        if let value = dict["TotalPageNum"] as? Int32 {
            self.totalPageNum = value
        }
    }
}

public class QueryOperationAuditInfoListResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: QueryOperationAuditInfoListResponseBody?

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
            var model = QueryOperationAuditInfoListResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class QueryQualificationDetailRequest : Tea.TeaModel {
    public var instanceId: String?

    public var lang: String?

    public var qualificationType: String?

    public var userClientIp: String?

    public override init() {
        super.init()
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
        if self.lang != nil {
            map["Lang"] = self.lang!
        }
        if self.qualificationType != nil {
            map["QualificationType"] = self.qualificationType!
        }
        if self.userClientIp != nil {
            map["UserClientIp"] = self.userClientIp!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["Lang"] as? String {
            self.lang = value
        }
        if let value = dict["QualificationType"] as? String {
            self.qualificationType = value
        }
        if let value = dict["UserClientIp"] as? String {
            self.userClientIp = value
        }
    }
}

public class QueryQualificationDetailResponseBody : Tea.TeaModel {
    public class Credentials : Tea.TeaModel {
        public class QualificationCredential : Tea.TeaModel {
            public var credentialNo: String?

            public var credentialType: String?

            public var credentialUrl: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.credentialNo != nil {
                    map["CredentialNo"] = self.credentialNo!
                }
                if self.credentialType != nil {
                    map["CredentialType"] = self.credentialType!
                }
                if self.credentialUrl != nil {
                    map["CredentialUrl"] = self.credentialUrl!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["CredentialNo"] as? String {
                    self.credentialNo = value
                }
                if let value = dict["CredentialType"] as? String {
                    self.credentialType = value
                }
                if let value = dict["CredentialUrl"] as? String {
                    self.credentialUrl = value
                }
            }
        }
        public var qualificationCredential: [QueryQualificationDetailResponseBody.Credentials.QualificationCredential]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.qualificationCredential != nil {
                var tmp : [Any] = []
                for k in self.qualificationCredential! {
                    tmp.append(k.toMap())
                }
                map["QualificationCredential"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["QualificationCredential"] as? [Any?] {
                var tmp : [QueryQualificationDetailResponseBody.Credentials.QualificationCredential] = []
                for v in value {
                    if v != nil {
                        var model = QueryQualificationDetailResponseBody.Credentials.QualificationCredential()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.qualificationCredential = tmp
            }
        }
    }
    public var auditStatus: Int32?

    public var credentials: QueryQualificationDetailResponseBody.Credentials?

    public var requestId: String?

    public var trackId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.credentials?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.auditStatus != nil {
            map["AuditStatus"] = self.auditStatus!
        }
        if self.credentials != nil {
            map["Credentials"] = self.credentials?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.trackId != nil {
            map["TrackId"] = self.trackId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AuditStatus"] as? Int32 {
            self.auditStatus = value
        }
        if let value = dict["Credentials"] as? [String: Any?] {
            var model = QueryQualificationDetailResponseBody.Credentials()
            model.fromMap(value)
            self.credentials = model
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["TrackId"] as? String {
            self.trackId = value
        }
    }
}

public class QueryQualificationDetailResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: QueryQualificationDetailResponseBody?

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
            var model = QueryQualificationDetailResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class QueryRegistrantProfileRealNameVerificationInfoRequest : Tea.TeaModel {
    public var fetchImage: Bool?

    public var lang: String?

    public var registrantProfileId: Int64?

    public var userClientIp: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.fetchImage != nil {
            map["FetchImage"] = self.fetchImage!
        }
        if self.lang != nil {
            map["Lang"] = self.lang!
        }
        if self.registrantProfileId != nil {
            map["RegistrantProfileId"] = self.registrantProfileId!
        }
        if self.userClientIp != nil {
            map["UserClientIp"] = self.userClientIp!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["FetchImage"] as? Bool {
            self.fetchImage = value
        }
        if let value = dict["Lang"] as? String {
            self.lang = value
        }
        if let value = dict["RegistrantProfileId"] as? Int64 {
            self.registrantProfileId = value
        }
        if let value = dict["UserClientIp"] as? String {
            self.userClientIp = value
        }
    }
}

public class QueryRegistrantProfileRealNameVerificationInfoResponseBody : Tea.TeaModel {
    public var identityCredential: String?

    public var identityCredentialNo: String?

    public var identityCredentialType: String?

    public var identityCredentialUrl: String?

    public var modificationDate: String?

    public var registrantProfileId: Int64?

    public var requestId: String?

    public var submissionDate: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.identityCredential != nil {
            map["IdentityCredential"] = self.identityCredential!
        }
        if self.identityCredentialNo != nil {
            map["IdentityCredentialNo"] = self.identityCredentialNo!
        }
        if self.identityCredentialType != nil {
            map["IdentityCredentialType"] = self.identityCredentialType!
        }
        if self.identityCredentialUrl != nil {
            map["IdentityCredentialUrl"] = self.identityCredentialUrl!
        }
        if self.modificationDate != nil {
            map["ModificationDate"] = self.modificationDate!
        }
        if self.registrantProfileId != nil {
            map["RegistrantProfileId"] = self.registrantProfileId!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.submissionDate != nil {
            map["SubmissionDate"] = self.submissionDate!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["IdentityCredential"] as? String {
            self.identityCredential = value
        }
        if let value = dict["IdentityCredentialNo"] as? String {
            self.identityCredentialNo = value
        }
        if let value = dict["IdentityCredentialType"] as? String {
            self.identityCredentialType = value
        }
        if let value = dict["IdentityCredentialUrl"] as? String {
            self.identityCredentialUrl = value
        }
        if let value = dict["ModificationDate"] as? String {
            self.modificationDate = value
        }
        if let value = dict["RegistrantProfileId"] as? Int64 {
            self.registrantProfileId = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["SubmissionDate"] as? String {
            self.submissionDate = value
        }
    }
}

public class QueryRegistrantProfileRealNameVerificationInfoResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: QueryRegistrantProfileRealNameVerificationInfoResponseBody?

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
            var model = QueryRegistrantProfileRealNameVerificationInfoResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class QueryRegistrantProfilesRequest : Tea.TeaModel {
    public var defaultRegistrantProfile: Bool?

    public var email: String?

    public var lang: String?

    public var pageNum: Int32?

    public var pageSize: Int32?

    public var realNameStatus: String?

    public var registrantOrganization: String?

    public var registrantProfileId: Int64?

    public var registrantProfileType: String?

    public var registrantType: String?

    public var remark: String?

    public var userClientIp: String?

    public var zhRegistrantOrganization: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.defaultRegistrantProfile != nil {
            map["DefaultRegistrantProfile"] = self.defaultRegistrantProfile!
        }
        if self.email != nil {
            map["Email"] = self.email!
        }
        if self.lang != nil {
            map["Lang"] = self.lang!
        }
        if self.pageNum != nil {
            map["PageNum"] = self.pageNum!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.realNameStatus != nil {
            map["RealNameStatus"] = self.realNameStatus!
        }
        if self.registrantOrganization != nil {
            map["RegistrantOrganization"] = self.registrantOrganization!
        }
        if self.registrantProfileId != nil {
            map["RegistrantProfileId"] = self.registrantProfileId!
        }
        if self.registrantProfileType != nil {
            map["RegistrantProfileType"] = self.registrantProfileType!
        }
        if self.registrantType != nil {
            map["RegistrantType"] = self.registrantType!
        }
        if self.remark != nil {
            map["Remark"] = self.remark!
        }
        if self.userClientIp != nil {
            map["UserClientIp"] = self.userClientIp!
        }
        if self.zhRegistrantOrganization != nil {
            map["ZhRegistrantOrganization"] = self.zhRegistrantOrganization!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["DefaultRegistrantProfile"] as? Bool {
            self.defaultRegistrantProfile = value
        }
        if let value = dict["Email"] as? String {
            self.email = value
        }
        if let value = dict["Lang"] as? String {
            self.lang = value
        }
        if let value = dict["PageNum"] as? Int32 {
            self.pageNum = value
        }
        if let value = dict["PageSize"] as? Int32 {
            self.pageSize = value
        }
        if let value = dict["RealNameStatus"] as? String {
            self.realNameStatus = value
        }
        if let value = dict["RegistrantOrganization"] as? String {
            self.registrantOrganization = value
        }
        if let value = dict["RegistrantProfileId"] as? Int64 {
            self.registrantProfileId = value
        }
        if let value = dict["RegistrantProfileType"] as? String {
            self.registrantProfileType = value
        }
        if let value = dict["RegistrantType"] as? String {
            self.registrantType = value
        }
        if let value = dict["Remark"] as? String {
            self.remark = value
        }
        if let value = dict["UserClientIp"] as? String {
            self.userClientIp = value
        }
        if let value = dict["ZhRegistrantOrganization"] as? String {
            self.zhRegistrantOrganization = value
        }
    }
}

public class QueryRegistrantProfilesResponseBody : Tea.TeaModel {
    public class RegistrantProfiles : Tea.TeaModel {
        public class RegistrantProfile : Tea.TeaModel {
            public var address: String?

            public var city: String?

            public var country: String?

            public var createTime: String?

            public var credentialNo: String?

            public var credentialType: String?

            public var defaultRegistrantProfile: Bool?

            public var email: String?

            public var emailVerificationStatus: Int32?

            public var params: String?

            public var postalCode: String?

            public var province: String?

            public var realNameStatus: String?

            public var registrantName: String?

            public var registrantOrganization: String?

            public var registrantProfileId: Int64?

            public var registrantProfileType: String?

            public var registrantType: String?

            public var remark: String?

            public var telArea: String?

            public var telExt: String?

            public var telephone: String?

            public var updateTime: String?

            public var zhAddress: String?

            public var zhCity: String?

            public var zhProvince: String?

            public var zhRegistrantName: String?

            public var zhRegistrantOrganization: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.address != nil {
                    map["Address"] = self.address!
                }
                if self.city != nil {
                    map["City"] = self.city!
                }
                if self.country != nil {
                    map["Country"] = self.country!
                }
                if self.createTime != nil {
                    map["CreateTime"] = self.createTime!
                }
                if self.credentialNo != nil {
                    map["CredentialNo"] = self.credentialNo!
                }
                if self.credentialType != nil {
                    map["CredentialType"] = self.credentialType!
                }
                if self.defaultRegistrantProfile != nil {
                    map["DefaultRegistrantProfile"] = self.defaultRegistrantProfile!
                }
                if self.email != nil {
                    map["Email"] = self.email!
                }
                if self.emailVerificationStatus != nil {
                    map["EmailVerificationStatus"] = self.emailVerificationStatus!
                }
                if self.params != nil {
                    map["Params"] = self.params!
                }
                if self.postalCode != nil {
                    map["PostalCode"] = self.postalCode!
                }
                if self.province != nil {
                    map["Province"] = self.province!
                }
                if self.realNameStatus != nil {
                    map["RealNameStatus"] = self.realNameStatus!
                }
                if self.registrantName != nil {
                    map["RegistrantName"] = self.registrantName!
                }
                if self.registrantOrganization != nil {
                    map["RegistrantOrganization"] = self.registrantOrganization!
                }
                if self.registrantProfileId != nil {
                    map["RegistrantProfileId"] = self.registrantProfileId!
                }
                if self.registrantProfileType != nil {
                    map["RegistrantProfileType"] = self.registrantProfileType!
                }
                if self.registrantType != nil {
                    map["RegistrantType"] = self.registrantType!
                }
                if self.remark != nil {
                    map["Remark"] = self.remark!
                }
                if self.telArea != nil {
                    map["TelArea"] = self.telArea!
                }
                if self.telExt != nil {
                    map["TelExt"] = self.telExt!
                }
                if self.telephone != nil {
                    map["Telephone"] = self.telephone!
                }
                if self.updateTime != nil {
                    map["UpdateTime"] = self.updateTime!
                }
                if self.zhAddress != nil {
                    map["ZhAddress"] = self.zhAddress!
                }
                if self.zhCity != nil {
                    map["ZhCity"] = self.zhCity!
                }
                if self.zhProvince != nil {
                    map["ZhProvince"] = self.zhProvince!
                }
                if self.zhRegistrantName != nil {
                    map["ZhRegistrantName"] = self.zhRegistrantName!
                }
                if self.zhRegistrantOrganization != nil {
                    map["ZhRegistrantOrganization"] = self.zhRegistrantOrganization!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["Address"] as? String {
                    self.address = value
                }
                if let value = dict["City"] as? String {
                    self.city = value
                }
                if let value = dict["Country"] as? String {
                    self.country = value
                }
                if let value = dict["CreateTime"] as? String {
                    self.createTime = value
                }
                if let value = dict["CredentialNo"] as? String {
                    self.credentialNo = value
                }
                if let value = dict["CredentialType"] as? String {
                    self.credentialType = value
                }
                if let value = dict["DefaultRegistrantProfile"] as? Bool {
                    self.defaultRegistrantProfile = value
                }
                if let value = dict["Email"] as? String {
                    self.email = value
                }
                if let value = dict["EmailVerificationStatus"] as? Int32 {
                    self.emailVerificationStatus = value
                }
                if let value = dict["Params"] as? String {
                    self.params = value
                }
                if let value = dict["PostalCode"] as? String {
                    self.postalCode = value
                }
                if let value = dict["Province"] as? String {
                    self.province = value
                }
                if let value = dict["RealNameStatus"] as? String {
                    self.realNameStatus = value
                }
                if let value = dict["RegistrantName"] as? String {
                    self.registrantName = value
                }
                if let value = dict["RegistrantOrganization"] as? String {
                    self.registrantOrganization = value
                }
                if let value = dict["RegistrantProfileId"] as? Int64 {
                    self.registrantProfileId = value
                }
                if let value = dict["RegistrantProfileType"] as? String {
                    self.registrantProfileType = value
                }
                if let value = dict["RegistrantType"] as? String {
                    self.registrantType = value
                }
                if let value = dict["Remark"] as? String {
                    self.remark = value
                }
                if let value = dict["TelArea"] as? String {
                    self.telArea = value
                }
                if let value = dict["TelExt"] as? String {
                    self.telExt = value
                }
                if let value = dict["Telephone"] as? String {
                    self.telephone = value
                }
                if let value = dict["UpdateTime"] as? String {
                    self.updateTime = value
                }
                if let value = dict["ZhAddress"] as? String {
                    self.zhAddress = value
                }
                if let value = dict["ZhCity"] as? String {
                    self.zhCity = value
                }
                if let value = dict["ZhProvince"] as? String {
                    self.zhProvince = value
                }
                if let value = dict["ZhRegistrantName"] as? String {
                    self.zhRegistrantName = value
                }
                if let value = dict["ZhRegistrantOrganization"] as? String {
                    self.zhRegistrantOrganization = value
                }
            }
        }
        public var registrantProfile: [QueryRegistrantProfilesResponseBody.RegistrantProfiles.RegistrantProfile]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.registrantProfile != nil {
                var tmp : [Any] = []
                for k in self.registrantProfile! {
                    tmp.append(k.toMap())
                }
                map["RegistrantProfile"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["RegistrantProfile"] as? [Any?] {
                var tmp : [QueryRegistrantProfilesResponseBody.RegistrantProfiles.RegistrantProfile] = []
                for v in value {
                    if v != nil {
                        var model = QueryRegistrantProfilesResponseBody.RegistrantProfiles.RegistrantProfile()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.registrantProfile = tmp
            }
        }
    }
    public var currentPageNum: Int32?

    public var nextPage: Bool?

    public var pageSize: Int32?

    public var prePage: Bool?

    public var registrantProfiles: QueryRegistrantProfilesResponseBody.RegistrantProfiles?

    public var requestId: String?

    public var totalItemNum: Int32?

    public var totalPageNum: Int32?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.registrantProfiles?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.currentPageNum != nil {
            map["CurrentPageNum"] = self.currentPageNum!
        }
        if self.nextPage != nil {
            map["NextPage"] = self.nextPage!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.prePage != nil {
            map["PrePage"] = self.prePage!
        }
        if self.registrantProfiles != nil {
            map["RegistrantProfiles"] = self.registrantProfiles?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.totalItemNum != nil {
            map["TotalItemNum"] = self.totalItemNum!
        }
        if self.totalPageNum != nil {
            map["TotalPageNum"] = self.totalPageNum!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["CurrentPageNum"] as? Int32 {
            self.currentPageNum = value
        }
        if let value = dict["NextPage"] as? Bool {
            self.nextPage = value
        }
        if let value = dict["PageSize"] as? Int32 {
            self.pageSize = value
        }
        if let value = dict["PrePage"] as? Bool {
            self.prePage = value
        }
        if let value = dict["RegistrantProfiles"] as? [String: Any?] {
            var model = QueryRegistrantProfilesResponseBody.RegistrantProfiles()
            model.fromMap(value)
            self.registrantProfiles = model
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["TotalItemNum"] as? Int32 {
            self.totalItemNum = value
        }
        if let value = dict["TotalPageNum"] as? Int32 {
            self.totalPageNum = value
        }
    }
}

public class QueryRegistrantProfilesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: QueryRegistrantProfilesResponseBody?

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
            var model = QueryRegistrantProfilesResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class QueryServerLockRequest : Tea.TeaModel {
    public var instanceId: String?

    public var lang: String?

    public var userClientIp: String?

    public override init() {
        super.init()
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
        if self.lang != nil {
            map["Lang"] = self.lang!
        }
        if self.userClientIp != nil {
            map["UserClientIp"] = self.userClientIp!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["Lang"] as? String {
            self.lang = value
        }
        if let value = dict["UserClientIp"] as? String {
            self.userClientIp = value
        }
    }
}

public class QueryServerLockResponseBody : Tea.TeaModel {
    public var domainInstanceId: String?

    public var domainName: String?

    public var expireDate: String?

    public var gmtCreate: String?

    public var gmtModified: String?

    public var lockInstanceId: String?

    public var lockProductId: String?

    public var requestId: String?

    public var serverLockStatus: Int32?

    public var startDate: String?

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
        if self.domainInstanceId != nil {
            map["DomainInstanceId"] = self.domainInstanceId!
        }
        if self.domainName != nil {
            map["DomainName"] = self.domainName!
        }
        if self.expireDate != nil {
            map["ExpireDate"] = self.expireDate!
        }
        if self.gmtCreate != nil {
            map["GmtCreate"] = self.gmtCreate!
        }
        if self.gmtModified != nil {
            map["GmtModified"] = self.gmtModified!
        }
        if self.lockInstanceId != nil {
            map["LockInstanceId"] = self.lockInstanceId!
        }
        if self.lockProductId != nil {
            map["LockProductId"] = self.lockProductId!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.serverLockStatus != nil {
            map["ServerLockStatus"] = self.serverLockStatus!
        }
        if self.startDate != nil {
            map["StartDate"] = self.startDate!
        }
        if self.userId != nil {
            map["UserId"] = self.userId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["DomainInstanceId"] as? String {
            self.domainInstanceId = value
        }
        if let value = dict["DomainName"] as? String {
            self.domainName = value
        }
        if let value = dict["ExpireDate"] as? String {
            self.expireDate = value
        }
        if let value = dict["GmtCreate"] as? String {
            self.gmtCreate = value
        }
        if let value = dict["GmtModified"] as? String {
            self.gmtModified = value
        }
        if let value = dict["LockInstanceId"] as? String {
            self.lockInstanceId = value
        }
        if let value = dict["LockProductId"] as? String {
            self.lockProductId = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["ServerLockStatus"] as? Int32 {
            self.serverLockStatus = value
        }
        if let value = dict["StartDate"] as? String {
            self.startDate = value
        }
        if let value = dict["UserId"] as? String {
            self.userId = value
        }
    }
}

public class QueryServerLockResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: QueryServerLockResponseBody?

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
            var model = QueryServerLockResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class QueryTaskDetailHistoryRequest : Tea.TeaModel {
    public var domainName: String?

    public var domainNameCursor: String?

    public var lang: String?

    public var pageSize: Int32?

    public var taskDetailNoCursor: String?

    public var taskNo: String?

    public var taskStatus: Int32?

    public var userClientIp: String?

    public override init() {
        super.init()
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
        if self.domainNameCursor != nil {
            map["DomainNameCursor"] = self.domainNameCursor!
        }
        if self.lang != nil {
            map["Lang"] = self.lang!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.taskDetailNoCursor != nil {
            map["TaskDetailNoCursor"] = self.taskDetailNoCursor!
        }
        if self.taskNo != nil {
            map["TaskNo"] = self.taskNo!
        }
        if self.taskStatus != nil {
            map["TaskStatus"] = self.taskStatus!
        }
        if self.userClientIp != nil {
            map["UserClientIp"] = self.userClientIp!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["DomainName"] as? String {
            self.domainName = value
        }
        if let value = dict["DomainNameCursor"] as? String {
            self.domainNameCursor = value
        }
        if let value = dict["Lang"] as? String {
            self.lang = value
        }
        if let value = dict["PageSize"] as? Int32 {
            self.pageSize = value
        }
        if let value = dict["TaskDetailNoCursor"] as? String {
            self.taskDetailNoCursor = value
        }
        if let value = dict["TaskNo"] as? String {
            self.taskNo = value
        }
        if let value = dict["TaskStatus"] as? Int32 {
            self.taskStatus = value
        }
        if let value = dict["UserClientIp"] as? String {
            self.userClientIp = value
        }
    }
}

public class QueryTaskDetailHistoryResponseBody : Tea.TeaModel {
    public class CurrentPageCursor : Tea.TeaModel {
        public var createTime: String?

        public var domainName: String?

        public var errorMsg: String?

        public var instanceId: String?

        public var taskDetailNo: String?

        public var taskNo: String?

        public var taskStatus: String?

        public var taskStatusCode: Int32?

        public var taskType: String?

        public var taskTypeDescription: String?

        public var tryCount: Int32?

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
            if self.domainName != nil {
                map["DomainName"] = self.domainName!
            }
            if self.errorMsg != nil {
                map["ErrorMsg"] = self.errorMsg!
            }
            if self.instanceId != nil {
                map["InstanceId"] = self.instanceId!
            }
            if self.taskDetailNo != nil {
                map["TaskDetailNo"] = self.taskDetailNo!
            }
            if self.taskNo != nil {
                map["TaskNo"] = self.taskNo!
            }
            if self.taskStatus != nil {
                map["TaskStatus"] = self.taskStatus!
            }
            if self.taskStatusCode != nil {
                map["TaskStatusCode"] = self.taskStatusCode!
            }
            if self.taskType != nil {
                map["TaskType"] = self.taskType!
            }
            if self.taskTypeDescription != nil {
                map["TaskTypeDescription"] = self.taskTypeDescription!
            }
            if self.tryCount != nil {
                map["TryCount"] = self.tryCount!
            }
            if self.updateTime != nil {
                map["UpdateTime"] = self.updateTime!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["CreateTime"] as? String {
                self.createTime = value
            }
            if let value = dict["DomainName"] as? String {
                self.domainName = value
            }
            if let value = dict["ErrorMsg"] as? String {
                self.errorMsg = value
            }
            if let value = dict["InstanceId"] as? String {
                self.instanceId = value
            }
            if let value = dict["TaskDetailNo"] as? String {
                self.taskDetailNo = value
            }
            if let value = dict["TaskNo"] as? String {
                self.taskNo = value
            }
            if let value = dict["TaskStatus"] as? String {
                self.taskStatus = value
            }
            if let value = dict["TaskStatusCode"] as? Int32 {
                self.taskStatusCode = value
            }
            if let value = dict["TaskType"] as? String {
                self.taskType = value
            }
            if let value = dict["TaskTypeDescription"] as? String {
                self.taskTypeDescription = value
            }
            if let value = dict["TryCount"] as? Int32 {
                self.tryCount = value
            }
            if let value = dict["UpdateTime"] as? String {
                self.updateTime = value
            }
        }
    }
    public class NextPageCursor : Tea.TeaModel {
        public var createTime: String?

        public var domainName: String?

        public var errorMsg: String?

        public var instanceId: String?

        public var taskDetailNo: String?

        public var taskNo: String?

        public var taskStatus: String?

        public var taskStatusCode: Int32?

        public var taskType: String?

        public var taskTypeDescription: String?

        public var tryCount: Int32?

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
            if self.domainName != nil {
                map["DomainName"] = self.domainName!
            }
            if self.errorMsg != nil {
                map["ErrorMsg"] = self.errorMsg!
            }
            if self.instanceId != nil {
                map["InstanceId"] = self.instanceId!
            }
            if self.taskDetailNo != nil {
                map["TaskDetailNo"] = self.taskDetailNo!
            }
            if self.taskNo != nil {
                map["TaskNo"] = self.taskNo!
            }
            if self.taskStatus != nil {
                map["TaskStatus"] = self.taskStatus!
            }
            if self.taskStatusCode != nil {
                map["TaskStatusCode"] = self.taskStatusCode!
            }
            if self.taskType != nil {
                map["TaskType"] = self.taskType!
            }
            if self.taskTypeDescription != nil {
                map["TaskTypeDescription"] = self.taskTypeDescription!
            }
            if self.tryCount != nil {
                map["TryCount"] = self.tryCount!
            }
            if self.updateTime != nil {
                map["UpdateTime"] = self.updateTime!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["CreateTime"] as? String {
                self.createTime = value
            }
            if let value = dict["DomainName"] as? String {
                self.domainName = value
            }
            if let value = dict["ErrorMsg"] as? String {
                self.errorMsg = value
            }
            if let value = dict["InstanceId"] as? String {
                self.instanceId = value
            }
            if let value = dict["TaskDetailNo"] as? String {
                self.taskDetailNo = value
            }
            if let value = dict["TaskNo"] as? String {
                self.taskNo = value
            }
            if let value = dict["TaskStatus"] as? String {
                self.taskStatus = value
            }
            if let value = dict["TaskStatusCode"] as? Int32 {
                self.taskStatusCode = value
            }
            if let value = dict["TaskType"] as? String {
                self.taskType = value
            }
            if let value = dict["TaskTypeDescription"] as? String {
                self.taskTypeDescription = value
            }
            if let value = dict["TryCount"] as? Int32 {
                self.tryCount = value
            }
            if let value = dict["UpdateTime"] as? String {
                self.updateTime = value
            }
        }
    }
    public class Objects : Tea.TeaModel {
        public var createTime: String?

        public var domainName: String?

        public var errorMsg: String?

        public var instanceId: String?

        public var taskDetailNo: String?

        public var taskNo: String?

        public var taskStatus: String?

        public var taskStatusCode: Int32?

        public var taskType: String?

        public var taskTypeDescription: String?

        public var tryCount: Int32?

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
            if self.domainName != nil {
                map["DomainName"] = self.domainName!
            }
            if self.errorMsg != nil {
                map["ErrorMsg"] = self.errorMsg!
            }
            if self.instanceId != nil {
                map["InstanceId"] = self.instanceId!
            }
            if self.taskDetailNo != nil {
                map["TaskDetailNo"] = self.taskDetailNo!
            }
            if self.taskNo != nil {
                map["TaskNo"] = self.taskNo!
            }
            if self.taskStatus != nil {
                map["TaskStatus"] = self.taskStatus!
            }
            if self.taskStatusCode != nil {
                map["TaskStatusCode"] = self.taskStatusCode!
            }
            if self.taskType != nil {
                map["TaskType"] = self.taskType!
            }
            if self.taskTypeDescription != nil {
                map["TaskTypeDescription"] = self.taskTypeDescription!
            }
            if self.tryCount != nil {
                map["TryCount"] = self.tryCount!
            }
            if self.updateTime != nil {
                map["UpdateTime"] = self.updateTime!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["CreateTime"] as? String {
                self.createTime = value
            }
            if let value = dict["DomainName"] as? String {
                self.domainName = value
            }
            if let value = dict["ErrorMsg"] as? String {
                self.errorMsg = value
            }
            if let value = dict["InstanceId"] as? String {
                self.instanceId = value
            }
            if let value = dict["TaskDetailNo"] as? String {
                self.taskDetailNo = value
            }
            if let value = dict["TaskNo"] as? String {
                self.taskNo = value
            }
            if let value = dict["TaskStatus"] as? String {
                self.taskStatus = value
            }
            if let value = dict["TaskStatusCode"] as? Int32 {
                self.taskStatusCode = value
            }
            if let value = dict["TaskType"] as? String {
                self.taskType = value
            }
            if let value = dict["TaskTypeDescription"] as? String {
                self.taskTypeDescription = value
            }
            if let value = dict["TryCount"] as? Int32 {
                self.tryCount = value
            }
            if let value = dict["UpdateTime"] as? String {
                self.updateTime = value
            }
        }
    }
    public class PrePageCursor : Tea.TeaModel {
        public var createTime: String?

        public var domainName: String?

        public var errorMsg: String?

        public var instanceId: String?

        public var taskDetailNo: String?

        public var taskNo: String?

        public var taskStatus: String?

        public var taskStatusCode: Int32?

        public var taskType: String?

        public var taskTypeDescription: String?

        public var tryCount: Int32?

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
            if self.domainName != nil {
                map["DomainName"] = self.domainName!
            }
            if self.errorMsg != nil {
                map["ErrorMsg"] = self.errorMsg!
            }
            if self.instanceId != nil {
                map["InstanceId"] = self.instanceId!
            }
            if self.taskDetailNo != nil {
                map["TaskDetailNo"] = self.taskDetailNo!
            }
            if self.taskNo != nil {
                map["TaskNo"] = self.taskNo!
            }
            if self.taskStatus != nil {
                map["TaskStatus"] = self.taskStatus!
            }
            if self.taskStatusCode != nil {
                map["TaskStatusCode"] = self.taskStatusCode!
            }
            if self.taskType != nil {
                map["TaskType"] = self.taskType!
            }
            if self.taskTypeDescription != nil {
                map["TaskTypeDescription"] = self.taskTypeDescription!
            }
            if self.tryCount != nil {
                map["TryCount"] = self.tryCount!
            }
            if self.updateTime != nil {
                map["UpdateTime"] = self.updateTime!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["CreateTime"] as? String {
                self.createTime = value
            }
            if let value = dict["DomainName"] as? String {
                self.domainName = value
            }
            if let value = dict["ErrorMsg"] as? String {
                self.errorMsg = value
            }
            if let value = dict["InstanceId"] as? String {
                self.instanceId = value
            }
            if let value = dict["TaskDetailNo"] as? String {
                self.taskDetailNo = value
            }
            if let value = dict["TaskNo"] as? String {
                self.taskNo = value
            }
            if let value = dict["TaskStatus"] as? String {
                self.taskStatus = value
            }
            if let value = dict["TaskStatusCode"] as? Int32 {
                self.taskStatusCode = value
            }
            if let value = dict["TaskType"] as? String {
                self.taskType = value
            }
            if let value = dict["TaskTypeDescription"] as? String {
                self.taskTypeDescription = value
            }
            if let value = dict["TryCount"] as? Int32 {
                self.tryCount = value
            }
            if let value = dict["UpdateTime"] as? String {
                self.updateTime = value
            }
        }
    }
    public var currentPageCursor: QueryTaskDetailHistoryResponseBody.CurrentPageCursor?

    public var nextPageCursor: QueryTaskDetailHistoryResponseBody.NextPageCursor?

    public var objects: [QueryTaskDetailHistoryResponseBody.Objects]?

    public var pageSize: Int32?

    public var prePageCursor: QueryTaskDetailHistoryResponseBody.PrePageCursor?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.currentPageCursor?.validate()
        try self.nextPageCursor?.validate()
        try self.prePageCursor?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.currentPageCursor != nil {
            map["CurrentPageCursor"] = self.currentPageCursor?.toMap()
        }
        if self.nextPageCursor != nil {
            map["NextPageCursor"] = self.nextPageCursor?.toMap()
        }
        if self.objects != nil {
            var tmp : [Any] = []
            for k in self.objects! {
                tmp.append(k.toMap())
            }
            map["Objects"] = tmp
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.prePageCursor != nil {
            map["PrePageCursor"] = self.prePageCursor?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["CurrentPageCursor"] as? [String: Any?] {
            var model = QueryTaskDetailHistoryResponseBody.CurrentPageCursor()
            model.fromMap(value)
            self.currentPageCursor = model
        }
        if let value = dict["NextPageCursor"] as? [String: Any?] {
            var model = QueryTaskDetailHistoryResponseBody.NextPageCursor()
            model.fromMap(value)
            self.nextPageCursor = model
        }
        if let value = dict["Objects"] as? [Any?] {
            var tmp : [QueryTaskDetailHistoryResponseBody.Objects] = []
            for v in value {
                if v != nil {
                    var model = QueryTaskDetailHistoryResponseBody.Objects()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.objects = tmp
        }
        if let value = dict["PageSize"] as? Int32 {
            self.pageSize = value
        }
        if let value = dict["PrePageCursor"] as? [String: Any?] {
            var model = QueryTaskDetailHistoryResponseBody.PrePageCursor()
            model.fromMap(value)
            self.prePageCursor = model
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class QueryTaskDetailHistoryResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: QueryTaskDetailHistoryResponseBody?

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
            var model = QueryTaskDetailHistoryResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class QueryTaskDetailListRequest : Tea.TeaModel {
    public var domainName: String?

    public var instanceId: String?

    public var lang: String?

    public var pageNum: Int32?

    public var pageSize: Int32?

    public var taskNo: String?

    public var taskStatus: Int32?

    public var userClientIp: String?

    public override init() {
        super.init()
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
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.lang != nil {
            map["Lang"] = self.lang!
        }
        if self.pageNum != nil {
            map["PageNum"] = self.pageNum!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.taskNo != nil {
            map["TaskNo"] = self.taskNo!
        }
        if self.taskStatus != nil {
            map["TaskStatus"] = self.taskStatus!
        }
        if self.userClientIp != nil {
            map["UserClientIp"] = self.userClientIp!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["DomainName"] as? String {
            self.domainName = value
        }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["Lang"] as? String {
            self.lang = value
        }
        if let value = dict["PageNum"] as? Int32 {
            self.pageNum = value
        }
        if let value = dict["PageSize"] as? Int32 {
            self.pageSize = value
        }
        if let value = dict["TaskNo"] as? String {
            self.taskNo = value
        }
        if let value = dict["TaskStatus"] as? Int32 {
            self.taskStatus = value
        }
        if let value = dict["UserClientIp"] as? String {
            self.userClientIp = value
        }
    }
}

public class QueryTaskDetailListResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class TaskDetail : Tea.TeaModel {
            public var createTime: String?

            public var domainName: String?

            public var errorMsg: String?

            public var failReason: String?

            public var instanceId: String?

            public var taskDetailNo: String?

            public var taskNo: String?

            public var taskResult: String?

            public var taskStatus: String?

            public var taskStatusCode: Int32?

            public var taskType: String?

            public var taskTypeDescription: String?

            public var tryCount: Int32?

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
                if self.domainName != nil {
                    map["DomainName"] = self.domainName!
                }
                if self.errorMsg != nil {
                    map["ErrorMsg"] = self.errorMsg!
                }
                if self.failReason != nil {
                    map["FailReason"] = self.failReason!
                }
                if self.instanceId != nil {
                    map["InstanceId"] = self.instanceId!
                }
                if self.taskDetailNo != nil {
                    map["TaskDetailNo"] = self.taskDetailNo!
                }
                if self.taskNo != nil {
                    map["TaskNo"] = self.taskNo!
                }
                if self.taskResult != nil {
                    map["TaskResult"] = self.taskResult!
                }
                if self.taskStatus != nil {
                    map["TaskStatus"] = self.taskStatus!
                }
                if self.taskStatusCode != nil {
                    map["TaskStatusCode"] = self.taskStatusCode!
                }
                if self.taskType != nil {
                    map["TaskType"] = self.taskType!
                }
                if self.taskTypeDescription != nil {
                    map["TaskTypeDescription"] = self.taskTypeDescription!
                }
                if self.tryCount != nil {
                    map["TryCount"] = self.tryCount!
                }
                if self.updateTime != nil {
                    map["UpdateTime"] = self.updateTime!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["CreateTime"] as? String {
                    self.createTime = value
                }
                if let value = dict["DomainName"] as? String {
                    self.domainName = value
                }
                if let value = dict["ErrorMsg"] as? String {
                    self.errorMsg = value
                }
                if let value = dict["FailReason"] as? String {
                    self.failReason = value
                }
                if let value = dict["InstanceId"] as? String {
                    self.instanceId = value
                }
                if let value = dict["TaskDetailNo"] as? String {
                    self.taskDetailNo = value
                }
                if let value = dict["TaskNo"] as? String {
                    self.taskNo = value
                }
                if let value = dict["TaskResult"] as? String {
                    self.taskResult = value
                }
                if let value = dict["TaskStatus"] as? String {
                    self.taskStatus = value
                }
                if let value = dict["TaskStatusCode"] as? Int32 {
                    self.taskStatusCode = value
                }
                if let value = dict["TaskType"] as? String {
                    self.taskType = value
                }
                if let value = dict["TaskTypeDescription"] as? String {
                    self.taskTypeDescription = value
                }
                if let value = dict["TryCount"] as? Int32 {
                    self.tryCount = value
                }
                if let value = dict["UpdateTime"] as? String {
                    self.updateTime = value
                }
            }
        }
        public var taskDetail: [QueryTaskDetailListResponseBody.Data.TaskDetail]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.taskDetail != nil {
                var tmp : [Any] = []
                for k in self.taskDetail! {
                    tmp.append(k.toMap())
                }
                map["TaskDetail"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["TaskDetail"] as? [Any?] {
                var tmp : [QueryTaskDetailListResponseBody.Data.TaskDetail] = []
                for v in value {
                    if v != nil {
                        var model = QueryTaskDetailListResponseBody.Data.TaskDetail()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.taskDetail = tmp
            }
        }
    }
    public var currentPageNum: Int32?

    public var data: QueryTaskDetailListResponseBody.Data?

    public var nextPage: Bool?

    public var pageSize: Int32?

    public var prePage: Bool?

    public var requestId: String?

    public var totalItemNum: Int32?

    public var totalPageNum: Int32?

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
        if self.currentPageNum != nil {
            map["CurrentPageNum"] = self.currentPageNum!
        }
        if self.data != nil {
            map["Data"] = self.data?.toMap()
        }
        if self.nextPage != nil {
            map["NextPage"] = self.nextPage!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.prePage != nil {
            map["PrePage"] = self.prePage!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.totalItemNum != nil {
            map["TotalItemNum"] = self.totalItemNum!
        }
        if self.totalPageNum != nil {
            map["TotalPageNum"] = self.totalPageNum!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["CurrentPageNum"] as? Int32 {
            self.currentPageNum = value
        }
        if let value = dict["Data"] as? [String: Any?] {
            var model = QueryTaskDetailListResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["NextPage"] as? Bool {
            self.nextPage = value
        }
        if let value = dict["PageSize"] as? Int32 {
            self.pageSize = value
        }
        if let value = dict["PrePage"] as? Bool {
            self.prePage = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["TotalItemNum"] as? Int32 {
            self.totalItemNum = value
        }
        if let value = dict["TotalPageNum"] as? Int32 {
            self.totalPageNum = value
        }
    }
}

public class QueryTaskDetailListResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: QueryTaskDetailListResponseBody?

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
            var model = QueryTaskDetailListResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class QueryTaskInfoHistoryRequest : Tea.TeaModel {
    public var beginCreateTime: Int64?

    public var createTimeCursor: Int64?

    public var endCreateTime: Int64?

    public var lang: String?

    public var pageSize: Int32?

    public var taskNoCursor: String?

    public var userClientIp: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.beginCreateTime != nil {
            map["BeginCreateTime"] = self.beginCreateTime!
        }
        if self.createTimeCursor != nil {
            map["CreateTimeCursor"] = self.createTimeCursor!
        }
        if self.endCreateTime != nil {
            map["EndCreateTime"] = self.endCreateTime!
        }
        if self.lang != nil {
            map["Lang"] = self.lang!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.taskNoCursor != nil {
            map["TaskNoCursor"] = self.taskNoCursor!
        }
        if self.userClientIp != nil {
            map["UserClientIp"] = self.userClientIp!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["BeginCreateTime"] as? Int64 {
            self.beginCreateTime = value
        }
        if let value = dict["CreateTimeCursor"] as? Int64 {
            self.createTimeCursor = value
        }
        if let value = dict["EndCreateTime"] as? Int64 {
            self.endCreateTime = value
        }
        if let value = dict["Lang"] as? String {
            self.lang = value
        }
        if let value = dict["PageSize"] as? Int32 {
            self.pageSize = value
        }
        if let value = dict["TaskNoCursor"] as? String {
            self.taskNoCursor = value
        }
        if let value = dict["UserClientIp"] as? String {
            self.userClientIp = value
        }
    }
}

public class QueryTaskInfoHistoryResponseBody : Tea.TeaModel {
    public class CurrentPageCursor : Tea.TeaModel {
        public var clientip: String?

        public var createTime: String?

        public var createTimeLong: Int64?

        public var taskNo: String?

        public var taskNum: Int32?

        public var taskStatus: String?

        public var taskStatusCode: Int32?

        public var taskType: String?

        public var taskTypeDescription: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.clientip != nil {
                map["Clientip"] = self.clientip!
            }
            if self.createTime != nil {
                map["CreateTime"] = self.createTime!
            }
            if self.createTimeLong != nil {
                map["CreateTimeLong"] = self.createTimeLong!
            }
            if self.taskNo != nil {
                map["TaskNo"] = self.taskNo!
            }
            if self.taskNum != nil {
                map["TaskNum"] = self.taskNum!
            }
            if self.taskStatus != nil {
                map["TaskStatus"] = self.taskStatus!
            }
            if self.taskStatusCode != nil {
                map["TaskStatusCode"] = self.taskStatusCode!
            }
            if self.taskType != nil {
                map["TaskType"] = self.taskType!
            }
            if self.taskTypeDescription != nil {
                map["TaskTypeDescription"] = self.taskTypeDescription!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Clientip"] as? String {
                self.clientip = value
            }
            if let value = dict["CreateTime"] as? String {
                self.createTime = value
            }
            if let value = dict["CreateTimeLong"] as? Int64 {
                self.createTimeLong = value
            }
            if let value = dict["TaskNo"] as? String {
                self.taskNo = value
            }
            if let value = dict["TaskNum"] as? Int32 {
                self.taskNum = value
            }
            if let value = dict["TaskStatus"] as? String {
                self.taskStatus = value
            }
            if let value = dict["TaskStatusCode"] as? Int32 {
                self.taskStatusCode = value
            }
            if let value = dict["TaskType"] as? String {
                self.taskType = value
            }
            if let value = dict["TaskTypeDescription"] as? String {
                self.taskTypeDescription = value
            }
        }
    }
    public class NextPageCursor : Tea.TeaModel {
        public var clientip: String?

        public var createTime: String?

        public var createTimeLong: Int64?

        public var taskNo: String?

        public var taskNum: Int32?

        public var taskStatus: String?

        public var taskStatusCode: Int32?

        public var taskType: String?

        public var taskTypeDescription: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.clientip != nil {
                map["Clientip"] = self.clientip!
            }
            if self.createTime != nil {
                map["CreateTime"] = self.createTime!
            }
            if self.createTimeLong != nil {
                map["CreateTimeLong"] = self.createTimeLong!
            }
            if self.taskNo != nil {
                map["TaskNo"] = self.taskNo!
            }
            if self.taskNum != nil {
                map["TaskNum"] = self.taskNum!
            }
            if self.taskStatus != nil {
                map["TaskStatus"] = self.taskStatus!
            }
            if self.taskStatusCode != nil {
                map["TaskStatusCode"] = self.taskStatusCode!
            }
            if self.taskType != nil {
                map["TaskType"] = self.taskType!
            }
            if self.taskTypeDescription != nil {
                map["TaskTypeDescription"] = self.taskTypeDescription!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Clientip"] as? String {
                self.clientip = value
            }
            if let value = dict["CreateTime"] as? String {
                self.createTime = value
            }
            if let value = dict["CreateTimeLong"] as? Int64 {
                self.createTimeLong = value
            }
            if let value = dict["TaskNo"] as? String {
                self.taskNo = value
            }
            if let value = dict["TaskNum"] as? Int32 {
                self.taskNum = value
            }
            if let value = dict["TaskStatus"] as? String {
                self.taskStatus = value
            }
            if let value = dict["TaskStatusCode"] as? Int32 {
                self.taskStatusCode = value
            }
            if let value = dict["TaskType"] as? String {
                self.taskType = value
            }
            if let value = dict["TaskTypeDescription"] as? String {
                self.taskTypeDescription = value
            }
        }
    }
    public class Objects : Tea.TeaModel {
        public var clientip: String?

        public var createTime: String?

        public var createTimeLong: Int64?

        public var taskNo: String?

        public var taskNum: Int32?

        public var taskStatus: String?

        public var taskStatusCode: Int32?

        public var taskType: String?

        public var taskTypeDescription: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.clientip != nil {
                map["Clientip"] = self.clientip!
            }
            if self.createTime != nil {
                map["CreateTime"] = self.createTime!
            }
            if self.createTimeLong != nil {
                map["CreateTimeLong"] = self.createTimeLong!
            }
            if self.taskNo != nil {
                map["TaskNo"] = self.taskNo!
            }
            if self.taskNum != nil {
                map["TaskNum"] = self.taskNum!
            }
            if self.taskStatus != nil {
                map["TaskStatus"] = self.taskStatus!
            }
            if self.taskStatusCode != nil {
                map["TaskStatusCode"] = self.taskStatusCode!
            }
            if self.taskType != nil {
                map["TaskType"] = self.taskType!
            }
            if self.taskTypeDescription != nil {
                map["TaskTypeDescription"] = self.taskTypeDescription!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Clientip"] as? String {
                self.clientip = value
            }
            if let value = dict["CreateTime"] as? String {
                self.createTime = value
            }
            if let value = dict["CreateTimeLong"] as? Int64 {
                self.createTimeLong = value
            }
            if let value = dict["TaskNo"] as? String {
                self.taskNo = value
            }
            if let value = dict["TaskNum"] as? Int32 {
                self.taskNum = value
            }
            if let value = dict["TaskStatus"] as? String {
                self.taskStatus = value
            }
            if let value = dict["TaskStatusCode"] as? Int32 {
                self.taskStatusCode = value
            }
            if let value = dict["TaskType"] as? String {
                self.taskType = value
            }
            if let value = dict["TaskTypeDescription"] as? String {
                self.taskTypeDescription = value
            }
        }
    }
    public class PrePageCursor : Tea.TeaModel {
        public var clientip: String?

        public var createTime: String?

        public var createTimeLong: Int64?

        public var taskNo: String?

        public var taskNum: Int32?

        public var taskStatus: String?

        public var taskStatusCode: Int32?

        public var taskType: String?

        public var taskTypeDescription: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.clientip != nil {
                map["Clientip"] = self.clientip!
            }
            if self.createTime != nil {
                map["CreateTime"] = self.createTime!
            }
            if self.createTimeLong != nil {
                map["CreateTimeLong"] = self.createTimeLong!
            }
            if self.taskNo != nil {
                map["TaskNo"] = self.taskNo!
            }
            if self.taskNum != nil {
                map["TaskNum"] = self.taskNum!
            }
            if self.taskStatus != nil {
                map["TaskStatus"] = self.taskStatus!
            }
            if self.taskStatusCode != nil {
                map["TaskStatusCode"] = self.taskStatusCode!
            }
            if self.taskType != nil {
                map["TaskType"] = self.taskType!
            }
            if self.taskTypeDescription != nil {
                map["TaskTypeDescription"] = self.taskTypeDescription!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Clientip"] as? String {
                self.clientip = value
            }
            if let value = dict["CreateTime"] as? String {
                self.createTime = value
            }
            if let value = dict["CreateTimeLong"] as? Int64 {
                self.createTimeLong = value
            }
            if let value = dict["TaskNo"] as? String {
                self.taskNo = value
            }
            if let value = dict["TaskNum"] as? Int32 {
                self.taskNum = value
            }
            if let value = dict["TaskStatus"] as? String {
                self.taskStatus = value
            }
            if let value = dict["TaskStatusCode"] as? Int32 {
                self.taskStatusCode = value
            }
            if let value = dict["TaskType"] as? String {
                self.taskType = value
            }
            if let value = dict["TaskTypeDescription"] as? String {
                self.taskTypeDescription = value
            }
        }
    }
    public var currentPageCursor: QueryTaskInfoHistoryResponseBody.CurrentPageCursor?

    public var nextPageCursor: QueryTaskInfoHistoryResponseBody.NextPageCursor?

    public var objects: [QueryTaskInfoHistoryResponseBody.Objects]?

    public var pageSize: Int32?

    public var prePageCursor: QueryTaskInfoHistoryResponseBody.PrePageCursor?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.currentPageCursor?.validate()
        try self.nextPageCursor?.validate()
        try self.prePageCursor?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.currentPageCursor != nil {
            map["CurrentPageCursor"] = self.currentPageCursor?.toMap()
        }
        if self.nextPageCursor != nil {
            map["NextPageCursor"] = self.nextPageCursor?.toMap()
        }
        if self.objects != nil {
            var tmp : [Any] = []
            for k in self.objects! {
                tmp.append(k.toMap())
            }
            map["Objects"] = tmp
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.prePageCursor != nil {
            map["PrePageCursor"] = self.prePageCursor?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["CurrentPageCursor"] as? [String: Any?] {
            var model = QueryTaskInfoHistoryResponseBody.CurrentPageCursor()
            model.fromMap(value)
            self.currentPageCursor = model
        }
        if let value = dict["NextPageCursor"] as? [String: Any?] {
            var model = QueryTaskInfoHistoryResponseBody.NextPageCursor()
            model.fromMap(value)
            self.nextPageCursor = model
        }
        if let value = dict["Objects"] as? [Any?] {
            var tmp : [QueryTaskInfoHistoryResponseBody.Objects] = []
            for v in value {
                if v != nil {
                    var model = QueryTaskInfoHistoryResponseBody.Objects()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.objects = tmp
        }
        if let value = dict["PageSize"] as? Int32 {
            self.pageSize = value
        }
        if let value = dict["PrePageCursor"] as? [String: Any?] {
            var model = QueryTaskInfoHistoryResponseBody.PrePageCursor()
            model.fromMap(value)
            self.prePageCursor = model
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class QueryTaskInfoHistoryResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: QueryTaskInfoHistoryResponseBody?

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
            var model = QueryTaskInfoHistoryResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class QueryTaskListRequest : Tea.TeaModel {
    public var beginCreateTime: Int64?

    public var endCreateTime: Int64?

    public var lang: String?

    public var pageNum: Int32?

    public var pageSize: Int32?

    public var userClientIp: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.beginCreateTime != nil {
            map["BeginCreateTime"] = self.beginCreateTime!
        }
        if self.endCreateTime != nil {
            map["EndCreateTime"] = self.endCreateTime!
        }
        if self.lang != nil {
            map["Lang"] = self.lang!
        }
        if self.pageNum != nil {
            map["PageNum"] = self.pageNum!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.userClientIp != nil {
            map["UserClientIp"] = self.userClientIp!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["BeginCreateTime"] as? Int64 {
            self.beginCreateTime = value
        }
        if let value = dict["EndCreateTime"] as? Int64 {
            self.endCreateTime = value
        }
        if let value = dict["Lang"] as? String {
            self.lang = value
        }
        if let value = dict["PageNum"] as? Int32 {
            self.pageNum = value
        }
        if let value = dict["PageSize"] as? Int32 {
            self.pageSize = value
        }
        if let value = dict["UserClientIp"] as? String {
            self.userClientIp = value
        }
    }
}

public class QueryTaskListResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class TaskInfo : Tea.TeaModel {
            public var clientip: String?

            public var createTime: String?

            public var taskBizType: String?

            public var taskCancelStatus: String?

            public var taskCancelStatusCode: Int32?

            public var taskNo: String?

            public var taskNum: Int32?

            public var taskResult: String?

            public var taskStatus: String?

            public var taskStatusCode: Int32?

            public var taskType: String?

            public var taskTypeCode: Int32?

            public var taskTypeDescription: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.clientip != nil {
                    map["Clientip"] = self.clientip!
                }
                if self.createTime != nil {
                    map["CreateTime"] = self.createTime!
                }
                if self.taskBizType != nil {
                    map["TaskBizType"] = self.taskBizType!
                }
                if self.taskCancelStatus != nil {
                    map["TaskCancelStatus"] = self.taskCancelStatus!
                }
                if self.taskCancelStatusCode != nil {
                    map["TaskCancelStatusCode"] = self.taskCancelStatusCode!
                }
                if self.taskNo != nil {
                    map["TaskNo"] = self.taskNo!
                }
                if self.taskNum != nil {
                    map["TaskNum"] = self.taskNum!
                }
                if self.taskResult != nil {
                    map["TaskResult"] = self.taskResult!
                }
                if self.taskStatus != nil {
                    map["TaskStatus"] = self.taskStatus!
                }
                if self.taskStatusCode != nil {
                    map["TaskStatusCode"] = self.taskStatusCode!
                }
                if self.taskType != nil {
                    map["TaskType"] = self.taskType!
                }
                if self.taskTypeCode != nil {
                    map["TaskTypeCode"] = self.taskTypeCode!
                }
                if self.taskTypeDescription != nil {
                    map["TaskTypeDescription"] = self.taskTypeDescription!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["Clientip"] as? String {
                    self.clientip = value
                }
                if let value = dict["CreateTime"] as? String {
                    self.createTime = value
                }
                if let value = dict["TaskBizType"] as? String {
                    self.taskBizType = value
                }
                if let value = dict["TaskCancelStatus"] as? String {
                    self.taskCancelStatus = value
                }
                if let value = dict["TaskCancelStatusCode"] as? Int32 {
                    self.taskCancelStatusCode = value
                }
                if let value = dict["TaskNo"] as? String {
                    self.taskNo = value
                }
                if let value = dict["TaskNum"] as? Int32 {
                    self.taskNum = value
                }
                if let value = dict["TaskResult"] as? String {
                    self.taskResult = value
                }
                if let value = dict["TaskStatus"] as? String {
                    self.taskStatus = value
                }
                if let value = dict["TaskStatusCode"] as? Int32 {
                    self.taskStatusCode = value
                }
                if let value = dict["TaskType"] as? String {
                    self.taskType = value
                }
                if let value = dict["TaskTypeCode"] as? Int32 {
                    self.taskTypeCode = value
                }
                if let value = dict["TaskTypeDescription"] as? String {
                    self.taskTypeDescription = value
                }
            }
        }
        public var taskInfo: [QueryTaskListResponseBody.Data.TaskInfo]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.taskInfo != nil {
                var tmp : [Any] = []
                for k in self.taskInfo! {
                    tmp.append(k.toMap())
                }
                map["TaskInfo"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["TaskInfo"] as? [Any?] {
                var tmp : [QueryTaskListResponseBody.Data.TaskInfo] = []
                for v in value {
                    if v != nil {
                        var model = QueryTaskListResponseBody.Data.TaskInfo()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.taskInfo = tmp
            }
        }
    }
    public var currentPageNum: Int32?

    public var data: QueryTaskListResponseBody.Data?

    public var nextPage: Bool?

    public var pageSize: Int32?

    public var prePage: Bool?

    public var requestId: String?

    public var totalItemNum: Int32?

    public var totalPageNum: Int32?

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
        if self.currentPageNum != nil {
            map["CurrentPageNum"] = self.currentPageNum!
        }
        if self.data != nil {
            map["Data"] = self.data?.toMap()
        }
        if self.nextPage != nil {
            map["NextPage"] = self.nextPage!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.prePage != nil {
            map["PrePage"] = self.prePage!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.totalItemNum != nil {
            map["TotalItemNum"] = self.totalItemNum!
        }
        if self.totalPageNum != nil {
            map["TotalPageNum"] = self.totalPageNum!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["CurrentPageNum"] as? Int32 {
            self.currentPageNum = value
        }
        if let value = dict["Data"] as? [String: Any?] {
            var model = QueryTaskListResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["NextPage"] as? Bool {
            self.nextPage = value
        }
        if let value = dict["PageSize"] as? Int32 {
            self.pageSize = value
        }
        if let value = dict["PrePage"] as? Bool {
            self.prePage = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["TotalItemNum"] as? Int32 {
            self.totalItemNum = value
        }
        if let value = dict["TotalPageNum"] as? Int32 {
            self.totalPageNum = value
        }
    }
}

public class QueryTaskListResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: QueryTaskListResponseBody?

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
            var model = QueryTaskListResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class QueryTransferInByInstanceIdRequest : Tea.TeaModel {
    public var instanceId: String?

    public var lang: String?

    public var userClientIp: String?

    public override init() {
        super.init()
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
        if self.lang != nil {
            map["Lang"] = self.lang!
        }
        if self.userClientIp != nil {
            map["UserClientIp"] = self.userClientIp!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["Lang"] as? String {
            self.lang = value
        }
        if let value = dict["UserClientIp"] as? String {
            self.userClientIp = value
        }
    }
}

public class QueryTransferInByInstanceIdResponseBody : Tea.TeaModel {
    public var domainName: String?

    public var email: String?

    public var expirationDate: String?

    public var expirationDateLong: Int64?

    public var instanceId: String?

    public var modificationDate: String?

    public var modificationDateLong: Int64?

    public var needMailCheck: Bool?

    public var progressBarType: Int32?

    public var requestId: String?

    public var resultCode: String?

    public var resultDate: String?

    public var resultDateLong: Int64?

    public var resultMsg: String?

    public var simpleTransferInStatus: String?

    public var status: Int32?

    public var submissionDate: String?

    public var submissionDateLong: Int64?

    public var transferAuthorizationCodeSubmissionDate: String?

    public var transferAuthorizationCodeSubmissionDateLong: Int64?

    public var userId: String?

    public var whoisMailStatus: Bool?

    public override init() {
        super.init()
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
        if self.email != nil {
            map["Email"] = self.email!
        }
        if self.expirationDate != nil {
            map["ExpirationDate"] = self.expirationDate!
        }
        if self.expirationDateLong != nil {
            map["ExpirationDateLong"] = self.expirationDateLong!
        }
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.modificationDate != nil {
            map["ModificationDate"] = self.modificationDate!
        }
        if self.modificationDateLong != nil {
            map["ModificationDateLong"] = self.modificationDateLong!
        }
        if self.needMailCheck != nil {
            map["NeedMailCheck"] = self.needMailCheck!
        }
        if self.progressBarType != nil {
            map["ProgressBarType"] = self.progressBarType!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.resultCode != nil {
            map["ResultCode"] = self.resultCode!
        }
        if self.resultDate != nil {
            map["ResultDate"] = self.resultDate!
        }
        if self.resultDateLong != nil {
            map["ResultDateLong"] = self.resultDateLong!
        }
        if self.resultMsg != nil {
            map["ResultMsg"] = self.resultMsg!
        }
        if self.simpleTransferInStatus != nil {
            map["SimpleTransferInStatus"] = self.simpleTransferInStatus!
        }
        if self.status != nil {
            map["Status"] = self.status!
        }
        if self.submissionDate != nil {
            map["SubmissionDate"] = self.submissionDate!
        }
        if self.submissionDateLong != nil {
            map["SubmissionDateLong"] = self.submissionDateLong!
        }
        if self.transferAuthorizationCodeSubmissionDate != nil {
            map["TransferAuthorizationCodeSubmissionDate"] = self.transferAuthorizationCodeSubmissionDate!
        }
        if self.transferAuthorizationCodeSubmissionDateLong != nil {
            map["TransferAuthorizationCodeSubmissionDateLong"] = self.transferAuthorizationCodeSubmissionDateLong!
        }
        if self.userId != nil {
            map["UserId"] = self.userId!
        }
        if self.whoisMailStatus != nil {
            map["WhoisMailStatus"] = self.whoisMailStatus!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["DomainName"] as? String {
            self.domainName = value
        }
        if let value = dict["Email"] as? String {
            self.email = value
        }
        if let value = dict["ExpirationDate"] as? String {
            self.expirationDate = value
        }
        if let value = dict["ExpirationDateLong"] as? Int64 {
            self.expirationDateLong = value
        }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["ModificationDate"] as? String {
            self.modificationDate = value
        }
        if let value = dict["ModificationDateLong"] as? Int64 {
            self.modificationDateLong = value
        }
        if let value = dict["NeedMailCheck"] as? Bool {
            self.needMailCheck = value
        }
        if let value = dict["ProgressBarType"] as? Int32 {
            self.progressBarType = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["ResultCode"] as? String {
            self.resultCode = value
        }
        if let value = dict["ResultDate"] as? String {
            self.resultDate = value
        }
        if let value = dict["ResultDateLong"] as? Int64 {
            self.resultDateLong = value
        }
        if let value = dict["ResultMsg"] as? String {
            self.resultMsg = value
        }
        if let value = dict["SimpleTransferInStatus"] as? String {
            self.simpleTransferInStatus = value
        }
        if let value = dict["Status"] as? Int32 {
            self.status = value
        }
        if let value = dict["SubmissionDate"] as? String {
            self.submissionDate = value
        }
        if let value = dict["SubmissionDateLong"] as? Int64 {
            self.submissionDateLong = value
        }
        if let value = dict["TransferAuthorizationCodeSubmissionDate"] as? String {
            self.transferAuthorizationCodeSubmissionDate = value
        }
        if let value = dict["TransferAuthorizationCodeSubmissionDateLong"] as? Int64 {
            self.transferAuthorizationCodeSubmissionDateLong = value
        }
        if let value = dict["UserId"] as? String {
            self.userId = value
        }
        if let value = dict["WhoisMailStatus"] as? Bool {
            self.whoisMailStatus = value
        }
    }
}

public class QueryTransferInByInstanceIdResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: QueryTransferInByInstanceIdResponseBody?

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
            var model = QueryTransferInByInstanceIdResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class QueryTransferInListRequest : Tea.TeaModel {
    public var domainName: String?

    public var lang: String?

    public var pageNum: Int32?

    public var pageSize: Int32?

    public var simpleTransferInStatus: String?

    public var submissionEndDate: Int64?

    public var submissionStartDate: Int64?

    public var userClientIp: String?

    public override init() {
        super.init()
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
        if self.lang != nil {
            map["Lang"] = self.lang!
        }
        if self.pageNum != nil {
            map["PageNum"] = self.pageNum!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.simpleTransferInStatus != nil {
            map["SimpleTransferInStatus"] = self.simpleTransferInStatus!
        }
        if self.submissionEndDate != nil {
            map["SubmissionEndDate"] = self.submissionEndDate!
        }
        if self.submissionStartDate != nil {
            map["SubmissionStartDate"] = self.submissionStartDate!
        }
        if self.userClientIp != nil {
            map["UserClientIp"] = self.userClientIp!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["DomainName"] as? String {
            self.domainName = value
        }
        if let value = dict["Lang"] as? String {
            self.lang = value
        }
        if let value = dict["PageNum"] as? Int32 {
            self.pageNum = value
        }
        if let value = dict["PageSize"] as? Int32 {
            self.pageSize = value
        }
        if let value = dict["SimpleTransferInStatus"] as? String {
            self.simpleTransferInStatus = value
        }
        if let value = dict["SubmissionEndDate"] as? Int64 {
            self.submissionEndDate = value
        }
        if let value = dict["SubmissionStartDate"] as? Int64 {
            self.submissionStartDate = value
        }
        if let value = dict["UserClientIp"] as? String {
            self.userClientIp = value
        }
    }
}

public class QueryTransferInListResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class TransferInInfo : Tea.TeaModel {
            public var domainName: String?

            public var email: String?

            public var expirationDate: String?

            public var expirationDateLong: Int64?

            public var instanceId: String?

            public var modificationDate: String?

            public var modificationDateLong: Int64?

            public var needMailCheck: Bool?

            public var progressBarType: Int32?

            public var resultCode: String?

            public var resultDate: String?

            public var resultDateLong: Int64?

            public var resultMsg: String?

            public var simpleTransferInStatus: String?

            public var status: Int32?

            public var submissionDate: String?

            public var submissionDateLong: Int64?

            public var transferAuthorizationCodeSubmissionDate: String?

            public var transferAuthorizationCodeSubmissionDateLong: Int64?

            public var userId: String?

            public var whoisMailStatus: Bool?

            public override init() {
                super.init()
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
                if self.email != nil {
                    map["Email"] = self.email!
                }
                if self.expirationDate != nil {
                    map["ExpirationDate"] = self.expirationDate!
                }
                if self.expirationDateLong != nil {
                    map["ExpirationDateLong"] = self.expirationDateLong!
                }
                if self.instanceId != nil {
                    map["InstanceId"] = self.instanceId!
                }
                if self.modificationDate != nil {
                    map["ModificationDate"] = self.modificationDate!
                }
                if self.modificationDateLong != nil {
                    map["ModificationDateLong"] = self.modificationDateLong!
                }
                if self.needMailCheck != nil {
                    map["NeedMailCheck"] = self.needMailCheck!
                }
                if self.progressBarType != nil {
                    map["ProgressBarType"] = self.progressBarType!
                }
                if self.resultCode != nil {
                    map["ResultCode"] = self.resultCode!
                }
                if self.resultDate != nil {
                    map["ResultDate"] = self.resultDate!
                }
                if self.resultDateLong != nil {
                    map["ResultDateLong"] = self.resultDateLong!
                }
                if self.resultMsg != nil {
                    map["ResultMsg"] = self.resultMsg!
                }
                if self.simpleTransferInStatus != nil {
                    map["SimpleTransferInStatus"] = self.simpleTransferInStatus!
                }
                if self.status != nil {
                    map["Status"] = self.status!
                }
                if self.submissionDate != nil {
                    map["SubmissionDate"] = self.submissionDate!
                }
                if self.submissionDateLong != nil {
                    map["SubmissionDateLong"] = self.submissionDateLong!
                }
                if self.transferAuthorizationCodeSubmissionDate != nil {
                    map["TransferAuthorizationCodeSubmissionDate"] = self.transferAuthorizationCodeSubmissionDate!
                }
                if self.transferAuthorizationCodeSubmissionDateLong != nil {
                    map["TransferAuthorizationCodeSubmissionDateLong"] = self.transferAuthorizationCodeSubmissionDateLong!
                }
                if self.userId != nil {
                    map["UserId"] = self.userId!
                }
                if self.whoisMailStatus != nil {
                    map["WhoisMailStatus"] = self.whoisMailStatus!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["DomainName"] as? String {
                    self.domainName = value
                }
                if let value = dict["Email"] as? String {
                    self.email = value
                }
                if let value = dict["ExpirationDate"] as? String {
                    self.expirationDate = value
                }
                if let value = dict["ExpirationDateLong"] as? Int64 {
                    self.expirationDateLong = value
                }
                if let value = dict["InstanceId"] as? String {
                    self.instanceId = value
                }
                if let value = dict["ModificationDate"] as? String {
                    self.modificationDate = value
                }
                if let value = dict["ModificationDateLong"] as? Int64 {
                    self.modificationDateLong = value
                }
                if let value = dict["NeedMailCheck"] as? Bool {
                    self.needMailCheck = value
                }
                if let value = dict["ProgressBarType"] as? Int32 {
                    self.progressBarType = value
                }
                if let value = dict["ResultCode"] as? String {
                    self.resultCode = value
                }
                if let value = dict["ResultDate"] as? String {
                    self.resultDate = value
                }
                if let value = dict["ResultDateLong"] as? Int64 {
                    self.resultDateLong = value
                }
                if let value = dict["ResultMsg"] as? String {
                    self.resultMsg = value
                }
                if let value = dict["SimpleTransferInStatus"] as? String {
                    self.simpleTransferInStatus = value
                }
                if let value = dict["Status"] as? Int32 {
                    self.status = value
                }
                if let value = dict["SubmissionDate"] as? String {
                    self.submissionDate = value
                }
                if let value = dict["SubmissionDateLong"] as? Int64 {
                    self.submissionDateLong = value
                }
                if let value = dict["TransferAuthorizationCodeSubmissionDate"] as? String {
                    self.transferAuthorizationCodeSubmissionDate = value
                }
                if let value = dict["TransferAuthorizationCodeSubmissionDateLong"] as? Int64 {
                    self.transferAuthorizationCodeSubmissionDateLong = value
                }
                if let value = dict["UserId"] as? String {
                    self.userId = value
                }
                if let value = dict["WhoisMailStatus"] as? Bool {
                    self.whoisMailStatus = value
                }
            }
        }
        public var transferInInfo: [QueryTransferInListResponseBody.Data.TransferInInfo]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.transferInInfo != nil {
                var tmp : [Any] = []
                for k in self.transferInInfo! {
                    tmp.append(k.toMap())
                }
                map["TransferInInfo"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["TransferInInfo"] as? [Any?] {
                var tmp : [QueryTransferInListResponseBody.Data.TransferInInfo] = []
                for v in value {
                    if v != nil {
                        var model = QueryTransferInListResponseBody.Data.TransferInInfo()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.transferInInfo = tmp
            }
        }
    }
    public var currentPageNum: Int32?

    public var data: QueryTransferInListResponseBody.Data?

    public var nextPage: Bool?

    public var pageSize: Int32?

    public var prePage: Bool?

    public var requestId: String?

    public var totalItemNum: Int32?

    public var totalPageNum: Int32?

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
        if self.currentPageNum != nil {
            map["CurrentPageNum"] = self.currentPageNum!
        }
        if self.data != nil {
            map["Data"] = self.data?.toMap()
        }
        if self.nextPage != nil {
            map["NextPage"] = self.nextPage!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.prePage != nil {
            map["PrePage"] = self.prePage!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.totalItemNum != nil {
            map["TotalItemNum"] = self.totalItemNum!
        }
        if self.totalPageNum != nil {
            map["TotalPageNum"] = self.totalPageNum!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["CurrentPageNum"] as? Int32 {
            self.currentPageNum = value
        }
        if let value = dict["Data"] as? [String: Any?] {
            var model = QueryTransferInListResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["NextPage"] as? Bool {
            self.nextPage = value
        }
        if let value = dict["PageSize"] as? Int32 {
            self.pageSize = value
        }
        if let value = dict["PrePage"] as? Bool {
            self.prePage = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["TotalItemNum"] as? Int32 {
            self.totalItemNum = value
        }
        if let value = dict["TotalPageNum"] as? Int32 {
            self.totalPageNum = value
        }
    }
}

public class QueryTransferInListResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: QueryTransferInListResponseBody?

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
            var model = QueryTransferInListResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class QueryTransferOutInfoRequest : Tea.TeaModel {
    public var domainName: String?

    public var lang: String?

    public var userClientIp: String?

    public override init() {
        super.init()
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
        if self.lang != nil {
            map["Lang"] = self.lang!
        }
        if self.userClientIp != nil {
            map["UserClientIp"] = self.userClientIp!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["DomainName"] as? String {
            self.domainName = value
        }
        if let value = dict["Lang"] as? String {
            self.lang = value
        }
        if let value = dict["UserClientIp"] as? String {
            self.userClientIp = value
        }
    }
}

public class QueryTransferOutInfoResponseBody : Tea.TeaModel {
    public var email: String?

    public var expirationDate: String?

    public var pendingRequestDate: String?

    public var requestId: String?

    public var resultCode: String?

    public var resultMsg: String?

    public var status: Int32?

    public var transferAuthorizationCodeSendDate: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.email != nil {
            map["Email"] = self.email!
        }
        if self.expirationDate != nil {
            map["ExpirationDate"] = self.expirationDate!
        }
        if self.pendingRequestDate != nil {
            map["PendingRequestDate"] = self.pendingRequestDate!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.resultCode != nil {
            map["ResultCode"] = self.resultCode!
        }
        if self.resultMsg != nil {
            map["ResultMsg"] = self.resultMsg!
        }
        if self.status != nil {
            map["Status"] = self.status!
        }
        if self.transferAuthorizationCodeSendDate != nil {
            map["TransferAuthorizationCodeSendDate"] = self.transferAuthorizationCodeSendDate!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Email"] as? String {
            self.email = value
        }
        if let value = dict["ExpirationDate"] as? String {
            self.expirationDate = value
        }
        if let value = dict["PendingRequestDate"] as? String {
            self.pendingRequestDate = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["ResultCode"] as? String {
            self.resultCode = value
        }
        if let value = dict["ResultMsg"] as? String {
            self.resultMsg = value
        }
        if let value = dict["Status"] as? Int32 {
            self.status = value
        }
        if let value = dict["TransferAuthorizationCodeSendDate"] as? String {
            self.transferAuthorizationCodeSendDate = value
        }
    }
}

public class QueryTransferOutInfoResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: QueryTransferOutInfoResponseBody?

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
            var model = QueryTransferOutInfoResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class RegistrantProfileRealNameVerificationRequest : Tea.TeaModel {
    public var identityCredential: String?

    public var identityCredentialNo: String?

    public var identityCredentialType: String?

    public var lang: String?

    public var registrantProfileID: Int64?

    public var userClientIp: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.identityCredential != nil {
            map["IdentityCredential"] = self.identityCredential!
        }
        if self.identityCredentialNo != nil {
            map["IdentityCredentialNo"] = self.identityCredentialNo!
        }
        if self.identityCredentialType != nil {
            map["IdentityCredentialType"] = self.identityCredentialType!
        }
        if self.lang != nil {
            map["Lang"] = self.lang!
        }
        if self.registrantProfileID != nil {
            map["RegistrantProfileID"] = self.registrantProfileID!
        }
        if self.userClientIp != nil {
            map["UserClientIp"] = self.userClientIp!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["IdentityCredential"] as? String {
            self.identityCredential = value
        }
        if let value = dict["IdentityCredentialNo"] as? String {
            self.identityCredentialNo = value
        }
        if let value = dict["IdentityCredentialType"] as? String {
            self.identityCredentialType = value
        }
        if let value = dict["Lang"] as? String {
            self.lang = value
        }
        if let value = dict["RegistrantProfileID"] as? Int64 {
            self.registrantProfileID = value
        }
        if let value = dict["UserClientIp"] as? String {
            self.userClientIp = value
        }
    }
}

public class RegistrantProfileRealNameVerificationResponseBody : Tea.TeaModel {
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

public class RegistrantProfileRealNameVerificationResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: RegistrantProfileRealNameVerificationResponseBody?

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
            var model = RegistrantProfileRealNameVerificationResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ResendEmailVerificationRequest : Tea.TeaModel {
    public var email: String?

    public var lang: String?

    public var userClientIp: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.email != nil {
            map["Email"] = self.email!
        }
        if self.lang != nil {
            map["Lang"] = self.lang!
        }
        if self.userClientIp != nil {
            map["UserClientIp"] = self.userClientIp!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Email"] as? String {
            self.email = value
        }
        if let value = dict["Lang"] as? String {
            self.lang = value
        }
        if let value = dict["UserClientIp"] as? String {
            self.userClientIp = value
        }
    }
}

public class ResendEmailVerificationResponseBody : Tea.TeaModel {
    public class FailList : Tea.TeaModel {
        public var code: String?

        public var email: String?

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
            if self.email != nil {
                map["Email"] = self.email!
            }
            if self.message != nil {
                map["Message"] = self.message!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Code"] as? String {
                self.code = value
            }
            if let value = dict["Email"] as? String {
                self.email = value
            }
            if let value = dict["Message"] as? String {
                self.message = value
            }
        }
    }
    public class SuccessList : Tea.TeaModel {
        public var code: String?

        public var email: String?

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
            if self.email != nil {
                map["Email"] = self.email!
            }
            if self.message != nil {
                map["Message"] = self.message!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Code"] as? String {
                self.code = value
            }
            if let value = dict["Email"] as? String {
                self.email = value
            }
            if let value = dict["Message"] as? String {
                self.message = value
            }
        }
    }
    public var failList: [ResendEmailVerificationResponseBody.FailList]?

    public var requestId: String?

    public var successList: [ResendEmailVerificationResponseBody.SuccessList]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.failList != nil {
            var tmp : [Any] = []
            for k in self.failList! {
                tmp.append(k.toMap())
            }
            map["FailList"] = tmp
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.successList != nil {
            var tmp : [Any] = []
            for k in self.successList! {
                tmp.append(k.toMap())
            }
            map["SuccessList"] = tmp
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["FailList"] as? [Any?] {
            var tmp : [ResendEmailVerificationResponseBody.FailList] = []
            for v in value {
                if v != nil {
                    var model = ResendEmailVerificationResponseBody.FailList()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.failList = tmp
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["SuccessList"] as? [Any?] {
            var tmp : [ResendEmailVerificationResponseBody.SuccessList] = []
            for v in value {
                if v != nil {
                    var model = ResendEmailVerificationResponseBody.SuccessList()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.successList = tmp
        }
    }
}

public class ResendEmailVerificationResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ResendEmailVerificationResponseBody?

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
            var model = ResendEmailVerificationResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ResetQualificationVerificationRequest : Tea.TeaModel {
    public var instanceId: String?

    public var lang: String?

    public var userClientIp: String?

    public override init() {
        super.init()
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
        if self.lang != nil {
            map["Lang"] = self.lang!
        }
        if self.userClientIp != nil {
            map["UserClientIp"] = self.userClientIp!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["Lang"] as? String {
            self.lang = value
        }
        if let value = dict["UserClientIp"] as? String {
            self.userClientIp = value
        }
    }
}

public class ResetQualificationVerificationResponseBody : Tea.TeaModel {
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

public class ResetQualificationVerificationResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ResetQualificationVerificationResponseBody?

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
            var model = ResetQualificationVerificationResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class SaveBatchDomainRemarkRequest : Tea.TeaModel {
    public var instanceIds: String?

    public var lang: String?

    public var remark: String?

    public var userClientIp: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.instanceIds != nil {
            map["InstanceIds"] = self.instanceIds!
        }
        if self.lang != nil {
            map["Lang"] = self.lang!
        }
        if self.remark != nil {
            map["Remark"] = self.remark!
        }
        if self.userClientIp != nil {
            map["UserClientIp"] = self.userClientIp!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["InstanceIds"] as? String {
            self.instanceIds = value
        }
        if let value = dict["Lang"] as? String {
            self.lang = value
        }
        if let value = dict["Remark"] as? String {
            self.remark = value
        }
        if let value = dict["UserClientIp"] as? String {
            self.userClientIp = value
        }
    }
}

public class SaveBatchDomainRemarkResponseBody : Tea.TeaModel {
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

public class SaveBatchDomainRemarkResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: SaveBatchDomainRemarkResponseBody?

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
            var model = SaveBatchDomainRemarkResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class SaveBatchTaskForApplyQuickTransferOutOpenlyRequest : Tea.TeaModel {
    public var domainNames: [String]?

    public var lang: String?

    public var userClientIp: String?

    public override init() {
        super.init()
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
        if self.lang != nil {
            map["Lang"] = self.lang!
        }
        if self.userClientIp != nil {
            map["UserClientIp"] = self.userClientIp!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["DomainNames"] as? [String] {
            self.domainNames = value
        }
        if let value = dict["Lang"] as? String {
            self.lang = value
        }
        if let value = dict["UserClientIp"] as? String {
            self.userClientIp = value
        }
    }
}

public class SaveBatchTaskForApplyQuickTransferOutOpenlyResponseBody : Tea.TeaModel {
    public var requestId: String?

    public var taskNo: String?

    public override init() {
        super.init()
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
        if self.taskNo != nil {
            map["TaskNo"] = self.taskNo!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["TaskNo"] as? String {
            self.taskNo = value
        }
    }
}

public class SaveBatchTaskForApplyQuickTransferOutOpenlyResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: SaveBatchTaskForApplyQuickTransferOutOpenlyResponseBody?

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
            var model = SaveBatchTaskForApplyQuickTransferOutOpenlyResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class SaveBatchTaskForCreatingOrderActivateRequest : Tea.TeaModel {
    public class OrderActivateParam : Tea.TeaModel {
        public var address: String?

        public var aliyunDns: Bool?

        public var city: String?

        public var country: String?

        public var dns1: String?

        public var dns2: String?

        public var domainName: String?

        public var email: String?

        public var enableDomainProxy: Bool?

        public var permitPremiumActivation: Bool?

        public var postalCode: String?

        public var province: String?

        public var registrantName: String?

        public var registrantOrganization: String?

        public var registrantProfileId: Int64?

        public var registrantType: String?

        public var resourceGroupId: String?

        public var subscriptionDuration: Int32?

        public var telArea: String?

        public var telExt: String?

        public var telephone: String?

        public var trademarkDomainActivation: Bool?

        public var zhAddress: String?

        public var zhCity: String?

        public var zhProvince: String?

        public var zhRegistrantName: String?

        public var zhRegistrantOrganization: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.address != nil {
                map["Address"] = self.address!
            }
            if self.aliyunDns != nil {
                map["AliyunDns"] = self.aliyunDns!
            }
            if self.city != nil {
                map["City"] = self.city!
            }
            if self.country != nil {
                map["Country"] = self.country!
            }
            if self.dns1 != nil {
                map["Dns1"] = self.dns1!
            }
            if self.dns2 != nil {
                map["Dns2"] = self.dns2!
            }
            if self.domainName != nil {
                map["DomainName"] = self.domainName!
            }
            if self.email != nil {
                map["Email"] = self.email!
            }
            if self.enableDomainProxy != nil {
                map["EnableDomainProxy"] = self.enableDomainProxy!
            }
            if self.permitPremiumActivation != nil {
                map["PermitPremiumActivation"] = self.permitPremiumActivation!
            }
            if self.postalCode != nil {
                map["PostalCode"] = self.postalCode!
            }
            if self.province != nil {
                map["Province"] = self.province!
            }
            if self.registrantName != nil {
                map["RegistrantName"] = self.registrantName!
            }
            if self.registrantOrganization != nil {
                map["RegistrantOrganization"] = self.registrantOrganization!
            }
            if self.registrantProfileId != nil {
                map["RegistrantProfileId"] = self.registrantProfileId!
            }
            if self.registrantType != nil {
                map["RegistrantType"] = self.registrantType!
            }
            if self.resourceGroupId != nil {
                map["ResourceGroupId"] = self.resourceGroupId!
            }
            if self.subscriptionDuration != nil {
                map["SubscriptionDuration"] = self.subscriptionDuration!
            }
            if self.telArea != nil {
                map["TelArea"] = self.telArea!
            }
            if self.telExt != nil {
                map["TelExt"] = self.telExt!
            }
            if self.telephone != nil {
                map["Telephone"] = self.telephone!
            }
            if self.trademarkDomainActivation != nil {
                map["TrademarkDomainActivation"] = self.trademarkDomainActivation!
            }
            if self.zhAddress != nil {
                map["ZhAddress"] = self.zhAddress!
            }
            if self.zhCity != nil {
                map["ZhCity"] = self.zhCity!
            }
            if self.zhProvince != nil {
                map["ZhProvince"] = self.zhProvince!
            }
            if self.zhRegistrantName != nil {
                map["ZhRegistrantName"] = self.zhRegistrantName!
            }
            if self.zhRegistrantOrganization != nil {
                map["ZhRegistrantOrganization"] = self.zhRegistrantOrganization!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Address"] as? String {
                self.address = value
            }
            if let value = dict["AliyunDns"] as? Bool {
                self.aliyunDns = value
            }
            if let value = dict["City"] as? String {
                self.city = value
            }
            if let value = dict["Country"] as? String {
                self.country = value
            }
            if let value = dict["Dns1"] as? String {
                self.dns1 = value
            }
            if let value = dict["Dns2"] as? String {
                self.dns2 = value
            }
            if let value = dict["DomainName"] as? String {
                self.domainName = value
            }
            if let value = dict["Email"] as? String {
                self.email = value
            }
            if let value = dict["EnableDomainProxy"] as? Bool {
                self.enableDomainProxy = value
            }
            if let value = dict["PermitPremiumActivation"] as? Bool {
                self.permitPremiumActivation = value
            }
            if let value = dict["PostalCode"] as? String {
                self.postalCode = value
            }
            if let value = dict["Province"] as? String {
                self.province = value
            }
            if let value = dict["RegistrantName"] as? String {
                self.registrantName = value
            }
            if let value = dict["RegistrantOrganization"] as? String {
                self.registrantOrganization = value
            }
            if let value = dict["RegistrantProfileId"] as? Int64 {
                self.registrantProfileId = value
            }
            if let value = dict["RegistrantType"] as? String {
                self.registrantType = value
            }
            if let value = dict["ResourceGroupId"] as? String {
                self.resourceGroupId = value
            }
            if let value = dict["SubscriptionDuration"] as? Int32 {
                self.subscriptionDuration = value
            }
            if let value = dict["TelArea"] as? String {
                self.telArea = value
            }
            if let value = dict["TelExt"] as? String {
                self.telExt = value
            }
            if let value = dict["Telephone"] as? String {
                self.telephone = value
            }
            if let value = dict["TrademarkDomainActivation"] as? Bool {
                self.trademarkDomainActivation = value
            }
            if let value = dict["ZhAddress"] as? String {
                self.zhAddress = value
            }
            if let value = dict["ZhCity"] as? String {
                self.zhCity = value
            }
            if let value = dict["ZhProvince"] as? String {
                self.zhProvince = value
            }
            if let value = dict["ZhRegistrantName"] as? String {
                self.zhRegistrantName = value
            }
            if let value = dict["ZhRegistrantOrganization"] as? String {
                self.zhRegistrantOrganization = value
            }
        }
    }
    public var couponNo: String?

    public var lang: String?

    public var orderActivateParam: [SaveBatchTaskForCreatingOrderActivateRequest.OrderActivateParam]?

    public var promotionNo: String?

    public var useCoupon: Bool?

    public var usePromotion: Bool?

    public var userClientIp: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.couponNo != nil {
            map["CouponNo"] = self.couponNo!
        }
        if self.lang != nil {
            map["Lang"] = self.lang!
        }
        if self.orderActivateParam != nil {
            var tmp : [Any] = []
            for k in self.orderActivateParam! {
                tmp.append(k.toMap())
            }
            map["OrderActivateParam"] = tmp
        }
        if self.promotionNo != nil {
            map["PromotionNo"] = self.promotionNo!
        }
        if self.useCoupon != nil {
            map["UseCoupon"] = self.useCoupon!
        }
        if self.usePromotion != nil {
            map["UsePromotion"] = self.usePromotion!
        }
        if self.userClientIp != nil {
            map["UserClientIp"] = self.userClientIp!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["CouponNo"] as? String {
            self.couponNo = value
        }
        if let value = dict["Lang"] as? String {
            self.lang = value
        }
        if let value = dict["OrderActivateParam"] as? [Any?] {
            var tmp : [SaveBatchTaskForCreatingOrderActivateRequest.OrderActivateParam] = []
            for v in value {
                if v != nil {
                    var model = SaveBatchTaskForCreatingOrderActivateRequest.OrderActivateParam()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.orderActivateParam = tmp
        }
        if let value = dict["PromotionNo"] as? String {
            self.promotionNo = value
        }
        if let value = dict["UseCoupon"] as? Bool {
            self.useCoupon = value
        }
        if let value = dict["UsePromotion"] as? Bool {
            self.usePromotion = value
        }
        if let value = dict["UserClientIp"] as? String {
            self.userClientIp = value
        }
    }
}

public class SaveBatchTaskForCreatingOrderActivateResponseBody : Tea.TeaModel {
    public var requestId: String?

    public var taskNo: String?

    public override init() {
        super.init()
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
        if self.taskNo != nil {
            map["TaskNo"] = self.taskNo!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["TaskNo"] as? String {
            self.taskNo = value
        }
    }
}

public class SaveBatchTaskForCreatingOrderActivateResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: SaveBatchTaskForCreatingOrderActivateResponseBody?

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
            var model = SaveBatchTaskForCreatingOrderActivateResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class SaveBatchTaskForCreatingOrderRedeemRequest : Tea.TeaModel {
    public class OrderRedeemParam : Tea.TeaModel {
        public var currentExpirationDate: Int64?

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
            if self.currentExpirationDate != nil {
                map["CurrentExpirationDate"] = self.currentExpirationDate!
            }
            if self.domainName != nil {
                map["DomainName"] = self.domainName!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["CurrentExpirationDate"] as? Int64 {
                self.currentExpirationDate = value
            }
            if let value = dict["DomainName"] as? String {
                self.domainName = value
            }
        }
    }
    public var couponNo: String?

    public var lang: String?

    public var orderRedeemParam: [SaveBatchTaskForCreatingOrderRedeemRequest.OrderRedeemParam]?

    public var promotionNo: String?

    public var useCoupon: Bool?

    public var usePromotion: Bool?

    public var userClientIp: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.couponNo != nil {
            map["CouponNo"] = self.couponNo!
        }
        if self.lang != nil {
            map["Lang"] = self.lang!
        }
        if self.orderRedeemParam != nil {
            var tmp : [Any] = []
            for k in self.orderRedeemParam! {
                tmp.append(k.toMap())
            }
            map["OrderRedeemParam"] = tmp
        }
        if self.promotionNo != nil {
            map["PromotionNo"] = self.promotionNo!
        }
        if self.useCoupon != nil {
            map["UseCoupon"] = self.useCoupon!
        }
        if self.usePromotion != nil {
            map["UsePromotion"] = self.usePromotion!
        }
        if self.userClientIp != nil {
            map["UserClientIp"] = self.userClientIp!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["CouponNo"] as? String {
            self.couponNo = value
        }
        if let value = dict["Lang"] as? String {
            self.lang = value
        }
        if let value = dict["OrderRedeemParam"] as? [Any?] {
            var tmp : [SaveBatchTaskForCreatingOrderRedeemRequest.OrderRedeemParam] = []
            for v in value {
                if v != nil {
                    var model = SaveBatchTaskForCreatingOrderRedeemRequest.OrderRedeemParam()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.orderRedeemParam = tmp
        }
        if let value = dict["PromotionNo"] as? String {
            self.promotionNo = value
        }
        if let value = dict["UseCoupon"] as? Bool {
            self.useCoupon = value
        }
        if let value = dict["UsePromotion"] as? Bool {
            self.usePromotion = value
        }
        if let value = dict["UserClientIp"] as? String {
            self.userClientIp = value
        }
    }
}

public class SaveBatchTaskForCreatingOrderRedeemResponseBody : Tea.TeaModel {
    public var requestId: String?

    public var taskNo: String?

    public override init() {
        super.init()
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
        if self.taskNo != nil {
            map["TaskNo"] = self.taskNo!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["TaskNo"] as? String {
            self.taskNo = value
        }
    }
}

public class SaveBatchTaskForCreatingOrderRedeemResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: SaveBatchTaskForCreatingOrderRedeemResponseBody?

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
            var model = SaveBatchTaskForCreatingOrderRedeemResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class SaveBatchTaskForCreatingOrderRenewRequest : Tea.TeaModel {
    public class OrderRenewParam : Tea.TeaModel {
        public var currentExpirationDate: Int64?

        public var domainName: String?

        public var subscriptionDuration: Int32?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.currentExpirationDate != nil {
                map["CurrentExpirationDate"] = self.currentExpirationDate!
            }
            if self.domainName != nil {
                map["DomainName"] = self.domainName!
            }
            if self.subscriptionDuration != nil {
                map["SubscriptionDuration"] = self.subscriptionDuration!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["CurrentExpirationDate"] as? Int64 {
                self.currentExpirationDate = value
            }
            if let value = dict["DomainName"] as? String {
                self.domainName = value
            }
            if let value = dict["SubscriptionDuration"] as? Int32 {
                self.subscriptionDuration = value
            }
        }
    }
    public var couponNo: String?

    public var lang: String?

    public var orderRenewParam: [SaveBatchTaskForCreatingOrderRenewRequest.OrderRenewParam]?

    public var promotionNo: String?

    public var useCoupon: Bool?

    public var usePromotion: Bool?

    public var userClientIp: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.couponNo != nil {
            map["CouponNo"] = self.couponNo!
        }
        if self.lang != nil {
            map["Lang"] = self.lang!
        }
        if self.orderRenewParam != nil {
            var tmp : [Any] = []
            for k in self.orderRenewParam! {
                tmp.append(k.toMap())
            }
            map["OrderRenewParam"] = tmp
        }
        if self.promotionNo != nil {
            map["PromotionNo"] = self.promotionNo!
        }
        if self.useCoupon != nil {
            map["UseCoupon"] = self.useCoupon!
        }
        if self.usePromotion != nil {
            map["UsePromotion"] = self.usePromotion!
        }
        if self.userClientIp != nil {
            map["UserClientIp"] = self.userClientIp!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["CouponNo"] as? String {
            self.couponNo = value
        }
        if let value = dict["Lang"] as? String {
            self.lang = value
        }
        if let value = dict["OrderRenewParam"] as? [Any?] {
            var tmp : [SaveBatchTaskForCreatingOrderRenewRequest.OrderRenewParam] = []
            for v in value {
                if v != nil {
                    var model = SaveBatchTaskForCreatingOrderRenewRequest.OrderRenewParam()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.orderRenewParam = tmp
        }
        if let value = dict["PromotionNo"] as? String {
            self.promotionNo = value
        }
        if let value = dict["UseCoupon"] as? Bool {
            self.useCoupon = value
        }
        if let value = dict["UsePromotion"] as? Bool {
            self.usePromotion = value
        }
        if let value = dict["UserClientIp"] as? String {
            self.userClientIp = value
        }
    }
}

public class SaveBatchTaskForCreatingOrderRenewResponseBody : Tea.TeaModel {
    public var requestId: String?

    public var taskNo: String?

    public override init() {
        super.init()
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
        if self.taskNo != nil {
            map["TaskNo"] = self.taskNo!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["TaskNo"] as? String {
            self.taskNo = value
        }
    }
}

public class SaveBatchTaskForCreatingOrderRenewResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: SaveBatchTaskForCreatingOrderRenewResponseBody?

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
            var model = SaveBatchTaskForCreatingOrderRenewResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class SaveBatchTaskForCreatingOrderTransferRequest : Tea.TeaModel {
    public class OrderTransferParam : Tea.TeaModel {
        public var authorizationCode: String?

        public var domainName: String?

        public var permitPremiumTransfer: Bool?

        public var registrantProfileId: Int64?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.authorizationCode != nil {
                map["AuthorizationCode"] = self.authorizationCode!
            }
            if self.domainName != nil {
                map["DomainName"] = self.domainName!
            }
            if self.permitPremiumTransfer != nil {
                map["PermitPremiumTransfer"] = self.permitPremiumTransfer!
            }
            if self.registrantProfileId != nil {
                map["RegistrantProfileId"] = self.registrantProfileId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["AuthorizationCode"] as? String {
                self.authorizationCode = value
            }
            if let value = dict["DomainName"] as? String {
                self.domainName = value
            }
            if let value = dict["PermitPremiumTransfer"] as? Bool {
                self.permitPremiumTransfer = value
            }
            if let value = dict["RegistrantProfileId"] as? Int64 {
                self.registrantProfileId = value
            }
        }
    }
    public var couponNo: String?

    public var lang: String?

    public var orderTransferParam: [SaveBatchTaskForCreatingOrderTransferRequest.OrderTransferParam]?

    public var promotionNo: String?

    public var useCoupon: Bool?

    public var usePromotion: Bool?

    public var userClientIp: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.couponNo != nil {
            map["CouponNo"] = self.couponNo!
        }
        if self.lang != nil {
            map["Lang"] = self.lang!
        }
        if self.orderTransferParam != nil {
            var tmp : [Any] = []
            for k in self.orderTransferParam! {
                tmp.append(k.toMap())
            }
            map["OrderTransferParam"] = tmp
        }
        if self.promotionNo != nil {
            map["PromotionNo"] = self.promotionNo!
        }
        if self.useCoupon != nil {
            map["UseCoupon"] = self.useCoupon!
        }
        if self.usePromotion != nil {
            map["UsePromotion"] = self.usePromotion!
        }
        if self.userClientIp != nil {
            map["UserClientIp"] = self.userClientIp!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["CouponNo"] as? String {
            self.couponNo = value
        }
        if let value = dict["Lang"] as? String {
            self.lang = value
        }
        if let value = dict["OrderTransferParam"] as? [Any?] {
            var tmp : [SaveBatchTaskForCreatingOrderTransferRequest.OrderTransferParam] = []
            for v in value {
                if v != nil {
                    var model = SaveBatchTaskForCreatingOrderTransferRequest.OrderTransferParam()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.orderTransferParam = tmp
        }
        if let value = dict["PromotionNo"] as? String {
            self.promotionNo = value
        }
        if let value = dict["UseCoupon"] as? Bool {
            self.useCoupon = value
        }
        if let value = dict["UsePromotion"] as? Bool {
            self.usePromotion = value
        }
        if let value = dict["UserClientIp"] as? String {
            self.userClientIp = value
        }
    }
}

public class SaveBatchTaskForCreatingOrderTransferResponseBody : Tea.TeaModel {
    public var requestId: String?

    public var taskNo: String?

    public override init() {
        super.init()
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
        if self.taskNo != nil {
            map["TaskNo"] = self.taskNo!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["TaskNo"] as? String {
            self.taskNo = value
        }
    }
}

public class SaveBatchTaskForCreatingOrderTransferResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: SaveBatchTaskForCreatingOrderTransferResponseBody?

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
            var model = SaveBatchTaskForCreatingOrderTransferResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class SaveBatchTaskForDomainNameProxyServiceRequest : Tea.TeaModel {
    public var domainName: [String]?

    public var lang: String?

    public var status: Bool?

    public var userClientIp: String?

    public override init() {
        super.init()
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
        if self.lang != nil {
            map["Lang"] = self.lang!
        }
        if self.status != nil {
            map["Status"] = self.status!
        }
        if self.userClientIp != nil {
            map["UserClientIp"] = self.userClientIp!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["DomainName"] as? [String] {
            self.domainName = value
        }
        if let value = dict["Lang"] as? String {
            self.lang = value
        }
        if let value = dict["Status"] as? Bool {
            self.status = value
        }
        if let value = dict["UserClientIp"] as? String {
            self.userClientIp = value
        }
    }
}

public class SaveBatchTaskForDomainNameProxyServiceResponseBody : Tea.TeaModel {
    public var requestId: String?

    public var taskNo: String?

    public override init() {
        super.init()
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
        if self.taskNo != nil {
            map["TaskNo"] = self.taskNo!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["TaskNo"] as? String {
            self.taskNo = value
        }
    }
}

public class SaveBatchTaskForDomainNameProxyServiceResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: SaveBatchTaskForDomainNameProxyServiceResponseBody?

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
            var model = SaveBatchTaskForDomainNameProxyServiceResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class SaveBatchTaskForGenerateDomainCertificateRequest : Tea.TeaModel {
    public var domainNames: [String]?

    public var lang: String?

    public var userClientIp: String?

    public override init() {
        super.init()
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
        if self.lang != nil {
            map["Lang"] = self.lang!
        }
        if self.userClientIp != nil {
            map["UserClientIp"] = self.userClientIp!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["DomainNames"] as? [String] {
            self.domainNames = value
        }
        if let value = dict["Lang"] as? String {
            self.lang = value
        }
        if let value = dict["UserClientIp"] as? String {
            self.userClientIp = value
        }
    }
}

public class SaveBatchTaskForGenerateDomainCertificateShrinkRequest : Tea.TeaModel {
    public var domainNamesShrink: String?

    public var lang: String?

    public var userClientIp: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.domainNamesShrink != nil {
            map["DomainNames"] = self.domainNamesShrink!
        }
        if self.lang != nil {
            map["Lang"] = self.lang!
        }
        if self.userClientIp != nil {
            map["UserClientIp"] = self.userClientIp!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["DomainNames"] as? String {
            self.domainNamesShrink = value
        }
        if let value = dict["Lang"] as? String {
            self.lang = value
        }
        if let value = dict["UserClientIp"] as? String {
            self.userClientIp = value
        }
    }
}

public class SaveBatchTaskForGenerateDomainCertificateResponseBody : Tea.TeaModel {
    public var requestId: String?

    public var taskNo: String?

    public override init() {
        super.init()
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
        if self.taskNo != nil {
            map["TaskNo"] = self.taskNo!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["TaskNo"] as? String {
            self.taskNo = value
        }
    }
}

public class SaveBatchTaskForGenerateDomainCertificateResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: SaveBatchTaskForGenerateDomainCertificateResponseBody?

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
            var model = SaveBatchTaskForGenerateDomainCertificateResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class SaveBatchTaskForModifyingDomainDnsRequest : Tea.TeaModel {
    public var aliyunDns: Bool?

    public var domainName: [String]?

    public var domainNameServer: [String]?

    public var lang: String?

    public var userClientIp: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.aliyunDns != nil {
            map["AliyunDns"] = self.aliyunDns!
        }
        if self.domainName != nil {
            map["DomainName"] = self.domainName!
        }
        if self.domainNameServer != nil {
            map["DomainNameServer"] = self.domainNameServer!
        }
        if self.lang != nil {
            map["Lang"] = self.lang!
        }
        if self.userClientIp != nil {
            map["UserClientIp"] = self.userClientIp!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AliyunDns"] as? Bool {
            self.aliyunDns = value
        }
        if let value = dict["DomainName"] as? [String] {
            self.domainName = value
        }
        if let value = dict["DomainNameServer"] as? [String] {
            self.domainNameServer = value
        }
        if let value = dict["Lang"] as? String {
            self.lang = value
        }
        if let value = dict["UserClientIp"] as? String {
            self.userClientIp = value
        }
    }
}

public class SaveBatchTaskForModifyingDomainDnsResponseBody : Tea.TeaModel {
    public var requestId: String?

    public var taskNo: String?

    public override init() {
        super.init()
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
        if self.taskNo != nil {
            map["TaskNo"] = self.taskNo!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["TaskNo"] as? String {
            self.taskNo = value
        }
    }
}

public class SaveBatchTaskForModifyingDomainDnsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: SaveBatchTaskForModifyingDomainDnsResponseBody?

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
            var model = SaveBatchTaskForModifyingDomainDnsResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class SaveBatchTaskForReserveDropListDomainRequest : Tea.TeaModel {
    public class Domains : Tea.TeaModel {
        public var dns1: String?

        public var dns2: String?

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
            if self.dns1 != nil {
                map["Dns1"] = self.dns1!
            }
            if self.dns2 != nil {
                map["Dns2"] = self.dns2!
            }
            if self.domainName != nil {
                map["DomainName"] = self.domainName!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Dns1"] as? String {
                self.dns1 = value
            }
            if let value = dict["Dns2"] as? String {
                self.dns2 = value
            }
            if let value = dict["DomainName"] as? String {
                self.domainName = value
            }
        }
    }
    public var contactTemplateId: String?

    public var domains: [SaveBatchTaskForReserveDropListDomainRequest.Domains]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.contactTemplateId != nil {
            map["ContactTemplateId"] = self.contactTemplateId!
        }
        if self.domains != nil {
            var tmp : [Any] = []
            for k in self.domains! {
                tmp.append(k.toMap())
            }
            map["Domains"] = tmp
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ContactTemplateId"] as? String {
            self.contactTemplateId = value
        }
        if let value = dict["Domains"] as? [Any?] {
            var tmp : [SaveBatchTaskForReserveDropListDomainRequest.Domains] = []
            for v in value {
                if v != nil {
                    var model = SaveBatchTaskForReserveDropListDomainRequest.Domains()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.domains = tmp
        }
    }
}

public class SaveBatchTaskForReserveDropListDomainResponseBody : Tea.TeaModel {
    public var requestId: String?

    public var taskNo: String?

    public override init() {
        super.init()
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
        if self.taskNo != nil {
            map["TaskNo"] = self.taskNo!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["TaskNo"] as? String {
            self.taskNo = value
        }
    }
}

public class SaveBatchTaskForReserveDropListDomainResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: SaveBatchTaskForReserveDropListDomainResponseBody?

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
            var model = SaveBatchTaskForReserveDropListDomainResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class SaveBatchTaskForTransferOutByAuthorizationCodeRequest : Tea.TeaModel {
    public class TransferOutParamList : Tea.TeaModel {
        public var authorizationCode: String?

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
            if self.authorizationCode != nil {
                map["AuthorizationCode"] = self.authorizationCode!
            }
            if self.domainName != nil {
                map["DomainName"] = self.domainName!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["AuthorizationCode"] as? String {
                self.authorizationCode = value
            }
            if let value = dict["DomainName"] as? String {
                self.domainName = value
            }
        }
    }
    public var transferOutParamList: [SaveBatchTaskForTransferOutByAuthorizationCodeRequest.TransferOutParamList]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.transferOutParamList != nil {
            var tmp : [Any] = []
            for k in self.transferOutParamList! {
                tmp.append(k.toMap())
            }
            map["TransferOutParamList"] = tmp
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["TransferOutParamList"] as? [Any?] {
            var tmp : [SaveBatchTaskForTransferOutByAuthorizationCodeRequest.TransferOutParamList] = []
            for v in value {
                if v != nil {
                    var model = SaveBatchTaskForTransferOutByAuthorizationCodeRequest.TransferOutParamList()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.transferOutParamList = tmp
        }
    }
}

public class SaveBatchTaskForTransferOutByAuthorizationCodeResponseBody : Tea.TeaModel {
    public var requestId: String?

    public var taskNo: String?

    public override init() {
        super.init()
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
        if self.taskNo != nil {
            map["TaskNo"] = self.taskNo!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["TaskNo"] as? String {
            self.taskNo = value
        }
    }
}

public class SaveBatchTaskForTransferOutByAuthorizationCodeResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: SaveBatchTaskForTransferOutByAuthorizationCodeResponseBody?

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
            var model = SaveBatchTaskForTransferOutByAuthorizationCodeResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class SaveBatchTaskForTransferProhibitionLockRequest : Tea.TeaModel {
    public var domainName: [String]?

    public var lang: String?

    public var status: Bool?

    public var userClientIp: String?

    public override init() {
        super.init()
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
        if self.lang != nil {
            map["Lang"] = self.lang!
        }
        if self.status != nil {
            map["Status"] = self.status!
        }
        if self.userClientIp != nil {
            map["UserClientIp"] = self.userClientIp!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["DomainName"] as? [String] {
            self.domainName = value
        }
        if let value = dict["Lang"] as? String {
            self.lang = value
        }
        if let value = dict["Status"] as? Bool {
            self.status = value
        }
        if let value = dict["UserClientIp"] as? String {
            self.userClientIp = value
        }
    }
}

public class SaveBatchTaskForTransferProhibitionLockResponseBody : Tea.TeaModel {
    public var requestId: String?

    public var taskNo: String?

    public override init() {
        super.init()
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
        if self.taskNo != nil {
            map["TaskNo"] = self.taskNo!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["TaskNo"] as? String {
            self.taskNo = value
        }
    }
}

public class SaveBatchTaskForTransferProhibitionLockResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: SaveBatchTaskForTransferProhibitionLockResponseBody?

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
            var model = SaveBatchTaskForTransferProhibitionLockResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class SaveBatchTaskForUpdateProhibitionLockRequest : Tea.TeaModel {
    public var domainName: [String]?

    public var lang: String?

    public var status: Bool?

    public var userClientIp: String?

    public override init() {
        super.init()
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
        if self.lang != nil {
            map["Lang"] = self.lang!
        }
        if self.status != nil {
            map["Status"] = self.status!
        }
        if self.userClientIp != nil {
            map["UserClientIp"] = self.userClientIp!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["DomainName"] as? [String] {
            self.domainName = value
        }
        if let value = dict["Lang"] as? String {
            self.lang = value
        }
        if let value = dict["Status"] as? Bool {
            self.status = value
        }
        if let value = dict["UserClientIp"] as? String {
            self.userClientIp = value
        }
    }
}

public class SaveBatchTaskForUpdateProhibitionLockResponseBody : Tea.TeaModel {
    public var requestId: String?

    public var taskNo: String?

    public override init() {
        super.init()
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
        if self.taskNo != nil {
            map["TaskNo"] = self.taskNo!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["TaskNo"] as? String {
            self.taskNo = value
        }
    }
}

public class SaveBatchTaskForUpdateProhibitionLockResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: SaveBatchTaskForUpdateProhibitionLockResponseBody?

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
            var model = SaveBatchTaskForUpdateProhibitionLockResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class SaveBatchTaskForUpdatingContactInfoByNewContactRequest : Tea.TeaModel {
    public var address: String?

    public var city: String?

    public var contactType: String?

    public var country: String?

    public var domainName: [String]?

    public var email: String?

    public var lang: String?

    public var postalCode: String?

    public var province: String?

    public var registrantName: String?

    public var registrantOrganization: String?

    public var registrantType: String?

    public var telArea: String?

    public var telExt: String?

    public var telephone: String?

    public var transferOutProhibited: Bool?

    public var userClientIp: String?

    public var zhAddress: String?

    public var zhCity: String?

    public var zhProvince: String?

    public var zhRegistrantName: String?

    public var zhRegistrantOrganization: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.address != nil {
            map["Address"] = self.address!
        }
        if self.city != nil {
            map["City"] = self.city!
        }
        if self.contactType != nil {
            map["ContactType"] = self.contactType!
        }
        if self.country != nil {
            map["Country"] = self.country!
        }
        if self.domainName != nil {
            map["DomainName"] = self.domainName!
        }
        if self.email != nil {
            map["Email"] = self.email!
        }
        if self.lang != nil {
            map["Lang"] = self.lang!
        }
        if self.postalCode != nil {
            map["PostalCode"] = self.postalCode!
        }
        if self.province != nil {
            map["Province"] = self.province!
        }
        if self.registrantName != nil {
            map["RegistrantName"] = self.registrantName!
        }
        if self.registrantOrganization != nil {
            map["RegistrantOrganization"] = self.registrantOrganization!
        }
        if self.registrantType != nil {
            map["RegistrantType"] = self.registrantType!
        }
        if self.telArea != nil {
            map["TelArea"] = self.telArea!
        }
        if self.telExt != nil {
            map["TelExt"] = self.telExt!
        }
        if self.telephone != nil {
            map["Telephone"] = self.telephone!
        }
        if self.transferOutProhibited != nil {
            map["TransferOutProhibited"] = self.transferOutProhibited!
        }
        if self.userClientIp != nil {
            map["UserClientIp"] = self.userClientIp!
        }
        if self.zhAddress != nil {
            map["ZhAddress"] = self.zhAddress!
        }
        if self.zhCity != nil {
            map["ZhCity"] = self.zhCity!
        }
        if self.zhProvince != nil {
            map["ZhProvince"] = self.zhProvince!
        }
        if self.zhRegistrantName != nil {
            map["ZhRegistrantName"] = self.zhRegistrantName!
        }
        if self.zhRegistrantOrganization != nil {
            map["ZhRegistrantOrganization"] = self.zhRegistrantOrganization!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Address"] as? String {
            self.address = value
        }
        if let value = dict["City"] as? String {
            self.city = value
        }
        if let value = dict["ContactType"] as? String {
            self.contactType = value
        }
        if let value = dict["Country"] as? String {
            self.country = value
        }
        if let value = dict["DomainName"] as? [String] {
            self.domainName = value
        }
        if let value = dict["Email"] as? String {
            self.email = value
        }
        if let value = dict["Lang"] as? String {
            self.lang = value
        }
        if let value = dict["PostalCode"] as? String {
            self.postalCode = value
        }
        if let value = dict["Province"] as? String {
            self.province = value
        }
        if let value = dict["RegistrantName"] as? String {
            self.registrantName = value
        }
        if let value = dict["RegistrantOrganization"] as? String {
            self.registrantOrganization = value
        }
        if let value = dict["RegistrantType"] as? String {
            self.registrantType = value
        }
        if let value = dict["TelArea"] as? String {
            self.telArea = value
        }
        if let value = dict["TelExt"] as? String {
            self.telExt = value
        }
        if let value = dict["Telephone"] as? String {
            self.telephone = value
        }
        if let value = dict["TransferOutProhibited"] as? Bool {
            self.transferOutProhibited = value
        }
        if let value = dict["UserClientIp"] as? String {
            self.userClientIp = value
        }
        if let value = dict["ZhAddress"] as? String {
            self.zhAddress = value
        }
        if let value = dict["ZhCity"] as? String {
            self.zhCity = value
        }
        if let value = dict["ZhProvince"] as? String {
            self.zhProvince = value
        }
        if let value = dict["ZhRegistrantName"] as? String {
            self.zhRegistrantName = value
        }
        if let value = dict["ZhRegistrantOrganization"] as? String {
            self.zhRegistrantOrganization = value
        }
    }
}

public class SaveBatchTaskForUpdatingContactInfoByNewContactResponseBody : Tea.TeaModel {
    public var requestId: String?

    public var taskNo: String?

    public override init() {
        super.init()
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
        if self.taskNo != nil {
            map["TaskNo"] = self.taskNo!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["TaskNo"] as? String {
            self.taskNo = value
        }
    }
}

public class SaveBatchTaskForUpdatingContactInfoByNewContactResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: SaveBatchTaskForUpdatingContactInfoByNewContactResponseBody?

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
            var model = SaveBatchTaskForUpdatingContactInfoByNewContactResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class SaveBatchTaskForUpdatingContactInfoByRegistrantProfileIdRequest : Tea.TeaModel {
    public var contactType: String?

    public var domainName: [String]?

    public var lang: String?

    public var registrantProfileId: Int64?

    public var transferOutProhibited: Bool?

    public var userClientIp: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.contactType != nil {
            map["ContactType"] = self.contactType!
        }
        if self.domainName != nil {
            map["DomainName"] = self.domainName!
        }
        if self.lang != nil {
            map["Lang"] = self.lang!
        }
        if self.registrantProfileId != nil {
            map["RegistrantProfileId"] = self.registrantProfileId!
        }
        if self.transferOutProhibited != nil {
            map["TransferOutProhibited"] = self.transferOutProhibited!
        }
        if self.userClientIp != nil {
            map["UserClientIp"] = self.userClientIp!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ContactType"] as? String {
            self.contactType = value
        }
        if let value = dict["DomainName"] as? [String] {
            self.domainName = value
        }
        if let value = dict["Lang"] as? String {
            self.lang = value
        }
        if let value = dict["RegistrantProfileId"] as? Int64 {
            self.registrantProfileId = value
        }
        if let value = dict["TransferOutProhibited"] as? Bool {
            self.transferOutProhibited = value
        }
        if let value = dict["UserClientIp"] as? String {
            self.userClientIp = value
        }
    }
}

public class SaveBatchTaskForUpdatingContactInfoByRegistrantProfileIdResponseBody : Tea.TeaModel {
    public var requestId: String?

    public var taskNo: String?

    public override init() {
        super.init()
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
        if self.taskNo != nil {
            map["TaskNo"] = self.taskNo!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["TaskNo"] as? String {
            self.taskNo = value
        }
    }
}

public class SaveBatchTaskForUpdatingContactInfoByRegistrantProfileIdResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: SaveBatchTaskForUpdatingContactInfoByRegistrantProfileIdResponseBody?

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
            var model = SaveBatchTaskForUpdatingContactInfoByRegistrantProfileIdResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class SaveDomainGroupRequest : Tea.TeaModel {
    public var domainGroupId: Int64?

    public var domainGroupName: String?

    public var lang: String?

    public var userClientIp: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.domainGroupId != nil {
            map["DomainGroupId"] = self.domainGroupId!
        }
        if self.domainGroupName != nil {
            map["DomainGroupName"] = self.domainGroupName!
        }
        if self.lang != nil {
            map["Lang"] = self.lang!
        }
        if self.userClientIp != nil {
            map["UserClientIp"] = self.userClientIp!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["DomainGroupId"] as? Int64 {
            self.domainGroupId = value
        }
        if let value = dict["DomainGroupName"] as? String {
            self.domainGroupName = value
        }
        if let value = dict["Lang"] as? String {
            self.lang = value
        }
        if let value = dict["UserClientIp"] as? String {
            self.userClientIp = value
        }
    }
}

public class SaveDomainGroupResponseBody : Tea.TeaModel {
    public var beingDeleted: Bool?

    public var creationDate: String?

    public var domainGroupId: Int64?

    public var domainGroupName: String?

    public var domainGroupStatus: String?

    public var modificationDate: String?

    public var requestId: String?

    public var totalNumber: Int32?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.beingDeleted != nil {
            map["BeingDeleted"] = self.beingDeleted!
        }
        if self.creationDate != nil {
            map["CreationDate"] = self.creationDate!
        }
        if self.domainGroupId != nil {
            map["DomainGroupId"] = self.domainGroupId!
        }
        if self.domainGroupName != nil {
            map["DomainGroupName"] = self.domainGroupName!
        }
        if self.domainGroupStatus != nil {
            map["DomainGroupStatus"] = self.domainGroupStatus!
        }
        if self.modificationDate != nil {
            map["ModificationDate"] = self.modificationDate!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.totalNumber != nil {
            map["TotalNumber"] = self.totalNumber!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["BeingDeleted"] as? Bool {
            self.beingDeleted = value
        }
        if let value = dict["CreationDate"] as? String {
            self.creationDate = value
        }
        if let value = dict["DomainGroupId"] as? Int64 {
            self.domainGroupId = value
        }
        if let value = dict["DomainGroupName"] as? String {
            self.domainGroupName = value
        }
        if let value = dict["DomainGroupStatus"] as? String {
            self.domainGroupStatus = value
        }
        if let value = dict["ModificationDate"] as? String {
            self.modificationDate = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["TotalNumber"] as? Int32 {
            self.totalNumber = value
        }
    }
}

public class SaveDomainGroupResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: SaveDomainGroupResponseBody?

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
            var model = SaveDomainGroupResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class SaveRegistrantProfileRequest : Tea.TeaModel {
    public var address: String?

    public var city: String?

    public var country: String?

    public var defaultRegistrantProfile: Bool?

    public var email: String?

    public var lang: String?

    public var postalCode: String?

    public var province: String?

    public var registrantName: String?

    public var registrantOrganization: String?

    public var registrantProfileId: Int64?

    public var registrantProfileType: String?

    public var registrantType: String?

    public var telArea: String?

    public var telExt: String?

    public var telephone: String?

    public var userClientIp: String?

    public var zhAddress: String?

    public var zhCity: String?

    public var zhProvince: String?

    public var zhRegistrantName: String?

    public var zhRegistrantOrganization: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.address != nil {
            map["Address"] = self.address!
        }
        if self.city != nil {
            map["City"] = self.city!
        }
        if self.country != nil {
            map["Country"] = self.country!
        }
        if self.defaultRegistrantProfile != nil {
            map["DefaultRegistrantProfile"] = self.defaultRegistrantProfile!
        }
        if self.email != nil {
            map["Email"] = self.email!
        }
        if self.lang != nil {
            map["Lang"] = self.lang!
        }
        if self.postalCode != nil {
            map["PostalCode"] = self.postalCode!
        }
        if self.province != nil {
            map["Province"] = self.province!
        }
        if self.registrantName != nil {
            map["RegistrantName"] = self.registrantName!
        }
        if self.registrantOrganization != nil {
            map["RegistrantOrganization"] = self.registrantOrganization!
        }
        if self.registrantProfileId != nil {
            map["RegistrantProfileId"] = self.registrantProfileId!
        }
        if self.registrantProfileType != nil {
            map["RegistrantProfileType"] = self.registrantProfileType!
        }
        if self.registrantType != nil {
            map["RegistrantType"] = self.registrantType!
        }
        if self.telArea != nil {
            map["TelArea"] = self.telArea!
        }
        if self.telExt != nil {
            map["TelExt"] = self.telExt!
        }
        if self.telephone != nil {
            map["Telephone"] = self.telephone!
        }
        if self.userClientIp != nil {
            map["UserClientIp"] = self.userClientIp!
        }
        if self.zhAddress != nil {
            map["ZhAddress"] = self.zhAddress!
        }
        if self.zhCity != nil {
            map["ZhCity"] = self.zhCity!
        }
        if self.zhProvince != nil {
            map["ZhProvince"] = self.zhProvince!
        }
        if self.zhRegistrantName != nil {
            map["ZhRegistrantName"] = self.zhRegistrantName!
        }
        if self.zhRegistrantOrganization != nil {
            map["ZhRegistrantOrganization"] = self.zhRegistrantOrganization!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Address"] as? String {
            self.address = value
        }
        if let value = dict["City"] as? String {
            self.city = value
        }
        if let value = dict["Country"] as? String {
            self.country = value
        }
        if let value = dict["DefaultRegistrantProfile"] as? Bool {
            self.defaultRegistrantProfile = value
        }
        if let value = dict["Email"] as? String {
            self.email = value
        }
        if let value = dict["Lang"] as? String {
            self.lang = value
        }
        if let value = dict["PostalCode"] as? String {
            self.postalCode = value
        }
        if let value = dict["Province"] as? String {
            self.province = value
        }
        if let value = dict["RegistrantName"] as? String {
            self.registrantName = value
        }
        if let value = dict["RegistrantOrganization"] as? String {
            self.registrantOrganization = value
        }
        if let value = dict["RegistrantProfileId"] as? Int64 {
            self.registrantProfileId = value
        }
        if let value = dict["RegistrantProfileType"] as? String {
            self.registrantProfileType = value
        }
        if let value = dict["RegistrantType"] as? String {
            self.registrantType = value
        }
        if let value = dict["TelArea"] as? String {
            self.telArea = value
        }
        if let value = dict["TelExt"] as? String {
            self.telExt = value
        }
        if let value = dict["Telephone"] as? String {
            self.telephone = value
        }
        if let value = dict["UserClientIp"] as? String {
            self.userClientIp = value
        }
        if let value = dict["ZhAddress"] as? String {
            self.zhAddress = value
        }
        if let value = dict["ZhCity"] as? String {
            self.zhCity = value
        }
        if let value = dict["ZhProvince"] as? String {
            self.zhProvince = value
        }
        if let value = dict["ZhRegistrantName"] as? String {
            self.zhRegistrantName = value
        }
        if let value = dict["ZhRegistrantOrganization"] as? String {
            self.zhRegistrantOrganization = value
        }
    }
}

public class SaveRegistrantProfileResponseBody : Tea.TeaModel {
    public var registrantProfileId: Int64?

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
        if self.registrantProfileId != nil {
            map["RegistrantProfileId"] = self.registrantProfileId!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RegistrantProfileId"] as? Int64 {
            self.registrantProfileId = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class SaveRegistrantProfileResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: SaveRegistrantProfileResponseBody?

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
            var model = SaveRegistrantProfileResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class SaveRegistrantProfileRealNameVerificationRequest : Tea.TeaModel {
    public var address: String?

    public var city: String?

    public var country: String?

    public var email: String?

    public var identityCredential: String?

    public var identityCredentialNo: String?

    public var identityCredentialType: String?

    public var lang: String?

    public var postalCode: String?

    public var province: String?

    public var registrantName: String?

    public var registrantOrganization: String?

    public var registrantProfileId: Int64?

    public var registrantProfileType: String?

    public var registrantType: String?

    public var telArea: String?

    public var telExt: String?

    public var telephone: String?

    public var userClientIp: String?

    public var zhAddress: String?

    public var zhCity: String?

    public var zhProvince: String?

    public var zhRegistrantName: String?

    public var zhRegistrantOrganization: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.address != nil {
            map["Address"] = self.address!
        }
        if self.city != nil {
            map["City"] = self.city!
        }
        if self.country != nil {
            map["Country"] = self.country!
        }
        if self.email != nil {
            map["Email"] = self.email!
        }
        if self.identityCredential != nil {
            map["IdentityCredential"] = self.identityCredential!
        }
        if self.identityCredentialNo != nil {
            map["IdentityCredentialNo"] = self.identityCredentialNo!
        }
        if self.identityCredentialType != nil {
            map["IdentityCredentialType"] = self.identityCredentialType!
        }
        if self.lang != nil {
            map["Lang"] = self.lang!
        }
        if self.postalCode != nil {
            map["PostalCode"] = self.postalCode!
        }
        if self.province != nil {
            map["Province"] = self.province!
        }
        if self.registrantName != nil {
            map["RegistrantName"] = self.registrantName!
        }
        if self.registrantOrganization != nil {
            map["RegistrantOrganization"] = self.registrantOrganization!
        }
        if self.registrantProfileId != nil {
            map["RegistrantProfileId"] = self.registrantProfileId!
        }
        if self.registrantProfileType != nil {
            map["RegistrantProfileType"] = self.registrantProfileType!
        }
        if self.registrantType != nil {
            map["RegistrantType"] = self.registrantType!
        }
        if self.telArea != nil {
            map["TelArea"] = self.telArea!
        }
        if self.telExt != nil {
            map["TelExt"] = self.telExt!
        }
        if self.telephone != nil {
            map["Telephone"] = self.telephone!
        }
        if self.userClientIp != nil {
            map["UserClientIp"] = self.userClientIp!
        }
        if self.zhAddress != nil {
            map["ZhAddress"] = self.zhAddress!
        }
        if self.zhCity != nil {
            map["ZhCity"] = self.zhCity!
        }
        if self.zhProvince != nil {
            map["ZhProvince"] = self.zhProvince!
        }
        if self.zhRegistrantName != nil {
            map["ZhRegistrantName"] = self.zhRegistrantName!
        }
        if self.zhRegistrantOrganization != nil {
            map["ZhRegistrantOrganization"] = self.zhRegistrantOrganization!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Address"] as? String {
            self.address = value
        }
        if let value = dict["City"] as? String {
            self.city = value
        }
        if let value = dict["Country"] as? String {
            self.country = value
        }
        if let value = dict["Email"] as? String {
            self.email = value
        }
        if let value = dict["IdentityCredential"] as? String {
            self.identityCredential = value
        }
        if let value = dict["IdentityCredentialNo"] as? String {
            self.identityCredentialNo = value
        }
        if let value = dict["IdentityCredentialType"] as? String {
            self.identityCredentialType = value
        }
        if let value = dict["Lang"] as? String {
            self.lang = value
        }
        if let value = dict["PostalCode"] as? String {
            self.postalCode = value
        }
        if let value = dict["Province"] as? String {
            self.province = value
        }
        if let value = dict["RegistrantName"] as? String {
            self.registrantName = value
        }
        if let value = dict["RegistrantOrganization"] as? String {
            self.registrantOrganization = value
        }
        if let value = dict["RegistrantProfileId"] as? Int64 {
            self.registrantProfileId = value
        }
        if let value = dict["RegistrantProfileType"] as? String {
            self.registrantProfileType = value
        }
        if let value = dict["RegistrantType"] as? String {
            self.registrantType = value
        }
        if let value = dict["TelArea"] as? String {
            self.telArea = value
        }
        if let value = dict["TelExt"] as? String {
            self.telExt = value
        }
        if let value = dict["Telephone"] as? String {
            self.telephone = value
        }
        if let value = dict["UserClientIp"] as? String {
            self.userClientIp = value
        }
        if let value = dict["ZhAddress"] as? String {
            self.zhAddress = value
        }
        if let value = dict["ZhCity"] as? String {
            self.zhCity = value
        }
        if let value = dict["ZhProvince"] as? String {
            self.zhProvince = value
        }
        if let value = dict["ZhRegistrantName"] as? String {
            self.zhRegistrantName = value
        }
        if let value = dict["ZhRegistrantOrganization"] as? String {
            self.zhRegistrantOrganization = value
        }
    }
}

public class SaveRegistrantProfileRealNameVerificationResponseBody : Tea.TeaModel {
    public var registrantProfileId: Int64?

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
        if self.registrantProfileId != nil {
            map["RegistrantProfileId"] = self.registrantProfileId!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RegistrantProfileId"] as? Int64 {
            self.registrantProfileId = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class SaveRegistrantProfileRealNameVerificationResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: SaveRegistrantProfileRealNameVerificationResponseBody?

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
            var model = SaveRegistrantProfileRealNameVerificationResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class SaveSingleTaskForAddingDSRecordRequest : Tea.TeaModel {
    public var algorithm: Int32?

    public var digest: String?

    public var digestType: Int32?

    public var domainName: String?

    public var keyTag: Int32?

    public var lang: String?

    public var userClientIp: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.algorithm != nil {
            map["Algorithm"] = self.algorithm!
        }
        if self.digest != nil {
            map["Digest"] = self.digest!
        }
        if self.digestType != nil {
            map["DigestType"] = self.digestType!
        }
        if self.domainName != nil {
            map["DomainName"] = self.domainName!
        }
        if self.keyTag != nil {
            map["KeyTag"] = self.keyTag!
        }
        if self.lang != nil {
            map["Lang"] = self.lang!
        }
        if self.userClientIp != nil {
            map["UserClientIp"] = self.userClientIp!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Algorithm"] as? Int32 {
            self.algorithm = value
        }
        if let value = dict["Digest"] as? String {
            self.digest = value
        }
        if let value = dict["DigestType"] as? Int32 {
            self.digestType = value
        }
        if let value = dict["DomainName"] as? String {
            self.domainName = value
        }
        if let value = dict["KeyTag"] as? Int32 {
            self.keyTag = value
        }
        if let value = dict["Lang"] as? String {
            self.lang = value
        }
        if let value = dict["UserClientIp"] as? String {
            self.userClientIp = value
        }
    }
}

public class SaveSingleTaskForAddingDSRecordResponseBody : Tea.TeaModel {
    public var requestId: String?

    public var taskNo: String?

    public override init() {
        super.init()
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
        if self.taskNo != nil {
            map["TaskNo"] = self.taskNo!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["TaskNo"] as? String {
            self.taskNo = value
        }
    }
}

public class SaveSingleTaskForAddingDSRecordResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: SaveSingleTaskForAddingDSRecordResponseBody?

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
            var model = SaveSingleTaskForAddingDSRecordResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class SaveSingleTaskForApplyQuickTransferOutOpenlyRequest : Tea.TeaModel {
    public var domainName: String?

    public var lang: String?

    public var userClientIp: String?

    public override init() {
        super.init()
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
        if self.lang != nil {
            map["Lang"] = self.lang!
        }
        if self.userClientIp != nil {
            map["UserClientIp"] = self.userClientIp!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["DomainName"] as? String {
            self.domainName = value
        }
        if let value = dict["Lang"] as? String {
            self.lang = value
        }
        if let value = dict["UserClientIp"] as? String {
            self.userClientIp = value
        }
    }
}

public class SaveSingleTaskForApplyQuickTransferOutOpenlyResponseBody : Tea.TeaModel {
    public var requestId: String?

    public var taskNo: String?

    public override init() {
        super.init()
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
        if self.taskNo != nil {
            map["TaskNo"] = self.taskNo!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["TaskNo"] as? String {
            self.taskNo = value
        }
    }
}

public class SaveSingleTaskForApplyQuickTransferOutOpenlyResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: SaveSingleTaskForApplyQuickTransferOutOpenlyResponseBody?

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
            var model = SaveSingleTaskForApplyQuickTransferOutOpenlyResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class SaveSingleTaskForApprovingTransferOutRequest : Tea.TeaModel {
    public var domainName: String?

    public var lang: String?

    public var userClientIp: String?

    public override init() {
        super.init()
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
        if self.lang != nil {
            map["Lang"] = self.lang!
        }
        if self.userClientIp != nil {
            map["UserClientIp"] = self.userClientIp!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["DomainName"] as? String {
            self.domainName = value
        }
        if let value = dict["Lang"] as? String {
            self.lang = value
        }
        if let value = dict["UserClientIp"] as? String {
            self.userClientIp = value
        }
    }
}

public class SaveSingleTaskForApprovingTransferOutResponseBody : Tea.TeaModel {
    public var requestId: String?

    public var taskNo: String?

    public override init() {
        super.init()
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
        if self.taskNo != nil {
            map["TaskNo"] = self.taskNo!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["TaskNo"] as? String {
            self.taskNo = value
        }
    }
}

public class SaveSingleTaskForApprovingTransferOutResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: SaveSingleTaskForApprovingTransferOutResponseBody?

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
            var model = SaveSingleTaskForApprovingTransferOutResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class SaveSingleTaskForAssociatingEnsRequest : Tea.TeaModel {
    public var address: String?

    public var domainName: String?

    public var lang: String?

    public var userClientIp: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.address != nil {
            map["Address"] = self.address!
        }
        if self.domainName != nil {
            map["DomainName"] = self.domainName!
        }
        if self.lang != nil {
            map["Lang"] = self.lang!
        }
        if self.userClientIp != nil {
            map["UserClientIp"] = self.userClientIp!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Address"] as? String {
            self.address = value
        }
        if let value = dict["DomainName"] as? String {
            self.domainName = value
        }
        if let value = dict["Lang"] as? String {
            self.lang = value
        }
        if let value = dict["UserClientIp"] as? String {
            self.userClientIp = value
        }
    }
}

public class SaveSingleTaskForAssociatingEnsResponseBody : Tea.TeaModel {
    public var requestId: String?

    public var taskNo: String?

    public override init() {
        super.init()
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
        if self.taskNo != nil {
            map["TaskNo"] = self.taskNo!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["TaskNo"] as? String {
            self.taskNo = value
        }
    }
}

public class SaveSingleTaskForAssociatingEnsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: SaveSingleTaskForAssociatingEnsResponseBody?

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
            var model = SaveSingleTaskForAssociatingEnsResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class SaveSingleTaskForCancelingTransferInRequest : Tea.TeaModel {
    public var domainName: String?

    public var lang: String?

    public var userClientIp: String?

    public override init() {
        super.init()
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
        if self.lang != nil {
            map["Lang"] = self.lang!
        }
        if self.userClientIp != nil {
            map["UserClientIp"] = self.userClientIp!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["DomainName"] as? String {
            self.domainName = value
        }
        if let value = dict["Lang"] as? String {
            self.lang = value
        }
        if let value = dict["UserClientIp"] as? String {
            self.userClientIp = value
        }
    }
}

public class SaveSingleTaskForCancelingTransferInResponseBody : Tea.TeaModel {
    public var requestId: String?

    public var taskNo: String?

    public override init() {
        super.init()
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
        if self.taskNo != nil {
            map["TaskNo"] = self.taskNo!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["TaskNo"] as? String {
            self.taskNo = value
        }
    }
}

public class SaveSingleTaskForCancelingTransferInResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: SaveSingleTaskForCancelingTransferInResponseBody?

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
            var model = SaveSingleTaskForCancelingTransferInResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class SaveSingleTaskForCancelingTransferOutRequest : Tea.TeaModel {
    public var domainName: String?

    public var lang: String?

    public var userClientIp: String?

    public override init() {
        super.init()
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
        if self.lang != nil {
            map["Lang"] = self.lang!
        }
        if self.userClientIp != nil {
            map["UserClientIp"] = self.userClientIp!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["DomainName"] as? String {
            self.domainName = value
        }
        if let value = dict["Lang"] as? String {
            self.lang = value
        }
        if let value = dict["UserClientIp"] as? String {
            self.userClientIp = value
        }
    }
}

public class SaveSingleTaskForCancelingTransferOutResponseBody : Tea.TeaModel {
    public var requestId: String?

    public var taskNo: String?

    public override init() {
        super.init()
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
        if self.taskNo != nil {
            map["TaskNo"] = self.taskNo!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["TaskNo"] as? String {
            self.taskNo = value
        }
    }
}

public class SaveSingleTaskForCancelingTransferOutResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: SaveSingleTaskForCancelingTransferOutResponseBody?

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
            var model = SaveSingleTaskForCancelingTransferOutResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class SaveSingleTaskForCreatingDnsHostRequest : Tea.TeaModel {
    public var dnsName: String?

    public var instanceId: String?

    public var ip: [String]?

    public var lang: String?

    public var userClientIp: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.dnsName != nil {
            map["DnsName"] = self.dnsName!
        }
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.ip != nil {
            map["Ip"] = self.ip!
        }
        if self.lang != nil {
            map["Lang"] = self.lang!
        }
        if self.userClientIp != nil {
            map["UserClientIp"] = self.userClientIp!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["DnsName"] as? String {
            self.dnsName = value
        }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["Ip"] as? [String] {
            self.ip = value
        }
        if let value = dict["Lang"] as? String {
            self.lang = value
        }
        if let value = dict["UserClientIp"] as? String {
            self.userClientIp = value
        }
    }
}

public class SaveSingleTaskForCreatingDnsHostResponseBody : Tea.TeaModel {
    public var requestId: String?

    public var taskNo: String?

    public override init() {
        super.init()
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
        if self.taskNo != nil {
            map["TaskNo"] = self.taskNo!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["TaskNo"] as? String {
            self.taskNo = value
        }
    }
}

public class SaveSingleTaskForCreatingDnsHostResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: SaveSingleTaskForCreatingDnsHostResponseBody?

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
            var model = SaveSingleTaskForCreatingDnsHostResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class SaveSingleTaskForCreatingOrderActivateRequest : Tea.TeaModel {
    public var address: String?

    public var aliyunDns: Bool?

    public var city: String?

    public var country: String?

    public var couponNo: String?

    public var dns1: String?

    public var dns2: String?

    public var domainName: String?

    public var email: String?

    public var enableDomainProxy: Bool?

    public var lang: String?

    public var permitPremiumActivation: Bool?

    public var postalCode: String?

    public var promotionNo: String?

    public var province: String?

    public var registrantName: String?

    public var registrantOrganization: String?

    public var registrantProfileId: Int64?

    public var registrantType: String?

    public var resourceGroupId: String?

    public var subscriptionDuration: Int32?

    public var telArea: String?

    public var telExt: String?

    public var telephone: String?

    public var trademarkDomainActivation: Bool?

    public var useCoupon: Bool?

    public var usePromotion: Bool?

    public var userClientIp: String?

    public var zhAddress: String?

    public var zhCity: String?

    public var zhProvince: String?

    public var zhRegistrantName: String?

    public var zhRegistrantOrganization: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.address != nil {
            map["Address"] = self.address!
        }
        if self.aliyunDns != nil {
            map["AliyunDns"] = self.aliyunDns!
        }
        if self.city != nil {
            map["City"] = self.city!
        }
        if self.country != nil {
            map["Country"] = self.country!
        }
        if self.couponNo != nil {
            map["CouponNo"] = self.couponNo!
        }
        if self.dns1 != nil {
            map["Dns1"] = self.dns1!
        }
        if self.dns2 != nil {
            map["Dns2"] = self.dns2!
        }
        if self.domainName != nil {
            map["DomainName"] = self.domainName!
        }
        if self.email != nil {
            map["Email"] = self.email!
        }
        if self.enableDomainProxy != nil {
            map["EnableDomainProxy"] = self.enableDomainProxy!
        }
        if self.lang != nil {
            map["Lang"] = self.lang!
        }
        if self.permitPremiumActivation != nil {
            map["PermitPremiumActivation"] = self.permitPremiumActivation!
        }
        if self.postalCode != nil {
            map["PostalCode"] = self.postalCode!
        }
        if self.promotionNo != nil {
            map["PromotionNo"] = self.promotionNo!
        }
        if self.province != nil {
            map["Province"] = self.province!
        }
        if self.registrantName != nil {
            map["RegistrantName"] = self.registrantName!
        }
        if self.registrantOrganization != nil {
            map["RegistrantOrganization"] = self.registrantOrganization!
        }
        if self.registrantProfileId != nil {
            map["RegistrantProfileId"] = self.registrantProfileId!
        }
        if self.registrantType != nil {
            map["RegistrantType"] = self.registrantType!
        }
        if self.resourceGroupId != nil {
            map["ResourceGroupId"] = self.resourceGroupId!
        }
        if self.subscriptionDuration != nil {
            map["SubscriptionDuration"] = self.subscriptionDuration!
        }
        if self.telArea != nil {
            map["TelArea"] = self.telArea!
        }
        if self.telExt != nil {
            map["TelExt"] = self.telExt!
        }
        if self.telephone != nil {
            map["Telephone"] = self.telephone!
        }
        if self.trademarkDomainActivation != nil {
            map["TrademarkDomainActivation"] = self.trademarkDomainActivation!
        }
        if self.useCoupon != nil {
            map["UseCoupon"] = self.useCoupon!
        }
        if self.usePromotion != nil {
            map["UsePromotion"] = self.usePromotion!
        }
        if self.userClientIp != nil {
            map["UserClientIp"] = self.userClientIp!
        }
        if self.zhAddress != nil {
            map["ZhAddress"] = self.zhAddress!
        }
        if self.zhCity != nil {
            map["ZhCity"] = self.zhCity!
        }
        if self.zhProvince != nil {
            map["ZhProvince"] = self.zhProvince!
        }
        if self.zhRegistrantName != nil {
            map["ZhRegistrantName"] = self.zhRegistrantName!
        }
        if self.zhRegistrantOrganization != nil {
            map["ZhRegistrantOrganization"] = self.zhRegistrantOrganization!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Address"] as? String {
            self.address = value
        }
        if let value = dict["AliyunDns"] as? Bool {
            self.aliyunDns = value
        }
        if let value = dict["City"] as? String {
            self.city = value
        }
        if let value = dict["Country"] as? String {
            self.country = value
        }
        if let value = dict["CouponNo"] as? String {
            self.couponNo = value
        }
        if let value = dict["Dns1"] as? String {
            self.dns1 = value
        }
        if let value = dict["Dns2"] as? String {
            self.dns2 = value
        }
        if let value = dict["DomainName"] as? String {
            self.domainName = value
        }
        if let value = dict["Email"] as? String {
            self.email = value
        }
        if let value = dict["EnableDomainProxy"] as? Bool {
            self.enableDomainProxy = value
        }
        if let value = dict["Lang"] as? String {
            self.lang = value
        }
        if let value = dict["PermitPremiumActivation"] as? Bool {
            self.permitPremiumActivation = value
        }
        if let value = dict["PostalCode"] as? String {
            self.postalCode = value
        }
        if let value = dict["PromotionNo"] as? String {
            self.promotionNo = value
        }
        if let value = dict["Province"] as? String {
            self.province = value
        }
        if let value = dict["RegistrantName"] as? String {
            self.registrantName = value
        }
        if let value = dict["RegistrantOrganization"] as? String {
            self.registrantOrganization = value
        }
        if let value = dict["RegistrantProfileId"] as? Int64 {
            self.registrantProfileId = value
        }
        if let value = dict["RegistrantType"] as? String {
            self.registrantType = value
        }
        if let value = dict["ResourceGroupId"] as? String {
            self.resourceGroupId = value
        }
        if let value = dict["SubscriptionDuration"] as? Int32 {
            self.subscriptionDuration = value
        }
        if let value = dict["TelArea"] as? String {
            self.telArea = value
        }
        if let value = dict["TelExt"] as? String {
            self.telExt = value
        }
        if let value = dict["Telephone"] as? String {
            self.telephone = value
        }
        if let value = dict["TrademarkDomainActivation"] as? Bool {
            self.trademarkDomainActivation = value
        }
        if let value = dict["UseCoupon"] as? Bool {
            self.useCoupon = value
        }
        if let value = dict["UsePromotion"] as? Bool {
            self.usePromotion = value
        }
        if let value = dict["UserClientIp"] as? String {
            self.userClientIp = value
        }
        if let value = dict["ZhAddress"] as? String {
            self.zhAddress = value
        }
        if let value = dict["ZhCity"] as? String {
            self.zhCity = value
        }
        if let value = dict["ZhProvince"] as? String {
            self.zhProvince = value
        }
        if let value = dict["ZhRegistrantName"] as? String {
            self.zhRegistrantName = value
        }
        if let value = dict["ZhRegistrantOrganization"] as? String {
            self.zhRegistrantOrganization = value
        }
    }
}

public class SaveSingleTaskForCreatingOrderActivateResponseBody : Tea.TeaModel {
    public var requestId: String?

    public var taskNo: String?

    public override init() {
        super.init()
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
        if self.taskNo != nil {
            map["TaskNo"] = self.taskNo!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["TaskNo"] as? String {
            self.taskNo = value
        }
    }
}

public class SaveSingleTaskForCreatingOrderActivateResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: SaveSingleTaskForCreatingOrderActivateResponseBody?

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
            var model = SaveSingleTaskForCreatingOrderActivateResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class SaveSingleTaskForCreatingOrderRedeemRequest : Tea.TeaModel {
    public var couponNo: String?

    public var currentExpirationDate: Int64?

    public var domainName: String?

    public var lang: String?

    public var promotionNo: String?

    public var useCoupon: Bool?

    public var usePromotion: Bool?

    public var userClientIp: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.couponNo != nil {
            map["CouponNo"] = self.couponNo!
        }
        if self.currentExpirationDate != nil {
            map["CurrentExpirationDate"] = self.currentExpirationDate!
        }
        if self.domainName != nil {
            map["DomainName"] = self.domainName!
        }
        if self.lang != nil {
            map["Lang"] = self.lang!
        }
        if self.promotionNo != nil {
            map["PromotionNo"] = self.promotionNo!
        }
        if self.useCoupon != nil {
            map["UseCoupon"] = self.useCoupon!
        }
        if self.usePromotion != nil {
            map["UsePromotion"] = self.usePromotion!
        }
        if self.userClientIp != nil {
            map["UserClientIp"] = self.userClientIp!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["CouponNo"] as? String {
            self.couponNo = value
        }
        if let value = dict["CurrentExpirationDate"] as? Int64 {
            self.currentExpirationDate = value
        }
        if let value = dict["DomainName"] as? String {
            self.domainName = value
        }
        if let value = dict["Lang"] as? String {
            self.lang = value
        }
        if let value = dict["PromotionNo"] as? String {
            self.promotionNo = value
        }
        if let value = dict["UseCoupon"] as? Bool {
            self.useCoupon = value
        }
        if let value = dict["UsePromotion"] as? Bool {
            self.usePromotion = value
        }
        if let value = dict["UserClientIp"] as? String {
            self.userClientIp = value
        }
    }
}

public class SaveSingleTaskForCreatingOrderRedeemResponseBody : Tea.TeaModel {
    public var requestId: String?

    public var taskNo: String?

    public override init() {
        super.init()
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
        if self.taskNo != nil {
            map["TaskNo"] = self.taskNo!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["TaskNo"] as? String {
            self.taskNo = value
        }
    }
}

public class SaveSingleTaskForCreatingOrderRedeemResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: SaveSingleTaskForCreatingOrderRedeemResponseBody?

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
            var model = SaveSingleTaskForCreatingOrderRedeemResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class SaveSingleTaskForCreatingOrderRenewRequest : Tea.TeaModel {
    public var couponNo: String?

    public var currentExpirationDate: Int64?

    public var domainName: String?

    public var lang: String?

    public var promotionNo: String?

    public var subscriptionDuration: Int32?

    public var useCoupon: Bool?

    public var usePromotion: Bool?

    public var userClientIp: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.couponNo != nil {
            map["CouponNo"] = self.couponNo!
        }
        if self.currentExpirationDate != nil {
            map["CurrentExpirationDate"] = self.currentExpirationDate!
        }
        if self.domainName != nil {
            map["DomainName"] = self.domainName!
        }
        if self.lang != nil {
            map["Lang"] = self.lang!
        }
        if self.promotionNo != nil {
            map["PromotionNo"] = self.promotionNo!
        }
        if self.subscriptionDuration != nil {
            map["SubscriptionDuration"] = self.subscriptionDuration!
        }
        if self.useCoupon != nil {
            map["UseCoupon"] = self.useCoupon!
        }
        if self.usePromotion != nil {
            map["UsePromotion"] = self.usePromotion!
        }
        if self.userClientIp != nil {
            map["UserClientIp"] = self.userClientIp!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["CouponNo"] as? String {
            self.couponNo = value
        }
        if let value = dict["CurrentExpirationDate"] as? Int64 {
            self.currentExpirationDate = value
        }
        if let value = dict["DomainName"] as? String {
            self.domainName = value
        }
        if let value = dict["Lang"] as? String {
            self.lang = value
        }
        if let value = dict["PromotionNo"] as? String {
            self.promotionNo = value
        }
        if let value = dict["SubscriptionDuration"] as? Int32 {
            self.subscriptionDuration = value
        }
        if let value = dict["UseCoupon"] as? Bool {
            self.useCoupon = value
        }
        if let value = dict["UsePromotion"] as? Bool {
            self.usePromotion = value
        }
        if let value = dict["UserClientIp"] as? String {
            self.userClientIp = value
        }
    }
}

public class SaveSingleTaskForCreatingOrderRenewResponseBody : Tea.TeaModel {
    public var requestId: String?

    public var taskNo: String?

    public override init() {
        super.init()
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
        if self.taskNo != nil {
            map["TaskNo"] = self.taskNo!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["TaskNo"] as? String {
            self.taskNo = value
        }
    }
}

public class SaveSingleTaskForCreatingOrderRenewResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: SaveSingleTaskForCreatingOrderRenewResponseBody?

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
            var model = SaveSingleTaskForCreatingOrderRenewResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class SaveSingleTaskForCreatingOrderTransferRequest : Tea.TeaModel {
    public var authorizationCode: String?

    public var couponNo: String?

    public var domainName: String?

    public var lang: String?

    public var permitPremiumTransfer: Bool?

    public var promotionNo: String?

    public var registrantProfileId: Int64?

    public var useCoupon: Bool?

    public var usePromotion: Bool?

    public var userClientIp: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.authorizationCode != nil {
            map["AuthorizationCode"] = self.authorizationCode!
        }
        if self.couponNo != nil {
            map["CouponNo"] = self.couponNo!
        }
        if self.domainName != nil {
            map["DomainName"] = self.domainName!
        }
        if self.lang != nil {
            map["Lang"] = self.lang!
        }
        if self.permitPremiumTransfer != nil {
            map["PermitPremiumTransfer"] = self.permitPremiumTransfer!
        }
        if self.promotionNo != nil {
            map["PromotionNo"] = self.promotionNo!
        }
        if self.registrantProfileId != nil {
            map["RegistrantProfileId"] = self.registrantProfileId!
        }
        if self.useCoupon != nil {
            map["UseCoupon"] = self.useCoupon!
        }
        if self.usePromotion != nil {
            map["UsePromotion"] = self.usePromotion!
        }
        if self.userClientIp != nil {
            map["UserClientIp"] = self.userClientIp!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AuthorizationCode"] as? String {
            self.authorizationCode = value
        }
        if let value = dict["CouponNo"] as? String {
            self.couponNo = value
        }
        if let value = dict["DomainName"] as? String {
            self.domainName = value
        }
        if let value = dict["Lang"] as? String {
            self.lang = value
        }
        if let value = dict["PermitPremiumTransfer"] as? Bool {
            self.permitPremiumTransfer = value
        }
        if let value = dict["PromotionNo"] as? String {
            self.promotionNo = value
        }
        if let value = dict["RegistrantProfileId"] as? Int64 {
            self.registrantProfileId = value
        }
        if let value = dict["UseCoupon"] as? Bool {
            self.useCoupon = value
        }
        if let value = dict["UsePromotion"] as? Bool {
            self.usePromotion = value
        }
        if let value = dict["UserClientIp"] as? String {
            self.userClientIp = value
        }
    }
}

public class SaveSingleTaskForCreatingOrderTransferResponseBody : Tea.TeaModel {
    public var requestId: String?

    public var taskNo: String?

    public override init() {
        super.init()
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
        if self.taskNo != nil {
            map["TaskNo"] = self.taskNo!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["TaskNo"] as? String {
            self.taskNo = value
        }
    }
}

public class SaveSingleTaskForCreatingOrderTransferResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: SaveSingleTaskForCreatingOrderTransferResponseBody?

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
            var model = SaveSingleTaskForCreatingOrderTransferResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class SaveSingleTaskForDeletingDSRecordRequest : Tea.TeaModel {
    public var domainName: String?

    public var keyTag: Int32?

    public var lang: String?

    public var userClientIp: String?

    public override init() {
        super.init()
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
        if self.keyTag != nil {
            map["KeyTag"] = self.keyTag!
        }
        if self.lang != nil {
            map["Lang"] = self.lang!
        }
        if self.userClientIp != nil {
            map["UserClientIp"] = self.userClientIp!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["DomainName"] as? String {
            self.domainName = value
        }
        if let value = dict["KeyTag"] as? Int32 {
            self.keyTag = value
        }
        if let value = dict["Lang"] as? String {
            self.lang = value
        }
        if let value = dict["UserClientIp"] as? String {
            self.userClientIp = value
        }
    }
}

public class SaveSingleTaskForDeletingDSRecordResponseBody : Tea.TeaModel {
    public var requestId: String?

    public var taskNo: String?

    public override init() {
        super.init()
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
        if self.taskNo != nil {
            map["TaskNo"] = self.taskNo!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["TaskNo"] as? String {
            self.taskNo = value
        }
    }
}

public class SaveSingleTaskForDeletingDSRecordResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: SaveSingleTaskForDeletingDSRecordResponseBody?

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
            var model = SaveSingleTaskForDeletingDSRecordResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class SaveSingleTaskForDeletingDnsHostRequest : Tea.TeaModel {
    public var dnsName: String?

    public var instanceId: String?

    public var lang: String?

    public var userClientIp: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.dnsName != nil {
            map["DnsName"] = self.dnsName!
        }
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.lang != nil {
            map["Lang"] = self.lang!
        }
        if self.userClientIp != nil {
            map["UserClientIp"] = self.userClientIp!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["DnsName"] as? String {
            self.dnsName = value
        }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["Lang"] as? String {
            self.lang = value
        }
        if let value = dict["UserClientIp"] as? String {
            self.userClientIp = value
        }
    }
}

public class SaveSingleTaskForDeletingDnsHostResponseBody : Tea.TeaModel {
    public var requestId: String?

    public var taskNo: String?

    public override init() {
        super.init()
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
        if self.taskNo != nil {
            map["TaskNo"] = self.taskNo!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["TaskNo"] as? String {
            self.taskNo = value
        }
    }
}

public class SaveSingleTaskForDeletingDnsHostResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: SaveSingleTaskForDeletingDnsHostResponseBody?

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
            var model = SaveSingleTaskForDeletingDnsHostResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class SaveSingleTaskForDisassociatingEnsRequest : Tea.TeaModel {
    public var domainName: String?

    public var lang: String?

    public var userClientIp: String?

    public override init() {
        super.init()
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
        if self.lang != nil {
            map["Lang"] = self.lang!
        }
        if self.userClientIp != nil {
            map["UserClientIp"] = self.userClientIp!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["DomainName"] as? String {
            self.domainName = value
        }
        if let value = dict["Lang"] as? String {
            self.lang = value
        }
        if let value = dict["UserClientIp"] as? String {
            self.userClientIp = value
        }
    }
}

public class SaveSingleTaskForDisassociatingEnsResponseBody : Tea.TeaModel {
    public var requestId: String?

    public var taskNo: String?

    public override init() {
        super.init()
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
        if self.taskNo != nil {
            map["TaskNo"] = self.taskNo!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["TaskNo"] as? String {
            self.taskNo = value
        }
    }
}

public class SaveSingleTaskForDisassociatingEnsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: SaveSingleTaskForDisassociatingEnsResponseBody?

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
            var model = SaveSingleTaskForDisassociatingEnsResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class SaveSingleTaskForDomainNameProxyServiceRequest : Tea.TeaModel {
    public var domainName: String?

    public var lang: String?

    public var status: Bool?

    public var userClientIp: String?

    public override init() {
        super.init()
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
        if self.lang != nil {
            map["Lang"] = self.lang!
        }
        if self.status != nil {
            map["Status"] = self.status!
        }
        if self.userClientIp != nil {
            map["UserClientIp"] = self.userClientIp!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["DomainName"] as? String {
            self.domainName = value
        }
        if let value = dict["Lang"] as? String {
            self.lang = value
        }
        if let value = dict["Status"] as? Bool {
            self.status = value
        }
        if let value = dict["UserClientIp"] as? String {
            self.userClientIp = value
        }
    }
}

public class SaveSingleTaskForDomainNameProxyServiceResponseBody : Tea.TeaModel {
    public var requestId: String?

    public var taskNo: String?

    public override init() {
        super.init()
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
        if self.taskNo != nil {
            map["TaskNo"] = self.taskNo!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["TaskNo"] as? String {
            self.taskNo = value
        }
    }
}

public class SaveSingleTaskForDomainNameProxyServiceResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: SaveSingleTaskForDomainNameProxyServiceResponseBody?

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
            var model = SaveSingleTaskForDomainNameProxyServiceResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class SaveSingleTaskForGenerateDomainCertificateRequest : Tea.TeaModel {
    public var domainName: String?

    public var lang: String?

    public var userClientIp: String?

    public override init() {
        super.init()
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
        if self.lang != nil {
            map["Lang"] = self.lang!
        }
        if self.userClientIp != nil {
            map["UserClientIp"] = self.userClientIp!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["DomainName"] as? String {
            self.domainName = value
        }
        if let value = dict["Lang"] as? String {
            self.lang = value
        }
        if let value = dict["UserClientIp"] as? String {
            self.userClientIp = value
        }
    }
}

public class SaveSingleTaskForGenerateDomainCertificateResponseBody : Tea.TeaModel {
    public var requestId: String?

    public var taskNo: String?

    public override init() {
        super.init()
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
        if self.taskNo != nil {
            map["TaskNo"] = self.taskNo!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["TaskNo"] as? String {
            self.taskNo = value
        }
    }
}

public class SaveSingleTaskForGenerateDomainCertificateResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: SaveSingleTaskForGenerateDomainCertificateResponseBody?

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
            var model = SaveSingleTaskForGenerateDomainCertificateResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class SaveSingleTaskForModifyingDSRecordRequest : Tea.TeaModel {
    public var algorithm: Int32?

    public var digest: String?

    public var digestType: Int32?

    public var domainName: String?

    public var keyTag: Int32?

    public var lang: String?

    public var userClientIp: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.algorithm != nil {
            map["Algorithm"] = self.algorithm!
        }
        if self.digest != nil {
            map["Digest"] = self.digest!
        }
        if self.digestType != nil {
            map["DigestType"] = self.digestType!
        }
        if self.domainName != nil {
            map["DomainName"] = self.domainName!
        }
        if self.keyTag != nil {
            map["KeyTag"] = self.keyTag!
        }
        if self.lang != nil {
            map["Lang"] = self.lang!
        }
        if self.userClientIp != nil {
            map["UserClientIp"] = self.userClientIp!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Algorithm"] as? Int32 {
            self.algorithm = value
        }
        if let value = dict["Digest"] as? String {
            self.digest = value
        }
        if let value = dict["DigestType"] as? Int32 {
            self.digestType = value
        }
        if let value = dict["DomainName"] as? String {
            self.domainName = value
        }
        if let value = dict["KeyTag"] as? Int32 {
            self.keyTag = value
        }
        if let value = dict["Lang"] as? String {
            self.lang = value
        }
        if let value = dict["UserClientIp"] as? String {
            self.userClientIp = value
        }
    }
}

public class SaveSingleTaskForModifyingDSRecordResponseBody : Tea.TeaModel {
    public var requestId: String?

    public var taskNo: String?

    public override init() {
        super.init()
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
        if self.taskNo != nil {
            map["TaskNo"] = self.taskNo!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["TaskNo"] as? String {
            self.taskNo = value
        }
    }
}

public class SaveSingleTaskForModifyingDSRecordResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: SaveSingleTaskForModifyingDSRecordResponseBody?

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
            var model = SaveSingleTaskForModifyingDSRecordResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class SaveSingleTaskForModifyingDnsHostRequest : Tea.TeaModel {
    public var dnsName: String?

    public var instanceId: String?

    public var ip: [String]?

    public var lang: String?

    public var userClientIp: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.dnsName != nil {
            map["DnsName"] = self.dnsName!
        }
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.ip != nil {
            map["Ip"] = self.ip!
        }
        if self.lang != nil {
            map["Lang"] = self.lang!
        }
        if self.userClientIp != nil {
            map["UserClientIp"] = self.userClientIp!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["DnsName"] as? String {
            self.dnsName = value
        }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["Ip"] as? [String] {
            self.ip = value
        }
        if let value = dict["Lang"] as? String {
            self.lang = value
        }
        if let value = dict["UserClientIp"] as? String {
            self.userClientIp = value
        }
    }
}

public class SaveSingleTaskForModifyingDnsHostResponseBody : Tea.TeaModel {
    public var requestId: String?

    public var taskNo: String?

    public override init() {
        super.init()
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
        if self.taskNo != nil {
            map["TaskNo"] = self.taskNo!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["TaskNo"] as? String {
            self.taskNo = value
        }
    }
}

public class SaveSingleTaskForModifyingDnsHostResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: SaveSingleTaskForModifyingDnsHostResponseBody?

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
            var model = SaveSingleTaskForModifyingDnsHostResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class SaveSingleTaskForQueryingTransferAuthorizationCodeRequest : Tea.TeaModel {
    public var domainName: String?

    public var lang: String?

    public var userClientIp: String?

    public override init() {
        super.init()
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
        if self.lang != nil {
            map["Lang"] = self.lang!
        }
        if self.userClientIp != nil {
            map["UserClientIp"] = self.userClientIp!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["DomainName"] as? String {
            self.domainName = value
        }
        if let value = dict["Lang"] as? String {
            self.lang = value
        }
        if let value = dict["UserClientIp"] as? String {
            self.userClientIp = value
        }
    }
}

public class SaveSingleTaskForQueryingTransferAuthorizationCodeResponseBody : Tea.TeaModel {
    public var requestId: String?

    public var taskNo: String?

    public override init() {
        super.init()
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
        if self.taskNo != nil {
            map["TaskNo"] = self.taskNo!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["TaskNo"] as? String {
            self.taskNo = value
        }
    }
}

public class SaveSingleTaskForQueryingTransferAuthorizationCodeResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: SaveSingleTaskForQueryingTransferAuthorizationCodeResponseBody?

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
            var model = SaveSingleTaskForQueryingTransferAuthorizationCodeResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class SaveSingleTaskForReserveDropListDomainRequest : Tea.TeaModel {
    public var contactTemplateId: String?

    public var dns1: String?

    public var dns2: String?

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
        if self.contactTemplateId != nil {
            map["ContactTemplateId"] = self.contactTemplateId!
        }
        if self.dns1 != nil {
            map["Dns1"] = self.dns1!
        }
        if self.dns2 != nil {
            map["Dns2"] = self.dns2!
        }
        if self.domainName != nil {
            map["DomainName"] = self.domainName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ContactTemplateId"] as? String {
            self.contactTemplateId = value
        }
        if let value = dict["Dns1"] as? String {
            self.dns1 = value
        }
        if let value = dict["Dns2"] as? String {
            self.dns2 = value
        }
        if let value = dict["DomainName"] as? String {
            self.domainName = value
        }
    }
}

public class SaveSingleTaskForReserveDropListDomainResponseBody : Tea.TeaModel {
    public var requestId: String?

    public var taskNo: String?

    public override init() {
        super.init()
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
        if self.taskNo != nil {
            map["TaskNo"] = self.taskNo!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["TaskNo"] as? String {
            self.taskNo = value
        }
    }
}

public class SaveSingleTaskForReserveDropListDomainResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: SaveSingleTaskForReserveDropListDomainResponseBody?

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
            var model = SaveSingleTaskForReserveDropListDomainResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class SaveSingleTaskForSaveArtExtensionRequest : Tea.TeaModel {
    public var dateOrPeriod: String?

    public var dimensions: String?

    public var domainName: String?

    public var features: String?

    public var inscriptionsAndMarkings: String?

    public var lang: String?

    public var maker: String?

    public var materialsAndTechniques: String?

    public var objectType: String?

    public var reference: String?

    public var subject: String?

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
        if self.dateOrPeriod != nil {
            map["DateOrPeriod"] = self.dateOrPeriod!
        }
        if self.dimensions != nil {
            map["Dimensions"] = self.dimensions!
        }
        if self.domainName != nil {
            map["DomainName"] = self.domainName!
        }
        if self.features != nil {
            map["Features"] = self.features!
        }
        if self.inscriptionsAndMarkings != nil {
            map["InscriptionsAndMarkings"] = self.inscriptionsAndMarkings!
        }
        if self.lang != nil {
            map["Lang"] = self.lang!
        }
        if self.maker != nil {
            map["Maker"] = self.maker!
        }
        if self.materialsAndTechniques != nil {
            map["MaterialsAndTechniques"] = self.materialsAndTechniques!
        }
        if self.objectType != nil {
            map["ObjectType"] = self.objectType!
        }
        if self.reference != nil {
            map["Reference"] = self.reference!
        }
        if self.subject != nil {
            map["Subject"] = self.subject!
        }
        if self.title != nil {
            map["Title"] = self.title!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["DateOrPeriod"] as? String {
            self.dateOrPeriod = value
        }
        if let value = dict["Dimensions"] as? String {
            self.dimensions = value
        }
        if let value = dict["DomainName"] as? String {
            self.domainName = value
        }
        if let value = dict["Features"] as? String {
            self.features = value
        }
        if let value = dict["InscriptionsAndMarkings"] as? String {
            self.inscriptionsAndMarkings = value
        }
        if let value = dict["Lang"] as? String {
            self.lang = value
        }
        if let value = dict["Maker"] as? String {
            self.maker = value
        }
        if let value = dict["MaterialsAndTechniques"] as? String {
            self.materialsAndTechniques = value
        }
        if let value = dict["ObjectType"] as? String {
            self.objectType = value
        }
        if let value = dict["Reference"] as? String {
            self.reference = value
        }
        if let value = dict["Subject"] as? String {
            self.subject = value
        }
        if let value = dict["Title"] as? String {
            self.title = value
        }
    }
}

public class SaveSingleTaskForSaveArtExtensionResponseBody : Tea.TeaModel {
    public var requestId: String?

    public var taskNo: String?

    public override init() {
        super.init()
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
        if self.taskNo != nil {
            map["TaskNo"] = self.taskNo!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["TaskNo"] as? String {
            self.taskNo = value
        }
    }
}

public class SaveSingleTaskForSaveArtExtensionResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: SaveSingleTaskForSaveArtExtensionResponseBody?

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
            var model = SaveSingleTaskForSaveArtExtensionResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class SaveSingleTaskForSynchronizingDSRecordRequest : Tea.TeaModel {
    public var domainName: String?

    public var lang: String?

    public var userClientIp: String?

    public override init() {
        super.init()
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
        if self.lang != nil {
            map["Lang"] = self.lang!
        }
        if self.userClientIp != nil {
            map["UserClientIp"] = self.userClientIp!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["DomainName"] as? String {
            self.domainName = value
        }
        if let value = dict["Lang"] as? String {
            self.lang = value
        }
        if let value = dict["UserClientIp"] as? String {
            self.userClientIp = value
        }
    }
}

public class SaveSingleTaskForSynchronizingDSRecordResponseBody : Tea.TeaModel {
    public var requestId: String?

    public var taskNo: String?

    public override init() {
        super.init()
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
        if self.taskNo != nil {
            map["TaskNo"] = self.taskNo!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["TaskNo"] as? String {
            self.taskNo = value
        }
    }
}

public class SaveSingleTaskForSynchronizingDSRecordResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: SaveSingleTaskForSynchronizingDSRecordResponseBody?

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
            var model = SaveSingleTaskForSynchronizingDSRecordResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class SaveSingleTaskForSynchronizingDnsHostRequest : Tea.TeaModel {
    public var instanceId: String?

    public var lang: String?

    public var userClientIp: String?

    public override init() {
        super.init()
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
        if self.lang != nil {
            map["Lang"] = self.lang!
        }
        if self.userClientIp != nil {
            map["UserClientIp"] = self.userClientIp!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["Lang"] as? String {
            self.lang = value
        }
        if let value = dict["UserClientIp"] as? String {
            self.userClientIp = value
        }
    }
}

public class SaveSingleTaskForSynchronizingDnsHostResponseBody : Tea.TeaModel {
    public var requestId: String?

    public var taskNo: String?

    public override init() {
        super.init()
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
        if self.taskNo != nil {
            map["TaskNo"] = self.taskNo!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["TaskNo"] as? String {
            self.taskNo = value
        }
    }
}

public class SaveSingleTaskForSynchronizingDnsHostResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: SaveSingleTaskForSynchronizingDnsHostResponseBody?

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
            var model = SaveSingleTaskForSynchronizingDnsHostResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class SaveSingleTaskForTransferOutByAuthorizationCodeRequest : Tea.TeaModel {
    public var authorizationCode: String?

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
        if self.authorizationCode != nil {
            map["AuthorizationCode"] = self.authorizationCode!
        }
        if self.domainName != nil {
            map["DomainName"] = self.domainName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AuthorizationCode"] as? String {
            self.authorizationCode = value
        }
        if let value = dict["DomainName"] as? String {
            self.domainName = value
        }
    }
}

public class SaveSingleTaskForTransferOutByAuthorizationCodeResponseBody : Tea.TeaModel {
    public var requestId: String?

    public var taskNo: String?

    public override init() {
        super.init()
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
        if self.taskNo != nil {
            map["TaskNo"] = self.taskNo!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["TaskNo"] as? String {
            self.taskNo = value
        }
    }
}

public class SaveSingleTaskForTransferOutByAuthorizationCodeResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: SaveSingleTaskForTransferOutByAuthorizationCodeResponseBody?

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
            var model = SaveSingleTaskForTransferOutByAuthorizationCodeResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class SaveSingleTaskForTransferProhibitionLockRequest : Tea.TeaModel {
    public var domainName: String?

    public var lang: String?

    public var status: Bool?

    public var userClientIp: String?

    public override init() {
        super.init()
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
        if self.lang != nil {
            map["Lang"] = self.lang!
        }
        if self.status != nil {
            map["Status"] = self.status!
        }
        if self.userClientIp != nil {
            map["UserClientIp"] = self.userClientIp!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["DomainName"] as? String {
            self.domainName = value
        }
        if let value = dict["Lang"] as? String {
            self.lang = value
        }
        if let value = dict["Status"] as? Bool {
            self.status = value
        }
        if let value = dict["UserClientIp"] as? String {
            self.userClientIp = value
        }
    }
}

public class SaveSingleTaskForTransferProhibitionLockResponseBody : Tea.TeaModel {
    public var requestId: String?

    public var taskNo: String?

    public override init() {
        super.init()
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
        if self.taskNo != nil {
            map["TaskNo"] = self.taskNo!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["TaskNo"] as? String {
            self.taskNo = value
        }
    }
}

public class SaveSingleTaskForTransferProhibitionLockResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: SaveSingleTaskForTransferProhibitionLockResponseBody?

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
            var model = SaveSingleTaskForTransferProhibitionLockResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class SaveSingleTaskForUpdateProhibitionLockRequest : Tea.TeaModel {
    public var domainName: String?

    public var lang: String?

    public var status: Bool?

    public var userClientIp: String?

    public override init() {
        super.init()
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
        if self.lang != nil {
            map["Lang"] = self.lang!
        }
        if self.status != nil {
            map["Status"] = self.status!
        }
        if self.userClientIp != nil {
            map["UserClientIp"] = self.userClientIp!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["DomainName"] as? String {
            self.domainName = value
        }
        if let value = dict["Lang"] as? String {
            self.lang = value
        }
        if let value = dict["Status"] as? Bool {
            self.status = value
        }
        if let value = dict["UserClientIp"] as? String {
            self.userClientIp = value
        }
    }
}

public class SaveSingleTaskForUpdateProhibitionLockResponseBody : Tea.TeaModel {
    public var requestId: String?

    public var taskNo: String?

    public override init() {
        super.init()
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
        if self.taskNo != nil {
            map["TaskNo"] = self.taskNo!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["TaskNo"] as? String {
            self.taskNo = value
        }
    }
}

public class SaveSingleTaskForUpdateProhibitionLockResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: SaveSingleTaskForUpdateProhibitionLockResponseBody?

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
            var model = SaveSingleTaskForUpdateProhibitionLockResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class SaveSingleTaskForUpdatingContactInfoRequest : Tea.TeaModel {
    public var addTransferLock: Bool?

    public var contactType: String?

    public var domainName: String?

    public var instanceId: String?

    public var lang: String?

    public var registrantProfileId: Int64?

    public var userClientIp: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.addTransferLock != nil {
            map["AddTransferLock"] = self.addTransferLock!
        }
        if self.contactType != nil {
            map["ContactType"] = self.contactType!
        }
        if self.domainName != nil {
            map["DomainName"] = self.domainName!
        }
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.lang != nil {
            map["Lang"] = self.lang!
        }
        if self.registrantProfileId != nil {
            map["RegistrantProfileId"] = self.registrantProfileId!
        }
        if self.userClientIp != nil {
            map["UserClientIp"] = self.userClientIp!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AddTransferLock"] as? Bool {
            self.addTransferLock = value
        }
        if let value = dict["ContactType"] as? String {
            self.contactType = value
        }
        if let value = dict["DomainName"] as? String {
            self.domainName = value
        }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["Lang"] as? String {
            self.lang = value
        }
        if let value = dict["RegistrantProfileId"] as? Int64 {
            self.registrantProfileId = value
        }
        if let value = dict["UserClientIp"] as? String {
            self.userClientIp = value
        }
    }
}

public class SaveSingleTaskForUpdatingContactInfoResponseBody : Tea.TeaModel {
    public var requestId: String?

    public var taskNo: String?

    public override init() {
        super.init()
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
        if self.taskNo != nil {
            map["TaskNo"] = self.taskNo!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["TaskNo"] as? String {
            self.taskNo = value
        }
    }
}

public class SaveSingleTaskForUpdatingContactInfoResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: SaveSingleTaskForUpdatingContactInfoResponseBody?

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
            var model = SaveSingleTaskForUpdatingContactInfoResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class SaveTaskForSubmittingDomainDeleteRequest : Tea.TeaModel {
    public var instanceId: String?

    public var lang: String?

    public var userClientIp: String?

    public override init() {
        super.init()
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
        if self.lang != nil {
            map["Lang"] = self.lang!
        }
        if self.userClientIp != nil {
            map["UserClientIp"] = self.userClientIp!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["Lang"] as? String {
            self.lang = value
        }
        if let value = dict["UserClientIp"] as? String {
            self.userClientIp = value
        }
    }
}

public class SaveTaskForSubmittingDomainDeleteResponseBody : Tea.TeaModel {
    public var requestId: String?

    public var taskNo: String?

    public override init() {
        super.init()
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
        if self.taskNo != nil {
            map["TaskNo"] = self.taskNo!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["TaskNo"] as? String {
            self.taskNo = value
        }
    }
}

public class SaveTaskForSubmittingDomainDeleteResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: SaveTaskForSubmittingDomainDeleteResponseBody?

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
            var model = SaveTaskForSubmittingDomainDeleteResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class SaveTaskForSubmittingDomainRealNameVerificationByIdentityCredentialRequest : Tea.TeaModel {
    public var domainName: [String]?

    public var identityCredential: String?

    public var identityCredentialNo: String?

    public var identityCredentialType: String?

    public var lang: String?

    public var userClientIp: String?

    public override init() {
        super.init()
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
        if self.identityCredential != nil {
            map["IdentityCredential"] = self.identityCredential!
        }
        if self.identityCredentialNo != nil {
            map["IdentityCredentialNo"] = self.identityCredentialNo!
        }
        if self.identityCredentialType != nil {
            map["IdentityCredentialType"] = self.identityCredentialType!
        }
        if self.lang != nil {
            map["Lang"] = self.lang!
        }
        if self.userClientIp != nil {
            map["UserClientIp"] = self.userClientIp!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["DomainName"] as? [String] {
            self.domainName = value
        }
        if let value = dict["IdentityCredential"] as? String {
            self.identityCredential = value
        }
        if let value = dict["IdentityCredentialNo"] as? String {
            self.identityCredentialNo = value
        }
        if let value = dict["IdentityCredentialType"] as? String {
            self.identityCredentialType = value
        }
        if let value = dict["Lang"] as? String {
            self.lang = value
        }
        if let value = dict["UserClientIp"] as? String {
            self.userClientIp = value
        }
    }
}

public class SaveTaskForSubmittingDomainRealNameVerificationByIdentityCredentialResponseBody : Tea.TeaModel {
    public var requestId: String?

    public var taskNo: String?

    public override init() {
        super.init()
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
        if self.taskNo != nil {
            map["TaskNo"] = self.taskNo!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["TaskNo"] as? String {
            self.taskNo = value
        }
    }
}

public class SaveTaskForSubmittingDomainRealNameVerificationByIdentityCredentialResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: SaveTaskForSubmittingDomainRealNameVerificationByIdentityCredentialResponseBody?

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
            var model = SaveTaskForSubmittingDomainRealNameVerificationByIdentityCredentialResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class SaveTaskForSubmittingDomainRealNameVerificationByRegistrantProfileIDRequest : Tea.TeaModel {
    public var domainName: String?

    public var instanceId: String?

    public var lang: String?

    public var registrantProfileId: Int64?

    public var userClientIp: String?

    public override init() {
        super.init()
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
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.lang != nil {
            map["Lang"] = self.lang!
        }
        if self.registrantProfileId != nil {
            map["RegistrantProfileId"] = self.registrantProfileId!
        }
        if self.userClientIp != nil {
            map["UserClientIp"] = self.userClientIp!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["DomainName"] as? String {
            self.domainName = value
        }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["Lang"] as? String {
            self.lang = value
        }
        if let value = dict["RegistrantProfileId"] as? Int64 {
            self.registrantProfileId = value
        }
        if let value = dict["UserClientIp"] as? String {
            self.userClientIp = value
        }
    }
}

public class SaveTaskForSubmittingDomainRealNameVerificationByRegistrantProfileIDResponseBody : Tea.TeaModel {
    public var requestId: String?

    public var taskNo: String?

    public override init() {
        super.init()
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
        if self.taskNo != nil {
            map["TaskNo"] = self.taskNo!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["TaskNo"] as? String {
            self.taskNo = value
        }
    }
}

public class SaveTaskForSubmittingDomainRealNameVerificationByRegistrantProfileIDResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: SaveTaskForSubmittingDomainRealNameVerificationByRegistrantProfileIDResponseBody?

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
            var model = SaveTaskForSubmittingDomainRealNameVerificationByRegistrantProfileIDResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class SaveTaskForUpdatingRegistrantInfoByIdentityCredentialRequest : Tea.TeaModel {
    public var address: String?

    public var city: String?

    public var country: String?

    public var domainName: [String]?

    public var email: String?

    public var identityCredential: String?

    public var identityCredentialNo: String?

    public var identityCredentialType: String?

    public var lang: String?

    public var postalCode: String?

    public var province: String?

    public var registrantName: String?

    public var registrantOrganization: String?

    public var registrantType: String?

    public var telArea: String?

    public var telExt: String?

    public var telephone: String?

    public var transferOutProhibited: Bool?

    public var userClientIp: String?

    public var zhAddress: String?

    public var zhCity: String?

    public var zhProvince: String?

    public var zhRegistrantName: String?

    public var zhRegistrantOrganization: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.address != nil {
            map["Address"] = self.address!
        }
        if self.city != nil {
            map["City"] = self.city!
        }
        if self.country != nil {
            map["Country"] = self.country!
        }
        if self.domainName != nil {
            map["DomainName"] = self.domainName!
        }
        if self.email != nil {
            map["Email"] = self.email!
        }
        if self.identityCredential != nil {
            map["IdentityCredential"] = self.identityCredential!
        }
        if self.identityCredentialNo != nil {
            map["IdentityCredentialNo"] = self.identityCredentialNo!
        }
        if self.identityCredentialType != nil {
            map["IdentityCredentialType"] = self.identityCredentialType!
        }
        if self.lang != nil {
            map["Lang"] = self.lang!
        }
        if self.postalCode != nil {
            map["PostalCode"] = self.postalCode!
        }
        if self.province != nil {
            map["Province"] = self.province!
        }
        if self.registrantName != nil {
            map["RegistrantName"] = self.registrantName!
        }
        if self.registrantOrganization != nil {
            map["RegistrantOrganization"] = self.registrantOrganization!
        }
        if self.registrantType != nil {
            map["RegistrantType"] = self.registrantType!
        }
        if self.telArea != nil {
            map["TelArea"] = self.telArea!
        }
        if self.telExt != nil {
            map["TelExt"] = self.telExt!
        }
        if self.telephone != nil {
            map["Telephone"] = self.telephone!
        }
        if self.transferOutProhibited != nil {
            map["TransferOutProhibited"] = self.transferOutProhibited!
        }
        if self.userClientIp != nil {
            map["UserClientIp"] = self.userClientIp!
        }
        if self.zhAddress != nil {
            map["ZhAddress"] = self.zhAddress!
        }
        if self.zhCity != nil {
            map["ZhCity"] = self.zhCity!
        }
        if self.zhProvince != nil {
            map["ZhProvince"] = self.zhProvince!
        }
        if self.zhRegistrantName != nil {
            map["ZhRegistrantName"] = self.zhRegistrantName!
        }
        if self.zhRegistrantOrganization != nil {
            map["ZhRegistrantOrganization"] = self.zhRegistrantOrganization!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Address"] as? String {
            self.address = value
        }
        if let value = dict["City"] as? String {
            self.city = value
        }
        if let value = dict["Country"] as? String {
            self.country = value
        }
        if let value = dict["DomainName"] as? [String] {
            self.domainName = value
        }
        if let value = dict["Email"] as? String {
            self.email = value
        }
        if let value = dict["IdentityCredential"] as? String {
            self.identityCredential = value
        }
        if let value = dict["IdentityCredentialNo"] as? String {
            self.identityCredentialNo = value
        }
        if let value = dict["IdentityCredentialType"] as? String {
            self.identityCredentialType = value
        }
        if let value = dict["Lang"] as? String {
            self.lang = value
        }
        if let value = dict["PostalCode"] as? String {
            self.postalCode = value
        }
        if let value = dict["Province"] as? String {
            self.province = value
        }
        if let value = dict["RegistrantName"] as? String {
            self.registrantName = value
        }
        if let value = dict["RegistrantOrganization"] as? String {
            self.registrantOrganization = value
        }
        if let value = dict["RegistrantType"] as? String {
            self.registrantType = value
        }
        if let value = dict["TelArea"] as? String {
            self.telArea = value
        }
        if let value = dict["TelExt"] as? String {
            self.telExt = value
        }
        if let value = dict["Telephone"] as? String {
            self.telephone = value
        }
        if let value = dict["TransferOutProhibited"] as? Bool {
            self.transferOutProhibited = value
        }
        if let value = dict["UserClientIp"] as? String {
            self.userClientIp = value
        }
        if let value = dict["ZhAddress"] as? String {
            self.zhAddress = value
        }
        if let value = dict["ZhCity"] as? String {
            self.zhCity = value
        }
        if let value = dict["ZhProvince"] as? String {
            self.zhProvince = value
        }
        if let value = dict["ZhRegistrantName"] as? String {
            self.zhRegistrantName = value
        }
        if let value = dict["ZhRegistrantOrganization"] as? String {
            self.zhRegistrantOrganization = value
        }
    }
}

public class SaveTaskForUpdatingRegistrantInfoByIdentityCredentialResponseBody : Tea.TeaModel {
    public var requestId: String?

    public var taskNo: String?

    public override init() {
        super.init()
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
        if self.taskNo != nil {
            map["TaskNo"] = self.taskNo!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["TaskNo"] as? String {
            self.taskNo = value
        }
    }
}

public class SaveTaskForUpdatingRegistrantInfoByIdentityCredentialResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: SaveTaskForUpdatingRegistrantInfoByIdentityCredentialResponseBody?

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
            var model = SaveTaskForUpdatingRegistrantInfoByIdentityCredentialResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class SaveTaskForUpdatingRegistrantInfoByRegistrantProfileIDRequest : Tea.TeaModel {
    public var domainName: [String]?

    public var lang: String?

    public var registrantProfileId: Int64?

    public var transferOutProhibited: Bool?

    public var userClientIp: String?

    public override init() {
        super.init()
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
        if self.lang != nil {
            map["Lang"] = self.lang!
        }
        if self.registrantProfileId != nil {
            map["RegistrantProfileId"] = self.registrantProfileId!
        }
        if self.transferOutProhibited != nil {
            map["TransferOutProhibited"] = self.transferOutProhibited!
        }
        if self.userClientIp != nil {
            map["UserClientIp"] = self.userClientIp!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["DomainName"] as? [String] {
            self.domainName = value
        }
        if let value = dict["Lang"] as? String {
            self.lang = value
        }
        if let value = dict["RegistrantProfileId"] as? Int64 {
            self.registrantProfileId = value
        }
        if let value = dict["TransferOutProhibited"] as? Bool {
            self.transferOutProhibited = value
        }
        if let value = dict["UserClientIp"] as? String {
            self.userClientIp = value
        }
    }
}

public class SaveTaskForUpdatingRegistrantInfoByRegistrantProfileIDResponseBody : Tea.TeaModel {
    public var requestId: String?

    public var taskNo: String?

    public override init() {
        super.init()
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
        if self.taskNo != nil {
            map["TaskNo"] = self.taskNo!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["TaskNo"] as? String {
            self.taskNo = value
        }
    }
}

public class SaveTaskForUpdatingRegistrantInfoByRegistrantProfileIDResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: SaveTaskForUpdatingRegistrantInfoByRegistrantProfileIDResponseBody?

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
            var model = SaveTaskForUpdatingRegistrantInfoByRegistrantProfileIDResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ScrollDomainListRequest : Tea.TeaModel {
    public var domainGroupId: Int64?

    public var domainStatus: Int32?

    public var endExpirationDate: Int64?

    public var endLength: Int32?

    public var endRegistrationDate: Int64?

    public var excluded: String?

    public var excludedPrefix: Bool?

    public var excludedSuffix: Bool?

    public var form: Int32?

    public var keyWord: String?

    public var keyWordPrefix: Bool?

    public var keyWordSuffix: Bool?

    public var lang: String?

    public var pageSize: Int32?

    public var productDomainType: String?

    public var resourceGroupId: String?

    public var scrollId: String?

    public var startExpirationDate: Int64?

    public var startLength: Int32?

    public var startRegistrationDate: Int64?

    public var suffixs: String?

    public var tradeType: Int32?

    public var userClientIp: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.domainGroupId != nil {
            map["DomainGroupId"] = self.domainGroupId!
        }
        if self.domainStatus != nil {
            map["DomainStatus"] = self.domainStatus!
        }
        if self.endExpirationDate != nil {
            map["EndExpirationDate"] = self.endExpirationDate!
        }
        if self.endLength != nil {
            map["EndLength"] = self.endLength!
        }
        if self.endRegistrationDate != nil {
            map["EndRegistrationDate"] = self.endRegistrationDate!
        }
        if self.excluded != nil {
            map["Excluded"] = self.excluded!
        }
        if self.excludedPrefix != nil {
            map["ExcludedPrefix"] = self.excludedPrefix!
        }
        if self.excludedSuffix != nil {
            map["ExcludedSuffix"] = self.excludedSuffix!
        }
        if self.form != nil {
            map["Form"] = self.form!
        }
        if self.keyWord != nil {
            map["KeyWord"] = self.keyWord!
        }
        if self.keyWordPrefix != nil {
            map["KeyWordPrefix"] = self.keyWordPrefix!
        }
        if self.keyWordSuffix != nil {
            map["KeyWordSuffix"] = self.keyWordSuffix!
        }
        if self.lang != nil {
            map["Lang"] = self.lang!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.productDomainType != nil {
            map["ProductDomainType"] = self.productDomainType!
        }
        if self.resourceGroupId != nil {
            map["ResourceGroupId"] = self.resourceGroupId!
        }
        if self.scrollId != nil {
            map["ScrollId"] = self.scrollId!
        }
        if self.startExpirationDate != nil {
            map["StartExpirationDate"] = self.startExpirationDate!
        }
        if self.startLength != nil {
            map["StartLength"] = self.startLength!
        }
        if self.startRegistrationDate != nil {
            map["StartRegistrationDate"] = self.startRegistrationDate!
        }
        if self.suffixs != nil {
            map["Suffixs"] = self.suffixs!
        }
        if self.tradeType != nil {
            map["TradeType"] = self.tradeType!
        }
        if self.userClientIp != nil {
            map["UserClientIp"] = self.userClientIp!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["DomainGroupId"] as? Int64 {
            self.domainGroupId = value
        }
        if let value = dict["DomainStatus"] as? Int32 {
            self.domainStatus = value
        }
        if let value = dict["EndExpirationDate"] as? Int64 {
            self.endExpirationDate = value
        }
        if let value = dict["EndLength"] as? Int32 {
            self.endLength = value
        }
        if let value = dict["EndRegistrationDate"] as? Int64 {
            self.endRegistrationDate = value
        }
        if let value = dict["Excluded"] as? String {
            self.excluded = value
        }
        if let value = dict["ExcludedPrefix"] as? Bool {
            self.excludedPrefix = value
        }
        if let value = dict["ExcludedSuffix"] as? Bool {
            self.excludedSuffix = value
        }
        if let value = dict["Form"] as? Int32 {
            self.form = value
        }
        if let value = dict["KeyWord"] as? String {
            self.keyWord = value
        }
        if let value = dict["KeyWordPrefix"] as? Bool {
            self.keyWordPrefix = value
        }
        if let value = dict["KeyWordSuffix"] as? Bool {
            self.keyWordSuffix = value
        }
        if let value = dict["Lang"] as? String {
            self.lang = value
        }
        if let value = dict["PageSize"] as? Int32 {
            self.pageSize = value
        }
        if let value = dict["ProductDomainType"] as? String {
            self.productDomainType = value
        }
        if let value = dict["ResourceGroupId"] as? String {
            self.resourceGroupId = value
        }
        if let value = dict["ScrollId"] as? String {
            self.scrollId = value
        }
        if let value = dict["StartExpirationDate"] as? Int64 {
            self.startExpirationDate = value
        }
        if let value = dict["StartLength"] as? Int32 {
            self.startLength = value
        }
        if let value = dict["StartRegistrationDate"] as? Int64 {
            self.startRegistrationDate = value
        }
        if let value = dict["Suffixs"] as? String {
            self.suffixs = value
        }
        if let value = dict["TradeType"] as? Int32 {
            self.tradeType = value
        }
        if let value = dict["UserClientIp"] as? String {
            self.userClientIp = value
        }
    }
}

public class ScrollDomainListResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class Domain : Tea.TeaModel {
            public class DnsList : Tea.TeaModel {
                public var dns: [String]?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.dns != nil {
                        map["Dns"] = self.dns!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["Dns"] as? [String] {
                        self.dns = value
                    }
                }
            }
            public class Tag : Tea.TeaModel {
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
                public var tag: [ScrollDomainListResponseBody.Data.Domain.Tag.Tag]?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.tag != nil {
                        var tmp : [Any] = []
                        for k in self.tag! {
                            tmp.append(k.toMap())
                        }
                        map["Tag"] = tmp
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["Tag"] as? [Any?] {
                        var tmp : [ScrollDomainListResponseBody.Data.Domain.Tag.Tag] = []
                        for v in value {
                            if v != nil {
                                var model = ScrollDomainListResponseBody.Data.Domain.Tag.Tag()
                                if v != nil {
                                    model.fromMap(v as? [String: Any?])
                                }
                                tmp.append(model)
                            }
                        }
                        self.tag = tmp
                    }
                }
            }
            public var dnsList: ScrollDomainListResponseBody.Data.Domain.DnsList?

            public var domainAuditStatus: String?

            public var domainGroupId: String?

            public var domainGroupName: String?

            public var domainName: String?

            public var domainStatus: String?

            public var domainType: String?

            public var email: String?

            public var expirationCurrDateDiff: Int32?

            public var expirationDate: String?

            public var expirationDateLong: Int64?

            public var expirationDateStatus: String?

            public var instanceId: String?

            public var premium: Bool?

            public var productId: String?

            public var registrantOrganization: String?

            public var registrantType: String?

            public var registrationDate: String?

            public var registrationDateLong: Int64?

            public var remark: String?

            public var resourceGroupId: String?

            public var tag: ScrollDomainListResponseBody.Data.Domain.Tag?

            public var zhRegistrantOrganization: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
                try self.dnsList?.validate()
                try self.tag?.validate()
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.dnsList != nil {
                    map["DnsList"] = self.dnsList?.toMap()
                }
                if self.domainAuditStatus != nil {
                    map["DomainAuditStatus"] = self.domainAuditStatus!
                }
                if self.domainGroupId != nil {
                    map["DomainGroupId"] = self.domainGroupId!
                }
                if self.domainGroupName != nil {
                    map["DomainGroupName"] = self.domainGroupName!
                }
                if self.domainName != nil {
                    map["DomainName"] = self.domainName!
                }
                if self.domainStatus != nil {
                    map["DomainStatus"] = self.domainStatus!
                }
                if self.domainType != nil {
                    map["DomainType"] = self.domainType!
                }
                if self.email != nil {
                    map["Email"] = self.email!
                }
                if self.expirationCurrDateDiff != nil {
                    map["ExpirationCurrDateDiff"] = self.expirationCurrDateDiff!
                }
                if self.expirationDate != nil {
                    map["ExpirationDate"] = self.expirationDate!
                }
                if self.expirationDateLong != nil {
                    map["ExpirationDateLong"] = self.expirationDateLong!
                }
                if self.expirationDateStatus != nil {
                    map["ExpirationDateStatus"] = self.expirationDateStatus!
                }
                if self.instanceId != nil {
                    map["InstanceId"] = self.instanceId!
                }
                if self.premium != nil {
                    map["Premium"] = self.premium!
                }
                if self.productId != nil {
                    map["ProductId"] = self.productId!
                }
                if self.registrantOrganization != nil {
                    map["RegistrantOrganization"] = self.registrantOrganization!
                }
                if self.registrantType != nil {
                    map["RegistrantType"] = self.registrantType!
                }
                if self.registrationDate != nil {
                    map["RegistrationDate"] = self.registrationDate!
                }
                if self.registrationDateLong != nil {
                    map["RegistrationDateLong"] = self.registrationDateLong!
                }
                if self.remark != nil {
                    map["Remark"] = self.remark!
                }
                if self.resourceGroupId != nil {
                    map["ResourceGroupId"] = self.resourceGroupId!
                }
                if self.tag != nil {
                    map["Tag"] = self.tag?.toMap()
                }
                if self.zhRegistrantOrganization != nil {
                    map["ZhRegistrantOrganization"] = self.zhRegistrantOrganization!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["DnsList"] as? [String: Any?] {
                    var model = ScrollDomainListResponseBody.Data.Domain.DnsList()
                    model.fromMap(value)
                    self.dnsList = model
                }
                if let value = dict["DomainAuditStatus"] as? String {
                    self.domainAuditStatus = value
                }
                if let value = dict["DomainGroupId"] as? String {
                    self.domainGroupId = value
                }
                if let value = dict["DomainGroupName"] as? String {
                    self.domainGroupName = value
                }
                if let value = dict["DomainName"] as? String {
                    self.domainName = value
                }
                if let value = dict["DomainStatus"] as? String {
                    self.domainStatus = value
                }
                if let value = dict["DomainType"] as? String {
                    self.domainType = value
                }
                if let value = dict["Email"] as? String {
                    self.email = value
                }
                if let value = dict["ExpirationCurrDateDiff"] as? Int32 {
                    self.expirationCurrDateDiff = value
                }
                if let value = dict["ExpirationDate"] as? String {
                    self.expirationDate = value
                }
                if let value = dict["ExpirationDateLong"] as? Int64 {
                    self.expirationDateLong = value
                }
                if let value = dict["ExpirationDateStatus"] as? String {
                    self.expirationDateStatus = value
                }
                if let value = dict["InstanceId"] as? String {
                    self.instanceId = value
                }
                if let value = dict["Premium"] as? Bool {
                    self.premium = value
                }
                if let value = dict["ProductId"] as? String {
                    self.productId = value
                }
                if let value = dict["RegistrantOrganization"] as? String {
                    self.registrantOrganization = value
                }
                if let value = dict["RegistrantType"] as? String {
                    self.registrantType = value
                }
                if let value = dict["RegistrationDate"] as? String {
                    self.registrationDate = value
                }
                if let value = dict["RegistrationDateLong"] as? Int64 {
                    self.registrationDateLong = value
                }
                if let value = dict["Remark"] as? String {
                    self.remark = value
                }
                if let value = dict["ResourceGroupId"] as? String {
                    self.resourceGroupId = value
                }
                if let value = dict["Tag"] as? [String: Any?] {
                    var model = ScrollDomainListResponseBody.Data.Domain.Tag()
                    model.fromMap(value)
                    self.tag = model
                }
                if let value = dict["ZhRegistrantOrganization"] as? String {
                    self.zhRegistrantOrganization = value
                }
            }
        }
        public var domain: [ScrollDomainListResponseBody.Data.Domain]?

        public override init() {
            super.init()
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Domain"] as? [Any?] {
                var tmp : [ScrollDomainListResponseBody.Data.Domain] = []
                for v in value {
                    if v != nil {
                        var model = ScrollDomainListResponseBody.Data.Domain()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.domain = tmp
            }
        }
    }
    public var data: ScrollDomainListResponseBody.Data?

    public var pageSize: Int32?

    public var requestId: String?

    public var scrollId: String?

    public var totalItemNum: Int32?

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
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.scrollId != nil {
            map["ScrollId"] = self.scrollId!
        }
        if self.totalItemNum != nil {
            map["TotalItemNum"] = self.totalItemNum!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Data"] as? [String: Any?] {
            var model = ScrollDomainListResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["PageSize"] as? Int32 {
            self.pageSize = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["ScrollId"] as? String {
            self.scrollId = value
        }
        if let value = dict["TotalItemNum"] as? Int32 {
            self.totalItemNum = value
        }
    }
}

public class ScrollDomainListResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ScrollDomainListResponseBody?

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
            var model = ScrollDomainListResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class SetDefaultRegistrantProfileRequest : Tea.TeaModel {
    public var registrantProfileId: Int64?

    public var userClientIp: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.registrantProfileId != nil {
            map["RegistrantProfileId"] = self.registrantProfileId!
        }
        if self.userClientIp != nil {
            map["UserClientIp"] = self.userClientIp!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RegistrantProfileId"] as? Int64 {
            self.registrantProfileId = value
        }
        if let value = dict["UserClientIp"] as? String {
            self.userClientIp = value
        }
    }
}

public class SetDefaultRegistrantProfileResponseBody : Tea.TeaModel {
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

public class SetDefaultRegistrantProfileResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: SetDefaultRegistrantProfileResponseBody?

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
            var model = SetDefaultRegistrantProfileResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class SetupDomainAutoRenewRequest : Tea.TeaModel {
    public var instanceId: String?

    public var operation: String?

    public override init() {
        super.init()
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
        if self.operation != nil {
            map["Operation"] = self.operation!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["Operation"] as? String {
            self.operation = value
        }
    }
}

public class SetupDomainAutoRenewResponseBody : Tea.TeaModel {
    public var requestId: String?

    public var result: Bool?

    public override init() {
        super.init()
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Result"] as? Bool {
            self.result = value
        }
    }
}

public class SetupDomainAutoRenewResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: SetupDomainAutoRenewResponseBody?

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
            var model = SetupDomainAutoRenewResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class SubmitDomainSpecialBizCredentialsRequest : Tea.TeaModel {
    public var bizId: Int64?

    public var credentials: String?

    public var extend: String?

    public var userClientIp: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.bizId != nil {
            map["BizId"] = self.bizId!
        }
        if self.credentials != nil {
            map["Credentials"] = self.credentials!
        }
        if self.extend != nil {
            map["Extend"] = self.extend!
        }
        if self.userClientIp != nil {
            map["UserClientIp"] = self.userClientIp!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["BizId"] as? Int64 {
            self.bizId = value
        }
        if let value = dict["Credentials"] as? String {
            self.credentials = value
        }
        if let value = dict["Extend"] as? String {
            self.extend = value
        }
        if let value = dict["UserClientIp"] as? String {
            self.userClientIp = value
        }
    }
}

public class SubmitDomainSpecialBizCredentialsResponseBody : Tea.TeaModel {
    public var allowRetry: Bool?

    public var appName: String?

    public var dynamicCode: String?

    public var dynamicMessage: String?

    public var errorArgs: [Any]?

    public var errorCode: String?

    public var errorMsg: String?

    public var httpStatusCode: Int32?

    public var module: Any?

    public var requestId: String?

    public var success: Bool?

    public var synchro: Bool?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.allowRetry != nil {
            map["AllowRetry"] = self.allowRetry!
        }
        if self.appName != nil {
            map["AppName"] = self.appName!
        }
        if self.dynamicCode != nil {
            map["DynamicCode"] = self.dynamicCode!
        }
        if self.dynamicMessage != nil {
            map["DynamicMessage"] = self.dynamicMessage!
        }
        if self.errorArgs != nil {
            map["ErrorArgs"] = self.errorArgs!
        }
        if self.errorCode != nil {
            map["ErrorCode"] = self.errorCode!
        }
        if self.errorMsg != nil {
            map["ErrorMsg"] = self.errorMsg!
        }
        if self.httpStatusCode != nil {
            map["HttpStatusCode"] = self.httpStatusCode!
        }
        if self.module != nil {
            map["Module"] = self.module!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.success != nil {
            map["Success"] = self.success!
        }
        if self.synchro != nil {
            map["Synchro"] = self.synchro!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AllowRetry"] as? Bool {
            self.allowRetry = value
        }
        if let value = dict["AppName"] as? String {
            self.appName = value
        }
        if let value = dict["DynamicCode"] as? String {
            self.dynamicCode = value
        }
        if let value = dict["DynamicMessage"] as? String {
            self.dynamicMessage = value
        }
        if let value = dict["ErrorArgs"] as? [Any] {
            self.errorArgs = value
        }
        if let value = dict["ErrorCode"] as? String {
            self.errorCode = value
        }
        if let value = dict["ErrorMsg"] as? String {
            self.errorMsg = value
        }
        if let value = dict["HttpStatusCode"] as? Int32 {
            self.httpStatusCode = value
        }
        if let value = dict["Module"] as? Any {
            self.module = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
        if let value = dict["Synchro"] as? Bool {
            self.synchro = value
        }
    }
}

public class SubmitDomainSpecialBizCredentialsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: SubmitDomainSpecialBizCredentialsResponseBody?

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
            var model = SubmitDomainSpecialBizCredentialsResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class SubmitEmailVerificationRequest : Tea.TeaModel {
    public var email: String?

    public var lang: String?

    public var sendIfExist: Bool?

    public var userClientIp: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.email != nil {
            map["Email"] = self.email!
        }
        if self.lang != nil {
            map["Lang"] = self.lang!
        }
        if self.sendIfExist != nil {
            map["SendIfExist"] = self.sendIfExist!
        }
        if self.userClientIp != nil {
            map["UserClientIp"] = self.userClientIp!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Email"] as? String {
            self.email = value
        }
        if let value = dict["Lang"] as? String {
            self.lang = value
        }
        if let value = dict["SendIfExist"] as? Bool {
            self.sendIfExist = value
        }
        if let value = dict["UserClientIp"] as? String {
            self.userClientIp = value
        }
    }
}

public class SubmitEmailVerificationResponseBody : Tea.TeaModel {
    public class ExistList : Tea.TeaModel {
        public var code: String?

        public var email: String?

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
            if self.email != nil {
                map["Email"] = self.email!
            }
            if self.message != nil {
                map["Message"] = self.message!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Code"] as? String {
                self.code = value
            }
            if let value = dict["Email"] as? String {
                self.email = value
            }
            if let value = dict["Message"] as? String {
                self.message = value
            }
        }
    }
    public class FailList : Tea.TeaModel {
        public var code: String?

        public var email: String?

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
            if self.email != nil {
                map["Email"] = self.email!
            }
            if self.message != nil {
                map["Message"] = self.message!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Code"] as? String {
                self.code = value
            }
            if let value = dict["Email"] as? String {
                self.email = value
            }
            if let value = dict["Message"] as? String {
                self.message = value
            }
        }
    }
    public class SuccessList : Tea.TeaModel {
        public var code: String?

        public var email: String?

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
            if self.email != nil {
                map["Email"] = self.email!
            }
            if self.message != nil {
                map["Message"] = self.message!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Code"] as? String {
                self.code = value
            }
            if let value = dict["Email"] as? String {
                self.email = value
            }
            if let value = dict["Message"] as? String {
                self.message = value
            }
        }
    }
    public var existList: [SubmitEmailVerificationResponseBody.ExistList]?

    public var failList: [SubmitEmailVerificationResponseBody.FailList]?

    public var requestId: String?

    public var successList: [SubmitEmailVerificationResponseBody.SuccessList]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.existList != nil {
            var tmp : [Any] = []
            for k in self.existList! {
                tmp.append(k.toMap())
            }
            map["ExistList"] = tmp
        }
        if self.failList != nil {
            var tmp : [Any] = []
            for k in self.failList! {
                tmp.append(k.toMap())
            }
            map["FailList"] = tmp
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.successList != nil {
            var tmp : [Any] = []
            for k in self.successList! {
                tmp.append(k.toMap())
            }
            map["SuccessList"] = tmp
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ExistList"] as? [Any?] {
            var tmp : [SubmitEmailVerificationResponseBody.ExistList] = []
            for v in value {
                if v != nil {
                    var model = SubmitEmailVerificationResponseBody.ExistList()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.existList = tmp
        }
        if let value = dict["FailList"] as? [Any?] {
            var tmp : [SubmitEmailVerificationResponseBody.FailList] = []
            for v in value {
                if v != nil {
                    var model = SubmitEmailVerificationResponseBody.FailList()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.failList = tmp
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["SuccessList"] as? [Any?] {
            var tmp : [SubmitEmailVerificationResponseBody.SuccessList] = []
            for v in value {
                if v != nil {
                    var model = SubmitEmailVerificationResponseBody.SuccessList()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.successList = tmp
        }
    }
}

public class SubmitEmailVerificationResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: SubmitEmailVerificationResponseBody?

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
            var model = SubmitEmailVerificationResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class SubmitOperationAuditInfoRequest : Tea.TeaModel {
    public var auditInfo: String?

    public var auditType: Int32?

    public var domainName: String?

    public var id: Int64?

    public var lang: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.auditInfo != nil {
            map["AuditInfo"] = self.auditInfo!
        }
        if self.auditType != nil {
            map["AuditType"] = self.auditType!
        }
        if self.domainName != nil {
            map["DomainName"] = self.domainName!
        }
        if self.id != nil {
            map["Id"] = self.id!
        }
        if self.lang != nil {
            map["Lang"] = self.lang!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AuditInfo"] as? String {
            self.auditInfo = value
        }
        if let value = dict["AuditType"] as? Int32 {
            self.auditType = value
        }
        if let value = dict["DomainName"] as? String {
            self.domainName = value
        }
        if let value = dict["Id"] as? Int64 {
            self.id = value
        }
        if let value = dict["Lang"] as? String {
            self.lang = value
        }
    }
}

public class SubmitOperationAuditInfoResponseBody : Tea.TeaModel {
    public var id: Int64?

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
        if self.id != nil {
            map["Id"] = self.id!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Id"] as? Int64 {
            self.id = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class SubmitOperationAuditInfoResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: SubmitOperationAuditInfoResponseBody?

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
            var model = SubmitOperationAuditInfoResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class SubmitOperationCredentialsRequest : Tea.TeaModel {
    public var auditRecordId: Int64?

    public var auditType: Int32?

    public var credentials: String?

    public var lang: String?

    public var regType: Int32?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.auditRecordId != nil {
            map["AuditRecordId"] = self.auditRecordId!
        }
        if self.auditType != nil {
            map["AuditType"] = self.auditType!
        }
        if self.credentials != nil {
            map["Credentials"] = self.credentials!
        }
        if self.lang != nil {
            map["Lang"] = self.lang!
        }
        if self.regType != nil {
            map["RegType"] = self.regType!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AuditRecordId"] as? Int64 {
            self.auditRecordId = value
        }
        if let value = dict["AuditType"] as? Int32 {
            self.auditType = value
        }
        if let value = dict["Credentials"] as? String {
            self.credentials = value
        }
        if let value = dict["Lang"] as? String {
            self.lang = value
        }
        if let value = dict["RegType"] as? Int32 {
            self.regType = value
        }
    }
}

public class SubmitOperationCredentialsResponseBody : Tea.TeaModel {
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

public class SubmitOperationCredentialsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: SubmitOperationCredentialsResponseBody?

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
            var model = SubmitOperationCredentialsResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class TransferInCheckMailTokenRequest : Tea.TeaModel {
    public var lang: String?

    public var token: String?

    public var userClientIp: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.lang != nil {
            map["Lang"] = self.lang!
        }
        if self.token != nil {
            map["Token"] = self.token!
        }
        if self.userClientIp != nil {
            map["UserClientIp"] = self.userClientIp!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Lang"] as? String {
            self.lang = value
        }
        if let value = dict["Token"] as? String {
            self.token = value
        }
        if let value = dict["UserClientIp"] as? String {
            self.userClientIp = value
        }
    }
}

public class TransferInCheckMailTokenResponseBody : Tea.TeaModel {
    public class FailList : Tea.TeaModel {
        public var failDomain: [String]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.failDomain != nil {
                map["FailDomain"] = self.failDomain!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["FailDomain"] as? [String] {
                self.failDomain = value
            }
        }
    }
    public class SuccessList : Tea.TeaModel {
        public var successDomain: [String]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.successDomain != nil {
                map["SuccessDomain"] = self.successDomain!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["SuccessDomain"] as? [String] {
                self.successDomain = value
            }
        }
    }
    public var failList: TransferInCheckMailTokenResponseBody.FailList?

    public var requestId: String?

    public var successList: TransferInCheckMailTokenResponseBody.SuccessList?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.failList?.validate()
        try self.successList?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.failList != nil {
            map["FailList"] = self.failList?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.successList != nil {
            map["SuccessList"] = self.successList?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["FailList"] as? [String: Any?] {
            var model = TransferInCheckMailTokenResponseBody.FailList()
            model.fromMap(value)
            self.failList = model
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["SuccessList"] as? [String: Any?] {
            var model = TransferInCheckMailTokenResponseBody.SuccessList()
            model.fromMap(value)
            self.successList = model
        }
    }
}

public class TransferInCheckMailTokenResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: TransferInCheckMailTokenResponseBody?

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
            var model = TransferInCheckMailTokenResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class TransferInReenterTransferAuthorizationCodeRequest : Tea.TeaModel {
    public var domainName: String?

    public var lang: String?

    public var transferAuthorizationCode: String?

    public var userClientIp: String?

    public override init() {
        super.init()
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
        if self.lang != nil {
            map["Lang"] = self.lang!
        }
        if self.transferAuthorizationCode != nil {
            map["TransferAuthorizationCode"] = self.transferAuthorizationCode!
        }
        if self.userClientIp != nil {
            map["UserClientIp"] = self.userClientIp!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["DomainName"] as? String {
            self.domainName = value
        }
        if let value = dict["Lang"] as? String {
            self.lang = value
        }
        if let value = dict["TransferAuthorizationCode"] as? String {
            self.transferAuthorizationCode = value
        }
        if let value = dict["UserClientIp"] as? String {
            self.userClientIp = value
        }
    }
}

public class TransferInReenterTransferAuthorizationCodeResponseBody : Tea.TeaModel {
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

public class TransferInReenterTransferAuthorizationCodeResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: TransferInReenterTransferAuthorizationCodeResponseBody?

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
            var model = TransferInReenterTransferAuthorizationCodeResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class TransferInRefetchWhoisEmailRequest : Tea.TeaModel {
    public var domainName: String?

    public var lang: String?

    public var userClientIp: String?

    public override init() {
        super.init()
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
        if self.lang != nil {
            map["Lang"] = self.lang!
        }
        if self.userClientIp != nil {
            map["UserClientIp"] = self.userClientIp!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["DomainName"] as? String {
            self.domainName = value
        }
        if let value = dict["Lang"] as? String {
            self.lang = value
        }
        if let value = dict["UserClientIp"] as? String {
            self.userClientIp = value
        }
    }
}

public class TransferInRefetchWhoisEmailResponseBody : Tea.TeaModel {
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

public class TransferInRefetchWhoisEmailResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: TransferInRefetchWhoisEmailResponseBody?

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
            var model = TransferInRefetchWhoisEmailResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class TransferInResendMailTokenRequest : Tea.TeaModel {
    public var domainName: String?

    public var lang: String?

    public var userClientIp: String?

    public override init() {
        super.init()
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
        if self.lang != nil {
            map["Lang"] = self.lang!
        }
        if self.userClientIp != nil {
            map["UserClientIp"] = self.userClientIp!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["DomainName"] as? String {
            self.domainName = value
        }
        if let value = dict["Lang"] as? String {
            self.lang = value
        }
        if let value = dict["UserClientIp"] as? String {
            self.userClientIp = value
        }
    }
}

public class TransferInResendMailTokenResponseBody : Tea.TeaModel {
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

public class TransferInResendMailTokenResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: TransferInResendMailTokenResponseBody?

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
            var model = TransferInResendMailTokenResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class UpdateDomainToDomainGroupRequest : Tea.TeaModel {
    public var dataSource: Int32?

    public var domainGroupId: Int64?

    public var domainName: [String]?

    public var fileToUpload: String?

    public var lang: String?

    public var replace: Bool?

    public var userClientIp: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.dataSource != nil {
            map["DataSource"] = self.dataSource!
        }
        if self.domainGroupId != nil {
            map["DomainGroupId"] = self.domainGroupId!
        }
        if self.domainName != nil {
            map["DomainName"] = self.domainName!
        }
        if self.fileToUpload != nil {
            map["FileToUpload"] = self.fileToUpload!
        }
        if self.lang != nil {
            map["Lang"] = self.lang!
        }
        if self.replace != nil {
            map["Replace"] = self.replace!
        }
        if self.userClientIp != nil {
            map["UserClientIp"] = self.userClientIp!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["DataSource"] as? Int32 {
            self.dataSource = value
        }
        if let value = dict["DomainGroupId"] as? Int64 {
            self.domainGroupId = value
        }
        if let value = dict["DomainName"] as? [String] {
            self.domainName = value
        }
        if let value = dict["FileToUpload"] as? String {
            self.fileToUpload = value
        }
        if let value = dict["Lang"] as? String {
            self.lang = value
        }
        if let value = dict["Replace"] as? Bool {
            self.replace = value
        }
        if let value = dict["UserClientIp"] as? String {
            self.userClientIp = value
        }
    }
}

public class UpdateDomainToDomainGroupResponseBody : Tea.TeaModel {
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

public class UpdateDomainToDomainGroupResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpdateDomainToDomainGroupResponseBody?

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
            var model = UpdateDomainToDomainGroupResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class VerifyContactFieldRequest : Tea.TeaModel {
    public var address: String?

    public var city: String?

    public var country: String?

    public var domainName: String?

    public var email: String?

    public var lang: String?

    public var postalCode: String?

    public var province: String?

    public var registrantName: String?

    public var registrantOrganization: String?

    public var registrantType: String?

    public var telArea: String?

    public var telExt: String?

    public var telephone: String?

    public var userClientIp: String?

    public var zhAddress: String?

    public var zhCity: String?

    public var zhProvince: String?

    public var zhRegistrantName: String?

    public var zhRegistrantOrganization: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.address != nil {
            map["Address"] = self.address!
        }
        if self.city != nil {
            map["City"] = self.city!
        }
        if self.country != nil {
            map["Country"] = self.country!
        }
        if self.domainName != nil {
            map["DomainName"] = self.domainName!
        }
        if self.email != nil {
            map["Email"] = self.email!
        }
        if self.lang != nil {
            map["Lang"] = self.lang!
        }
        if self.postalCode != nil {
            map["PostalCode"] = self.postalCode!
        }
        if self.province != nil {
            map["Province"] = self.province!
        }
        if self.registrantName != nil {
            map["RegistrantName"] = self.registrantName!
        }
        if self.registrantOrganization != nil {
            map["RegistrantOrganization"] = self.registrantOrganization!
        }
        if self.registrantType != nil {
            map["RegistrantType"] = self.registrantType!
        }
        if self.telArea != nil {
            map["TelArea"] = self.telArea!
        }
        if self.telExt != nil {
            map["TelExt"] = self.telExt!
        }
        if self.telephone != nil {
            map["Telephone"] = self.telephone!
        }
        if self.userClientIp != nil {
            map["UserClientIp"] = self.userClientIp!
        }
        if self.zhAddress != nil {
            map["ZhAddress"] = self.zhAddress!
        }
        if self.zhCity != nil {
            map["ZhCity"] = self.zhCity!
        }
        if self.zhProvince != nil {
            map["ZhProvince"] = self.zhProvince!
        }
        if self.zhRegistrantName != nil {
            map["ZhRegistrantName"] = self.zhRegistrantName!
        }
        if self.zhRegistrantOrganization != nil {
            map["ZhRegistrantOrganization"] = self.zhRegistrantOrganization!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Address"] as? String {
            self.address = value
        }
        if let value = dict["City"] as? String {
            self.city = value
        }
        if let value = dict["Country"] as? String {
            self.country = value
        }
        if let value = dict["DomainName"] as? String {
            self.domainName = value
        }
        if let value = dict["Email"] as? String {
            self.email = value
        }
        if let value = dict["Lang"] as? String {
            self.lang = value
        }
        if let value = dict["PostalCode"] as? String {
            self.postalCode = value
        }
        if let value = dict["Province"] as? String {
            self.province = value
        }
        if let value = dict["RegistrantName"] as? String {
            self.registrantName = value
        }
        if let value = dict["RegistrantOrganization"] as? String {
            self.registrantOrganization = value
        }
        if let value = dict["RegistrantType"] as? String {
            self.registrantType = value
        }
        if let value = dict["TelArea"] as? String {
            self.telArea = value
        }
        if let value = dict["TelExt"] as? String {
            self.telExt = value
        }
        if let value = dict["Telephone"] as? String {
            self.telephone = value
        }
        if let value = dict["UserClientIp"] as? String {
            self.userClientIp = value
        }
        if let value = dict["ZhAddress"] as? String {
            self.zhAddress = value
        }
        if let value = dict["ZhCity"] as? String {
            self.zhCity = value
        }
        if let value = dict["ZhProvince"] as? String {
            self.zhProvince = value
        }
        if let value = dict["ZhRegistrantName"] as? String {
            self.zhRegistrantName = value
        }
        if let value = dict["ZhRegistrantOrganization"] as? String {
            self.zhRegistrantOrganization = value
        }
    }
}

public class VerifyContactFieldResponseBody : Tea.TeaModel {
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

public class VerifyContactFieldResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: VerifyContactFieldResponseBody?

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
            var model = VerifyContactFieldResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class VerifyEmailRequest : Tea.TeaModel {
    public var lang: String?

    public var token: String?

    public var userClientIp: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.lang != nil {
            map["Lang"] = self.lang!
        }
        if self.token != nil {
            map["Token"] = self.token!
        }
        if self.userClientIp != nil {
            map["UserClientIp"] = self.userClientIp!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Lang"] as? String {
            self.lang = value
        }
        if let value = dict["Token"] as? String {
            self.token = value
        }
        if let value = dict["UserClientIp"] as? String {
            self.userClientIp = value
        }
    }
}

public class VerifyEmailResponseBody : Tea.TeaModel {
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

public class VerifyEmailResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: VerifyEmailResponseBody?

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
            var model = VerifyEmailResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}
