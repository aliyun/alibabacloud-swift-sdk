import Foundation
import Tea
import TeaUtils
import DarabonbaXML
import AlibabaCloudCredentials
import TeaFileForm
import AlibabacloudOpenApi
import AlibabaCloudOpenApiUtil
import AlibabacloudEndpointUtil

public class CreateTextFileRequest : Tea.TeaModel {
    public var clientToken: String?

    public var contractId: String?

    public var createTime: String?

    public var textFileName: String?

    public var textFileUrl: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.clientToken != nil {
            map["ClientToken"] = self.clientToken!
        }
        if self.contractId != nil {
            map["ContractId"] = self.contractId!
        }
        if self.createTime != nil {
            map["CreateTime"] = self.createTime!
        }
        if self.textFileName != nil {
            map["TextFileName"] = self.textFileName!
        }
        if self.textFileUrl != nil {
            map["TextFileUrl"] = self.textFileUrl!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ClientToken"] as? String {
            self.clientToken = value
        }
        if let value = dict["ContractId"] as? String {
            self.contractId = value
        }
        if let value = dict["CreateTime"] as? String {
            self.createTime = value
        }
        if let value = dict["TextFileName"] as? String {
            self.textFileName = value
        }
        if let value = dict["TextFileUrl"] as? String {
            self.textFileUrl = value
        }
    }
}

public class CreateTextFileAdvanceRequest : Tea.TeaModel {
    public var clientToken: String?

    public var contractId: String?

    public var createTime: String?

    public var textFileName: String?

    public var textFileUrlObject: InputStream?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.clientToken != nil {
            map["ClientToken"] = self.clientToken!
        }
        if self.contractId != nil {
            map["ContractId"] = self.contractId!
        }
        if self.createTime != nil {
            map["CreateTime"] = self.createTime!
        }
        if self.textFileName != nil {
            map["TextFileName"] = self.textFileName!
        }
        if self.textFileUrlObject != nil {
            map["TextFileUrl"] = self.textFileUrlObject!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ClientToken"] as? String {
            self.clientToken = value
        }
        if let value = dict["ContractId"] as? String {
            self.contractId = value
        }
        if let value = dict["CreateTime"] as? String {
            self.createTime = value
        }
        if let value = dict["TextFileName"] as? String {
            self.textFileName = value
        }
        if let value = dict["TextFileUrl"] as? InputStream {
            self.textFileUrlObject = value
        }
    }
}

public class CreateTextFileResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var contractId: String?

        public var textFileId: String?

        public var textFileName: String?

        public var textFileUrl: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.contractId != nil {
                map["ContractId"] = self.contractId!
            }
            if self.textFileId != nil {
                map["TextFileId"] = self.textFileId!
            }
            if self.textFileName != nil {
                map["TextFileName"] = self.textFileName!
            }
            if self.textFileUrl != nil {
                map["TextFileUrl"] = self.textFileUrl!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["ContractId"] as? String {
                self.contractId = value
            }
            if let value = dict["TextFileId"] as? String {
                self.textFileId = value
            }
            if let value = dict["TextFileName"] as? String {
                self.textFileName = value
            }
            if let value = dict["TextFileUrl"] as? String {
                self.textFileUrl = value
            }
        }
    }
    public var code: String?

    public var data: CreateTextFileResponseBody.Data?

    public var httpStatusCode: Int64?

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
        if self.httpStatusCode != nil {
            map["HttpStatusCode"] = self.httpStatusCode!
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["Data"] as? [String: Any?] {
            var model = CreateTextFileResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["HttpStatusCode"] as? Int64 {
            self.httpStatusCode = value
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
    }
}

public class CreateTextFileResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateTextFileResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = CreateTextFileResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class RunContractResultGenerationRequest : Tea.TeaModel {
    public class Assistant : Tea.TeaModel {
        public class MetaData : Tea.TeaModel {
            public class CustomRuleConfig : Tea.TeaModel {
                public class CustomRules : Tea.TeaModel {
                    public var riskLevel: String?

                    public var ruleDesc: String?

                    public var ruleTitle: String?

                    public override init() {
                        super.init()
                    }

                    public init(_ dict: [String: Any]) {
                        super.init()
                        self.fromMap(dict)
                    }

                    public override func validate() throws -> Void {
                    }

                    public override func toMap() -> [String : Any] {
                        var map = super.toMap()
                        if self.riskLevel != nil {
                            map["riskLevel"] = self.riskLevel!
                        }
                        if self.ruleDesc != nil {
                            map["ruleDesc"] = self.ruleDesc!
                        }
                        if self.ruleTitle != nil {
                            map["ruleTitle"] = self.ruleTitle!
                        }
                        return map
                    }

                    public override func fromMap(_ dict: [String: Any?]?) -> Void {
                        guard let dict else { return }
                        if let value = dict["riskLevel"] as? String {
                            self.riskLevel = value
                        }
                        if let value = dict["ruleDesc"] as? String {
                            self.ruleDesc = value
                        }
                        if let value = dict["ruleTitle"] as? String {
                            self.ruleTitle = value
                        }
                    }
                }
                public var customRules: [RunContractResultGenerationRequest.Assistant.MetaData.CustomRuleConfig.CustomRules]?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.customRules != nil {
                        var tmp : [Any] = []
                        for k in self.customRules! {
                            tmp.append(k.toMap())
                        }
                        map["customRules"] = tmp
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["customRules"] as? [Any?] {
                        var tmp : [RunContractResultGenerationRequest.Assistant.MetaData.CustomRuleConfig.CustomRules] = []
                        for v in value {
                            if v != nil {
                                var model = RunContractResultGenerationRequest.Assistant.MetaData.CustomRuleConfig.CustomRules()
                                if v != nil {
                                    model.fromMap(v as? [String: Any?])
                                }
                                tmp.append(model)
                            }
                        }
                        self.customRules = tmp
                    }
                }
            }
            public class Rules : Tea.TeaModel {
                public var riskLevel: String?

                public var ruleSequence: String?

                public var ruleTag: String?

                public var ruleTitle: String?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.riskLevel != nil {
                        map["riskLevel"] = self.riskLevel!
                    }
                    if self.ruleSequence != nil {
                        map["ruleSequence"] = self.ruleSequence!
                    }
                    if self.ruleTag != nil {
                        map["ruleTag"] = self.ruleTag!
                    }
                    if self.ruleTitle != nil {
                        map["ruleTitle"] = self.ruleTitle!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["riskLevel"] as? String {
                        self.riskLevel = value
                    }
                    if let value = dict["ruleSequence"] as? String {
                        self.ruleSequence = value
                    }
                    if let value = dict["ruleTag"] as? String {
                        self.ruleTag = value
                    }
                    if let value = dict["ruleTitle"] as? String {
                        self.ruleTitle = value
                    }
                }
            }
            public var customRuleConfig: RunContractResultGenerationRequest.Assistant.MetaData.CustomRuleConfig?

            public var fileId: String?

            public var position: String?

            public var ruleTaskId: String?

            public var rules: [RunContractResultGenerationRequest.Assistant.MetaData.Rules]?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
                try self.customRuleConfig?.validate()
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.customRuleConfig != nil {
                    map["customRuleConfig"] = self.customRuleConfig?.toMap()
                }
                if self.fileId != nil {
                    map["fileId"] = self.fileId!
                }
                if self.position != nil {
                    map["position"] = self.position!
                }
                if self.ruleTaskId != nil {
                    map["ruleTaskId"] = self.ruleTaskId!
                }
                if self.rules != nil {
                    var tmp : [Any] = []
                    for k in self.rules! {
                        tmp.append(k.toMap())
                    }
                    map["rules"] = tmp
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["customRuleConfig"] as? [String: Any?] {
                    var model = RunContractResultGenerationRequest.Assistant.MetaData.CustomRuleConfig()
                    model.fromMap(value)
                    self.customRuleConfig = model
                }
                if let value = dict["fileId"] as? String {
                    self.fileId = value
                }
                if let value = dict["position"] as? String {
                    self.position = value
                }
                if let value = dict["ruleTaskId"] as? String {
                    self.ruleTaskId = value
                }
                if let value = dict["rules"] as? [Any?] {
                    var tmp : [RunContractResultGenerationRequest.Assistant.MetaData.Rules] = []
                    for v in value {
                        if v != nil {
                            var model = RunContractResultGenerationRequest.Assistant.MetaData.Rules()
                            if v != nil {
                                model.fromMap(v as? [String: Any?])
                            }
                            tmp.append(model)
                        }
                    }
                    self.rules = tmp
                }
            }
        }
        public var metaData: RunContractResultGenerationRequest.Assistant.MetaData?

        public var type: String?

        public var version: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.metaData?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.metaData != nil {
                map["metaData"] = self.metaData?.toMap()
            }
            if self.type != nil {
                map["type"] = self.type!
            }
            if self.version != nil {
                map["version"] = self.version!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["metaData"] as? [String: Any?] {
                var model = RunContractResultGenerationRequest.Assistant.MetaData()
                model.fromMap(value)
                self.metaData = model
            }
            if let value = dict["type"] as? String {
                self.type = value
            }
            if let value = dict["version"] as? String {
                self.version = value
            }
        }
    }
    public var appId: String?

    public var assistant: RunContractResultGenerationRequest.Assistant?

    public var stream: Bool?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.assistant?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.appId != nil {
            map["appId"] = self.appId!
        }
        if self.assistant != nil {
            map["assistant"] = self.assistant?.toMap()
        }
        if self.stream != nil {
            map["stream"] = self.stream!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["appId"] as? String {
            self.appId = value
        }
        if let value = dict["assistant"] as? [String: Any?] {
            var model = RunContractResultGenerationRequest.Assistant()
            model.fromMap(value)
            self.assistant = model
        }
        if let value = dict["stream"] as? Bool {
            self.stream = value
        }
    }
}

public class RunContractResultGenerationShrinkRequest : Tea.TeaModel {
    public var appId: String?

    public var assistantShrink: String?

    public var stream: Bool?

    public override init() {
        super.init()
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
            map["appId"] = self.appId!
        }
        if self.assistantShrink != nil {
            map["assistant"] = self.assistantShrink!
        }
        if self.stream != nil {
            map["stream"] = self.stream!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["appId"] as? String {
            self.appId = value
        }
        if let value = dict["assistant"] as? String {
            self.assistantShrink = value
        }
        if let value = dict["stream"] as? Bool {
            self.stream = value
        }
    }
}

public class RunContractResultGenerationResponseBody : Tea.TeaModel {
    public class Output : Tea.TeaModel {
        public class Result : Tea.TeaModel {
            public class SubRisks : Tea.TeaModel {
                public var originalContent: String?

                public var resultContent: String?

                public var resultType: String?

                public var riskBrief: String?

                public var riskClause: String?

                public var riskExplain: String?

                public var standardOriginalContent: String?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.originalContent != nil {
                        map["originalContent"] = self.originalContent!
                    }
                    if self.resultContent != nil {
                        map["resultContent"] = self.resultContent!
                    }
                    if self.resultType != nil {
                        map["resultType"] = self.resultType!
                    }
                    if self.riskBrief != nil {
                        map["riskBrief"] = self.riskBrief!
                    }
                    if self.riskClause != nil {
                        map["riskClause"] = self.riskClause!
                    }
                    if self.riskExplain != nil {
                        map["riskExplain"] = self.riskExplain!
                    }
                    if self.standardOriginalContent != nil {
                        map["standardOriginalContent"] = self.standardOriginalContent!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["originalContent"] as? String {
                        self.originalContent = value
                    }
                    if let value = dict["resultContent"] as? String {
                        self.resultContent = value
                    }
                    if let value = dict["resultType"] as? String {
                        self.resultType = value
                    }
                    if let value = dict["riskBrief"] as? String {
                        self.riskBrief = value
                    }
                    if let value = dict["riskClause"] as? String {
                        self.riskClause = value
                    }
                    if let value = dict["riskExplain"] as? String {
                        self.riskExplain = value
                    }
                    if let value = dict["standardOriginalContent"] as? String {
                        self.standardOriginalContent = value
                    }
                }
            }
            public var examineBrief: String?

            public var examineResult: String?

            public var riskLevel: String?

            public var ruleSequence: String?

            public var ruleTag: String?

            public var ruleTitle: String?

            public var subRisks: [RunContractResultGenerationResponseBody.Output.Result.SubRisks]?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.examineBrief != nil {
                    map["examineBrief"] = self.examineBrief!
                }
                if self.examineResult != nil {
                    map["examineResult"] = self.examineResult!
                }
                if self.riskLevel != nil {
                    map["riskLevel"] = self.riskLevel!
                }
                if self.ruleSequence != nil {
                    map["ruleSequence"] = self.ruleSequence!
                }
                if self.ruleTag != nil {
                    map["ruleTag"] = self.ruleTag!
                }
                if self.ruleTitle != nil {
                    map["ruleTitle"] = self.ruleTitle!
                }
                if self.subRisks != nil {
                    var tmp : [Any] = []
                    for k in self.subRisks! {
                        tmp.append(k.toMap())
                    }
                    map["subRisks"] = tmp
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["examineBrief"] as? String {
                    self.examineBrief = value
                }
                if let value = dict["examineResult"] as? String {
                    self.examineResult = value
                }
                if let value = dict["riskLevel"] as? String {
                    self.riskLevel = value
                }
                if let value = dict["ruleSequence"] as? String {
                    self.ruleSequence = value
                }
                if let value = dict["ruleTag"] as? String {
                    self.ruleTag = value
                }
                if let value = dict["ruleTitle"] as? String {
                    self.ruleTitle = value
                }
                if let value = dict["subRisks"] as? [Any?] {
                    var tmp : [RunContractResultGenerationResponseBody.Output.Result.SubRisks] = []
                    for v in value {
                        if v != nil {
                            var model = RunContractResultGenerationResponseBody.Output.Result.SubRisks()
                            if v != nil {
                                model.fromMap(v as? [String: Any?])
                            }
                            tmp.append(model)
                        }
                    }
                    self.subRisks = tmp
                }
            }
        }
        public var result: RunContractResultGenerationResponseBody.Output.Result?

        public var resultTaskId: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.result?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.result != nil {
                map["result"] = self.result?.toMap()
            }
            if self.resultTaskId != nil {
                map["resultTaskId"] = self.resultTaskId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["result"] as? [String: Any?] {
                var model = RunContractResultGenerationResponseBody.Output.Result()
                model.fromMap(value)
                self.result = model
            }
            if let value = dict["resultTaskId"] as? String {
                self.resultTaskId = value
            }
        }
    }
    public class Usage : Tea.TeaModel {
        public var input: Int64?

        public var unit: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.input != nil {
                map["input"] = self.input!
            }
            if self.unit != nil {
                map["unit"] = self.unit!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["input"] as? Int64 {
                self.input = value
            }
            if let value = dict["unit"] as? String {
                self.unit = value
            }
        }
    }
    public var code: String?

    public var message: String?

    public var output: RunContractResultGenerationResponseBody.Output?

    public var requestId: String?

    public var success: Bool?

    public var usage: RunContractResultGenerationResponseBody.Usage?

    public var httpStatusCode: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.output?.validate()
        try self.usage?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.output != nil {
            map["Output"] = self.output?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.success != nil {
            map["Success"] = self.success!
        }
        if self.usage != nil {
            map["Usage"] = self.usage?.toMap()
        }
        if self.httpStatusCode != nil {
            map["httpStatusCode"] = self.httpStatusCode!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["Output"] as? [String: Any?] {
            var model = RunContractResultGenerationResponseBody.Output()
            model.fromMap(value)
            self.output = model
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
        if let value = dict["Usage"] as? [String: Any?] {
            var model = RunContractResultGenerationResponseBody.Usage()
            model.fromMap(value)
            self.usage = model
        }
        if let value = dict["httpStatusCode"] as? String {
            self.httpStatusCode = value
        }
    }
}

public class RunContractResultGenerationResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: RunContractResultGenerationResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = RunContractResultGenerationResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class RunContractRuleGenerationRequest : Tea.TeaModel {
    public class Assistant : Tea.TeaModel {
        public class MetaData : Tea.TeaModel {
            public var fileId: String?

            public var position: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.fileId != nil {
                    map["fileId"] = self.fileId!
                }
                if self.position != nil {
                    map["position"] = self.position!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["fileId"] as? String {
                    self.fileId = value
                }
                if let value = dict["position"] as? String {
                    self.position = value
                }
            }
        }
        public var metaData: RunContractRuleGenerationRequest.Assistant.MetaData?

        public var type: String?

        public var version: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.metaData?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.metaData != nil {
                map["metaData"] = self.metaData?.toMap()
            }
            if self.type != nil {
                map["type"] = self.type!
            }
            if self.version != nil {
                map["version"] = self.version!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["metaData"] as? [String: Any?] {
                var model = RunContractRuleGenerationRequest.Assistant.MetaData()
                model.fromMap(value)
                self.metaData = model
            }
            if let value = dict["type"] as? String {
                self.type = value
            }
            if let value = dict["version"] as? String {
                self.version = value
            }
        }
    }
    public var appId: String?

    public var assistant: RunContractRuleGenerationRequest.Assistant?

    public var stream: Bool?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.assistant?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.appId != nil {
            map["appId"] = self.appId!
        }
        if self.assistant != nil {
            map["assistant"] = self.assistant?.toMap()
        }
        if self.stream != nil {
            map["stream"] = self.stream!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["appId"] as? String {
            self.appId = value
        }
        if let value = dict["assistant"] as? [String: Any?] {
            var model = RunContractRuleGenerationRequest.Assistant()
            model.fromMap(value)
            self.assistant = model
        }
        if let value = dict["stream"] as? Bool {
            self.stream = value
        }
    }
}

public class RunContractRuleGenerationShrinkRequest : Tea.TeaModel {
    public var appId: String?

    public var assistantShrink: String?

    public var stream: Bool?

    public override init() {
        super.init()
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
            map["appId"] = self.appId!
        }
        if self.assistantShrink != nil {
            map["assistant"] = self.assistantShrink!
        }
        if self.stream != nil {
            map["stream"] = self.stream!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["appId"] as? String {
            self.appId = value
        }
        if let value = dict["assistant"] as? String {
            self.assistantShrink = value
        }
        if let value = dict["stream"] as? Bool {
            self.stream = value
        }
    }
}

public class RunContractRuleGenerationResponseBody : Tea.TeaModel {
    public class Output : Tea.TeaModel {
        public class Rules : Tea.TeaModel {
            public var riskLevel: String?

            public var ruleSequence: String?

            public var ruleTag: String?

            public var ruleTitle: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.riskLevel != nil {
                    map["riskLevel"] = self.riskLevel!
                }
                if self.ruleSequence != nil {
                    map["ruleSequence"] = self.ruleSequence!
                }
                if self.ruleTag != nil {
                    map["ruleTag"] = self.ruleTag!
                }
                if self.ruleTitle != nil {
                    map["ruleTitle"] = self.ruleTitle!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["riskLevel"] as? String {
                    self.riskLevel = value
                }
                if let value = dict["ruleSequence"] as? String {
                    self.ruleSequence = value
                }
                if let value = dict["ruleTag"] as? String {
                    self.ruleTag = value
                }
                if let value = dict["ruleTitle"] as? String {
                    self.ruleTitle = value
                }
            }
        }
        public var ruleTaskId: String?

        public var rules: [RunContractRuleGenerationResponseBody.Output.Rules]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.ruleTaskId != nil {
                map["ruleTaskId"] = self.ruleTaskId!
            }
            if self.rules != nil {
                var tmp : [Any] = []
                for k in self.rules! {
                    tmp.append(k.toMap())
                }
                map["rules"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["ruleTaskId"] as? String {
                self.ruleTaskId = value
            }
            if let value = dict["rules"] as? [Any?] {
                var tmp : [RunContractRuleGenerationResponseBody.Output.Rules] = []
                for v in value {
                    if v != nil {
                        var model = RunContractRuleGenerationResponseBody.Output.Rules()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.rules = tmp
            }
        }
    }
    public class Usage : Tea.TeaModel {
        public var input: Int64?

        public var unit: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.input != nil {
                map["input"] = self.input!
            }
            if self.unit != nil {
                map["unit"] = self.unit!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["input"] as? Int64 {
                self.input = value
            }
            if let value = dict["unit"] as? String {
                self.unit = value
            }
        }
    }
    public var code: String?

    public var message: String?

    public var output: RunContractRuleGenerationResponseBody.Output?

    public var requestId: String?

    public var success: Bool?

    public var usage: RunContractRuleGenerationResponseBody.Usage?

    public var httpStatusCode: Int32?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.output?.validate()
        try self.usage?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.output != nil {
            map["Output"] = self.output?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.success != nil {
            map["Success"] = self.success!
        }
        if self.usage != nil {
            map["Usage"] = self.usage?.toMap()
        }
        if self.httpStatusCode != nil {
            map["httpStatusCode"] = self.httpStatusCode!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["Output"] as? [String: Any?] {
            var model = RunContractRuleGenerationResponseBody.Output()
            model.fromMap(value)
            self.output = model
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
        if let value = dict["Usage"] as? [String: Any?] {
            var model = RunContractRuleGenerationResponseBody.Usage()
            model.fromMap(value)
            self.usage = model
        }
        if let value = dict["httpStatusCode"] as? Int32 {
            self.httpStatusCode = value
        }
    }
}

public class RunContractRuleGenerationResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: RunContractRuleGenerationResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = RunContractRuleGenerationResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class RunLegalAdviceConsultationRequest : Tea.TeaModel {
    public class Assistant : Tea.TeaModel {
        public var id: String?

        public var metaData: [String: String]?

        public var type: String?

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
            if self.id != nil {
                map["id"] = self.id!
            }
            if self.metaData != nil {
                map["metaData"] = self.metaData!
            }
            if self.type != nil {
                map["type"] = self.type!
            }
            if self.version != nil {
                map["version"] = self.version!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["id"] as? String {
                self.id = value
            }
            if let value = dict["metaData"] as? [String: String] {
                self.metaData = value
            }
            if let value = dict["type"] as? String {
                self.type = value
            }
            if let value = dict["version"] as? String {
                self.version = value
            }
        }
    }
    public class Extra : Tea.TeaModel {
        public var deepThink: Bool?

        public var onlineSearch: Bool?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.deepThink != nil {
                map["deepThink"] = self.deepThink!
            }
            if self.onlineSearch != nil {
                map["onlineSearch"] = self.onlineSearch!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["deepThink"] as? Bool {
                self.deepThink = value
            }
            if let value = dict["onlineSearch"] as? Bool {
                self.onlineSearch = value
            }
        }
    }
    public class Thread : Tea.TeaModel {
        public class Messages : Tea.TeaModel {
            public var content: String?

            public var role: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.content != nil {
                    map["content"] = self.content!
                }
                if self.role != nil {
                    map["role"] = self.role!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["content"] as? String {
                    self.content = value
                }
                if let value = dict["role"] as? String {
                    self.role = value
                }
            }
        }
        public var messages: [RunLegalAdviceConsultationRequest.Thread.Messages]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.messages != nil {
                var tmp : [Any] = []
                for k in self.messages! {
                    tmp.append(k.toMap())
                }
                map["messages"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["messages"] as? [Any?] {
                var tmp : [RunLegalAdviceConsultationRequest.Thread.Messages] = []
                for v in value {
                    if v != nil {
                        var model = RunLegalAdviceConsultationRequest.Thread.Messages()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.messages = tmp
            }
        }
    }
    public var appId: String?

    public var assistant: RunLegalAdviceConsultationRequest.Assistant?

    public var extra: RunLegalAdviceConsultationRequest.Extra?

    public var stream: Bool?

    public var thread: RunLegalAdviceConsultationRequest.Thread?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.assistant?.validate()
        try self.extra?.validate()
        try self.thread?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.appId != nil {
            map["appId"] = self.appId!
        }
        if self.assistant != nil {
            map["assistant"] = self.assistant?.toMap()
        }
        if self.extra != nil {
            map["extra"] = self.extra?.toMap()
        }
        if self.stream != nil {
            map["stream"] = self.stream!
        }
        if self.thread != nil {
            map["thread"] = self.thread?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["appId"] as? String {
            self.appId = value
        }
        if let value = dict["assistant"] as? [String: Any?] {
            var model = RunLegalAdviceConsultationRequest.Assistant()
            model.fromMap(value)
            self.assistant = model
        }
        if let value = dict["extra"] as? [String: Any?] {
            var model = RunLegalAdviceConsultationRequest.Extra()
            model.fromMap(value)
            self.extra = model
        }
        if let value = dict["stream"] as? Bool {
            self.stream = value
        }
        if let value = dict["thread"] as? [String: Any?] {
            var model = RunLegalAdviceConsultationRequest.Thread()
            model.fromMap(value)
            self.thread = model
        }
    }
}

public class RunLegalAdviceConsultationShrinkRequest : Tea.TeaModel {
    public var appId: String?

    public var assistantShrink: String?

    public var extraShrink: String?

    public var stream: Bool?

    public var threadShrink: String?

    public override init() {
        super.init()
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
            map["appId"] = self.appId!
        }
        if self.assistantShrink != nil {
            map["assistant"] = self.assistantShrink!
        }
        if self.extraShrink != nil {
            map["extra"] = self.extraShrink!
        }
        if self.stream != nil {
            map["stream"] = self.stream!
        }
        if self.threadShrink != nil {
            map["thread"] = self.threadShrink!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["appId"] as? String {
            self.appId = value
        }
        if let value = dict["assistant"] as? String {
            self.assistantShrink = value
        }
        if let value = dict["extra"] as? String {
            self.extraShrink = value
        }
        if let value = dict["stream"] as? Bool {
            self.stream = value
        }
        if let value = dict["thread"] as? String {
            self.threadShrink = value
        }
    }
}

public class RunLegalAdviceConsultationResponseBody : Tea.TeaModel {
    public class Usage : Tea.TeaModel {
        public var inputTokens: Int32?

        public var outputTokens: Int32?

        public var totalTokens: Int32?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.inputTokens != nil {
                map["InputTokens"] = self.inputTokens!
            }
            if self.outputTokens != nil {
                map["OutputTokens"] = self.outputTokens!
            }
            if self.totalTokens != nil {
                map["TotalTokens"] = self.totalTokens!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["InputTokens"] as? Int32 {
                self.inputTokens = value
            }
            if let value = dict["OutputTokens"] as? Int32 {
                self.outputTokens = value
            }
            if let value = dict["TotalTokens"] as? Int32 {
                self.totalTokens = value
            }
        }
    }
    public var code: String?

    public var message: String?

    public var requestId: String?

    public var responseMarkdown: String?

    public var round: Int32?

    public var status: String?

    public var success: Bool?

    public var usage: RunLegalAdviceConsultationResponseBody.Usage?

    public var contents: String?

    public var extra: String?

    public var httpStatusCode: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.usage?.validate()
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
        if self.responseMarkdown != nil {
            map["ResponseMarkdown"] = self.responseMarkdown!
        }
        if self.round != nil {
            map["Round"] = self.round!
        }
        if self.status != nil {
            map["Status"] = self.status!
        }
        if self.success != nil {
            map["Success"] = self.success!
        }
        if self.usage != nil {
            map["Usage"] = self.usage?.toMap()
        }
        if self.contents != nil {
            map["contents"] = self.contents!
        }
        if self.extra != nil {
            map["extra"] = self.extra!
        }
        if self.httpStatusCode != nil {
            map["httpStatusCode"] = self.httpStatusCode!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["ResponseMarkdown"] as? String {
            self.responseMarkdown = value
        }
        if let value = dict["Round"] as? Int32 {
            self.round = value
        }
        if let value = dict["Status"] as? String {
            self.status = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
        if let value = dict["Usage"] as? [String: Any?] {
            var model = RunLegalAdviceConsultationResponseBody.Usage()
            model.fromMap(value)
            self.usage = model
        }
        if let value = dict["contents"] as? String {
            self.contents = value
        }
        if let value = dict["extra"] as? String {
            self.extra = value
        }
        if let value = dict["httpStatusCode"] as? String {
            self.httpStatusCode = value
        }
    }
}

public class RunLegalAdviceConsultationResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: RunLegalAdviceConsultationResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = RunLegalAdviceConsultationResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class RunSearchCaseFullTextRequest : Tea.TeaModel {
    public class FilterCondition : Tea.TeaModel {
        public var caseNo: String?

        public var caseTitle: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.caseNo != nil {
                map["caseNo"] = self.caseNo!
            }
            if self.caseTitle != nil {
                map["caseTitle"] = self.caseTitle!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["caseNo"] as? String {
                self.caseNo = value
            }
            if let value = dict["caseTitle"] as? String {
                self.caseTitle = value
            }
        }
    }
    public class PageParam : Tea.TeaModel {
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
                map["pageNumber"] = self.pageNumber!
            }
            if self.pageSize != nil {
                map["pageSize"] = self.pageSize!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["pageNumber"] as? Int32 {
                self.pageNumber = value
            }
            if let value = dict["pageSize"] as? Int32 {
                self.pageSize = value
            }
        }
    }
    public class Thread : Tea.TeaModel {
        public class Messages : Tea.TeaModel {
            public var content: String?

            public var role: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.content != nil {
                    map["content"] = self.content!
                }
                if self.role != nil {
                    map["role"] = self.role!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["content"] as? String {
                    self.content = value
                }
                if let value = dict["role"] as? String {
                    self.role = value
                }
            }
        }
        public var messages: [RunSearchCaseFullTextRequest.Thread.Messages]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.messages != nil {
                var tmp : [Any] = []
                for k in self.messages! {
                    tmp.append(k.toMap())
                }
                map["messages"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["messages"] as? [Any?] {
                var tmp : [RunSearchCaseFullTextRequest.Thread.Messages] = []
                for v in value {
                    if v != nil {
                        var model = RunSearchCaseFullTextRequest.Thread.Messages()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.messages = tmp
            }
        }
    }
    public var appId: String?

    public var filterCondition: RunSearchCaseFullTextRequest.FilterCondition?

    public var pageParam: RunSearchCaseFullTextRequest.PageParam?

    public var query: String?

    public var queryKeywords: [String]?

    public var referLevel: String?

    public var sortKeyAndDirection: [String: String]?

    public var thread: RunSearchCaseFullTextRequest.Thread?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.filterCondition?.validate()
        try self.pageParam?.validate()
        try self.thread?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.appId != nil {
            map["appId"] = self.appId!
        }
        if self.filterCondition != nil {
            map["filterCondition"] = self.filterCondition?.toMap()
        }
        if self.pageParam != nil {
            map["pageParam"] = self.pageParam?.toMap()
        }
        if self.query != nil {
            map["query"] = self.query!
        }
        if self.queryKeywords != nil {
            map["queryKeywords"] = self.queryKeywords!
        }
        if self.referLevel != nil {
            map["referLevel"] = self.referLevel!
        }
        if self.sortKeyAndDirection != nil {
            map["sortKeyAndDirection"] = self.sortKeyAndDirection!
        }
        if self.thread != nil {
            map["thread"] = self.thread?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["appId"] as? String {
            self.appId = value
        }
        if let value = dict["filterCondition"] as? [String: Any?] {
            var model = RunSearchCaseFullTextRequest.FilterCondition()
            model.fromMap(value)
            self.filterCondition = model
        }
        if let value = dict["pageParam"] as? [String: Any?] {
            var model = RunSearchCaseFullTextRequest.PageParam()
            model.fromMap(value)
            self.pageParam = model
        }
        if let value = dict["query"] as? String {
            self.query = value
        }
        if let value = dict["queryKeywords"] as? [String] {
            self.queryKeywords = value
        }
        if let value = dict["referLevel"] as? String {
            self.referLevel = value
        }
        if let value = dict["sortKeyAndDirection"] as? [String: String] {
            self.sortKeyAndDirection = value
        }
        if let value = dict["thread"] as? [String: Any?] {
            var model = RunSearchCaseFullTextRequest.Thread()
            model.fromMap(value)
            self.thread = model
        }
    }
}

public class RunSearchCaseFullTextShrinkRequest : Tea.TeaModel {
    public var appId: String?

    public var filterConditionShrink: String?

    public var pageParamShrink: String?

    public var query: String?

    public var queryKeywordsShrink: String?

    public var referLevel: String?

    public var sortKeyAndDirectionShrink: String?

    public var threadShrink: String?

    public override init() {
        super.init()
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
            map["appId"] = self.appId!
        }
        if self.filterConditionShrink != nil {
            map["filterCondition"] = self.filterConditionShrink!
        }
        if self.pageParamShrink != nil {
            map["pageParam"] = self.pageParamShrink!
        }
        if self.query != nil {
            map["query"] = self.query!
        }
        if self.queryKeywordsShrink != nil {
            map["queryKeywords"] = self.queryKeywordsShrink!
        }
        if self.referLevel != nil {
            map["referLevel"] = self.referLevel!
        }
        if self.sortKeyAndDirectionShrink != nil {
            map["sortKeyAndDirection"] = self.sortKeyAndDirectionShrink!
        }
        if self.threadShrink != nil {
            map["thread"] = self.threadShrink!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["appId"] as? String {
            self.appId = value
        }
        if let value = dict["filterCondition"] as? String {
            self.filterConditionShrink = value
        }
        if let value = dict["pageParam"] as? String {
            self.pageParamShrink = value
        }
        if let value = dict["query"] as? String {
            self.query = value
        }
        if let value = dict["queryKeywords"] as? String {
            self.queryKeywordsShrink = value
        }
        if let value = dict["referLevel"] as? String {
            self.referLevel = value
        }
        if let value = dict["sortKeyAndDirection"] as? String {
            self.sortKeyAndDirectionShrink = value
        }
        if let value = dict["thread"] as? String {
            self.threadShrink = value
        }
    }
}

public class RunSearchCaseFullTextResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class CaseResult : Tea.TeaModel {
            public class CaseDomain : Tea.TeaModel {
                public class TrialCourt : Tea.TeaModel {
                    public var city: String?

                    public var commonLevel: String?

                    public var country: String?

                    public var county: String?

                    public var district: String?

                    public var name: String?

                    public var province: String?

                    public var specialLevel: String?

                    public override init() {
                        super.init()
                    }

                    public init(_ dict: [String: Any]) {
                        super.init()
                        self.fromMap(dict)
                    }

                    public override func validate() throws -> Void {
                    }

                    public override func toMap() -> [String : Any] {
                        var map = super.toMap()
                        if self.city != nil {
                            map["city"] = self.city!
                        }
                        if self.commonLevel != nil {
                            map["commonLevel"] = self.commonLevel!
                        }
                        if self.country != nil {
                            map["country"] = self.country!
                        }
                        if self.county != nil {
                            map["county"] = self.county!
                        }
                        if self.district != nil {
                            map["district"] = self.district!
                        }
                        if self.name != nil {
                            map["name"] = self.name!
                        }
                        if self.province != nil {
                            map["province"] = self.province!
                        }
                        if self.specialLevel != nil {
                            map["specialLevel"] = self.specialLevel!
                        }
                        return map
                    }

                    public override func fromMap(_ dict: [String: Any?]?) -> Void {
                        guard let dict else { return }
                        if let value = dict["city"] as? String {
                            self.city = value
                        }
                        if let value = dict["commonLevel"] as? String {
                            self.commonLevel = value
                        }
                        if let value = dict["country"] as? String {
                            self.country = value
                        }
                        if let value = dict["county"] as? String {
                            self.county = value
                        }
                        if let value = dict["district"] as? String {
                            self.district = value
                        }
                        if let value = dict["name"] as? String {
                            self.name = value
                        }
                        if let value = dict["province"] as? String {
                            self.province = value
                        }
                        if let value = dict["specialLevel"] as? String {
                            self.specialLevel = value
                        }
                    }
                }
                public var abstractObj: String?

                public var appliedLaws: String?

                public var basicCase: String?

                public var caseBasic: String?

                public var caseCause: String?

                public var caseFeature: String?

                public var caseId: String?

                public var caseNo: String?

                public var caseSummary: String?

                public var caseTitle: String?

                public var caseType: String?

                public var closeCaseCause: String?

                public var courtFindOut: String?

                public var courtThink: String?

                public var dataFrom: String?

                public var disputeFocus: String?

                public var disputeFocusTag: [String]?

                public var disputedpoints: String?

                public var documentType: String?

                public var judgReason: String?

                public var keyfacts: String?

                public var legalBasis: String?

                public var litigants: String?

                public var litigationParticipant: String?

                public var openCaseCause: String?

                public var preTrialProcess: String?

                public var referLevel: String?

                public var refereeGist: String?

                public var sourceContent: String?

                public var trialCourt: RunSearchCaseFullTextResponseBody.Data.CaseResult.CaseDomain.TrialCourt?

                public var trialDate: String?

                public var trialLevel: String?

                public var trialProcess: String?

                public var trialProgram: String?

                public var verdict: String?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                    try self.trialCourt?.validate()
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.abstractObj != nil {
                        map["abstractObj"] = self.abstractObj!
                    }
                    if self.appliedLaws != nil {
                        map["appliedLaws"] = self.appliedLaws!
                    }
                    if self.basicCase != nil {
                        map["basicCase"] = self.basicCase!
                    }
                    if self.caseBasic != nil {
                        map["caseBasic"] = self.caseBasic!
                    }
                    if self.caseCause != nil {
                        map["caseCause"] = self.caseCause!
                    }
                    if self.caseFeature != nil {
                        map["caseFeature"] = self.caseFeature!
                    }
                    if self.caseId != nil {
                        map["caseId"] = self.caseId!
                    }
                    if self.caseNo != nil {
                        map["caseNo"] = self.caseNo!
                    }
                    if self.caseSummary != nil {
                        map["caseSummary"] = self.caseSummary!
                    }
                    if self.caseTitle != nil {
                        map["caseTitle"] = self.caseTitle!
                    }
                    if self.caseType != nil {
                        map["caseType"] = self.caseType!
                    }
                    if self.closeCaseCause != nil {
                        map["closeCaseCause"] = self.closeCaseCause!
                    }
                    if self.courtFindOut != nil {
                        map["courtFindOut"] = self.courtFindOut!
                    }
                    if self.courtThink != nil {
                        map["courtThink"] = self.courtThink!
                    }
                    if self.dataFrom != nil {
                        map["dataFrom"] = self.dataFrom!
                    }
                    if self.disputeFocus != nil {
                        map["disputeFocus"] = self.disputeFocus!
                    }
                    if self.disputeFocusTag != nil {
                        map["disputeFocusTag"] = self.disputeFocusTag!
                    }
                    if self.disputedpoints != nil {
                        map["disputedpoints"] = self.disputedpoints!
                    }
                    if self.documentType != nil {
                        map["documentType"] = self.documentType!
                    }
                    if self.judgReason != nil {
                        map["judgReason"] = self.judgReason!
                    }
                    if self.keyfacts != nil {
                        map["keyfacts"] = self.keyfacts!
                    }
                    if self.legalBasis != nil {
                        map["legalBasis"] = self.legalBasis!
                    }
                    if self.litigants != nil {
                        map["litigants"] = self.litigants!
                    }
                    if self.litigationParticipant != nil {
                        map["litigationParticipant"] = self.litigationParticipant!
                    }
                    if self.openCaseCause != nil {
                        map["openCaseCause"] = self.openCaseCause!
                    }
                    if self.preTrialProcess != nil {
                        map["preTrialProcess"] = self.preTrialProcess!
                    }
                    if self.referLevel != nil {
                        map["referLevel"] = self.referLevel!
                    }
                    if self.refereeGist != nil {
                        map["refereeGist"] = self.refereeGist!
                    }
                    if self.sourceContent != nil {
                        map["sourceContent"] = self.sourceContent!
                    }
                    if self.trialCourt != nil {
                        map["trialCourt"] = self.trialCourt?.toMap()
                    }
                    if self.trialDate != nil {
                        map["trialDate"] = self.trialDate!
                    }
                    if self.trialLevel != nil {
                        map["trialLevel"] = self.trialLevel!
                    }
                    if self.trialProcess != nil {
                        map["trialProcess"] = self.trialProcess!
                    }
                    if self.trialProgram != nil {
                        map["trialProgram"] = self.trialProgram!
                    }
                    if self.verdict != nil {
                        map["verdict"] = self.verdict!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["abstractObj"] as? String {
                        self.abstractObj = value
                    }
                    if let value = dict["appliedLaws"] as? String {
                        self.appliedLaws = value
                    }
                    if let value = dict["basicCase"] as? String {
                        self.basicCase = value
                    }
                    if let value = dict["caseBasic"] as? String {
                        self.caseBasic = value
                    }
                    if let value = dict["caseCause"] as? String {
                        self.caseCause = value
                    }
                    if let value = dict["caseFeature"] as? String {
                        self.caseFeature = value
                    }
                    if let value = dict["caseId"] as? String {
                        self.caseId = value
                    }
                    if let value = dict["caseNo"] as? String {
                        self.caseNo = value
                    }
                    if let value = dict["caseSummary"] as? String {
                        self.caseSummary = value
                    }
                    if let value = dict["caseTitle"] as? String {
                        self.caseTitle = value
                    }
                    if let value = dict["caseType"] as? String {
                        self.caseType = value
                    }
                    if let value = dict["closeCaseCause"] as? String {
                        self.closeCaseCause = value
                    }
                    if let value = dict["courtFindOut"] as? String {
                        self.courtFindOut = value
                    }
                    if let value = dict["courtThink"] as? String {
                        self.courtThink = value
                    }
                    if let value = dict["dataFrom"] as? String {
                        self.dataFrom = value
                    }
                    if let value = dict["disputeFocus"] as? String {
                        self.disputeFocus = value
                    }
                    if let value = dict["disputeFocusTag"] as? [String] {
                        self.disputeFocusTag = value
                    }
                    if let value = dict["disputedpoints"] as? String {
                        self.disputedpoints = value
                    }
                    if let value = dict["documentType"] as? String {
                        self.documentType = value
                    }
                    if let value = dict["judgReason"] as? String {
                        self.judgReason = value
                    }
                    if let value = dict["keyfacts"] as? String {
                        self.keyfacts = value
                    }
                    if let value = dict["legalBasis"] as? String {
                        self.legalBasis = value
                    }
                    if let value = dict["litigants"] as? String {
                        self.litigants = value
                    }
                    if let value = dict["litigationParticipant"] as? String {
                        self.litigationParticipant = value
                    }
                    if let value = dict["openCaseCause"] as? String {
                        self.openCaseCause = value
                    }
                    if let value = dict["preTrialProcess"] as? String {
                        self.preTrialProcess = value
                    }
                    if let value = dict["referLevel"] as? String {
                        self.referLevel = value
                    }
                    if let value = dict["refereeGist"] as? String {
                        self.refereeGist = value
                    }
                    if let value = dict["sourceContent"] as? String {
                        self.sourceContent = value
                    }
                    if let value = dict["trialCourt"] as? [String: Any?] {
                        var model = RunSearchCaseFullTextResponseBody.Data.CaseResult.CaseDomain.TrialCourt()
                        model.fromMap(value)
                        self.trialCourt = model
                    }
                    if let value = dict["trialDate"] as? String {
                        self.trialDate = value
                    }
                    if let value = dict["trialLevel"] as? String {
                        self.trialLevel = value
                    }
                    if let value = dict["trialProcess"] as? String {
                        self.trialProcess = value
                    }
                    if let value = dict["trialProgram"] as? String {
                        self.trialProgram = value
                    }
                    if let value = dict["verdict"] as? String {
                        self.verdict = value
                    }
                }
            }
            public var caseDomain: RunSearchCaseFullTextResponseBody.Data.CaseResult.CaseDomain?

            public var mode: String?

            public var similarity: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
                try self.caseDomain?.validate()
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.caseDomain != nil {
                    map["caseDomain"] = self.caseDomain?.toMap()
                }
                if self.mode != nil {
                    map["mode"] = self.mode!
                }
                if self.similarity != nil {
                    map["similarity"] = self.similarity!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["caseDomain"] as? [String: Any?] {
                    var model = RunSearchCaseFullTextResponseBody.Data.CaseResult.CaseDomain()
                    model.fromMap(value)
                    self.caseDomain = model
                }
                if let value = dict["mode"] as? String {
                    self.mode = value
                }
                if let value = dict["similarity"] as? String {
                    self.similarity = value
                }
            }
        }
        public var caseLevel: String?

        public var caseResult: [RunSearchCaseFullTextResponseBody.Data.CaseResult]?

        public var currentPage: Int32?

        public var pageSize: Int32?

        public var query: String?

        public var queryKeywords: [String]?

        public var totalCount: Int64?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.caseLevel != nil {
                map["caseLevel"] = self.caseLevel!
            }
            if self.caseResult != nil {
                var tmp : [Any] = []
                for k in self.caseResult! {
                    tmp.append(k.toMap())
                }
                map["caseResult"] = tmp
            }
            if self.currentPage != nil {
                map["currentPage"] = self.currentPage!
            }
            if self.pageSize != nil {
                map["pageSize"] = self.pageSize!
            }
            if self.query != nil {
                map["query"] = self.query!
            }
            if self.queryKeywords != nil {
                map["queryKeywords"] = self.queryKeywords!
            }
            if self.totalCount != nil {
                map["totalCount"] = self.totalCount!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["caseLevel"] as? String {
                self.caseLevel = value
            }
            if let value = dict["caseResult"] as? [Any?] {
                var tmp : [RunSearchCaseFullTextResponseBody.Data.CaseResult] = []
                for v in value {
                    if v != nil {
                        var model = RunSearchCaseFullTextResponseBody.Data.CaseResult()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.caseResult = tmp
            }
            if let value = dict["currentPage"] as? Int32 {
                self.currentPage = value
            }
            if let value = dict["pageSize"] as? Int32 {
                self.pageSize = value
            }
            if let value = dict["query"] as? String {
                self.query = value
            }
            if let value = dict["queryKeywords"] as? [String] {
                self.queryKeywords = value
            }
            if let value = dict["totalCount"] as? Int64 {
                self.totalCount = value
            }
        }
    }
    public var code: String?

    public var data: RunSearchCaseFullTextResponseBody.Data?

    public var httpStatusCode: Int64?

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
            map["code"] = self.code!
        }
        if self.data != nil {
            map["data"] = self.data?.toMap()
        }
        if self.httpStatusCode != nil {
            map["httpStatusCode"] = self.httpStatusCode!
        }
        if self.message != nil {
            map["message"] = self.message!
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        if self.success != nil {
            map["success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["code"] as? String {
            self.code = value
        }
        if let value = dict["data"] as? [String: Any?] {
            var model = RunSearchCaseFullTextResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["httpStatusCode"] as? Int64 {
            self.httpStatusCode = value
        }
        if let value = dict["message"] as? String {
            self.message = value
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
        if let value = dict["success"] as? Bool {
            self.success = value
        }
    }
}

public class RunSearchCaseFullTextResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: RunSearchCaseFullTextResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = RunSearchCaseFullTextResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class RunSearchLawQueryRequest : Tea.TeaModel {
    public class FilterCondition : Tea.TeaModel {
        public var lawName: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.lawName != nil {
                map["lawName"] = self.lawName!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["lawName"] as? String {
                self.lawName = value
            }
        }
    }
    public class PageParam : Tea.TeaModel {
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
                map["pageNumber"] = self.pageNumber!
            }
            if self.pageSize != nil {
                map["pageSize"] = self.pageSize!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["pageNumber"] as? Int32 {
                self.pageNumber = value
            }
            if let value = dict["pageSize"] as? Int32 {
                self.pageSize = value
            }
        }
    }
    public class Thread : Tea.TeaModel {
        public class Messages : Tea.TeaModel {
            public var content: String?

            public var role: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.content != nil {
                    map["content"] = self.content!
                }
                if self.role != nil {
                    map["role"] = self.role!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["content"] as? String {
                    self.content = value
                }
                if let value = dict["role"] as? String {
                    self.role = value
                }
            }
        }
        public var messages: [RunSearchLawQueryRequest.Thread.Messages]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.messages != nil {
                var tmp : [Any] = []
                for k in self.messages! {
                    tmp.append(k.toMap())
                }
                map["messages"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["messages"] as? [Any?] {
                var tmp : [RunSearchLawQueryRequest.Thread.Messages] = []
                for v in value {
                    if v != nil {
                        var model = RunSearchLawQueryRequest.Thread.Messages()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.messages = tmp
            }
        }
    }
    public var appId: String?

    public var filterCondition: RunSearchLawQueryRequest.FilterCondition?

    public var pageParam: RunSearchLawQueryRequest.PageParam?

    public var query: String?

    public var queryKeywords: [String]?

    public var thread: RunSearchLawQueryRequest.Thread?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.filterCondition?.validate()
        try self.pageParam?.validate()
        try self.thread?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.appId != nil {
            map["appId"] = self.appId!
        }
        if self.filterCondition != nil {
            map["filterCondition"] = self.filterCondition?.toMap()
        }
        if self.pageParam != nil {
            map["pageParam"] = self.pageParam?.toMap()
        }
        if self.query != nil {
            map["query"] = self.query!
        }
        if self.queryKeywords != nil {
            map["queryKeywords"] = self.queryKeywords!
        }
        if self.thread != nil {
            map["thread"] = self.thread?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["appId"] as? String {
            self.appId = value
        }
        if let value = dict["filterCondition"] as? [String: Any?] {
            var model = RunSearchLawQueryRequest.FilterCondition()
            model.fromMap(value)
            self.filterCondition = model
        }
        if let value = dict["pageParam"] as? [String: Any?] {
            var model = RunSearchLawQueryRequest.PageParam()
            model.fromMap(value)
            self.pageParam = model
        }
        if let value = dict["query"] as? String {
            self.query = value
        }
        if let value = dict["queryKeywords"] as? [String] {
            self.queryKeywords = value
        }
        if let value = dict["thread"] as? [String: Any?] {
            var model = RunSearchLawQueryRequest.Thread()
            model.fromMap(value)
            self.thread = model
        }
    }
}

public class RunSearchLawQueryShrinkRequest : Tea.TeaModel {
    public var appId: String?

    public var filterConditionShrink: String?

    public var pageParamShrink: String?

    public var query: String?

    public var queryKeywordsShrink: String?

    public var threadShrink: String?

    public override init() {
        super.init()
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
            map["appId"] = self.appId!
        }
        if self.filterConditionShrink != nil {
            map["filterCondition"] = self.filterConditionShrink!
        }
        if self.pageParamShrink != nil {
            map["pageParam"] = self.pageParamShrink!
        }
        if self.query != nil {
            map["query"] = self.query!
        }
        if self.queryKeywordsShrink != nil {
            map["queryKeywords"] = self.queryKeywordsShrink!
        }
        if self.threadShrink != nil {
            map["thread"] = self.threadShrink!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["appId"] as? String {
            self.appId = value
        }
        if let value = dict["filterCondition"] as? String {
            self.filterConditionShrink = value
        }
        if let value = dict["pageParam"] as? String {
            self.pageParamShrink = value
        }
        if let value = dict["query"] as? String {
            self.query = value
        }
        if let value = dict["queryKeywords"] as? String {
            self.queryKeywordsShrink = value
        }
        if let value = dict["thread"] as? String {
            self.threadShrink = value
        }
    }
}

public class RunSearchLawQueryResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class LawResult : Tea.TeaModel {
            public class LawDomain : Tea.TeaModel {
                public var abolitionBasis: String?

                public var implementYearMonthDate: String?

                public var invalidBasis: String?

                public var issuingNo: String?

                public var issuingOrgan: String?

                public var lawId: String?

                public var lawItemId: String?

                public var lawName: String?

                public var lawOrder: String?

                public var lawSourceContent: String?

                public var lawTitle: String?

                public var modifyBasis: String?

                public var potencyLevel: String?

                public var releaseYearMonthDate: String?

                public var thematicClassify: String?

                public var timeliness: String?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.abolitionBasis != nil {
                        map["abolitionBasis"] = self.abolitionBasis!
                    }
                    if self.implementYearMonthDate != nil {
                        map["implementYearMonthDate"] = self.implementYearMonthDate!
                    }
                    if self.invalidBasis != nil {
                        map["invalidBasis"] = self.invalidBasis!
                    }
                    if self.issuingNo != nil {
                        map["issuingNo"] = self.issuingNo!
                    }
                    if self.issuingOrgan != nil {
                        map["issuingOrgan"] = self.issuingOrgan!
                    }
                    if self.lawId != nil {
                        map["lawId"] = self.lawId!
                    }
                    if self.lawItemId != nil {
                        map["lawItemId"] = self.lawItemId!
                    }
                    if self.lawName != nil {
                        map["lawName"] = self.lawName!
                    }
                    if self.lawOrder != nil {
                        map["lawOrder"] = self.lawOrder!
                    }
                    if self.lawSourceContent != nil {
                        map["lawSourceContent"] = self.lawSourceContent!
                    }
                    if self.lawTitle != nil {
                        map["lawTitle"] = self.lawTitle!
                    }
                    if self.modifyBasis != nil {
                        map["modifyBasis"] = self.modifyBasis!
                    }
                    if self.potencyLevel != nil {
                        map["potencyLevel"] = self.potencyLevel!
                    }
                    if self.releaseYearMonthDate != nil {
                        map["releaseYearMonthDate"] = self.releaseYearMonthDate!
                    }
                    if self.thematicClassify != nil {
                        map["thematicClassify"] = self.thematicClassify!
                    }
                    if self.timeliness != nil {
                        map["timeliness"] = self.timeliness!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["abolitionBasis"] as? String {
                        self.abolitionBasis = value
                    }
                    if let value = dict["implementYearMonthDate"] as? String {
                        self.implementYearMonthDate = value
                    }
                    if let value = dict["invalidBasis"] as? String {
                        self.invalidBasis = value
                    }
                    if let value = dict["issuingNo"] as? String {
                        self.issuingNo = value
                    }
                    if let value = dict["issuingOrgan"] as? String {
                        self.issuingOrgan = value
                    }
                    if let value = dict["lawId"] as? String {
                        self.lawId = value
                    }
                    if let value = dict["lawItemId"] as? String {
                        self.lawItemId = value
                    }
                    if let value = dict["lawName"] as? String {
                        self.lawName = value
                    }
                    if let value = dict["lawOrder"] as? String {
                        self.lawOrder = value
                    }
                    if let value = dict["lawSourceContent"] as? String {
                        self.lawSourceContent = value
                    }
                    if let value = dict["lawTitle"] as? String {
                        self.lawTitle = value
                    }
                    if let value = dict["modifyBasis"] as? String {
                        self.modifyBasis = value
                    }
                    if let value = dict["potencyLevel"] as? String {
                        self.potencyLevel = value
                    }
                    if let value = dict["releaseYearMonthDate"] as? String {
                        self.releaseYearMonthDate = value
                    }
                    if let value = dict["thematicClassify"] as? String {
                        self.thematicClassify = value
                    }
                    if let value = dict["timeliness"] as? String {
                        self.timeliness = value
                    }
                }
            }
            public var lawDomain: RunSearchLawQueryResponseBody.Data.LawResult.LawDomain?

            public var similarity: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
                try self.lawDomain?.validate()
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.lawDomain != nil {
                    map["lawDomain"] = self.lawDomain?.toMap()
                }
                if self.similarity != nil {
                    map["similarity"] = self.similarity!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["lawDomain"] as? [String: Any?] {
                    var model = RunSearchLawQueryResponseBody.Data.LawResult.LawDomain()
                    model.fromMap(value)
                    self.lawDomain = model
                }
                if let value = dict["similarity"] as? String {
                    self.similarity = value
                }
            }
        }
        public class SortKeyAndDirection : Tea.TeaModel {
            public var releaseYearMonthDate: String?

            public var similarity: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.releaseYearMonthDate != nil {
                    map["releaseYearMonthDate"] = self.releaseYearMonthDate!
                }
                if self.similarity != nil {
                    map["similarity"] = self.similarity!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["releaseYearMonthDate"] as? String {
                    self.releaseYearMonthDate = value
                }
                if let value = dict["similarity"] as? String {
                    self.similarity = value
                }
            }
        }
        public var currentPage: Int32?

        public var lawResult: [RunSearchLawQueryResponseBody.Data.LawResult]?

        public var pageSize: Int32?

        public var query: String?

        public var queryKeywords: [String]?

        public var sortKeyAndDirection: RunSearchLawQueryResponseBody.Data.SortKeyAndDirection?

        public var totalCount: Int64?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.sortKeyAndDirection?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.currentPage != nil {
                map["currentPage"] = self.currentPage!
            }
            if self.lawResult != nil {
                var tmp : [Any] = []
                for k in self.lawResult! {
                    tmp.append(k.toMap())
                }
                map["lawResult"] = tmp
            }
            if self.pageSize != nil {
                map["pageSize"] = self.pageSize!
            }
            if self.query != nil {
                map["query"] = self.query!
            }
            if self.queryKeywords != nil {
                map["queryKeywords"] = self.queryKeywords!
            }
            if self.sortKeyAndDirection != nil {
                map["sortKeyAndDirection"] = self.sortKeyAndDirection?.toMap()
            }
            if self.totalCount != nil {
                map["totalCount"] = self.totalCount!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["currentPage"] as? Int32 {
                self.currentPage = value
            }
            if let value = dict["lawResult"] as? [Any?] {
                var tmp : [RunSearchLawQueryResponseBody.Data.LawResult] = []
                for v in value {
                    if v != nil {
                        var model = RunSearchLawQueryResponseBody.Data.LawResult()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.lawResult = tmp
            }
            if let value = dict["pageSize"] as? Int32 {
                self.pageSize = value
            }
            if let value = dict["query"] as? String {
                self.query = value
            }
            if let value = dict["queryKeywords"] as? [String] {
                self.queryKeywords = value
            }
            if let value = dict["sortKeyAndDirection"] as? [String: Any?] {
                var model = RunSearchLawQueryResponseBody.Data.SortKeyAndDirection()
                model.fromMap(value)
                self.sortKeyAndDirection = model
            }
            if let value = dict["totalCount"] as? Int64 {
                self.totalCount = value
            }
        }
    }
    public var code: String?

    public var data: RunSearchLawQueryResponseBody.Data?

    public var httpStatusCode: Int64?

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
            map["code"] = self.code!
        }
        if self.data != nil {
            map["data"] = self.data?.toMap()
        }
        if self.httpStatusCode != nil {
            map["httpStatusCode"] = self.httpStatusCode!
        }
        if self.message != nil {
            map["message"] = self.message!
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        if self.success != nil {
            map["success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["code"] as? String {
            self.code = value
        }
        if let value = dict["data"] as? [String: Any?] {
            var model = RunSearchLawQueryResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["httpStatusCode"] as? Int64 {
            self.httpStatusCode = value
        }
        if let value = dict["message"] as? String {
            self.message = value
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
        if let value = dict["success"] as? Bool {
            self.success = value
        }
    }
}

public class RunSearchLawQueryResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: RunSearchLawQueryResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = RunSearchLawQueryResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}
