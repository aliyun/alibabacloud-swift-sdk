import Foundation
import Tea
import TeaUtils
import AlibabaCloudOssSdk
import AlibabacloudOpenPlatform20191219
import AlibabaCloudOSSUtil
import TeaFileForm
import AlibabacloudOpenApi
import AlibabaCloudOpenApiUtil
import AlibabacloudEndpointUtil

public class CreateTextFileRequest : Tea.TeaModel {
    public var clientToken: String?

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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ClientToken") {
            self.clientToken = dict["ClientToken"] as! String
        }
        if dict.keys.contains("CreateTime") {
            self.createTime = dict["CreateTime"] as! String
        }
        if dict.keys.contains("TextFileName") {
            self.textFileName = dict["TextFileName"] as! String
        }
        if dict.keys.contains("TextFileUrl") {
            self.textFileUrl = dict["TextFileUrl"] as! String
        }
    }
}

public class CreateTextFileAdvanceRequest : Tea.TeaModel {
    public var clientToken: String?

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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ClientToken") {
            self.clientToken = dict["ClientToken"] as! String
        }
        if dict.keys.contains("CreateTime") {
            self.createTime = dict["CreateTime"] as! String
        }
        if dict.keys.contains("TextFileName") {
            self.textFileName = dict["TextFileName"] as! String
        }
        if dict.keys.contains("TextFileUrl") {
            self.textFileUrlObject = dict["TextFileUrl"] as! InputStream
        }
    }
}

public class CreateTextFileResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("TextFileId") {
                self.textFileId = dict["TextFileId"] as! String
            }
            if dict.keys.contains("TextFileName") {
                self.textFileName = dict["TextFileName"] as! String
            }
            if dict.keys.contains("TextFileUrl") {
                self.textFileUrl = dict["TextFileUrl"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Data") {
            var model = CreateTextFileResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("HttpStatusCode") {
            self.httpStatusCode = dict["HttpStatusCode"] as! Int64
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = CreateTextFileResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

                    public override func fromMap(_ dict: [String: Any]) -> Void {
                        if dict.keys.contains("riskLevel") {
                            self.riskLevel = dict["riskLevel"] as! String
                        }
                        if dict.keys.contains("ruleDesc") {
                            self.ruleDesc = dict["ruleDesc"] as! String
                        }
                        if dict.keys.contains("ruleTitle") {
                            self.ruleTitle = dict["ruleTitle"] as! String
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

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("customRules") {
                        var tmp : [RunContractResultGenerationRequest.Assistant.MetaData.CustomRuleConfig.CustomRules] = []
                        for v in dict["customRules"] as! [Any] {
                            var model = RunContractResultGenerationRequest.Assistant.MetaData.CustomRuleConfig.CustomRules()
                            if v != nil {
                                model.fromMap(v as! [String: Any])
                            }
                            tmp.append(model)
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

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("riskLevel") {
                        self.riskLevel = dict["riskLevel"] as! String
                    }
                    if dict.keys.contains("ruleSequence") {
                        self.ruleSequence = dict["ruleSequence"] as! String
                    }
                    if dict.keys.contains("ruleTag") {
                        self.ruleTag = dict["ruleTag"] as! String
                    }
                    if dict.keys.contains("ruleTitle") {
                        self.ruleTitle = dict["ruleTitle"] as! String
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

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("customRuleConfig") {
                    var model = RunContractResultGenerationRequest.Assistant.MetaData.CustomRuleConfig()
                    model.fromMap(dict["customRuleConfig"] as! [String: Any])
                    self.customRuleConfig = model
                }
                if dict.keys.contains("fileId") {
                    self.fileId = dict["fileId"] as! String
                }
                if dict.keys.contains("position") {
                    self.position = dict["position"] as! String
                }
                if dict.keys.contains("ruleTaskId") {
                    self.ruleTaskId = dict["ruleTaskId"] as! String
                }
                if dict.keys.contains("rules") {
                    var tmp : [RunContractResultGenerationRequest.Assistant.MetaData.Rules] = []
                    for v in dict["rules"] as! [Any] {
                        var model = RunContractResultGenerationRequest.Assistant.MetaData.Rules()
                        if v != nil {
                            model.fromMap(v as! [String: Any])
                        }
                        tmp.append(model)
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("metaData") {
                var model = RunContractResultGenerationRequest.Assistant.MetaData()
                model.fromMap(dict["metaData"] as! [String: Any])
                self.metaData = model
            }
            if dict.keys.contains("type") {
                self.type = dict["type"] as! String
            }
            if dict.keys.contains("version") {
                self.version = dict["version"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("appId") {
            self.appId = dict["appId"] as! String
        }
        if dict.keys.contains("assistant") {
            var model = RunContractResultGenerationRequest.Assistant()
            model.fromMap(dict["assistant"] as! [String: Any])
            self.assistant = model
        }
        if dict.keys.contains("stream") {
            self.stream = dict["stream"] as! Bool
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("appId") {
            self.appId = dict["appId"] as! String
        }
        if dict.keys.contains("assistant") {
            self.assistantShrink = dict["assistant"] as! String
        }
        if dict.keys.contains("stream") {
            self.stream = dict["stream"] as! Bool
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

                public override init() {
                    super.init()
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
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("originalContent") {
                        self.originalContent = dict["originalContent"] as! String
                    }
                    if dict.keys.contains("resultContent") {
                        self.resultContent = dict["resultContent"] as! String
                    }
                    if dict.keys.contains("resultType") {
                        self.resultType = dict["resultType"] as! String
                    }
                    if dict.keys.contains("riskBrief") {
                        self.riskBrief = dict["riskBrief"] as! String
                    }
                    if dict.keys.contains("riskClause") {
                        self.riskClause = dict["riskClause"] as! String
                    }
                    if dict.keys.contains("riskExplain") {
                        self.riskExplain = dict["riskExplain"] as! String
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

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("examineBrief") {
                    self.examineBrief = dict["examineBrief"] as! String
                }
                if dict.keys.contains("examineResult") {
                    self.examineResult = dict["examineResult"] as! String
                }
                if dict.keys.contains("riskLevel") {
                    self.riskLevel = dict["riskLevel"] as! String
                }
                if dict.keys.contains("ruleSequence") {
                    self.ruleSequence = dict["ruleSequence"] as! String
                }
                if dict.keys.contains("ruleTag") {
                    self.ruleTag = dict["ruleTag"] as! String
                }
                if dict.keys.contains("ruleTitle") {
                    self.ruleTitle = dict["ruleTitle"] as! String
                }
                if dict.keys.contains("subRisks") {
                    var tmp : [RunContractResultGenerationResponseBody.Output.Result.SubRisks] = []
                    for v in dict["subRisks"] as! [Any] {
                        var model = RunContractResultGenerationResponseBody.Output.Result.SubRisks()
                        if v != nil {
                            model.fromMap(v as! [String: Any])
                        }
                        tmp.append(model)
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("result") {
                var model = RunContractResultGenerationResponseBody.Output.Result()
                model.fromMap(dict["result"] as! [String: Any])
                self.result = model
            }
            if dict.keys.contains("resultTaskId") {
                self.resultTaskId = dict["resultTaskId"] as! String
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("input") {
                self.input = dict["input"] as! Int64
            }
            if dict.keys.contains("unit") {
                self.unit = dict["unit"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Message") {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("Output") {
            var model = RunContractResultGenerationResponseBody.Output()
            model.fromMap(dict["Output"] as! [String: Any])
            self.output = model
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") {
            self.success = dict["Success"] as! Bool
        }
        if dict.keys.contains("Usage") {
            var model = RunContractResultGenerationResponseBody.Usage()
            model.fromMap(dict["Usage"] as! [String: Any])
            self.usage = model
        }
        if dict.keys.contains("httpStatusCode") {
            self.httpStatusCode = dict["httpStatusCode"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = RunContractResultGenerationResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("fileId") {
                    self.fileId = dict["fileId"] as! String
                }
                if dict.keys.contains("position") {
                    self.position = dict["position"] as! String
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("metaData") {
                var model = RunContractRuleGenerationRequest.Assistant.MetaData()
                model.fromMap(dict["metaData"] as! [String: Any])
                self.metaData = model
            }
            if dict.keys.contains("type") {
                self.type = dict["type"] as! String
            }
            if dict.keys.contains("version") {
                self.version = dict["version"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("appId") {
            self.appId = dict["appId"] as! String
        }
        if dict.keys.contains("assistant") {
            var model = RunContractRuleGenerationRequest.Assistant()
            model.fromMap(dict["assistant"] as! [String: Any])
            self.assistant = model
        }
        if dict.keys.contains("stream") {
            self.stream = dict["stream"] as! Bool
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("appId") {
            self.appId = dict["appId"] as! String
        }
        if dict.keys.contains("assistant") {
            self.assistantShrink = dict["assistant"] as! String
        }
        if dict.keys.contains("stream") {
            self.stream = dict["stream"] as! Bool
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

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("riskLevel") {
                    self.riskLevel = dict["riskLevel"] as! String
                }
                if dict.keys.contains("ruleSequence") {
                    self.ruleSequence = dict["ruleSequence"] as! String
                }
                if dict.keys.contains("ruleTag") {
                    self.ruleTag = dict["ruleTag"] as! String
                }
                if dict.keys.contains("ruleTitle") {
                    self.ruleTitle = dict["ruleTitle"] as! String
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("ruleTaskId") {
                self.ruleTaskId = dict["ruleTaskId"] as! String
            }
            if dict.keys.contains("rules") {
                var tmp : [RunContractRuleGenerationResponseBody.Output.Rules] = []
                for v in dict["rules"] as! [Any] {
                    var model = RunContractRuleGenerationResponseBody.Output.Rules()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("input") {
                self.input = dict["input"] as! Int64
            }
            if dict.keys.contains("unit") {
                self.unit = dict["unit"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Message") {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("Output") {
            var model = RunContractRuleGenerationResponseBody.Output()
            model.fromMap(dict["Output"] as! [String: Any])
            self.output = model
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") {
            self.success = dict["Success"] as! Bool
        }
        if dict.keys.contains("Usage") {
            var model = RunContractRuleGenerationResponseBody.Usage()
            model.fromMap(dict["Usage"] as! [String: Any])
            self.usage = model
        }
        if dict.keys.contains("httpStatusCode") {
            self.httpStatusCode = dict["httpStatusCode"] as! Int32
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = RunContractRuleGenerationResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("id") {
                self.id = dict["id"] as! String
            }
            if dict.keys.contains("metaData") {
                self.metaData = dict["metaData"] as! [String: String]
            }
            if dict.keys.contains("type") {
                self.type = dict["type"] as! String
            }
            if dict.keys.contains("version") {
                self.version = dict["version"] as! String
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

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("content") {
                    self.content = dict["content"] as! String
                }
                if dict.keys.contains("role") {
                    self.role = dict["role"] as! String
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("messages") {
                var tmp : [RunLegalAdviceConsultationRequest.Thread.Messages] = []
                for v in dict["messages"] as! [Any] {
                    var model = RunLegalAdviceConsultationRequest.Thread.Messages()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.messages = tmp
            }
        }
    }
    public var appId: String?

    public var assistant: RunLegalAdviceConsultationRequest.Assistant?

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
        if self.stream != nil {
            map["stream"] = self.stream!
        }
        if self.thread != nil {
            map["thread"] = self.thread?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("appId") {
            self.appId = dict["appId"] as! String
        }
        if dict.keys.contains("assistant") {
            var model = RunLegalAdviceConsultationRequest.Assistant()
            model.fromMap(dict["assistant"] as! [String: Any])
            self.assistant = model
        }
        if dict.keys.contains("stream") {
            self.stream = dict["stream"] as! Bool
        }
        if dict.keys.contains("thread") {
            var model = RunLegalAdviceConsultationRequest.Thread()
            model.fromMap(dict["thread"] as! [String: Any])
            self.thread = model
        }
    }
}

public class RunLegalAdviceConsultationShrinkRequest : Tea.TeaModel {
    public var appId: String?

    public var assistantShrink: String?

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
        if self.stream != nil {
            map["stream"] = self.stream!
        }
        if self.threadShrink != nil {
            map["thread"] = self.threadShrink!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("appId") {
            self.appId = dict["appId"] as! String
        }
        if dict.keys.contains("assistant") {
            self.assistantShrink = dict["assistant"] as! String
        }
        if dict.keys.contains("stream") {
            self.stream = dict["stream"] as! Bool
        }
        if dict.keys.contains("thread") {
            self.threadShrink = dict["thread"] as! String
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("InputTokens") {
                self.inputTokens = dict["InputTokens"] as! Int32
            }
            if dict.keys.contains("OutputTokens") {
                self.outputTokens = dict["OutputTokens"] as! Int32
            }
            if dict.keys.contains("TotalTokens") {
                self.totalTokens = dict["TotalTokens"] as! Int32
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
        if self.httpStatusCode != nil {
            map["httpStatusCode"] = self.httpStatusCode!
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
        if dict.keys.contains("ResponseMarkdown") {
            self.responseMarkdown = dict["ResponseMarkdown"] as! String
        }
        if dict.keys.contains("Round") {
            self.round = dict["Round"] as! Int32
        }
        if dict.keys.contains("Status") {
            self.status = dict["Status"] as! String
        }
        if dict.keys.contains("Success") {
            self.success = dict["Success"] as! Bool
        }
        if dict.keys.contains("Usage") {
            var model = RunLegalAdviceConsultationResponseBody.Usage()
            model.fromMap(dict["Usage"] as! [String: Any])
            self.usage = model
        }
        if dict.keys.contains("httpStatusCode") {
            self.httpStatusCode = dict["httpStatusCode"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = RunLegalAdviceConsultationResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("caseNo") {
                self.caseNo = dict["caseNo"] as! String
            }
            if dict.keys.contains("caseTitle") {
                self.caseTitle = dict["caseTitle"] as! String
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("pageNumber") {
                self.pageNumber = dict["pageNumber"] as! Int32
            }
            if dict.keys.contains("pageSize") {
                self.pageSize = dict["pageSize"] as! Int32
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

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("content") {
                    self.content = dict["content"] as! String
                }
                if dict.keys.contains("role") {
                    self.role = dict["role"] as! String
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("messages") {
                var tmp : [RunSearchCaseFullTextRequest.Thread.Messages] = []
                for v in dict["messages"] as! [Any] {
                    var model = RunSearchCaseFullTextRequest.Thread.Messages()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
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
        if self.sortKeyAndDirection != nil {
            map["sortKeyAndDirection"] = self.sortKeyAndDirection!
        }
        if self.thread != nil {
            map["thread"] = self.thread?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("appId") {
            self.appId = dict["appId"] as! String
        }
        if dict.keys.contains("filterCondition") {
            var model = RunSearchCaseFullTextRequest.FilterCondition()
            model.fromMap(dict["filterCondition"] as! [String: Any])
            self.filterCondition = model
        }
        if dict.keys.contains("pageParam") {
            var model = RunSearchCaseFullTextRequest.PageParam()
            model.fromMap(dict["pageParam"] as! [String: Any])
            self.pageParam = model
        }
        if dict.keys.contains("query") {
            self.query = dict["query"] as! String
        }
        if dict.keys.contains("queryKeywords") {
            self.queryKeywords = dict["queryKeywords"] as! [String]
        }
        if dict.keys.contains("sortKeyAndDirection") {
            self.sortKeyAndDirection = dict["sortKeyAndDirection"] as! [String: String]
        }
        if dict.keys.contains("thread") {
            var model = RunSearchCaseFullTextRequest.Thread()
            model.fromMap(dict["thread"] as! [String: Any])
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
        if self.sortKeyAndDirectionShrink != nil {
            map["sortKeyAndDirection"] = self.sortKeyAndDirectionShrink!
        }
        if self.threadShrink != nil {
            map["thread"] = self.threadShrink!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("appId") {
            self.appId = dict["appId"] as! String
        }
        if dict.keys.contains("filterCondition") {
            self.filterConditionShrink = dict["filterCondition"] as! String
        }
        if dict.keys.contains("pageParam") {
            self.pageParamShrink = dict["pageParam"] as! String
        }
        if dict.keys.contains("query") {
            self.query = dict["query"] as! String
        }
        if dict.keys.contains("queryKeywords") {
            self.queryKeywordsShrink = dict["queryKeywords"] as! String
        }
        if dict.keys.contains("sortKeyAndDirection") {
            self.sortKeyAndDirectionShrink = dict["sortKeyAndDirection"] as! String
        }
        if dict.keys.contains("thread") {
            self.threadShrink = dict["thread"] as! String
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

                    public override func fromMap(_ dict: [String: Any]) -> Void {
                        if dict.keys.contains("city") {
                            self.city = dict["city"] as! String
                        }
                        if dict.keys.contains("commonLevel") {
                            self.commonLevel = dict["commonLevel"] as! String
                        }
                        if dict.keys.contains("country") {
                            self.country = dict["country"] as! String
                        }
                        if dict.keys.contains("county") {
                            self.county = dict["county"] as! String
                        }
                        if dict.keys.contains("district") {
                            self.district = dict["district"] as! String
                        }
                        if dict.keys.contains("name") {
                            self.name = dict["name"] as! String
                        }
                        if dict.keys.contains("province") {
                            self.province = dict["province"] as! String
                        }
                        if dict.keys.contains("specialLevel") {
                            self.specialLevel = dict["specialLevel"] as! String
                        }
                    }
                }
                public var abstractObj: String?

                public var appliedLaws: String?

                public var caseBasic: String?

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

                public var keyfacts: String?

                public var legalBasis: String?

                public var litigants: String?

                public var litigationParticipant: String?

                public var openCaseCause: String?

                public var preTrialProcess: String?

                public var referLevel: String?

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
                    if self.caseBasic != nil {
                        map["caseBasic"] = self.caseBasic!
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

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("abstractObj") {
                        self.abstractObj = dict["abstractObj"] as! String
                    }
                    if dict.keys.contains("appliedLaws") {
                        self.appliedLaws = dict["appliedLaws"] as! String
                    }
                    if dict.keys.contains("caseBasic") {
                        self.caseBasic = dict["caseBasic"] as! String
                    }
                    if dict.keys.contains("caseFeature") {
                        self.caseFeature = dict["caseFeature"] as! String
                    }
                    if dict.keys.contains("caseId") {
                        self.caseId = dict["caseId"] as! String
                    }
                    if dict.keys.contains("caseNo") {
                        self.caseNo = dict["caseNo"] as! String
                    }
                    if dict.keys.contains("caseSummary") {
                        self.caseSummary = dict["caseSummary"] as! String
                    }
                    if dict.keys.contains("caseTitle") {
                        self.caseTitle = dict["caseTitle"] as! String
                    }
                    if dict.keys.contains("caseType") {
                        self.caseType = dict["caseType"] as! String
                    }
                    if dict.keys.contains("closeCaseCause") {
                        self.closeCaseCause = dict["closeCaseCause"] as! String
                    }
                    if dict.keys.contains("courtFindOut") {
                        self.courtFindOut = dict["courtFindOut"] as! String
                    }
                    if dict.keys.contains("courtThink") {
                        self.courtThink = dict["courtThink"] as! String
                    }
                    if dict.keys.contains("dataFrom") {
                        self.dataFrom = dict["dataFrom"] as! String
                    }
                    if dict.keys.contains("disputeFocus") {
                        self.disputeFocus = dict["disputeFocus"] as! String
                    }
                    if dict.keys.contains("disputeFocusTag") {
                        self.disputeFocusTag = dict["disputeFocusTag"] as! [String]
                    }
                    if dict.keys.contains("disputedpoints") {
                        self.disputedpoints = dict["disputedpoints"] as! String
                    }
                    if dict.keys.contains("documentType") {
                        self.documentType = dict["documentType"] as! String
                    }
                    if dict.keys.contains("keyfacts") {
                        self.keyfacts = dict["keyfacts"] as! String
                    }
                    if dict.keys.contains("legalBasis") {
                        self.legalBasis = dict["legalBasis"] as! String
                    }
                    if dict.keys.contains("litigants") {
                        self.litigants = dict["litigants"] as! String
                    }
                    if dict.keys.contains("litigationParticipant") {
                        self.litigationParticipant = dict["litigationParticipant"] as! String
                    }
                    if dict.keys.contains("openCaseCause") {
                        self.openCaseCause = dict["openCaseCause"] as! String
                    }
                    if dict.keys.contains("preTrialProcess") {
                        self.preTrialProcess = dict["preTrialProcess"] as! String
                    }
                    if dict.keys.contains("referLevel") {
                        self.referLevel = dict["referLevel"] as! String
                    }
                    if dict.keys.contains("sourceContent") {
                        self.sourceContent = dict["sourceContent"] as! String
                    }
                    if dict.keys.contains("trialCourt") {
                        var model = RunSearchCaseFullTextResponseBody.Data.CaseResult.CaseDomain.TrialCourt()
                        model.fromMap(dict["trialCourt"] as! [String: Any])
                        self.trialCourt = model
                    }
                    if dict.keys.contains("trialDate") {
                        self.trialDate = dict["trialDate"] as! String
                    }
                    if dict.keys.contains("trialLevel") {
                        self.trialLevel = dict["trialLevel"] as! String
                    }
                    if dict.keys.contains("trialProcess") {
                        self.trialProcess = dict["trialProcess"] as! String
                    }
                    if dict.keys.contains("trialProgram") {
                        self.trialProgram = dict["trialProgram"] as! String
                    }
                    if dict.keys.contains("verdict") {
                        self.verdict = dict["verdict"] as! String
                    }
                }
            }
            public var caseDomain: RunSearchCaseFullTextResponseBody.Data.CaseResult.CaseDomain?

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
                if self.similarity != nil {
                    map["similarity"] = self.similarity!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("caseDomain") {
                    var model = RunSearchCaseFullTextResponseBody.Data.CaseResult.CaseDomain()
                    model.fromMap(dict["caseDomain"] as! [String: Any])
                    self.caseDomain = model
                }
                if dict.keys.contains("similarity") {
                    self.similarity = dict["similarity"] as! String
                }
            }
        }
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("caseResult") {
                var tmp : [RunSearchCaseFullTextResponseBody.Data.CaseResult] = []
                for v in dict["caseResult"] as! [Any] {
                    var model = RunSearchCaseFullTextResponseBody.Data.CaseResult()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.caseResult = tmp
            }
            if dict.keys.contains("currentPage") {
                self.currentPage = dict["currentPage"] as! Int32
            }
            if dict.keys.contains("pageSize") {
                self.pageSize = dict["pageSize"] as! Int32
            }
            if dict.keys.contains("query") {
                self.query = dict["query"] as! String
            }
            if dict.keys.contains("queryKeywords") {
                self.queryKeywords = dict["queryKeywords"] as! [String]
            }
            if dict.keys.contains("totalCount") {
                self.totalCount = dict["totalCount"] as! Int64
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("code") {
            self.code = dict["code"] as! String
        }
        if dict.keys.contains("data") {
            var model = RunSearchCaseFullTextResponseBody.Data()
            model.fromMap(dict["data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("httpStatusCode") {
            self.httpStatusCode = dict["httpStatusCode"] as! Int64
        }
        if dict.keys.contains("message") {
            self.message = dict["message"] as! String
        }
        if dict.keys.contains("requestId") {
            self.requestId = dict["requestId"] as! String
        }
        if dict.keys.contains("success") {
            self.success = dict["success"] as! Bool
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = RunSearchCaseFullTextResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("lawName") {
                self.lawName = dict["lawName"] as! String
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("pageNumber") {
                self.pageNumber = dict["pageNumber"] as! Int32
            }
            if dict.keys.contains("pageSize") {
                self.pageSize = dict["pageSize"] as! Int32
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

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("content") {
                    self.content = dict["content"] as! String
                }
                if dict.keys.contains("role") {
                    self.role = dict["role"] as! String
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("messages") {
                var tmp : [RunSearchLawQueryRequest.Thread.Messages] = []
                for v in dict["messages"] as! [Any] {
                    var model = RunSearchLawQueryRequest.Thread.Messages()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("appId") {
            self.appId = dict["appId"] as! String
        }
        if dict.keys.contains("filterCondition") {
            var model = RunSearchLawQueryRequest.FilterCondition()
            model.fromMap(dict["filterCondition"] as! [String: Any])
            self.filterCondition = model
        }
        if dict.keys.contains("pageParam") {
            var model = RunSearchLawQueryRequest.PageParam()
            model.fromMap(dict["pageParam"] as! [String: Any])
            self.pageParam = model
        }
        if dict.keys.contains("query") {
            self.query = dict["query"] as! String
        }
        if dict.keys.contains("queryKeywords") {
            self.queryKeywords = dict["queryKeywords"] as! [String]
        }
        if dict.keys.contains("thread") {
            var model = RunSearchLawQueryRequest.Thread()
            model.fromMap(dict["thread"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("appId") {
            self.appId = dict["appId"] as! String
        }
        if dict.keys.contains("filterCondition") {
            self.filterConditionShrink = dict["filterCondition"] as! String
        }
        if dict.keys.contains("pageParam") {
            self.pageParamShrink = dict["pageParam"] as! String
        }
        if dict.keys.contains("query") {
            self.query = dict["query"] as! String
        }
        if dict.keys.contains("queryKeywords") {
            self.queryKeywordsShrink = dict["queryKeywords"] as! String
        }
        if dict.keys.contains("thread") {
            self.threadShrink = dict["thread"] as! String
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

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("abolitionBasis") {
                        self.abolitionBasis = dict["abolitionBasis"] as! String
                    }
                    if dict.keys.contains("implementYearMonthDate") {
                        self.implementYearMonthDate = dict["implementYearMonthDate"] as! String
                    }
                    if dict.keys.contains("invalidBasis") {
                        self.invalidBasis = dict["invalidBasis"] as! String
                    }
                    if dict.keys.contains("issuingNo") {
                        self.issuingNo = dict["issuingNo"] as! String
                    }
                    if dict.keys.contains("issuingOrgan") {
                        self.issuingOrgan = dict["issuingOrgan"] as! String
                    }
                    if dict.keys.contains("lawId") {
                        self.lawId = dict["lawId"] as! String
                    }
                    if dict.keys.contains("lawItemId") {
                        self.lawItemId = dict["lawItemId"] as! String
                    }
                    if dict.keys.contains("lawName") {
                        self.lawName = dict["lawName"] as! String
                    }
                    if dict.keys.contains("lawOrder") {
                        self.lawOrder = dict["lawOrder"] as! String
                    }
                    if dict.keys.contains("lawSourceContent") {
                        self.lawSourceContent = dict["lawSourceContent"] as! String
                    }
                    if dict.keys.contains("lawTitle") {
                        self.lawTitle = dict["lawTitle"] as! String
                    }
                    if dict.keys.contains("modifyBasis") {
                        self.modifyBasis = dict["modifyBasis"] as! String
                    }
                    if dict.keys.contains("potencyLevel") {
                        self.potencyLevel = dict["potencyLevel"] as! String
                    }
                    if dict.keys.contains("releaseYearMonthDate") {
                        self.releaseYearMonthDate = dict["releaseYearMonthDate"] as! String
                    }
                    if dict.keys.contains("thematicClassify") {
                        self.thematicClassify = dict["thematicClassify"] as! String
                    }
                    if dict.keys.contains("timeliness") {
                        self.timeliness = dict["timeliness"] as! String
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

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("lawDomain") {
                    var model = RunSearchLawQueryResponseBody.Data.LawResult.LawDomain()
                    model.fromMap(dict["lawDomain"] as! [String: Any])
                    self.lawDomain = model
                }
                if dict.keys.contains("similarity") {
                    self.similarity = dict["similarity"] as! String
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

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("releaseYearMonthDate") {
                    self.releaseYearMonthDate = dict["releaseYearMonthDate"] as! String
                }
                if dict.keys.contains("similarity") {
                    self.similarity = dict["similarity"] as! String
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("currentPage") {
                self.currentPage = dict["currentPage"] as! Int32
            }
            if dict.keys.contains("lawResult") {
                var tmp : [RunSearchLawQueryResponseBody.Data.LawResult] = []
                for v in dict["lawResult"] as! [Any] {
                    var model = RunSearchLawQueryResponseBody.Data.LawResult()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.lawResult = tmp
            }
            if dict.keys.contains("pageSize") {
                self.pageSize = dict["pageSize"] as! Int32
            }
            if dict.keys.contains("query") {
                self.query = dict["query"] as! String
            }
            if dict.keys.contains("queryKeywords") {
                self.queryKeywords = dict["queryKeywords"] as! [String]
            }
            if dict.keys.contains("sortKeyAndDirection") {
                var model = RunSearchLawQueryResponseBody.Data.SortKeyAndDirection()
                model.fromMap(dict["sortKeyAndDirection"] as! [String: Any])
                self.sortKeyAndDirection = model
            }
            if dict.keys.contains("totalCount") {
                self.totalCount = dict["totalCount"] as! Int64
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("code") {
            self.code = dict["code"] as! String
        }
        if dict.keys.contains("data") {
            var model = RunSearchLawQueryResponseBody.Data()
            model.fromMap(dict["data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("httpStatusCode") {
            self.httpStatusCode = dict["httpStatusCode"] as! Int64
        }
        if dict.keys.contains("message") {
            self.message = dict["message"] as! String
        }
        if dict.keys.contains("requestId") {
            self.requestId = dict["requestId"] as! String
        }
        if dict.keys.contains("success") {
            self.success = dict["success"] as! Bool
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = RunSearchLawQueryResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}
