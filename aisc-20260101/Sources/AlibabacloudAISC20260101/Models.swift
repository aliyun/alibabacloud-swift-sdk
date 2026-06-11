import Foundation
import Tea
import TeaUtils
import AlibabacloudOpenApi
import AlibabaCloudOpenApiUtil
import AlibabacloudEndpointUtil

public class CreateSkillFileCheckRequest : Tea.TeaModel {
    public class Files : Tea.TeaModel {
        public var downloadUrl: String?

        public var fileName: String?

        public override init() {
            super.init()
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
            if self.fileName != nil {
                map["FileName"] = self.fileName!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["DownloadUrl"] as? String {
                self.downloadUrl = value
            }
            if let value = dict["FileName"] as? String {
                self.fileName = value
            }
        }
    }
    public var files: [CreateSkillFileCheckRequest.Files]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.files != nil {
            var tmp : [Any] = []
            for k in self.files! {
                tmp.append(k.toMap())
            }
            map["Files"] = tmp
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Files"] as? [Any?] {
            var tmp : [CreateSkillFileCheckRequest.Files] = []
            for v in value {
                if v != nil {
                    var model = CreateSkillFileCheckRequest.Files()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.files = tmp
        }
    }
}

public class CreateSkillFileCheckResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class UploadResults : Tea.TeaModel {
            public var errorMsg: String?

            public var fileHash: String?

            public var fileName: String?

            public var identifyId: String?

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
                if self.errorMsg != nil {
                    map["ErrorMsg"] = self.errorMsg!
                }
                if self.fileHash != nil {
                    map["FileHash"] = self.fileHash!
                }
                if self.fileName != nil {
                    map["FileName"] = self.fileName!
                }
                if self.identifyId != nil {
                    map["IdentifyId"] = self.identifyId!
                }
                if self.success != nil {
                    map["Success"] = self.success!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["ErrorMsg"] as? String {
                    self.errorMsg = value
                }
                if let value = dict["FileHash"] as? String {
                    self.fileHash = value
                }
                if let value = dict["FileName"] as? String {
                    self.fileName = value
                }
                if let value = dict["IdentifyId"] as? String {
                    self.identifyId = value
                }
                if let value = dict["Success"] as? Bool {
                    self.success = value
                }
            }
        }
        public var failCount: Int32?

        public var rootTaskId: String?

        public var successCount: Int32?

        public var uploadResults: [CreateSkillFileCheckResponseBody.Data.UploadResults]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.failCount != nil {
                map["FailCount"] = self.failCount!
            }
            if self.rootTaskId != nil {
                map["RootTaskId"] = self.rootTaskId!
            }
            if self.successCount != nil {
                map["SuccessCount"] = self.successCount!
            }
            if self.uploadResults != nil {
                var tmp : [Any] = []
                for k in self.uploadResults! {
                    tmp.append(k.toMap())
                }
                map["UploadResults"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["FailCount"] as? Int32 {
                self.failCount = value
            }
            if let value = dict["RootTaskId"] as? String {
                self.rootTaskId = value
            }
            if let value = dict["SuccessCount"] as? Int32 {
                self.successCount = value
            }
            if let value = dict["UploadResults"] as? [Any?] {
                var tmp : [CreateSkillFileCheckResponseBody.Data.UploadResults] = []
                for v in value {
                    if v != nil {
                        var model = CreateSkillFileCheckResponseBody.Data.UploadResults()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.uploadResults = tmp
            }
        }
    }
    public var data: CreateSkillFileCheckResponseBody.Data?

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
            var model = CreateSkillFileCheckResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class CreateSkillFileCheckResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateSkillFileCheckResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = CreateSkillFileCheckResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ListSubTasksRequest : Tea.TeaModel {
    public var currentPage: Int32?

    public var pageSize: Int32?

    public var rootTaskId: String?

    public var taskType: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.currentPage != nil {
            map["CurrentPage"] = self.currentPage!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.rootTaskId != nil {
            map["RootTaskId"] = self.rootTaskId!
        }
        if self.taskType != nil {
            map["TaskType"] = self.taskType!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["CurrentPage"] as? Int32 {
            self.currentPage = value
        }
        if let value = dict["PageSize"] as? Int32 {
            self.pageSize = value
        }
        if let value = dict["RootTaskId"] as? String {
            self.rootTaskId = value
        }
        if let value = dict["TaskType"] as? String {
            self.taskType = value
        }
    }
}

public class ListSubTasksResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class TaskResultMessage : Tea.TeaModel {
            public class SkillCheckResult : Tea.TeaModel {
                public class RiskInfo : Tea.TeaModel {
                    public class Ext : Tea.TeaModel {
                        public class Config : Tea.TeaModel {
                            public class Detail : Tea.TeaModel {
                                public var content: String?

                                public var description_: String?

                                public var itemName: String?

                                public var line: String?

                                public override init() {
                                    super.init()
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
                                        map["Content"] = self.content!
                                    }
                                    if self.description_ != nil {
                                        map["Description"] = self.description_!
                                    }
                                    if self.itemName != nil {
                                        map["ItemName"] = self.itemName!
                                    }
                                    if self.line != nil {
                                        map["Line"] = self.line!
                                    }
                                    return map
                                }

                                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                                    guard let dict else { return }
                                    if let value = dict["Content"] as? String {
                                        self.content = value
                                    }
                                    if let value = dict["Description"] as? String {
                                        self.description_ = value
                                    }
                                    if let value = dict["ItemName"] as? String {
                                        self.itemName = value
                                    }
                                    if let value = dict["Line"] as? String {
                                        self.line = value
                                    }
                                }
                            }
                            public var detail: [ListSubTasksResponseBody.Data.TaskResultMessage.SkillCheckResult.RiskInfo.Ext.Config.Detail]?

                            public override init() {
                                super.init()
                            }

                            public init(_ dict: [String: Any]) {
                                super.init()
                                self.fromMap(dict)
                            }

                            public override func validate() throws -> Void {
                            }

                            public override func toMap() -> [String : Any] {
                                var map = super.toMap()
                                if self.detail != nil {
                                    var tmp : [Any] = []
                                    for k in self.detail! {
                                        tmp.append(k.toMap())
                                    }
                                    map["Detail"] = tmp
                                }
                                return map
                            }

                            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                                guard let dict else { return }
                                if let value = dict["Detail"] as? [Any?] {
                                    var tmp : [ListSubTasksResponseBody.Data.TaskResultMessage.SkillCheckResult.RiskInfo.Ext.Config.Detail] = []
                                    for v in value {
                                        if v != nil {
                                            var model = ListSubTasksResponseBody.Data.TaskResultMessage.SkillCheckResult.RiskInfo.Ext.Config.Detail()
                                            if v != nil {
                                                model.fromMap(v as? [String: Any?])
                                            }
                                            tmp.append(model)
                                        }
                                    }
                                    self.detail = tmp
                                }
                            }
                        }
                        public class Guardrail : Tea.TeaModel {
                            public class Detail : Tea.TeaModel {
                                public class Result : Tea.TeaModel {
                                    public var confidence: Double?

                                    public var description_: String?

                                    public var label: String?

                                    public var level: String?

                                    public override init() {
                                        super.init()
                                    }

                                    public init(_ dict: [String: Any]) {
                                        super.init()
                                        self.fromMap(dict)
                                    }

                                    public override func validate() throws -> Void {
                                    }

                                    public override func toMap() -> [String : Any] {
                                        var map = super.toMap()
                                        if self.confidence != nil {
                                            map["Confidence"] = self.confidence!
                                        }
                                        if self.description_ != nil {
                                            map["Description"] = self.description_!
                                        }
                                        if self.label != nil {
                                            map["Label"] = self.label!
                                        }
                                        if self.level != nil {
                                            map["Level"] = self.level!
                                        }
                                        return map
                                    }

                                    public override func fromMap(_ dict: [String: Any?]?) -> Void {
                                        guard let dict else { return }
                                        if let value = dict["Confidence"] as? Double {
                                            self.confidence = value
                                        }
                                        if let value = dict["Description"] as? String {
                                            self.description_ = value
                                        }
                                        if let value = dict["Label"] as? String {
                                            self.label = value
                                        }
                                        if let value = dict["Level"] as? String {
                                            self.level = value
                                        }
                                    }
                                }
                                public var level: String?

                                public var result: [ListSubTasksResponseBody.Data.TaskResultMessage.SkillCheckResult.RiskInfo.Ext.Guardrail.Detail.Result]?

                                public var suggestion: String?

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
                                    if self.level != nil {
                                        map["Level"] = self.level!
                                    }
                                    if self.result != nil {
                                        var tmp : [Any] = []
                                        for k in self.result! {
                                            tmp.append(k.toMap())
                                        }
                                        map["Result"] = tmp
                                    }
                                    if self.suggestion != nil {
                                        map["Suggestion"] = self.suggestion!
                                    }
                                    if self.type != nil {
                                        map["Type"] = self.type!
                                    }
                                    return map
                                }

                                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                                    guard let dict else { return }
                                    if let value = dict["Level"] as? String {
                                        self.level = value
                                    }
                                    if let value = dict["Result"] as? [Any?] {
                                        var tmp : [ListSubTasksResponseBody.Data.TaskResultMessage.SkillCheckResult.RiskInfo.Ext.Guardrail.Detail.Result] = []
                                        for v in value {
                                            if v != nil {
                                                var model = ListSubTasksResponseBody.Data.TaskResultMessage.SkillCheckResult.RiskInfo.Ext.Guardrail.Detail.Result()
                                                if v != nil {
                                                    model.fromMap(v as? [String: Any?])
                                                }
                                                tmp.append(model)
                                            }
                                        }
                                        self.result = tmp
                                    }
                                    if let value = dict["Suggestion"] as? String {
                                        self.suggestion = value
                                    }
                                    if let value = dict["Type"] as? String {
                                        self.type = value
                                    }
                                }
                            }
                            public var detail: [ListSubTasksResponseBody.Data.TaskResultMessage.SkillCheckResult.RiskInfo.Ext.Guardrail.Detail]?

                            public var suggestion: String?

                            public override init() {
                                super.init()
                            }

                            public init(_ dict: [String: Any]) {
                                super.init()
                                self.fromMap(dict)
                            }

                            public override func validate() throws -> Void {
                            }

                            public override func toMap() -> [String : Any] {
                                var map = super.toMap()
                                if self.detail != nil {
                                    var tmp : [Any] = []
                                    for k in self.detail! {
                                        tmp.append(k.toMap())
                                    }
                                    map["Detail"] = tmp
                                }
                                if self.suggestion != nil {
                                    map["Suggestion"] = self.suggestion!
                                }
                                return map
                            }

                            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                                guard let dict else { return }
                                if let value = dict["Detail"] as? [Any?] {
                                    var tmp : [ListSubTasksResponseBody.Data.TaskResultMessage.SkillCheckResult.RiskInfo.Ext.Guardrail.Detail] = []
                                    for v in value {
                                        if v != nil {
                                            var model = ListSubTasksResponseBody.Data.TaskResultMessage.SkillCheckResult.RiskInfo.Ext.Guardrail.Detail()
                                            if v != nil {
                                                model.fromMap(v as? [String: Any?])
                                            }
                                            tmp.append(model)
                                        }
                                    }
                                    self.detail = tmp
                                }
                                if let value = dict["Suggestion"] as? String {
                                    self.suggestion = value
                                }
                            }
                        }
                        public class Sensitive : Tea.TeaModel {
                            public class Detail : Tea.TeaModel {
                                public var desc: String?

                                public var result: [String]?

                                public override init() {
                                    super.init()
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
                                    if self.result != nil {
                                        map["Result"] = self.result!
                                    }
                                    return map
                                }

                                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                                    guard let dict else { return }
                                    if let value = dict["Desc"] as? String {
                                        self.desc = value
                                    }
                                    if let value = dict["Result"] as? [String] {
                                        self.result = value
                                    }
                                }
                            }
                            public var detail: [ListSubTasksResponseBody.Data.TaskResultMessage.SkillCheckResult.RiskInfo.Ext.Sensitive.Detail]?

                            public override init() {
                                super.init()
                            }

                            public init(_ dict: [String: Any]) {
                                super.init()
                                self.fromMap(dict)
                            }

                            public override func validate() throws -> Void {
                            }

                            public override func toMap() -> [String : Any] {
                                var map = super.toMap()
                                if self.detail != nil {
                                    var tmp : [Any] = []
                                    for k in self.detail! {
                                        tmp.append(k.toMap())
                                    }
                                    map["Detail"] = tmp
                                }
                                return map
                            }

                            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                                guard let dict else { return }
                                if let value = dict["Detail"] as? [Any?] {
                                    var tmp : [ListSubTasksResponseBody.Data.TaskResultMessage.SkillCheckResult.RiskInfo.Ext.Sensitive.Detail] = []
                                    for v in value {
                                        if v != nil {
                                            var model = ListSubTasksResponseBody.Data.TaskResultMessage.SkillCheckResult.RiskInfo.Ext.Sensitive.Detail()
                                            if v != nil {
                                                model.fromMap(v as? [String: Any?])
                                            }
                                            tmp.append(model)
                                        }
                                    }
                                    self.detail = tmp
                                }
                            }
                        }
                        public class Virus : Tea.TeaModel {
                            public var ext: String?

                            public var score: Int32?

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
                                if self.ext != nil {
                                    map["Ext"] = self.ext!
                                }
                                if self.score != nil {
                                    map["Score"] = self.score!
                                }
                                if self.type != nil {
                                    map["Type"] = self.type!
                                }
                                return map
                            }

                            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                                guard let dict else { return }
                                if let value = dict["Ext"] as? String {
                                    self.ext = value
                                }
                                if let value = dict["Score"] as? Int32 {
                                    self.score = value
                                }
                                if let value = dict["Type"] as? String {
                                    self.type = value
                                }
                            }
                        }
                        public var config: ListSubTasksResponseBody.Data.TaskResultMessage.SkillCheckResult.RiskInfo.Ext.Config?

                        public var guardrail: ListSubTasksResponseBody.Data.TaskResultMessage.SkillCheckResult.RiskInfo.Ext.Guardrail?

                        public var sensitive: ListSubTasksResponseBody.Data.TaskResultMessage.SkillCheckResult.RiskInfo.Ext.Sensitive?

                        public var virus: [ListSubTasksResponseBody.Data.TaskResultMessage.SkillCheckResult.RiskInfo.Ext.Virus]?

                        public override init() {
                            super.init()
                        }

                        public init(_ dict: [String: Any]) {
                            super.init()
                            self.fromMap(dict)
                        }

                        public override func validate() throws -> Void {
                            try self.config?.validate()
                            try self.guardrail?.validate()
                            try self.sensitive?.validate()
                        }

                        public override func toMap() -> [String : Any] {
                            var map = super.toMap()
                            if self.config != nil {
                                map["Config"] = self.config?.toMap()
                            }
                            if self.guardrail != nil {
                                map["Guardrail"] = self.guardrail?.toMap()
                            }
                            if self.sensitive != nil {
                                map["Sensitive"] = self.sensitive?.toMap()
                            }
                            if self.virus != nil {
                                var tmp : [Any] = []
                                for k in self.virus! {
                                    tmp.append(k.toMap())
                                }
                                map["Virus"] = tmp
                            }
                            return map
                        }

                        public override func fromMap(_ dict: [String: Any?]?) -> Void {
                            guard let dict else { return }
                            if let value = dict["Config"] as? [String: Any?] {
                                var model = ListSubTasksResponseBody.Data.TaskResultMessage.SkillCheckResult.RiskInfo.Ext.Config()
                                model.fromMap(value)
                                self.config = model
                            }
                            if let value = dict["Guardrail"] as? [String: Any?] {
                                var model = ListSubTasksResponseBody.Data.TaskResultMessage.SkillCheckResult.RiskInfo.Ext.Guardrail()
                                model.fromMap(value)
                                self.guardrail = model
                            }
                            if let value = dict["Sensitive"] as? [String: Any?] {
                                var model = ListSubTasksResponseBody.Data.TaskResultMessage.SkillCheckResult.RiskInfo.Ext.Sensitive()
                                model.fromMap(value)
                                self.sensitive = model
                            }
                            if let value = dict["Virus"] as? [Any?] {
                                var tmp : [ListSubTasksResponseBody.Data.TaskResultMessage.SkillCheckResult.RiskInfo.Ext.Virus] = []
                                for v in value {
                                    if v != nil {
                                        var model = ListSubTasksResponseBody.Data.TaskResultMessage.SkillCheckResult.RiskInfo.Ext.Virus()
                                        if v != nil {
                                            model.fromMap(v as? [String: Any?])
                                        }
                                        tmp.append(model)
                                    }
                                }
                                self.virus = tmp
                            }
                        }
                    }
                    public var ext: ListSubTasksResponseBody.Data.TaskResultMessage.SkillCheckResult.RiskInfo.Ext?

                    public var path: String?

                    public var resultType: String?

                    public override init() {
                        super.init()
                    }

                    public init(_ dict: [String: Any]) {
                        super.init()
                        self.fromMap(dict)
                    }

                    public override func validate() throws -> Void {
                        try self.ext?.validate()
                    }

                    public override func toMap() -> [String : Any] {
                        var map = super.toMap()
                        if self.ext != nil {
                            map["Ext"] = self.ext?.toMap()
                        }
                        if self.path != nil {
                            map["Path"] = self.path!
                        }
                        if self.resultType != nil {
                            map["ResultType"] = self.resultType!
                        }
                        return map
                    }

                    public override func fromMap(_ dict: [String: Any?]?) -> Void {
                        guard let dict else { return }
                        if let value = dict["Ext"] as? [String: Any?] {
                            var model = ListSubTasksResponseBody.Data.TaskResultMessage.SkillCheckResult.RiskInfo.Ext()
                            model.fromMap(value)
                            self.ext = model
                        }
                        if let value = dict["Path"] as? String {
                            self.path = value
                        }
                        if let value = dict["ResultType"] as? String {
                            self.resultType = value
                        }
                    }
                }
                public var riskInfo: [ListSubTasksResponseBody.Data.TaskResultMessage.SkillCheckResult.RiskInfo]?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.riskInfo != nil {
                        var tmp : [Any] = []
                        for k in self.riskInfo! {
                            tmp.append(k.toMap())
                        }
                        map["RiskInfo"] = tmp
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["RiskInfo"] as? [Any?] {
                        var tmp : [ListSubTasksResponseBody.Data.TaskResultMessage.SkillCheckResult.RiskInfo] = []
                        for v in value {
                            if v != nil {
                                var model = ListSubTasksResponseBody.Data.TaskResultMessage.SkillCheckResult.RiskInfo()
                                if v != nil {
                                    model.fromMap(v as? [String: Any?])
                                }
                                tmp.append(model)
                            }
                        }
                        self.riskInfo = tmp
                    }
                }
            }
            public var skillCheckResult: ListSubTasksResponseBody.Data.TaskResultMessage.SkillCheckResult?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
                try self.skillCheckResult?.validate()
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.skillCheckResult != nil {
                    map["SkillCheckResult"] = self.skillCheckResult?.toMap()
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["SkillCheckResult"] as? [String: Any?] {
                    var model = ListSubTasksResponseBody.Data.TaskResultMessage.SkillCheckResult()
                    model.fromMap(value)
                    self.skillCheckResult = model
                }
            }
        }
        public var fileHash: String?

        public var id: Int64?

        public var target: String?

        public var taskResultMessage: ListSubTasksResponseBody.Data.TaskResultMessage?

        public var taskStatus: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.taskResultMessage?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.fileHash != nil {
                map["FileHash"] = self.fileHash!
            }
            if self.id != nil {
                map["Id"] = self.id!
            }
            if self.target != nil {
                map["Target"] = self.target!
            }
            if self.taskResultMessage != nil {
                map["TaskResultMessage"] = self.taskResultMessage?.toMap()
            }
            if self.taskStatus != nil {
                map["TaskStatus"] = self.taskStatus!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["FileHash"] as? String {
                self.fileHash = value
            }
            if let value = dict["Id"] as? Int64 {
                self.id = value
            }
            if let value = dict["Target"] as? String {
                self.target = value
            }
            if let value = dict["TaskResultMessage"] as? [String: Any?] {
                var model = ListSubTasksResponseBody.Data.TaskResultMessage()
                model.fromMap(value)
                self.taskResultMessage = model
            }
            if let value = dict["TaskStatus"] as? String {
                self.taskStatus = value
            }
        }
    }
    public class PageInfo : Tea.TeaModel {
        public var count: String?

        public var currentPage: Int32?

        public var pageSize: Int32?

        public var totalCount: Int32?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.count != nil {
                map["Count"] = self.count!
            }
            if self.currentPage != nil {
                map["CurrentPage"] = self.currentPage!
            }
            if self.pageSize != nil {
                map["PageSize"] = self.pageSize!
            }
            if self.totalCount != nil {
                map["TotalCount"] = self.totalCount!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Count"] as? String {
                self.count = value
            }
            if let value = dict["CurrentPage"] as? Int32 {
                self.currentPage = value
            }
            if let value = dict["PageSize"] as? Int32 {
                self.pageSize = value
            }
            if let value = dict["TotalCount"] as? Int32 {
                self.totalCount = value
            }
        }
    }
    public var data: [ListSubTasksResponseBody.Data]?

    public var pageInfo: ListSubTasksResponseBody.PageInfo?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.pageInfo?.validate()
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
        if self.pageInfo != nil {
            map["PageInfo"] = self.pageInfo?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Data"] as? [Any?] {
            var tmp : [ListSubTasksResponseBody.Data] = []
            for v in value {
                if v != nil {
                    var model = ListSubTasksResponseBody.Data()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.data = tmp
        }
        if let value = dict["PageInfo"] as? [String: Any?] {
            var model = ListSubTasksResponseBody.PageInfo()
            model.fromMap(value)
            self.pageInfo = model
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class ListSubTasksResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListSubTasksResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = ListSubTasksResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}
