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
