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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Lang") && dict["Lang"] != nil {
            self.lang = dict["Lang"] as! String
        }
        if dict.keys.contains("TaskDetailNo") && dict["TaskDetailNo"] != nil {
            self.taskDetailNo = dict["TaskDetailNo"] as! [String]
        }
        if dict.keys.contains("UserClientIp") && dict["UserClientIp"] != nil {
            self.userClientIp = dict["UserClientIp"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Result") && dict["Result"] != nil {
            self.result = dict["Result"] as! Int32
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = AcknowledgeTaskResultResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Keyword") && dict["Keyword"] != nil {
            self.keyword = dict["Keyword"] as! String
        }
        if dict.keys.contains("Lang") && dict["Lang"] != nil {
            self.lang = dict["Lang"] as! String
        }
        if dict.keys.contains("UserClientIp") && dict["UserClientIp"] != nil {
            self.userClientIp = dict["UserClientIp"] as! String
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

                    public override func fromMap(_ dict: [String: Any]) -> Void {
                        if dict.keys.contains("Word") && dict["Word"] != nil {
                            self.word = dict["Word"] as! String
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

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("MatchedSensitiveWord") && dict["MatchedSensitiveWord"] != nil {
                        var tmp : [BatchFuzzyMatchDomainSensitiveWordResponseBody.SensitiveWordMatchResultList.SensitiveWordMatchResult.MatchedSentiveWords.MatchedSensitiveWord] = []
                        for v in dict["MatchedSensitiveWord"] as! [Any] {
                            var model = BatchFuzzyMatchDomainSensitiveWordResponseBody.SensitiveWordMatchResultList.SensitiveWordMatchResult.MatchedSentiveWords.MatchedSensitiveWord()
                            if v != nil {
                                model.fromMap(v as! [String: Any])
                            }
                            tmp.append(model)
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

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("Exist") && dict["Exist"] != nil {
                    self.exist = dict["Exist"] as! Bool
                }
                if dict.keys.contains("Keyword") && dict["Keyword"] != nil {
                    self.keyword = dict["Keyword"] as! String
                }
                if dict.keys.contains("MatchedSentiveWords") && dict["MatchedSentiveWords"] != nil {
                    var model = BatchFuzzyMatchDomainSensitiveWordResponseBody.SensitiveWordMatchResultList.SensitiveWordMatchResult.MatchedSentiveWords()
                    model.fromMap(dict["MatchedSentiveWords"] as! [String: Any])
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("SensitiveWordMatchResult") && dict["SensitiveWordMatchResult"] != nil {
                var tmp : [BatchFuzzyMatchDomainSensitiveWordResponseBody.SensitiveWordMatchResultList.SensitiveWordMatchResult] = []
                for v in dict["SensitiveWordMatchResult"] as! [Any] {
                    var model = BatchFuzzyMatchDomainSensitiveWordResponseBody.SensitiveWordMatchResultList.SensitiveWordMatchResult()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("SensitiveWordMatchResultList") && dict["SensitiveWordMatchResultList"] != nil {
            var model = BatchFuzzyMatchDomainSensitiveWordResponseBody.SensitiveWordMatchResultList()
            model.fromMap(dict["SensitiveWordMatchResultList"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = BatchFuzzyMatchDomainSensitiveWordResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ActionType") && dict["ActionType"] != nil {
            self.actionType = dict["ActionType"] as! String
        }
        if dict.keys.contains("InstanceId") && dict["InstanceId"] != nil {
            self.instanceId = dict["InstanceId"] as! String
        }
        if dict.keys.contains("Lang") && dict["Lang"] != nil {
            self.lang = dict["Lang"] as! String
        }
        if dict.keys.contains("UserClientIp") && dict["UserClientIp"] != nil {
            self.userClientIp = dict["UserClientIp"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = CancelDomainVerificationResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AuditRecordId") && dict["AuditRecordId"] != nil {
            self.auditRecordId = dict["AuditRecordId"] as! Int64
        }
        if dict.keys.contains("Lang") && dict["Lang"] != nil {
            self.lang = dict["Lang"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = CancelOperationAuditResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("InstanceId") && dict["InstanceId"] != nil {
            self.instanceId = dict["InstanceId"] as! String
        }
        if dict.keys.contains("Lang") && dict["Lang"] != nil {
            self.lang = dict["Lang"] as! String
        }
        if dict.keys.contains("QualificationType") && dict["QualificationType"] != nil {
            self.qualificationType = dict["QualificationType"] as! String
        }
        if dict.keys.contains("UserClientIp") && dict["UserClientIp"] != nil {
            self.userClientIp = dict["UserClientIp"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = CancelQualificationVerificationResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Lang") && dict["Lang"] != nil {
            self.lang = dict["Lang"] as! String
        }
        if dict.keys.contains("TaskNo") && dict["TaskNo"] != nil {
            self.taskNo = dict["TaskNo"] as! String
        }
        if dict.keys.contains("UserClientIp") && dict["UserClientIp"] != nil {
            self.userClientIp = dict["UserClientIp"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = CancelTaskResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Lang") && dict["Lang"] != nil {
            self.lang = dict["Lang"] as! String
        }
        if dict.keys.contains("NewResourceGroupId") && dict["NewResourceGroupId"] != nil {
            self.newResourceGroupId = dict["NewResourceGroupId"] as! String
        }
        if dict.keys.contains("ResourceId") && dict["ResourceId"] != nil {
            self.resourceId = dict["ResourceId"] as! String
        }
        if dict.keys.contains("ResourceType") && dict["ResourceType"] != nil {
            self.resourceType = dict["ResourceType"] as! String
        }
        if dict.keys.contains("UserClientIp") && dict["UserClientIp"] != nil {
            self.userClientIp = dict["UserClientIp"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Result") && dict["Result"] != nil {
            self.result = dict["Result"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = ChangeResourceGroupResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DomainName") && dict["DomainName"] != nil {
            self.domainName = dict["DomainName"] as! String
        }
        if dict.keys.contains("FeeCommand") && dict["FeeCommand"] != nil {
            self.feeCommand = dict["FeeCommand"] as! String
        }
        if dict.keys.contains("FeeCurrency") && dict["FeeCurrency"] != nil {
            self.feeCurrency = dict["FeeCurrency"] as! String
        }
        if dict.keys.contains("FeePeriod") && dict["FeePeriod"] != nil {
            self.feePeriod = dict["FeePeriod"] as! Int32
        }
        if dict.keys.contains("Lang") && dict["Lang"] != nil {
            self.lang = dict["Lang"] as! String
        }
    }
}

public class CheckDomainResponseBody : Tea.TeaModel {
    public var avail: String?

    public var domainName: String?

    public var dynamicCheck: Bool?

    public var premium: String?

    public var price: Int64?

    public var reason: String?

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
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Avail") && dict["Avail"] != nil {
            self.avail = dict["Avail"] as! String
        }
        if dict.keys.contains("DomainName") && dict["DomainName"] != nil {
            self.domainName = dict["DomainName"] as! String
        }
        if dict.keys.contains("DynamicCheck") && dict["DynamicCheck"] != nil {
            self.dynamicCheck = dict["DynamicCheck"] as! Bool
        }
        if dict.keys.contains("Premium") && dict["Premium"] != nil {
            self.premium = dict["Premium"] as! String
        }
        if dict.keys.contains("Price") && dict["Price"] != nil {
            self.price = dict["Price"] as! Int64
        }
        if dict.keys.contains("Reason") && dict["Reason"] != nil {
            self.reason = dict["Reason"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = CheckDomainResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DomainName") && dict["DomainName"] != nil {
            self.domainName = dict["DomainName"] as! String
        }
        if dict.keys.contains("Lang") && dict["Lang"] != nil {
            self.lang = dict["Lang"] as! String
        }
        if dict.keys.contains("UserClientIp") && dict["UserClientIp"] != nil {
            self.userClientIp = dict["UserClientIp"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ClaimKey") && dict["ClaimKey"] != nil {
            self.claimKey = dict["ClaimKey"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Result") && dict["Result"] != nil {
            self.result = dict["Result"] as! Int32
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = CheckDomainSunriseClaimResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("CheckAction") && dict["CheckAction"] != nil {
            self.checkAction = dict["CheckAction"] as! String
        }
        if dict.keys.contains("DomainName") && dict["DomainName"] != nil {
            self.domainName = dict["DomainName"] as! String
        }
        if dict.keys.contains("Lang") && dict["Lang"] != nil {
            self.lang = dict["Lang"] as! String
        }
        if dict.keys.contains("UserClientIp") && dict["UserClientIp"] != nil {
            self.userClientIp = dict["UserClientIp"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("MaxYear") && dict["MaxYear"] != nil {
            self.maxYear = dict["MaxYear"] as! Int32
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = CheckMaxYearOfServerLockResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DomainName") && dict["DomainName"] != nil {
            self.domainName = dict["DomainName"] as! String
        }
        if dict.keys.contains("FeePeriod") && dict["FeePeriod"] != nil {
            self.feePeriod = dict["FeePeriod"] as! Int32
        }
        if dict.keys.contains("Lang") && dict["Lang"] != nil {
            self.lang = dict["Lang"] as! String
        }
        if dict.keys.contains("UserClientIp") && dict["UserClientIp"] != nil {
            self.userClientIp = dict["UserClientIp"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Exists") && dict["Exists"] != nil {
            self.exists = dict["Exists"] as! Bool
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = CheckProcessingServerLockApplyResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DomainName") && dict["DomainName"] != nil {
            self.domainName = dict["DomainName"] as! String
        }
        if dict.keys.contains("Lang") && dict["Lang"] != nil {
            self.lang = dict["Lang"] as! String
        }
        if dict.keys.contains("TransferAuthorizationCode") && dict["TransferAuthorizationCode"] != nil {
            self.transferAuthorizationCode = dict["TransferAuthorizationCode"] as! String
        }
        if dict.keys.contains("UserClientIp") && dict["UserClientIp"] != nil {
            self.userClientIp = dict["UserClientIp"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("CanTransfer") && dict["CanTransfer"] != nil {
            self.canTransfer = dict["CanTransfer"] as! Bool
        }
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Message") && dict["Message"] != nil {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("ProductId") && dict["ProductId"] != nil {
            self.productId = dict["ProductId"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = CheckTransferInFeasibilityResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DomainName") && dict["DomainName"] != nil {
            self.domainName = dict["DomainName"] as! [String]
        }
        if dict.keys.contains("Email") && dict["Email"] != nil {
            self.email = dict["Email"] as! String
        }
        if dict.keys.contains("Lang") && dict["Lang"] != nil {
            self.lang = dict["Lang"] as! String
        }
        if dict.keys.contains("UserClientIp") && dict["UserClientIp"] != nil {
            self.userClientIp = dict["UserClientIp"] as! String
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("FailDomain") && dict["FailDomain"] != nil {
                self.failDomain = dict["FailDomain"] as! [String]
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("SuccessDomain") && dict["SuccessDomain"] != nil {
                self.successDomain = dict["SuccessDomain"] as! [String]
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("FailList") && dict["FailList"] != nil {
            var model = ConfirmTransferInEmailResponseBody.FailList()
            model.fromMap(dict["FailList"] as! [String: Any])
            self.failList = model
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("SuccessList") && dict["SuccessList"] != nil {
            var model = ConfirmTransferInEmailResponseBody.SuccessList()
            model.fromMap(dict["SuccessList"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = ConfirmTransferInEmailResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RegistrantProfileIds") && dict["RegistrantProfileIds"] != nil {
            self.registrantProfileIds = dict["RegistrantProfileIds"] as! String
        }
        if dict.keys.contains("UserClientIp") && dict["UserClientIp"] != nil {
            self.userClientIp = dict["UserClientIp"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = DeleteContactTemplatesResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DomainGroupId") && dict["DomainGroupId"] != nil {
            self.domainGroupId = dict["DomainGroupId"] as! Int64
        }
        if dict.keys.contains("Lang") && dict["Lang"] != nil {
            self.lang = dict["Lang"] as! String
        }
        if dict.keys.contains("UserClientIp") && dict["UserClientIp"] != nil {
            self.userClientIp = dict["UserClientIp"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = DeleteDomainGroupResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Email") && dict["Email"] != nil {
            self.email = dict["Email"] as! String
        }
        if dict.keys.contains("Lang") && dict["Lang"] != nil {
            self.lang = dict["Lang"] as! String
        }
        if dict.keys.contains("UserClientIp") && dict["UserClientIp"] != nil {
            self.userClientIp = dict["UserClientIp"] as! String
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Code") && dict["Code"] != nil {
                self.code = dict["Code"] as! String
            }
            if dict.keys.contains("Email") && dict["Email"] != nil {
                self.email = dict["Email"] as! String
            }
            if dict.keys.contains("Message") && dict["Message"] != nil {
                self.message = dict["Message"] as! String
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Code") && dict["Code"] != nil {
                self.code = dict["Code"] as! String
            }
            if dict.keys.contains("Email") && dict["Email"] != nil {
                self.email = dict["Email"] as! String
            }
            if dict.keys.contains("Message") && dict["Message"] != nil {
                self.message = dict["Message"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("FailList") && dict["FailList"] != nil {
            var tmp : [DeleteEmailVerificationResponseBody.FailList] = []
            for v in dict["FailList"] as! [Any] {
                var model = DeleteEmailVerificationResponseBody.FailList()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.failList = tmp
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("SuccessList") && dict["SuccessList"] != nil {
            var tmp : [DeleteEmailVerificationResponseBody.SuccessList] = []
            for v in dict["SuccessList"] as! [Any] {
                var model = DeleteEmailVerificationResponseBody.SuccessList()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = DeleteEmailVerificationResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Lang") && dict["Lang"] != nil {
            self.lang = dict["Lang"] as! String
        }
        if dict.keys.contains("RegistrantProfileId") && dict["RegistrantProfileId"] != nil {
            self.registrantProfileId = dict["RegistrantProfileId"] as! Int64
        }
        if dict.keys.contains("UserClientIp") && dict["UserClientIp"] != nil {
            self.userClientIp = dict["UserClientIp"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = DeleteRegistrantProfileResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("BizId") && dict["BizId"] != nil {
            self.bizId = dict["BizId"] as! Int64
        }
        if dict.keys.contains("UserClientIp") && dict["UserClientIp"] != nil {
            self.userClientIp = dict["UserClientIp"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AllowRetry") && dict["AllowRetry"] != nil {
            self.allowRetry = dict["AllowRetry"] as! Bool
        }
        if dict.keys.contains("AppName") && dict["AppName"] != nil {
            self.appName = dict["AppName"] as! String
        }
        if dict.keys.contains("DynamicCode") && dict["DynamicCode"] != nil {
            self.dynamicCode = dict["DynamicCode"] as! String
        }
        if dict.keys.contains("DynamicMessage") && dict["DynamicMessage"] != nil {
            self.dynamicMessage = dict["DynamicMessage"] as! String
        }
        if dict.keys.contains("ErrorArgs") && dict["ErrorArgs"] != nil {
            self.errorArgs = dict["ErrorArgs"] as! [Any]
        }
        if dict.keys.contains("ErrorCode") && dict["ErrorCode"] != nil {
            self.errorCode = dict["ErrorCode"] as! String
        }
        if dict.keys.contains("ErrorMsg") && dict["ErrorMsg"] != nil {
            self.errorMsg = dict["ErrorMsg"] as! String
        }
        if dict.keys.contains("HttpStatusCode") && dict["HttpStatusCode"] != nil {
            self.httpStatusCode = dict["HttpStatusCode"] as! Int32
        }
        if dict.keys.contains("Module") && dict["Module"] != nil {
            self.module = dict["Module"] as! Any
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") && dict["Success"] != nil {
            self.success = dict["Success"] as! Bool
        }
        if dict.keys.contains("Synchro") && dict["Synchro"] != nil {
            self.synchro = dict["Synchro"] as! Bool
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = DomainSpecialBizCancelResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Email") && dict["Email"] != nil {
            self.email = dict["Email"] as! String
        }
        if dict.keys.contains("Lang") && dict["Lang"] != nil {
            self.lang = dict["Lang"] as! String
        }
        if dict.keys.contains("UserClientIp") && dict["UserClientIp"] != nil {
            self.userClientIp = dict["UserClientIp"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = EmailVerifiedResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Keyword") && dict["Keyword"] != nil {
            self.keyword = dict["Keyword"] as! String
        }
        if dict.keys.contains("Lang") && dict["Lang"] != nil {
            self.lang = dict["Lang"] as! String
        }
        if dict.keys.contains("UserClientIp") && dict["UserClientIp"] != nil {
            self.userClientIp = dict["UserClientIp"] as! String
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

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("Word") && dict["Word"] != nil {
                    self.word = dict["Word"] as! String
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("MatchedSensitiveWord") && dict["MatchedSensitiveWord"] != nil {
                var tmp : [FuzzyMatchDomainSensitiveWordResponseBody.MatchedSentiveWords.MatchedSensitiveWord] = []
                for v in dict["MatchedSensitiveWord"] as! [Any] {
                    var model = FuzzyMatchDomainSensitiveWordResponseBody.MatchedSentiveWords.MatchedSensitiveWord()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Exist") && dict["Exist"] != nil {
            self.exist = dict["Exist"] as! Bool
        }
        if dict.keys.contains("Keyword") && dict["Keyword"] != nil {
            self.keyword = dict["Keyword"] as! String
        }
        if dict.keys.contains("MatchedSentiveWords") && dict["MatchedSentiveWords"] != nil {
            var model = FuzzyMatchDomainSensitiveWordResponseBody.MatchedSentiveWords()
            model.fromMap(dict["MatchedSentiveWords"] as! [String: Any])
            self.matchedSentiveWords = model
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = FuzzyMatchDomainSensitiveWordResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AuditType") && dict["AuditType"] != nil {
            self.auditType = dict["AuditType"] as! Int32
        }
        if dict.keys.contains("Lang") && dict["Lang"] != nil {
            self.lang = dict["Lang"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Accessid") && dict["Accessid"] != nil {
            self.accessid = dict["Accessid"] as! String
        }
        if dict.keys.contains("EncodedPolicy") && dict["EncodedPolicy"] != nil {
            self.encodedPolicy = dict["EncodedPolicy"] as! String
        }
        if dict.keys.contains("ExpireTime") && dict["ExpireTime"] != nil {
            self.expireTime = dict["ExpireTime"] as! String
        }
        if dict.keys.contains("FileDir") && dict["FileDir"] != nil {
            self.fileDir = dict["FileDir"] as! String
        }
        if dict.keys.contains("Host") && dict["Host"] != nil {
            self.host = dict["Host"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Signature") && dict["Signature"] != nil {
            self.signature = dict["Signature"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = GetOperationOssUploadPolicyResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Lang") && dict["Lang"] != nil {
            self.lang = dict["Lang"] as! String
        }
        if dict.keys.contains("UserClientIp") && dict["UserClientIp"] != nil {
            self.userClientIp = dict["UserClientIp"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Accessid") && dict["Accessid"] != nil {
            self.accessid = dict["Accessid"] as! String
        }
        if dict.keys.contains("Dir") && dict["Dir"] != nil {
            self.dir = dict["Dir"] as! String
        }
        if dict.keys.contains("Expire") && dict["Expire"] != nil {
            self.expire = dict["Expire"] as! String
        }
        if dict.keys.contains("Host") && dict["Host"] != nil {
            self.host = dict["Host"] as! String
        }
        if dict.keys.contains("Policy") && dict["Policy"] != nil {
            self.policy = dict["Policy"] as! String
        }
        if dict.keys.contains("Prefix") && dict["Prefix"] != nil {
            self.prefix_ = dict["Prefix"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Signature") && dict["Signature"] != nil {
            self.signature = dict["Signature"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = GetQualificationUploadPolicyResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("BeginCreateTime") && dict["BeginCreateTime"] != nil {
            self.beginCreateTime = dict["BeginCreateTime"] as! Int64
        }
        if dict.keys.contains("Email") && dict["Email"] != nil {
            self.email = dict["Email"] as! String
        }
        if dict.keys.contains("EndCreateTime") && dict["EndCreateTime"] != nil {
            self.endCreateTime = dict["EndCreateTime"] as! Int64
        }
        if dict.keys.contains("Lang") && dict["Lang"] != nil {
            self.lang = dict["Lang"] as! String
        }
        if dict.keys.contains("PageNum") && dict["PageNum"] != nil {
            self.pageNum = dict["PageNum"] as! Int32
        }
        if dict.keys.contains("PageSize") && dict["PageSize"] != nil {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("UserClientIp") && dict["UserClientIp"] != nil {
            self.userClientIp = dict["UserClientIp"] as! String
        }
        if dict.keys.contains("VerificationStatus") && dict["VerificationStatus"] != nil {
            self.verificationStatus = dict["VerificationStatus"] as! Int32
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("ConfirmIp") && dict["ConfirmIp"] != nil {
                self.confirmIp = dict["ConfirmIp"] as! String
            }
            if dict.keys.contains("Email") && dict["Email"] != nil {
                self.email = dict["Email"] as! String
            }
            if dict.keys.contains("EmailVerificationNo") && dict["EmailVerificationNo"] != nil {
                self.emailVerificationNo = dict["EmailVerificationNo"] as! String
            }
            if dict.keys.contains("GmtCreate") && dict["GmtCreate"] != nil {
                self.gmtCreate = dict["GmtCreate"] as! String
            }
            if dict.keys.contains("GmtModified") && dict["GmtModified"] != nil {
                self.gmtModified = dict["GmtModified"] as! String
            }
            if dict.keys.contains("SendIp") && dict["SendIp"] != nil {
                self.sendIp = dict["SendIp"] as! String
            }
            if dict.keys.contains("TokenSendTime") && dict["TokenSendTime"] != nil {
                self.tokenSendTime = dict["TokenSendTime"] as! String
            }
            if dict.keys.contains("UserId") && dict["UserId"] != nil {
                self.userId = dict["UserId"] as! String
            }
            if dict.keys.contains("VerificationStatus") && dict["VerificationStatus"] != nil {
                self.verificationStatus = dict["VerificationStatus"] as! Int32
            }
            if dict.keys.contains("VerificationTime") && dict["VerificationTime"] != nil {
                self.verificationTime = dict["VerificationTime"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("CurrentPageNum") && dict["CurrentPageNum"] != nil {
            self.currentPageNum = dict["CurrentPageNum"] as! Int32
        }
        if dict.keys.contains("Data") && dict["Data"] != nil {
            var tmp : [ListEmailVerificationResponseBody.Data] = []
            for v in dict["Data"] as! [Any] {
                var model = ListEmailVerificationResponseBody.Data()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.data = tmp
        }
        if dict.keys.contains("NextPage") && dict["NextPage"] != nil {
            self.nextPage = dict["NextPage"] as! Bool
        }
        if dict.keys.contains("PageSize") && dict["PageSize"] != nil {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("PrePage") && dict["PrePage"] != nil {
            self.prePage = dict["PrePage"] as! Bool
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("TotalItemNum") && dict["TotalItemNum"] != nil {
            self.totalItemNum = dict["TotalItemNum"] as! Int32
        }
        if dict.keys.contains("TotalPageNum") && dict["TotalPageNum"] != nil {
            self.totalPageNum = dict["TotalPageNum"] as! Int32
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = ListEmailVerificationResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("BeginStartDate") && dict["BeginStartDate"] != nil {
            self.beginStartDate = dict["BeginStartDate"] as! Int64
        }
        if dict.keys.contains("DomainName") && dict["DomainName"] != nil {
            self.domainName = dict["DomainName"] as! String
        }
        if dict.keys.contains("EndExpireDate") && dict["EndExpireDate"] != nil {
            self.endExpireDate = dict["EndExpireDate"] as! Int64
        }
        if dict.keys.contains("EndStartDate") && dict["EndStartDate"] != nil {
            self.endStartDate = dict["EndStartDate"] as! Int64
        }
        if dict.keys.contains("Lang") && dict["Lang"] != nil {
            self.lang = dict["Lang"] as! String
        }
        if dict.keys.contains("LockProductId") && dict["LockProductId"] != nil {
            self.lockProductId = dict["LockProductId"] as! String
        }
        if dict.keys.contains("OrderBy") && dict["OrderBy"] != nil {
            self.orderBy = dict["OrderBy"] as! String
        }
        if dict.keys.contains("OrderByType") && dict["OrderByType"] != nil {
            self.orderByType = dict["OrderByType"] as! String
        }
        if dict.keys.contains("PageNum") && dict["PageNum"] != nil {
            self.pageNum = dict["PageNum"] as! Int32
        }
        if dict.keys.contains("PageSize") && dict["PageSize"] != nil {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("ServerLockStatus") && dict["ServerLockStatus"] != nil {
            self.serverLockStatus = dict["ServerLockStatus"] as! Int32
        }
        if dict.keys.contains("StartExpireDate") && dict["StartExpireDate"] != nil {
            self.startExpireDate = dict["StartExpireDate"] as! Int64
        }
        if dict.keys.contains("UserClientIp") && dict["UserClientIp"] != nil {
            self.userClientIp = dict["UserClientIp"] as! String
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("DomainInstanceId") && dict["DomainInstanceId"] != nil {
                self.domainInstanceId = dict["DomainInstanceId"] as! String
            }
            if dict.keys.contains("DomainName") && dict["DomainName"] != nil {
                self.domainName = dict["DomainName"] as! String
            }
            if dict.keys.contains("ExpireDate") && dict["ExpireDate"] != nil {
                self.expireDate = dict["ExpireDate"] as! String
            }
            if dict.keys.contains("GmtCreate") && dict["GmtCreate"] != nil {
                self.gmtCreate = dict["GmtCreate"] as! String
            }
            if dict.keys.contains("GmtModified") && dict["GmtModified"] != nil {
                self.gmtModified = dict["GmtModified"] as! String
            }
            if dict.keys.contains("LockInstanceId") && dict["LockInstanceId"] != nil {
                self.lockInstanceId = dict["LockInstanceId"] as! String
            }
            if dict.keys.contains("LockProductId") && dict["LockProductId"] != nil {
                self.lockProductId = dict["LockProductId"] as! String
            }
            if dict.keys.contains("ServerLockStatus") && dict["ServerLockStatus"] != nil {
                self.serverLockStatus = dict["ServerLockStatus"] as! String
            }
            if dict.keys.contains("StartDate") && dict["StartDate"] != nil {
                self.startDate = dict["StartDate"] as! String
            }
            if dict.keys.contains("UserId") && dict["UserId"] != nil {
                self.userId = dict["UserId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("CurrentPageNum") && dict["CurrentPageNum"] != nil {
            self.currentPageNum = dict["CurrentPageNum"] as! Int32
        }
        if dict.keys.contains("Data") && dict["Data"] != nil {
            var tmp : [ListServerLockResponseBody.Data] = []
            for v in dict["Data"] as! [Any] {
                var model = ListServerLockResponseBody.Data()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.data = tmp
        }
        if dict.keys.contains("NextPage") && dict["NextPage"] != nil {
            self.nextPage = dict["NextPage"] as! Bool
        }
        if dict.keys.contains("PageSize") && dict["PageSize"] != nil {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("PrePage") && dict["PrePage"] != nil {
            self.prePage = dict["PrePage"] as! Bool
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("TotalItemNum") && dict["TotalItemNum"] != nil {
            self.totalItemNum = dict["TotalItemNum"] as! Int32
        }
        if dict.keys.contains("TotalPageNum") && dict["TotalPageNum"] != nil {
            self.totalPageNum = dict["TotalPageNum"] as! Int32
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = ListServerLockResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ClaimKey") && dict["ClaimKey"] != nil {
            self.claimKey = dict["ClaimKey"] as! String
        }
        if dict.keys.contains("Lang") && dict["Lang"] != nil {
            self.lang = dict["Lang"] as! String
        }
        if dict.keys.contains("UserClientIp") && dict["UserClientIp"] != nil {
            self.userClientIp = dict["UserClientIp"] as! String
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

                    public override func fromMap(_ dict: [String: Any]) -> Void {
                        if dict.keys.contains("ClassNum") && dict["ClassNum"] != nil {
                            self.classNum = dict["ClassNum"] as! Int32
                        }
                        if dict.keys.contains("Desc") && dict["Desc"] != nil {
                            self.desc = dict["Desc"] as! String
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

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("ClassDesc") && dict["ClassDesc"] != nil {
                        var tmp : [LookupTmchNoticeResponseBody.Claims.Claim.ClassDescs.ClassDesc] = []
                        for v in dict["ClassDesc"] as! [Any] {
                            var model = LookupTmchNoticeResponseBody.Claims.Claim.ClassDescs.ClassDesc()
                            if v != nil {
                                model.fromMap(v as! [String: Any])
                            }
                            tmp.append(model)
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

                            public override func fromMap(_ dict: [String: Any]) -> Void {
                                if dict.keys.contains("Street") && dict["Street"] != nil {
                                    self.street = dict["Street"] as! [String]
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

                        public override func fromMap(_ dict: [String: Any]) -> Void {
                            if dict.keys.contains("Cc") && dict["Cc"] != nil {
                                self.cc = dict["Cc"] as! String
                            }
                            if dict.keys.contains("City") && dict["City"] != nil {
                                self.city = dict["City"] as! String
                            }
                            if dict.keys.contains("Pc") && dict["Pc"] != nil {
                                self.pc = dict["Pc"] as! String
                            }
                            if dict.keys.contains("Sp") && dict["Sp"] != nil {
                                self.sp = dict["Sp"] as! String
                            }
                            if dict.keys.contains("Street") && dict["Street"] != nil {
                                var model = LookupTmchNoticeResponseBody.Claims.Claim.Contacts.Contact.Addr.Street()
                                model.fromMap(dict["Street"] as! [String: Any])
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

                    public override func fromMap(_ dict: [String: Any]) -> Void {
                        if dict.keys.contains("Addr") && dict["Addr"] != nil {
                            var model = LookupTmchNoticeResponseBody.Claims.Claim.Contacts.Contact.Addr()
                            model.fromMap(dict["Addr"] as! [String: Any])
                            self.addr = model
                        }
                        if dict.keys.contains("Email") && dict["Email"] != nil {
                            self.email = dict["Email"] as! String
                        }
                        if dict.keys.contains("Fax") && dict["Fax"] != nil {
                            self.fax = dict["Fax"] as! String
                        }
                        if dict.keys.contains("Name") && dict["Name"] != nil {
                            self.name = dict["Name"] as! String
                        }
                        if dict.keys.contains("Org") && dict["Org"] != nil {
                            self.org = dict["Org"] as! String
                        }
                        if dict.keys.contains("Type") && dict["Type"] != nil {
                            self.type = dict["Type"] as! String
                        }
                        if dict.keys.contains("Voice") && dict["Voice"] != nil {
                            self.voice = dict["Voice"] as! String
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

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("Contact") && dict["Contact"] != nil {
                        var tmp : [LookupTmchNoticeResponseBody.Claims.Claim.Contacts.Contact] = []
                        for v in dict["Contact"] as! [Any] {
                            var model = LookupTmchNoticeResponseBody.Claims.Claim.Contacts.Contact()
                            if v != nil {
                                model.fromMap(v as! [String: Any])
                            }
                            tmp.append(model)
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

                            public override func fromMap(_ dict: [String: Any]) -> Void {
                                if dict.keys.contains("Street") && dict["Street"] != nil {
                                    self.street = dict["Street"] as! [String]
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

                        public override func fromMap(_ dict: [String: Any]) -> Void {
                            if dict.keys.contains("Cc") && dict["Cc"] != nil {
                                self.cc = dict["Cc"] as! String
                            }
                            if dict.keys.contains("City") && dict["City"] != nil {
                                self.city = dict["City"] as! String
                            }
                            if dict.keys.contains("Pc") && dict["Pc"] != nil {
                                self.pc = dict["Pc"] as! String
                            }
                            if dict.keys.contains("Sp") && dict["Sp"] != nil {
                                self.sp = dict["Sp"] as! String
                            }
                            if dict.keys.contains("Street") && dict["Street"] != nil {
                                var model = LookupTmchNoticeResponseBody.Claims.Claim.Holders.Holder.Addr.Street()
                                model.fromMap(dict["Street"] as! [String: Any])
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

                    public override func fromMap(_ dict: [String: Any]) -> Void {
                        if dict.keys.contains("Addr") && dict["Addr"] != nil {
                            var model = LookupTmchNoticeResponseBody.Claims.Claim.Holders.Holder.Addr()
                            model.fromMap(dict["Addr"] as! [String: Any])
                            self.addr = model
                        }
                        if dict.keys.contains("Entitlement") && dict["Entitlement"] != nil {
                            self.entitlement = dict["Entitlement"] as! String
                        }
                        if dict.keys.contains("Org") && dict["Org"] != nil {
                            self.org = dict["Org"] as! String
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

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("Holder") && dict["Holder"] != nil {
                        var tmp : [LookupTmchNoticeResponseBody.Claims.Claim.Holders.Holder] = []
                        for v in dict["Holder"] as! [Any] {
                            var model = LookupTmchNoticeResponseBody.Claims.Claim.Holders.Holder()
                            if v != nil {
                                model.fromMap(v as! [String: Any])
                            }
                            tmp.append(model)
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

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("Desc") && dict["Desc"] != nil {
                        self.desc = dict["Desc"] as! String
                    }
                    if dict.keys.contains("JurCC") && dict["JurCC"] != nil {
                        self.jurCC = dict["JurCC"] as! String
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

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("ClassDescs") && dict["ClassDescs"] != nil {
                    var model = LookupTmchNoticeResponseBody.Claims.Claim.ClassDescs()
                    model.fromMap(dict["ClassDescs"] as! [String: Any])
                    self.classDescs = model
                }
                if dict.keys.contains("Contacts") && dict["Contacts"] != nil {
                    var model = LookupTmchNoticeResponseBody.Claims.Claim.Contacts()
                    model.fromMap(dict["Contacts"] as! [String: Any])
                    self.contacts = model
                }
                if dict.keys.contains("GoodsAndServices") && dict["GoodsAndServices"] != nil {
                    self.goodsAndServices = dict["GoodsAndServices"] as! String
                }
                if dict.keys.contains("Holders") && dict["Holders"] != nil {
                    var model = LookupTmchNoticeResponseBody.Claims.Claim.Holders()
                    model.fromMap(dict["Holders"] as! [String: Any])
                    self.holders = model
                }
                if dict.keys.contains("JurDesc") && dict["JurDesc"] != nil {
                    var model = LookupTmchNoticeResponseBody.Claims.Claim.JurDesc()
                    model.fromMap(dict["JurDesc"] as! [String: Any])
                    self.jurDesc = model
                }
                if dict.keys.contains("MarkName") && dict["MarkName"] != nil {
                    self.markName = dict["MarkName"] as! String
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Claim") && dict["Claim"] != nil {
                var tmp : [LookupTmchNoticeResponseBody.Claims.Claim] = []
                for v in dict["Claim"] as! [Any] {
                    var model = LookupTmchNoticeResponseBody.Claims.Claim()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Claims") && dict["Claims"] != nil {
            var model = LookupTmchNoticeResponseBody.Claims()
            model.fromMap(dict["Claims"] as! [String: Any])
            self.claims = model
        }
        if dict.keys.contains("Id") && dict["Id"] != nil {
            self.id = dict["Id"] as! Int64
        }
        if dict.keys.contains("Label") && dict["Label"] != nil {
            self.label = dict["Label"] as! String
        }
        if dict.keys.contains("NotAfter") && dict["NotAfter"] != nil {
            self.notAfter = dict["NotAfter"] as! String
        }
        if dict.keys.contains("NotBefore") && dict["NotBefore"] != nil {
            self.notBefore = dict["NotBefore"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = LookupTmchNoticeResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DomainName") && dict["DomainName"] != nil {
            self.domainName = dict["DomainName"] as! String
        }
        if dict.keys.contains("InstanceId") && dict["InstanceId"] != nil {
            self.instanceId = dict["InstanceId"] as! String
        }
        if dict.keys.contains("Lang") && dict["Lang"] != nil {
            self.lang = dict["Lang"] as! String
        }
        if dict.keys.contains("PageNum") && dict["PageNum"] != nil {
            self.pageNum = dict["PageNum"] as! Int32
        }
        if dict.keys.contains("PageSize") && dict["PageSize"] != nil {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("TaskNo") && dict["TaskNo"] != nil {
            self.taskNo = dict["TaskNo"] as! String
        }
        if dict.keys.contains("TaskResultStatus") && dict["TaskResultStatus"] != nil {
            self.taskResultStatus = dict["TaskResultStatus"] as! Int32
        }
        if dict.keys.contains("UserClientIp") && dict["UserClientIp"] != nil {
            self.userClientIp = dict["UserClientIp"] as! String
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

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("CreateTime") && dict["CreateTime"] != nil {
                    self.createTime = dict["CreateTime"] as! String
                }
                if dict.keys.contains("DomainName") && dict["DomainName"] != nil {
                    self.domainName = dict["DomainName"] as! String
                }
                if dict.keys.contains("ErrorMsg") && dict["ErrorMsg"] != nil {
                    self.errorMsg = dict["ErrorMsg"] as! String
                }
                if dict.keys.contains("InstanceId") && dict["InstanceId"] != nil {
                    self.instanceId = dict["InstanceId"] as! String
                }
                if dict.keys.contains("TaskDetailNo") && dict["TaskDetailNo"] != nil {
                    self.taskDetailNo = dict["TaskDetailNo"] as! String
                }
                if dict.keys.contains("TaskNo") && dict["TaskNo"] != nil {
                    self.taskNo = dict["TaskNo"] as! String
                }
                if dict.keys.contains("TaskResult") && dict["TaskResult"] != nil {
                    self.taskResult = dict["TaskResult"] as! String
                }
                if dict.keys.contains("TaskStatus") && dict["TaskStatus"] != nil {
                    self.taskStatus = dict["TaskStatus"] as! String
                }
                if dict.keys.contains("TaskStatusCode") && dict["TaskStatusCode"] != nil {
                    self.taskStatusCode = dict["TaskStatusCode"] as! Int32
                }
                if dict.keys.contains("TaskType") && dict["TaskType"] != nil {
                    self.taskType = dict["TaskType"] as! String
                }
                if dict.keys.contains("TaskTypeDescription") && dict["TaskTypeDescription"] != nil {
                    self.taskTypeDescription = dict["TaskTypeDescription"] as! String
                }
                if dict.keys.contains("TryCount") && dict["TryCount"] != nil {
                    self.tryCount = dict["TryCount"] as! Int32
                }
                if dict.keys.contains("UpdateTime") && dict["UpdateTime"] != nil {
                    self.updateTime = dict["UpdateTime"] as! String
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("TaskDetail") && dict["TaskDetail"] != nil {
                var tmp : [PollTaskResultResponseBody.Data.TaskDetail] = []
                for v in dict["TaskDetail"] as! [Any] {
                    var model = PollTaskResultResponseBody.Data.TaskDetail()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("CurrentPageNum") && dict["CurrentPageNum"] != nil {
            self.currentPageNum = dict["CurrentPageNum"] as! Int32
        }
        if dict.keys.contains("Data") && dict["Data"] != nil {
            var model = PollTaskResultResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("NextPage") && dict["NextPage"] != nil {
            self.nextPage = dict["NextPage"] as! Bool
        }
        if dict.keys.contains("PageSize") && dict["PageSize"] != nil {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("PrePage") && dict["PrePage"] != nil {
            self.prePage = dict["PrePage"] as! Bool
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("TotalItemNum") && dict["TotalItemNum"] != nil {
            self.totalItemNum = dict["TotalItemNum"] as! Int32
        }
        if dict.keys.contains("TotalPageNum") && dict["TotalPageNum"] != nil {
            self.totalPageNum = dict["TotalPageNum"] as! Int32
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = PollTaskResultResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Key") && dict["Key"] != nil {
                self.key = dict["Key"] as! String
            }
            if dict.keys.contains("Value") && dict["Value"] != nil {
                self.value = dict["Value"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DomainGroupId") && dict["DomainGroupId"] != nil {
            self.domainGroupId = dict["DomainGroupId"] as! Int64
        }
        if dict.keys.contains("DomainNameSort") && dict["DomainNameSort"] != nil {
            self.domainNameSort = dict["DomainNameSort"] as! Bool
        }
        if dict.keys.contains("DomainStatus") && dict["DomainStatus"] != nil {
            self.domainStatus = dict["DomainStatus"] as! Int32
        }
        if dict.keys.contains("EndExpirationDate") && dict["EndExpirationDate"] != nil {
            self.endExpirationDate = dict["EndExpirationDate"] as! Int64
        }
        if dict.keys.contains("EndLength") && dict["EndLength"] != nil {
            self.endLength = dict["EndLength"] as! Int32
        }
        if dict.keys.contains("EndRegistrationDate") && dict["EndRegistrationDate"] != nil {
            self.endRegistrationDate = dict["EndRegistrationDate"] as! Int64
        }
        if dict.keys.contains("Excluded") && dict["Excluded"] != nil {
            self.excluded = dict["Excluded"] as! String
        }
        if dict.keys.contains("ExcludedPrefix") && dict["ExcludedPrefix"] != nil {
            self.excludedPrefix = dict["ExcludedPrefix"] as! Bool
        }
        if dict.keys.contains("ExcludedSuffix") && dict["ExcludedSuffix"] != nil {
            self.excludedSuffix = dict["ExcludedSuffix"] as! Bool
        }
        if dict.keys.contains("ExpirationDateSort") && dict["ExpirationDateSort"] != nil {
            self.expirationDateSort = dict["ExpirationDateSort"] as! Bool
        }
        if dict.keys.contains("Form") && dict["Form"] != nil {
            self.form = dict["Form"] as! Int32
        }
        if dict.keys.contains("KeyWord") && dict["KeyWord"] != nil {
            self.keyWord = dict["KeyWord"] as! String
        }
        if dict.keys.contains("KeyWordPrefix") && dict["KeyWordPrefix"] != nil {
            self.keyWordPrefix = dict["KeyWordPrefix"] as! Bool
        }
        if dict.keys.contains("KeyWordSuffix") && dict["KeyWordSuffix"] != nil {
            self.keyWordSuffix = dict["KeyWordSuffix"] as! Bool
        }
        if dict.keys.contains("Lang") && dict["Lang"] != nil {
            self.lang = dict["Lang"] as! String
        }
        if dict.keys.contains("PageNum") && dict["PageNum"] != nil {
            self.pageNum = dict["PageNum"] as! Int32
        }
        if dict.keys.contains("PageSize") && dict["PageSize"] != nil {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("ProductDomainType") && dict["ProductDomainType"] != nil {
            self.productDomainType = dict["ProductDomainType"] as! String
        }
        if dict.keys.contains("ProductDomainTypeSort") && dict["ProductDomainTypeSort"] != nil {
            self.productDomainTypeSort = dict["ProductDomainTypeSort"] as! Bool
        }
        if dict.keys.contains("RegistrationDateSort") && dict["RegistrationDateSort"] != nil {
            self.registrationDateSort = dict["RegistrationDateSort"] as! Bool
        }
        if dict.keys.contains("ResourceGroupId") && dict["ResourceGroupId"] != nil {
            self.resourceGroupId = dict["ResourceGroupId"] as! String
        }
        if dict.keys.contains("StartExpirationDate") && dict["StartExpirationDate"] != nil {
            self.startExpirationDate = dict["StartExpirationDate"] as! Int64
        }
        if dict.keys.contains("StartLength") && dict["StartLength"] != nil {
            self.startLength = dict["StartLength"] as! Int32
        }
        if dict.keys.contains("StartRegistrationDate") && dict["StartRegistrationDate"] != nil {
            self.startRegistrationDate = dict["StartRegistrationDate"] as! Int64
        }
        if dict.keys.contains("Suffixs") && dict["Suffixs"] != nil {
            self.suffixs = dict["Suffixs"] as! String
        }
        if dict.keys.contains("Tag") && dict["Tag"] != nil {
            var tmp : [QueryAdvancedDomainListRequest.Tag] = []
            for v in dict["Tag"] as! [Any] {
                var model = QueryAdvancedDomainListRequest.Tag()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.tag = tmp
        }
        if dict.keys.contains("TradeType") && dict["TradeType"] != nil {
            self.tradeType = dict["TradeType"] as! Int32
        }
        if dict.keys.contains("UserClientIp") && dict["UserClientIp"] != nil {
            self.userClientIp = dict["UserClientIp"] as! String
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

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("Dns") && dict["Dns"] != nil {
                        self.dns = dict["Dns"] as! [String]
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

                    public override func fromMap(_ dict: [String: Any]) -> Void {
                        if dict.keys.contains("Key") && dict["Key"] != nil {
                            self.key = dict["Key"] as! String
                        }
                        if dict.keys.contains("Value") && dict["Value"] != nil {
                            self.value = dict["Value"] as! String
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

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("Tag") && dict["Tag"] != nil {
                        var tmp : [QueryAdvancedDomainListResponseBody.Data.Domain.Tag.Tag] = []
                        for v in dict["Tag"] as! [Any] {
                            var model = QueryAdvancedDomainListResponseBody.Data.Domain.Tag.Tag()
                            if v != nil {
                                model.fromMap(v as! [String: Any])
                            }
                            tmp.append(model)
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

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("DnsList") && dict["DnsList"] != nil {
                    var model = QueryAdvancedDomainListResponseBody.Data.Domain.DnsList()
                    model.fromMap(dict["DnsList"] as! [String: Any])
                    self.dnsList = model
                }
                if dict.keys.contains("DomainAuditStatus") && dict["DomainAuditStatus"] != nil {
                    self.domainAuditStatus = dict["DomainAuditStatus"] as! String
                }
                if dict.keys.contains("DomainGroupId") && dict["DomainGroupId"] != nil {
                    self.domainGroupId = dict["DomainGroupId"] as! String
                }
                if dict.keys.contains("DomainGroupName") && dict["DomainGroupName"] != nil {
                    self.domainGroupName = dict["DomainGroupName"] as! String
                }
                if dict.keys.contains("DomainName") && dict["DomainName"] != nil {
                    self.domainName = dict["DomainName"] as! String
                }
                if dict.keys.contains("DomainStatus") && dict["DomainStatus"] != nil {
                    self.domainStatus = dict["DomainStatus"] as! String
                }
                if dict.keys.contains("DomainType") && dict["DomainType"] != nil {
                    self.domainType = dict["DomainType"] as! String
                }
                if dict.keys.contains("Email") && dict["Email"] != nil {
                    self.email = dict["Email"] as! String
                }
                if dict.keys.contains("ExpirationCurrDateDiff") && dict["ExpirationCurrDateDiff"] != nil {
                    self.expirationCurrDateDiff = dict["ExpirationCurrDateDiff"] as! Int32
                }
                if dict.keys.contains("ExpirationDate") && dict["ExpirationDate"] != nil {
                    self.expirationDate = dict["ExpirationDate"] as! String
                }
                if dict.keys.contains("ExpirationDateLong") && dict["ExpirationDateLong"] != nil {
                    self.expirationDateLong = dict["ExpirationDateLong"] as! Int64
                }
                if dict.keys.contains("ExpirationDateStatus") && dict["ExpirationDateStatus"] != nil {
                    self.expirationDateStatus = dict["ExpirationDateStatus"] as! String
                }
                if dict.keys.contains("InstanceId") && dict["InstanceId"] != nil {
                    self.instanceId = dict["InstanceId"] as! String
                }
                if dict.keys.contains("Premium") && dict["Premium"] != nil {
                    self.premium = dict["Premium"] as! Bool
                }
                if dict.keys.contains("ProductId") && dict["ProductId"] != nil {
                    self.productId = dict["ProductId"] as! String
                }
                if dict.keys.contains("RegistrantOrganization") && dict["RegistrantOrganization"] != nil {
                    self.registrantOrganization = dict["RegistrantOrganization"] as! String
                }
                if dict.keys.contains("RegistrantType") && dict["RegistrantType"] != nil {
                    self.registrantType = dict["RegistrantType"] as! String
                }
                if dict.keys.contains("RegistrationDate") && dict["RegistrationDate"] != nil {
                    self.registrationDate = dict["RegistrationDate"] as! String
                }
                if dict.keys.contains("RegistrationDateLong") && dict["RegistrationDateLong"] != nil {
                    self.registrationDateLong = dict["RegistrationDateLong"] as! Int64
                }
                if dict.keys.contains("Remark") && dict["Remark"] != nil {
                    self.remark = dict["Remark"] as! String
                }
                if dict.keys.contains("ResourceGroupId") && dict["ResourceGroupId"] != nil {
                    self.resourceGroupId = dict["ResourceGroupId"] as! String
                }
                if dict.keys.contains("Tag") && dict["Tag"] != nil {
                    var model = QueryAdvancedDomainListResponseBody.Data.Domain.Tag()
                    model.fromMap(dict["Tag"] as! [String: Any])
                    self.tag = model
                }
                if dict.keys.contains("ZhRegistrantOrganization") && dict["ZhRegistrantOrganization"] != nil {
                    self.zhRegistrantOrganization = dict["ZhRegistrantOrganization"] as! String
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Domain") && dict["Domain"] != nil {
                var tmp : [QueryAdvancedDomainListResponseBody.Data.Domain] = []
                for v in dict["Domain"] as! [Any] {
                    var model = QueryAdvancedDomainListResponseBody.Data.Domain()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("CurrentPageNum") && dict["CurrentPageNum"] != nil {
            self.currentPageNum = dict["CurrentPageNum"] as! Int32
        }
        if dict.keys.contains("Data") && dict["Data"] != nil {
            var model = QueryAdvancedDomainListResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("NextPage") && dict["NextPage"] != nil {
            self.nextPage = dict["NextPage"] as! Bool
        }
        if dict.keys.contains("PageSize") && dict["PageSize"] != nil {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("PrePage") && dict["PrePage"] != nil {
            self.prePage = dict["PrePage"] as! Bool
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("TotalItemNum") && dict["TotalItemNum"] != nil {
            self.totalItemNum = dict["TotalItemNum"] as! Int32
        }
        if dict.keys.contains("TotalPageNum") && dict["TotalPageNum"] != nil {
            self.totalPageNum = dict["TotalPageNum"] as! Int32
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = QueryAdvancedDomainListResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DomainName") && dict["DomainName"] != nil {
            self.domainName = dict["DomainName"] as! String
        }
        if dict.keys.contains("Lang") && dict["Lang"] != nil {
            self.lang = dict["Lang"] as! String
        }
        if dict.keys.contains("UserClientIp") && dict["UserClientIp"] != nil {
            self.userClientIp = dict["UserClientIp"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DateOrPeriod") && dict["DateOrPeriod"] != nil {
            self.dateOrPeriod = dict["DateOrPeriod"] as! String
        }
        if dict.keys.contains("Dimensions") && dict["Dimensions"] != nil {
            self.dimensions = dict["Dimensions"] as! String
        }
        if dict.keys.contains("Features") && dict["Features"] != nil {
            self.features = dict["Features"] as! String
        }
        if dict.keys.contains("InscriptionsAndMarkings") && dict["InscriptionsAndMarkings"] != nil {
            self.inscriptionsAndMarkings = dict["InscriptionsAndMarkings"] as! String
        }
        if dict.keys.contains("Maker") && dict["Maker"] != nil {
            self.maker = dict["Maker"] as! String
        }
        if dict.keys.contains("MaterialsAndTechniques") && dict["MaterialsAndTechniques"] != nil {
            self.materialsAndTechniques = dict["MaterialsAndTechniques"] as! String
        }
        if dict.keys.contains("ObjectType") && dict["ObjectType"] != nil {
            self.objectType = dict["ObjectType"] as! String
        }
        if dict.keys.contains("Reference") && dict["Reference"] != nil {
            self.reference = dict["Reference"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Subject") && dict["Subject"] != nil {
            self.subject = dict["Subject"] as! String
        }
        if dict.keys.contains("Title") && dict["Title"] != nil {
            self.title = dict["Title"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = QueryArtExtensionResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DomainName") && dict["DomainName"] != nil {
            self.domainName = dict["DomainName"] as! String
        }
        if dict.keys.contains("EndDate") && dict["EndDate"] != nil {
            self.endDate = dict["EndDate"] as! Int64
        }
        if dict.keys.contains("Lang") && dict["Lang"] != nil {
            self.lang = dict["Lang"] as! String
        }
        if dict.keys.contains("PageNum") && dict["PageNum"] != nil {
            self.pageNum = dict["PageNum"] as! Int32
        }
        if dict.keys.contains("PageSize") && dict["PageSize"] != nil {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("StartDate") && dict["StartDate"] != nil {
            self.startDate = dict["StartDate"] as! Int64
        }
        if dict.keys.contains("UserClientIp") && dict["UserClientIp"] != nil {
            self.userClientIp = dict["UserClientIp"] as! String
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
                if self.result != nil {
                    map["Result"] = self.result!
                }
                if self.time != nil {
                    map["Time"] = self.time!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("Details") && dict["Details"] != nil {
                    self.details = dict["Details"] as! String
                }
                if dict.keys.contains("DomainName") && dict["DomainName"] != nil {
                    self.domainName = dict["DomainName"] as! String
                }
                if dict.keys.contains("Operation") && dict["Operation"] != nil {
                    self.operation = dict["Operation"] as! String
                }
                if dict.keys.contains("OperationIPAddress") && dict["OperationIPAddress"] != nil {
                    self.operationIPAddress = dict["OperationIPAddress"] as! String
                }
                if dict.keys.contains("Result") && dict["Result"] != nil {
                    self.result = dict["Result"] as! String
                }
                if dict.keys.contains("Time") && dict["Time"] != nil {
                    self.time = dict["Time"] as! String
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("ChangeLog") && dict["ChangeLog"] != nil {
                var tmp : [QueryChangeLogListResponseBody.Data.ChangeLog] = []
                for v in dict["ChangeLog"] as! [Any] {
                    var model = QueryChangeLogListResponseBody.Data.ChangeLog()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("CurrentPageNum") && dict["CurrentPageNum"] != nil {
            self.currentPageNum = dict["CurrentPageNum"] as! Int32
        }
        if dict.keys.contains("Data") && dict["Data"] != nil {
            var model = QueryChangeLogListResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("NextPage") && dict["NextPage"] != nil {
            self.nextPage = dict["NextPage"] as! Bool
        }
        if dict.keys.contains("PageSize") && dict["PageSize"] != nil {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("PrePage") && dict["PrePage"] != nil {
            self.prePage = dict["PrePage"] as! Bool
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("ResultLimit") && dict["ResultLimit"] != nil {
            self.resultLimit = dict["ResultLimit"] as! Bool
        }
        if dict.keys.contains("TotalItemNum") && dict["TotalItemNum"] != nil {
            self.totalItemNum = dict["TotalItemNum"] as! Int32
        }
        if dict.keys.contains("TotalPageNum") && dict["TotalPageNum"] != nil {
            self.totalPageNum = dict["TotalPageNum"] as! Int32
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = QueryChangeLogListResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ContactType") && dict["ContactType"] != nil {
            self.contactType = dict["ContactType"] as! String
        }
        if dict.keys.contains("DomainName") && dict["DomainName"] != nil {
            self.domainName = dict["DomainName"] as! String
        }
        if dict.keys.contains("Lang") && dict["Lang"] != nil {
            self.lang = dict["Lang"] as! String
        }
        if dict.keys.contains("UserClientIp") && dict["UserClientIp"] != nil {
            self.userClientIp = dict["UserClientIp"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Address") && dict["Address"] != nil {
            self.address = dict["Address"] as! String
        }
        if dict.keys.contains("City") && dict["City"] != nil {
            self.city = dict["City"] as! String
        }
        if dict.keys.contains("Country") && dict["Country"] != nil {
            self.country = dict["Country"] as! String
        }
        if dict.keys.contains("CreateDate") && dict["CreateDate"] != nil {
            self.createDate = dict["CreateDate"] as! String
        }
        if dict.keys.contains("Email") && dict["Email"] != nil {
            self.email = dict["Email"] as! String
        }
        if dict.keys.contains("PostalCode") && dict["PostalCode"] != nil {
            self.postalCode = dict["PostalCode"] as! String
        }
        if dict.keys.contains("Province") && dict["Province"] != nil {
            self.province = dict["Province"] as! String
        }
        if dict.keys.contains("RegistrantName") && dict["RegistrantName"] != nil {
            self.registrantName = dict["RegistrantName"] as! String
        }
        if dict.keys.contains("RegistrantOrganization") && dict["RegistrantOrganization"] != nil {
            self.registrantOrganization = dict["RegistrantOrganization"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("TelArea") && dict["TelArea"] != nil {
            self.telArea = dict["TelArea"] as! String
        }
        if dict.keys.contains("TelExt") && dict["TelExt"] != nil {
            self.telExt = dict["TelExt"] as! String
        }
        if dict.keys.contains("Telephone") && dict["Telephone"] != nil {
            self.telephone = dict["Telephone"] as! String
        }
        if dict.keys.contains("ZhAddress") && dict["ZhAddress"] != nil {
            self.zhAddress = dict["ZhAddress"] as! String
        }
        if dict.keys.contains("ZhCity") && dict["ZhCity"] != nil {
            self.zhCity = dict["ZhCity"] as! String
        }
        if dict.keys.contains("ZhProvince") && dict["ZhProvince"] != nil {
            self.zhProvince = dict["ZhProvince"] as! String
        }
        if dict.keys.contains("ZhRegistrantName") && dict["ZhRegistrantName"] != nil {
            self.zhRegistrantName = dict["ZhRegistrantName"] as! String
        }
        if dict.keys.contains("ZhRegistrantOrganization") && dict["ZhRegistrantOrganization"] != nil {
            self.zhRegistrantOrganization = dict["ZhRegistrantOrganization"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = QueryContactInfoResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DomainName") && dict["DomainName"] != nil {
            self.domainName = dict["DomainName"] as! String
        }
        if dict.keys.contains("Lang") && dict["Lang"] != nil {
            self.lang = dict["Lang"] as! String
        }
        if dict.keys.contains("UserClientIp") && dict["UserClientIp"] != nil {
            self.userClientIp = dict["UserClientIp"] as! String
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Algorithm") && dict["Algorithm"] != nil {
                self.algorithm = dict["Algorithm"] as! Int32
            }
            if dict.keys.contains("Digest") && dict["Digest"] != nil {
                self.digest = dict["Digest"] as! String
            }
            if dict.keys.contains("DigestType") && dict["DigestType"] != nil {
                self.digestType = dict["DigestType"] as! Int32
            }
            if dict.keys.contains("KeyTag") && dict["KeyTag"] != nil {
                self.keyTag = dict["KeyTag"] as! Int32
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DSRecordList") && dict["DSRecordList"] != nil {
            var tmp : [QueryDSRecordResponseBody.DSRecordList] = []
            for v in dict["DSRecordList"] as! [Any] {
                var model = QueryDSRecordResponseBody.DSRecordList()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.DSRecordList = tmp
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = QueryDSRecordResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("InstanceId") && dict["InstanceId"] != nil {
            self.instanceId = dict["InstanceId"] as! String
        }
        if dict.keys.contains("Lang") && dict["Lang"] != nil {
            self.lang = dict["Lang"] as! String
        }
        if dict.keys.contains("UserClientIp") && dict["UserClientIp"] != nil {
            self.userClientIp = dict["UserClientIp"] as! String
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("DnsName") && dict["DnsName"] != nil {
                self.dnsName = dict["DnsName"] as! String
            }
            if dict.keys.contains("IpList") && dict["IpList"] != nil {
                self.ipList = dict["IpList"] as! [String]
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DnsHostList") && dict["DnsHostList"] != nil {
            var tmp : [QueryDnsHostResponseBody.DnsHostList] = []
            for v in dict["DnsHostList"] as! [Any] {
                var model = QueryDnsHostResponseBody.DnsHostList()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.dnsHostList = tmp
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = QueryDnsHostResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Lang") && dict["Lang"] != nil {
            self.lang = dict["Lang"] as! String
        }
        if dict.keys.contains("UserClientIp") && dict["UserClientIp"] != nil {
            self.userClientIp = dict["UserClientIp"] as! String
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

                    public override func fromMap(_ dict: [String: Any]) -> Void {
                        if dict.keys.contains("ChildDivisionName") && dict["ChildDivisionName"] != nil {
                            self.childDivisionName = dict["ChildDivisionName"] as! String
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

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("Children") && dict["Children"] != nil {
                        var tmp : [QueryDomainAdminDivisionResponseBody.AdminDivisions.AdminDivision.Children.Children] = []
                        for v in dict["Children"] as! [Any] {
                            var model = QueryDomainAdminDivisionResponseBody.AdminDivisions.AdminDivision.Children.Children()
                            if v != nil {
                                model.fromMap(v as! [String: Any])
                            }
                            tmp.append(model)
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

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("Children") && dict["Children"] != nil {
                    var model = QueryDomainAdminDivisionResponseBody.AdminDivisions.AdminDivision.Children()
                    model.fromMap(dict["Children"] as! [String: Any])
                    self.children = model
                }
                if dict.keys.contains("DivisionName") && dict["DivisionName"] != nil {
                    self.divisionName = dict["DivisionName"] as! String
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("AdminDivision") && dict["AdminDivision"] != nil {
                var tmp : [QueryDomainAdminDivisionResponseBody.AdminDivisions.AdminDivision] = []
                for v in dict["AdminDivision"] as! [Any] {
                    var model = QueryDomainAdminDivisionResponseBody.AdminDivisions.AdminDivision()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AdminDivisions") && dict["AdminDivisions"] != nil {
            var model = QueryDomainAdminDivisionResponseBody.AdminDivisions()
            model.fromMap(dict["AdminDivisions"] as! [String: Any])
            self.adminDivisions = model
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = QueryDomainAdminDivisionResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DomainName") && dict["DomainName"] != nil {
            self.domainName = dict["DomainName"] as! String
        }
        if dict.keys.contains("Lang") && dict["Lang"] != nil {
            self.lang = dict["Lang"] as! String
        }
        if dict.keys.contains("UserClientIp") && dict["UserClientIp"] != nil {
            self.userClientIp = dict["UserClientIp"] as! String
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Dns") && dict["Dns"] != nil {
                self.dns = dict["Dns"] as! [String]
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

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("Key") && dict["Key"] != nil {
                    self.key = dict["Key"] as! String
                }
                if dict.keys.contains("Vaue") && dict["Vaue"] != nil {
                    self.vaue = dict["Vaue"] as! String
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Tag") && dict["Tag"] != nil {
                var tmp : [QueryDomainByDomainNameResponseBody.Tag.Tag] = []
                for v in dict["Tag"] as! [Any] {
                    var model = QueryDomainByDomainNameResponseBody.Tag.Tag()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DnsList") && dict["DnsList"] != nil {
            var model = QueryDomainByDomainNameResponseBody.DnsList()
            model.fromMap(dict["DnsList"] as! [String: Any])
            self.dnsList = model
        }
        if dict.keys.contains("DomainGroupId") && dict["DomainGroupId"] != nil {
            self.domainGroupId = dict["DomainGroupId"] as! Int64
        }
        if dict.keys.contains("DomainGroupName") && dict["DomainGroupName"] != nil {
            self.domainGroupName = dict["DomainGroupName"] as! String
        }
        if dict.keys.contains("DomainName") && dict["DomainName"] != nil {
            self.domainName = dict["DomainName"] as! String
        }
        if dict.keys.contains("DomainNameProxyService") && dict["DomainNameProxyService"] != nil {
            self.domainNameProxyService = dict["DomainNameProxyService"] as! Bool
        }
        if dict.keys.contains("DomainNameVerificationStatus") && dict["DomainNameVerificationStatus"] != nil {
            self.domainNameVerificationStatus = dict["DomainNameVerificationStatus"] as! String
        }
        if dict.keys.contains("DomainStatus") && dict["DomainStatus"] != nil {
            self.domainStatus = dict["DomainStatus"] as! String
        }
        if dict.keys.contains("DomainType") && dict["DomainType"] != nil {
            self.domainType = dict["DomainType"] as! String
        }
        if dict.keys.contains("Email") && dict["Email"] != nil {
            self.email = dict["Email"] as! String
        }
        if dict.keys.contains("EmailVerificationClientHold") && dict["EmailVerificationClientHold"] != nil {
            self.emailVerificationClientHold = dict["EmailVerificationClientHold"] as! Bool
        }
        if dict.keys.contains("EmailVerificationStatus") && dict["EmailVerificationStatus"] != nil {
            self.emailVerificationStatus = dict["EmailVerificationStatus"] as! Int32
        }
        if dict.keys.contains("ExpirationCurrDateDiff") && dict["ExpirationCurrDateDiff"] != nil {
            self.expirationCurrDateDiff = dict["ExpirationCurrDateDiff"] as! Int32
        }
        if dict.keys.contains("ExpirationDate") && dict["ExpirationDate"] != nil {
            self.expirationDate = dict["ExpirationDate"] as! String
        }
        if dict.keys.contains("ExpirationDateLong") && dict["ExpirationDateLong"] != nil {
            self.expirationDateLong = dict["ExpirationDateLong"] as! Int64
        }
        if dict.keys.contains("ExpirationDateStatus") && dict["ExpirationDateStatus"] != nil {
            self.expirationDateStatus = dict["ExpirationDateStatus"] as! String
        }
        if dict.keys.contains("InstanceId") && dict["InstanceId"] != nil {
            self.instanceId = dict["InstanceId"] as! String
        }
        if dict.keys.contains("Premium") && dict["Premium"] != nil {
            self.premium = dict["Premium"] as! Bool
        }
        if dict.keys.contains("RealNameStatus") && dict["RealNameStatus"] != nil {
            self.realNameStatus = dict["RealNameStatus"] as! String
        }
        if dict.keys.contains("RegistrantName") && dict["RegistrantName"] != nil {
            self.registrantName = dict["RegistrantName"] as! String
        }
        if dict.keys.contains("RegistrantOrganization") && dict["RegistrantOrganization"] != nil {
            self.registrantOrganization = dict["RegistrantOrganization"] as! String
        }
        if dict.keys.contains("RegistrantType") && dict["RegistrantType"] != nil {
            self.registrantType = dict["RegistrantType"] as! String
        }
        if dict.keys.contains("RegistrantUpdatingStatus") && dict["RegistrantUpdatingStatus"] != nil {
            self.registrantUpdatingStatus = dict["RegistrantUpdatingStatus"] as! String
        }
        if dict.keys.contains("RegistrationDate") && dict["RegistrationDate"] != nil {
            self.registrationDate = dict["RegistrationDate"] as! String
        }
        if dict.keys.contains("RegistrationDateLong") && dict["RegistrationDateLong"] != nil {
            self.registrationDateLong = dict["RegistrationDateLong"] as! Int64
        }
        if dict.keys.contains("Remark") && dict["Remark"] != nil {
            self.remark = dict["Remark"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("ResourceGroupId") && dict["ResourceGroupId"] != nil {
            self.resourceGroupId = dict["ResourceGroupId"] as! String
        }
        if dict.keys.contains("Tag") && dict["Tag"] != nil {
            var model = QueryDomainByDomainNameResponseBody.Tag()
            model.fromMap(dict["Tag"] as! [String: Any])
            self.tag = model
        }
        if dict.keys.contains("TransferOutStatus") && dict["TransferOutStatus"] != nil {
            self.transferOutStatus = dict["TransferOutStatus"] as! String
        }
        if dict.keys.contains("TransferProhibitionLock") && dict["TransferProhibitionLock"] != nil {
            self.transferProhibitionLock = dict["TransferProhibitionLock"] as! String
        }
        if dict.keys.contains("UpdateProhibitionLock") && dict["UpdateProhibitionLock"] != nil {
            self.updateProhibitionLock = dict["UpdateProhibitionLock"] as! String
        }
        if dict.keys.contains("UserId") && dict["UserId"] != nil {
            self.userId = dict["UserId"] as! String
        }
        if dict.keys.contains("ZhRegistrantName") && dict["ZhRegistrantName"] != nil {
            self.zhRegistrantName = dict["ZhRegistrantName"] as! String
        }
        if dict.keys.contains("ZhRegistrantOrganization") && dict["ZhRegistrantOrganization"] != nil {
            self.zhRegistrantOrganization = dict["ZhRegistrantOrganization"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = QueryDomainByDomainNameResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("InstanceId") && dict["InstanceId"] != nil {
            self.instanceId = dict["InstanceId"] as! String
        }
        if dict.keys.contains("Lang") && dict["Lang"] != nil {
            self.lang = dict["Lang"] as! String
        }
        if dict.keys.contains("UserClientIp") && dict["UserClientIp"] != nil {
            self.userClientIp = dict["UserClientIp"] as! String
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Dns") && dict["Dns"] != nil {
                self.dns = dict["Dns"] as! [String]
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

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("Key") && dict["Key"] != nil {
                    self.key = dict["Key"] as! String
                }
                if dict.keys.contains("Value") && dict["Value"] != nil {
                    self.value = dict["Value"] as! String
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Tag") && dict["Tag"] != nil {
                var tmp : [QueryDomainByInstanceIdResponseBody.Tag.Tag] = []
                for v in dict["Tag"] as! [Any] {
                    var model = QueryDomainByInstanceIdResponseBody.Tag.Tag()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.tag = tmp
            }
        }
    }
    public var dnsList: QueryDomainByInstanceIdResponseBody.DnsList?

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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DnsList") && dict["DnsList"] != nil {
            var model = QueryDomainByInstanceIdResponseBody.DnsList()
            model.fromMap(dict["DnsList"] as! [String: Any])
            self.dnsList = model
        }
        if dict.keys.contains("DomainGroupId") && dict["DomainGroupId"] != nil {
            self.domainGroupId = dict["DomainGroupId"] as! Int64
        }
        if dict.keys.contains("DomainGroupName") && dict["DomainGroupName"] != nil {
            self.domainGroupName = dict["DomainGroupName"] as! String
        }
        if dict.keys.contains("DomainName") && dict["DomainName"] != nil {
            self.domainName = dict["DomainName"] as! String
        }
        if dict.keys.contains("DomainNameProxyService") && dict["DomainNameProxyService"] != nil {
            self.domainNameProxyService = dict["DomainNameProxyService"] as! Bool
        }
        if dict.keys.contains("DomainNameVerificationStatus") && dict["DomainNameVerificationStatus"] != nil {
            self.domainNameVerificationStatus = dict["DomainNameVerificationStatus"] as! String
        }
        if dict.keys.contains("DomainStatus") && dict["DomainStatus"] != nil {
            self.domainStatus = dict["DomainStatus"] as! String
        }
        if dict.keys.contains("DomainType") && dict["DomainType"] != nil {
            self.domainType = dict["DomainType"] as! String
        }
        if dict.keys.contains("Email") && dict["Email"] != nil {
            self.email = dict["Email"] as! String
        }
        if dict.keys.contains("EmailVerificationClientHold") && dict["EmailVerificationClientHold"] != nil {
            self.emailVerificationClientHold = dict["EmailVerificationClientHold"] as! Bool
        }
        if dict.keys.contains("EmailVerificationStatus") && dict["EmailVerificationStatus"] != nil {
            self.emailVerificationStatus = dict["EmailVerificationStatus"] as! Int32
        }
        if dict.keys.contains("ExpirationCurrDateDiff") && dict["ExpirationCurrDateDiff"] != nil {
            self.expirationCurrDateDiff = dict["ExpirationCurrDateDiff"] as! Int32
        }
        if dict.keys.contains("ExpirationDate") && dict["ExpirationDate"] != nil {
            self.expirationDate = dict["ExpirationDate"] as! String
        }
        if dict.keys.contains("ExpirationDateLong") && dict["ExpirationDateLong"] != nil {
            self.expirationDateLong = dict["ExpirationDateLong"] as! Int64
        }
        if dict.keys.contains("ExpirationDateStatus") && dict["ExpirationDateStatus"] != nil {
            self.expirationDateStatus = dict["ExpirationDateStatus"] as! String
        }
        if dict.keys.contains("InstanceId") && dict["InstanceId"] != nil {
            self.instanceId = dict["InstanceId"] as! String
        }
        if dict.keys.contains("Premium") && dict["Premium"] != nil {
            self.premium = dict["Premium"] as! Bool
        }
        if dict.keys.contains("RealNameStatus") && dict["RealNameStatus"] != nil {
            self.realNameStatus = dict["RealNameStatus"] as! String
        }
        if dict.keys.contains("RegistrantName") && dict["RegistrantName"] != nil {
            self.registrantName = dict["RegistrantName"] as! String
        }
        if dict.keys.contains("RegistrantOrganization") && dict["RegistrantOrganization"] != nil {
            self.registrantOrganization = dict["RegistrantOrganization"] as! String
        }
        if dict.keys.contains("RegistrantType") && dict["RegistrantType"] != nil {
            self.registrantType = dict["RegistrantType"] as! String
        }
        if dict.keys.contains("RegistrantUpdatingStatus") && dict["RegistrantUpdatingStatus"] != nil {
            self.registrantUpdatingStatus = dict["RegistrantUpdatingStatus"] as! String
        }
        if dict.keys.contains("RegistrationDate") && dict["RegistrationDate"] != nil {
            self.registrationDate = dict["RegistrationDate"] as! String
        }
        if dict.keys.contains("RegistrationDateLong") && dict["RegistrationDateLong"] != nil {
            self.registrationDateLong = dict["RegistrationDateLong"] as! Int64
        }
        if dict.keys.contains("Remark") && dict["Remark"] != nil {
            self.remark = dict["Remark"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("ResourceGroupId") && dict["ResourceGroupId"] != nil {
            self.resourceGroupId = dict["ResourceGroupId"] as! String
        }
        if dict.keys.contains("Tag") && dict["Tag"] != nil {
            var model = QueryDomainByInstanceIdResponseBody.Tag()
            model.fromMap(dict["Tag"] as! [String: Any])
            self.tag = model
        }
        if dict.keys.contains("TransferOutStatus") && dict["TransferOutStatus"] != nil {
            self.transferOutStatus = dict["TransferOutStatus"] as! String
        }
        if dict.keys.contains("TransferProhibitionLock") && dict["TransferProhibitionLock"] != nil {
            self.transferProhibitionLock = dict["TransferProhibitionLock"] as! String
        }
        if dict.keys.contains("UpdateProhibitionLock") && dict["UpdateProhibitionLock"] != nil {
            self.updateProhibitionLock = dict["UpdateProhibitionLock"] as! String
        }
        if dict.keys.contains("UserId") && dict["UserId"] != nil {
            self.userId = dict["UserId"] as! String
        }
        if dict.keys.contains("ZhRegistrantName") && dict["ZhRegistrantName"] != nil {
            self.zhRegistrantName = dict["ZhRegistrantName"] as! String
        }
        if dict.keys.contains("ZhRegistrantOrganization") && dict["ZhRegistrantOrganization"] != nil {
            self.zhRegistrantOrganization = dict["ZhRegistrantOrganization"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = QueryDomainByInstanceIdResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DomainGroupName") && dict["DomainGroupName"] != nil {
            self.domainGroupName = dict["DomainGroupName"] as! String
        }
        if dict.keys.contains("Lang") && dict["Lang"] != nil {
            self.lang = dict["Lang"] as! String
        }
        if dict.keys.contains("ShowDeletingGroup") && dict["ShowDeletingGroup"] != nil {
            self.showDeletingGroup = dict["ShowDeletingGroup"] as! Bool
        }
        if dict.keys.contains("UserClientIp") && dict["UserClientIp"] != nil {
            self.userClientIp = dict["UserClientIp"] as! String
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

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("BeingDeleted") && dict["BeingDeleted"] != nil {
                    self.beingDeleted = dict["BeingDeleted"] as! Bool
                }
                if dict.keys.contains("CreationDate") && dict["CreationDate"] != nil {
                    self.creationDate = dict["CreationDate"] as! String
                }
                if dict.keys.contains("DomainGroupId") && dict["DomainGroupId"] != nil {
                    self.domainGroupId = dict["DomainGroupId"] as! String
                }
                if dict.keys.contains("DomainGroupName") && dict["DomainGroupName"] != nil {
                    self.domainGroupName = dict["DomainGroupName"] as! String
                }
                if dict.keys.contains("DomainGroupStatus") && dict["DomainGroupStatus"] != nil {
                    self.domainGroupStatus = dict["DomainGroupStatus"] as! String
                }
                if dict.keys.contains("ModificationDate") && dict["ModificationDate"] != nil {
                    self.modificationDate = dict["ModificationDate"] as! String
                }
                if dict.keys.contains("TotalNumber") && dict["TotalNumber"] != nil {
                    self.totalNumber = dict["TotalNumber"] as! Int32
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("DomainGroup") && dict["DomainGroup"] != nil {
                var tmp : [QueryDomainGroupListResponseBody.Data.DomainGroup] = []
                for v in dict["DomainGroup"] as! [Any] {
                    var model = QueryDomainGroupListResponseBody.Data.DomainGroup()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Data") && dict["Data"] != nil {
            var model = QueryDomainGroupListResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = QueryDomainGroupListResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Key") && dict["Key"] != nil {
                self.key = dict["Key"] as! String
            }
            if dict.keys.contains("Value") && dict["Value"] != nil {
                self.value = dict["Value"] as! String
            }
        }
    }
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DomainGroupId") && dict["DomainGroupId"] != nil {
            self.domainGroupId = dict["DomainGroupId"] as! String
        }
        if dict.keys.contains("DomainName") && dict["DomainName"] != nil {
            self.domainName = dict["DomainName"] as! String
        }
        if dict.keys.contains("EndExpirationDate") && dict["EndExpirationDate"] != nil {
            self.endExpirationDate = dict["EndExpirationDate"] as! Int64
        }
        if dict.keys.contains("EndRegistrationDate") && dict["EndRegistrationDate"] != nil {
            self.endRegistrationDate = dict["EndRegistrationDate"] as! Int64
        }
        if dict.keys.contains("Lang") && dict["Lang"] != nil {
            self.lang = dict["Lang"] as! String
        }
        if dict.keys.contains("OrderByType") && dict["OrderByType"] != nil {
            self.orderByType = dict["OrderByType"] as! String
        }
        if dict.keys.contains("OrderKeyType") && dict["OrderKeyType"] != nil {
            self.orderKeyType = dict["OrderKeyType"] as! String
        }
        if dict.keys.contains("PageNum") && dict["PageNum"] != nil {
            self.pageNum = dict["PageNum"] as! Int32
        }
        if dict.keys.contains("PageSize") && dict["PageSize"] != nil {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("ProductDomainType") && dict["ProductDomainType"] != nil {
            self.productDomainType = dict["ProductDomainType"] as! String
        }
        if dict.keys.contains("QueryType") && dict["QueryType"] != nil {
            self.queryType = dict["QueryType"] as! String
        }
        if dict.keys.contains("ResourceGroupId") && dict["ResourceGroupId"] != nil {
            self.resourceGroupId = dict["ResourceGroupId"] as! String
        }
        if dict.keys.contains("StartExpirationDate") && dict["StartExpirationDate"] != nil {
            self.startExpirationDate = dict["StartExpirationDate"] as! Int64
        }
        if dict.keys.contains("StartRegistrationDate") && dict["StartRegistrationDate"] != nil {
            self.startRegistrationDate = dict["StartRegistrationDate"] as! Int64
        }
        if dict.keys.contains("Tag") && dict["Tag"] != nil {
            var tmp : [QueryDomainListRequest.Tag] = []
            for v in dict["Tag"] as! [Any] {
                var model = QueryDomainListRequest.Tag()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.tag = tmp
        }
        if dict.keys.contains("UserClientIp") && dict["UserClientIp"] != nil {
            self.userClientIp = dict["UserClientIp"] as! String
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

                    public override func fromMap(_ dict: [String: Any]) -> Void {
                        if dict.keys.contains("Key") && dict["Key"] != nil {
                            self.key = dict["Key"] as! String
                        }
                        if dict.keys.contains("Value") && dict["Value"] != nil {
                            self.value = dict["Value"] as! String
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

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("Tag") && dict["Tag"] != nil {
                        var tmp : [QueryDomainListResponseBody.Data.Domain.Tag.Tag] = []
                        for v in dict["Tag"] as! [Any] {
                            var model = QueryDomainListResponseBody.Data.Domain.Tag.Tag()
                            if v != nil {
                                model.fromMap(v as! [String: Any])
                            }
                            tmp.append(model)
                        }
                        self.tag = tmp
                    }
                }
            }
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

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("DomainAuditStatus") && dict["DomainAuditStatus"] != nil {
                    self.domainAuditStatus = dict["DomainAuditStatus"] as! String
                }
                if dict.keys.contains("DomainGroupId") && dict["DomainGroupId"] != nil {
                    self.domainGroupId = dict["DomainGroupId"] as! String
                }
                if dict.keys.contains("DomainGroupName") && dict["DomainGroupName"] != nil {
                    self.domainGroupName = dict["DomainGroupName"] as! String
                }
                if dict.keys.contains("DomainName") && dict["DomainName"] != nil {
                    self.domainName = dict["DomainName"] as! String
                }
                if dict.keys.contains("DomainStatus") && dict["DomainStatus"] != nil {
                    self.domainStatus = dict["DomainStatus"] as! String
                }
                if dict.keys.contains("DomainType") && dict["DomainType"] != nil {
                    self.domainType = dict["DomainType"] as! String
                }
                if dict.keys.contains("ExpirationCurrDateDiff") && dict["ExpirationCurrDateDiff"] != nil {
                    self.expirationCurrDateDiff = dict["ExpirationCurrDateDiff"] as! Int32
                }
                if dict.keys.contains("ExpirationDate") && dict["ExpirationDate"] != nil {
                    self.expirationDate = dict["ExpirationDate"] as! String
                }
                if dict.keys.contains("ExpirationDateLong") && dict["ExpirationDateLong"] != nil {
                    self.expirationDateLong = dict["ExpirationDateLong"] as! Int64
                }
                if dict.keys.contains("ExpirationDateStatus") && dict["ExpirationDateStatus"] != nil {
                    self.expirationDateStatus = dict["ExpirationDateStatus"] as! String
                }
                if dict.keys.contains("InstanceId") && dict["InstanceId"] != nil {
                    self.instanceId = dict["InstanceId"] as! String
                }
                if dict.keys.contains("Premium") && dict["Premium"] != nil {
                    self.premium = dict["Premium"] as! Bool
                }
                if dict.keys.contains("ProductId") && dict["ProductId"] != nil {
                    self.productId = dict["ProductId"] as! String
                }
                if dict.keys.contains("RegistrantType") && dict["RegistrantType"] != nil {
                    self.registrantType = dict["RegistrantType"] as! String
                }
                if dict.keys.contains("RegistrationDate") && dict["RegistrationDate"] != nil {
                    self.registrationDate = dict["RegistrationDate"] as! String
                }
                if dict.keys.contains("RegistrationDateLong") && dict["RegistrationDateLong"] != nil {
                    self.registrationDateLong = dict["RegistrationDateLong"] as! Int64
                }
                if dict.keys.contains("Remark") && dict["Remark"] != nil {
                    self.remark = dict["Remark"] as! String
                }
                if dict.keys.contains("ResourceGroupId") && dict["ResourceGroupId"] != nil {
                    self.resourceGroupId = dict["ResourceGroupId"] as! String
                }
                if dict.keys.contains("Tag") && dict["Tag"] != nil {
                    var model = QueryDomainListResponseBody.Data.Domain.Tag()
                    model.fromMap(dict["Tag"] as! [String: Any])
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Domain") && dict["Domain"] != nil {
                var tmp : [QueryDomainListResponseBody.Data.Domain] = []
                for v in dict["Domain"] as! [Any] {
                    var model = QueryDomainListResponseBody.Data.Domain()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("CurrentPageNum") && dict["CurrentPageNum"] != nil {
            self.currentPageNum = dict["CurrentPageNum"] as! Int32
        }
        if dict.keys.contains("Data") && dict["Data"] != nil {
            var model = QueryDomainListResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("NextPage") && dict["NextPage"] != nil {
            self.nextPage = dict["NextPage"] as! Bool
        }
        if dict.keys.contains("PageSize") && dict["PageSize"] != nil {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("PrePage") && dict["PrePage"] != nil {
            self.prePage = dict["PrePage"] as! Bool
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("TotalItemNum") && dict["TotalItemNum"] != nil {
            self.totalItemNum = dict["TotalItemNum"] as! Int32
        }
        if dict.keys.contains("TotalPageNum") && dict["TotalPageNum"] != nil {
            self.totalPageNum = dict["TotalPageNum"] as! Int32
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = QueryDomainListResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DomainName") && dict["DomainName"] != nil {
            self.domainName = dict["DomainName"] as! String
        }
        if dict.keys.contains("FetchImage") && dict["FetchImage"] != nil {
            self.fetchImage = dict["FetchImage"] as! Bool
        }
        if dict.keys.contains("Lang") && dict["Lang"] != nil {
            self.lang = dict["Lang"] as! String
        }
        if dict.keys.contains("UserClientIp") && dict["UserClientIp"] != nil {
            self.userClientIp = dict["UserClientIp"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DomainName") && dict["DomainName"] != nil {
            self.domainName = dict["DomainName"] as! String
        }
        if dict.keys.contains("IdentityCredential") && dict["IdentityCredential"] != nil {
            self.identityCredential = dict["IdentityCredential"] as! String
        }
        if dict.keys.contains("IdentityCredentialNo") && dict["IdentityCredentialNo"] != nil {
            self.identityCredentialNo = dict["IdentityCredentialNo"] as! String
        }
        if dict.keys.contains("IdentityCredentialType") && dict["IdentityCredentialType"] != nil {
            self.identityCredentialType = dict["IdentityCredentialType"] as! String
        }
        if dict.keys.contains("IdentityCredentialUrl") && dict["IdentityCredentialUrl"] != nil {
            self.identityCredentialUrl = dict["IdentityCredentialUrl"] as! String
        }
        if dict.keys.contains("InstanceId") && dict["InstanceId"] != nil {
            self.instanceId = dict["InstanceId"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("SubmissionDate") && dict["SubmissionDate"] != nil {
            self.submissionDate = dict["SubmissionDate"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = QueryDomainRealNameVerificationInfoResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("BizId") && dict["BizId"] != nil {
            self.bizId = dict["BizId"] as! Int64
        }
        if dict.keys.contains("UserClientIp") && dict["UserClientIp"] != nil {
            self.userClientIp = dict["UserClientIp"] as! String
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

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("BizId") && dict["BizId"] != nil {
                    self.bizId = dict["BizId"] as! Int64
                }
                if dict.keys.contains("CCity") && dict["CCity"] != nil {
                    self.CCity = dict["CCity"] as! String
                }
                if dict.keys.contains("CCompany") && dict["CCompany"] != nil {
                    self.CCompany = dict["CCompany"] as! String
                }
                if dict.keys.contains("CCountry") && dict["CCountry"] != nil {
                    self.CCountry = dict["CCountry"] as! String
                }
                if dict.keys.contains("CName") && dict["CName"] != nil {
                    self.CName = dict["CName"] as! String
                }
                if dict.keys.contains("CProvince") && dict["CProvince"] != nil {
                    self.CProvince = dict["CProvince"] as! String
                }
                if dict.keys.contains("CVenu") && dict["CVenu"] != nil {
                    self.CVenu = dict["CVenu"] as! String
                }
                if dict.keys.contains("ECity") && dict["ECity"] != nil {
                    self.ECity = dict["ECity"] as! String
                }
                if dict.keys.contains("ECompany") && dict["ECompany"] != nil {
                    self.ECompany = dict["ECompany"] as! String
                }
                if dict.keys.contains("EName") && dict["EName"] != nil {
                    self.EName = dict["EName"] as! String
                }
                if dict.keys.contains("EProvince") && dict["EProvince"] != nil {
                    self.EProvince = dict["EProvince"] as! String
                }
                if dict.keys.contains("EVenu") && dict["EVenu"] != nil {
                    self.EVenu = dict["EVenu"] as! String
                }
                if dict.keys.contains("Email") && dict["Email"] != nil {
                    self.email = dict["Email"] as! String
                }
                if dict.keys.contains("Extend") && dict["Extend"] != nil {
                    self.extend = dict["Extend"] as! String
                }
                if dict.keys.contains("FaxArea") && dict["FaxArea"] != nil {
                    self.faxArea = dict["FaxArea"] as! String
                }
                if dict.keys.contains("FaxExt") && dict["FaxExt"] != nil {
                    self.faxExt = dict["FaxExt"] as! String
                }
                if dict.keys.contains("FaxMain") && dict["FaxMain"] != nil {
                    self.faxMain = dict["FaxMain"] as! String
                }
                if dict.keys.contains("Mobile") && dict["Mobile"] != nil {
                    self.mobile = dict["Mobile"] as! String
                }
                if dict.keys.contains("Postalcode") && dict["Postalcode"] != nil {
                    self.postalcode = dict["Postalcode"] as! String
                }
                if dict.keys.contains("RegType") && dict["RegType"] != nil {
                    self.regType = dict["RegType"] as! Int32
                }
                if dict.keys.contains("RegistrantId") && dict["RegistrantId"] != nil {
                    self.registrantId = dict["RegistrantId"] as! String
                }
                if dict.keys.contains("TelArea") && dict["TelArea"] != nil {
                    self.telArea = dict["TelArea"] as! String
                }
                if dict.keys.contains("TelExt") && dict["TelExt"] != nil {
                    self.telExt = dict["TelExt"] as! String
                }
                if dict.keys.contains("TelMain") && dict["TelMain"] != nil {
                    self.telMain = dict["TelMain"] as! String
                }
                if dict.keys.contains("VspContactId") && dict["VspContactId"] != nil {
                    self.vspContactId = dict["VspContactId"] as! String
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

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("BizId") && dict["BizId"] != nil {
                    self.bizId = dict["BizId"] as! Int64
                }
                if dict.keys.contains("CredentialNo") && dict["CredentialNo"] != nil {
                    self.credentialNo = dict["CredentialNo"] as! String
                }
                if dict.keys.contains("CredentialType") && dict["CredentialType"] != nil {
                    self.credentialType = dict["CredentialType"] as! String
                }
                if dict.keys.contains("CredentialUrl") && dict["CredentialUrl"] != nil {
                    self.credentialUrl = dict["CredentialUrl"] as! String
                }
                if dict.keys.contains("DomainName") && dict["DomainName"] != nil {
                    self.domainName = dict["DomainName"] as! String
                }
                if dict.keys.contains("HolderCert") && dict["HolderCert"] != nil {
                    self.holderCert = dict["HolderCert"] as! Int32
                }
                if dict.keys.contains("SaleId") && dict["SaleId"] != nil {
                    self.saleId = dict["SaleId"] as! String
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

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("ActionType") && dict["ActionType"] != nil {
                    self.actionType = dict["ActionType"] as! String
                }
                if dict.keys.contains("OrderAmount") && dict["OrderAmount"] != nil {
                    self.orderAmount = dict["OrderAmount"] as! Double
                }
                if dict.keys.contains("OrderCurrency") && dict["OrderCurrency"] != nil {
                    self.orderCurrency = dict["OrderCurrency"] as! String
                }
                if dict.keys.contains("OrderId") && dict["OrderId"] != nil {
                    self.orderId = dict["OrderId"] as! String
                }
                if dict.keys.contains("OrderStatus") && dict["OrderStatus"] != nil {
                    self.orderStatus = dict["OrderStatus"] as! String
                }
                if dict.keys.contains("OrderTime") && dict["OrderTime"] != nil {
                    self.orderTime = dict["OrderTime"] as! String
                }
                if dict.keys.contains("OrderYear") && dict["OrderYear"] != nil {
                    self.orderYear = dict["OrderYear"] as! Int32
                }
                if dict.keys.contains("SaleId") && dict["SaleId"] != nil {
                    self.saleId = dict["SaleId"] as! String
                }
                if dict.keys.contains("SubOrderId") && dict["SubOrderId"] != nil {
                    self.subOrderId = dict["SubOrderId"] as! String
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("AuditMsg") && dict["AuditMsg"] != nil {
                self.auditMsg = dict["AuditMsg"] as! String
            }
            if dict.keys.contains("BizName") && dict["BizName"] != nil {
                self.bizName = dict["BizName"] as! String
            }
            if dict.keys.contains("BizNo") && dict["BizNo"] != nil {
                self.bizNo = dict["BizNo"] as! String
            }
            if dict.keys.contains("BizStatus") && dict["BizStatus"] != nil {
                self.bizStatus = dict["BizStatus"] as! String
            }
            if dict.keys.contains("BizType") && dict["BizType"] != nil {
                self.bizType = dict["BizType"] as! String
            }
            if dict.keys.contains("CreateTime") && dict["CreateTime"] != nil {
                self.createTime = dict["CreateTime"] as! Int64
            }
            if dict.keys.contains("DomainName") && dict["DomainName"] != nil {
                self.domainName = dict["DomainName"] as! String
            }
            if dict.keys.contains("DomainSpecialBizContact") && dict["DomainSpecialBizContact"] != nil {
                var model = QueryDomainSpecialBizDetailResponseBody.Module.DomainSpecialBizContact()
                model.fromMap(dict["DomainSpecialBizContact"] as! [String: Any])
                self.domainSpecialBizContact = model
            }
            if dict.keys.contains("DomainSpecialBizCredentials") && dict["DomainSpecialBizCredentials"] != nil {
                var tmp : [QueryDomainSpecialBizDetailResponseBody.Module.DomainSpecialBizCredentials] = []
                for v in dict["DomainSpecialBizCredentials"] as! [Any] {
                    var model = QueryDomainSpecialBizDetailResponseBody.Module.DomainSpecialBizCredentials()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.domainSpecialBizCredentials = tmp
            }
            if dict.keys.contains("DomainSpecialOrderResult") && dict["DomainSpecialOrderResult"] != nil {
                var model = QueryDomainSpecialBizDetailResponseBody.Module.DomainSpecialOrderResult()
                model.fromMap(dict["DomainSpecialOrderResult"] as! [String: Any])
                self.domainSpecialOrderResult = model
            }
            if dict.keys.contains("GmtCreate") && dict["GmtCreate"] != nil {
                self.gmtCreate = dict["GmtCreate"] as! String
            }
            if dict.keys.contains("GmtModified") && dict["GmtModified"] != nil {
                self.gmtModified = dict["GmtModified"] as! String
            }
            if dict.keys.contains("Id") && dict["Id"] != nil {
                self.id = dict["Id"] as! Int64
            }
            if dict.keys.contains("OrderId") && dict["OrderId"] != nil {
                self.orderId = dict["OrderId"] as! String
            }
            if dict.keys.contains("ProductId") && dict["ProductId"] != nil {
                self.productId = dict["ProductId"] as! String
            }
            if dict.keys.contains("SaleId") && dict["SaleId"] != nil {
                self.saleId = dict["SaleId"] as! String
            }
            if dict.keys.contains("Status") && dict["Status"] != nil {
                self.status = dict["Status"] as! Int32
            }
            if dict.keys.contains("StatusDesc") && dict["StatusDesc"] != nil {
                self.statusDesc = dict["StatusDesc"] as! String
            }
            if dict.keys.contains("UpdateTime") && dict["UpdateTime"] != nil {
                self.updateTime = dict["UpdateTime"] as! Int64
            }
            if dict.keys.contains("UserId") && dict["UserId"] != nil {
                self.userId = dict["UserId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AllowRetry") && dict["AllowRetry"] != nil {
            self.allowRetry = dict["AllowRetry"] as! Bool
        }
        if dict.keys.contains("AppName") && dict["AppName"] != nil {
            self.appName = dict["AppName"] as! String
        }
        if dict.keys.contains("DynamicCode") && dict["DynamicCode"] != nil {
            self.dynamicCode = dict["DynamicCode"] as! String
        }
        if dict.keys.contains("DynamicMessage") && dict["DynamicMessage"] != nil {
            self.dynamicMessage = dict["DynamicMessage"] as! String
        }
        if dict.keys.contains("ErrorArgs") && dict["ErrorArgs"] != nil {
            self.errorArgs = dict["ErrorArgs"] as! [Any]
        }
        if dict.keys.contains("ErrorCode") && dict["ErrorCode"] != nil {
            self.errorCode = dict["ErrorCode"] as! String
        }
        if dict.keys.contains("ErrorMsg") && dict["ErrorMsg"] != nil {
            self.errorMsg = dict["ErrorMsg"] as! String
        }
        if dict.keys.contains("HttpStatusCode") && dict["HttpStatusCode"] != nil {
            self.httpStatusCode = dict["HttpStatusCode"] as! Int32
        }
        if dict.keys.contains("Module") && dict["Module"] != nil {
            var model = QueryDomainSpecialBizDetailResponseBody.Module()
            model.fromMap(dict["Module"] as! [String: Any])
            self.module = model
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") && dict["Success"] != nil {
            self.success = dict["Success"] as! Bool
        }
        if dict.keys.contains("Synchro") && dict["Synchro"] != nil {
            self.synchro = dict["Synchro"] as! Bool
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = QueryDomainSpecialBizDetailResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("BizType") && dict["BizType"] != nil {
            self.bizType = dict["BizType"] as! String
        }
        if dict.keys.contains("DomainName") && dict["DomainName"] != nil {
            self.domainName = dict["DomainName"] as! String
        }
        if dict.keys.contains("UserClientIp") && dict["UserClientIp"] != nil {
            self.userClientIp = dict["UserClientIp"] as! String
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

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("BizId") && dict["BizId"] != nil {
                    self.bizId = dict["BizId"] as! Int64
                }
                if dict.keys.contains("CCity") && dict["CCity"] != nil {
                    self.CCity = dict["CCity"] as! String
                }
                if dict.keys.contains("CCompany") && dict["CCompany"] != nil {
                    self.CCompany = dict["CCompany"] as! String
                }
                if dict.keys.contains("CCountry") && dict["CCountry"] != nil {
                    self.CCountry = dict["CCountry"] as! String
                }
                if dict.keys.contains("CName") && dict["CName"] != nil {
                    self.CName = dict["CName"] as! String
                }
                if dict.keys.contains("CProvince") && dict["CProvince"] != nil {
                    self.CProvince = dict["CProvince"] as! String
                }
                if dict.keys.contains("CVenu") && dict["CVenu"] != nil {
                    self.CVenu = dict["CVenu"] as! String
                }
                if dict.keys.contains("ECity") && dict["ECity"] != nil {
                    self.ECity = dict["ECity"] as! String
                }
                if dict.keys.contains("ECompany") && dict["ECompany"] != nil {
                    self.ECompany = dict["ECompany"] as! String
                }
                if dict.keys.contains("EName") && dict["EName"] != nil {
                    self.EName = dict["EName"] as! String
                }
                if dict.keys.contains("EProvince") && dict["EProvince"] != nil {
                    self.EProvince = dict["EProvince"] as! String
                }
                if dict.keys.contains("EVenu") && dict["EVenu"] != nil {
                    self.EVenu = dict["EVenu"] as! String
                }
                if dict.keys.contains("Email") && dict["Email"] != nil {
                    self.email = dict["Email"] as! String
                }
                if dict.keys.contains("Extend") && dict["Extend"] != nil {
                    self.extend = dict["Extend"] as! String
                }
                if dict.keys.contains("FaxArea") && dict["FaxArea"] != nil {
                    self.faxArea = dict["FaxArea"] as! String
                }
                if dict.keys.contains("FaxExt") && dict["FaxExt"] != nil {
                    self.faxExt = dict["FaxExt"] as! String
                }
                if dict.keys.contains("FaxMain") && dict["FaxMain"] != nil {
                    self.faxMain = dict["FaxMain"] as! String
                }
                if dict.keys.contains("Mobile") && dict["Mobile"] != nil {
                    self.mobile = dict["Mobile"] as! String
                }
                if dict.keys.contains("Postalcode") && dict["Postalcode"] != nil {
                    self.postalcode = dict["Postalcode"] as! String
                }
                if dict.keys.contains("RegType") && dict["RegType"] != nil {
                    self.regType = dict["RegType"] as! Int32
                }
                if dict.keys.contains("RegistrantId") && dict["RegistrantId"] != nil {
                    self.registrantId = dict["RegistrantId"] as! String
                }
                if dict.keys.contains("TelArea") && dict["TelArea"] != nil {
                    self.telArea = dict["TelArea"] as! String
                }
                if dict.keys.contains("TelExt") && dict["TelExt"] != nil {
                    self.telExt = dict["TelExt"] as! String
                }
                if dict.keys.contains("TelMain") && dict["TelMain"] != nil {
                    self.telMain = dict["TelMain"] as! String
                }
                if dict.keys.contains("VspContactId") && dict["VspContactId"] != nil {
                    self.vspContactId = dict["VspContactId"] as! String
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

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("BizId") && dict["BizId"] != nil {
                    self.bizId = dict["BizId"] as! Int64
                }
                if dict.keys.contains("CredentialNo") && dict["CredentialNo"] != nil {
                    self.credentialNo = dict["CredentialNo"] as! String
                }
                if dict.keys.contains("CredentialType") && dict["CredentialType"] != nil {
                    self.credentialType = dict["CredentialType"] as! String
                }
                if dict.keys.contains("CredentialUrl") && dict["CredentialUrl"] != nil {
                    self.credentialUrl = dict["CredentialUrl"] as! String
                }
                if dict.keys.contains("DomainName") && dict["DomainName"] != nil {
                    self.domainName = dict["DomainName"] as! String
                }
                if dict.keys.contains("HolderCert") && dict["HolderCert"] != nil {
                    self.holderCert = dict["HolderCert"] as! Int32
                }
                if dict.keys.contains("SaleId") && dict["SaleId"] != nil {
                    self.saleId = dict["SaleId"] as! String
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("AuditMsg") && dict["AuditMsg"] != nil {
                self.auditMsg = dict["AuditMsg"] as! String
            }
            if dict.keys.contains("BizName") && dict["BizName"] != nil {
                self.bizName = dict["BizName"] as! String
            }
            if dict.keys.contains("BizNo") && dict["BizNo"] != nil {
                self.bizNo = dict["BizNo"] as! String
            }
            if dict.keys.contains("BizStatus") && dict["BizStatus"] != nil {
                self.bizStatus = dict["BizStatus"] as! String
            }
            if dict.keys.contains("BizType") && dict["BizType"] != nil {
                self.bizType = dict["BizType"] as! String
            }
            if dict.keys.contains("CreateTime") && dict["CreateTime"] != nil {
                self.createTime = dict["CreateTime"] as! Int64
            }
            if dict.keys.contains("DomainName") && dict["DomainName"] != nil {
                self.domainName = dict["DomainName"] as! String
            }
            if dict.keys.contains("DomainSpecialBizContact") && dict["DomainSpecialBizContact"] != nil {
                var model = QueryDomainSpecialBizInfoByDomainResponseBody.Module.DomainSpecialBizContact()
                model.fromMap(dict["DomainSpecialBizContact"] as! [String: Any])
                self.domainSpecialBizContact = model
            }
            if dict.keys.contains("DomainSpecialBizCredentials") && dict["DomainSpecialBizCredentials"] != nil {
                var tmp : [QueryDomainSpecialBizInfoByDomainResponseBody.Module.DomainSpecialBizCredentials] = []
                for v in dict["DomainSpecialBizCredentials"] as! [Any] {
                    var model = QueryDomainSpecialBizInfoByDomainResponseBody.Module.DomainSpecialBizCredentials()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.domainSpecialBizCredentials = tmp
            }
            if dict.keys.contains("GmtCreate") && dict["GmtCreate"] != nil {
                self.gmtCreate = dict["GmtCreate"] as! String
            }
            if dict.keys.contains("GmtModified") && dict["GmtModified"] != nil {
                self.gmtModified = dict["GmtModified"] as! String
            }
            if dict.keys.contains("Id") && dict["Id"] != nil {
                self.id = dict["Id"] as! Int64
            }
            if dict.keys.contains("OrderId") && dict["OrderId"] != nil {
                self.orderId = dict["OrderId"] as! String
            }
            if dict.keys.contains("ProductId") && dict["ProductId"] != nil {
                self.productId = dict["ProductId"] as! String
            }
            if dict.keys.contains("SaleId") && dict["SaleId"] != nil {
                self.saleId = dict["SaleId"] as! String
            }
            if dict.keys.contains("Status") && dict["Status"] != nil {
                self.status = dict["Status"] as! Int32
            }
            if dict.keys.contains("StatusDesc") && dict["StatusDesc"] != nil {
                self.statusDesc = dict["StatusDesc"] as! String
            }
            if dict.keys.contains("UpdateTime") && dict["UpdateTime"] != nil {
                self.updateTime = dict["UpdateTime"] as! Int64
            }
            if dict.keys.contains("UserId") && dict["UserId"] != nil {
                self.userId = dict["UserId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AllowRetry") && dict["AllowRetry"] != nil {
            self.allowRetry = dict["AllowRetry"] as! Bool
        }
        if dict.keys.contains("AppName") && dict["AppName"] != nil {
            self.appName = dict["AppName"] as! String
        }
        if dict.keys.contains("DynamicCode") && dict["DynamicCode"] != nil {
            self.dynamicCode = dict["DynamicCode"] as! String
        }
        if dict.keys.contains("DynamicMessage") && dict["DynamicMessage"] != nil {
            self.dynamicMessage = dict["DynamicMessage"] as! String
        }
        if dict.keys.contains("ErrorArgs") && dict["ErrorArgs"] != nil {
            self.errorArgs = dict["ErrorArgs"] as! [Any]
        }
        if dict.keys.contains("ErrorCode") && dict["ErrorCode"] != nil {
            self.errorCode = dict["ErrorCode"] as! String
        }
        if dict.keys.contains("ErrorMsg") && dict["ErrorMsg"] != nil {
            self.errorMsg = dict["ErrorMsg"] as! String
        }
        if dict.keys.contains("HttpStatusCode") && dict["HttpStatusCode"] != nil {
            self.httpStatusCode = dict["HttpStatusCode"] as! Int32
        }
        if dict.keys.contains("Module") && dict["Module"] != nil {
            var model = QueryDomainSpecialBizInfoByDomainResponseBody.Module()
            model.fromMap(dict["Module"] as! [String: Any])
            self.module = model
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") && dict["Success"] != nil {
            self.success = dict["Success"] as! Bool
        }
        if dict.keys.contains("Synchro") && dict["Synchro"] != nil {
            self.synchro = dict["Synchro"] as! Bool
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = QueryDomainSpecialBizInfoByDomainResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Lang") && dict["Lang"] != nil {
            self.lang = dict["Lang"] as! String
        }
        if dict.keys.contains("UserClientIp") && dict["UserClientIp"] != nil {
            self.userClientIp = dict["UserClientIp"] as! String
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Suffix") && dict["Suffix"] != nil {
                self.suffix = dict["Suffix"] as! [String]
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("SuffixList") && dict["SuffixList"] != nil {
            var model = QueryDomainSuffixResponseBody.SuffixList()
            model.fromMap(dict["SuffixList"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = QueryDomainSuffixResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Email") && dict["Email"] != nil {
            self.email = dict["Email"] as! String
        }
        if dict.keys.contains("Lang") && dict["Lang"] != nil {
            self.lang = dict["Lang"] as! String
        }
        if dict.keys.contains("UserClientIp") && dict["UserClientIp"] != nil {
            self.userClientIp = dict["UserClientIp"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ConfirmIp") && dict["ConfirmIp"] != nil {
            self.confirmIp = dict["ConfirmIp"] as! String
        }
        if dict.keys.contains("Email") && dict["Email"] != nil {
            self.email = dict["Email"] as! String
        }
        if dict.keys.contains("EmailVerificationNo") && dict["EmailVerificationNo"] != nil {
            self.emailVerificationNo = dict["EmailVerificationNo"] as! String
        }
        if dict.keys.contains("GmtCreate") && dict["GmtCreate"] != nil {
            self.gmtCreate = dict["GmtCreate"] as! String
        }
        if dict.keys.contains("GmtModified") && dict["GmtModified"] != nil {
            self.gmtModified = dict["GmtModified"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("SendIp") && dict["SendIp"] != nil {
            self.sendIp = dict["SendIp"] as! String
        }
        if dict.keys.contains("TokenSendTime") && dict["TokenSendTime"] != nil {
            self.tokenSendTime = dict["TokenSendTime"] as! String
        }
        if dict.keys.contains("UserId") && dict["UserId"] != nil {
            self.userId = dict["UserId"] as! String
        }
        if dict.keys.contains("VerificationStatus") && dict["VerificationStatus"] != nil {
            self.verificationStatus = dict["VerificationStatus"] as! Int32
        }
        if dict.keys.contains("VerificationTime") && dict["VerificationTime"] != nil {
            self.verificationTime = dict["VerificationTime"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = QueryEmailVerificationResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DomainName") && dict["DomainName"] != nil {
            self.domainName = dict["DomainName"] as! String
        }
        if dict.keys.contains("Lang") && dict["Lang"] != nil {
            self.lang = dict["Lang"] as! String
        }
        if dict.keys.contains("UserClientIp") && dict["UserClientIp"] != nil {
            self.userClientIp = dict["UserClientIp"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Address") && dict["Address"] != nil {
            self.address = dict["Address"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = QueryEnsAssociationResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DomainName") && dict["DomainName"] != nil {
            self.domainName = dict["DomainName"] as! String
        }
        if dict.keys.contains("Lang") && dict["Lang"] != nil {
            self.lang = dict["Lang"] as! String
        }
        if dict.keys.contains("RealNameVerificationAction") && dict["RealNameVerificationAction"] != nil {
            self.realNameVerificationAction = dict["RealNameVerificationAction"] as! String
        }
        if dict.keys.contains("UserClientIp") && dict["UserClientIp"] != nil {
            self.userClientIp = dict["UserClientIp"] as! String
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Date") && dict["Date"] != nil {
                self.date = dict["Date"] as! String
            }
            if dict.keys.contains("DomainNameVerificationStatus") && dict["DomainNameVerificationStatus"] != nil {
                self.domainNameVerificationStatus = dict["DomainNameVerificationStatus"] as! String
            }
            if dict.keys.contains("FailReason") && dict["FailReason"] != nil {
                self.failReason = dict["FailReason"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Data") && dict["Data"] != nil {
            var tmp : [QueryFailReasonForDomainRealNameVerificationResponseBody.Data] = []
            for v in dict["Data"] as! [Any] {
                var model = QueryFailReasonForDomainRealNameVerificationResponseBody.Data()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.data = tmp
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = QueryFailReasonForDomainRealNameVerificationResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Lang") && dict["Lang"] != nil {
            self.lang = dict["Lang"] as! String
        }
        if dict.keys.contains("RegistrantProfileID") && dict["RegistrantProfileID"] != nil {
            self.registrantProfileID = dict["RegistrantProfileID"] as! Int64
        }
        if dict.keys.contains("UserClientIp") && dict["UserClientIp"] != nil {
            self.userClientIp = dict["UserClientIp"] as! String
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Date") && dict["Date"] != nil {
                self.date = dict["Date"] as! String
            }
            if dict.keys.contains("FailReason") && dict["FailReason"] != nil {
                self.failReason = dict["FailReason"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Data") && dict["Data"] != nil {
            var tmp : [QueryFailReasonForRegistrantProfileRealNameVerificationResponseBody.Data] = []
            for v in dict["Data"] as! [Any] {
                var model = QueryFailReasonForRegistrantProfileRealNameVerificationResponseBody.Data()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.data = tmp
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = QueryFailReasonForRegistrantProfileRealNameVerificationResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("InstanceId") && dict["InstanceId"] != nil {
            self.instanceId = dict["InstanceId"] as! String
        }
        if dict.keys.contains("Lang") && dict["Lang"] != nil {
            self.lang = dict["Lang"] as! String
        }
        if dict.keys.contains("Limit") && dict["Limit"] != nil {
            self.limit = dict["Limit"] as! Int32
        }
        if dict.keys.contains("QualificationType") && dict["QualificationType"] != nil {
            self.qualificationType = dict["QualificationType"] as! String
        }
        if dict.keys.contains("UserClientIp") && dict["UserClientIp"] != nil {
            self.userClientIp = dict["UserClientIp"] as! String
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Date") && dict["Date"] != nil {
                self.date = dict["Date"] as! String
            }
            if dict.keys.contains("FailReason") && dict["FailReason"] != nil {
                self.failReason = dict["FailReason"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Data") && dict["Data"] != nil {
            var tmp : [QueryFailingReasonListForQualificationResponseBody.Data] = []
            for v in dict["Data"] as! [Any] {
                var model = QueryFailingReasonListForQualificationResponseBody.Data()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.data = tmp
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = QueryFailingReasonListForQualificationResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DomainName") && dict["DomainName"] != nil {
            self.domainName = dict["DomainName"] as! String
        }
        if dict.keys.contains("Lang") && dict["Lang"] != nil {
            self.lang = dict["Lang"] as! String
        }
        if dict.keys.contains("UserClientIp") && dict["UserClientIp"] != nil {
            self.userClientIp = dict["UserClientIp"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Address") && dict["Address"] != nil {
            self.address = dict["Address"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = QueryLocalEnsAssociationResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AuditRecordId") && dict["AuditRecordId"] != nil {
            self.auditRecordId = dict["AuditRecordId"] as! Int64
        }
        if dict.keys.contains("Lang") && dict["Lang"] != nil {
            self.lang = dict["Lang"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AuditInfo") && dict["AuditInfo"] != nil {
            self.auditInfo = dict["AuditInfo"] as! String
        }
        if dict.keys.contains("AuditStatus") && dict["AuditStatus"] != nil {
            self.auditStatus = dict["AuditStatus"] as! Int32
        }
        if dict.keys.contains("AuditType") && dict["AuditType"] != nil {
            self.auditType = dict["AuditType"] as! Int32
        }
        if dict.keys.contains("BusinessName") && dict["BusinessName"] != nil {
            self.businessName = dict["BusinessName"] as! String
        }
        if dict.keys.contains("CreateTime") && dict["CreateTime"] != nil {
            self.createTime = dict["CreateTime"] as! Int64
        }
        if dict.keys.contains("DomainName") && dict["DomainName"] != nil {
            self.domainName = dict["DomainName"] as! String
        }
        if dict.keys.contains("Id") && dict["Id"] != nil {
            self.id = dict["Id"] as! String
        }
        if dict.keys.contains("Remark") && dict["Remark"] != nil {
            self.remark = dict["Remark"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("UpdateTime") && dict["UpdateTime"] != nil {
            self.updateTime = dict["UpdateTime"] as! Int64
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = QueryOperationAuditInfoDetailResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AuditStatus") && dict["AuditStatus"] != nil {
            self.auditStatus = dict["AuditStatus"] as! Int32
        }
        if dict.keys.contains("AuditType") && dict["AuditType"] != nil {
            self.auditType = dict["AuditType"] as! Int32
        }
        if dict.keys.contains("DomainName") && dict["DomainName"] != nil {
            self.domainName = dict["DomainName"] as! String
        }
        if dict.keys.contains("Lang") && dict["Lang"] != nil {
            self.lang = dict["Lang"] as! String
        }
        if dict.keys.contains("PageNum") && dict["PageNum"] != nil {
            self.pageNum = dict["PageNum"] as! Int32
        }
        if dict.keys.contains("PageSize") && dict["PageSize"] != nil {
            self.pageSize = dict["PageSize"] as! Int32
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("AuditInfo") && dict["AuditInfo"] != nil {
                self.auditInfo = dict["AuditInfo"] as! String
            }
            if dict.keys.contains("AuditStatus") && dict["AuditStatus"] != nil {
                self.auditStatus = dict["AuditStatus"] as! Int32
            }
            if dict.keys.contains("AuditType") && dict["AuditType"] != nil {
                self.auditType = dict["AuditType"] as! Int32
            }
            if dict.keys.contains("BusinessName") && dict["BusinessName"] != nil {
                self.businessName = dict["BusinessName"] as! String
            }
            if dict.keys.contains("CreateTime") && dict["CreateTime"] != nil {
                self.createTime = dict["CreateTime"] as! Int64
            }
            if dict.keys.contains("DomainName") && dict["DomainName"] != nil {
                self.domainName = dict["DomainName"] as! String
            }
            if dict.keys.contains("Id") && dict["Id"] != nil {
                self.id = dict["Id"] as! Int64
            }
            if dict.keys.contains("Remark") && dict["Remark"] != nil {
                self.remark = dict["Remark"] as! String
            }
            if dict.keys.contains("UpdateTime") && dict["UpdateTime"] != nil {
                self.updateTime = dict["UpdateTime"] as! Int64
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("CurrentPageNum") && dict["CurrentPageNum"] != nil {
            self.currentPageNum = dict["CurrentPageNum"] as! Int32
        }
        if dict.keys.contains("Data") && dict["Data"] != nil {
            var tmp : [QueryOperationAuditInfoListResponseBody.Data] = []
            for v in dict["Data"] as! [Any] {
                var model = QueryOperationAuditInfoListResponseBody.Data()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.data = tmp
        }
        if dict.keys.contains("NextPage") && dict["NextPage"] != nil {
            self.nextPage = dict["NextPage"] as! Bool
        }
        if dict.keys.contains("PageSize") && dict["PageSize"] != nil {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("PrePage") && dict["PrePage"] != nil {
            self.prePage = dict["PrePage"] as! Bool
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("TotalItemNum") && dict["TotalItemNum"] != nil {
            self.totalItemNum = dict["TotalItemNum"] as! Int32
        }
        if dict.keys.contains("TotalPageNum") && dict["TotalPageNum"] != nil {
            self.totalPageNum = dict["TotalPageNum"] as! Int32
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = QueryOperationAuditInfoListResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("InstanceId") && dict["InstanceId"] != nil {
            self.instanceId = dict["InstanceId"] as! String
        }
        if dict.keys.contains("Lang") && dict["Lang"] != nil {
            self.lang = dict["Lang"] as! String
        }
        if dict.keys.contains("QualificationType") && dict["QualificationType"] != nil {
            self.qualificationType = dict["QualificationType"] as! String
        }
        if dict.keys.contains("UserClientIp") && dict["UserClientIp"] != nil {
            self.userClientIp = dict["UserClientIp"] as! String
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

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("CredentialNo") && dict["CredentialNo"] != nil {
                    self.credentialNo = dict["CredentialNo"] as! String
                }
                if dict.keys.contains("CredentialType") && dict["CredentialType"] != nil {
                    self.credentialType = dict["CredentialType"] as! String
                }
                if dict.keys.contains("CredentialUrl") && dict["CredentialUrl"] != nil {
                    self.credentialUrl = dict["CredentialUrl"] as! String
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("QualificationCredential") && dict["QualificationCredential"] != nil {
                var tmp : [QueryQualificationDetailResponseBody.Credentials.QualificationCredential] = []
                for v in dict["QualificationCredential"] as! [Any] {
                    var model = QueryQualificationDetailResponseBody.Credentials.QualificationCredential()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AuditStatus") && dict["AuditStatus"] != nil {
            self.auditStatus = dict["AuditStatus"] as! Int32
        }
        if dict.keys.contains("Credentials") && dict["Credentials"] != nil {
            var model = QueryQualificationDetailResponseBody.Credentials()
            model.fromMap(dict["Credentials"] as! [String: Any])
            self.credentials = model
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("TrackId") && dict["TrackId"] != nil {
            self.trackId = dict["TrackId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = QueryQualificationDetailResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("FetchImage") && dict["FetchImage"] != nil {
            self.fetchImage = dict["FetchImage"] as! Bool
        }
        if dict.keys.contains("Lang") && dict["Lang"] != nil {
            self.lang = dict["Lang"] as! String
        }
        if dict.keys.contains("RegistrantProfileId") && dict["RegistrantProfileId"] != nil {
            self.registrantProfileId = dict["RegistrantProfileId"] as! Int64
        }
        if dict.keys.contains("UserClientIp") && dict["UserClientIp"] != nil {
            self.userClientIp = dict["UserClientIp"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("IdentityCredential") && dict["IdentityCredential"] != nil {
            self.identityCredential = dict["IdentityCredential"] as! String
        }
        if dict.keys.contains("IdentityCredentialNo") && dict["IdentityCredentialNo"] != nil {
            self.identityCredentialNo = dict["IdentityCredentialNo"] as! String
        }
        if dict.keys.contains("IdentityCredentialType") && dict["IdentityCredentialType"] != nil {
            self.identityCredentialType = dict["IdentityCredentialType"] as! String
        }
        if dict.keys.contains("IdentityCredentialUrl") && dict["IdentityCredentialUrl"] != nil {
            self.identityCredentialUrl = dict["IdentityCredentialUrl"] as! String
        }
        if dict.keys.contains("ModificationDate") && dict["ModificationDate"] != nil {
            self.modificationDate = dict["ModificationDate"] as! String
        }
        if dict.keys.contains("RegistrantProfileId") && dict["RegistrantProfileId"] != nil {
            self.registrantProfileId = dict["RegistrantProfileId"] as! Int64
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("SubmissionDate") && dict["SubmissionDate"] != nil {
            self.submissionDate = dict["SubmissionDate"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = QueryRegistrantProfileRealNameVerificationInfoResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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
        if self.userClientIp != nil {
            map["UserClientIp"] = self.userClientIp!
        }
        if self.zhRegistrantOrganization != nil {
            map["ZhRegistrantOrganization"] = self.zhRegistrantOrganization!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DefaultRegistrantProfile") && dict["DefaultRegistrantProfile"] != nil {
            self.defaultRegistrantProfile = dict["DefaultRegistrantProfile"] as! Bool
        }
        if dict.keys.contains("Email") && dict["Email"] != nil {
            self.email = dict["Email"] as! String
        }
        if dict.keys.contains("Lang") && dict["Lang"] != nil {
            self.lang = dict["Lang"] as! String
        }
        if dict.keys.contains("PageNum") && dict["PageNum"] != nil {
            self.pageNum = dict["PageNum"] as! Int32
        }
        if dict.keys.contains("PageSize") && dict["PageSize"] != nil {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("RealNameStatus") && dict["RealNameStatus"] != nil {
            self.realNameStatus = dict["RealNameStatus"] as! String
        }
        if dict.keys.contains("RegistrantOrganization") && dict["RegistrantOrganization"] != nil {
            self.registrantOrganization = dict["RegistrantOrganization"] as! String
        }
        if dict.keys.contains("RegistrantProfileId") && dict["RegistrantProfileId"] != nil {
            self.registrantProfileId = dict["RegistrantProfileId"] as! Int64
        }
        if dict.keys.contains("RegistrantProfileType") && dict["RegistrantProfileType"] != nil {
            self.registrantProfileType = dict["RegistrantProfileType"] as! String
        }
        if dict.keys.contains("RegistrantType") && dict["RegistrantType"] != nil {
            self.registrantType = dict["RegistrantType"] as! String
        }
        if dict.keys.contains("UserClientIp") && dict["UserClientIp"] != nil {
            self.userClientIp = dict["UserClientIp"] as! String
        }
        if dict.keys.contains("ZhRegistrantOrganization") && dict["ZhRegistrantOrganization"] != nil {
            self.zhRegistrantOrganization = dict["ZhRegistrantOrganization"] as! String
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

            public var postalCode: String?

            public var province: String?

            public var realNameStatus: String?

            public var registrantName: String?

            public var registrantOrganization: String?

            public var registrantProfileId: Int64?

            public var registrantProfileType: String?

            public var registrantType: String?

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

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("Address") && dict["Address"] != nil {
                    self.address = dict["Address"] as! String
                }
                if dict.keys.contains("City") && dict["City"] != nil {
                    self.city = dict["City"] as! String
                }
                if dict.keys.contains("Country") && dict["Country"] != nil {
                    self.country = dict["Country"] as! String
                }
                if dict.keys.contains("CreateTime") && dict["CreateTime"] != nil {
                    self.createTime = dict["CreateTime"] as! String
                }
                if dict.keys.contains("CredentialNo") && dict["CredentialNo"] != nil {
                    self.credentialNo = dict["CredentialNo"] as! String
                }
                if dict.keys.contains("CredentialType") && dict["CredentialType"] != nil {
                    self.credentialType = dict["CredentialType"] as! String
                }
                if dict.keys.contains("DefaultRegistrantProfile") && dict["DefaultRegistrantProfile"] != nil {
                    self.defaultRegistrantProfile = dict["DefaultRegistrantProfile"] as! Bool
                }
                if dict.keys.contains("Email") && dict["Email"] != nil {
                    self.email = dict["Email"] as! String
                }
                if dict.keys.contains("EmailVerificationStatus") && dict["EmailVerificationStatus"] != nil {
                    self.emailVerificationStatus = dict["EmailVerificationStatus"] as! Int32
                }
                if dict.keys.contains("PostalCode") && dict["PostalCode"] != nil {
                    self.postalCode = dict["PostalCode"] as! String
                }
                if dict.keys.contains("Province") && dict["Province"] != nil {
                    self.province = dict["Province"] as! String
                }
                if dict.keys.contains("RealNameStatus") && dict["RealNameStatus"] != nil {
                    self.realNameStatus = dict["RealNameStatus"] as! String
                }
                if dict.keys.contains("RegistrantName") && dict["RegistrantName"] != nil {
                    self.registrantName = dict["RegistrantName"] as! String
                }
                if dict.keys.contains("RegistrantOrganization") && dict["RegistrantOrganization"] != nil {
                    self.registrantOrganization = dict["RegistrantOrganization"] as! String
                }
                if dict.keys.contains("RegistrantProfileId") && dict["RegistrantProfileId"] != nil {
                    self.registrantProfileId = dict["RegistrantProfileId"] as! Int64
                }
                if dict.keys.contains("RegistrantProfileType") && dict["RegistrantProfileType"] != nil {
                    self.registrantProfileType = dict["RegistrantProfileType"] as! String
                }
                if dict.keys.contains("RegistrantType") && dict["RegistrantType"] != nil {
                    self.registrantType = dict["RegistrantType"] as! String
                }
                if dict.keys.contains("TelArea") && dict["TelArea"] != nil {
                    self.telArea = dict["TelArea"] as! String
                }
                if dict.keys.contains("TelExt") && dict["TelExt"] != nil {
                    self.telExt = dict["TelExt"] as! String
                }
                if dict.keys.contains("Telephone") && dict["Telephone"] != nil {
                    self.telephone = dict["Telephone"] as! String
                }
                if dict.keys.contains("UpdateTime") && dict["UpdateTime"] != nil {
                    self.updateTime = dict["UpdateTime"] as! String
                }
                if dict.keys.contains("ZhAddress") && dict["ZhAddress"] != nil {
                    self.zhAddress = dict["ZhAddress"] as! String
                }
                if dict.keys.contains("ZhCity") && dict["ZhCity"] != nil {
                    self.zhCity = dict["ZhCity"] as! String
                }
                if dict.keys.contains("ZhProvince") && dict["ZhProvince"] != nil {
                    self.zhProvince = dict["ZhProvince"] as! String
                }
                if dict.keys.contains("ZhRegistrantName") && dict["ZhRegistrantName"] != nil {
                    self.zhRegistrantName = dict["ZhRegistrantName"] as! String
                }
                if dict.keys.contains("ZhRegistrantOrganization") && dict["ZhRegistrantOrganization"] != nil {
                    self.zhRegistrantOrganization = dict["ZhRegistrantOrganization"] as! String
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("RegistrantProfile") && dict["RegistrantProfile"] != nil {
                var tmp : [QueryRegistrantProfilesResponseBody.RegistrantProfiles.RegistrantProfile] = []
                for v in dict["RegistrantProfile"] as! [Any] {
                    var model = QueryRegistrantProfilesResponseBody.RegistrantProfiles.RegistrantProfile()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("CurrentPageNum") && dict["CurrentPageNum"] != nil {
            self.currentPageNum = dict["CurrentPageNum"] as! Int32
        }
        if dict.keys.contains("NextPage") && dict["NextPage"] != nil {
            self.nextPage = dict["NextPage"] as! Bool
        }
        if dict.keys.contains("PageSize") && dict["PageSize"] != nil {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("PrePage") && dict["PrePage"] != nil {
            self.prePage = dict["PrePage"] as! Bool
        }
        if dict.keys.contains("RegistrantProfiles") && dict["RegistrantProfiles"] != nil {
            var model = QueryRegistrantProfilesResponseBody.RegistrantProfiles()
            model.fromMap(dict["RegistrantProfiles"] as! [String: Any])
            self.registrantProfiles = model
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("TotalItemNum") && dict["TotalItemNum"] != nil {
            self.totalItemNum = dict["TotalItemNum"] as! Int32
        }
        if dict.keys.contains("TotalPageNum") && dict["TotalPageNum"] != nil {
            self.totalPageNum = dict["TotalPageNum"] as! Int32
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = QueryRegistrantProfilesResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("InstanceId") && dict["InstanceId"] != nil {
            self.instanceId = dict["InstanceId"] as! String
        }
        if dict.keys.contains("Lang") && dict["Lang"] != nil {
            self.lang = dict["Lang"] as! String
        }
        if dict.keys.contains("UserClientIp") && dict["UserClientIp"] != nil {
            self.userClientIp = dict["UserClientIp"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DomainInstanceId") && dict["DomainInstanceId"] != nil {
            self.domainInstanceId = dict["DomainInstanceId"] as! String
        }
        if dict.keys.contains("DomainName") && dict["DomainName"] != nil {
            self.domainName = dict["DomainName"] as! String
        }
        if dict.keys.contains("ExpireDate") && dict["ExpireDate"] != nil {
            self.expireDate = dict["ExpireDate"] as! String
        }
        if dict.keys.contains("GmtCreate") && dict["GmtCreate"] != nil {
            self.gmtCreate = dict["GmtCreate"] as! String
        }
        if dict.keys.contains("GmtModified") && dict["GmtModified"] != nil {
            self.gmtModified = dict["GmtModified"] as! String
        }
        if dict.keys.contains("LockInstanceId") && dict["LockInstanceId"] != nil {
            self.lockInstanceId = dict["LockInstanceId"] as! String
        }
        if dict.keys.contains("LockProductId") && dict["LockProductId"] != nil {
            self.lockProductId = dict["LockProductId"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("ServerLockStatus") && dict["ServerLockStatus"] != nil {
            self.serverLockStatus = dict["ServerLockStatus"] as! Int32
        }
        if dict.keys.contains("StartDate") && dict["StartDate"] != nil {
            self.startDate = dict["StartDate"] as! String
        }
        if dict.keys.contains("UserId") && dict["UserId"] != nil {
            self.userId = dict["UserId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = QueryServerLockResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DomainName") && dict["DomainName"] != nil {
            self.domainName = dict["DomainName"] as! String
        }
        if dict.keys.contains("DomainNameCursor") && dict["DomainNameCursor"] != nil {
            self.domainNameCursor = dict["DomainNameCursor"] as! String
        }
        if dict.keys.contains("Lang") && dict["Lang"] != nil {
            self.lang = dict["Lang"] as! String
        }
        if dict.keys.contains("PageSize") && dict["PageSize"] != nil {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("TaskDetailNoCursor") && dict["TaskDetailNoCursor"] != nil {
            self.taskDetailNoCursor = dict["TaskDetailNoCursor"] as! String
        }
        if dict.keys.contains("TaskNo") && dict["TaskNo"] != nil {
            self.taskNo = dict["TaskNo"] as! String
        }
        if dict.keys.contains("TaskStatus") && dict["TaskStatus"] != nil {
            self.taskStatus = dict["TaskStatus"] as! Int32
        }
        if dict.keys.contains("UserClientIp") && dict["UserClientIp"] != nil {
            self.userClientIp = dict["UserClientIp"] as! String
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("CreateTime") && dict["CreateTime"] != nil {
                self.createTime = dict["CreateTime"] as! String
            }
            if dict.keys.contains("DomainName") && dict["DomainName"] != nil {
                self.domainName = dict["DomainName"] as! String
            }
            if dict.keys.contains("ErrorMsg") && dict["ErrorMsg"] != nil {
                self.errorMsg = dict["ErrorMsg"] as! String
            }
            if dict.keys.contains("InstanceId") && dict["InstanceId"] != nil {
                self.instanceId = dict["InstanceId"] as! String
            }
            if dict.keys.contains("TaskDetailNo") && dict["TaskDetailNo"] != nil {
                self.taskDetailNo = dict["TaskDetailNo"] as! String
            }
            if dict.keys.contains("TaskNo") && dict["TaskNo"] != nil {
                self.taskNo = dict["TaskNo"] as! String
            }
            if dict.keys.contains("TaskStatus") && dict["TaskStatus"] != nil {
                self.taskStatus = dict["TaskStatus"] as! String
            }
            if dict.keys.contains("TaskStatusCode") && dict["TaskStatusCode"] != nil {
                self.taskStatusCode = dict["TaskStatusCode"] as! Int32
            }
            if dict.keys.contains("TaskType") && dict["TaskType"] != nil {
                self.taskType = dict["TaskType"] as! String
            }
            if dict.keys.contains("TaskTypeDescription") && dict["TaskTypeDescription"] != nil {
                self.taskTypeDescription = dict["TaskTypeDescription"] as! String
            }
            if dict.keys.contains("TryCount") && dict["TryCount"] != nil {
                self.tryCount = dict["TryCount"] as! Int32
            }
            if dict.keys.contains("UpdateTime") && dict["UpdateTime"] != nil {
                self.updateTime = dict["UpdateTime"] as! String
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("CreateTime") && dict["CreateTime"] != nil {
                self.createTime = dict["CreateTime"] as! String
            }
            if dict.keys.contains("DomainName") && dict["DomainName"] != nil {
                self.domainName = dict["DomainName"] as! String
            }
            if dict.keys.contains("ErrorMsg") && dict["ErrorMsg"] != nil {
                self.errorMsg = dict["ErrorMsg"] as! String
            }
            if dict.keys.contains("InstanceId") && dict["InstanceId"] != nil {
                self.instanceId = dict["InstanceId"] as! String
            }
            if dict.keys.contains("TaskDetailNo") && dict["TaskDetailNo"] != nil {
                self.taskDetailNo = dict["TaskDetailNo"] as! String
            }
            if dict.keys.contains("TaskNo") && dict["TaskNo"] != nil {
                self.taskNo = dict["TaskNo"] as! String
            }
            if dict.keys.contains("TaskStatus") && dict["TaskStatus"] != nil {
                self.taskStatus = dict["TaskStatus"] as! String
            }
            if dict.keys.contains("TaskStatusCode") && dict["TaskStatusCode"] != nil {
                self.taskStatusCode = dict["TaskStatusCode"] as! Int32
            }
            if dict.keys.contains("TaskType") && dict["TaskType"] != nil {
                self.taskType = dict["TaskType"] as! String
            }
            if dict.keys.contains("TaskTypeDescription") && dict["TaskTypeDescription"] != nil {
                self.taskTypeDescription = dict["TaskTypeDescription"] as! String
            }
            if dict.keys.contains("TryCount") && dict["TryCount"] != nil {
                self.tryCount = dict["TryCount"] as! Int32
            }
            if dict.keys.contains("UpdateTime") && dict["UpdateTime"] != nil {
                self.updateTime = dict["UpdateTime"] as! String
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("CreateTime") && dict["CreateTime"] != nil {
                self.createTime = dict["CreateTime"] as! String
            }
            if dict.keys.contains("DomainName") && dict["DomainName"] != nil {
                self.domainName = dict["DomainName"] as! String
            }
            if dict.keys.contains("ErrorMsg") && dict["ErrorMsg"] != nil {
                self.errorMsg = dict["ErrorMsg"] as! String
            }
            if dict.keys.contains("InstanceId") && dict["InstanceId"] != nil {
                self.instanceId = dict["InstanceId"] as! String
            }
            if dict.keys.contains("TaskDetailNo") && dict["TaskDetailNo"] != nil {
                self.taskDetailNo = dict["TaskDetailNo"] as! String
            }
            if dict.keys.contains("TaskNo") && dict["TaskNo"] != nil {
                self.taskNo = dict["TaskNo"] as! String
            }
            if dict.keys.contains("TaskStatus") && dict["TaskStatus"] != nil {
                self.taskStatus = dict["TaskStatus"] as! String
            }
            if dict.keys.contains("TaskStatusCode") && dict["TaskStatusCode"] != nil {
                self.taskStatusCode = dict["TaskStatusCode"] as! Int32
            }
            if dict.keys.contains("TaskType") && dict["TaskType"] != nil {
                self.taskType = dict["TaskType"] as! String
            }
            if dict.keys.contains("TaskTypeDescription") && dict["TaskTypeDescription"] != nil {
                self.taskTypeDescription = dict["TaskTypeDescription"] as! String
            }
            if dict.keys.contains("TryCount") && dict["TryCount"] != nil {
                self.tryCount = dict["TryCount"] as! Int32
            }
            if dict.keys.contains("UpdateTime") && dict["UpdateTime"] != nil {
                self.updateTime = dict["UpdateTime"] as! String
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("CreateTime") && dict["CreateTime"] != nil {
                self.createTime = dict["CreateTime"] as! String
            }
            if dict.keys.contains("DomainName") && dict["DomainName"] != nil {
                self.domainName = dict["DomainName"] as! String
            }
            if dict.keys.contains("ErrorMsg") && dict["ErrorMsg"] != nil {
                self.errorMsg = dict["ErrorMsg"] as! String
            }
            if dict.keys.contains("InstanceId") && dict["InstanceId"] != nil {
                self.instanceId = dict["InstanceId"] as! String
            }
            if dict.keys.contains("TaskDetailNo") && dict["TaskDetailNo"] != nil {
                self.taskDetailNo = dict["TaskDetailNo"] as! String
            }
            if dict.keys.contains("TaskNo") && dict["TaskNo"] != nil {
                self.taskNo = dict["TaskNo"] as! String
            }
            if dict.keys.contains("TaskStatus") && dict["TaskStatus"] != nil {
                self.taskStatus = dict["TaskStatus"] as! String
            }
            if dict.keys.contains("TaskStatusCode") && dict["TaskStatusCode"] != nil {
                self.taskStatusCode = dict["TaskStatusCode"] as! Int32
            }
            if dict.keys.contains("TaskType") && dict["TaskType"] != nil {
                self.taskType = dict["TaskType"] as! String
            }
            if dict.keys.contains("TaskTypeDescription") && dict["TaskTypeDescription"] != nil {
                self.taskTypeDescription = dict["TaskTypeDescription"] as! String
            }
            if dict.keys.contains("TryCount") && dict["TryCount"] != nil {
                self.tryCount = dict["TryCount"] as! Int32
            }
            if dict.keys.contains("UpdateTime") && dict["UpdateTime"] != nil {
                self.updateTime = dict["UpdateTime"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("CurrentPageCursor") && dict["CurrentPageCursor"] != nil {
            var model = QueryTaskDetailHistoryResponseBody.CurrentPageCursor()
            model.fromMap(dict["CurrentPageCursor"] as! [String: Any])
            self.currentPageCursor = model
        }
        if dict.keys.contains("NextPageCursor") && dict["NextPageCursor"] != nil {
            var model = QueryTaskDetailHistoryResponseBody.NextPageCursor()
            model.fromMap(dict["NextPageCursor"] as! [String: Any])
            self.nextPageCursor = model
        }
        if dict.keys.contains("Objects") && dict["Objects"] != nil {
            var tmp : [QueryTaskDetailHistoryResponseBody.Objects] = []
            for v in dict["Objects"] as! [Any] {
                var model = QueryTaskDetailHistoryResponseBody.Objects()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.objects = tmp
        }
        if dict.keys.contains("PageSize") && dict["PageSize"] != nil {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("PrePageCursor") && dict["PrePageCursor"] != nil {
            var model = QueryTaskDetailHistoryResponseBody.PrePageCursor()
            model.fromMap(dict["PrePageCursor"] as! [String: Any])
            self.prePageCursor = model
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = QueryTaskDetailHistoryResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DomainName") && dict["DomainName"] != nil {
            self.domainName = dict["DomainName"] as! String
        }
        if dict.keys.contains("InstanceId") && dict["InstanceId"] != nil {
            self.instanceId = dict["InstanceId"] as! String
        }
        if dict.keys.contains("Lang") && dict["Lang"] != nil {
            self.lang = dict["Lang"] as! String
        }
        if dict.keys.contains("PageNum") && dict["PageNum"] != nil {
            self.pageNum = dict["PageNum"] as! Int32
        }
        if dict.keys.contains("PageSize") && dict["PageSize"] != nil {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("TaskNo") && dict["TaskNo"] != nil {
            self.taskNo = dict["TaskNo"] as! String
        }
        if dict.keys.contains("TaskStatus") && dict["TaskStatus"] != nil {
            self.taskStatus = dict["TaskStatus"] as! Int32
        }
        if dict.keys.contains("UserClientIp") && dict["UserClientIp"] != nil {
            self.userClientIp = dict["UserClientIp"] as! String
        }
    }
}

public class QueryTaskDetailListResponseBody : Tea.TeaModel {
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

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("CreateTime") && dict["CreateTime"] != nil {
                    self.createTime = dict["CreateTime"] as! String
                }
                if dict.keys.contains("DomainName") && dict["DomainName"] != nil {
                    self.domainName = dict["DomainName"] as! String
                }
                if dict.keys.contains("ErrorMsg") && dict["ErrorMsg"] != nil {
                    self.errorMsg = dict["ErrorMsg"] as! String
                }
                if dict.keys.contains("InstanceId") && dict["InstanceId"] != nil {
                    self.instanceId = dict["InstanceId"] as! String
                }
                if dict.keys.contains("TaskDetailNo") && dict["TaskDetailNo"] != nil {
                    self.taskDetailNo = dict["TaskDetailNo"] as! String
                }
                if dict.keys.contains("TaskNo") && dict["TaskNo"] != nil {
                    self.taskNo = dict["TaskNo"] as! String
                }
                if dict.keys.contains("TaskResult") && dict["TaskResult"] != nil {
                    self.taskResult = dict["TaskResult"] as! String
                }
                if dict.keys.contains("TaskStatus") && dict["TaskStatus"] != nil {
                    self.taskStatus = dict["TaskStatus"] as! String
                }
                if dict.keys.contains("TaskStatusCode") && dict["TaskStatusCode"] != nil {
                    self.taskStatusCode = dict["TaskStatusCode"] as! Int32
                }
                if dict.keys.contains("TaskType") && dict["TaskType"] != nil {
                    self.taskType = dict["TaskType"] as! String
                }
                if dict.keys.contains("TaskTypeDescription") && dict["TaskTypeDescription"] != nil {
                    self.taskTypeDescription = dict["TaskTypeDescription"] as! String
                }
                if dict.keys.contains("TryCount") && dict["TryCount"] != nil {
                    self.tryCount = dict["TryCount"] as! Int32
                }
                if dict.keys.contains("UpdateTime") && dict["UpdateTime"] != nil {
                    self.updateTime = dict["UpdateTime"] as! String
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("TaskDetail") && dict["TaskDetail"] != nil {
                var tmp : [QueryTaskDetailListResponseBody.Data.TaskDetail] = []
                for v in dict["TaskDetail"] as! [Any] {
                    var model = QueryTaskDetailListResponseBody.Data.TaskDetail()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("CurrentPageNum") && dict["CurrentPageNum"] != nil {
            self.currentPageNum = dict["CurrentPageNum"] as! Int32
        }
        if dict.keys.contains("Data") && dict["Data"] != nil {
            var model = QueryTaskDetailListResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("NextPage") && dict["NextPage"] != nil {
            self.nextPage = dict["NextPage"] as! Bool
        }
        if dict.keys.contains("PageSize") && dict["PageSize"] != nil {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("PrePage") && dict["PrePage"] != nil {
            self.prePage = dict["PrePage"] as! Bool
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("TotalItemNum") && dict["TotalItemNum"] != nil {
            self.totalItemNum = dict["TotalItemNum"] as! Int32
        }
        if dict.keys.contains("TotalPageNum") && dict["TotalPageNum"] != nil {
            self.totalPageNum = dict["TotalPageNum"] as! Int32
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = QueryTaskDetailListResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("BeginCreateTime") && dict["BeginCreateTime"] != nil {
            self.beginCreateTime = dict["BeginCreateTime"] as! Int64
        }
        if dict.keys.contains("CreateTimeCursor") && dict["CreateTimeCursor"] != nil {
            self.createTimeCursor = dict["CreateTimeCursor"] as! Int64
        }
        if dict.keys.contains("EndCreateTime") && dict["EndCreateTime"] != nil {
            self.endCreateTime = dict["EndCreateTime"] as! Int64
        }
        if dict.keys.contains("Lang") && dict["Lang"] != nil {
            self.lang = dict["Lang"] as! String
        }
        if dict.keys.contains("PageSize") && dict["PageSize"] != nil {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("TaskNoCursor") && dict["TaskNoCursor"] != nil {
            self.taskNoCursor = dict["TaskNoCursor"] as! String
        }
        if dict.keys.contains("UserClientIp") && dict["UserClientIp"] != nil {
            self.userClientIp = dict["UserClientIp"] as! String
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Clientip") && dict["Clientip"] != nil {
                self.clientip = dict["Clientip"] as! String
            }
            if dict.keys.contains("CreateTime") && dict["CreateTime"] != nil {
                self.createTime = dict["CreateTime"] as! String
            }
            if dict.keys.contains("CreateTimeLong") && dict["CreateTimeLong"] != nil {
                self.createTimeLong = dict["CreateTimeLong"] as! Int64
            }
            if dict.keys.contains("TaskNo") && dict["TaskNo"] != nil {
                self.taskNo = dict["TaskNo"] as! String
            }
            if dict.keys.contains("TaskNum") && dict["TaskNum"] != nil {
                self.taskNum = dict["TaskNum"] as! Int32
            }
            if dict.keys.contains("TaskStatus") && dict["TaskStatus"] != nil {
                self.taskStatus = dict["TaskStatus"] as! String
            }
            if dict.keys.contains("TaskStatusCode") && dict["TaskStatusCode"] != nil {
                self.taskStatusCode = dict["TaskStatusCode"] as! Int32
            }
            if dict.keys.contains("TaskType") && dict["TaskType"] != nil {
                self.taskType = dict["TaskType"] as! String
            }
            if dict.keys.contains("TaskTypeDescription") && dict["TaskTypeDescription"] != nil {
                self.taskTypeDescription = dict["TaskTypeDescription"] as! String
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Clientip") && dict["Clientip"] != nil {
                self.clientip = dict["Clientip"] as! String
            }
            if dict.keys.contains("CreateTime") && dict["CreateTime"] != nil {
                self.createTime = dict["CreateTime"] as! String
            }
            if dict.keys.contains("CreateTimeLong") && dict["CreateTimeLong"] != nil {
                self.createTimeLong = dict["CreateTimeLong"] as! Int64
            }
            if dict.keys.contains("TaskNo") && dict["TaskNo"] != nil {
                self.taskNo = dict["TaskNo"] as! String
            }
            if dict.keys.contains("TaskNum") && dict["TaskNum"] != nil {
                self.taskNum = dict["TaskNum"] as! Int32
            }
            if dict.keys.contains("TaskStatus") && dict["TaskStatus"] != nil {
                self.taskStatus = dict["TaskStatus"] as! String
            }
            if dict.keys.contains("TaskStatusCode") && dict["TaskStatusCode"] != nil {
                self.taskStatusCode = dict["TaskStatusCode"] as! Int32
            }
            if dict.keys.contains("TaskType") && dict["TaskType"] != nil {
                self.taskType = dict["TaskType"] as! String
            }
            if dict.keys.contains("TaskTypeDescription") && dict["TaskTypeDescription"] != nil {
                self.taskTypeDescription = dict["TaskTypeDescription"] as! String
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Clientip") && dict["Clientip"] != nil {
                self.clientip = dict["Clientip"] as! String
            }
            if dict.keys.contains("CreateTime") && dict["CreateTime"] != nil {
                self.createTime = dict["CreateTime"] as! String
            }
            if dict.keys.contains("CreateTimeLong") && dict["CreateTimeLong"] != nil {
                self.createTimeLong = dict["CreateTimeLong"] as! Int64
            }
            if dict.keys.contains("TaskNo") && dict["TaskNo"] != nil {
                self.taskNo = dict["TaskNo"] as! String
            }
            if dict.keys.contains("TaskNum") && dict["TaskNum"] != nil {
                self.taskNum = dict["TaskNum"] as! Int32
            }
            if dict.keys.contains("TaskStatus") && dict["TaskStatus"] != nil {
                self.taskStatus = dict["TaskStatus"] as! String
            }
            if dict.keys.contains("TaskStatusCode") && dict["TaskStatusCode"] != nil {
                self.taskStatusCode = dict["TaskStatusCode"] as! Int32
            }
            if dict.keys.contains("TaskType") && dict["TaskType"] != nil {
                self.taskType = dict["TaskType"] as! String
            }
            if dict.keys.contains("TaskTypeDescription") && dict["TaskTypeDescription"] != nil {
                self.taskTypeDescription = dict["TaskTypeDescription"] as! String
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Clientip") && dict["Clientip"] != nil {
                self.clientip = dict["Clientip"] as! String
            }
            if dict.keys.contains("CreateTime") && dict["CreateTime"] != nil {
                self.createTime = dict["CreateTime"] as! String
            }
            if dict.keys.contains("CreateTimeLong") && dict["CreateTimeLong"] != nil {
                self.createTimeLong = dict["CreateTimeLong"] as! Int64
            }
            if dict.keys.contains("TaskNo") && dict["TaskNo"] != nil {
                self.taskNo = dict["TaskNo"] as! String
            }
            if dict.keys.contains("TaskNum") && dict["TaskNum"] != nil {
                self.taskNum = dict["TaskNum"] as! Int32
            }
            if dict.keys.contains("TaskStatus") && dict["TaskStatus"] != nil {
                self.taskStatus = dict["TaskStatus"] as! String
            }
            if dict.keys.contains("TaskStatusCode") && dict["TaskStatusCode"] != nil {
                self.taskStatusCode = dict["TaskStatusCode"] as! Int32
            }
            if dict.keys.contains("TaskType") && dict["TaskType"] != nil {
                self.taskType = dict["TaskType"] as! String
            }
            if dict.keys.contains("TaskTypeDescription") && dict["TaskTypeDescription"] != nil {
                self.taskTypeDescription = dict["TaskTypeDescription"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("CurrentPageCursor") && dict["CurrentPageCursor"] != nil {
            var model = QueryTaskInfoHistoryResponseBody.CurrentPageCursor()
            model.fromMap(dict["CurrentPageCursor"] as! [String: Any])
            self.currentPageCursor = model
        }
        if dict.keys.contains("NextPageCursor") && dict["NextPageCursor"] != nil {
            var model = QueryTaskInfoHistoryResponseBody.NextPageCursor()
            model.fromMap(dict["NextPageCursor"] as! [String: Any])
            self.nextPageCursor = model
        }
        if dict.keys.contains("Objects") && dict["Objects"] != nil {
            var tmp : [QueryTaskInfoHistoryResponseBody.Objects] = []
            for v in dict["Objects"] as! [Any] {
                var model = QueryTaskInfoHistoryResponseBody.Objects()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.objects = tmp
        }
        if dict.keys.contains("PageSize") && dict["PageSize"] != nil {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("PrePageCursor") && dict["PrePageCursor"] != nil {
            var model = QueryTaskInfoHistoryResponseBody.PrePageCursor()
            model.fromMap(dict["PrePageCursor"] as! [String: Any])
            self.prePageCursor = model
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = QueryTaskInfoHistoryResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("BeginCreateTime") && dict["BeginCreateTime"] != nil {
            self.beginCreateTime = dict["BeginCreateTime"] as! Int64
        }
        if dict.keys.contains("EndCreateTime") && dict["EndCreateTime"] != nil {
            self.endCreateTime = dict["EndCreateTime"] as! Int64
        }
        if dict.keys.contains("Lang") && dict["Lang"] != nil {
            self.lang = dict["Lang"] as! String
        }
        if dict.keys.contains("PageNum") && dict["PageNum"] != nil {
            self.pageNum = dict["PageNum"] as! Int32
        }
        if dict.keys.contains("PageSize") && dict["PageSize"] != nil {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("UserClientIp") && dict["UserClientIp"] != nil {
            self.userClientIp = dict["UserClientIp"] as! String
        }
    }
}

public class QueryTaskListResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class TaskInfo : Tea.TeaModel {
            public var clientip: String?

            public var createTime: String?

            public var taskCancelStatus: String?

            public var taskCancelStatusCode: Int32?

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

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("Clientip") && dict["Clientip"] != nil {
                    self.clientip = dict["Clientip"] as! String
                }
                if dict.keys.contains("CreateTime") && dict["CreateTime"] != nil {
                    self.createTime = dict["CreateTime"] as! String
                }
                if dict.keys.contains("TaskCancelStatus") && dict["TaskCancelStatus"] != nil {
                    self.taskCancelStatus = dict["TaskCancelStatus"] as! String
                }
                if dict.keys.contains("TaskCancelStatusCode") && dict["TaskCancelStatusCode"] != nil {
                    self.taskCancelStatusCode = dict["TaskCancelStatusCode"] as! Int32
                }
                if dict.keys.contains("TaskNo") && dict["TaskNo"] != nil {
                    self.taskNo = dict["TaskNo"] as! String
                }
                if dict.keys.contains("TaskNum") && dict["TaskNum"] != nil {
                    self.taskNum = dict["TaskNum"] as! Int32
                }
                if dict.keys.contains("TaskStatus") && dict["TaskStatus"] != nil {
                    self.taskStatus = dict["TaskStatus"] as! String
                }
                if dict.keys.contains("TaskStatusCode") && dict["TaskStatusCode"] != nil {
                    self.taskStatusCode = dict["TaskStatusCode"] as! Int32
                }
                if dict.keys.contains("TaskType") && dict["TaskType"] != nil {
                    self.taskType = dict["TaskType"] as! String
                }
                if dict.keys.contains("TaskTypeDescription") && dict["TaskTypeDescription"] != nil {
                    self.taskTypeDescription = dict["TaskTypeDescription"] as! String
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("TaskInfo") && dict["TaskInfo"] != nil {
                var tmp : [QueryTaskListResponseBody.Data.TaskInfo] = []
                for v in dict["TaskInfo"] as! [Any] {
                    var model = QueryTaskListResponseBody.Data.TaskInfo()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("CurrentPageNum") && dict["CurrentPageNum"] != nil {
            self.currentPageNum = dict["CurrentPageNum"] as! Int32
        }
        if dict.keys.contains("Data") && dict["Data"] != nil {
            var model = QueryTaskListResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("NextPage") && dict["NextPage"] != nil {
            self.nextPage = dict["NextPage"] as! Bool
        }
        if dict.keys.contains("PageSize") && dict["PageSize"] != nil {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("PrePage") && dict["PrePage"] != nil {
            self.prePage = dict["PrePage"] as! Bool
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("TotalItemNum") && dict["TotalItemNum"] != nil {
            self.totalItemNum = dict["TotalItemNum"] as! Int32
        }
        if dict.keys.contains("TotalPageNum") && dict["TotalPageNum"] != nil {
            self.totalPageNum = dict["TotalPageNum"] as! Int32
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = QueryTaskListResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("InstanceId") && dict["InstanceId"] != nil {
            self.instanceId = dict["InstanceId"] as! String
        }
        if dict.keys.contains("Lang") && dict["Lang"] != nil {
            self.lang = dict["Lang"] as! String
        }
        if dict.keys.contains("UserClientIp") && dict["UserClientIp"] != nil {
            self.userClientIp = dict["UserClientIp"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DomainName") && dict["DomainName"] != nil {
            self.domainName = dict["DomainName"] as! String
        }
        if dict.keys.contains("Email") && dict["Email"] != nil {
            self.email = dict["Email"] as! String
        }
        if dict.keys.contains("ExpirationDate") && dict["ExpirationDate"] != nil {
            self.expirationDate = dict["ExpirationDate"] as! String
        }
        if dict.keys.contains("ExpirationDateLong") && dict["ExpirationDateLong"] != nil {
            self.expirationDateLong = dict["ExpirationDateLong"] as! Int64
        }
        if dict.keys.contains("InstanceId") && dict["InstanceId"] != nil {
            self.instanceId = dict["InstanceId"] as! String
        }
        if dict.keys.contains("ModificationDate") && dict["ModificationDate"] != nil {
            self.modificationDate = dict["ModificationDate"] as! String
        }
        if dict.keys.contains("ModificationDateLong") && dict["ModificationDateLong"] != nil {
            self.modificationDateLong = dict["ModificationDateLong"] as! Int64
        }
        if dict.keys.contains("NeedMailCheck") && dict["NeedMailCheck"] != nil {
            self.needMailCheck = dict["NeedMailCheck"] as! Bool
        }
        if dict.keys.contains("ProgressBarType") && dict["ProgressBarType"] != nil {
            self.progressBarType = dict["ProgressBarType"] as! Int32
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("ResultCode") && dict["ResultCode"] != nil {
            self.resultCode = dict["ResultCode"] as! String
        }
        if dict.keys.contains("ResultDate") && dict["ResultDate"] != nil {
            self.resultDate = dict["ResultDate"] as! String
        }
        if dict.keys.contains("ResultDateLong") && dict["ResultDateLong"] != nil {
            self.resultDateLong = dict["ResultDateLong"] as! Int64
        }
        if dict.keys.contains("ResultMsg") && dict["ResultMsg"] != nil {
            self.resultMsg = dict["ResultMsg"] as! String
        }
        if dict.keys.contains("SimpleTransferInStatus") && dict["SimpleTransferInStatus"] != nil {
            self.simpleTransferInStatus = dict["SimpleTransferInStatus"] as! String
        }
        if dict.keys.contains("Status") && dict["Status"] != nil {
            self.status = dict["Status"] as! Int32
        }
        if dict.keys.contains("SubmissionDate") && dict["SubmissionDate"] != nil {
            self.submissionDate = dict["SubmissionDate"] as! String
        }
        if dict.keys.contains("SubmissionDateLong") && dict["SubmissionDateLong"] != nil {
            self.submissionDateLong = dict["SubmissionDateLong"] as! Int64
        }
        if dict.keys.contains("TransferAuthorizationCodeSubmissionDate") && dict["TransferAuthorizationCodeSubmissionDate"] != nil {
            self.transferAuthorizationCodeSubmissionDate = dict["TransferAuthorizationCodeSubmissionDate"] as! String
        }
        if dict.keys.contains("TransferAuthorizationCodeSubmissionDateLong") && dict["TransferAuthorizationCodeSubmissionDateLong"] != nil {
            self.transferAuthorizationCodeSubmissionDateLong = dict["TransferAuthorizationCodeSubmissionDateLong"] as! Int64
        }
        if dict.keys.contains("UserId") && dict["UserId"] != nil {
            self.userId = dict["UserId"] as! String
        }
        if dict.keys.contains("WhoisMailStatus") && dict["WhoisMailStatus"] != nil {
            self.whoisMailStatus = dict["WhoisMailStatus"] as! Bool
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = QueryTransferInByInstanceIdResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DomainName") && dict["DomainName"] != nil {
            self.domainName = dict["DomainName"] as! String
        }
        if dict.keys.contains("Lang") && dict["Lang"] != nil {
            self.lang = dict["Lang"] as! String
        }
        if dict.keys.contains("PageNum") && dict["PageNum"] != nil {
            self.pageNum = dict["PageNum"] as! Int32
        }
        if dict.keys.contains("PageSize") && dict["PageSize"] != nil {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("SimpleTransferInStatus") && dict["SimpleTransferInStatus"] != nil {
            self.simpleTransferInStatus = dict["SimpleTransferInStatus"] as! String
        }
        if dict.keys.contains("SubmissionEndDate") && dict["SubmissionEndDate"] != nil {
            self.submissionEndDate = dict["SubmissionEndDate"] as! Int64
        }
        if dict.keys.contains("SubmissionStartDate") && dict["SubmissionStartDate"] != nil {
            self.submissionStartDate = dict["SubmissionStartDate"] as! Int64
        }
        if dict.keys.contains("UserClientIp") && dict["UserClientIp"] != nil {
            self.userClientIp = dict["UserClientIp"] as! String
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

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("DomainName") && dict["DomainName"] != nil {
                    self.domainName = dict["DomainName"] as! String
                }
                if dict.keys.contains("Email") && dict["Email"] != nil {
                    self.email = dict["Email"] as! String
                }
                if dict.keys.contains("ExpirationDate") && dict["ExpirationDate"] != nil {
                    self.expirationDate = dict["ExpirationDate"] as! String
                }
                if dict.keys.contains("ExpirationDateLong") && dict["ExpirationDateLong"] != nil {
                    self.expirationDateLong = dict["ExpirationDateLong"] as! Int64
                }
                if dict.keys.contains("InstanceId") && dict["InstanceId"] != nil {
                    self.instanceId = dict["InstanceId"] as! String
                }
                if dict.keys.contains("ModificationDate") && dict["ModificationDate"] != nil {
                    self.modificationDate = dict["ModificationDate"] as! String
                }
                if dict.keys.contains("ModificationDateLong") && dict["ModificationDateLong"] != nil {
                    self.modificationDateLong = dict["ModificationDateLong"] as! Int64
                }
                if dict.keys.contains("NeedMailCheck") && dict["NeedMailCheck"] != nil {
                    self.needMailCheck = dict["NeedMailCheck"] as! Bool
                }
                if dict.keys.contains("ProgressBarType") && dict["ProgressBarType"] != nil {
                    self.progressBarType = dict["ProgressBarType"] as! Int32
                }
                if dict.keys.contains("ResultCode") && dict["ResultCode"] != nil {
                    self.resultCode = dict["ResultCode"] as! String
                }
                if dict.keys.contains("ResultDate") && dict["ResultDate"] != nil {
                    self.resultDate = dict["ResultDate"] as! String
                }
                if dict.keys.contains("ResultDateLong") && dict["ResultDateLong"] != nil {
                    self.resultDateLong = dict["ResultDateLong"] as! Int64
                }
                if dict.keys.contains("ResultMsg") && dict["ResultMsg"] != nil {
                    self.resultMsg = dict["ResultMsg"] as! String
                }
                if dict.keys.contains("SimpleTransferInStatus") && dict["SimpleTransferInStatus"] != nil {
                    self.simpleTransferInStatus = dict["SimpleTransferInStatus"] as! String
                }
                if dict.keys.contains("Status") && dict["Status"] != nil {
                    self.status = dict["Status"] as! Int32
                }
                if dict.keys.contains("SubmissionDate") && dict["SubmissionDate"] != nil {
                    self.submissionDate = dict["SubmissionDate"] as! String
                }
                if dict.keys.contains("SubmissionDateLong") && dict["SubmissionDateLong"] != nil {
                    self.submissionDateLong = dict["SubmissionDateLong"] as! Int64
                }
                if dict.keys.contains("TransferAuthorizationCodeSubmissionDate") && dict["TransferAuthorizationCodeSubmissionDate"] != nil {
                    self.transferAuthorizationCodeSubmissionDate = dict["TransferAuthorizationCodeSubmissionDate"] as! String
                }
                if dict.keys.contains("TransferAuthorizationCodeSubmissionDateLong") && dict["TransferAuthorizationCodeSubmissionDateLong"] != nil {
                    self.transferAuthorizationCodeSubmissionDateLong = dict["TransferAuthorizationCodeSubmissionDateLong"] as! Int64
                }
                if dict.keys.contains("UserId") && dict["UserId"] != nil {
                    self.userId = dict["UserId"] as! String
                }
                if dict.keys.contains("WhoisMailStatus") && dict["WhoisMailStatus"] != nil {
                    self.whoisMailStatus = dict["WhoisMailStatus"] as! Bool
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("TransferInInfo") && dict["TransferInInfo"] != nil {
                var tmp : [QueryTransferInListResponseBody.Data.TransferInInfo] = []
                for v in dict["TransferInInfo"] as! [Any] {
                    var model = QueryTransferInListResponseBody.Data.TransferInInfo()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("CurrentPageNum") && dict["CurrentPageNum"] != nil {
            self.currentPageNum = dict["CurrentPageNum"] as! Int32
        }
        if dict.keys.contains("Data") && dict["Data"] != nil {
            var model = QueryTransferInListResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("NextPage") && dict["NextPage"] != nil {
            self.nextPage = dict["NextPage"] as! Bool
        }
        if dict.keys.contains("PageSize") && dict["PageSize"] != nil {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("PrePage") && dict["PrePage"] != nil {
            self.prePage = dict["PrePage"] as! Bool
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("TotalItemNum") && dict["TotalItemNum"] != nil {
            self.totalItemNum = dict["TotalItemNum"] as! Int32
        }
        if dict.keys.contains("TotalPageNum") && dict["TotalPageNum"] != nil {
            self.totalPageNum = dict["TotalPageNum"] as! Int32
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = QueryTransferInListResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DomainName") && dict["DomainName"] != nil {
            self.domainName = dict["DomainName"] as! String
        }
        if dict.keys.contains("Lang") && dict["Lang"] != nil {
            self.lang = dict["Lang"] as! String
        }
        if dict.keys.contains("UserClientIp") && dict["UserClientIp"] != nil {
            self.userClientIp = dict["UserClientIp"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Email") && dict["Email"] != nil {
            self.email = dict["Email"] as! String
        }
        if dict.keys.contains("ExpirationDate") && dict["ExpirationDate"] != nil {
            self.expirationDate = dict["ExpirationDate"] as! String
        }
        if dict.keys.contains("PendingRequestDate") && dict["PendingRequestDate"] != nil {
            self.pendingRequestDate = dict["PendingRequestDate"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("ResultCode") && dict["ResultCode"] != nil {
            self.resultCode = dict["ResultCode"] as! String
        }
        if dict.keys.contains("ResultMsg") && dict["ResultMsg"] != nil {
            self.resultMsg = dict["ResultMsg"] as! String
        }
        if dict.keys.contains("Status") && dict["Status"] != nil {
            self.status = dict["Status"] as! Int32
        }
        if dict.keys.contains("TransferAuthorizationCodeSendDate") && dict["TransferAuthorizationCodeSendDate"] != nil {
            self.transferAuthorizationCodeSendDate = dict["TransferAuthorizationCodeSendDate"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = QueryTransferOutInfoResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("IdentityCredential") && dict["IdentityCredential"] != nil {
            self.identityCredential = dict["IdentityCredential"] as! String
        }
        if dict.keys.contains("IdentityCredentialNo") && dict["IdentityCredentialNo"] != nil {
            self.identityCredentialNo = dict["IdentityCredentialNo"] as! String
        }
        if dict.keys.contains("IdentityCredentialType") && dict["IdentityCredentialType"] != nil {
            self.identityCredentialType = dict["IdentityCredentialType"] as! String
        }
        if dict.keys.contains("Lang") && dict["Lang"] != nil {
            self.lang = dict["Lang"] as! String
        }
        if dict.keys.contains("RegistrantProfileID") && dict["RegistrantProfileID"] != nil {
            self.registrantProfileID = dict["RegistrantProfileID"] as! Int64
        }
        if dict.keys.contains("UserClientIp") && dict["UserClientIp"] != nil {
            self.userClientIp = dict["UserClientIp"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = RegistrantProfileRealNameVerificationResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Email") && dict["Email"] != nil {
            self.email = dict["Email"] as! String
        }
        if dict.keys.contains("Lang") && dict["Lang"] != nil {
            self.lang = dict["Lang"] as! String
        }
        if dict.keys.contains("UserClientIp") && dict["UserClientIp"] != nil {
            self.userClientIp = dict["UserClientIp"] as! String
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Code") && dict["Code"] != nil {
                self.code = dict["Code"] as! String
            }
            if dict.keys.contains("Email") && dict["Email"] != nil {
                self.email = dict["Email"] as! String
            }
            if dict.keys.contains("Message") && dict["Message"] != nil {
                self.message = dict["Message"] as! String
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Code") && dict["Code"] != nil {
                self.code = dict["Code"] as! String
            }
            if dict.keys.contains("Email") && dict["Email"] != nil {
                self.email = dict["Email"] as! String
            }
            if dict.keys.contains("Message") && dict["Message"] != nil {
                self.message = dict["Message"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("FailList") && dict["FailList"] != nil {
            var tmp : [ResendEmailVerificationResponseBody.FailList] = []
            for v in dict["FailList"] as! [Any] {
                var model = ResendEmailVerificationResponseBody.FailList()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.failList = tmp
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("SuccessList") && dict["SuccessList"] != nil {
            var tmp : [ResendEmailVerificationResponseBody.SuccessList] = []
            for v in dict["SuccessList"] as! [Any] {
                var model = ResendEmailVerificationResponseBody.SuccessList()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = ResendEmailVerificationResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("InstanceId") && dict["InstanceId"] != nil {
            self.instanceId = dict["InstanceId"] as! String
        }
        if dict.keys.contains("Lang") && dict["Lang"] != nil {
            self.lang = dict["Lang"] as! String
        }
        if dict.keys.contains("UserClientIp") && dict["UserClientIp"] != nil {
            self.userClientIp = dict["UserClientIp"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = ResetQualificationVerificationResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("InstanceIds") && dict["InstanceIds"] != nil {
            self.instanceIds = dict["InstanceIds"] as! String
        }
        if dict.keys.contains("Lang") && dict["Lang"] != nil {
            self.lang = dict["Lang"] as! String
        }
        if dict.keys.contains("Remark") && dict["Remark"] != nil {
            self.remark = dict["Remark"] as! String
        }
        if dict.keys.contains("UserClientIp") && dict["UserClientIp"] != nil {
            self.userClientIp = dict["UserClientIp"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = SaveBatchDomainRemarkResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DomainNames") && dict["DomainNames"] != nil {
            self.domainNames = dict["DomainNames"] as! [String]
        }
        if dict.keys.contains("Lang") && dict["Lang"] != nil {
            self.lang = dict["Lang"] as! String
        }
        if dict.keys.contains("UserClientIp") && dict["UserClientIp"] != nil {
            self.userClientIp = dict["UserClientIp"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("TaskNo") && dict["TaskNo"] != nil {
            self.taskNo = dict["TaskNo"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = SaveBatchTaskForApplyQuickTransferOutOpenlyResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Address") && dict["Address"] != nil {
                self.address = dict["Address"] as! String
            }
            if dict.keys.contains("AliyunDns") && dict["AliyunDns"] != nil {
                self.aliyunDns = dict["AliyunDns"] as! Bool
            }
            if dict.keys.contains("City") && dict["City"] != nil {
                self.city = dict["City"] as! String
            }
            if dict.keys.contains("Country") && dict["Country"] != nil {
                self.country = dict["Country"] as! String
            }
            if dict.keys.contains("Dns1") && dict["Dns1"] != nil {
                self.dns1 = dict["Dns1"] as! String
            }
            if dict.keys.contains("Dns2") && dict["Dns2"] != nil {
                self.dns2 = dict["Dns2"] as! String
            }
            if dict.keys.contains("DomainName") && dict["DomainName"] != nil {
                self.domainName = dict["DomainName"] as! String
            }
            if dict.keys.contains("Email") && dict["Email"] != nil {
                self.email = dict["Email"] as! String
            }
            if dict.keys.contains("EnableDomainProxy") && dict["EnableDomainProxy"] != nil {
                self.enableDomainProxy = dict["EnableDomainProxy"] as! Bool
            }
            if dict.keys.contains("PermitPremiumActivation") && dict["PermitPremiumActivation"] != nil {
                self.permitPremiumActivation = dict["PermitPremiumActivation"] as! Bool
            }
            if dict.keys.contains("PostalCode") && dict["PostalCode"] != nil {
                self.postalCode = dict["PostalCode"] as! String
            }
            if dict.keys.contains("Province") && dict["Province"] != nil {
                self.province = dict["Province"] as! String
            }
            if dict.keys.contains("RegistrantName") && dict["RegistrantName"] != nil {
                self.registrantName = dict["RegistrantName"] as! String
            }
            if dict.keys.contains("RegistrantOrganization") && dict["RegistrantOrganization"] != nil {
                self.registrantOrganization = dict["RegistrantOrganization"] as! String
            }
            if dict.keys.contains("RegistrantProfileId") && dict["RegistrantProfileId"] != nil {
                self.registrantProfileId = dict["RegistrantProfileId"] as! Int64
            }
            if dict.keys.contains("RegistrantType") && dict["RegistrantType"] != nil {
                self.registrantType = dict["RegistrantType"] as! String
            }
            if dict.keys.contains("ResourceGroupId") && dict["ResourceGroupId"] != nil {
                self.resourceGroupId = dict["ResourceGroupId"] as! String
            }
            if dict.keys.contains("SubscriptionDuration") && dict["SubscriptionDuration"] != nil {
                self.subscriptionDuration = dict["SubscriptionDuration"] as! Int32
            }
            if dict.keys.contains("TelArea") && dict["TelArea"] != nil {
                self.telArea = dict["TelArea"] as! String
            }
            if dict.keys.contains("TelExt") && dict["TelExt"] != nil {
                self.telExt = dict["TelExt"] as! String
            }
            if dict.keys.contains("Telephone") && dict["Telephone"] != nil {
                self.telephone = dict["Telephone"] as! String
            }
            if dict.keys.contains("TrademarkDomainActivation") && dict["TrademarkDomainActivation"] != nil {
                self.trademarkDomainActivation = dict["TrademarkDomainActivation"] as! Bool
            }
            if dict.keys.contains("ZhAddress") && dict["ZhAddress"] != nil {
                self.zhAddress = dict["ZhAddress"] as! String
            }
            if dict.keys.contains("ZhCity") && dict["ZhCity"] != nil {
                self.zhCity = dict["ZhCity"] as! String
            }
            if dict.keys.contains("ZhProvince") && dict["ZhProvince"] != nil {
                self.zhProvince = dict["ZhProvince"] as! String
            }
            if dict.keys.contains("ZhRegistrantName") && dict["ZhRegistrantName"] != nil {
                self.zhRegistrantName = dict["ZhRegistrantName"] as! String
            }
            if dict.keys.contains("ZhRegistrantOrganization") && dict["ZhRegistrantOrganization"] != nil {
                self.zhRegistrantOrganization = dict["ZhRegistrantOrganization"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("CouponNo") && dict["CouponNo"] != nil {
            self.couponNo = dict["CouponNo"] as! String
        }
        if dict.keys.contains("Lang") && dict["Lang"] != nil {
            self.lang = dict["Lang"] as! String
        }
        if dict.keys.contains("OrderActivateParam") && dict["OrderActivateParam"] != nil {
            var tmp : [SaveBatchTaskForCreatingOrderActivateRequest.OrderActivateParam] = []
            for v in dict["OrderActivateParam"] as! [Any] {
                var model = SaveBatchTaskForCreatingOrderActivateRequest.OrderActivateParam()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.orderActivateParam = tmp
        }
        if dict.keys.contains("PromotionNo") && dict["PromotionNo"] != nil {
            self.promotionNo = dict["PromotionNo"] as! String
        }
        if dict.keys.contains("UseCoupon") && dict["UseCoupon"] != nil {
            self.useCoupon = dict["UseCoupon"] as! Bool
        }
        if dict.keys.contains("UsePromotion") && dict["UsePromotion"] != nil {
            self.usePromotion = dict["UsePromotion"] as! Bool
        }
        if dict.keys.contains("UserClientIp") && dict["UserClientIp"] != nil {
            self.userClientIp = dict["UserClientIp"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("TaskNo") && dict["TaskNo"] != nil {
            self.taskNo = dict["TaskNo"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = SaveBatchTaskForCreatingOrderActivateResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("CurrentExpirationDate") && dict["CurrentExpirationDate"] != nil {
                self.currentExpirationDate = dict["CurrentExpirationDate"] as! Int64
            }
            if dict.keys.contains("DomainName") && dict["DomainName"] != nil {
                self.domainName = dict["DomainName"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("CouponNo") && dict["CouponNo"] != nil {
            self.couponNo = dict["CouponNo"] as! String
        }
        if dict.keys.contains("Lang") && dict["Lang"] != nil {
            self.lang = dict["Lang"] as! String
        }
        if dict.keys.contains("OrderRedeemParam") && dict["OrderRedeemParam"] != nil {
            var tmp : [SaveBatchTaskForCreatingOrderRedeemRequest.OrderRedeemParam] = []
            for v in dict["OrderRedeemParam"] as! [Any] {
                var model = SaveBatchTaskForCreatingOrderRedeemRequest.OrderRedeemParam()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.orderRedeemParam = tmp
        }
        if dict.keys.contains("PromotionNo") && dict["PromotionNo"] != nil {
            self.promotionNo = dict["PromotionNo"] as! String
        }
        if dict.keys.contains("UseCoupon") && dict["UseCoupon"] != nil {
            self.useCoupon = dict["UseCoupon"] as! Bool
        }
        if dict.keys.contains("UsePromotion") && dict["UsePromotion"] != nil {
            self.usePromotion = dict["UsePromotion"] as! Bool
        }
        if dict.keys.contains("UserClientIp") && dict["UserClientIp"] != nil {
            self.userClientIp = dict["UserClientIp"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("TaskNo") && dict["TaskNo"] != nil {
            self.taskNo = dict["TaskNo"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = SaveBatchTaskForCreatingOrderRedeemResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("CurrentExpirationDate") && dict["CurrentExpirationDate"] != nil {
                self.currentExpirationDate = dict["CurrentExpirationDate"] as! Int64
            }
            if dict.keys.contains("DomainName") && dict["DomainName"] != nil {
                self.domainName = dict["DomainName"] as! String
            }
            if dict.keys.contains("SubscriptionDuration") && dict["SubscriptionDuration"] != nil {
                self.subscriptionDuration = dict["SubscriptionDuration"] as! Int32
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("CouponNo") && dict["CouponNo"] != nil {
            self.couponNo = dict["CouponNo"] as! String
        }
        if dict.keys.contains("Lang") && dict["Lang"] != nil {
            self.lang = dict["Lang"] as! String
        }
        if dict.keys.contains("OrderRenewParam") && dict["OrderRenewParam"] != nil {
            var tmp : [SaveBatchTaskForCreatingOrderRenewRequest.OrderRenewParam] = []
            for v in dict["OrderRenewParam"] as! [Any] {
                var model = SaveBatchTaskForCreatingOrderRenewRequest.OrderRenewParam()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.orderRenewParam = tmp
        }
        if dict.keys.contains("PromotionNo") && dict["PromotionNo"] != nil {
            self.promotionNo = dict["PromotionNo"] as! String
        }
        if dict.keys.contains("UseCoupon") && dict["UseCoupon"] != nil {
            self.useCoupon = dict["UseCoupon"] as! Bool
        }
        if dict.keys.contains("UsePromotion") && dict["UsePromotion"] != nil {
            self.usePromotion = dict["UsePromotion"] as! Bool
        }
        if dict.keys.contains("UserClientIp") && dict["UserClientIp"] != nil {
            self.userClientIp = dict["UserClientIp"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("TaskNo") && dict["TaskNo"] != nil {
            self.taskNo = dict["TaskNo"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = SaveBatchTaskForCreatingOrderRenewResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("AuthorizationCode") && dict["AuthorizationCode"] != nil {
                self.authorizationCode = dict["AuthorizationCode"] as! String
            }
            if dict.keys.contains("DomainName") && dict["DomainName"] != nil {
                self.domainName = dict["DomainName"] as! String
            }
            if dict.keys.contains("PermitPremiumTransfer") && dict["PermitPremiumTransfer"] != nil {
                self.permitPremiumTransfer = dict["PermitPremiumTransfer"] as! Bool
            }
            if dict.keys.contains("RegistrantProfileId") && dict["RegistrantProfileId"] != nil {
                self.registrantProfileId = dict["RegistrantProfileId"] as! Int64
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("CouponNo") && dict["CouponNo"] != nil {
            self.couponNo = dict["CouponNo"] as! String
        }
        if dict.keys.contains("Lang") && dict["Lang"] != nil {
            self.lang = dict["Lang"] as! String
        }
        if dict.keys.contains("OrderTransferParam") && dict["OrderTransferParam"] != nil {
            var tmp : [SaveBatchTaskForCreatingOrderTransferRequest.OrderTransferParam] = []
            for v in dict["OrderTransferParam"] as! [Any] {
                var model = SaveBatchTaskForCreatingOrderTransferRequest.OrderTransferParam()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.orderTransferParam = tmp
        }
        if dict.keys.contains("PromotionNo") && dict["PromotionNo"] != nil {
            self.promotionNo = dict["PromotionNo"] as! String
        }
        if dict.keys.contains("UseCoupon") && dict["UseCoupon"] != nil {
            self.useCoupon = dict["UseCoupon"] as! Bool
        }
        if dict.keys.contains("UsePromotion") && dict["UsePromotion"] != nil {
            self.usePromotion = dict["UsePromotion"] as! Bool
        }
        if dict.keys.contains("UserClientIp") && dict["UserClientIp"] != nil {
            self.userClientIp = dict["UserClientIp"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("TaskNo") && dict["TaskNo"] != nil {
            self.taskNo = dict["TaskNo"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = SaveBatchTaskForCreatingOrderTransferResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DomainName") && dict["DomainName"] != nil {
            self.domainName = dict["DomainName"] as! [String]
        }
        if dict.keys.contains("Lang") && dict["Lang"] != nil {
            self.lang = dict["Lang"] as! String
        }
        if dict.keys.contains("Status") && dict["Status"] != nil {
            self.status = dict["Status"] as! Bool
        }
        if dict.keys.contains("UserClientIp") && dict["UserClientIp"] != nil {
            self.userClientIp = dict["UserClientIp"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("TaskNo") && dict["TaskNo"] != nil {
            self.taskNo = dict["TaskNo"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = SaveBatchTaskForDomainNameProxyServiceResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DomainNames") && dict["DomainNames"] != nil {
            self.domainNames = dict["DomainNames"] as! [String]
        }
        if dict.keys.contains("Lang") && dict["Lang"] != nil {
            self.lang = dict["Lang"] as! String
        }
        if dict.keys.contains("UserClientIp") && dict["UserClientIp"] != nil {
            self.userClientIp = dict["UserClientIp"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DomainNames") && dict["DomainNames"] != nil {
            self.domainNamesShrink = dict["DomainNames"] as! String
        }
        if dict.keys.contains("Lang") && dict["Lang"] != nil {
            self.lang = dict["Lang"] as! String
        }
        if dict.keys.contains("UserClientIp") && dict["UserClientIp"] != nil {
            self.userClientIp = dict["UserClientIp"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("TaskNo") && dict["TaskNo"] != nil {
            self.taskNo = dict["TaskNo"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = SaveBatchTaskForGenerateDomainCertificateResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AliyunDns") && dict["AliyunDns"] != nil {
            self.aliyunDns = dict["AliyunDns"] as! Bool
        }
        if dict.keys.contains("DomainName") && dict["DomainName"] != nil {
            self.domainName = dict["DomainName"] as! [String]
        }
        if dict.keys.contains("DomainNameServer") && dict["DomainNameServer"] != nil {
            self.domainNameServer = dict["DomainNameServer"] as! [String]
        }
        if dict.keys.contains("Lang") && dict["Lang"] != nil {
            self.lang = dict["Lang"] as! String
        }
        if dict.keys.contains("UserClientIp") && dict["UserClientIp"] != nil {
            self.userClientIp = dict["UserClientIp"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("TaskNo") && dict["TaskNo"] != nil {
            self.taskNo = dict["TaskNo"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = SaveBatchTaskForModifyingDomainDnsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class SaveBatchTaskForReserveDropListDomainRequest : Tea.TeaModel {
    public class Domains : Tea.TeaModel {
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ContactTemplateId") && dict["ContactTemplateId"] != nil {
            self.contactTemplateId = dict["ContactTemplateId"] as! String
        }
        if dict.keys.contains("Domains") && dict["Domains"] != nil {
            var tmp : [SaveBatchTaskForReserveDropListDomainRequest.Domains] = []
            for v in dict["Domains"] as! [Any] {
                var model = SaveBatchTaskForReserveDropListDomainRequest.Domains()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("TaskNo") && dict["TaskNo"] != nil {
            self.taskNo = dict["TaskNo"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = SaveBatchTaskForReserveDropListDomainResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DomainName") && dict["DomainName"] != nil {
            self.domainName = dict["DomainName"] as! [String]
        }
        if dict.keys.contains("Lang") && dict["Lang"] != nil {
            self.lang = dict["Lang"] as! String
        }
        if dict.keys.contains("Status") && dict["Status"] != nil {
            self.status = dict["Status"] as! Bool
        }
        if dict.keys.contains("UserClientIp") && dict["UserClientIp"] != nil {
            self.userClientIp = dict["UserClientIp"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("TaskNo") && dict["TaskNo"] != nil {
            self.taskNo = dict["TaskNo"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = SaveBatchTaskForTransferProhibitionLockResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DomainName") && dict["DomainName"] != nil {
            self.domainName = dict["DomainName"] as! [String]
        }
        if dict.keys.contains("Lang") && dict["Lang"] != nil {
            self.lang = dict["Lang"] as! String
        }
        if dict.keys.contains("Status") && dict["Status"] != nil {
            self.status = dict["Status"] as! Bool
        }
        if dict.keys.contains("UserClientIp") && dict["UserClientIp"] != nil {
            self.userClientIp = dict["UserClientIp"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("TaskNo") && dict["TaskNo"] != nil {
            self.taskNo = dict["TaskNo"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = SaveBatchTaskForUpdateProhibitionLockResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Address") && dict["Address"] != nil {
            self.address = dict["Address"] as! String
        }
        if dict.keys.contains("City") && dict["City"] != nil {
            self.city = dict["City"] as! String
        }
        if dict.keys.contains("ContactType") && dict["ContactType"] != nil {
            self.contactType = dict["ContactType"] as! String
        }
        if dict.keys.contains("Country") && dict["Country"] != nil {
            self.country = dict["Country"] as! String
        }
        if dict.keys.contains("DomainName") && dict["DomainName"] != nil {
            self.domainName = dict["DomainName"] as! [String]
        }
        if dict.keys.contains("Email") && dict["Email"] != nil {
            self.email = dict["Email"] as! String
        }
        if dict.keys.contains("Lang") && dict["Lang"] != nil {
            self.lang = dict["Lang"] as! String
        }
        if dict.keys.contains("PostalCode") && dict["PostalCode"] != nil {
            self.postalCode = dict["PostalCode"] as! String
        }
        if dict.keys.contains("Province") && dict["Province"] != nil {
            self.province = dict["Province"] as! String
        }
        if dict.keys.contains("RegistrantName") && dict["RegistrantName"] != nil {
            self.registrantName = dict["RegistrantName"] as! String
        }
        if dict.keys.contains("RegistrantOrganization") && dict["RegistrantOrganization"] != nil {
            self.registrantOrganization = dict["RegistrantOrganization"] as! String
        }
        if dict.keys.contains("RegistrantType") && dict["RegistrantType"] != nil {
            self.registrantType = dict["RegistrantType"] as! String
        }
        if dict.keys.contains("TelArea") && dict["TelArea"] != nil {
            self.telArea = dict["TelArea"] as! String
        }
        if dict.keys.contains("TelExt") && dict["TelExt"] != nil {
            self.telExt = dict["TelExt"] as! String
        }
        if dict.keys.contains("Telephone") && dict["Telephone"] != nil {
            self.telephone = dict["Telephone"] as! String
        }
        if dict.keys.contains("TransferOutProhibited") && dict["TransferOutProhibited"] != nil {
            self.transferOutProhibited = dict["TransferOutProhibited"] as! Bool
        }
        if dict.keys.contains("UserClientIp") && dict["UserClientIp"] != nil {
            self.userClientIp = dict["UserClientIp"] as! String
        }
        if dict.keys.contains("ZhAddress") && dict["ZhAddress"] != nil {
            self.zhAddress = dict["ZhAddress"] as! String
        }
        if dict.keys.contains("ZhCity") && dict["ZhCity"] != nil {
            self.zhCity = dict["ZhCity"] as! String
        }
        if dict.keys.contains("ZhProvince") && dict["ZhProvince"] != nil {
            self.zhProvince = dict["ZhProvince"] as! String
        }
        if dict.keys.contains("ZhRegistrantName") && dict["ZhRegistrantName"] != nil {
            self.zhRegistrantName = dict["ZhRegistrantName"] as! String
        }
        if dict.keys.contains("ZhRegistrantOrganization") && dict["ZhRegistrantOrganization"] != nil {
            self.zhRegistrantOrganization = dict["ZhRegistrantOrganization"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("TaskNo") && dict["TaskNo"] != nil {
            self.taskNo = dict["TaskNo"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = SaveBatchTaskForUpdatingContactInfoByNewContactResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ContactType") && dict["ContactType"] != nil {
            self.contactType = dict["ContactType"] as! String
        }
        if dict.keys.contains("DomainName") && dict["DomainName"] != nil {
            self.domainName = dict["DomainName"] as! [String]
        }
        if dict.keys.contains("Lang") && dict["Lang"] != nil {
            self.lang = dict["Lang"] as! String
        }
        if dict.keys.contains("RegistrantProfileId") && dict["RegistrantProfileId"] != nil {
            self.registrantProfileId = dict["RegistrantProfileId"] as! Int64
        }
        if dict.keys.contains("TransferOutProhibited") && dict["TransferOutProhibited"] != nil {
            self.transferOutProhibited = dict["TransferOutProhibited"] as! Bool
        }
        if dict.keys.contains("UserClientIp") && dict["UserClientIp"] != nil {
            self.userClientIp = dict["UserClientIp"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("TaskNo") && dict["TaskNo"] != nil {
            self.taskNo = dict["TaskNo"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = SaveBatchTaskForUpdatingContactInfoByRegistrantProfileIdResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DomainGroupId") && dict["DomainGroupId"] != nil {
            self.domainGroupId = dict["DomainGroupId"] as! Int64
        }
        if dict.keys.contains("DomainGroupName") && dict["DomainGroupName"] != nil {
            self.domainGroupName = dict["DomainGroupName"] as! String
        }
        if dict.keys.contains("Lang") && dict["Lang"] != nil {
            self.lang = dict["Lang"] as! String
        }
        if dict.keys.contains("UserClientIp") && dict["UserClientIp"] != nil {
            self.userClientIp = dict["UserClientIp"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("BeingDeleted") && dict["BeingDeleted"] != nil {
            self.beingDeleted = dict["BeingDeleted"] as! Bool
        }
        if dict.keys.contains("CreationDate") && dict["CreationDate"] != nil {
            self.creationDate = dict["CreationDate"] as! String
        }
        if dict.keys.contains("DomainGroupId") && dict["DomainGroupId"] != nil {
            self.domainGroupId = dict["DomainGroupId"] as! Int64
        }
        if dict.keys.contains("DomainGroupName") && dict["DomainGroupName"] != nil {
            self.domainGroupName = dict["DomainGroupName"] as! String
        }
        if dict.keys.contains("DomainGroupStatus") && dict["DomainGroupStatus"] != nil {
            self.domainGroupStatus = dict["DomainGroupStatus"] as! String
        }
        if dict.keys.contains("ModificationDate") && dict["ModificationDate"] != nil {
            self.modificationDate = dict["ModificationDate"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("TotalNumber") && dict["TotalNumber"] != nil {
            self.totalNumber = dict["TotalNumber"] as! Int32
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = SaveDomainGroupResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Address") && dict["Address"] != nil {
            self.address = dict["Address"] as! String
        }
        if dict.keys.contains("City") && dict["City"] != nil {
            self.city = dict["City"] as! String
        }
        if dict.keys.contains("Country") && dict["Country"] != nil {
            self.country = dict["Country"] as! String
        }
        if dict.keys.contains("DefaultRegistrantProfile") && dict["DefaultRegistrantProfile"] != nil {
            self.defaultRegistrantProfile = dict["DefaultRegistrantProfile"] as! Bool
        }
        if dict.keys.contains("Email") && dict["Email"] != nil {
            self.email = dict["Email"] as! String
        }
        if dict.keys.contains("Lang") && dict["Lang"] != nil {
            self.lang = dict["Lang"] as! String
        }
        if dict.keys.contains("PostalCode") && dict["PostalCode"] != nil {
            self.postalCode = dict["PostalCode"] as! String
        }
        if dict.keys.contains("Province") && dict["Province"] != nil {
            self.province = dict["Province"] as! String
        }
        if dict.keys.contains("RegistrantName") && dict["RegistrantName"] != nil {
            self.registrantName = dict["RegistrantName"] as! String
        }
        if dict.keys.contains("RegistrantOrganization") && dict["RegistrantOrganization"] != nil {
            self.registrantOrganization = dict["RegistrantOrganization"] as! String
        }
        if dict.keys.contains("RegistrantProfileId") && dict["RegistrantProfileId"] != nil {
            self.registrantProfileId = dict["RegistrantProfileId"] as! Int64
        }
        if dict.keys.contains("RegistrantProfileType") && dict["RegistrantProfileType"] != nil {
            self.registrantProfileType = dict["RegistrantProfileType"] as! String
        }
        if dict.keys.contains("RegistrantType") && dict["RegistrantType"] != nil {
            self.registrantType = dict["RegistrantType"] as! String
        }
        if dict.keys.contains("TelArea") && dict["TelArea"] != nil {
            self.telArea = dict["TelArea"] as! String
        }
        if dict.keys.contains("TelExt") && dict["TelExt"] != nil {
            self.telExt = dict["TelExt"] as! String
        }
        if dict.keys.contains("Telephone") && dict["Telephone"] != nil {
            self.telephone = dict["Telephone"] as! String
        }
        if dict.keys.contains("UserClientIp") && dict["UserClientIp"] != nil {
            self.userClientIp = dict["UserClientIp"] as! String
        }
        if dict.keys.contains("ZhAddress") && dict["ZhAddress"] != nil {
            self.zhAddress = dict["ZhAddress"] as! String
        }
        if dict.keys.contains("ZhCity") && dict["ZhCity"] != nil {
            self.zhCity = dict["ZhCity"] as! String
        }
        if dict.keys.contains("ZhProvince") && dict["ZhProvince"] != nil {
            self.zhProvince = dict["ZhProvince"] as! String
        }
        if dict.keys.contains("ZhRegistrantName") && dict["ZhRegistrantName"] != nil {
            self.zhRegistrantName = dict["ZhRegistrantName"] as! String
        }
        if dict.keys.contains("ZhRegistrantOrganization") && dict["ZhRegistrantOrganization"] != nil {
            self.zhRegistrantOrganization = dict["ZhRegistrantOrganization"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RegistrantProfileId") && dict["RegistrantProfileId"] != nil {
            self.registrantProfileId = dict["RegistrantProfileId"] as! Int64
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = SaveRegistrantProfileResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Address") && dict["Address"] != nil {
            self.address = dict["Address"] as! String
        }
        if dict.keys.contains("City") && dict["City"] != nil {
            self.city = dict["City"] as! String
        }
        if dict.keys.contains("Country") && dict["Country"] != nil {
            self.country = dict["Country"] as! String
        }
        if dict.keys.contains("Email") && dict["Email"] != nil {
            self.email = dict["Email"] as! String
        }
        if dict.keys.contains("IdentityCredential") && dict["IdentityCredential"] != nil {
            self.identityCredential = dict["IdentityCredential"] as! String
        }
        if dict.keys.contains("IdentityCredentialNo") && dict["IdentityCredentialNo"] != nil {
            self.identityCredentialNo = dict["IdentityCredentialNo"] as! String
        }
        if dict.keys.contains("IdentityCredentialType") && dict["IdentityCredentialType"] != nil {
            self.identityCredentialType = dict["IdentityCredentialType"] as! String
        }
        if dict.keys.contains("Lang") && dict["Lang"] != nil {
            self.lang = dict["Lang"] as! String
        }
        if dict.keys.contains("PostalCode") && dict["PostalCode"] != nil {
            self.postalCode = dict["PostalCode"] as! String
        }
        if dict.keys.contains("Province") && dict["Province"] != nil {
            self.province = dict["Province"] as! String
        }
        if dict.keys.contains("RegistrantName") && dict["RegistrantName"] != nil {
            self.registrantName = dict["RegistrantName"] as! String
        }
        if dict.keys.contains("RegistrantOrganization") && dict["RegistrantOrganization"] != nil {
            self.registrantOrganization = dict["RegistrantOrganization"] as! String
        }
        if dict.keys.contains("RegistrantProfileId") && dict["RegistrantProfileId"] != nil {
            self.registrantProfileId = dict["RegistrantProfileId"] as! Int64
        }
        if dict.keys.contains("RegistrantProfileType") && dict["RegistrantProfileType"] != nil {
            self.registrantProfileType = dict["RegistrantProfileType"] as! String
        }
        if dict.keys.contains("RegistrantType") && dict["RegistrantType"] != nil {
            self.registrantType = dict["RegistrantType"] as! String
        }
        if dict.keys.contains("TelArea") && dict["TelArea"] != nil {
            self.telArea = dict["TelArea"] as! String
        }
        if dict.keys.contains("TelExt") && dict["TelExt"] != nil {
            self.telExt = dict["TelExt"] as! String
        }
        if dict.keys.contains("Telephone") && dict["Telephone"] != nil {
            self.telephone = dict["Telephone"] as! String
        }
        if dict.keys.contains("UserClientIp") && dict["UserClientIp"] != nil {
            self.userClientIp = dict["UserClientIp"] as! String
        }
        if dict.keys.contains("ZhAddress") && dict["ZhAddress"] != nil {
            self.zhAddress = dict["ZhAddress"] as! String
        }
        if dict.keys.contains("ZhCity") && dict["ZhCity"] != nil {
            self.zhCity = dict["ZhCity"] as! String
        }
        if dict.keys.contains("ZhProvince") && dict["ZhProvince"] != nil {
            self.zhProvince = dict["ZhProvince"] as! String
        }
        if dict.keys.contains("ZhRegistrantName") && dict["ZhRegistrantName"] != nil {
            self.zhRegistrantName = dict["ZhRegistrantName"] as! String
        }
        if dict.keys.contains("ZhRegistrantOrganization") && dict["ZhRegistrantOrganization"] != nil {
            self.zhRegistrantOrganization = dict["ZhRegistrantOrganization"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RegistrantProfileId") && dict["RegistrantProfileId"] != nil {
            self.registrantProfileId = dict["RegistrantProfileId"] as! Int64
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = SaveRegistrantProfileRealNameVerificationResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Algorithm") && dict["Algorithm"] != nil {
            self.algorithm = dict["Algorithm"] as! Int32
        }
        if dict.keys.contains("Digest") && dict["Digest"] != nil {
            self.digest = dict["Digest"] as! String
        }
        if dict.keys.contains("DigestType") && dict["DigestType"] != nil {
            self.digestType = dict["DigestType"] as! Int32
        }
        if dict.keys.contains("DomainName") && dict["DomainName"] != nil {
            self.domainName = dict["DomainName"] as! String
        }
        if dict.keys.contains("KeyTag") && dict["KeyTag"] != nil {
            self.keyTag = dict["KeyTag"] as! Int32
        }
        if dict.keys.contains("Lang") && dict["Lang"] != nil {
            self.lang = dict["Lang"] as! String
        }
        if dict.keys.contains("UserClientIp") && dict["UserClientIp"] != nil {
            self.userClientIp = dict["UserClientIp"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("TaskNo") && dict["TaskNo"] != nil {
            self.taskNo = dict["TaskNo"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = SaveSingleTaskForAddingDSRecordResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DomainName") && dict["DomainName"] != nil {
            self.domainName = dict["DomainName"] as! String
        }
        if dict.keys.contains("Lang") && dict["Lang"] != nil {
            self.lang = dict["Lang"] as! String
        }
        if dict.keys.contains("UserClientIp") && dict["UserClientIp"] != nil {
            self.userClientIp = dict["UserClientIp"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("TaskNo") && dict["TaskNo"] != nil {
            self.taskNo = dict["TaskNo"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = SaveSingleTaskForApplyQuickTransferOutOpenlyResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DomainName") && dict["DomainName"] != nil {
            self.domainName = dict["DomainName"] as! String
        }
        if dict.keys.contains("Lang") && dict["Lang"] != nil {
            self.lang = dict["Lang"] as! String
        }
        if dict.keys.contains("UserClientIp") && dict["UserClientIp"] != nil {
            self.userClientIp = dict["UserClientIp"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("TaskNo") && dict["TaskNo"] != nil {
            self.taskNo = dict["TaskNo"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = SaveSingleTaskForApprovingTransferOutResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Address") && dict["Address"] != nil {
            self.address = dict["Address"] as! String
        }
        if dict.keys.contains("DomainName") && dict["DomainName"] != nil {
            self.domainName = dict["DomainName"] as! String
        }
        if dict.keys.contains("Lang") && dict["Lang"] != nil {
            self.lang = dict["Lang"] as! String
        }
        if dict.keys.contains("UserClientIp") && dict["UserClientIp"] != nil {
            self.userClientIp = dict["UserClientIp"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("TaskNo") && dict["TaskNo"] != nil {
            self.taskNo = dict["TaskNo"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = SaveSingleTaskForAssociatingEnsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DomainName") && dict["DomainName"] != nil {
            self.domainName = dict["DomainName"] as! String
        }
        if dict.keys.contains("Lang") && dict["Lang"] != nil {
            self.lang = dict["Lang"] as! String
        }
        if dict.keys.contains("UserClientIp") && dict["UserClientIp"] != nil {
            self.userClientIp = dict["UserClientIp"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("TaskNo") && dict["TaskNo"] != nil {
            self.taskNo = dict["TaskNo"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = SaveSingleTaskForCancelingTransferInResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DomainName") && dict["DomainName"] != nil {
            self.domainName = dict["DomainName"] as! String
        }
        if dict.keys.contains("Lang") && dict["Lang"] != nil {
            self.lang = dict["Lang"] as! String
        }
        if dict.keys.contains("UserClientIp") && dict["UserClientIp"] != nil {
            self.userClientIp = dict["UserClientIp"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("TaskNo") && dict["TaskNo"] != nil {
            self.taskNo = dict["TaskNo"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = SaveSingleTaskForCancelingTransferOutResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DnsName") && dict["DnsName"] != nil {
            self.dnsName = dict["DnsName"] as! String
        }
        if dict.keys.contains("InstanceId") && dict["InstanceId"] != nil {
            self.instanceId = dict["InstanceId"] as! String
        }
        if dict.keys.contains("Ip") && dict["Ip"] != nil {
            self.ip = dict["Ip"] as! [String]
        }
        if dict.keys.contains("Lang") && dict["Lang"] != nil {
            self.lang = dict["Lang"] as! String
        }
        if dict.keys.contains("UserClientIp") && dict["UserClientIp"] != nil {
            self.userClientIp = dict["UserClientIp"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("TaskNo") && dict["TaskNo"] != nil {
            self.taskNo = dict["TaskNo"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = SaveSingleTaskForCreatingDnsHostResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Address") && dict["Address"] != nil {
            self.address = dict["Address"] as! String
        }
        if dict.keys.contains("AliyunDns") && dict["AliyunDns"] != nil {
            self.aliyunDns = dict["AliyunDns"] as! Bool
        }
        if dict.keys.contains("City") && dict["City"] != nil {
            self.city = dict["City"] as! String
        }
        if dict.keys.contains("Country") && dict["Country"] != nil {
            self.country = dict["Country"] as! String
        }
        if dict.keys.contains("CouponNo") && dict["CouponNo"] != nil {
            self.couponNo = dict["CouponNo"] as! String
        }
        if dict.keys.contains("Dns1") && dict["Dns1"] != nil {
            self.dns1 = dict["Dns1"] as! String
        }
        if dict.keys.contains("Dns2") && dict["Dns2"] != nil {
            self.dns2 = dict["Dns2"] as! String
        }
        if dict.keys.contains("DomainName") && dict["DomainName"] != nil {
            self.domainName = dict["DomainName"] as! String
        }
        if dict.keys.contains("Email") && dict["Email"] != nil {
            self.email = dict["Email"] as! String
        }
        if dict.keys.contains("EnableDomainProxy") && dict["EnableDomainProxy"] != nil {
            self.enableDomainProxy = dict["EnableDomainProxy"] as! Bool
        }
        if dict.keys.contains("Lang") && dict["Lang"] != nil {
            self.lang = dict["Lang"] as! String
        }
        if dict.keys.contains("PermitPremiumActivation") && dict["PermitPremiumActivation"] != nil {
            self.permitPremiumActivation = dict["PermitPremiumActivation"] as! Bool
        }
        if dict.keys.contains("PostalCode") && dict["PostalCode"] != nil {
            self.postalCode = dict["PostalCode"] as! String
        }
        if dict.keys.contains("PromotionNo") && dict["PromotionNo"] != nil {
            self.promotionNo = dict["PromotionNo"] as! String
        }
        if dict.keys.contains("Province") && dict["Province"] != nil {
            self.province = dict["Province"] as! String
        }
        if dict.keys.contains("RegistrantName") && dict["RegistrantName"] != nil {
            self.registrantName = dict["RegistrantName"] as! String
        }
        if dict.keys.contains("RegistrantOrganization") && dict["RegistrantOrganization"] != nil {
            self.registrantOrganization = dict["RegistrantOrganization"] as! String
        }
        if dict.keys.contains("RegistrantProfileId") && dict["RegistrantProfileId"] != nil {
            self.registrantProfileId = dict["RegistrantProfileId"] as! Int64
        }
        if dict.keys.contains("RegistrantType") && dict["RegistrantType"] != nil {
            self.registrantType = dict["RegistrantType"] as! String
        }
        if dict.keys.contains("ResourceGroupId") && dict["ResourceGroupId"] != nil {
            self.resourceGroupId = dict["ResourceGroupId"] as! String
        }
        if dict.keys.contains("SubscriptionDuration") && dict["SubscriptionDuration"] != nil {
            self.subscriptionDuration = dict["SubscriptionDuration"] as! Int32
        }
        if dict.keys.contains("TelArea") && dict["TelArea"] != nil {
            self.telArea = dict["TelArea"] as! String
        }
        if dict.keys.contains("TelExt") && dict["TelExt"] != nil {
            self.telExt = dict["TelExt"] as! String
        }
        if dict.keys.contains("Telephone") && dict["Telephone"] != nil {
            self.telephone = dict["Telephone"] as! String
        }
        if dict.keys.contains("TrademarkDomainActivation") && dict["TrademarkDomainActivation"] != nil {
            self.trademarkDomainActivation = dict["TrademarkDomainActivation"] as! Bool
        }
        if dict.keys.contains("UseCoupon") && dict["UseCoupon"] != nil {
            self.useCoupon = dict["UseCoupon"] as! Bool
        }
        if dict.keys.contains("UsePromotion") && dict["UsePromotion"] != nil {
            self.usePromotion = dict["UsePromotion"] as! Bool
        }
        if dict.keys.contains("UserClientIp") && dict["UserClientIp"] != nil {
            self.userClientIp = dict["UserClientIp"] as! String
        }
        if dict.keys.contains("ZhAddress") && dict["ZhAddress"] != nil {
            self.zhAddress = dict["ZhAddress"] as! String
        }
        if dict.keys.contains("ZhCity") && dict["ZhCity"] != nil {
            self.zhCity = dict["ZhCity"] as! String
        }
        if dict.keys.contains("ZhProvince") && dict["ZhProvince"] != nil {
            self.zhProvince = dict["ZhProvince"] as! String
        }
        if dict.keys.contains("ZhRegistrantName") && dict["ZhRegistrantName"] != nil {
            self.zhRegistrantName = dict["ZhRegistrantName"] as! String
        }
        if dict.keys.contains("ZhRegistrantOrganization") && dict["ZhRegistrantOrganization"] != nil {
            self.zhRegistrantOrganization = dict["ZhRegistrantOrganization"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("TaskNo") && dict["TaskNo"] != nil {
            self.taskNo = dict["TaskNo"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = SaveSingleTaskForCreatingOrderActivateResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("CouponNo") && dict["CouponNo"] != nil {
            self.couponNo = dict["CouponNo"] as! String
        }
        if dict.keys.contains("CurrentExpirationDate") && dict["CurrentExpirationDate"] != nil {
            self.currentExpirationDate = dict["CurrentExpirationDate"] as! Int64
        }
        if dict.keys.contains("DomainName") && dict["DomainName"] != nil {
            self.domainName = dict["DomainName"] as! String
        }
        if dict.keys.contains("Lang") && dict["Lang"] != nil {
            self.lang = dict["Lang"] as! String
        }
        if dict.keys.contains("PromotionNo") && dict["PromotionNo"] != nil {
            self.promotionNo = dict["PromotionNo"] as! String
        }
        if dict.keys.contains("UseCoupon") && dict["UseCoupon"] != nil {
            self.useCoupon = dict["UseCoupon"] as! Bool
        }
        if dict.keys.contains("UsePromotion") && dict["UsePromotion"] != nil {
            self.usePromotion = dict["UsePromotion"] as! Bool
        }
        if dict.keys.contains("UserClientIp") && dict["UserClientIp"] != nil {
            self.userClientIp = dict["UserClientIp"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("TaskNo") && dict["TaskNo"] != nil {
            self.taskNo = dict["TaskNo"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = SaveSingleTaskForCreatingOrderRedeemResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("CouponNo") && dict["CouponNo"] != nil {
            self.couponNo = dict["CouponNo"] as! String
        }
        if dict.keys.contains("CurrentExpirationDate") && dict["CurrentExpirationDate"] != nil {
            self.currentExpirationDate = dict["CurrentExpirationDate"] as! Int64
        }
        if dict.keys.contains("DomainName") && dict["DomainName"] != nil {
            self.domainName = dict["DomainName"] as! String
        }
        if dict.keys.contains("Lang") && dict["Lang"] != nil {
            self.lang = dict["Lang"] as! String
        }
        if dict.keys.contains("PromotionNo") && dict["PromotionNo"] != nil {
            self.promotionNo = dict["PromotionNo"] as! String
        }
        if dict.keys.contains("SubscriptionDuration") && dict["SubscriptionDuration"] != nil {
            self.subscriptionDuration = dict["SubscriptionDuration"] as! Int32
        }
        if dict.keys.contains("UseCoupon") && dict["UseCoupon"] != nil {
            self.useCoupon = dict["UseCoupon"] as! Bool
        }
        if dict.keys.contains("UsePromotion") && dict["UsePromotion"] != nil {
            self.usePromotion = dict["UsePromotion"] as! Bool
        }
        if dict.keys.contains("UserClientIp") && dict["UserClientIp"] != nil {
            self.userClientIp = dict["UserClientIp"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("TaskNo") && dict["TaskNo"] != nil {
            self.taskNo = dict["TaskNo"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = SaveSingleTaskForCreatingOrderRenewResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AuthorizationCode") && dict["AuthorizationCode"] != nil {
            self.authorizationCode = dict["AuthorizationCode"] as! String
        }
        if dict.keys.contains("CouponNo") && dict["CouponNo"] != nil {
            self.couponNo = dict["CouponNo"] as! String
        }
        if dict.keys.contains("DomainName") && dict["DomainName"] != nil {
            self.domainName = dict["DomainName"] as! String
        }
        if dict.keys.contains("Lang") && dict["Lang"] != nil {
            self.lang = dict["Lang"] as! String
        }
        if dict.keys.contains("PermitPremiumTransfer") && dict["PermitPremiumTransfer"] != nil {
            self.permitPremiumTransfer = dict["PermitPremiumTransfer"] as! Bool
        }
        if dict.keys.contains("PromotionNo") && dict["PromotionNo"] != nil {
            self.promotionNo = dict["PromotionNo"] as! String
        }
        if dict.keys.contains("RegistrantProfileId") && dict["RegistrantProfileId"] != nil {
            self.registrantProfileId = dict["RegistrantProfileId"] as! Int64
        }
        if dict.keys.contains("UseCoupon") && dict["UseCoupon"] != nil {
            self.useCoupon = dict["UseCoupon"] as! Bool
        }
        if dict.keys.contains("UsePromotion") && dict["UsePromotion"] != nil {
            self.usePromotion = dict["UsePromotion"] as! Bool
        }
        if dict.keys.contains("UserClientIp") && dict["UserClientIp"] != nil {
            self.userClientIp = dict["UserClientIp"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("TaskNo") && dict["TaskNo"] != nil {
            self.taskNo = dict["TaskNo"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = SaveSingleTaskForCreatingOrderTransferResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DomainName") && dict["DomainName"] != nil {
            self.domainName = dict["DomainName"] as! String
        }
        if dict.keys.contains("KeyTag") && dict["KeyTag"] != nil {
            self.keyTag = dict["KeyTag"] as! Int32
        }
        if dict.keys.contains("Lang") && dict["Lang"] != nil {
            self.lang = dict["Lang"] as! String
        }
        if dict.keys.contains("UserClientIp") && dict["UserClientIp"] != nil {
            self.userClientIp = dict["UserClientIp"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("TaskNo") && dict["TaskNo"] != nil {
            self.taskNo = dict["TaskNo"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = SaveSingleTaskForDeletingDSRecordResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DnsName") && dict["DnsName"] != nil {
            self.dnsName = dict["DnsName"] as! String
        }
        if dict.keys.contains("InstanceId") && dict["InstanceId"] != nil {
            self.instanceId = dict["InstanceId"] as! String
        }
        if dict.keys.contains("Lang") && dict["Lang"] != nil {
            self.lang = dict["Lang"] as! String
        }
        if dict.keys.contains("UserClientIp") && dict["UserClientIp"] != nil {
            self.userClientIp = dict["UserClientIp"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("TaskNo") && dict["TaskNo"] != nil {
            self.taskNo = dict["TaskNo"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = SaveSingleTaskForDeletingDnsHostResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DomainName") && dict["DomainName"] != nil {
            self.domainName = dict["DomainName"] as! String
        }
        if dict.keys.contains("Lang") && dict["Lang"] != nil {
            self.lang = dict["Lang"] as! String
        }
        if dict.keys.contains("UserClientIp") && dict["UserClientIp"] != nil {
            self.userClientIp = dict["UserClientIp"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("TaskNo") && dict["TaskNo"] != nil {
            self.taskNo = dict["TaskNo"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = SaveSingleTaskForDisassociatingEnsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DomainName") && dict["DomainName"] != nil {
            self.domainName = dict["DomainName"] as! String
        }
        if dict.keys.contains("Lang") && dict["Lang"] != nil {
            self.lang = dict["Lang"] as! String
        }
        if dict.keys.contains("Status") && dict["Status"] != nil {
            self.status = dict["Status"] as! Bool
        }
        if dict.keys.contains("UserClientIp") && dict["UserClientIp"] != nil {
            self.userClientIp = dict["UserClientIp"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("TaskNo") && dict["TaskNo"] != nil {
            self.taskNo = dict["TaskNo"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = SaveSingleTaskForDomainNameProxyServiceResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DomainName") && dict["DomainName"] != nil {
            self.domainName = dict["DomainName"] as! String
        }
        if dict.keys.contains("Lang") && dict["Lang"] != nil {
            self.lang = dict["Lang"] as! String
        }
        if dict.keys.contains("UserClientIp") && dict["UserClientIp"] != nil {
            self.userClientIp = dict["UserClientIp"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("TaskNo") && dict["TaskNo"] != nil {
            self.taskNo = dict["TaskNo"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = SaveSingleTaskForGenerateDomainCertificateResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Algorithm") && dict["Algorithm"] != nil {
            self.algorithm = dict["Algorithm"] as! Int32
        }
        if dict.keys.contains("Digest") && dict["Digest"] != nil {
            self.digest = dict["Digest"] as! String
        }
        if dict.keys.contains("DigestType") && dict["DigestType"] != nil {
            self.digestType = dict["DigestType"] as! Int32
        }
        if dict.keys.contains("DomainName") && dict["DomainName"] != nil {
            self.domainName = dict["DomainName"] as! String
        }
        if dict.keys.contains("KeyTag") && dict["KeyTag"] != nil {
            self.keyTag = dict["KeyTag"] as! Int32
        }
        if dict.keys.contains("Lang") && dict["Lang"] != nil {
            self.lang = dict["Lang"] as! String
        }
        if dict.keys.contains("UserClientIp") && dict["UserClientIp"] != nil {
            self.userClientIp = dict["UserClientIp"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("TaskNo") && dict["TaskNo"] != nil {
            self.taskNo = dict["TaskNo"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = SaveSingleTaskForModifyingDSRecordResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DnsName") && dict["DnsName"] != nil {
            self.dnsName = dict["DnsName"] as! String
        }
        if dict.keys.contains("InstanceId") && dict["InstanceId"] != nil {
            self.instanceId = dict["InstanceId"] as! String
        }
        if dict.keys.contains("Ip") && dict["Ip"] != nil {
            self.ip = dict["Ip"] as! [String]
        }
        if dict.keys.contains("Lang") && dict["Lang"] != nil {
            self.lang = dict["Lang"] as! String
        }
        if dict.keys.contains("UserClientIp") && dict["UserClientIp"] != nil {
            self.userClientIp = dict["UserClientIp"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("TaskNo") && dict["TaskNo"] != nil {
            self.taskNo = dict["TaskNo"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = SaveSingleTaskForModifyingDnsHostResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DomainName") && dict["DomainName"] != nil {
            self.domainName = dict["DomainName"] as! String
        }
        if dict.keys.contains("Lang") && dict["Lang"] != nil {
            self.lang = dict["Lang"] as! String
        }
        if dict.keys.contains("UserClientIp") && dict["UserClientIp"] != nil {
            self.userClientIp = dict["UserClientIp"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("TaskNo") && dict["TaskNo"] != nil {
            self.taskNo = dict["TaskNo"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = SaveSingleTaskForQueryingTransferAuthorizationCodeResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DateOrPeriod") && dict["DateOrPeriod"] != nil {
            self.dateOrPeriod = dict["DateOrPeriod"] as! String
        }
        if dict.keys.contains("Dimensions") && dict["Dimensions"] != nil {
            self.dimensions = dict["Dimensions"] as! String
        }
        if dict.keys.contains("DomainName") && dict["DomainName"] != nil {
            self.domainName = dict["DomainName"] as! String
        }
        if dict.keys.contains("Features") && dict["Features"] != nil {
            self.features = dict["Features"] as! String
        }
        if dict.keys.contains("InscriptionsAndMarkings") && dict["InscriptionsAndMarkings"] != nil {
            self.inscriptionsAndMarkings = dict["InscriptionsAndMarkings"] as! String
        }
        if dict.keys.contains("Lang") && dict["Lang"] != nil {
            self.lang = dict["Lang"] as! String
        }
        if dict.keys.contains("Maker") && dict["Maker"] != nil {
            self.maker = dict["Maker"] as! String
        }
        if dict.keys.contains("MaterialsAndTechniques") && dict["MaterialsAndTechniques"] != nil {
            self.materialsAndTechniques = dict["MaterialsAndTechniques"] as! String
        }
        if dict.keys.contains("ObjectType") && dict["ObjectType"] != nil {
            self.objectType = dict["ObjectType"] as! String
        }
        if dict.keys.contains("Reference") && dict["Reference"] != nil {
            self.reference = dict["Reference"] as! String
        }
        if dict.keys.contains("Subject") && dict["Subject"] != nil {
            self.subject = dict["Subject"] as! String
        }
        if dict.keys.contains("Title") && dict["Title"] != nil {
            self.title = dict["Title"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("TaskNo") && dict["TaskNo"] != nil {
            self.taskNo = dict["TaskNo"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = SaveSingleTaskForSaveArtExtensionResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DomainName") && dict["DomainName"] != nil {
            self.domainName = dict["DomainName"] as! String
        }
        if dict.keys.contains("Lang") && dict["Lang"] != nil {
            self.lang = dict["Lang"] as! String
        }
        if dict.keys.contains("UserClientIp") && dict["UserClientIp"] != nil {
            self.userClientIp = dict["UserClientIp"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("TaskNo") && dict["TaskNo"] != nil {
            self.taskNo = dict["TaskNo"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = SaveSingleTaskForSynchronizingDSRecordResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("InstanceId") && dict["InstanceId"] != nil {
            self.instanceId = dict["InstanceId"] as! String
        }
        if dict.keys.contains("Lang") && dict["Lang"] != nil {
            self.lang = dict["Lang"] as! String
        }
        if dict.keys.contains("UserClientIp") && dict["UserClientIp"] != nil {
            self.userClientIp = dict["UserClientIp"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("TaskNo") && dict["TaskNo"] != nil {
            self.taskNo = dict["TaskNo"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = SaveSingleTaskForSynchronizingDnsHostResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DomainName") && dict["DomainName"] != nil {
            self.domainName = dict["DomainName"] as! String
        }
        if dict.keys.contains("Lang") && dict["Lang"] != nil {
            self.lang = dict["Lang"] as! String
        }
        if dict.keys.contains("Status") && dict["Status"] != nil {
            self.status = dict["Status"] as! Bool
        }
        if dict.keys.contains("UserClientIp") && dict["UserClientIp"] != nil {
            self.userClientIp = dict["UserClientIp"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("TaskNo") && dict["TaskNo"] != nil {
            self.taskNo = dict["TaskNo"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = SaveSingleTaskForTransferProhibitionLockResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DomainName") && dict["DomainName"] != nil {
            self.domainName = dict["DomainName"] as! String
        }
        if dict.keys.contains("Lang") && dict["Lang"] != nil {
            self.lang = dict["Lang"] as! String
        }
        if dict.keys.contains("Status") && dict["Status"] != nil {
            self.status = dict["Status"] as! Bool
        }
        if dict.keys.contains("UserClientIp") && dict["UserClientIp"] != nil {
            self.userClientIp = dict["UserClientIp"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("TaskNo") && dict["TaskNo"] != nil {
            self.taskNo = dict["TaskNo"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = SaveSingleTaskForUpdateProhibitionLockResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AddTransferLock") && dict["AddTransferLock"] != nil {
            self.addTransferLock = dict["AddTransferLock"] as! Bool
        }
        if dict.keys.contains("ContactType") && dict["ContactType"] != nil {
            self.contactType = dict["ContactType"] as! String
        }
        if dict.keys.contains("DomainName") && dict["DomainName"] != nil {
            self.domainName = dict["DomainName"] as! String
        }
        if dict.keys.contains("InstanceId") && dict["InstanceId"] != nil {
            self.instanceId = dict["InstanceId"] as! String
        }
        if dict.keys.contains("Lang") && dict["Lang"] != nil {
            self.lang = dict["Lang"] as! String
        }
        if dict.keys.contains("RegistrantProfileId") && dict["RegistrantProfileId"] != nil {
            self.registrantProfileId = dict["RegistrantProfileId"] as! Int64
        }
        if dict.keys.contains("UserClientIp") && dict["UserClientIp"] != nil {
            self.userClientIp = dict["UserClientIp"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("TaskNo") && dict["TaskNo"] != nil {
            self.taskNo = dict["TaskNo"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = SaveSingleTaskForUpdatingContactInfoResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("InstanceId") && dict["InstanceId"] != nil {
            self.instanceId = dict["InstanceId"] as! String
        }
        if dict.keys.contains("Lang") && dict["Lang"] != nil {
            self.lang = dict["Lang"] as! String
        }
        if dict.keys.contains("UserClientIp") && dict["UserClientIp"] != nil {
            self.userClientIp = dict["UserClientIp"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("TaskNo") && dict["TaskNo"] != nil {
            self.taskNo = dict["TaskNo"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = SaveTaskForSubmittingDomainDeleteResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DomainName") && dict["DomainName"] != nil {
            self.domainName = dict["DomainName"] as! [String]
        }
        if dict.keys.contains("IdentityCredential") && dict["IdentityCredential"] != nil {
            self.identityCredential = dict["IdentityCredential"] as! String
        }
        if dict.keys.contains("IdentityCredentialNo") && dict["IdentityCredentialNo"] != nil {
            self.identityCredentialNo = dict["IdentityCredentialNo"] as! String
        }
        if dict.keys.contains("IdentityCredentialType") && dict["IdentityCredentialType"] != nil {
            self.identityCredentialType = dict["IdentityCredentialType"] as! String
        }
        if dict.keys.contains("Lang") && dict["Lang"] != nil {
            self.lang = dict["Lang"] as! String
        }
        if dict.keys.contains("UserClientIp") && dict["UserClientIp"] != nil {
            self.userClientIp = dict["UserClientIp"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("TaskNo") && dict["TaskNo"] != nil {
            self.taskNo = dict["TaskNo"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = SaveTaskForSubmittingDomainRealNameVerificationByIdentityCredentialResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DomainName") && dict["DomainName"] != nil {
            self.domainName = dict["DomainName"] as! String
        }
        if dict.keys.contains("InstanceId") && dict["InstanceId"] != nil {
            self.instanceId = dict["InstanceId"] as! String
        }
        if dict.keys.contains("Lang") && dict["Lang"] != nil {
            self.lang = dict["Lang"] as! String
        }
        if dict.keys.contains("RegistrantProfileId") && dict["RegistrantProfileId"] != nil {
            self.registrantProfileId = dict["RegistrantProfileId"] as! Int64
        }
        if dict.keys.contains("UserClientIp") && dict["UserClientIp"] != nil {
            self.userClientIp = dict["UserClientIp"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("TaskNo") && dict["TaskNo"] != nil {
            self.taskNo = dict["TaskNo"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = SaveTaskForSubmittingDomainRealNameVerificationByRegistrantProfileIDResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Address") && dict["Address"] != nil {
            self.address = dict["Address"] as! String
        }
        if dict.keys.contains("City") && dict["City"] != nil {
            self.city = dict["City"] as! String
        }
        if dict.keys.contains("Country") && dict["Country"] != nil {
            self.country = dict["Country"] as! String
        }
        if dict.keys.contains("DomainName") && dict["DomainName"] != nil {
            self.domainName = dict["DomainName"] as! [String]
        }
        if dict.keys.contains("Email") && dict["Email"] != nil {
            self.email = dict["Email"] as! String
        }
        if dict.keys.contains("IdentityCredential") && dict["IdentityCredential"] != nil {
            self.identityCredential = dict["IdentityCredential"] as! String
        }
        if dict.keys.contains("IdentityCredentialNo") && dict["IdentityCredentialNo"] != nil {
            self.identityCredentialNo = dict["IdentityCredentialNo"] as! String
        }
        if dict.keys.contains("IdentityCredentialType") && dict["IdentityCredentialType"] != nil {
            self.identityCredentialType = dict["IdentityCredentialType"] as! String
        }
        if dict.keys.contains("Lang") && dict["Lang"] != nil {
            self.lang = dict["Lang"] as! String
        }
        if dict.keys.contains("PostalCode") && dict["PostalCode"] != nil {
            self.postalCode = dict["PostalCode"] as! String
        }
        if dict.keys.contains("Province") && dict["Province"] != nil {
            self.province = dict["Province"] as! String
        }
        if dict.keys.contains("RegistrantName") && dict["RegistrantName"] != nil {
            self.registrantName = dict["RegistrantName"] as! String
        }
        if dict.keys.contains("RegistrantOrganization") && dict["RegistrantOrganization"] != nil {
            self.registrantOrganization = dict["RegistrantOrganization"] as! String
        }
        if dict.keys.contains("RegistrantType") && dict["RegistrantType"] != nil {
            self.registrantType = dict["RegistrantType"] as! String
        }
        if dict.keys.contains("TelArea") && dict["TelArea"] != nil {
            self.telArea = dict["TelArea"] as! String
        }
        if dict.keys.contains("TelExt") && dict["TelExt"] != nil {
            self.telExt = dict["TelExt"] as! String
        }
        if dict.keys.contains("Telephone") && dict["Telephone"] != nil {
            self.telephone = dict["Telephone"] as! String
        }
        if dict.keys.contains("TransferOutProhibited") && dict["TransferOutProhibited"] != nil {
            self.transferOutProhibited = dict["TransferOutProhibited"] as! Bool
        }
        if dict.keys.contains("UserClientIp") && dict["UserClientIp"] != nil {
            self.userClientIp = dict["UserClientIp"] as! String
        }
        if dict.keys.contains("ZhAddress") && dict["ZhAddress"] != nil {
            self.zhAddress = dict["ZhAddress"] as! String
        }
        if dict.keys.contains("ZhCity") && dict["ZhCity"] != nil {
            self.zhCity = dict["ZhCity"] as! String
        }
        if dict.keys.contains("ZhProvince") && dict["ZhProvince"] != nil {
            self.zhProvince = dict["ZhProvince"] as! String
        }
        if dict.keys.contains("ZhRegistrantName") && dict["ZhRegistrantName"] != nil {
            self.zhRegistrantName = dict["ZhRegistrantName"] as! String
        }
        if dict.keys.contains("ZhRegistrantOrganization") && dict["ZhRegistrantOrganization"] != nil {
            self.zhRegistrantOrganization = dict["ZhRegistrantOrganization"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("TaskNo") && dict["TaskNo"] != nil {
            self.taskNo = dict["TaskNo"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = SaveTaskForUpdatingRegistrantInfoByIdentityCredentialResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DomainName") && dict["DomainName"] != nil {
            self.domainName = dict["DomainName"] as! [String]
        }
        if dict.keys.contains("Lang") && dict["Lang"] != nil {
            self.lang = dict["Lang"] as! String
        }
        if dict.keys.contains("RegistrantProfileId") && dict["RegistrantProfileId"] != nil {
            self.registrantProfileId = dict["RegistrantProfileId"] as! Int64
        }
        if dict.keys.contains("TransferOutProhibited") && dict["TransferOutProhibited"] != nil {
            self.transferOutProhibited = dict["TransferOutProhibited"] as! Bool
        }
        if dict.keys.contains("UserClientIp") && dict["UserClientIp"] != nil {
            self.userClientIp = dict["UserClientIp"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("TaskNo") && dict["TaskNo"] != nil {
            self.taskNo = dict["TaskNo"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = SaveTaskForUpdatingRegistrantInfoByRegistrantProfileIDResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DomainGroupId") && dict["DomainGroupId"] != nil {
            self.domainGroupId = dict["DomainGroupId"] as! Int64
        }
        if dict.keys.contains("DomainStatus") && dict["DomainStatus"] != nil {
            self.domainStatus = dict["DomainStatus"] as! Int32
        }
        if dict.keys.contains("EndExpirationDate") && dict["EndExpirationDate"] != nil {
            self.endExpirationDate = dict["EndExpirationDate"] as! Int64
        }
        if dict.keys.contains("EndLength") && dict["EndLength"] != nil {
            self.endLength = dict["EndLength"] as! Int32
        }
        if dict.keys.contains("EndRegistrationDate") && dict["EndRegistrationDate"] != nil {
            self.endRegistrationDate = dict["EndRegistrationDate"] as! Int64
        }
        if dict.keys.contains("Excluded") && dict["Excluded"] != nil {
            self.excluded = dict["Excluded"] as! String
        }
        if dict.keys.contains("ExcludedPrefix") && dict["ExcludedPrefix"] != nil {
            self.excludedPrefix = dict["ExcludedPrefix"] as! Bool
        }
        if dict.keys.contains("ExcludedSuffix") && dict["ExcludedSuffix"] != nil {
            self.excludedSuffix = dict["ExcludedSuffix"] as! Bool
        }
        if dict.keys.contains("Form") && dict["Form"] != nil {
            self.form = dict["Form"] as! Int32
        }
        if dict.keys.contains("KeyWord") && dict["KeyWord"] != nil {
            self.keyWord = dict["KeyWord"] as! String
        }
        if dict.keys.contains("KeyWordPrefix") && dict["KeyWordPrefix"] != nil {
            self.keyWordPrefix = dict["KeyWordPrefix"] as! Bool
        }
        if dict.keys.contains("KeyWordSuffix") && dict["KeyWordSuffix"] != nil {
            self.keyWordSuffix = dict["KeyWordSuffix"] as! Bool
        }
        if dict.keys.contains("Lang") && dict["Lang"] != nil {
            self.lang = dict["Lang"] as! String
        }
        if dict.keys.contains("PageSize") && dict["PageSize"] != nil {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("ProductDomainType") && dict["ProductDomainType"] != nil {
            self.productDomainType = dict["ProductDomainType"] as! String
        }
        if dict.keys.contains("ResourceGroupId") && dict["ResourceGroupId"] != nil {
            self.resourceGroupId = dict["ResourceGroupId"] as! String
        }
        if dict.keys.contains("ScrollId") && dict["ScrollId"] != nil {
            self.scrollId = dict["ScrollId"] as! String
        }
        if dict.keys.contains("StartExpirationDate") && dict["StartExpirationDate"] != nil {
            self.startExpirationDate = dict["StartExpirationDate"] as! Int64
        }
        if dict.keys.contains("StartLength") && dict["StartLength"] != nil {
            self.startLength = dict["StartLength"] as! Int32
        }
        if dict.keys.contains("StartRegistrationDate") && dict["StartRegistrationDate"] != nil {
            self.startRegistrationDate = dict["StartRegistrationDate"] as! Int64
        }
        if dict.keys.contains("Suffixs") && dict["Suffixs"] != nil {
            self.suffixs = dict["Suffixs"] as! String
        }
        if dict.keys.contains("TradeType") && dict["TradeType"] != nil {
            self.tradeType = dict["TradeType"] as! Int32
        }
        if dict.keys.contains("UserClientIp") && dict["UserClientIp"] != nil {
            self.userClientIp = dict["UserClientIp"] as! String
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

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("Dns") && dict["Dns"] != nil {
                        self.dns = dict["Dns"] as! [String]
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

                    public override func fromMap(_ dict: [String: Any]) -> Void {
                        if dict.keys.contains("Key") && dict["Key"] != nil {
                            self.key = dict["Key"] as! String
                        }
                        if dict.keys.contains("Value") && dict["Value"] != nil {
                            self.value = dict["Value"] as! String
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

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("Tag") && dict["Tag"] != nil {
                        var tmp : [ScrollDomainListResponseBody.Data.Domain.Tag.Tag] = []
                        for v in dict["Tag"] as! [Any] {
                            var model = ScrollDomainListResponseBody.Data.Domain.Tag.Tag()
                            if v != nil {
                                model.fromMap(v as! [String: Any])
                            }
                            tmp.append(model)
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

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("DnsList") && dict["DnsList"] != nil {
                    var model = ScrollDomainListResponseBody.Data.Domain.DnsList()
                    model.fromMap(dict["DnsList"] as! [String: Any])
                    self.dnsList = model
                }
                if dict.keys.contains("DomainAuditStatus") && dict["DomainAuditStatus"] != nil {
                    self.domainAuditStatus = dict["DomainAuditStatus"] as! String
                }
                if dict.keys.contains("DomainGroupId") && dict["DomainGroupId"] != nil {
                    self.domainGroupId = dict["DomainGroupId"] as! String
                }
                if dict.keys.contains("DomainGroupName") && dict["DomainGroupName"] != nil {
                    self.domainGroupName = dict["DomainGroupName"] as! String
                }
                if dict.keys.contains("DomainName") && dict["DomainName"] != nil {
                    self.domainName = dict["DomainName"] as! String
                }
                if dict.keys.contains("DomainStatus") && dict["DomainStatus"] != nil {
                    self.domainStatus = dict["DomainStatus"] as! String
                }
                if dict.keys.contains("DomainType") && dict["DomainType"] != nil {
                    self.domainType = dict["DomainType"] as! String
                }
                if dict.keys.contains("Email") && dict["Email"] != nil {
                    self.email = dict["Email"] as! String
                }
                if dict.keys.contains("ExpirationCurrDateDiff") && dict["ExpirationCurrDateDiff"] != nil {
                    self.expirationCurrDateDiff = dict["ExpirationCurrDateDiff"] as! Int32
                }
                if dict.keys.contains("ExpirationDate") && dict["ExpirationDate"] != nil {
                    self.expirationDate = dict["ExpirationDate"] as! String
                }
                if dict.keys.contains("ExpirationDateLong") && dict["ExpirationDateLong"] != nil {
                    self.expirationDateLong = dict["ExpirationDateLong"] as! Int64
                }
                if dict.keys.contains("ExpirationDateStatus") && dict["ExpirationDateStatus"] != nil {
                    self.expirationDateStatus = dict["ExpirationDateStatus"] as! String
                }
                if dict.keys.contains("InstanceId") && dict["InstanceId"] != nil {
                    self.instanceId = dict["InstanceId"] as! String
                }
                if dict.keys.contains("Premium") && dict["Premium"] != nil {
                    self.premium = dict["Premium"] as! Bool
                }
                if dict.keys.contains("ProductId") && dict["ProductId"] != nil {
                    self.productId = dict["ProductId"] as! String
                }
                if dict.keys.contains("RegistrantOrganization") && dict["RegistrantOrganization"] != nil {
                    self.registrantOrganization = dict["RegistrantOrganization"] as! String
                }
                if dict.keys.contains("RegistrantType") && dict["RegistrantType"] != nil {
                    self.registrantType = dict["RegistrantType"] as! String
                }
                if dict.keys.contains("RegistrationDate") && dict["RegistrationDate"] != nil {
                    self.registrationDate = dict["RegistrationDate"] as! String
                }
                if dict.keys.contains("RegistrationDateLong") && dict["RegistrationDateLong"] != nil {
                    self.registrationDateLong = dict["RegistrationDateLong"] as! Int64
                }
                if dict.keys.contains("Remark") && dict["Remark"] != nil {
                    self.remark = dict["Remark"] as! String
                }
                if dict.keys.contains("ResourceGroupId") && dict["ResourceGroupId"] != nil {
                    self.resourceGroupId = dict["ResourceGroupId"] as! String
                }
                if dict.keys.contains("Tag") && dict["Tag"] != nil {
                    var model = ScrollDomainListResponseBody.Data.Domain.Tag()
                    model.fromMap(dict["Tag"] as! [String: Any])
                    self.tag = model
                }
                if dict.keys.contains("ZhRegistrantOrganization") && dict["ZhRegistrantOrganization"] != nil {
                    self.zhRegistrantOrganization = dict["ZhRegistrantOrganization"] as! String
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Domain") && dict["Domain"] != nil {
                var tmp : [ScrollDomainListResponseBody.Data.Domain] = []
                for v in dict["Domain"] as! [Any] {
                    var model = ScrollDomainListResponseBody.Data.Domain()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Data") && dict["Data"] != nil {
            var model = ScrollDomainListResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("PageSize") && dict["PageSize"] != nil {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("ScrollId") && dict["ScrollId"] != nil {
            self.scrollId = dict["ScrollId"] as! String
        }
        if dict.keys.contains("TotalItemNum") && dict["TotalItemNum"] != nil {
            self.totalItemNum = dict["TotalItemNum"] as! Int32
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = ScrollDomainListResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RegistrantProfileId") && dict["RegistrantProfileId"] != nil {
            self.registrantProfileId = dict["RegistrantProfileId"] as! Int64
        }
        if dict.keys.contains("UserClientIp") && dict["UserClientIp"] != nil {
            self.userClientIp = dict["UserClientIp"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = SetDefaultRegistrantProfileResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("InstanceId") && dict["InstanceId"] != nil {
            self.instanceId = dict["InstanceId"] as! String
        }
        if dict.keys.contains("Operation") && dict["Operation"] != nil {
            self.operation = dict["Operation"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Result") && dict["Result"] != nil {
            self.result = dict["Result"] as! Bool
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = SetupDomainAutoRenewResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("BizId") && dict["BizId"] != nil {
            self.bizId = dict["BizId"] as! Int64
        }
        if dict.keys.contains("Credentials") && dict["Credentials"] != nil {
            self.credentials = dict["Credentials"] as! String
        }
        if dict.keys.contains("Extend") && dict["Extend"] != nil {
            self.extend = dict["Extend"] as! String
        }
        if dict.keys.contains("UserClientIp") && dict["UserClientIp"] != nil {
            self.userClientIp = dict["UserClientIp"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AllowRetry") && dict["AllowRetry"] != nil {
            self.allowRetry = dict["AllowRetry"] as! Bool
        }
        if dict.keys.contains("AppName") && dict["AppName"] != nil {
            self.appName = dict["AppName"] as! String
        }
        if dict.keys.contains("DynamicCode") && dict["DynamicCode"] != nil {
            self.dynamicCode = dict["DynamicCode"] as! String
        }
        if dict.keys.contains("DynamicMessage") && dict["DynamicMessage"] != nil {
            self.dynamicMessage = dict["DynamicMessage"] as! String
        }
        if dict.keys.contains("ErrorArgs") && dict["ErrorArgs"] != nil {
            self.errorArgs = dict["ErrorArgs"] as! [Any]
        }
        if dict.keys.contains("ErrorCode") && dict["ErrorCode"] != nil {
            self.errorCode = dict["ErrorCode"] as! String
        }
        if dict.keys.contains("ErrorMsg") && dict["ErrorMsg"] != nil {
            self.errorMsg = dict["ErrorMsg"] as! String
        }
        if dict.keys.contains("HttpStatusCode") && dict["HttpStatusCode"] != nil {
            self.httpStatusCode = dict["HttpStatusCode"] as! Int32
        }
        if dict.keys.contains("Module") && dict["Module"] != nil {
            self.module = dict["Module"] as! Any
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") && dict["Success"] != nil {
            self.success = dict["Success"] as! Bool
        }
        if dict.keys.contains("Synchro") && dict["Synchro"] != nil {
            self.synchro = dict["Synchro"] as! Bool
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = SubmitDomainSpecialBizCredentialsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Email") && dict["Email"] != nil {
            self.email = dict["Email"] as! String
        }
        if dict.keys.contains("Lang") && dict["Lang"] != nil {
            self.lang = dict["Lang"] as! String
        }
        if dict.keys.contains("SendIfExist") && dict["SendIfExist"] != nil {
            self.sendIfExist = dict["SendIfExist"] as! Bool
        }
        if dict.keys.contains("UserClientIp") && dict["UserClientIp"] != nil {
            self.userClientIp = dict["UserClientIp"] as! String
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Code") && dict["Code"] != nil {
                self.code = dict["Code"] as! String
            }
            if dict.keys.contains("Email") && dict["Email"] != nil {
                self.email = dict["Email"] as! String
            }
            if dict.keys.contains("Message") && dict["Message"] != nil {
                self.message = dict["Message"] as! String
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Code") && dict["Code"] != nil {
                self.code = dict["Code"] as! String
            }
            if dict.keys.contains("Email") && dict["Email"] != nil {
                self.email = dict["Email"] as! String
            }
            if dict.keys.contains("Message") && dict["Message"] != nil {
                self.message = dict["Message"] as! String
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Code") && dict["Code"] != nil {
                self.code = dict["Code"] as! String
            }
            if dict.keys.contains("Email") && dict["Email"] != nil {
                self.email = dict["Email"] as! String
            }
            if dict.keys.contains("Message") && dict["Message"] != nil {
                self.message = dict["Message"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ExistList") && dict["ExistList"] != nil {
            var tmp : [SubmitEmailVerificationResponseBody.ExistList] = []
            for v in dict["ExistList"] as! [Any] {
                var model = SubmitEmailVerificationResponseBody.ExistList()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.existList = tmp
        }
        if dict.keys.contains("FailList") && dict["FailList"] != nil {
            var tmp : [SubmitEmailVerificationResponseBody.FailList] = []
            for v in dict["FailList"] as! [Any] {
                var model = SubmitEmailVerificationResponseBody.FailList()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.failList = tmp
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("SuccessList") && dict["SuccessList"] != nil {
            var tmp : [SubmitEmailVerificationResponseBody.SuccessList] = []
            for v in dict["SuccessList"] as! [Any] {
                var model = SubmitEmailVerificationResponseBody.SuccessList()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = SubmitEmailVerificationResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AuditInfo") && dict["AuditInfo"] != nil {
            self.auditInfo = dict["AuditInfo"] as! String
        }
        if dict.keys.contains("AuditType") && dict["AuditType"] != nil {
            self.auditType = dict["AuditType"] as! Int32
        }
        if dict.keys.contains("DomainName") && dict["DomainName"] != nil {
            self.domainName = dict["DomainName"] as! String
        }
        if dict.keys.contains("Id") && dict["Id"] != nil {
            self.id = dict["Id"] as! Int64
        }
        if dict.keys.contains("Lang") && dict["Lang"] != nil {
            self.lang = dict["Lang"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Id") && dict["Id"] != nil {
            self.id = dict["Id"] as! Int64
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = SubmitOperationAuditInfoResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AuditRecordId") && dict["AuditRecordId"] != nil {
            self.auditRecordId = dict["AuditRecordId"] as! Int64
        }
        if dict.keys.contains("AuditType") && dict["AuditType"] != nil {
            self.auditType = dict["AuditType"] as! Int32
        }
        if dict.keys.contains("Credentials") && dict["Credentials"] != nil {
            self.credentials = dict["Credentials"] as! String
        }
        if dict.keys.contains("Lang") && dict["Lang"] != nil {
            self.lang = dict["Lang"] as! String
        }
        if dict.keys.contains("RegType") && dict["RegType"] != nil {
            self.regType = dict["RegType"] as! Int32
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = SubmitOperationCredentialsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Lang") && dict["Lang"] != nil {
            self.lang = dict["Lang"] as! String
        }
        if dict.keys.contains("Token") && dict["Token"] != nil {
            self.token = dict["Token"] as! String
        }
        if dict.keys.contains("UserClientIp") && dict["UserClientIp"] != nil {
            self.userClientIp = dict["UserClientIp"] as! String
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("FailDomain") && dict["FailDomain"] != nil {
                self.failDomain = dict["FailDomain"] as! [String]
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("SuccessDomain") && dict["SuccessDomain"] != nil {
                self.successDomain = dict["SuccessDomain"] as! [String]
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("FailList") && dict["FailList"] != nil {
            var model = TransferInCheckMailTokenResponseBody.FailList()
            model.fromMap(dict["FailList"] as! [String: Any])
            self.failList = model
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("SuccessList") && dict["SuccessList"] != nil {
            var model = TransferInCheckMailTokenResponseBody.SuccessList()
            model.fromMap(dict["SuccessList"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = TransferInCheckMailTokenResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DomainName") && dict["DomainName"] != nil {
            self.domainName = dict["DomainName"] as! String
        }
        if dict.keys.contains("Lang") && dict["Lang"] != nil {
            self.lang = dict["Lang"] as! String
        }
        if dict.keys.contains("TransferAuthorizationCode") && dict["TransferAuthorizationCode"] != nil {
            self.transferAuthorizationCode = dict["TransferAuthorizationCode"] as! String
        }
        if dict.keys.contains("UserClientIp") && dict["UserClientIp"] != nil {
            self.userClientIp = dict["UserClientIp"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = TransferInReenterTransferAuthorizationCodeResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DomainName") && dict["DomainName"] != nil {
            self.domainName = dict["DomainName"] as! String
        }
        if dict.keys.contains("Lang") && dict["Lang"] != nil {
            self.lang = dict["Lang"] as! String
        }
        if dict.keys.contains("UserClientIp") && dict["UserClientIp"] != nil {
            self.userClientIp = dict["UserClientIp"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = TransferInRefetchWhoisEmailResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DomainName") && dict["DomainName"] != nil {
            self.domainName = dict["DomainName"] as! String
        }
        if dict.keys.contains("Lang") && dict["Lang"] != nil {
            self.lang = dict["Lang"] as! String
        }
        if dict.keys.contains("UserClientIp") && dict["UserClientIp"] != nil {
            self.userClientIp = dict["UserClientIp"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = TransferInResendMailTokenResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DataSource") && dict["DataSource"] != nil {
            self.dataSource = dict["DataSource"] as! Int32
        }
        if dict.keys.contains("DomainGroupId") && dict["DomainGroupId"] != nil {
            self.domainGroupId = dict["DomainGroupId"] as! Int64
        }
        if dict.keys.contains("DomainName") && dict["DomainName"] != nil {
            self.domainName = dict["DomainName"] as! [String]
        }
        if dict.keys.contains("FileToUpload") && dict["FileToUpload"] != nil {
            self.fileToUpload = dict["FileToUpload"] as! String
        }
        if dict.keys.contains("Lang") && dict["Lang"] != nil {
            self.lang = dict["Lang"] as! String
        }
        if dict.keys.contains("Replace") && dict["Replace"] != nil {
            self.replace = dict["Replace"] as! Bool
        }
        if dict.keys.contains("UserClientIp") && dict["UserClientIp"] != nil {
            self.userClientIp = dict["UserClientIp"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = UpdateDomainToDomainGroupResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Address") && dict["Address"] != nil {
            self.address = dict["Address"] as! String
        }
        if dict.keys.contains("City") && dict["City"] != nil {
            self.city = dict["City"] as! String
        }
        if dict.keys.contains("Country") && dict["Country"] != nil {
            self.country = dict["Country"] as! String
        }
        if dict.keys.contains("DomainName") && dict["DomainName"] != nil {
            self.domainName = dict["DomainName"] as! String
        }
        if dict.keys.contains("Email") && dict["Email"] != nil {
            self.email = dict["Email"] as! String
        }
        if dict.keys.contains("Lang") && dict["Lang"] != nil {
            self.lang = dict["Lang"] as! String
        }
        if dict.keys.contains("PostalCode") && dict["PostalCode"] != nil {
            self.postalCode = dict["PostalCode"] as! String
        }
        if dict.keys.contains("Province") && dict["Province"] != nil {
            self.province = dict["Province"] as! String
        }
        if dict.keys.contains("RegistrantName") && dict["RegistrantName"] != nil {
            self.registrantName = dict["RegistrantName"] as! String
        }
        if dict.keys.contains("RegistrantOrganization") && dict["RegistrantOrganization"] != nil {
            self.registrantOrganization = dict["RegistrantOrganization"] as! String
        }
        if dict.keys.contains("RegistrantType") && dict["RegistrantType"] != nil {
            self.registrantType = dict["RegistrantType"] as! String
        }
        if dict.keys.contains("TelArea") && dict["TelArea"] != nil {
            self.telArea = dict["TelArea"] as! String
        }
        if dict.keys.contains("TelExt") && dict["TelExt"] != nil {
            self.telExt = dict["TelExt"] as! String
        }
        if dict.keys.contains("Telephone") && dict["Telephone"] != nil {
            self.telephone = dict["Telephone"] as! String
        }
        if dict.keys.contains("UserClientIp") && dict["UserClientIp"] != nil {
            self.userClientIp = dict["UserClientIp"] as! String
        }
        if dict.keys.contains("ZhAddress") && dict["ZhAddress"] != nil {
            self.zhAddress = dict["ZhAddress"] as! String
        }
        if dict.keys.contains("ZhCity") && dict["ZhCity"] != nil {
            self.zhCity = dict["ZhCity"] as! String
        }
        if dict.keys.contains("ZhProvince") && dict["ZhProvince"] != nil {
            self.zhProvince = dict["ZhProvince"] as! String
        }
        if dict.keys.contains("ZhRegistrantName") && dict["ZhRegistrantName"] != nil {
            self.zhRegistrantName = dict["ZhRegistrantName"] as! String
        }
        if dict.keys.contains("ZhRegistrantOrganization") && dict["ZhRegistrantOrganization"] != nil {
            self.zhRegistrantOrganization = dict["ZhRegistrantOrganization"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = VerifyContactFieldResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Lang") && dict["Lang"] != nil {
            self.lang = dict["Lang"] as! String
        }
        if dict.keys.contains("Token") && dict["Token"] != nil {
            self.token = dict["Token"] as! String
        }
        if dict.keys.contains("UserClientIp") && dict["UserClientIp"] != nil {
            self.userClientIp = dict["UserClientIp"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = VerifyEmailResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}
