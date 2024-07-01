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
        if dict.keys.contains("Lang") {
            self.lang = dict["Lang"] as! String
        }
        if dict.keys.contains("TaskDetailNo") {
            self.taskDetailNo = dict["TaskDetailNo"] as! [String]
        }
        if dict.keys.contains("UserClientIp") {
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
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Result") {
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
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
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
        if dict.keys.contains("Keyword") {
            self.keyword = dict["Keyword"] as! String
        }
        if dict.keys.contains("Lang") {
            self.lang = dict["Lang"] as! String
        }
        if dict.keys.contains("UserClientIp") {
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
                        if dict.keys.contains("Word") {
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
                    if dict.keys.contains("MatchedSensitiveWord") {
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
                if dict.keys.contains("Exist") {
                    self.exist = dict["Exist"] as! Bool
                }
                if dict.keys.contains("Keyword") {
                    self.keyword = dict["Keyword"] as! String
                }
                if dict.keys.contains("MatchedSentiveWords") {
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
            if dict.keys.contains("SensitiveWordMatchResult") {
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
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("SensitiveWordMatchResultList") {
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
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
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
        if dict.keys.contains("ActionType") {
            self.actionType = dict["ActionType"] as! String
        }
        if dict.keys.contains("InstanceId") {
            self.instanceId = dict["InstanceId"] as! String
        }
        if dict.keys.contains("Lang") {
            self.lang = dict["Lang"] as! String
        }
        if dict.keys.contains("UserClientIp") {
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
        if dict.keys.contains("RequestId") {
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
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = CancelDomainVerificationResponseBody()
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
        if dict.keys.contains("Lang") {
            self.lang = dict["Lang"] as! String
        }
        if dict.keys.contains("TaskNo") {
            self.taskNo = dict["TaskNo"] as! String
        }
        if dict.keys.contains("UserClientIp") {
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
        if dict.keys.contains("RequestId") {
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
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = CancelTaskResponseBody()
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

    public var userClientIp: String?

    public override init() {
        super.init()
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DomainName") {
            self.domainName = dict["DomainName"] as! String
        }
        if dict.keys.contains("FeeCommand") {
            self.feeCommand = dict["FeeCommand"] as! String
        }
        if dict.keys.contains("FeeCurrency") {
            self.feeCurrency = dict["FeeCurrency"] as! String
        }
        if dict.keys.contains("FeePeriod") {
            self.feePeriod = dict["FeePeriod"] as! Int32
        }
        if dict.keys.contains("Lang") {
            self.lang = dict["Lang"] as! String
        }
        if dict.keys.contains("UserClientIp") {
            self.userClientIp = dict["UserClientIp"] as! String
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
        if dict.keys.contains("Avail") {
            self.avail = dict["Avail"] as! String
        }
        if dict.keys.contains("DomainName") {
            self.domainName = dict["DomainName"] as! String
        }
        if dict.keys.contains("DynamicCheck") {
            self.dynamicCheck = dict["DynamicCheck"] as! Bool
        }
        if dict.keys.contains("Premium") {
            self.premium = dict["Premium"] as! String
        }
        if dict.keys.contains("Price") {
            self.price = dict["Price"] as! Int64
        }
        if dict.keys.contains("Reason") {
            self.reason = dict["Reason"] as! String
        }
        if dict.keys.contains("RequestId") {
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
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
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
        if dict.keys.contains("DomainName") {
            self.domainName = dict["DomainName"] as! String
        }
        if dict.keys.contains("Lang") {
            self.lang = dict["Lang"] as! String
        }
        if dict.keys.contains("UserClientIp") {
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
        if dict.keys.contains("ClaimKey") {
            self.claimKey = dict["ClaimKey"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Result") {
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
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = CheckDomainSunriseClaimResponseBody()
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
        if dict.keys.contains("DomainName") {
            self.domainName = dict["DomainName"] as! String
        }
        if dict.keys.contains("Lang") {
            self.lang = dict["Lang"] as! String
        }
        if dict.keys.contains("TransferAuthorizationCode") {
            self.transferAuthorizationCode = dict["TransferAuthorizationCode"] as! String
        }
        if dict.keys.contains("UserClientIp") {
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
        if dict.keys.contains("CanTransfer") {
            self.canTransfer = dict["CanTransfer"] as! Bool
        }
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Message") {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("ProductId") {
            self.productId = dict["ProductId"] as! String
        }
        if dict.keys.contains("RequestId") {
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
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
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
        if dict.keys.contains("DomainName") {
            self.domainName = dict["DomainName"] as! [String]
        }
        if dict.keys.contains("Email") {
            self.email = dict["Email"] as! String
        }
        if dict.keys.contains("Lang") {
            self.lang = dict["Lang"] as! String
        }
        if dict.keys.contains("UserClientIp") {
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
            if dict.keys.contains("FailDomain") {
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
            if dict.keys.contains("SuccessDomain") {
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
        if dict.keys.contains("FailList") {
            var model = ConfirmTransferInEmailResponseBody.FailList()
            model.fromMap(dict["FailList"] as! [String: Any])
            self.failList = model
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("SuccessList") {
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
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = ConfirmTransferInEmailResponseBody()
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
        if dict.keys.contains("Email") {
            self.email = dict["Email"] as! String
        }
        if dict.keys.contains("Lang") {
            self.lang = dict["Lang"] as! String
        }
        if dict.keys.contains("UserClientIp") {
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
            if dict.keys.contains("Code") {
                self.code = dict["Code"] as! String
            }
            if dict.keys.contains("Email") {
                self.email = dict["Email"] as! String
            }
            if dict.keys.contains("Message") {
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
            if dict.keys.contains("Code") {
                self.code = dict["Code"] as! String
            }
            if dict.keys.contains("Email") {
                self.email = dict["Email"] as! String
            }
            if dict.keys.contains("Message") {
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
        if dict.keys.contains("FailList") {
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
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("SuccessList") {
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
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
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
        if dict.keys.contains("Lang") {
            self.lang = dict["Lang"] as! String
        }
        if dict.keys.contains("RegistrantProfileId") {
            self.registrantProfileId = dict["RegistrantProfileId"] as! Int64
        }
        if dict.keys.contains("UserClientIp") {
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
        if dict.keys.contains("RequestId") {
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
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = DeleteRegistrantProfileResponseBody()
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
        if dict.keys.contains("Email") {
            self.email = dict["Email"] as! String
        }
        if dict.keys.contains("Lang") {
            self.lang = dict["Lang"] as! String
        }
        if dict.keys.contains("UserClientIp") {
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
        if dict.keys.contains("RequestId") {
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
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
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
        if dict.keys.contains("Keyword") {
            self.keyword = dict["Keyword"] as! String
        }
        if dict.keys.contains("Lang") {
            self.lang = dict["Lang"] as! String
        }
        if dict.keys.contains("UserClientIp") {
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
                if dict.keys.contains("Word") {
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
            if dict.keys.contains("MatchedSensitiveWord") {
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
        if dict.keys.contains("Exist") {
            self.exist = dict["Exist"] as! Bool
        }
        if dict.keys.contains("Keyword") {
            self.keyword = dict["Keyword"] as! String
        }
        if dict.keys.contains("MatchedSentiveWords") {
            var model = FuzzyMatchDomainSensitiveWordResponseBody.MatchedSentiveWords()
            model.fromMap(dict["MatchedSentiveWords"] as! [String: Any])
            self.matchedSentiveWords = model
        }
        if dict.keys.contains("RequestId") {
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
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = FuzzyMatchDomainSensitiveWordResponseBody()
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
        if dict.keys.contains("BeginCreateTime") {
            self.beginCreateTime = dict["BeginCreateTime"] as! Int64
        }
        if dict.keys.contains("Email") {
            self.email = dict["Email"] as! String
        }
        if dict.keys.contains("EndCreateTime") {
            self.endCreateTime = dict["EndCreateTime"] as! Int64
        }
        if dict.keys.contains("Lang") {
            self.lang = dict["Lang"] as! String
        }
        if dict.keys.contains("PageNum") {
            self.pageNum = dict["PageNum"] as! Int32
        }
        if dict.keys.contains("PageSize") {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("UserClientIp") {
            self.userClientIp = dict["UserClientIp"] as! String
        }
        if dict.keys.contains("VerificationStatus") {
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
            if dict.keys.contains("ConfirmIp") {
                self.confirmIp = dict["ConfirmIp"] as! String
            }
            if dict.keys.contains("Email") {
                self.email = dict["Email"] as! String
            }
            if dict.keys.contains("EmailVerificationNo") {
                self.emailVerificationNo = dict["EmailVerificationNo"] as! String
            }
            if dict.keys.contains("GmtCreate") {
                self.gmtCreate = dict["GmtCreate"] as! String
            }
            if dict.keys.contains("GmtModified") {
                self.gmtModified = dict["GmtModified"] as! String
            }
            if dict.keys.contains("SendIp") {
                self.sendIp = dict["SendIp"] as! String
            }
            if dict.keys.contains("TokenSendTime") {
                self.tokenSendTime = dict["TokenSendTime"] as! String
            }
            if dict.keys.contains("UserId") {
                self.userId = dict["UserId"] as! String
            }
            if dict.keys.contains("VerificationStatus") {
                self.verificationStatus = dict["VerificationStatus"] as! Int32
            }
            if dict.keys.contains("VerificationTime") {
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
        if dict.keys.contains("CurrentPageNum") {
            self.currentPageNum = dict["CurrentPageNum"] as! Int32
        }
        if dict.keys.contains("Data") {
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
        if dict.keys.contains("NextPage") {
            self.nextPage = dict["NextPage"] as! Bool
        }
        if dict.keys.contains("PageSize") {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("PrePage") {
            self.prePage = dict["PrePage"] as! Bool
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("TotalItemNum") {
            self.totalItemNum = dict["TotalItemNum"] as! Int32
        }
        if dict.keys.contains("TotalPageNum") {
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
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = ListEmailVerificationResponseBody()
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
        if dict.keys.contains("ClaimKey") {
            self.claimKey = dict["ClaimKey"] as! String
        }
        if dict.keys.contains("Lang") {
            self.lang = dict["Lang"] as! String
        }
        if dict.keys.contains("UserClientIp") {
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
                        if dict.keys.contains("ClassNum") {
                            self.classNum = dict["ClassNum"] as! Int32
                        }
                        if dict.keys.contains("Desc") {
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
                    if dict.keys.contains("ClassDesc") {
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
                                if dict.keys.contains("Street") {
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
                            if dict.keys.contains("Cc") {
                                self.cc = dict["Cc"] as! String
                            }
                            if dict.keys.contains("City") {
                                self.city = dict["City"] as! String
                            }
                            if dict.keys.contains("Pc") {
                                self.pc = dict["Pc"] as! String
                            }
                            if dict.keys.contains("Sp") {
                                self.sp = dict["Sp"] as! String
                            }
                            if dict.keys.contains("Street") {
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
                        if dict.keys.contains("Addr") {
                            var model = LookupTmchNoticeResponseBody.Claims.Claim.Contacts.Contact.Addr()
                            model.fromMap(dict["Addr"] as! [String: Any])
                            self.addr = model
                        }
                        if dict.keys.contains("Email") {
                            self.email = dict["Email"] as! String
                        }
                        if dict.keys.contains("Fax") {
                            self.fax = dict["Fax"] as! String
                        }
                        if dict.keys.contains("Name") {
                            self.name = dict["Name"] as! String
                        }
                        if dict.keys.contains("Org") {
                            self.org = dict["Org"] as! String
                        }
                        if dict.keys.contains("Type") {
                            self.type = dict["Type"] as! String
                        }
                        if dict.keys.contains("Voice") {
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
                    if dict.keys.contains("Contact") {
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
                                if dict.keys.contains("Street") {
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
                            if dict.keys.contains("Cc") {
                                self.cc = dict["Cc"] as! String
                            }
                            if dict.keys.contains("City") {
                                self.city = dict["City"] as! String
                            }
                            if dict.keys.contains("Pc") {
                                self.pc = dict["Pc"] as! String
                            }
                            if dict.keys.contains("Sp") {
                                self.sp = dict["Sp"] as! String
                            }
                            if dict.keys.contains("Street") {
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
                        if dict.keys.contains("Addr") {
                            var model = LookupTmchNoticeResponseBody.Claims.Claim.Holders.Holder.Addr()
                            model.fromMap(dict["Addr"] as! [String: Any])
                            self.addr = model
                        }
                        if dict.keys.contains("Entitlement") {
                            self.entitlement = dict["Entitlement"] as! String
                        }
                        if dict.keys.contains("Org") {
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
                    if dict.keys.contains("Holder") {
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
                    if dict.keys.contains("Desc") {
                        self.desc = dict["Desc"] as! String
                    }
                    if dict.keys.contains("JurCC") {
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
                if dict.keys.contains("ClassDescs") {
                    var model = LookupTmchNoticeResponseBody.Claims.Claim.ClassDescs()
                    model.fromMap(dict["ClassDescs"] as! [String: Any])
                    self.classDescs = model
                }
                if dict.keys.contains("Contacts") {
                    var model = LookupTmchNoticeResponseBody.Claims.Claim.Contacts()
                    model.fromMap(dict["Contacts"] as! [String: Any])
                    self.contacts = model
                }
                if dict.keys.contains("GoodsAndServices") {
                    self.goodsAndServices = dict["GoodsAndServices"] as! String
                }
                if dict.keys.contains("Holders") {
                    var model = LookupTmchNoticeResponseBody.Claims.Claim.Holders()
                    model.fromMap(dict["Holders"] as! [String: Any])
                    self.holders = model
                }
                if dict.keys.contains("JurDesc") {
                    var model = LookupTmchNoticeResponseBody.Claims.Claim.JurDesc()
                    model.fromMap(dict["JurDesc"] as! [String: Any])
                    self.jurDesc = model
                }
                if dict.keys.contains("MarkName") {
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
            if dict.keys.contains("Claim") {
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
        if dict.keys.contains("Claims") {
            var model = LookupTmchNoticeResponseBody.Claims()
            model.fromMap(dict["Claims"] as! [String: Any])
            self.claims = model
        }
        if dict.keys.contains("Id") {
            self.id = dict["Id"] as! Int64
        }
        if dict.keys.contains("Label") {
            self.label = dict["Label"] as! String
        }
        if dict.keys.contains("NotAfter") {
            self.notAfter = dict["NotAfter"] as! String
        }
        if dict.keys.contains("NotBefore") {
            self.notBefore = dict["NotBefore"] as! String
        }
        if dict.keys.contains("RequestId") {
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
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
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
        if dict.keys.contains("DomainName") {
            self.domainName = dict["DomainName"] as! String
        }
        if dict.keys.contains("InstanceId") {
            self.instanceId = dict["InstanceId"] as! String
        }
        if dict.keys.contains("Lang") {
            self.lang = dict["Lang"] as! String
        }
        if dict.keys.contains("PageNum") {
            self.pageNum = dict["PageNum"] as! Int32
        }
        if dict.keys.contains("PageSize") {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("TaskNo") {
            self.taskNo = dict["TaskNo"] as! String
        }
        if dict.keys.contains("TaskResultStatus") {
            self.taskResultStatus = dict["TaskResultStatus"] as! Int32
        }
        if dict.keys.contains("UserClientIp") {
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
                if dict.keys.contains("CreateTime") {
                    self.createTime = dict["CreateTime"] as! String
                }
                if dict.keys.contains("DomainName") {
                    self.domainName = dict["DomainName"] as! String
                }
                if dict.keys.contains("ErrorMsg") {
                    self.errorMsg = dict["ErrorMsg"] as! String
                }
                if dict.keys.contains("InstanceId") {
                    self.instanceId = dict["InstanceId"] as! String
                }
                if dict.keys.contains("TaskDetailNo") {
                    self.taskDetailNo = dict["TaskDetailNo"] as! String
                }
                if dict.keys.contains("TaskNo") {
                    self.taskNo = dict["TaskNo"] as! String
                }
                if dict.keys.contains("TaskResult") {
                    self.taskResult = dict["TaskResult"] as! String
                }
                if dict.keys.contains("TaskStatus") {
                    self.taskStatus = dict["TaskStatus"] as! String
                }
                if dict.keys.contains("TaskStatusCode") {
                    self.taskStatusCode = dict["TaskStatusCode"] as! Int32
                }
                if dict.keys.contains("TaskType") {
                    self.taskType = dict["TaskType"] as! String
                }
                if dict.keys.contains("TaskTypeDescription") {
                    self.taskTypeDescription = dict["TaskTypeDescription"] as! String
                }
                if dict.keys.contains("TryCount") {
                    self.tryCount = dict["TryCount"] as! Int32
                }
                if dict.keys.contains("UpdateTime") {
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
            if dict.keys.contains("TaskDetail") {
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
        if dict.keys.contains("CurrentPageNum") {
            self.currentPageNum = dict["CurrentPageNum"] as! Int32
        }
        if dict.keys.contains("Data") {
            var model = PollTaskResultResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("NextPage") {
            self.nextPage = dict["NextPage"] as! Bool
        }
        if dict.keys.contains("PageSize") {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("PrePage") {
            self.prePage = dict["PrePage"] as! Bool
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("TotalItemNum") {
            self.totalItemNum = dict["TotalItemNum"] as! Int32
        }
        if dict.keys.contains("TotalPageNum") {
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
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = PollTaskResultResponseBody()
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
        if dict.keys.contains("DomainName") {
            self.domainName = dict["DomainName"] as! String
        }
        if dict.keys.contains("Lang") {
            self.lang = dict["Lang"] as! String
        }
        if dict.keys.contains("UserClientIp") {
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
        if dict.keys.contains("DateOrPeriod") {
            self.dateOrPeriod = dict["DateOrPeriod"] as! String
        }
        if dict.keys.contains("Dimensions") {
            self.dimensions = dict["Dimensions"] as! String
        }
        if dict.keys.contains("Features") {
            self.features = dict["Features"] as! String
        }
        if dict.keys.contains("InscriptionsAndMarkings") {
            self.inscriptionsAndMarkings = dict["InscriptionsAndMarkings"] as! String
        }
        if dict.keys.contains("Maker") {
            self.maker = dict["Maker"] as! String
        }
        if dict.keys.contains("MaterialsAndTechniques") {
            self.materialsAndTechniques = dict["MaterialsAndTechniques"] as! String
        }
        if dict.keys.contains("ObjectType") {
            self.objectType = dict["ObjectType"] as! String
        }
        if dict.keys.contains("Reference") {
            self.reference = dict["Reference"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Subject") {
            self.subject = dict["Subject"] as! String
        }
        if dict.keys.contains("Title") {
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
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
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
        if dict.keys.contains("DomainName") {
            self.domainName = dict["DomainName"] as! String
        }
        if dict.keys.contains("EndDate") {
            self.endDate = dict["EndDate"] as! Int64
        }
        if dict.keys.contains("Lang") {
            self.lang = dict["Lang"] as! String
        }
        if dict.keys.contains("PageNum") {
            self.pageNum = dict["PageNum"] as! Int32
        }
        if dict.keys.contains("PageSize") {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("StartDate") {
            self.startDate = dict["StartDate"] as! Int64
        }
        if dict.keys.contains("UserClientIp") {
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
                if dict.keys.contains("Details") {
                    self.details = dict["Details"] as! String
                }
                if dict.keys.contains("DomainName") {
                    self.domainName = dict["DomainName"] as! String
                }
                if dict.keys.contains("Operation") {
                    self.operation = dict["Operation"] as! String
                }
                if dict.keys.contains("OperationIPAddress") {
                    self.operationIPAddress = dict["OperationIPAddress"] as! String
                }
                if dict.keys.contains("Result") {
                    self.result = dict["Result"] as! String
                }
                if dict.keys.contains("Time") {
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
            if dict.keys.contains("ChangeLog") {
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
        if dict.keys.contains("CurrentPageNum") {
            self.currentPageNum = dict["CurrentPageNum"] as! Int32
        }
        if dict.keys.contains("Data") {
            var model = QueryChangeLogListResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("NextPage") {
            self.nextPage = dict["NextPage"] as! Bool
        }
        if dict.keys.contains("PageSize") {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("PrePage") {
            self.prePage = dict["PrePage"] as! Bool
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("ResultLimit") {
            self.resultLimit = dict["ResultLimit"] as! Bool
        }
        if dict.keys.contains("TotalItemNum") {
            self.totalItemNum = dict["TotalItemNum"] as! Int32
        }
        if dict.keys.contains("TotalPageNum") {
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
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
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
        if dict.keys.contains("ContactType") {
            self.contactType = dict["ContactType"] as! String
        }
        if dict.keys.contains("DomainName") {
            self.domainName = dict["DomainName"] as! String
        }
        if dict.keys.contains("Lang") {
            self.lang = dict["Lang"] as! String
        }
        if dict.keys.contains("UserClientIp") {
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

    public override init() {
        super.init()
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Address") {
            self.address = dict["Address"] as! String
        }
        if dict.keys.contains("City") {
            self.city = dict["City"] as! String
        }
        if dict.keys.contains("Country") {
            self.country = dict["Country"] as! String
        }
        if dict.keys.contains("CreateDate") {
            self.createDate = dict["CreateDate"] as! String
        }
        if dict.keys.contains("Email") {
            self.email = dict["Email"] as! String
        }
        if dict.keys.contains("PostalCode") {
            self.postalCode = dict["PostalCode"] as! String
        }
        if dict.keys.contains("Province") {
            self.province = dict["Province"] as! String
        }
        if dict.keys.contains("RegistrantName") {
            self.registrantName = dict["RegistrantName"] as! String
        }
        if dict.keys.contains("RegistrantOrganization") {
            self.registrantOrganization = dict["RegistrantOrganization"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("TelArea") {
            self.telArea = dict["TelArea"] as! String
        }
        if dict.keys.contains("TelExt") {
            self.telExt = dict["TelExt"] as! String
        }
        if dict.keys.contains("Telephone") {
            self.telephone = dict["Telephone"] as! String
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
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
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
        if dict.keys.contains("DomainName") {
            self.domainName = dict["DomainName"] as! String
        }
        if dict.keys.contains("Lang") {
            self.lang = dict["Lang"] as! String
        }
        if dict.keys.contains("UserClientIp") {
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
            if dict.keys.contains("Algorithm") {
                self.algorithm = dict["Algorithm"] as! Int32
            }
            if dict.keys.contains("Digest") {
                self.digest = dict["Digest"] as! String
            }
            if dict.keys.contains("DigestType") {
                self.digestType = dict["DigestType"] as! Int32
            }
            if dict.keys.contains("KeyTag") {
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
        if dict.keys.contains("DSRecordList") {
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
        if dict.keys.contains("RequestId") {
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
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
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
        if dict.keys.contains("InstanceId") {
            self.instanceId = dict["InstanceId"] as! String
        }
        if dict.keys.contains("Lang") {
            self.lang = dict["Lang"] as! String
        }
        if dict.keys.contains("UserClientIp") {
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
            if dict.keys.contains("DnsName") {
                self.dnsName = dict["DnsName"] as! String
            }
            if dict.keys.contains("IpList") {
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
        if dict.keys.contains("DnsHostList") {
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
        if dict.keys.contains("RequestId") {
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
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = QueryDnsHostResponseBody()
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
        if dict.keys.contains("DomainName") {
            self.domainName = dict["DomainName"] as! String
        }
        if dict.keys.contains("Lang") {
            self.lang = dict["Lang"] as! String
        }
        if dict.keys.contains("UserClientIp") {
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
            if dict.keys.contains("Dns") {
                self.dns = dict["Dns"] as! [String]
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DnsList") {
            var model = QueryDomainByDomainNameResponseBody.DnsList()
            model.fromMap(dict["DnsList"] as! [String: Any])
            self.dnsList = model
        }
        if dict.keys.contains("DomainName") {
            self.domainName = dict["DomainName"] as! String
        }
        if dict.keys.contains("DomainNameProxyService") {
            self.domainNameProxyService = dict["DomainNameProxyService"] as! Bool
        }
        if dict.keys.contains("DomainNameVerificationStatus") {
            self.domainNameVerificationStatus = dict["DomainNameVerificationStatus"] as! String
        }
        if dict.keys.contains("Email") {
            self.email = dict["Email"] as! String
        }
        if dict.keys.contains("EmailVerificationClientHold") {
            self.emailVerificationClientHold = dict["EmailVerificationClientHold"] as! Bool
        }
        if dict.keys.contains("EmailVerificationStatus") {
            self.emailVerificationStatus = dict["EmailVerificationStatus"] as! Int32
        }
        if dict.keys.contains("ExpirationDate") {
            self.expirationDate = dict["ExpirationDate"] as! String
        }
        if dict.keys.contains("ExpirationDateLong") {
            self.expirationDateLong = dict["ExpirationDateLong"] as! Int64
        }
        if dict.keys.contains("InstanceId") {
            self.instanceId = dict["InstanceId"] as! String
        }
        if dict.keys.contains("Premium") {
            self.premium = dict["Premium"] as! Bool
        }
        if dict.keys.contains("RealNameStatus") {
            self.realNameStatus = dict["RealNameStatus"] as! String
        }
        if dict.keys.contains("RegistrantName") {
            self.registrantName = dict["RegistrantName"] as! String
        }
        if dict.keys.contains("RegistrantOrganization") {
            self.registrantOrganization = dict["RegistrantOrganization"] as! String
        }
        if dict.keys.contains("RegistrantType") {
            self.registrantType = dict["RegistrantType"] as! String
        }
        if dict.keys.contains("RegistrantUpdatingStatus") {
            self.registrantUpdatingStatus = dict["RegistrantUpdatingStatus"] as! String
        }
        if dict.keys.contains("RegistrationDate") {
            self.registrationDate = dict["RegistrationDate"] as! String
        }
        if dict.keys.contains("RegistrationDateLong") {
            self.registrationDateLong = dict["RegistrationDateLong"] as! Int64
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("TransferOutStatus") {
            self.transferOutStatus = dict["TransferOutStatus"] as! String
        }
        if dict.keys.contains("TransferProhibitionLock") {
            self.transferProhibitionLock = dict["TransferProhibitionLock"] as! String
        }
        if dict.keys.contains("UpdateProhibitionLock") {
            self.updateProhibitionLock = dict["UpdateProhibitionLock"] as! String
        }
        if dict.keys.contains("UserId") {
            self.userId = dict["UserId"] as! String
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
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
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
        if dict.keys.contains("InstanceId") {
            self.instanceId = dict["InstanceId"] as! String
        }
        if dict.keys.contains("Lang") {
            self.lang = dict["Lang"] as! String
        }
        if dict.keys.contains("UserClientIp") {
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
            if dict.keys.contains("Dns") {
                self.dns = dict["Dns"] as! [String]
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DnsList") {
            var model = QueryDomainByInstanceIdResponseBody.DnsList()
            model.fromMap(dict["DnsList"] as! [String: Any])
            self.dnsList = model
        }
        if dict.keys.contains("DomainName") {
            self.domainName = dict["DomainName"] as! String
        }
        if dict.keys.contains("DomainNameProxyService") {
            self.domainNameProxyService = dict["DomainNameProxyService"] as! Bool
        }
        if dict.keys.contains("DomainNameVerificationStatus") {
            self.domainNameVerificationStatus = dict["DomainNameVerificationStatus"] as! String
        }
        if dict.keys.contains("Email") {
            self.email = dict["Email"] as! String
        }
        if dict.keys.contains("EmailVerificationClientHold") {
            self.emailVerificationClientHold = dict["EmailVerificationClientHold"] as! Bool
        }
        if dict.keys.contains("EmailVerificationStatus") {
            self.emailVerificationStatus = dict["EmailVerificationStatus"] as! Int32
        }
        if dict.keys.contains("ExpirationDate") {
            self.expirationDate = dict["ExpirationDate"] as! String
        }
        if dict.keys.contains("ExpirationDateLong") {
            self.expirationDateLong = dict["ExpirationDateLong"] as! Int64
        }
        if dict.keys.contains("InstanceId") {
            self.instanceId = dict["InstanceId"] as! String
        }
        if dict.keys.contains("Premium") {
            self.premium = dict["Premium"] as! Bool
        }
        if dict.keys.contains("RealNameStatus") {
            self.realNameStatus = dict["RealNameStatus"] as! String
        }
        if dict.keys.contains("RegistrantName") {
            self.registrantName = dict["RegistrantName"] as! String
        }
        if dict.keys.contains("RegistrantOrganization") {
            self.registrantOrganization = dict["RegistrantOrganization"] as! String
        }
        if dict.keys.contains("RegistrantType") {
            self.registrantType = dict["RegistrantType"] as! String
        }
        if dict.keys.contains("RegistrantUpdatingStatus") {
            self.registrantUpdatingStatus = dict["RegistrantUpdatingStatus"] as! String
        }
        if dict.keys.contains("RegistrationDate") {
            self.registrationDate = dict["RegistrationDate"] as! String
        }
        if dict.keys.contains("RegistrationDateLong") {
            self.registrationDateLong = dict["RegistrationDateLong"] as! Int64
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("TransferOutStatus") {
            self.transferOutStatus = dict["TransferOutStatus"] as! String
        }
        if dict.keys.contains("TransferProhibitionLock") {
            self.transferProhibitionLock = dict["TransferProhibitionLock"] as! String
        }
        if dict.keys.contains("UpdateProhibitionLock") {
            self.updateProhibitionLock = dict["UpdateProhibitionLock"] as! String
        }
        if dict.keys.contains("UserId") {
            self.userId = dict["UserId"] as! String
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
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = QueryDomainByInstanceIdResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Ccompany") {
            self.ccompany = dict["Ccompany"] as! String
        }
        if dict.keys.contains("DomainName") {
            self.domainName = dict["DomainName"] as! String
        }
        if dict.keys.contains("EndExpirationDate") {
            self.endExpirationDate = dict["EndExpirationDate"] as! Int64
        }
        if dict.keys.contains("EndRegistrationDate") {
            self.endRegistrationDate = dict["EndRegistrationDate"] as! Int64
        }
        if dict.keys.contains("Lang") {
            self.lang = dict["Lang"] as! String
        }
        if dict.keys.contains("OrderByType") {
            self.orderByType = dict["OrderByType"] as! String
        }
        if dict.keys.contains("OrderKeyType") {
            self.orderKeyType = dict["OrderKeyType"] as! String
        }
        if dict.keys.contains("PageNum") {
            self.pageNum = dict["PageNum"] as! Int32
        }
        if dict.keys.contains("PageSize") {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("ProductDomainType") {
            self.productDomainType = dict["ProductDomainType"] as! String
        }
        if dict.keys.contains("QueryType") {
            self.queryType = dict["QueryType"] as! String
        }
        if dict.keys.contains("StartExpirationDate") {
            self.startExpirationDate = dict["StartExpirationDate"] as! Int64
        }
        if dict.keys.contains("StartRegistrationDate") {
            self.startRegistrationDate = dict["StartRegistrationDate"] as! Int64
        }
        if dict.keys.contains("UserClientIp") {
            self.userClientIp = dict["UserClientIp"] as! String
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

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("DomainAuditStatus") {
                    self.domainAuditStatus = dict["DomainAuditStatus"] as! String
                }
                if dict.keys.contains("DomainName") {
                    self.domainName = dict["DomainName"] as! String
                }
                if dict.keys.contains("DomainStatus") {
                    self.domainStatus = dict["DomainStatus"] as! String
                }
                if dict.keys.contains("DomainType") {
                    self.domainType = dict["DomainType"] as! String
                }
                if dict.keys.contains("ExpirationCurrDateDiff") {
                    self.expirationCurrDateDiff = dict["ExpirationCurrDateDiff"] as! Int32
                }
                if dict.keys.contains("ExpirationDate") {
                    self.expirationDate = dict["ExpirationDate"] as! String
                }
                if dict.keys.contains("ExpirationDateLong") {
                    self.expirationDateLong = dict["ExpirationDateLong"] as! Int64
                }
                if dict.keys.contains("ExpirationDateStatus") {
                    self.expirationDateStatus = dict["ExpirationDateStatus"] as! String
                }
                if dict.keys.contains("InstanceId") {
                    self.instanceId = dict["InstanceId"] as! String
                }
                if dict.keys.contains("Premium") {
                    self.premium = dict["Premium"] as! Bool
                }
                if dict.keys.contains("ProductId") {
                    self.productId = dict["ProductId"] as! String
                }
                if dict.keys.contains("RegistrantType") {
                    self.registrantType = dict["RegistrantType"] as! String
                }
                if dict.keys.contains("RegistrationDate") {
                    self.registrationDate = dict["RegistrationDate"] as! String
                }
                if dict.keys.contains("RegistrationDateLong") {
                    self.registrationDateLong = dict["RegistrationDateLong"] as! Int64
                }
                if dict.keys.contains("Remark") {
                    self.remark = dict["Remark"] as! String
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
            if dict.keys.contains("Domain") {
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
        if dict.keys.contains("CurrentPageNum") {
            self.currentPageNum = dict["CurrentPageNum"] as! Int32
        }
        if dict.keys.contains("Data") {
            var model = QueryDomainListResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("NextPage") {
            self.nextPage = dict["NextPage"] as! Bool
        }
        if dict.keys.contains("PageSize") {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("PrePage") {
            self.prePage = dict["PrePage"] as! Bool
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("TotalItemNum") {
            self.totalItemNum = dict["TotalItemNum"] as! Int32
        }
        if dict.keys.contains("TotalPageNum") {
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
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
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
        if dict.keys.contains("DomainName") {
            self.domainName = dict["DomainName"] as! String
        }
        if dict.keys.contains("FetchImage") {
            self.fetchImage = dict["FetchImage"] as! Bool
        }
        if dict.keys.contains("Lang") {
            self.lang = dict["Lang"] as! String
        }
        if dict.keys.contains("UserClientIp") {
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
        if dict.keys.contains("DomainName") {
            self.domainName = dict["DomainName"] as! String
        }
        if dict.keys.contains("IdentityCredential") {
            self.identityCredential = dict["IdentityCredential"] as! String
        }
        if dict.keys.contains("IdentityCredentialNo") {
            self.identityCredentialNo = dict["IdentityCredentialNo"] as! String
        }
        if dict.keys.contains("IdentityCredentialType") {
            self.identityCredentialType = dict["IdentityCredentialType"] as! String
        }
        if dict.keys.contains("IdentityCredentialUrl") {
            self.identityCredentialUrl = dict["IdentityCredentialUrl"] as! String
        }
        if dict.keys.contains("InstanceId") {
            self.instanceId = dict["InstanceId"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("SubmissionDate") {
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
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = QueryDomainRealNameVerificationInfoResponseBody()
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
        if dict.keys.contains("DomainName") {
            self.domainName = dict["DomainName"] as! String
        }
        if dict.keys.contains("Lang") {
            self.lang = dict["Lang"] as! String
        }
        if dict.keys.contains("UserClientIp") {
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
        if dict.keys.contains("Address") {
            self.address = dict["Address"] as! String
        }
        if dict.keys.contains("RequestId") {
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
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
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
        if dict.keys.contains("DomainName") {
            self.domainName = dict["DomainName"] as! String
        }
        if dict.keys.contains("Lang") {
            self.lang = dict["Lang"] as! String
        }
        if dict.keys.contains("RealNameVerificationAction") {
            self.realNameVerificationAction = dict["RealNameVerificationAction"] as! String
        }
        if dict.keys.contains("UserClientIp") {
            self.userClientIp = dict["UserClientIp"] as! String
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Date") {
                self.date = dict["Date"] as! String
            }
            if dict.keys.contains("FailReason") {
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
        if dict.keys.contains("Data") {
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
        if dict.keys.contains("RequestId") {
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
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
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
        if dict.keys.contains("Lang") {
            self.lang = dict["Lang"] as! String
        }
        if dict.keys.contains("RegistrantProfileID") {
            self.registrantProfileID = dict["RegistrantProfileID"] as! Int64
        }
        if dict.keys.contains("UserClientIp") {
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
            if dict.keys.contains("Date") {
                self.date = dict["Date"] as! String
            }
            if dict.keys.contains("FailReason") {
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
        if dict.keys.contains("Data") {
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
        if dict.keys.contains("RequestId") {
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
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = QueryFailReasonForRegistrantProfileRealNameVerificationResponseBody()
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
        if dict.keys.contains("DomainName") {
            self.domainName = dict["DomainName"] as! String
        }
        if dict.keys.contains("Lang") {
            self.lang = dict["Lang"] as! String
        }
        if dict.keys.contains("UserClientIp") {
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
        if dict.keys.contains("Address") {
            self.address = dict["Address"] as! String
        }
        if dict.keys.contains("RequestId") {
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
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = QueryLocalEnsAssociationResponseBody()
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
        if dict.keys.contains("FetchImage") {
            self.fetchImage = dict["FetchImage"] as! Bool
        }
        if dict.keys.contains("Lang") {
            self.lang = dict["Lang"] as! String
        }
        if dict.keys.contains("RegistrantProfileId") {
            self.registrantProfileId = dict["RegistrantProfileId"] as! Int64
        }
        if dict.keys.contains("UserClientIp") {
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
        if dict.keys.contains("IdentityCredential") {
            self.identityCredential = dict["IdentityCredential"] as! String
        }
        if dict.keys.contains("IdentityCredentialNo") {
            self.identityCredentialNo = dict["IdentityCredentialNo"] as! String
        }
        if dict.keys.contains("IdentityCredentialType") {
            self.identityCredentialType = dict["IdentityCredentialType"] as! String
        }
        if dict.keys.contains("IdentityCredentialUrl") {
            self.identityCredentialUrl = dict["IdentityCredentialUrl"] as! String
        }
        if dict.keys.contains("ModificationDate") {
            self.modificationDate = dict["ModificationDate"] as! String
        }
        if dict.keys.contains("RegistrantProfileId") {
            self.registrantProfileId = dict["RegistrantProfileId"] as! Int64
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("SubmissionDate") {
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
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
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

    public override init() {
        super.init()
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DefaultRegistrantProfile") {
            self.defaultRegistrantProfile = dict["DefaultRegistrantProfile"] as! Bool
        }
        if dict.keys.contains("Email") {
            self.email = dict["Email"] as! String
        }
        if dict.keys.contains("Lang") {
            self.lang = dict["Lang"] as! String
        }
        if dict.keys.contains("PageNum") {
            self.pageNum = dict["PageNum"] as! Int32
        }
        if dict.keys.contains("PageSize") {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("RealNameStatus") {
            self.realNameStatus = dict["RealNameStatus"] as! String
        }
        if dict.keys.contains("RegistrantOrganization") {
            self.registrantOrganization = dict["RegistrantOrganization"] as! String
        }
        if dict.keys.contains("RegistrantProfileId") {
            self.registrantProfileId = dict["RegistrantProfileId"] as! Int64
        }
        if dict.keys.contains("RegistrantProfileType") {
            self.registrantProfileType = dict["RegistrantProfileType"] as! String
        }
        if dict.keys.contains("RegistrantType") {
            self.registrantType = dict["RegistrantType"] as! String
        }
        if dict.keys.contains("UserClientIp") {
            self.userClientIp = dict["UserClientIp"] as! String
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

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("Address") {
                    self.address = dict["Address"] as! String
                }
                if dict.keys.contains("City") {
                    self.city = dict["City"] as! String
                }
                if dict.keys.contains("Country") {
                    self.country = dict["Country"] as! String
                }
                if dict.keys.contains("CreateTime") {
                    self.createTime = dict["CreateTime"] as! String
                }
                if dict.keys.contains("DefaultRegistrantProfile") {
                    self.defaultRegistrantProfile = dict["DefaultRegistrantProfile"] as! Bool
                }
                if dict.keys.contains("Email") {
                    self.email = dict["Email"] as! String
                }
                if dict.keys.contains("EmailVerificationStatus") {
                    self.emailVerificationStatus = dict["EmailVerificationStatus"] as! Int32
                }
                if dict.keys.contains("PostalCode") {
                    self.postalCode = dict["PostalCode"] as! String
                }
                if dict.keys.contains("Province") {
                    self.province = dict["Province"] as! String
                }
                if dict.keys.contains("RealNameStatus") {
                    self.realNameStatus = dict["RealNameStatus"] as! String
                }
                if dict.keys.contains("RegistrantName") {
                    self.registrantName = dict["RegistrantName"] as! String
                }
                if dict.keys.contains("RegistrantOrganization") {
                    self.registrantOrganization = dict["RegistrantOrganization"] as! String
                }
                if dict.keys.contains("RegistrantProfileId") {
                    self.registrantProfileId = dict["RegistrantProfileId"] as! Int64
                }
                if dict.keys.contains("RegistrantProfileType") {
                    self.registrantProfileType = dict["RegistrantProfileType"] as! String
                }
                if dict.keys.contains("RegistrantType") {
                    self.registrantType = dict["RegistrantType"] as! String
                }
                if dict.keys.contains("TelArea") {
                    self.telArea = dict["TelArea"] as! String
                }
                if dict.keys.contains("TelExt") {
                    self.telExt = dict["TelExt"] as! String
                }
                if dict.keys.contains("Telephone") {
                    self.telephone = dict["Telephone"] as! String
                }
                if dict.keys.contains("UpdateTime") {
                    self.updateTime = dict["UpdateTime"] as! String
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
            if dict.keys.contains("RegistrantProfile") {
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
        if dict.keys.contains("CurrentPageNum") {
            self.currentPageNum = dict["CurrentPageNum"] as! Int32
        }
        if dict.keys.contains("NextPage") {
            self.nextPage = dict["NextPage"] as! Bool
        }
        if dict.keys.contains("PageSize") {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("PrePage") {
            self.prePage = dict["PrePage"] as! Bool
        }
        if dict.keys.contains("RegistrantProfiles") {
            var model = QueryRegistrantProfilesResponseBody.RegistrantProfiles()
            model.fromMap(dict["RegistrantProfiles"] as! [String: Any])
            self.registrantProfiles = model
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("TotalItemNum") {
            self.totalItemNum = dict["TotalItemNum"] as! Int32
        }
        if dict.keys.contains("TotalPageNum") {
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
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = QueryRegistrantProfilesResponseBody()
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
        if dict.keys.contains("DomainName") {
            self.domainName = dict["DomainName"] as! String
        }
        if dict.keys.contains("DomainNameCursor") {
            self.domainNameCursor = dict["DomainNameCursor"] as! String
        }
        if dict.keys.contains("Lang") {
            self.lang = dict["Lang"] as! String
        }
        if dict.keys.contains("PageSize") {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("TaskDetailNoCursor") {
            self.taskDetailNoCursor = dict["TaskDetailNoCursor"] as! String
        }
        if dict.keys.contains("TaskNo") {
            self.taskNo = dict["TaskNo"] as! String
        }
        if dict.keys.contains("TaskStatus") {
            self.taskStatus = dict["TaskStatus"] as! Int32
        }
        if dict.keys.contains("UserClientIp") {
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
            if dict.keys.contains("CreateTime") {
                self.createTime = dict["CreateTime"] as! String
            }
            if dict.keys.contains("DomainName") {
                self.domainName = dict["DomainName"] as! String
            }
            if dict.keys.contains("ErrorMsg") {
                self.errorMsg = dict["ErrorMsg"] as! String
            }
            if dict.keys.contains("InstanceId") {
                self.instanceId = dict["InstanceId"] as! String
            }
            if dict.keys.contains("TaskDetailNo") {
                self.taskDetailNo = dict["TaskDetailNo"] as! String
            }
            if dict.keys.contains("TaskNo") {
                self.taskNo = dict["TaskNo"] as! String
            }
            if dict.keys.contains("TaskStatus") {
                self.taskStatus = dict["TaskStatus"] as! String
            }
            if dict.keys.contains("TaskStatusCode") {
                self.taskStatusCode = dict["TaskStatusCode"] as! Int32
            }
            if dict.keys.contains("TaskType") {
                self.taskType = dict["TaskType"] as! String
            }
            if dict.keys.contains("TaskTypeDescription") {
                self.taskTypeDescription = dict["TaskTypeDescription"] as! String
            }
            if dict.keys.contains("TryCount") {
                self.tryCount = dict["TryCount"] as! Int32
            }
            if dict.keys.contains("UpdateTime") {
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
            if dict.keys.contains("CreateTime") {
                self.createTime = dict["CreateTime"] as! String
            }
            if dict.keys.contains("DomainName") {
                self.domainName = dict["DomainName"] as! String
            }
            if dict.keys.contains("ErrorMsg") {
                self.errorMsg = dict["ErrorMsg"] as! String
            }
            if dict.keys.contains("InstanceId") {
                self.instanceId = dict["InstanceId"] as! String
            }
            if dict.keys.contains("TaskDetailNo") {
                self.taskDetailNo = dict["TaskDetailNo"] as! String
            }
            if dict.keys.contains("TaskNo") {
                self.taskNo = dict["TaskNo"] as! String
            }
            if dict.keys.contains("TaskStatus") {
                self.taskStatus = dict["TaskStatus"] as! String
            }
            if dict.keys.contains("TaskStatusCode") {
                self.taskStatusCode = dict["TaskStatusCode"] as! Int32
            }
            if dict.keys.contains("TaskType") {
                self.taskType = dict["TaskType"] as! String
            }
            if dict.keys.contains("TaskTypeDescription") {
                self.taskTypeDescription = dict["TaskTypeDescription"] as! String
            }
            if dict.keys.contains("TryCount") {
                self.tryCount = dict["TryCount"] as! Int32
            }
            if dict.keys.contains("UpdateTime") {
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
            if dict.keys.contains("CreateTime") {
                self.createTime = dict["CreateTime"] as! String
            }
            if dict.keys.contains("DomainName") {
                self.domainName = dict["DomainName"] as! String
            }
            if dict.keys.contains("ErrorMsg") {
                self.errorMsg = dict["ErrorMsg"] as! String
            }
            if dict.keys.contains("InstanceId") {
                self.instanceId = dict["InstanceId"] as! String
            }
            if dict.keys.contains("TaskDetailNo") {
                self.taskDetailNo = dict["TaskDetailNo"] as! String
            }
            if dict.keys.contains("TaskNo") {
                self.taskNo = dict["TaskNo"] as! String
            }
            if dict.keys.contains("TaskStatus") {
                self.taskStatus = dict["TaskStatus"] as! String
            }
            if dict.keys.contains("TaskStatusCode") {
                self.taskStatusCode = dict["TaskStatusCode"] as! Int32
            }
            if dict.keys.contains("TaskType") {
                self.taskType = dict["TaskType"] as! String
            }
            if dict.keys.contains("TaskTypeDescription") {
                self.taskTypeDescription = dict["TaskTypeDescription"] as! String
            }
            if dict.keys.contains("TryCount") {
                self.tryCount = dict["TryCount"] as! Int32
            }
            if dict.keys.contains("UpdateTime") {
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
            if dict.keys.contains("CreateTime") {
                self.createTime = dict["CreateTime"] as! String
            }
            if dict.keys.contains("DomainName") {
                self.domainName = dict["DomainName"] as! String
            }
            if dict.keys.contains("ErrorMsg") {
                self.errorMsg = dict["ErrorMsg"] as! String
            }
            if dict.keys.contains("InstanceId") {
                self.instanceId = dict["InstanceId"] as! String
            }
            if dict.keys.contains("TaskDetailNo") {
                self.taskDetailNo = dict["TaskDetailNo"] as! String
            }
            if dict.keys.contains("TaskNo") {
                self.taskNo = dict["TaskNo"] as! String
            }
            if dict.keys.contains("TaskStatus") {
                self.taskStatus = dict["TaskStatus"] as! String
            }
            if dict.keys.contains("TaskStatusCode") {
                self.taskStatusCode = dict["TaskStatusCode"] as! Int32
            }
            if dict.keys.contains("TaskType") {
                self.taskType = dict["TaskType"] as! String
            }
            if dict.keys.contains("TaskTypeDescription") {
                self.taskTypeDescription = dict["TaskTypeDescription"] as! String
            }
            if dict.keys.contains("TryCount") {
                self.tryCount = dict["TryCount"] as! Int32
            }
            if dict.keys.contains("UpdateTime") {
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
        if dict.keys.contains("CurrentPageCursor") {
            var model = QueryTaskDetailHistoryResponseBody.CurrentPageCursor()
            model.fromMap(dict["CurrentPageCursor"] as! [String: Any])
            self.currentPageCursor = model
        }
        if dict.keys.contains("NextPageCursor") {
            var model = QueryTaskDetailHistoryResponseBody.NextPageCursor()
            model.fromMap(dict["NextPageCursor"] as! [String: Any])
            self.nextPageCursor = model
        }
        if dict.keys.contains("Objects") {
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
        if dict.keys.contains("PageSize") {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("PrePageCursor") {
            var model = QueryTaskDetailHistoryResponseBody.PrePageCursor()
            model.fromMap(dict["PrePageCursor"] as! [String: Any])
            self.prePageCursor = model
        }
        if dict.keys.contains("RequestId") {
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
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
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
        if dict.keys.contains("DomainName") {
            self.domainName = dict["DomainName"] as! String
        }
        if dict.keys.contains("InstanceId") {
            self.instanceId = dict["InstanceId"] as! String
        }
        if dict.keys.contains("Lang") {
            self.lang = dict["Lang"] as! String
        }
        if dict.keys.contains("PageNum") {
            self.pageNum = dict["PageNum"] as! Int32
        }
        if dict.keys.contains("PageSize") {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("TaskNo") {
            self.taskNo = dict["TaskNo"] as! String
        }
        if dict.keys.contains("TaskStatus") {
            self.taskStatus = dict["TaskStatus"] as! Int32
        }
        if dict.keys.contains("UserClientIp") {
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
                if dict.keys.contains("CreateTime") {
                    self.createTime = dict["CreateTime"] as! String
                }
                if dict.keys.contains("DomainName") {
                    self.domainName = dict["DomainName"] as! String
                }
                if dict.keys.contains("ErrorMsg") {
                    self.errorMsg = dict["ErrorMsg"] as! String
                }
                if dict.keys.contains("InstanceId") {
                    self.instanceId = dict["InstanceId"] as! String
                }
                if dict.keys.contains("TaskDetailNo") {
                    self.taskDetailNo = dict["TaskDetailNo"] as! String
                }
                if dict.keys.contains("TaskNo") {
                    self.taskNo = dict["TaskNo"] as! String
                }
                if dict.keys.contains("TaskResult") {
                    self.taskResult = dict["TaskResult"] as! String
                }
                if dict.keys.contains("TaskStatus") {
                    self.taskStatus = dict["TaskStatus"] as! String
                }
                if dict.keys.contains("TaskStatusCode") {
                    self.taskStatusCode = dict["TaskStatusCode"] as! Int32
                }
                if dict.keys.contains("TaskType") {
                    self.taskType = dict["TaskType"] as! String
                }
                if dict.keys.contains("TaskTypeDescription") {
                    self.taskTypeDescription = dict["TaskTypeDescription"] as! String
                }
                if dict.keys.contains("TryCount") {
                    self.tryCount = dict["TryCount"] as! Int32
                }
                if dict.keys.contains("UpdateTime") {
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
            if dict.keys.contains("TaskDetail") {
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
        if dict.keys.contains("CurrentPageNum") {
            self.currentPageNum = dict["CurrentPageNum"] as! Int32
        }
        if dict.keys.contains("Data") {
            var model = QueryTaskDetailListResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("NextPage") {
            self.nextPage = dict["NextPage"] as! Bool
        }
        if dict.keys.contains("PageSize") {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("PrePage") {
            self.prePage = dict["PrePage"] as! Bool
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("TotalItemNum") {
            self.totalItemNum = dict["TotalItemNum"] as! Int32
        }
        if dict.keys.contains("TotalPageNum") {
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
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
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
        if dict.keys.contains("BeginCreateTime") {
            self.beginCreateTime = dict["BeginCreateTime"] as! Int64
        }
        if dict.keys.contains("CreateTimeCursor") {
            self.createTimeCursor = dict["CreateTimeCursor"] as! Int64
        }
        if dict.keys.contains("EndCreateTime") {
            self.endCreateTime = dict["EndCreateTime"] as! Int64
        }
        if dict.keys.contains("Lang") {
            self.lang = dict["Lang"] as! String
        }
        if dict.keys.contains("PageSize") {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("TaskNoCursor") {
            self.taskNoCursor = dict["TaskNoCursor"] as! String
        }
        if dict.keys.contains("UserClientIp") {
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
            if dict.keys.contains("Clientip") {
                self.clientip = dict["Clientip"] as! String
            }
            if dict.keys.contains("CreateTime") {
                self.createTime = dict["CreateTime"] as! String
            }
            if dict.keys.contains("CreateTimeLong") {
                self.createTimeLong = dict["CreateTimeLong"] as! Int64
            }
            if dict.keys.contains("TaskNo") {
                self.taskNo = dict["TaskNo"] as! String
            }
            if dict.keys.contains("TaskNum") {
                self.taskNum = dict["TaskNum"] as! Int32
            }
            if dict.keys.contains("TaskStatus") {
                self.taskStatus = dict["TaskStatus"] as! String
            }
            if dict.keys.contains("TaskStatusCode") {
                self.taskStatusCode = dict["TaskStatusCode"] as! Int32
            }
            if dict.keys.contains("TaskType") {
                self.taskType = dict["TaskType"] as! String
            }
            if dict.keys.contains("TaskTypeDescription") {
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
            if dict.keys.contains("Clientip") {
                self.clientip = dict["Clientip"] as! String
            }
            if dict.keys.contains("CreateTime") {
                self.createTime = dict["CreateTime"] as! String
            }
            if dict.keys.contains("CreateTimeLong") {
                self.createTimeLong = dict["CreateTimeLong"] as! Int64
            }
            if dict.keys.contains("TaskNo") {
                self.taskNo = dict["TaskNo"] as! String
            }
            if dict.keys.contains("TaskNum") {
                self.taskNum = dict["TaskNum"] as! Int32
            }
            if dict.keys.contains("TaskStatus") {
                self.taskStatus = dict["TaskStatus"] as! String
            }
            if dict.keys.contains("TaskStatusCode") {
                self.taskStatusCode = dict["TaskStatusCode"] as! Int32
            }
            if dict.keys.contains("TaskType") {
                self.taskType = dict["TaskType"] as! String
            }
            if dict.keys.contains("TaskTypeDescription") {
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
            if dict.keys.contains("Clientip") {
                self.clientip = dict["Clientip"] as! String
            }
            if dict.keys.contains("CreateTime") {
                self.createTime = dict["CreateTime"] as! String
            }
            if dict.keys.contains("CreateTimeLong") {
                self.createTimeLong = dict["CreateTimeLong"] as! Int64
            }
            if dict.keys.contains("TaskNo") {
                self.taskNo = dict["TaskNo"] as! String
            }
            if dict.keys.contains("TaskNum") {
                self.taskNum = dict["TaskNum"] as! Int32
            }
            if dict.keys.contains("TaskStatus") {
                self.taskStatus = dict["TaskStatus"] as! String
            }
            if dict.keys.contains("TaskStatusCode") {
                self.taskStatusCode = dict["TaskStatusCode"] as! Int32
            }
            if dict.keys.contains("TaskType") {
                self.taskType = dict["TaskType"] as! String
            }
            if dict.keys.contains("TaskTypeDescription") {
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
            if dict.keys.contains("Clientip") {
                self.clientip = dict["Clientip"] as! String
            }
            if dict.keys.contains("CreateTime") {
                self.createTime = dict["CreateTime"] as! String
            }
            if dict.keys.contains("CreateTimeLong") {
                self.createTimeLong = dict["CreateTimeLong"] as! Int64
            }
            if dict.keys.contains("TaskNo") {
                self.taskNo = dict["TaskNo"] as! String
            }
            if dict.keys.contains("TaskNum") {
                self.taskNum = dict["TaskNum"] as! Int32
            }
            if dict.keys.contains("TaskStatus") {
                self.taskStatus = dict["TaskStatus"] as! String
            }
            if dict.keys.contains("TaskStatusCode") {
                self.taskStatusCode = dict["TaskStatusCode"] as! Int32
            }
            if dict.keys.contains("TaskType") {
                self.taskType = dict["TaskType"] as! String
            }
            if dict.keys.contains("TaskTypeDescription") {
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
        if dict.keys.contains("CurrentPageCursor") {
            var model = QueryTaskInfoHistoryResponseBody.CurrentPageCursor()
            model.fromMap(dict["CurrentPageCursor"] as! [String: Any])
            self.currentPageCursor = model
        }
        if dict.keys.contains("NextPageCursor") {
            var model = QueryTaskInfoHistoryResponseBody.NextPageCursor()
            model.fromMap(dict["NextPageCursor"] as! [String: Any])
            self.nextPageCursor = model
        }
        if dict.keys.contains("Objects") {
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
        if dict.keys.contains("PageSize") {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("PrePageCursor") {
            var model = QueryTaskInfoHistoryResponseBody.PrePageCursor()
            model.fromMap(dict["PrePageCursor"] as! [String: Any])
            self.prePageCursor = model
        }
        if dict.keys.contains("RequestId") {
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
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
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
        if dict.keys.contains("BeginCreateTime") {
            self.beginCreateTime = dict["BeginCreateTime"] as! Int64
        }
        if dict.keys.contains("EndCreateTime") {
            self.endCreateTime = dict["EndCreateTime"] as! Int64
        }
        if dict.keys.contains("Lang") {
            self.lang = dict["Lang"] as! String
        }
        if dict.keys.contains("PageNum") {
            self.pageNum = dict["PageNum"] as! Int32
        }
        if dict.keys.contains("PageSize") {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("UserClientIp") {
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
                if dict.keys.contains("Clientip") {
                    self.clientip = dict["Clientip"] as! String
                }
                if dict.keys.contains("CreateTime") {
                    self.createTime = dict["CreateTime"] as! String
                }
                if dict.keys.contains("TaskCancelStatus") {
                    self.taskCancelStatus = dict["TaskCancelStatus"] as! String
                }
                if dict.keys.contains("TaskCancelStatusCode") {
                    self.taskCancelStatusCode = dict["TaskCancelStatusCode"] as! Int32
                }
                if dict.keys.contains("TaskNo") {
                    self.taskNo = dict["TaskNo"] as! String
                }
                if dict.keys.contains("TaskNum") {
                    self.taskNum = dict["TaskNum"] as! Int32
                }
                if dict.keys.contains("TaskStatus") {
                    self.taskStatus = dict["TaskStatus"] as! String
                }
                if dict.keys.contains("TaskStatusCode") {
                    self.taskStatusCode = dict["TaskStatusCode"] as! Int32
                }
                if dict.keys.contains("TaskType") {
                    self.taskType = dict["TaskType"] as! String
                }
                if dict.keys.contains("TaskTypeDescription") {
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
            if dict.keys.contains("TaskInfo") {
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
        if dict.keys.contains("CurrentPageNum") {
            self.currentPageNum = dict["CurrentPageNum"] as! Int32
        }
        if dict.keys.contains("Data") {
            var model = QueryTaskListResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("NextPage") {
            self.nextPage = dict["NextPage"] as! Bool
        }
        if dict.keys.contains("PageSize") {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("PrePage") {
            self.prePage = dict["PrePage"] as! Bool
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("TotalItemNum") {
            self.totalItemNum = dict["TotalItemNum"] as! Int32
        }
        if dict.keys.contains("TotalPageNum") {
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
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
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
        if dict.keys.contains("InstanceId") {
            self.instanceId = dict["InstanceId"] as! String
        }
        if dict.keys.contains("Lang") {
            self.lang = dict["Lang"] as! String
        }
        if dict.keys.contains("UserClientIp") {
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
        if dict.keys.contains("DomainName") {
            self.domainName = dict["DomainName"] as! String
        }
        if dict.keys.contains("Email") {
            self.email = dict["Email"] as! String
        }
        if dict.keys.contains("ExpirationDate") {
            self.expirationDate = dict["ExpirationDate"] as! String
        }
        if dict.keys.contains("ExpirationDateLong") {
            self.expirationDateLong = dict["ExpirationDateLong"] as! Int64
        }
        if dict.keys.contains("InstanceId") {
            self.instanceId = dict["InstanceId"] as! String
        }
        if dict.keys.contains("ModificationDate") {
            self.modificationDate = dict["ModificationDate"] as! String
        }
        if dict.keys.contains("ModificationDateLong") {
            self.modificationDateLong = dict["ModificationDateLong"] as! Int64
        }
        if dict.keys.contains("NeedMailCheck") {
            self.needMailCheck = dict["NeedMailCheck"] as! Bool
        }
        if dict.keys.contains("ProgressBarType") {
            self.progressBarType = dict["ProgressBarType"] as! Int32
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("ResultCode") {
            self.resultCode = dict["ResultCode"] as! String
        }
        if dict.keys.contains("ResultDate") {
            self.resultDate = dict["ResultDate"] as! String
        }
        if dict.keys.contains("ResultDateLong") {
            self.resultDateLong = dict["ResultDateLong"] as! Int64
        }
        if dict.keys.contains("ResultMsg") {
            self.resultMsg = dict["ResultMsg"] as! String
        }
        if dict.keys.contains("SimpleTransferInStatus") {
            self.simpleTransferInStatus = dict["SimpleTransferInStatus"] as! String
        }
        if dict.keys.contains("Status") {
            self.status = dict["Status"] as! Int32
        }
        if dict.keys.contains("SubmissionDate") {
            self.submissionDate = dict["SubmissionDate"] as! String
        }
        if dict.keys.contains("SubmissionDateLong") {
            self.submissionDateLong = dict["SubmissionDateLong"] as! Int64
        }
        if dict.keys.contains("TransferAuthorizationCodeSubmissionDate") {
            self.transferAuthorizationCodeSubmissionDate = dict["TransferAuthorizationCodeSubmissionDate"] as! String
        }
        if dict.keys.contains("TransferAuthorizationCodeSubmissionDateLong") {
            self.transferAuthorizationCodeSubmissionDateLong = dict["TransferAuthorizationCodeSubmissionDateLong"] as! Int64
        }
        if dict.keys.contains("UserId") {
            self.userId = dict["UserId"] as! String
        }
        if dict.keys.contains("WhoisMailStatus") {
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
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
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
        if dict.keys.contains("DomainName") {
            self.domainName = dict["DomainName"] as! String
        }
        if dict.keys.contains("Lang") {
            self.lang = dict["Lang"] as! String
        }
        if dict.keys.contains("PageNum") {
            self.pageNum = dict["PageNum"] as! Int32
        }
        if dict.keys.contains("PageSize") {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("SimpleTransferInStatus") {
            self.simpleTransferInStatus = dict["SimpleTransferInStatus"] as! String
        }
        if dict.keys.contains("SubmissionEndDate") {
            self.submissionEndDate = dict["SubmissionEndDate"] as! Int64
        }
        if dict.keys.contains("SubmissionStartDate") {
            self.submissionStartDate = dict["SubmissionStartDate"] as! Int64
        }
        if dict.keys.contains("UserClientIp") {
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
                if dict.keys.contains("DomainName") {
                    self.domainName = dict["DomainName"] as! String
                }
                if dict.keys.contains("Email") {
                    self.email = dict["Email"] as! String
                }
                if dict.keys.contains("ExpirationDate") {
                    self.expirationDate = dict["ExpirationDate"] as! String
                }
                if dict.keys.contains("ExpirationDateLong") {
                    self.expirationDateLong = dict["ExpirationDateLong"] as! Int64
                }
                if dict.keys.contains("InstanceId") {
                    self.instanceId = dict["InstanceId"] as! String
                }
                if dict.keys.contains("ModificationDate") {
                    self.modificationDate = dict["ModificationDate"] as! String
                }
                if dict.keys.contains("ModificationDateLong") {
                    self.modificationDateLong = dict["ModificationDateLong"] as! Int64
                }
                if dict.keys.contains("NeedMailCheck") {
                    self.needMailCheck = dict["NeedMailCheck"] as! Bool
                }
                if dict.keys.contains("ProgressBarType") {
                    self.progressBarType = dict["ProgressBarType"] as! Int32
                }
                if dict.keys.contains("ResultCode") {
                    self.resultCode = dict["ResultCode"] as! String
                }
                if dict.keys.contains("ResultDate") {
                    self.resultDate = dict["ResultDate"] as! String
                }
                if dict.keys.contains("ResultDateLong") {
                    self.resultDateLong = dict["ResultDateLong"] as! Int64
                }
                if dict.keys.contains("ResultMsg") {
                    self.resultMsg = dict["ResultMsg"] as! String
                }
                if dict.keys.contains("SimpleTransferInStatus") {
                    self.simpleTransferInStatus = dict["SimpleTransferInStatus"] as! String
                }
                if dict.keys.contains("Status") {
                    self.status = dict["Status"] as! Int32
                }
                if dict.keys.contains("SubmissionDate") {
                    self.submissionDate = dict["SubmissionDate"] as! String
                }
                if dict.keys.contains("SubmissionDateLong") {
                    self.submissionDateLong = dict["SubmissionDateLong"] as! Int64
                }
                if dict.keys.contains("TransferAuthorizationCodeSubmissionDate") {
                    self.transferAuthorizationCodeSubmissionDate = dict["TransferAuthorizationCodeSubmissionDate"] as! String
                }
                if dict.keys.contains("TransferAuthorizationCodeSubmissionDateLong") {
                    self.transferAuthorizationCodeSubmissionDateLong = dict["TransferAuthorizationCodeSubmissionDateLong"] as! Int64
                }
                if dict.keys.contains("UserId") {
                    self.userId = dict["UserId"] as! String
                }
                if dict.keys.contains("WhoisMailStatus") {
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
            if dict.keys.contains("TransferInInfo") {
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
        if dict.keys.contains("CurrentPageNum") {
            self.currentPageNum = dict["CurrentPageNum"] as! Int32
        }
        if dict.keys.contains("Data") {
            var model = QueryTransferInListResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("NextPage") {
            self.nextPage = dict["NextPage"] as! Bool
        }
        if dict.keys.contains("PageSize") {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("PrePage") {
            self.prePage = dict["PrePage"] as! Bool
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("TotalItemNum") {
            self.totalItemNum = dict["TotalItemNum"] as! Int32
        }
        if dict.keys.contains("TotalPageNum") {
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
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
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
        if dict.keys.contains("DomainName") {
            self.domainName = dict["DomainName"] as! String
        }
        if dict.keys.contains("Lang") {
            self.lang = dict["Lang"] as! String
        }
        if dict.keys.contains("UserClientIp") {
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
        if dict.keys.contains("Email") {
            self.email = dict["Email"] as! String
        }
        if dict.keys.contains("ExpirationDate") {
            self.expirationDate = dict["ExpirationDate"] as! String
        }
        if dict.keys.contains("PendingRequestDate") {
            self.pendingRequestDate = dict["PendingRequestDate"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("ResultCode") {
            self.resultCode = dict["ResultCode"] as! String
        }
        if dict.keys.contains("ResultMsg") {
            self.resultMsg = dict["ResultMsg"] as! String
        }
        if dict.keys.contains("Status") {
            self.status = dict["Status"] as! Int32
        }
        if dict.keys.contains("TransferAuthorizationCodeSendDate") {
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
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
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
        if dict.keys.contains("IdentityCredential") {
            self.identityCredential = dict["IdentityCredential"] as! String
        }
        if dict.keys.contains("IdentityCredentialNo") {
            self.identityCredentialNo = dict["IdentityCredentialNo"] as! String
        }
        if dict.keys.contains("IdentityCredentialType") {
            self.identityCredentialType = dict["IdentityCredentialType"] as! String
        }
        if dict.keys.contains("Lang") {
            self.lang = dict["Lang"] as! String
        }
        if dict.keys.contains("RegistrantProfileID") {
            self.registrantProfileID = dict["RegistrantProfileID"] as! Int64
        }
        if dict.keys.contains("UserClientIp") {
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
        if dict.keys.contains("RequestId") {
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
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
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
        if dict.keys.contains("Email") {
            self.email = dict["Email"] as! String
        }
        if dict.keys.contains("Lang") {
            self.lang = dict["Lang"] as! String
        }
        if dict.keys.contains("UserClientIp") {
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
            if dict.keys.contains("Code") {
                self.code = dict["Code"] as! String
            }
            if dict.keys.contains("Email") {
                self.email = dict["Email"] as! String
            }
            if dict.keys.contains("Message") {
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
            if dict.keys.contains("Code") {
                self.code = dict["Code"] as! String
            }
            if dict.keys.contains("Email") {
                self.email = dict["Email"] as! String
            }
            if dict.keys.contains("Message") {
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
        if dict.keys.contains("FailList") {
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
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("SuccessList") {
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
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = ResendEmailVerificationResponseBody()
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Address") {
                self.address = dict["Address"] as! String
            }
            if dict.keys.contains("AliyunDns") {
                self.aliyunDns = dict["AliyunDns"] as! Bool
            }
            if dict.keys.contains("City") {
                self.city = dict["City"] as! String
            }
            if dict.keys.contains("Country") {
                self.country = dict["Country"] as! String
            }
            if dict.keys.contains("Dns1") {
                self.dns1 = dict["Dns1"] as! String
            }
            if dict.keys.contains("Dns2") {
                self.dns2 = dict["Dns2"] as! String
            }
            if dict.keys.contains("DomainName") {
                self.domainName = dict["DomainName"] as! String
            }
            if dict.keys.contains("Email") {
                self.email = dict["Email"] as! String
            }
            if dict.keys.contains("EnableDomainProxy") {
                self.enableDomainProxy = dict["EnableDomainProxy"] as! Bool
            }
            if dict.keys.contains("PermitPremiumActivation") {
                self.permitPremiumActivation = dict["PermitPremiumActivation"] as! Bool
            }
            if dict.keys.contains("PostalCode") {
                self.postalCode = dict["PostalCode"] as! String
            }
            if dict.keys.contains("Province") {
                self.province = dict["Province"] as! String
            }
            if dict.keys.contains("RegistrantName") {
                self.registrantName = dict["RegistrantName"] as! String
            }
            if dict.keys.contains("RegistrantOrganization") {
                self.registrantOrganization = dict["RegistrantOrganization"] as! String
            }
            if dict.keys.contains("RegistrantProfileId") {
                self.registrantProfileId = dict["RegistrantProfileId"] as! Int64
            }
            if dict.keys.contains("RegistrantType") {
                self.registrantType = dict["RegistrantType"] as! String
            }
            if dict.keys.contains("SubscriptionDuration") {
                self.subscriptionDuration = dict["SubscriptionDuration"] as! Int32
            }
            if dict.keys.contains("TelArea") {
                self.telArea = dict["TelArea"] as! String
            }
            if dict.keys.contains("TelExt") {
                self.telExt = dict["TelExt"] as! String
            }
            if dict.keys.contains("Telephone") {
                self.telephone = dict["Telephone"] as! String
            }
            if dict.keys.contains("TrademarkDomainActivation") {
                self.trademarkDomainActivation = dict["TrademarkDomainActivation"] as! Bool
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
        if dict.keys.contains("CouponNo") {
            self.couponNo = dict["CouponNo"] as! String
        }
        if dict.keys.contains("Lang") {
            self.lang = dict["Lang"] as! String
        }
        if dict.keys.contains("OrderActivateParam") {
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
        if dict.keys.contains("PromotionNo") {
            self.promotionNo = dict["PromotionNo"] as! String
        }
        if dict.keys.contains("UseCoupon") {
            self.useCoupon = dict["UseCoupon"] as! Bool
        }
        if dict.keys.contains("UsePromotion") {
            self.usePromotion = dict["UsePromotion"] as! Bool
        }
        if dict.keys.contains("UserClientIp") {
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
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("TaskNo") {
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
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
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
            if dict.keys.contains("CurrentExpirationDate") {
                self.currentExpirationDate = dict["CurrentExpirationDate"] as! Int64
            }
            if dict.keys.contains("DomainName") {
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
        if dict.keys.contains("CouponNo") {
            self.couponNo = dict["CouponNo"] as! String
        }
        if dict.keys.contains("Lang") {
            self.lang = dict["Lang"] as! String
        }
        if dict.keys.contains("OrderRedeemParam") {
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
        if dict.keys.contains("PromotionNo") {
            self.promotionNo = dict["PromotionNo"] as! String
        }
        if dict.keys.contains("UseCoupon") {
            self.useCoupon = dict["UseCoupon"] as! Bool
        }
        if dict.keys.contains("UsePromotion") {
            self.usePromotion = dict["UsePromotion"] as! Bool
        }
        if dict.keys.contains("UserClientIp") {
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
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("TaskNo") {
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
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
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
            if dict.keys.contains("CurrentExpirationDate") {
                self.currentExpirationDate = dict["CurrentExpirationDate"] as! Int64
            }
            if dict.keys.contains("DomainName") {
                self.domainName = dict["DomainName"] as! String
            }
            if dict.keys.contains("SubscriptionDuration") {
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
        if dict.keys.contains("CouponNo") {
            self.couponNo = dict["CouponNo"] as! String
        }
        if dict.keys.contains("Lang") {
            self.lang = dict["Lang"] as! String
        }
        if dict.keys.contains("OrderRenewParam") {
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
        if dict.keys.contains("PromotionNo") {
            self.promotionNo = dict["PromotionNo"] as! String
        }
        if dict.keys.contains("UseCoupon") {
            self.useCoupon = dict["UseCoupon"] as! Bool
        }
        if dict.keys.contains("UsePromotion") {
            self.usePromotion = dict["UsePromotion"] as! Bool
        }
        if dict.keys.contains("UserClientIp") {
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
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("TaskNo") {
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
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
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
            if dict.keys.contains("AuthorizationCode") {
                self.authorizationCode = dict["AuthorizationCode"] as! String
            }
            if dict.keys.contains("DomainName") {
                self.domainName = dict["DomainName"] as! String
            }
            if dict.keys.contains("PermitPremiumTransfer") {
                self.permitPremiumTransfer = dict["PermitPremiumTransfer"] as! Bool
            }
            if dict.keys.contains("RegistrantProfileId") {
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
        if dict.keys.contains("CouponNo") {
            self.couponNo = dict["CouponNo"] as! String
        }
        if dict.keys.contains("Lang") {
            self.lang = dict["Lang"] as! String
        }
        if dict.keys.contains("OrderTransferParam") {
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
        if dict.keys.contains("PromotionNo") {
            self.promotionNo = dict["PromotionNo"] as! String
        }
        if dict.keys.contains("UseCoupon") {
            self.useCoupon = dict["UseCoupon"] as! Bool
        }
        if dict.keys.contains("UsePromotion") {
            self.usePromotion = dict["UsePromotion"] as! Bool
        }
        if dict.keys.contains("UserClientIp") {
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
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("TaskNo") {
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
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = SaveBatchTaskForCreatingOrderTransferResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DomainName") {
            self.domainName = dict["DomainName"] as! [String]
        }
        if dict.keys.contains("Lang") {
            self.lang = dict["Lang"] as! String
        }
        if dict.keys.contains("UserClientIp") {
            self.userClientIp = dict["UserClientIp"] as! String
        }
        if dict.keys.contains("status") {
            self.status = dict["status"] as! Bool
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
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("TaskNo") {
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
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = SaveBatchTaskForDomainNameProxyServiceResponseBody()
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
        if dict.keys.contains("AliyunDns") {
            self.aliyunDns = dict["AliyunDns"] as! Bool
        }
        if dict.keys.contains("DomainName") {
            self.domainName = dict["DomainName"] as! [String]
        }
        if dict.keys.contains("DomainNameServer") {
            self.domainNameServer = dict["DomainNameServer"] as! [String]
        }
        if dict.keys.contains("Lang") {
            self.lang = dict["Lang"] as! String
        }
        if dict.keys.contains("UserClientIp") {
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
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("TaskNo") {
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
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = SaveBatchTaskForModifyingDomainDnsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Dns1") {
                self.dns1 = dict["Dns1"] as! String
            }
            if dict.keys.contains("Dns2") {
                self.dns2 = dict["Dns2"] as! String
            }
            if dict.keys.contains("DomainName") {
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
        if dict.keys.contains("ContactTemplateId") {
            self.contactTemplateId = dict["ContactTemplateId"] as! String
        }
        if dict.keys.contains("Domains") {
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
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("TaskNo") {
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
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
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
        if dict.keys.contains("DomainName") {
            self.domainName = dict["DomainName"] as! [String]
        }
        if dict.keys.contains("Lang") {
            self.lang = dict["Lang"] as! String
        }
        if dict.keys.contains("Status") {
            self.status = dict["Status"] as! Bool
        }
        if dict.keys.contains("UserClientIp") {
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
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("TaskNo") {
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
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
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
        if dict.keys.contains("DomainName") {
            self.domainName = dict["DomainName"] as! [String]
        }
        if dict.keys.contains("Lang") {
            self.lang = dict["Lang"] as! String
        }
        if dict.keys.contains("Status") {
            self.status = dict["Status"] as! Bool
        }
        if dict.keys.contains("UserClientIp") {
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
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("TaskNo") {
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
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = SaveBatchTaskForUpdateProhibitionLockResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AddTransferLock") {
            self.addTransferLock = dict["AddTransferLock"] as! Bool
        }
        if dict.keys.contains("ContactType") {
            self.contactType = dict["ContactType"] as! String
        }
        if dict.keys.contains("DomainName") {
            self.domainName = dict["DomainName"] as! [String]
        }
        if dict.keys.contains("Lang") {
            self.lang = dict["Lang"] as! String
        }
        if dict.keys.contains("RegistrantProfileId") {
            self.registrantProfileId = dict["RegistrantProfileId"] as! Int64
        }
        if dict.keys.contains("UserClientIp") {
            self.userClientIp = dict["UserClientIp"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("TaskNo") {
            self.taskNo = dict["TaskNo"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = SaveBatchTaskForUpdatingContactInfoResponseBody()
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Address") {
            self.address = dict["Address"] as! String
        }
        if dict.keys.contains("City") {
            self.city = dict["City"] as! String
        }
        if dict.keys.contains("ContactType") {
            self.contactType = dict["ContactType"] as! String
        }
        if dict.keys.contains("Country") {
            self.country = dict["Country"] as! String
        }
        if dict.keys.contains("DomainName") {
            self.domainName = dict["DomainName"] as! [String]
        }
        if dict.keys.contains("Email") {
            self.email = dict["Email"] as! String
        }
        if dict.keys.contains("Lang") {
            self.lang = dict["Lang"] as! String
        }
        if dict.keys.contains("PostalCode") {
            self.postalCode = dict["PostalCode"] as! String
        }
        if dict.keys.contains("Province") {
            self.province = dict["Province"] as! String
        }
        if dict.keys.contains("RegistrantName") {
            self.registrantName = dict["RegistrantName"] as! String
        }
        if dict.keys.contains("RegistrantOrganization") {
            self.registrantOrganization = dict["RegistrantOrganization"] as! String
        }
        if dict.keys.contains("TelArea") {
            self.telArea = dict["TelArea"] as! String
        }
        if dict.keys.contains("TelExt") {
            self.telExt = dict["TelExt"] as! String
        }
        if dict.keys.contains("Telephone") {
            self.telephone = dict["Telephone"] as! String
        }
        if dict.keys.contains("TransferOutProhibited") {
            self.transferOutProhibited = dict["TransferOutProhibited"] as! Bool
        }
        if dict.keys.contains("UserClientIp") {
            self.userClientIp = dict["UserClientIp"] as! String
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
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("TaskNo") {
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
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = SaveBatchTaskForUpdatingContactInfoByNewContactResponseBody()
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

    public override init() {
        super.init()
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Address") {
            self.address = dict["Address"] as! String
        }
        if dict.keys.contains("City") {
            self.city = dict["City"] as! String
        }
        if dict.keys.contains("Country") {
            self.country = dict["Country"] as! String
        }
        if dict.keys.contains("DefaultRegistrantProfile") {
            self.defaultRegistrantProfile = dict["DefaultRegistrantProfile"] as! Bool
        }
        if dict.keys.contains("Email") {
            self.email = dict["Email"] as! String
        }
        if dict.keys.contains("Lang") {
            self.lang = dict["Lang"] as! String
        }
        if dict.keys.contains("PostalCode") {
            self.postalCode = dict["PostalCode"] as! String
        }
        if dict.keys.contains("Province") {
            self.province = dict["Province"] as! String
        }
        if dict.keys.contains("RegistrantName") {
            self.registrantName = dict["RegistrantName"] as! String
        }
        if dict.keys.contains("RegistrantOrganization") {
            self.registrantOrganization = dict["RegistrantOrganization"] as! String
        }
        if dict.keys.contains("RegistrantProfileId") {
            self.registrantProfileId = dict["RegistrantProfileId"] as! Int64
        }
        if dict.keys.contains("RegistrantProfileType") {
            self.registrantProfileType = dict["RegistrantProfileType"] as! String
        }
        if dict.keys.contains("RegistrantType") {
            self.registrantType = dict["RegistrantType"] as! String
        }
        if dict.keys.contains("TelArea") {
            self.telArea = dict["TelArea"] as! String
        }
        if dict.keys.contains("TelExt") {
            self.telExt = dict["TelExt"] as! String
        }
        if dict.keys.contains("Telephone") {
            self.telephone = dict["Telephone"] as! String
        }
        if dict.keys.contains("UserClientIp") {
            self.userClientIp = dict["UserClientIp"] as! String
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
        if dict.keys.contains("RegistrantProfileId") {
            self.registrantProfileId = dict["RegistrantProfileId"] as! Int64
        }
        if dict.keys.contains("RequestId") {
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
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = SaveRegistrantProfileResponseBody()
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
        if dict.keys.contains("Algorithm") {
            self.algorithm = dict["Algorithm"] as! Int32
        }
        if dict.keys.contains("Digest") {
            self.digest = dict["Digest"] as! String
        }
        if dict.keys.contains("DigestType") {
            self.digestType = dict["DigestType"] as! Int32
        }
        if dict.keys.contains("DomainName") {
            self.domainName = dict["DomainName"] as! String
        }
        if dict.keys.contains("KeyTag") {
            self.keyTag = dict["KeyTag"] as! Int32
        }
        if dict.keys.contains("Lang") {
            self.lang = dict["Lang"] as! String
        }
        if dict.keys.contains("UserClientIp") {
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
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("TaskNo") {
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
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = SaveSingleTaskForAddingDSRecordResponseBody()
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
        if dict.keys.contains("DomainName") {
            self.domainName = dict["DomainName"] as! String
        }
        if dict.keys.contains("Lang") {
            self.lang = dict["Lang"] as! String
        }
        if dict.keys.contains("UserClientIp") {
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
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("TaskNo") {
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
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
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
        if dict.keys.contains("Address") {
            self.address = dict["Address"] as! String
        }
        if dict.keys.contains("DomainName") {
            self.domainName = dict["DomainName"] as! String
        }
        if dict.keys.contains("Lang") {
            self.lang = dict["Lang"] as! String
        }
        if dict.keys.contains("UserClientIp") {
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
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("TaskNo") {
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
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
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
        if dict.keys.contains("DomainName") {
            self.domainName = dict["DomainName"] as! String
        }
        if dict.keys.contains("Lang") {
            self.lang = dict["Lang"] as! String
        }
        if dict.keys.contains("UserClientIp") {
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
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("TaskNo") {
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
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
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
        if dict.keys.contains("DomainName") {
            self.domainName = dict["DomainName"] as! String
        }
        if dict.keys.contains("Lang") {
            self.lang = dict["Lang"] as! String
        }
        if dict.keys.contains("UserClientIp") {
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
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("TaskNo") {
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
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
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
        if dict.keys.contains("DnsName") {
            self.dnsName = dict["DnsName"] as! String
        }
        if dict.keys.contains("InstanceId") {
            self.instanceId = dict["InstanceId"] as! String
        }
        if dict.keys.contains("Ip") {
            self.ip = dict["Ip"] as! [String]
        }
        if dict.keys.contains("Lang") {
            self.lang = dict["Lang"] as! String
        }
        if dict.keys.contains("UserClientIp") {
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
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("TaskNo") {
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
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Address") {
            self.address = dict["Address"] as! String
        }
        if dict.keys.contains("AliyunDns") {
            self.aliyunDns = dict["AliyunDns"] as! Bool
        }
        if dict.keys.contains("City") {
            self.city = dict["City"] as! String
        }
        if dict.keys.contains("Country") {
            self.country = dict["Country"] as! String
        }
        if dict.keys.contains("CouponNo") {
            self.couponNo = dict["CouponNo"] as! String
        }
        if dict.keys.contains("Dns1") {
            self.dns1 = dict["Dns1"] as! String
        }
        if dict.keys.contains("Dns2") {
            self.dns2 = dict["Dns2"] as! String
        }
        if dict.keys.contains("DomainName") {
            self.domainName = dict["DomainName"] as! String
        }
        if dict.keys.contains("Email") {
            self.email = dict["Email"] as! String
        }
        if dict.keys.contains("EnableDomainProxy") {
            self.enableDomainProxy = dict["EnableDomainProxy"] as! Bool
        }
        if dict.keys.contains("Lang") {
            self.lang = dict["Lang"] as! String
        }
        if dict.keys.contains("PermitPremiumActivation") {
            self.permitPremiumActivation = dict["PermitPremiumActivation"] as! Bool
        }
        if dict.keys.contains("PostalCode") {
            self.postalCode = dict["PostalCode"] as! String
        }
        if dict.keys.contains("PromotionNo") {
            self.promotionNo = dict["PromotionNo"] as! String
        }
        if dict.keys.contains("Province") {
            self.province = dict["Province"] as! String
        }
        if dict.keys.contains("RegistrantName") {
            self.registrantName = dict["RegistrantName"] as! String
        }
        if dict.keys.contains("RegistrantOrganization") {
            self.registrantOrganization = dict["RegistrantOrganization"] as! String
        }
        if dict.keys.contains("RegistrantProfileId") {
            self.registrantProfileId = dict["RegistrantProfileId"] as! Int64
        }
        if dict.keys.contains("RegistrantType") {
            self.registrantType = dict["RegistrantType"] as! String
        }
        if dict.keys.contains("SubscriptionDuration") {
            self.subscriptionDuration = dict["SubscriptionDuration"] as! Int32
        }
        if dict.keys.contains("TelArea") {
            self.telArea = dict["TelArea"] as! String
        }
        if dict.keys.contains("TelExt") {
            self.telExt = dict["TelExt"] as! String
        }
        if dict.keys.contains("Telephone") {
            self.telephone = dict["Telephone"] as! String
        }
        if dict.keys.contains("TrademarkDomainActivation") {
            self.trademarkDomainActivation = dict["TrademarkDomainActivation"] as! Bool
        }
        if dict.keys.contains("UseCoupon") {
            self.useCoupon = dict["UseCoupon"] as! Bool
        }
        if dict.keys.contains("UsePromotion") {
            self.usePromotion = dict["UsePromotion"] as! Bool
        }
        if dict.keys.contains("UserClientIp") {
            self.userClientIp = dict["UserClientIp"] as! String
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
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("TaskNo") {
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
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
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
        if dict.keys.contains("CouponNo") {
            self.couponNo = dict["CouponNo"] as! String
        }
        if dict.keys.contains("CurrentExpirationDate") {
            self.currentExpirationDate = dict["CurrentExpirationDate"] as! Int64
        }
        if dict.keys.contains("DomainName") {
            self.domainName = dict["DomainName"] as! String
        }
        if dict.keys.contains("Lang") {
            self.lang = dict["Lang"] as! String
        }
        if dict.keys.contains("PromotionNo") {
            self.promotionNo = dict["PromotionNo"] as! String
        }
        if dict.keys.contains("UseCoupon") {
            self.useCoupon = dict["UseCoupon"] as! Bool
        }
        if dict.keys.contains("UsePromotion") {
            self.usePromotion = dict["UsePromotion"] as! Bool
        }
        if dict.keys.contains("UserClientIp") {
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
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("TaskNo") {
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
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
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
        if dict.keys.contains("CouponNo") {
            self.couponNo = dict["CouponNo"] as! String
        }
        if dict.keys.contains("CurrentExpirationDate") {
            self.currentExpirationDate = dict["CurrentExpirationDate"] as! Int64
        }
        if dict.keys.contains("DomainName") {
            self.domainName = dict["DomainName"] as! String
        }
        if dict.keys.contains("Lang") {
            self.lang = dict["Lang"] as! String
        }
        if dict.keys.contains("PromotionNo") {
            self.promotionNo = dict["PromotionNo"] as! String
        }
        if dict.keys.contains("SubscriptionDuration") {
            self.subscriptionDuration = dict["SubscriptionDuration"] as! Int32
        }
        if dict.keys.contains("UseCoupon") {
            self.useCoupon = dict["UseCoupon"] as! Bool
        }
        if dict.keys.contains("UsePromotion") {
            self.usePromotion = dict["UsePromotion"] as! Bool
        }
        if dict.keys.contains("UserClientIp") {
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
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("TaskNo") {
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
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
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
        if dict.keys.contains("AuthorizationCode") {
            self.authorizationCode = dict["AuthorizationCode"] as! String
        }
        if dict.keys.contains("CouponNo") {
            self.couponNo = dict["CouponNo"] as! String
        }
        if dict.keys.contains("DomainName") {
            self.domainName = dict["DomainName"] as! String
        }
        if dict.keys.contains("Lang") {
            self.lang = dict["Lang"] as! String
        }
        if dict.keys.contains("PermitPremiumTransfer") {
            self.permitPremiumTransfer = dict["PermitPremiumTransfer"] as! Bool
        }
        if dict.keys.contains("PromotionNo") {
            self.promotionNo = dict["PromotionNo"] as! String
        }
        if dict.keys.contains("RegistrantProfileId") {
            self.registrantProfileId = dict["RegistrantProfileId"] as! Int64
        }
        if dict.keys.contains("UseCoupon") {
            self.useCoupon = dict["UseCoupon"] as! Bool
        }
        if dict.keys.contains("UsePromotion") {
            self.usePromotion = dict["UsePromotion"] as! Bool
        }
        if dict.keys.contains("UserClientIp") {
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
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("TaskNo") {
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
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
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
        if dict.keys.contains("DomainName") {
            self.domainName = dict["DomainName"] as! String
        }
        if dict.keys.contains("KeyTag") {
            self.keyTag = dict["KeyTag"] as! Int32
        }
        if dict.keys.contains("Lang") {
            self.lang = dict["Lang"] as! String
        }
        if dict.keys.contains("UserClientIp") {
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
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("TaskNo") {
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
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = SaveSingleTaskForDeletingDSRecordResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DnsName") {
            self.dnsName = dict["DnsName"] as! String
        }
        if dict.keys.contains("InstanceId") {
            self.instanceId = dict["InstanceId"] as! String
        }
        if dict.keys.contains("Ip") {
            self.ip = dict["Ip"] as! [String]
        }
        if dict.keys.contains("Lang") {
            self.lang = dict["Lang"] as! String
        }
        if dict.keys.contains("UserClientIp") {
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
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("TaskNo") {
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
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
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
        if dict.keys.contains("DomainName") {
            self.domainName = dict["DomainName"] as! String
        }
        if dict.keys.contains("Lang") {
            self.lang = dict["Lang"] as! String
        }
        if dict.keys.contains("UserClientIp") {
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
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("TaskNo") {
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
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
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
        if dict.keys.contains("DomainName") {
            self.domainName = dict["DomainName"] as! String
        }
        if dict.keys.contains("Lang") {
            self.lang = dict["Lang"] as! String
        }
        if dict.keys.contains("Status") {
            self.status = dict["Status"] as! Bool
        }
        if dict.keys.contains("UserClientIp") {
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
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("TaskNo") {
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
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = SaveSingleTaskForDomainNameProxyServiceResponseBody()
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
        if dict.keys.contains("Algorithm") {
            self.algorithm = dict["Algorithm"] as! Int32
        }
        if dict.keys.contains("Digest") {
            self.digest = dict["Digest"] as! String
        }
        if dict.keys.contains("DigestType") {
            self.digestType = dict["DigestType"] as! Int32
        }
        if dict.keys.contains("DomainName") {
            self.domainName = dict["DomainName"] as! String
        }
        if dict.keys.contains("KeyTag") {
            self.keyTag = dict["KeyTag"] as! Int32
        }
        if dict.keys.contains("Lang") {
            self.lang = dict["Lang"] as! String
        }
        if dict.keys.contains("UserClientIp") {
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
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("TaskNo") {
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
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
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
        if dict.keys.contains("DnsName") {
            self.dnsName = dict["DnsName"] as! String
        }
        if dict.keys.contains("InstanceId") {
            self.instanceId = dict["InstanceId"] as! String
        }
        if dict.keys.contains("Ip") {
            self.ip = dict["Ip"] as! [String]
        }
        if dict.keys.contains("Lang") {
            self.lang = dict["Lang"] as! String
        }
        if dict.keys.contains("UserClientIp") {
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
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("TaskNo") {
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
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
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
        if dict.keys.contains("DomainName") {
            self.domainName = dict["DomainName"] as! String
        }
        if dict.keys.contains("Lang") {
            self.lang = dict["Lang"] as! String
        }
        if dict.keys.contains("UserClientIp") {
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
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("TaskNo") {
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
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
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
        if dict.keys.contains("DateOrPeriod") {
            self.dateOrPeriod = dict["DateOrPeriod"] as! String
        }
        if dict.keys.contains("Dimensions") {
            self.dimensions = dict["Dimensions"] as! String
        }
        if dict.keys.contains("DomainName") {
            self.domainName = dict["DomainName"] as! String
        }
        if dict.keys.contains("Features") {
            self.features = dict["Features"] as! String
        }
        if dict.keys.contains("InscriptionsAndMarkings") {
            self.inscriptionsAndMarkings = dict["InscriptionsAndMarkings"] as! String
        }
        if dict.keys.contains("Lang") {
            self.lang = dict["Lang"] as! String
        }
        if dict.keys.contains("Maker") {
            self.maker = dict["Maker"] as! String
        }
        if dict.keys.contains("MaterialsAndTechniques") {
            self.materialsAndTechniques = dict["MaterialsAndTechniques"] as! String
        }
        if dict.keys.contains("ObjectType") {
            self.objectType = dict["ObjectType"] as! String
        }
        if dict.keys.contains("Reference") {
            self.reference = dict["Reference"] as! String
        }
        if dict.keys.contains("Subject") {
            self.subject = dict["Subject"] as! String
        }
        if dict.keys.contains("Title") {
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
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("TaskNo") {
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
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
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
        if dict.keys.contains("DomainName") {
            self.domainName = dict["DomainName"] as! String
        }
        if dict.keys.contains("Lang") {
            self.lang = dict["Lang"] as! String
        }
        if dict.keys.contains("UserClientIp") {
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
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("TaskNo") {
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
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
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
        if dict.keys.contains("InstanceId") {
            self.instanceId = dict["InstanceId"] as! String
        }
        if dict.keys.contains("Lang") {
            self.lang = dict["Lang"] as! String
        }
        if dict.keys.contains("UserClientIp") {
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
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("TaskNo") {
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
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
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
        if dict.keys.contains("DomainName") {
            self.domainName = dict["DomainName"] as! String
        }
        if dict.keys.contains("Lang") {
            self.lang = dict["Lang"] as! String
        }
        if dict.keys.contains("Status") {
            self.status = dict["Status"] as! Bool
        }
        if dict.keys.contains("UserClientIp") {
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
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("TaskNo") {
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
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
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
        if dict.keys.contains("DomainName") {
            self.domainName = dict["DomainName"] as! String
        }
        if dict.keys.contains("Lang") {
            self.lang = dict["Lang"] as! String
        }
        if dict.keys.contains("Status") {
            self.status = dict["Status"] as! Bool
        }
        if dict.keys.contains("UserClientIp") {
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
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("TaskNo") {
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
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
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
        if dict.keys.contains("AddTransferLock") {
            self.addTransferLock = dict["AddTransferLock"] as! Bool
        }
        if dict.keys.contains("ContactType") {
            self.contactType = dict["ContactType"] as! String
        }
        if dict.keys.contains("DomainName") {
            self.domainName = dict["DomainName"] as! String
        }
        if dict.keys.contains("InstanceId") {
            self.instanceId = dict["InstanceId"] as! String
        }
        if dict.keys.contains("Lang") {
            self.lang = dict["Lang"] as! String
        }
        if dict.keys.contains("RegistrantProfileId") {
            self.registrantProfileId = dict["RegistrantProfileId"] as! Int64
        }
        if dict.keys.contains("UserClientIp") {
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
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("TaskNo") {
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
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
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
        if dict.keys.contains("InstanceId") {
            self.instanceId = dict["InstanceId"] as! String
        }
        if dict.keys.contains("Lang") {
            self.lang = dict["Lang"] as! String
        }
        if dict.keys.contains("UserClientIp") {
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
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("TaskNo") {
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
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
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
        if dict.keys.contains("DomainName") {
            self.domainName = dict["DomainName"] as! [String]
        }
        if dict.keys.contains("IdentityCredential") {
            self.identityCredential = dict["IdentityCredential"] as! String
        }
        if dict.keys.contains("IdentityCredentialNo") {
            self.identityCredentialNo = dict["IdentityCredentialNo"] as! String
        }
        if dict.keys.contains("IdentityCredentialType") {
            self.identityCredentialType = dict["IdentityCredentialType"] as! String
        }
        if dict.keys.contains("Lang") {
            self.lang = dict["Lang"] as! String
        }
        if dict.keys.contains("UserClientIp") {
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
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("TaskNo") {
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
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
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
        if dict.keys.contains("DomainName") {
            self.domainName = dict["DomainName"] as! String
        }
        if dict.keys.contains("InstanceId") {
            self.instanceId = dict["InstanceId"] as! String
        }
        if dict.keys.contains("Lang") {
            self.lang = dict["Lang"] as! String
        }
        if dict.keys.contains("RegistrantProfileId") {
            self.registrantProfileId = dict["RegistrantProfileId"] as! Int64
        }
        if dict.keys.contains("UserClientIp") {
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
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("TaskNo") {
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
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
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

    public override init() {
        super.init()
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Address") {
            self.address = dict["Address"] as! String
        }
        if dict.keys.contains("City") {
            self.city = dict["City"] as! String
        }
        if dict.keys.contains("Country") {
            self.country = dict["Country"] as! String
        }
        if dict.keys.contains("DomainName") {
            self.domainName = dict["DomainName"] as! [String]
        }
        if dict.keys.contains("Email") {
            self.email = dict["Email"] as! String
        }
        if dict.keys.contains("IdentityCredential") {
            self.identityCredential = dict["IdentityCredential"] as! String
        }
        if dict.keys.contains("IdentityCredentialNo") {
            self.identityCredentialNo = dict["IdentityCredentialNo"] as! String
        }
        if dict.keys.contains("IdentityCredentialType") {
            self.identityCredentialType = dict["IdentityCredentialType"] as! String
        }
        if dict.keys.contains("Lang") {
            self.lang = dict["Lang"] as! String
        }
        if dict.keys.contains("PostalCode") {
            self.postalCode = dict["PostalCode"] as! String
        }
        if dict.keys.contains("Province") {
            self.province = dict["Province"] as! String
        }
        if dict.keys.contains("RegistrantName") {
            self.registrantName = dict["RegistrantName"] as! String
        }
        if dict.keys.contains("RegistrantOrganization") {
            self.registrantOrganization = dict["RegistrantOrganization"] as! String
        }
        if dict.keys.contains("RegistrantType") {
            self.registrantType = dict["RegistrantType"] as! String
        }
        if dict.keys.contains("TelArea") {
            self.telArea = dict["TelArea"] as! String
        }
        if dict.keys.contains("TelExt") {
            self.telExt = dict["TelExt"] as! String
        }
        if dict.keys.contains("Telephone") {
            self.telephone = dict["Telephone"] as! String
        }
        if dict.keys.contains("TransferOutProhibited") {
            self.transferOutProhibited = dict["TransferOutProhibited"] as! Bool
        }
        if dict.keys.contains("UserClientIp") {
            self.userClientIp = dict["UserClientIp"] as! String
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
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("TaskNo") {
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
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
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
        if dict.keys.contains("DomainName") {
            self.domainName = dict["DomainName"] as! [String]
        }
        if dict.keys.contains("Lang") {
            self.lang = dict["Lang"] as! String
        }
        if dict.keys.contains("RegistrantProfileId") {
            self.registrantProfileId = dict["RegistrantProfileId"] as! Int64
        }
        if dict.keys.contains("TransferOutProhibited") {
            self.transferOutProhibited = dict["TransferOutProhibited"] as! Bool
        }
        if dict.keys.contains("UserClientIp") {
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
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("TaskNo") {
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
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = SaveTaskForUpdatingRegistrantInfoByRegistrantProfileIDResponseBody()
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
        if dict.keys.contains("Email") {
            self.email = dict["Email"] as! String
        }
        if dict.keys.contains("Lang") {
            self.lang = dict["Lang"] as! String
        }
        if dict.keys.contains("SendIfExist") {
            self.sendIfExist = dict["SendIfExist"] as! Bool
        }
        if dict.keys.contains("UserClientIp") {
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
            if dict.keys.contains("Code") {
                self.code = dict["Code"] as! String
            }
            if dict.keys.contains("Email") {
                self.email = dict["Email"] as! String
            }
            if dict.keys.contains("Message") {
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
            if dict.keys.contains("Code") {
                self.code = dict["Code"] as! String
            }
            if dict.keys.contains("Email") {
                self.email = dict["Email"] as! String
            }
            if dict.keys.contains("Message") {
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
            if dict.keys.contains("Code") {
                self.code = dict["Code"] as! String
            }
            if dict.keys.contains("Email") {
                self.email = dict["Email"] as! String
            }
            if dict.keys.contains("Message") {
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
        if dict.keys.contains("ExistList") {
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
        if dict.keys.contains("FailList") {
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
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("SuccessList") {
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
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = SubmitEmailVerificationResponseBody()
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
        if dict.keys.contains("Lang") {
            self.lang = dict["Lang"] as! String
        }
        if dict.keys.contains("Token") {
            self.token = dict["Token"] as! String
        }
        if dict.keys.contains("UserClientIp") {
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
            if dict.keys.contains("FailDomain") {
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
            if dict.keys.contains("SuccessDomain") {
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
        if dict.keys.contains("FailList") {
            var model = TransferInCheckMailTokenResponseBody.FailList()
            model.fromMap(dict["FailList"] as! [String: Any])
            self.failList = model
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("SuccessList") {
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
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
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
        if dict.keys.contains("DomainName") {
            self.domainName = dict["DomainName"] as! String
        }
        if dict.keys.contains("Lang") {
            self.lang = dict["Lang"] as! String
        }
        if dict.keys.contains("TransferAuthorizationCode") {
            self.transferAuthorizationCode = dict["TransferAuthorizationCode"] as! String
        }
        if dict.keys.contains("UserClientIp") {
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
        if dict.keys.contains("RequestId") {
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
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
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
        if dict.keys.contains("DomainName") {
            self.domainName = dict["DomainName"] as! String
        }
        if dict.keys.contains("Lang") {
            self.lang = dict["Lang"] as! String
        }
        if dict.keys.contains("UserClientIp") {
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
        if dict.keys.contains("RequestId") {
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
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
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
        if dict.keys.contains("DomainName") {
            self.domainName = dict["DomainName"] as! String
        }
        if dict.keys.contains("Lang") {
            self.lang = dict["Lang"] as! String
        }
        if dict.keys.contains("UserClientIp") {
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
        if dict.keys.contains("RequestId") {
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
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = TransferInResendMailTokenResponseBody()
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

    public override init() {
        super.init()
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Address") {
            self.address = dict["Address"] as! String
        }
        if dict.keys.contains("City") {
            self.city = dict["City"] as! String
        }
        if dict.keys.contains("Country") {
            self.country = dict["Country"] as! String
        }
        if dict.keys.contains("DomainName") {
            self.domainName = dict["DomainName"] as! String
        }
        if dict.keys.contains("Email") {
            self.email = dict["Email"] as! String
        }
        if dict.keys.contains("Lang") {
            self.lang = dict["Lang"] as! String
        }
        if dict.keys.contains("PostalCode") {
            self.postalCode = dict["PostalCode"] as! String
        }
        if dict.keys.contains("Province") {
            self.province = dict["Province"] as! String
        }
        if dict.keys.contains("RegistrantName") {
            self.registrantName = dict["RegistrantName"] as! String
        }
        if dict.keys.contains("RegistrantOrganization") {
            self.registrantOrganization = dict["RegistrantOrganization"] as! String
        }
        if dict.keys.contains("RegistrantType") {
            self.registrantType = dict["RegistrantType"] as! String
        }
        if dict.keys.contains("TelArea") {
            self.telArea = dict["TelArea"] as! String
        }
        if dict.keys.contains("TelExt") {
            self.telExt = dict["TelExt"] as! String
        }
        if dict.keys.contains("Telephone") {
            self.telephone = dict["Telephone"] as! String
        }
        if dict.keys.contains("UserClientIp") {
            self.userClientIp = dict["UserClientIp"] as! String
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
        if dict.keys.contains("RequestId") {
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
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
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
        if dict.keys.contains("Lang") {
            self.lang = dict["Lang"] as! String
        }
        if dict.keys.contains("Token") {
            self.token = dict["Token"] as! String
        }
        if dict.keys.contains("UserClientIp") {
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
        if dict.keys.contains("RequestId") {
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
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = VerifyEmailResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}
