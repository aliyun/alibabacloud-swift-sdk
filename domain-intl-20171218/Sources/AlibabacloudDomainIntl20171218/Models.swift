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

public class CheckDomainRequest : Tea.TeaModel {
    public var domainName: String?

    public var feeCommand: String?

    public var feeCurrency: String?

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
        if let value = dict["UserClientIp"] as? String {
            self.userClientIp = value
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

    public override init() {
        super.init()
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
    public var dnsList: QueryDomainByDomainNameResponseBody.DnsList?

    public var domainName: String?

    public var domainNameProxyService: Bool?

    public var domainNameVerificationStatus: String?

    public var email: String?

    public var emailVerificationClientHold: Bool?

    public var emailVerificationStatus: Int32?

    public var expirationDate: String?

    public var expirationDateLong: Int64?

    public var instanceId: String?

    public var premium: Bool?

    public var realNameStatus: String?

    public var registrantName: String?

    public var registrantOrganization: String?

    public var registrantType: String?

    public var registrantUpdatingStatus: String?

    public var registrationDate: String?

    public var registrationDateLong: Int64?

    public var requestId: String?

    public var transferOutStatus: String?

    public var transferProhibitionLock: String?

    public var updateProhibitionLock: String?

    public var userId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.dnsList?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.dnsList != nil {
            map["DnsList"] = self.dnsList?.toMap()
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
        if self.email != nil {
            map["Email"] = self.email!
        }
        if self.emailVerificationClientHold != nil {
            map["EmailVerificationClientHold"] = self.emailVerificationClientHold!
        }
        if self.emailVerificationStatus != nil {
            map["EmailVerificationStatus"] = self.emailVerificationStatus!
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
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
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
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["DnsList"] as? [String: Any?] {
            var model = QueryDomainByDomainNameResponseBody.DnsList()
            model.fromMap(value)
            self.dnsList = model
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
        if let value = dict["Email"] as? String {
            self.email = value
        }
        if let value = dict["EmailVerificationClientHold"] as? Bool {
            self.emailVerificationClientHold = value
        }
        if let value = dict["EmailVerificationStatus"] as? Int32 {
            self.emailVerificationStatus = value
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
        if let value = dict["RequestId"] as? String {
            self.requestId = value
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
    public var dnsList: QueryDomainByInstanceIdResponseBody.DnsList?

    public var domainName: String?

    public var domainNameProxyService: Bool?

    public var domainNameVerificationStatus: String?

    public var email: String?

    public var emailVerificationClientHold: Bool?

    public var emailVerificationStatus: Int32?

    public var expirationDate: String?

    public var expirationDateLong: Int64?

    public var instanceId: String?

    public var premium: Bool?

    public var realNameStatus: String?

    public var registrantName: String?

    public var registrantOrganization: String?

    public var registrantType: String?

    public var registrantUpdatingStatus: String?

    public var registrationDate: String?

    public var registrationDateLong: Int64?

    public var requestId: String?

    public var transferOutStatus: String?

    public var transferProhibitionLock: String?

    public var updateProhibitionLock: String?

    public var userId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.dnsList?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.dnsList != nil {
            map["DnsList"] = self.dnsList?.toMap()
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
        if self.email != nil {
            map["Email"] = self.email!
        }
        if self.emailVerificationClientHold != nil {
            map["EmailVerificationClientHold"] = self.emailVerificationClientHold!
        }
        if self.emailVerificationStatus != nil {
            map["EmailVerificationStatus"] = self.emailVerificationStatus!
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
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
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
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["DnsList"] as? [String: Any?] {
            var model = QueryDomainByInstanceIdResponseBody.DnsList()
            model.fromMap(value)
            self.dnsList = model
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
        if let value = dict["Email"] as? String {
            self.email = value
        }
        if let value = dict["EmailVerificationClientHold"] as? Bool {
            self.emailVerificationClientHold = value
        }
        if let value = dict["EmailVerificationStatus"] as? Int32 {
            self.emailVerificationStatus = value
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
        if let value = dict["RequestId"] as? String {
            self.requestId = value
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

public class QueryDomainListRequest : Tea.TeaModel {
    public var ccompany: String?

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

    public var startExpirationDate: Int64?

    public var startRegistrationDate: Int64?

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
        if self.startExpirationDate != nil {
            map["StartExpirationDate"] = self.startExpirationDate!
        }
        if self.startRegistrationDate != nil {
            map["StartRegistrationDate"] = self.startRegistrationDate!
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
        if let value = dict["StartExpirationDate"] as? Int64 {
            self.startExpirationDate = value
        }
        if let value = dict["StartRegistrationDate"] as? Int64 {
            self.startRegistrationDate = value
        }
        if let value = dict["UserClientIp"] as? String {
            self.userClientIp = value
        }
    }
}

public class QueryDomainListResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class Domain : Tea.TeaModel {
            public var domainAuditStatus: String?

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

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.domainAuditStatus != nil {
                    map["DomainAuditStatus"] = self.domainAuditStatus!
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
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["DomainAuditStatus"] as? String {
                    self.domainAuditStatus = value
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
                if let value = dict["RegistrationDate"] as? String {
                    self.registrationDate = value
                }
                if let value = dict["RegistrationDateLong"] as? Int64 {
                    self.registrationDateLong = value
                }
                if let value = dict["Remark"] as? String {
                    self.remark = value
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
        if let value = dict["UserClientIp"] as? String {
            self.userClientIp = value
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

            public override init() {
                super.init()
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
                if let value = dict["DefaultRegistrantProfile"] as? Bool {
                    self.defaultRegistrantProfile = value
                }
                if let value = dict["Email"] as? String {
                    self.email = value
                }
                if let value = dict["EmailVerificationStatus"] as? Int32 {
                    self.emailVerificationStatus = value
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

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["Clientip"] as? String {
                    self.clientip = value
                }
                if let value = dict["CreateTime"] as? String {
                    self.createTime = value
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

        public var subscriptionDuration: Int32?

        public var telArea: String?

        public var telExt: String?

        public var telephone: String?

        public var trademarkDomainActivation: Bool?

        public override init() {
            super.init()
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

    public var userClientIp: String?

    public var status: Bool?

    public override init() {
        super.init()
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
        if self.status != nil {
            map["status"] = self.status!
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
        if let value = dict["UserClientIp"] as? String {
            self.userClientIp = value
        }
        if let value = dict["status"] as? Bool {
            self.status = value
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

public class SaveBatchTaskForUpdatingContactInfoRequest : Tea.TeaModel {
    public var addTransferLock: Bool?

    public var contactType: String?

    public var domainName: [String]?

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
        if let value = dict["DomainName"] as? [String] {
            self.domainName = value
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

public class SaveBatchTaskForUpdatingContactInfoResponseBody : Tea.TeaModel {
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

public class SaveBatchTaskForUpdatingContactInfoResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: SaveBatchTaskForUpdatingContactInfoResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = SaveBatchTaskForUpdatingContactInfoResponseBody()
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

    public var telArea: String?

    public var telExt: String?

    public var telephone: String?

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

    public override init() {
        super.init()
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

    public var subscriptionDuration: Int32?

    public var telArea: String?

    public var telExt: String?

    public var telephone: String?

    public var trademarkDomainActivation: Bool?

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

    public override init() {
        super.init()
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

    public override init() {
        super.init()
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
