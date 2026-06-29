import Foundation
import Tea
import TeaUtils
import AlibabacloudOpenApi
import AlibabaCloudOpenApiUtil
import AlibabacloudEndpointUtil

public class CreateTaskDetail : Tea.TeaModel {
    public class Admins : Tea.TeaModel {
        public var users: [SimpleUser]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.users != nil {
                var tmp : [Any] = []
                for k in self.users! {
                    tmp.append(k.toMap())
                }
                map["Users"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Users"] as? [Any?] {
                var tmp : [SimpleUser] = []
                for v in value {
                    if v != nil {
                        var model = SimpleUser()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.users = tmp
            }
        }
    }
    public class TaskWorkflow : Tea.TeaModel {
        public var nodeName: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.nodeName != nil {
                map["NodeName"] = self.nodeName!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["NodeName"] as? String {
                self.nodeName = value
            }
        }
    }
    public var admins: CreateTaskDetail.Admins?

    public var allowAppendData: Bool?

    public var assignConfig: TaskAssginConfig?

    public var datasetProxyRelations: [DatasetProxyConfig]?

    public var exif: [String: Any]?

    public var tags: [String]?

    public var taskName: String?

    public var taskTemplateConfig: TaskTemplateConfig?

    public var taskWorkflow: [CreateTaskDetail.TaskWorkflow]?

    public var templateId: String?

    public var UUID: String?

    public var voteConfigs: [String: CreateTaskDetailVoteInfo]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.admins?.validate()
        try self.assignConfig?.validate()
        try self.taskTemplateConfig?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.admins != nil {
            map["Admins"] = self.admins?.toMap()
        }
        if self.allowAppendData != nil {
            map["AllowAppendData"] = self.allowAppendData!
        }
        if self.assignConfig != nil {
            map["AssignConfig"] = self.assignConfig?.toMap()
        }
        if self.datasetProxyRelations != nil {
            var tmp : [Any] = []
            for k in self.datasetProxyRelations! {
                tmp.append(k.toMap())
            }
            map["DatasetProxyRelations"] = tmp
        }
        if self.exif != nil {
            map["Exif"] = self.exif!
        }
        if self.tags != nil {
            map["Tags"] = self.tags!
        }
        if self.taskName != nil {
            map["TaskName"] = self.taskName!
        }
        if self.taskTemplateConfig != nil {
            map["TaskTemplateConfig"] = self.taskTemplateConfig?.toMap()
        }
        if self.taskWorkflow != nil {
            var tmp : [Any] = []
            for k in self.taskWorkflow! {
                tmp.append(k.toMap())
            }
            map["TaskWorkflow"] = tmp
        }
        if self.templateId != nil {
            map["TemplateId"] = self.templateId!
        }
        if self.UUID != nil {
            map["UUID"] = self.UUID!
        }
        if self.voteConfigs != nil {
            var tmp : [String: Any] = [:]
            for (k, v) in self.voteConfigs! {
                tmp[k] = v.toMap()
            }
            map["VoteConfigs"] = tmp
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Admins"] as? [String: Any?] {
            var model = CreateTaskDetail.Admins()
            model.fromMap(value)
            self.admins = model
        }
        if let value = dict["AllowAppendData"] as? Bool {
            self.allowAppendData = value
        }
        if let value = dict["AssignConfig"] as? [String: Any?] {
            var model = TaskAssginConfig()
            model.fromMap(value)
            self.assignConfig = model
        }
        if let value = dict["DatasetProxyRelations"] as? [Any?] {
            var tmp : [DatasetProxyConfig] = []
            for v in value {
                if v != nil {
                    var model = DatasetProxyConfig()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.datasetProxyRelations = tmp
        }
        if let value = dict["Exif"] as? [String: Any] {
            self.exif = value
        }
        if let value = dict["Tags"] as? [String] {
            self.tags = value
        }
        if let value = dict["TaskName"] as? String {
            self.taskName = value
        }
        if let value = dict["TaskTemplateConfig"] as? [String: Any?] {
            var model = TaskTemplateConfig()
            model.fromMap(value)
            self.taskTemplateConfig = model
        }
        if let value = dict["TaskWorkflow"] as? [Any?] {
            var tmp : [CreateTaskDetail.TaskWorkflow] = []
            for v in value {
                if v != nil {
                    var model = CreateTaskDetail.TaskWorkflow()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.taskWorkflow = tmp
        }
        if let value = dict["TemplateId"] as? String {
            self.templateId = value
        }
        if let value = dict["UUID"] as? String {
            self.UUID = value
        }
        if let value = dict["VoteConfigs"] as? [String: Any?] {
            var tmp : [String: CreateTaskDetailVoteInfo] = [:]
            for (k, v) in value {
                if v != nil {
                    var model = CreateTaskDetailVoteInfo()
                    model.fromMap(v as? [String: Any?])
                    tmp[k] = model
                }
            }
            self.voteConfigs = tmp
        }
    }
}

public class CreateTaskDetailVoteInfo : Tea.TeaModel {
    public var minVote: Int64?

    public var voteNum: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.minVote != nil {
            map["MinVote"] = self.minVote!
        }
        if self.voteNum != nil {
            map["VoteNum"] = self.voteNum!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["MinVote"] as? Int64 {
            self.minVote = value
        }
        if let value = dict["VoteNum"] as? Int64 {
            self.voteNum = value
        }
    }
}

public class DatasetProxyConfig : Tea.TeaModel {
    public var datasetType: String?

    public var source: String?

    public var sourceDatasetId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.datasetType != nil {
            map["DatasetType"] = self.datasetType!
        }
        if self.source != nil {
            map["Source"] = self.source!
        }
        if self.sourceDatasetId != nil {
            map["SourceDatasetId"] = self.sourceDatasetId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["DatasetType"] as? String {
            self.datasetType = value
        }
        if let value = dict["Source"] as? String {
            self.source = value
        }
        if let value = dict["SourceDatasetId"] as? String {
            self.sourceDatasetId = value
        }
    }
}

public class FlowJobInfo : Tea.TeaModel {
    public var display: Bool?

    public var jobId: String?

    public var jobType: String?

    public var messageId: String?

    public var processType: String?

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
        if self.display != nil {
            map["Display"] = self.display!
        }
        if self.jobId != nil {
            map["JobId"] = self.jobId!
        }
        if self.jobType != nil {
            map["JobType"] = self.jobType!
        }
        if self.messageId != nil {
            map["MessageId"] = self.messageId!
        }
        if self.processType != nil {
            map["ProcessType"] = self.processType!
        }
        if self.taskId != nil {
            map["TaskId"] = self.taskId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Display"] as? Bool {
            self.display = value
        }
        if let value = dict["JobId"] as? String {
            self.jobId = value
        }
        if let value = dict["JobType"] as? String {
            self.jobType = value
        }
        if let value = dict["MessageId"] as? String {
            self.messageId = value
        }
        if let value = dict["ProcessType"] as? String {
            self.processType = value
        }
        if let value = dict["TaskId"] as? String {
            self.taskId = value
        }
    }
}

public class Job : Tea.TeaModel {
    public class JobResult : Tea.TeaModel {
        public var resultLink: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.resultLink != nil {
                map["ResultLink"] = self.resultLink!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["ResultLink"] as? String {
                self.resultLink = value
            }
        }
    }
    public var creator: SimpleUser?

    public var gmtCreateTime: String?

    public var gmtModifiedTime: String?

    public var jobId: String?

    public var jobResult: Job.JobResult?

    public var jobType: String?

    public var status: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.creator?.validate()
        try self.jobResult?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.creator != nil {
            map["Creator"] = self.creator?.toMap()
        }
        if self.gmtCreateTime != nil {
            map["GmtCreateTime"] = self.gmtCreateTime!
        }
        if self.gmtModifiedTime != nil {
            map["GmtModifiedTime"] = self.gmtModifiedTime!
        }
        if self.jobId != nil {
            map["JobId"] = self.jobId!
        }
        if self.jobResult != nil {
            map["JobResult"] = self.jobResult?.toMap()
        }
        if self.jobType != nil {
            map["JobType"] = self.jobType!
        }
        if self.status != nil {
            map["Status"] = self.status!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Creator"] as? [String: Any?] {
            var model = SimpleUser()
            model.fromMap(value)
            self.creator = model
        }
        if let value = dict["GmtCreateTime"] as? String {
            self.gmtCreateTime = value
        }
        if let value = dict["GmtModifiedTime"] as? String {
            self.gmtModifiedTime = value
        }
        if let value = dict["JobId"] as? String {
            self.jobId = value
        }
        if let value = dict["JobResult"] as? [String: Any?] {
            var model = Job.JobResult()
            model.fromMap(value)
            self.jobResult = model
        }
        if let value = dict["JobType"] as? String {
            self.jobType = value
        }
        if let value = dict["Status"] as? String {
            self.status = value
        }
    }
}

public class MarkResult : Tea.TeaModel {
    public var isNeedVoteJudge: Bool?

    public var markResult: String?

    public var markResultId: String?

    public var markTime: String?

    public var markTitle: String?

    public var progress: String?

    public var questionId: String?

    public var resultType: String?

    public var userMarkResultId: String?

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
        if self.isNeedVoteJudge != nil {
            map["IsNeedVoteJudge"] = self.isNeedVoteJudge!
        }
        if self.markResult != nil {
            map["MarkResult"] = self.markResult!
        }
        if self.markResultId != nil {
            map["MarkResultId"] = self.markResultId!
        }
        if self.markTime != nil {
            map["MarkTime"] = self.markTime!
        }
        if self.markTitle != nil {
            map["MarkTitle"] = self.markTitle!
        }
        if self.progress != nil {
            map["Progress"] = self.progress!
        }
        if self.questionId != nil {
            map["QuestionId"] = self.questionId!
        }
        if self.resultType != nil {
            map["ResultType"] = self.resultType!
        }
        if self.userMarkResultId != nil {
            map["UserMarkResultId"] = self.userMarkResultId!
        }
        if self.version != nil {
            map["Version"] = self.version!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["IsNeedVoteJudge"] as? Bool {
            self.isNeedVoteJudge = value
        }
        if let value = dict["MarkResult"] as? String {
            self.markResult = value
        }
        if let value = dict["MarkResultId"] as? String {
            self.markResultId = value
        }
        if let value = dict["MarkTime"] as? String {
            self.markTime = value
        }
        if let value = dict["MarkTitle"] as? String {
            self.markTitle = value
        }
        if let value = dict["Progress"] as? String {
            self.progress = value
        }
        if let value = dict["QuestionId"] as? String {
            self.questionId = value
        }
        if let value = dict["ResultType"] as? String {
            self.resultType = value
        }
        if let value = dict["UserMarkResultId"] as? String {
            self.userMarkResultId = value
        }
        if let value = dict["Version"] as? String {
            self.version = value
        }
    }
}

public class OpenDatasetProxyAppendDataRequest : Tea.TeaModel {
    public var bizCode: String?

    public var dataMeta: [[String: String]]?

    public var taskId: String?

    public var traceId: String?

    public var UUID: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.bizCode != nil {
            map["BizCode"] = self.bizCode!
        }
        if self.dataMeta != nil {
            map["DataMeta"] = self.dataMeta!
        }
        if self.taskId != nil {
            map["TaskId"] = self.taskId!
        }
        if self.traceId != nil {
            map["TraceId"] = self.traceId!
        }
        if self.UUID != nil {
            map["UUID"] = self.UUID!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["BizCode"] as? String {
            self.bizCode = value
        }
        if let value = dict["DataMeta"] as? [[String: String]] {
            self.dataMeta = value
        }
        if let value = dict["TaskId"] as? String {
            self.taskId = value
        }
        if let value = dict["TraceId"] as? String {
            self.traceId = value
        }
        if let value = dict["UUID"] as? String {
            self.UUID = value
        }
    }
}

public class QuestionOption : Tea.TeaModel {
    public var children: [QuestionOption]?

    public var color: String?

    public var key: String?

    public var label: String?

    public var remark: String?

    public var shortcut: String?

    public override init() {
        super.init()
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
        if self.color != nil {
            map["Color"] = self.color!
        }
        if self.key != nil {
            map["Key"] = self.key!
        }
        if self.label != nil {
            map["Label"] = self.label!
        }
        if self.remark != nil {
            map["Remark"] = self.remark!
        }
        if self.shortcut != nil {
            map["Shortcut"] = self.shortcut!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Children"] as? [Any?] {
            var tmp : [QuestionOption] = []
            for v in value {
                if v != nil {
                    var model = QuestionOption()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.children = tmp
        }
        if let value = dict["Color"] as? String {
            self.color = value
        }
        if let value = dict["Key"] as? String {
            self.key = value
        }
        if let value = dict["Label"] as? String {
            self.label = value
        }
        if let value = dict["Remark"] as? String {
            self.remark = value
        }
        if let value = dict["Shortcut"] as? String {
            self.shortcut = value
        }
    }
}

public class QuestionPlugin : Tea.TeaModel {
    public var canSelect: Bool?

    public var children: [QuestionPlugin]?

    public var defaultResult: String?

    public var display: Bool?

    public var exif: [String: Any]?

    public var hotKeyMap: String?

    public var markTitle: String?

    public var markTitleAlias: String?

    public var mustFill: Bool?

    public var options: [QuestionOption]?

    public var preOptions: [String]?

    public var questionId: String?

    public var rule: String?

    public var selectGroup: String?

    public var selected: Bool?

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
        if self.canSelect != nil {
            map["CanSelect"] = self.canSelect!
        }
        if self.children != nil {
            var tmp : [Any] = []
            for k in self.children! {
                tmp.append(k.toMap())
            }
            map["Children"] = tmp
        }
        if self.defaultResult != nil {
            map["DefaultResult"] = self.defaultResult!
        }
        if self.display != nil {
            map["Display"] = self.display!
        }
        if self.exif != nil {
            map["Exif"] = self.exif!
        }
        if self.hotKeyMap != nil {
            map["HotKeyMap"] = self.hotKeyMap!
        }
        if self.markTitle != nil {
            map["MarkTitle"] = self.markTitle!
        }
        if self.markTitleAlias != nil {
            map["MarkTitleAlias"] = self.markTitleAlias!
        }
        if self.mustFill != nil {
            map["MustFill"] = self.mustFill!
        }
        if self.options != nil {
            var tmp : [Any] = []
            for k in self.options! {
                tmp.append(k.toMap())
            }
            map["Options"] = tmp
        }
        if self.preOptions != nil {
            map["PreOptions"] = self.preOptions!
        }
        if self.questionId != nil {
            map["QuestionId"] = self.questionId!
        }
        if self.rule != nil {
            map["Rule"] = self.rule!
        }
        if self.selectGroup != nil {
            map["SelectGroup"] = self.selectGroup!
        }
        if self.selected != nil {
            map["Selected"] = self.selected!
        }
        if self.type != nil {
            map["Type"] = self.type!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["CanSelect"] as? Bool {
            self.canSelect = value
        }
        if let value = dict["Children"] as? [Any?] {
            var tmp : [QuestionPlugin] = []
            for v in value {
                if v != nil {
                    var model = QuestionPlugin()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.children = tmp
        }
        if let value = dict["DefaultResult"] as? String {
            self.defaultResult = value
        }
        if let value = dict["Display"] as? Bool {
            self.display = value
        }
        if let value = dict["Exif"] as? [String: Any] {
            self.exif = value
        }
        if let value = dict["HotKeyMap"] as? String {
            self.hotKeyMap = value
        }
        if let value = dict["MarkTitle"] as? String {
            self.markTitle = value
        }
        if let value = dict["MarkTitleAlias"] as? String {
            self.markTitleAlias = value
        }
        if let value = dict["MustFill"] as? Bool {
            self.mustFill = value
        }
        if let value = dict["Options"] as? [Any?] {
            var tmp : [QuestionOption] = []
            for v in value {
                if v != nil {
                    var model = QuestionOption()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.options = tmp
        }
        if let value = dict["PreOptions"] as? [String] {
            self.preOptions = value
        }
        if let value = dict["QuestionId"] as? String {
            self.questionId = value
        }
        if let value = dict["Rule"] as? String {
            self.rule = value
        }
        if let value = dict["SelectGroup"] as? String {
            self.selectGroup = value
        }
        if let value = dict["Selected"] as? Bool {
            self.selected = value
        }
        if let value = dict["Type"] as? String {
            self.type = value
        }
    }
}

public class SimpleSubtask : Tea.TeaModel {
    public class Items : Tea.TeaModel {
        public var abandonFlag: Bool?

        public var abandonRemark: String?

        public var dataId: String?

        public var feedbackFlag: Bool?

        public var feedbackRemark: String?

        public var fixedFlag: Bool?

        public var itemId: Int64?

        public var mine: Int64?

        public var rejectFlag: Bool?

        public var state: String?

        public var weight: Int64?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.abandonFlag != nil {
                map["AbandonFlag"] = self.abandonFlag!
            }
            if self.abandonRemark != nil {
                map["AbandonRemark"] = self.abandonRemark!
            }
            if self.dataId != nil {
                map["DataId"] = self.dataId!
            }
            if self.feedbackFlag != nil {
                map["FeedbackFlag"] = self.feedbackFlag!
            }
            if self.feedbackRemark != nil {
                map["FeedbackRemark"] = self.feedbackRemark!
            }
            if self.fixedFlag != nil {
                map["FixedFlag"] = self.fixedFlag!
            }
            if self.itemId != nil {
                map["ItemId"] = self.itemId!
            }
            if self.mine != nil {
                map["Mine"] = self.mine!
            }
            if self.rejectFlag != nil {
                map["RejectFlag"] = self.rejectFlag!
            }
            if self.state != nil {
                map["State"] = self.state!
            }
            if self.weight != nil {
                map["Weight"] = self.weight!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["AbandonFlag"] as? Bool {
                self.abandonFlag = value
            }
            if let value = dict["AbandonRemark"] as? String {
                self.abandonRemark = value
            }
            if let value = dict["DataId"] as? String {
                self.dataId = value
            }
            if let value = dict["FeedbackFlag"] as? Bool {
                self.feedbackFlag = value
            }
            if let value = dict["FeedbackRemark"] as? String {
                self.feedbackRemark = value
            }
            if let value = dict["FixedFlag"] as? Bool {
                self.fixedFlag = value
            }
            if let value = dict["ItemId"] as? Int64 {
                self.itemId = value
            }
            if let value = dict["Mine"] as? Int64 {
                self.mine = value
            }
            if let value = dict["RejectFlag"] as? Bool {
                self.rejectFlag = value
            }
            if let value = dict["State"] as? String {
                self.state = value
            }
            if let value = dict["Weight"] as? Int64 {
                self.weight = value
            }
        }
    }
    public var items: [SimpleSubtask.Items]?

    public var status: String?

    public var subtaskId: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.items != nil {
            var tmp : [Any] = []
            for k in self.items! {
                tmp.append(k.toMap())
            }
            map["Items"] = tmp
        }
        if self.status != nil {
            map["Status"] = self.status!
        }
        if self.subtaskId != nil {
            map["SubtaskId"] = self.subtaskId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Items"] as? [Any?] {
            var tmp : [SimpleSubtask.Items] = []
            for v in value {
                if v != nil {
                    var model = SimpleSubtask.Items()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.items = tmp
        }
        if let value = dict["Status"] as? String {
            self.status = value
        }
        if let value = dict["SubtaskId"] as? Int64 {
            self.subtaskId = value
        }
    }
}

public class SimpleTask : Tea.TeaModel {
    public var archived: Bool?

    public var archivedInfos: String?

    public var creator: SimpleUser?

    public var gmtCreateTime: String?

    public var gmtModifiedTime: String?

    public var labelStyle: String?

    public var modifier: SimpleUser?

    public var refTaskId: String?

    public var remark: String?

    public var stage: String?

    public var status: String?

    public var tags: [String]?

    public var taskId: String?

    public var taskName: String?

    public var taskType: String?

    public var templateId: String?

    public var tenantId: String?

    public var UUID: String?

    public var workflowNodes: [String]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.creator?.validate()
        try self.modifier?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.archived != nil {
            map["Archived"] = self.archived!
        }
        if self.archivedInfos != nil {
            map["ArchivedInfos"] = self.archivedInfos!
        }
        if self.creator != nil {
            map["Creator"] = self.creator?.toMap()
        }
        if self.gmtCreateTime != nil {
            map["GmtCreateTime"] = self.gmtCreateTime!
        }
        if self.gmtModifiedTime != nil {
            map["GmtModifiedTime"] = self.gmtModifiedTime!
        }
        if self.labelStyle != nil {
            map["LabelStyle"] = self.labelStyle!
        }
        if self.modifier != nil {
            map["Modifier"] = self.modifier?.toMap()
        }
        if self.refTaskId != nil {
            map["RefTaskId"] = self.refTaskId!
        }
        if self.remark != nil {
            map["Remark"] = self.remark!
        }
        if self.stage != nil {
            map["Stage"] = self.stage!
        }
        if self.status != nil {
            map["Status"] = self.status!
        }
        if self.tags != nil {
            map["Tags"] = self.tags!
        }
        if self.taskId != nil {
            map["TaskId"] = self.taskId!
        }
        if self.taskName != nil {
            map["TaskName"] = self.taskName!
        }
        if self.taskType != nil {
            map["TaskType"] = self.taskType!
        }
        if self.templateId != nil {
            map["TemplateId"] = self.templateId!
        }
        if self.tenantId != nil {
            map["TenantId"] = self.tenantId!
        }
        if self.UUID != nil {
            map["UUID"] = self.UUID!
        }
        if self.workflowNodes != nil {
            map["WorkflowNodes"] = self.workflowNodes!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Archived"] as? Bool {
            self.archived = value
        }
        if let value = dict["ArchivedInfos"] as? String {
            self.archivedInfos = value
        }
        if let value = dict["Creator"] as? [String: Any?] {
            var model = SimpleUser()
            model.fromMap(value)
            self.creator = model
        }
        if let value = dict["GmtCreateTime"] as? String {
            self.gmtCreateTime = value
        }
        if let value = dict["GmtModifiedTime"] as? String {
            self.gmtModifiedTime = value
        }
        if let value = dict["LabelStyle"] as? String {
            self.labelStyle = value
        }
        if let value = dict["Modifier"] as? [String: Any?] {
            var model = SimpleUser()
            model.fromMap(value)
            self.modifier = model
        }
        if let value = dict["RefTaskId"] as? String {
            self.refTaskId = value
        }
        if let value = dict["Remark"] as? String {
            self.remark = value
        }
        if let value = dict["Stage"] as? String {
            self.stage = value
        }
        if let value = dict["Status"] as? String {
            self.status = value
        }
        if let value = dict["Tags"] as? [String] {
            self.tags = value
        }
        if let value = dict["TaskId"] as? String {
            self.taskId = value
        }
        if let value = dict["TaskName"] as? String {
            self.taskName = value
        }
        if let value = dict["TaskType"] as? String {
            self.taskType = value
        }
        if let value = dict["TemplateId"] as? String {
            self.templateId = value
        }
        if let value = dict["TenantId"] as? String {
            self.tenantId = value
        }
        if let value = dict["UUID"] as? String {
            self.UUID = value
        }
        if let value = dict["WorkflowNodes"] as? [String] {
            self.workflowNodes = value
        }
    }
}

public class SimpleTemplate : Tea.TeaModel {
    public var abandonReasons: String?

    public var description_: String?

    public var gmtCreateTime: String?

    public var gmtModifiedTime: String?

    public var sharedMode: String?

    public var status: String?

    public var tags: [String]?

    public var templateId: String?

    public var templateName: String?

    public var tenantId: String?

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
        if self.abandonReasons != nil {
            map["AbandonReasons"] = self.abandonReasons!
        }
        if self.description_ != nil {
            map["Description"] = self.description_!
        }
        if self.gmtCreateTime != nil {
            map["GmtCreateTime"] = self.gmtCreateTime!
        }
        if self.gmtModifiedTime != nil {
            map["GmtModifiedTime"] = self.gmtModifiedTime!
        }
        if self.sharedMode != nil {
            map["SharedMode"] = self.sharedMode!
        }
        if self.status != nil {
            map["Status"] = self.status!
        }
        if self.tags != nil {
            map["Tags"] = self.tags!
        }
        if self.templateId != nil {
            map["TemplateId"] = self.templateId!
        }
        if self.templateName != nil {
            map["TemplateName"] = self.templateName!
        }
        if self.tenantId != nil {
            map["TenantId"] = self.tenantId!
        }
        if self.type != nil {
            map["Type"] = self.type!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AbandonReasons"] as? String {
            self.abandonReasons = value
        }
        if let value = dict["Description"] as? String {
            self.description_ = value
        }
        if let value = dict["GmtCreateTime"] as? String {
            self.gmtCreateTime = value
        }
        if let value = dict["GmtModifiedTime"] as? String {
            self.gmtModifiedTime = value
        }
        if let value = dict["SharedMode"] as? String {
            self.sharedMode = value
        }
        if let value = dict["Status"] as? String {
            self.status = value
        }
        if let value = dict["Tags"] as? [String] {
            self.tags = value
        }
        if let value = dict["TemplateId"] as? String {
            self.templateId = value
        }
        if let value = dict["TemplateName"] as? String {
            self.templateName = value
        }
        if let value = dict["TenantId"] as? String {
            self.tenantId = value
        }
        if let value = dict["Type"] as? String {
            self.type = value
        }
    }
}

public class SimpleTenant : Tea.TeaModel {
    public var creator: SimpleUser?

    public var description_: String?

    public var gmtCreateTime: String?

    public var gmtModifiedTime: String?

    public var modifier: SimpleUser?

    public var role: String?

    public var tenantId: String?

    public var tenantName: String?

    public var UUID: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.creator?.validate()
        try self.modifier?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.creator != nil {
            map["Creator"] = self.creator?.toMap()
        }
        if self.description_ != nil {
            map["Description"] = self.description_!
        }
        if self.gmtCreateTime != nil {
            map["GmtCreateTime"] = self.gmtCreateTime!
        }
        if self.gmtModifiedTime != nil {
            map["GmtModifiedTime"] = self.gmtModifiedTime!
        }
        if self.modifier != nil {
            map["Modifier"] = self.modifier?.toMap()
        }
        if self.role != nil {
            map["Role"] = self.role!
        }
        if self.tenantId != nil {
            map["TenantId"] = self.tenantId!
        }
        if self.tenantName != nil {
            map["TenantName"] = self.tenantName!
        }
        if self.UUID != nil {
            map["UUID"] = self.UUID!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Creator"] as? [String: Any?] {
            var model = SimpleUser()
            model.fromMap(value)
            self.creator = model
        }
        if let value = dict["Description"] as? String {
            self.description_ = value
        }
        if let value = dict["GmtCreateTime"] as? String {
            self.gmtCreateTime = value
        }
        if let value = dict["GmtModifiedTime"] as? String {
            self.gmtModifiedTime = value
        }
        if let value = dict["Modifier"] as? [String: Any?] {
            var model = SimpleUser()
            model.fromMap(value)
            self.modifier = model
        }
        if let value = dict["Role"] as? String {
            self.role = value
        }
        if let value = dict["TenantId"] as? String {
            self.tenantId = value
        }
        if let value = dict["TenantName"] as? String {
            self.tenantName = value
        }
        if let value = dict["UUID"] as? String {
            self.UUID = value
        }
    }
}

public class SimpleUser : Tea.TeaModel {
    public var accountNo: String?

    public var accountType: String?

    public var role: String?

    public var userId: Int64?

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
        if self.accountNo != nil {
            map["AccountNo"] = self.accountNo!
        }
        if self.accountType != nil {
            map["AccountType"] = self.accountType!
        }
        if self.role != nil {
            map["Role"] = self.role!
        }
        if self.userId != nil {
            map["UserId"] = self.userId!
        }
        if self.userName != nil {
            map["UserName"] = self.userName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AccountNo"] as? String {
            self.accountNo = value
        }
        if let value = dict["AccountType"] as? String {
            self.accountType = value
        }
        if let value = dict["Role"] as? String {
            self.role = value
        }
        if let value = dict["UserId"] as? Int64 {
            self.userId = value
        }
        if let value = dict["UserName"] as? String {
            self.userName = value
        }
    }
}

public class SimpleWorkforce : Tea.TeaModel {
    public var userIds: [Int64]?

    public var workNodeId: Int32?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.userIds != nil {
            map["UserIds"] = self.userIds!
        }
        if self.workNodeId != nil {
            map["WorkNodeId"] = self.workNodeId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["UserIds"] as? [Int64] {
            self.userIds = value
        }
        if let value = dict["WorkNodeId"] as? Int32 {
            self.workNodeId = value
        }
    }
}

public class SingleTenant : Tea.TeaModel {
    public var description_: String?

    public var status: String?

    public var tenantId: String?

    public var tenantName: String?

    public var UUID: String?

    public override init() {
        super.init()
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
        if self.status != nil {
            map["Status"] = self.status!
        }
        if self.tenantId != nil {
            map["TenantId"] = self.tenantId!
        }
        if self.tenantName != nil {
            map["TenantName"] = self.tenantName!
        }
        if self.UUID != nil {
            map["UUID"] = self.UUID!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Description"] as? String {
            self.description_ = value
        }
        if let value = dict["Status"] as? String {
            self.status = value
        }
        if let value = dict["TenantId"] as? String {
            self.tenantId = value
        }
        if let value = dict["TenantName"] as? String {
            self.tenantName = value
        }
        if let value = dict["UUID"] as? String {
            self.UUID = value
        }
    }
}

public class SubtaskDetail : Tea.TeaModel {
    public class Items : Tea.TeaModel {
        public var abandonFlag: Bool?

        public var abandonRemark: String?

        public var dataId: String?

        public var feedbackFlag: Bool?

        public var feedbackRemark: String?

        public var fixedFlag: Bool?

        public var mine: Int64?

        public var rejectFlag: Bool?

        public var state: String?

        public var weight: Int64?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.abandonFlag != nil {
                map["AbandonFlag"] = self.abandonFlag!
            }
            if self.abandonRemark != nil {
                map["AbandonRemark"] = self.abandonRemark!
            }
            if self.dataId != nil {
                map["DataId"] = self.dataId!
            }
            if self.feedbackFlag != nil {
                map["FeedbackFlag"] = self.feedbackFlag!
            }
            if self.feedbackRemark != nil {
                map["FeedbackRemark"] = self.feedbackRemark!
            }
            if self.fixedFlag != nil {
                map["FixedFlag"] = self.fixedFlag!
            }
            if self.mine != nil {
                map["Mine"] = self.mine!
            }
            if self.rejectFlag != nil {
                map["RejectFlag"] = self.rejectFlag!
            }
            if self.state != nil {
                map["State"] = self.state!
            }
            if self.weight != nil {
                map["Weight"] = self.weight!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["AbandonFlag"] as? Bool {
                self.abandonFlag = value
            }
            if let value = dict["AbandonRemark"] as? String {
                self.abandonRemark = value
            }
            if let value = dict["DataId"] as? String {
                self.dataId = value
            }
            if let value = dict["FeedbackFlag"] as? Bool {
                self.feedbackFlag = value
            }
            if let value = dict["FeedbackRemark"] as? String {
                self.feedbackRemark = value
            }
            if let value = dict["FixedFlag"] as? Bool {
                self.fixedFlag = value
            }
            if let value = dict["Mine"] as? Int64 {
                self.mine = value
            }
            if let value = dict["RejectFlag"] as? Bool {
                self.rejectFlag = value
            }
            if let value = dict["State"] as? String {
                self.state = value
            }
            if let value = dict["Weight"] as? Int64 {
                self.weight = value
            }
        }
    }
    public var canDiscard: Bool?

    public var canReassign: Bool?

    public var canRelease: Bool?

    public var currentWorkNode: String?

    public var extConfigs: String?

    public var items: [SubtaskDetail.Items]?

    public var status: String?

    public var subtaskId: String?

    public var taskId: String?

    public var weight: Int64?

    public var workNodeState: String?

    public var workforce: [Workforce]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.canDiscard != nil {
            map["CanDiscard"] = self.canDiscard!
        }
        if self.canReassign != nil {
            map["CanReassign"] = self.canReassign!
        }
        if self.canRelease != nil {
            map["CanRelease"] = self.canRelease!
        }
        if self.currentWorkNode != nil {
            map["CurrentWorkNode"] = self.currentWorkNode!
        }
        if self.extConfigs != nil {
            map["ExtConfigs"] = self.extConfigs!
        }
        if self.items != nil {
            var tmp : [Any] = []
            for k in self.items! {
                tmp.append(k.toMap())
            }
            map["Items"] = tmp
        }
        if self.status != nil {
            map["Status"] = self.status!
        }
        if self.subtaskId != nil {
            map["SubtaskId"] = self.subtaskId!
        }
        if self.taskId != nil {
            map["TaskId"] = self.taskId!
        }
        if self.weight != nil {
            map["Weight"] = self.weight!
        }
        if self.workNodeState != nil {
            map["WorkNodeState"] = self.workNodeState!
        }
        if self.workforce != nil {
            var tmp : [Any] = []
            for k in self.workforce! {
                tmp.append(k.toMap())
            }
            map["Workforce"] = tmp
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["CanDiscard"] as? Bool {
            self.canDiscard = value
        }
        if let value = dict["CanReassign"] as? Bool {
            self.canReassign = value
        }
        if let value = dict["CanRelease"] as? Bool {
            self.canRelease = value
        }
        if let value = dict["CurrentWorkNode"] as? String {
            self.currentWorkNode = value
        }
        if let value = dict["ExtConfigs"] as? String {
            self.extConfigs = value
        }
        if let value = dict["Items"] as? [Any?] {
            var tmp : [SubtaskDetail.Items] = []
            for v in value {
                if v != nil {
                    var model = SubtaskDetail.Items()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.items = tmp
        }
        if let value = dict["Status"] as? String {
            self.status = value
        }
        if let value = dict["SubtaskId"] as? String {
            self.subtaskId = value
        }
        if let value = dict["TaskId"] as? String {
            self.taskId = value
        }
        if let value = dict["Weight"] as? Int64 {
            self.weight = value
        }
        if let value = dict["WorkNodeState"] as? String {
            self.workNodeState = value
        }
        if let value = dict["Workforce"] as? [Any?] {
            var tmp : [Workforce] = []
            for v in value {
                if v != nil {
                    var model = Workforce()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.workforce = tmp
        }
    }
}

public class SubtaskItemDetail : Tea.TeaModel {
    public class Annotations : Tea.TeaModel {
        public var abandonFlag: Bool?

        public var abandonRemark: String?

        public var dataId: String?

        public var feedbackFlag: Bool?

        public var feedbackRemark: String?

        public var fixedFlag: Bool?

        public var mine: Int64?

        public var rejectFlag: Bool?

        public var state: String?

        public var weight: Int64?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.abandonFlag != nil {
                map["AbandonFlag"] = self.abandonFlag!
            }
            if self.abandonRemark != nil {
                map["AbandonRemark"] = self.abandonRemark!
            }
            if self.dataId != nil {
                map["DataId"] = self.dataId!
            }
            if self.feedbackFlag != nil {
                map["FeedbackFlag"] = self.feedbackFlag!
            }
            if self.feedbackRemark != nil {
                map["FeedbackRemark"] = self.feedbackRemark!
            }
            if self.fixedFlag != nil {
                map["FixedFlag"] = self.fixedFlag!
            }
            if self.mine != nil {
                map["Mine"] = self.mine!
            }
            if self.rejectFlag != nil {
                map["RejectFlag"] = self.rejectFlag!
            }
            if self.state != nil {
                map["State"] = self.state!
            }
            if self.weight != nil {
                map["Weight"] = self.weight!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["AbandonFlag"] as? Bool {
                self.abandonFlag = value
            }
            if let value = dict["AbandonRemark"] as? String {
                self.abandonRemark = value
            }
            if let value = dict["DataId"] as? String {
                self.dataId = value
            }
            if let value = dict["FeedbackFlag"] as? Bool {
                self.feedbackFlag = value
            }
            if let value = dict["FeedbackRemark"] as? String {
                self.feedbackRemark = value
            }
            if let value = dict["FixedFlag"] as? Bool {
                self.fixedFlag = value
            }
            if let value = dict["Mine"] as? Int64 {
                self.mine = value
            }
            if let value = dict["RejectFlag"] as? Bool {
                self.rejectFlag = value
            }
            if let value = dict["State"] as? String {
                self.state = value
            }
            if let value = dict["Weight"] as? Int64 {
                self.weight = value
            }
        }
    }
    public var annotations: [SubtaskItemDetail.Annotations]?

    public var dataSource: [String: Any]?

    public var itemId: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.annotations != nil {
            var tmp : [Any] = []
            for k in self.annotations! {
                tmp.append(k.toMap())
            }
            map["Annotations"] = tmp
        }
        if self.dataSource != nil {
            map["DataSource"] = self.dataSource!
        }
        if self.itemId != nil {
            map["ItemId"] = self.itemId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Annotations"] as? [Any?] {
            var tmp : [SubtaskItemDetail.Annotations] = []
            for v in value {
                if v != nil {
                    var model = SubtaskItemDetail.Annotations()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.annotations = tmp
        }
        if let value = dict["DataSource"] as? [String: Any] {
            self.dataSource = value
        }
        if let value = dict["ItemId"] as? Int64 {
            self.itemId = value
        }
    }
}

public class TaskAssginConfig : Tea.TeaModel {
    public var assignCount: Int64?

    public var assignField: String?

    public var assignSubTaskCount: String?

    public var assignType: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.assignCount != nil {
            map["AssignCount"] = self.assignCount!
        }
        if self.assignField != nil {
            map["AssignField"] = self.assignField!
        }
        if self.assignSubTaskCount != nil {
            map["AssignSubTaskCount"] = self.assignSubTaskCount!
        }
        if self.assignType != nil {
            map["AssignType"] = self.assignType!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AssignCount"] as? Int64 {
            self.assignCount = value
        }
        if let value = dict["AssignField"] as? String {
            self.assignField = value
        }
        if let value = dict["AssignSubTaskCount"] as? String {
            self.assignSubTaskCount = value
        }
        if let value = dict["AssignType"] as? String {
            self.assignType = value
        }
    }
}

public class TaskDetail : Tea.TeaModel {
    public class DatasetProxyRelations : Tea.TeaModel {
        public var datasetId: String?

        public var datasetType: String?

        public var exif: [String: Any]?

        public var source: String?

        public var sourceBizId: String?

        public var sourceDatasetId: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.datasetId != nil {
                map["DatasetId"] = self.datasetId!
            }
            if self.datasetType != nil {
                map["DatasetType"] = self.datasetType!
            }
            if self.exif != nil {
                map["Exif"] = self.exif!
            }
            if self.source != nil {
                map["Source"] = self.source!
            }
            if self.sourceBizId != nil {
                map["SourceBizId"] = self.sourceBizId!
            }
            if self.sourceDatasetId != nil {
                map["SourceDatasetId"] = self.sourceDatasetId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["DatasetId"] as? String {
                self.datasetId = value
            }
            if let value = dict["DatasetType"] as? String {
                self.datasetType = value
            }
            if let value = dict["Exif"] as? [String: Any] {
                self.exif = value
            }
            if let value = dict["Source"] as? String {
                self.source = value
            }
            if let value = dict["SourceBizId"] as? String {
                self.sourceBizId = value
            }
            if let value = dict["SourceDatasetId"] as? String {
                self.sourceDatasetId = value
            }
        }
    }
    public class TaskTemplateConfig : Tea.TeaModel {
        public var exif: [String: Any]?

        public var resourceKey: String?

        public var robotConfig: [String: Any]?

        public var selectQuestions: [String]?

        public var templateOptionMap: [String: Any]?

        public var templateRelationId: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.exif != nil {
                map["Exif"] = self.exif!
            }
            if self.resourceKey != nil {
                map["ResourceKey"] = self.resourceKey!
            }
            if self.robotConfig != nil {
                map["RobotConfig"] = self.robotConfig!
            }
            if self.selectQuestions != nil {
                map["SelectQuestions"] = self.selectQuestions!
            }
            if self.templateOptionMap != nil {
                map["TemplateOptionMap"] = self.templateOptionMap!
            }
            if self.templateRelationId != nil {
                map["TemplateRelationId"] = self.templateRelationId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Exif"] as? [String: Any] {
                self.exif = value
            }
            if let value = dict["ResourceKey"] as? String {
                self.resourceKey = value
            }
            if let value = dict["RobotConfig"] as? [String: Any] {
                self.robotConfig = value
            }
            if let value = dict["SelectQuestions"] as? [String] {
                self.selectQuestions = value
            }
            if let value = dict["TemplateOptionMap"] as? [String: Any] {
                self.templateOptionMap = value
            }
            if let value = dict["TemplateRelationId"] as? String {
                self.templateRelationId = value
            }
        }
    }
    public class TaskWorkflow : Tea.TeaModel {
        public var exif: [String: Any]?

        public var groups: [String]?

        public var nodeName: String?

        public var users: [SimpleUser]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.exif != nil {
                map["Exif"] = self.exif!
            }
            if self.groups != nil {
                map["Groups"] = self.groups!
            }
            if self.nodeName != nil {
                map["NodeName"] = self.nodeName!
            }
            if self.users != nil {
                var tmp : [Any] = []
                for k in self.users! {
                    tmp.append(k.toMap())
                }
                map["Users"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Exif"] as? [String: Any] {
                self.exif = value
            }
            if let value = dict["Groups"] as? [String] {
                self.groups = value
            }
            if let value = dict["NodeName"] as? String {
                self.nodeName = value
            }
            if let value = dict["Users"] as? [Any?] {
                var tmp : [SimpleUser] = []
                for v in value {
                    if v != nil {
                        var model = SimpleUser()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.users = tmp
            }
        }
    }
    public var admins: [SimpleUser]?

    public var alertTime: Int64?

    public var allowAppendData: Bool?

    public var archived: Bool?

    public var archivedInfos: String?

    public var assignConfig: [String: Any]?

    public var creator: SimpleUser?

    public var datasetProxyRelations: [TaskDetail.DatasetProxyRelations]?

    public var exif: [String: Any]?

    public var gmtCreateTime: String?

    public var gmtModifiedTime: String?

    public var labelStyle: String?

    public var mineConfigs: [String: Any]?

    public var modifier: SimpleUser?

    public var noticeConfig: [String: Any]?

    public var periodConfig: [String: Any]?

    public var refTaskId: String?

    public var relateTaskConfig: [String: Any]?

    public var remark: String?

    public var resultCallbackConfig: [String: Any]?

    public var stage: String?

    public var status: String?

    public var tags: [String]?

    public var taskId: String?

    public var taskName: String?

    public var taskTemplateConfig: TaskDetail.TaskTemplateConfig?

    public var taskType: String?

    public var taskWorkflow: [TaskDetail.TaskWorkflow]?

    public var templateId: String?

    public var tenantId: String?

    public var tenantName: String?

    public var UUID: String?

    public var voteConfigs: [String: Any]?

    public var workflowNodes: [String]?

    public var runMsg: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.creator?.validate()
        try self.modifier?.validate()
        try self.taskTemplateConfig?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.admins != nil {
            var tmp : [Any] = []
            for k in self.admins! {
                tmp.append(k.toMap())
            }
            map["Admins"] = tmp
        }
        if self.alertTime != nil {
            map["AlertTime"] = self.alertTime!
        }
        if self.allowAppendData != nil {
            map["AllowAppendData"] = self.allowAppendData!
        }
        if self.archived != nil {
            map["Archived"] = self.archived!
        }
        if self.archivedInfos != nil {
            map["ArchivedInfos"] = self.archivedInfos!
        }
        if self.assignConfig != nil {
            map["AssignConfig"] = self.assignConfig!
        }
        if self.creator != nil {
            map["Creator"] = self.creator?.toMap()
        }
        if self.datasetProxyRelations != nil {
            var tmp : [Any] = []
            for k in self.datasetProxyRelations! {
                tmp.append(k.toMap())
            }
            map["DatasetProxyRelations"] = tmp
        }
        if self.exif != nil {
            map["Exif"] = self.exif!
        }
        if self.gmtCreateTime != nil {
            map["GmtCreateTime"] = self.gmtCreateTime!
        }
        if self.gmtModifiedTime != nil {
            map["GmtModifiedTime"] = self.gmtModifiedTime!
        }
        if self.labelStyle != nil {
            map["LabelStyle"] = self.labelStyle!
        }
        if self.mineConfigs != nil {
            map["MineConfigs"] = self.mineConfigs!
        }
        if self.modifier != nil {
            map["Modifier"] = self.modifier?.toMap()
        }
        if self.noticeConfig != nil {
            map["NoticeConfig"] = self.noticeConfig!
        }
        if self.periodConfig != nil {
            map["PeriodConfig"] = self.periodConfig!
        }
        if self.refTaskId != nil {
            map["RefTaskId"] = self.refTaskId!
        }
        if self.relateTaskConfig != nil {
            map["RelateTaskConfig"] = self.relateTaskConfig!
        }
        if self.remark != nil {
            map["Remark"] = self.remark!
        }
        if self.resultCallbackConfig != nil {
            map["ResultCallbackConfig"] = self.resultCallbackConfig!
        }
        if self.stage != nil {
            map["Stage"] = self.stage!
        }
        if self.status != nil {
            map["Status"] = self.status!
        }
        if self.tags != nil {
            map["Tags"] = self.tags!
        }
        if self.taskId != nil {
            map["TaskId"] = self.taskId!
        }
        if self.taskName != nil {
            map["TaskName"] = self.taskName!
        }
        if self.taskTemplateConfig != nil {
            map["TaskTemplateConfig"] = self.taskTemplateConfig?.toMap()
        }
        if self.taskType != nil {
            map["TaskType"] = self.taskType!
        }
        if self.taskWorkflow != nil {
            var tmp : [Any] = []
            for k in self.taskWorkflow! {
                tmp.append(k.toMap())
            }
            map["TaskWorkflow"] = tmp
        }
        if self.templateId != nil {
            map["TemplateId"] = self.templateId!
        }
        if self.tenantId != nil {
            map["TenantId"] = self.tenantId!
        }
        if self.tenantName != nil {
            map["TenantName"] = self.tenantName!
        }
        if self.UUID != nil {
            map["UUID"] = self.UUID!
        }
        if self.voteConfigs != nil {
            map["VoteConfigs"] = self.voteConfigs!
        }
        if self.workflowNodes != nil {
            map["WorkflowNodes"] = self.workflowNodes!
        }
        if self.runMsg != nil {
            map["runMsg"] = self.runMsg!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Admins"] as? [Any?] {
            var tmp : [SimpleUser] = []
            for v in value {
                if v != nil {
                    var model = SimpleUser()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.admins = tmp
        }
        if let value = dict["AlertTime"] as? Int64 {
            self.alertTime = value
        }
        if let value = dict["AllowAppendData"] as? Bool {
            self.allowAppendData = value
        }
        if let value = dict["Archived"] as? Bool {
            self.archived = value
        }
        if let value = dict["ArchivedInfos"] as? String {
            self.archivedInfos = value
        }
        if let value = dict["AssignConfig"] as? [String: Any] {
            self.assignConfig = value
        }
        if let value = dict["Creator"] as? [String: Any?] {
            var model = SimpleUser()
            model.fromMap(value)
            self.creator = model
        }
        if let value = dict["DatasetProxyRelations"] as? [Any?] {
            var tmp : [TaskDetail.DatasetProxyRelations] = []
            for v in value {
                if v != nil {
                    var model = TaskDetail.DatasetProxyRelations()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.datasetProxyRelations = tmp
        }
        if let value = dict["Exif"] as? [String: Any] {
            self.exif = value
        }
        if let value = dict["GmtCreateTime"] as? String {
            self.gmtCreateTime = value
        }
        if let value = dict["GmtModifiedTime"] as? String {
            self.gmtModifiedTime = value
        }
        if let value = dict["LabelStyle"] as? String {
            self.labelStyle = value
        }
        if let value = dict["MineConfigs"] as? [String: Any] {
            self.mineConfigs = value
        }
        if let value = dict["Modifier"] as? [String: Any?] {
            var model = SimpleUser()
            model.fromMap(value)
            self.modifier = model
        }
        if let value = dict["NoticeConfig"] as? [String: Any] {
            self.noticeConfig = value
        }
        if let value = dict["PeriodConfig"] as? [String: Any] {
            self.periodConfig = value
        }
        if let value = dict["RefTaskId"] as? String {
            self.refTaskId = value
        }
        if let value = dict["RelateTaskConfig"] as? [String: Any] {
            self.relateTaskConfig = value
        }
        if let value = dict["Remark"] as? String {
            self.remark = value
        }
        if let value = dict["ResultCallbackConfig"] as? [String: Any] {
            self.resultCallbackConfig = value
        }
        if let value = dict["Stage"] as? String {
            self.stage = value
        }
        if let value = dict["Status"] as? String {
            self.status = value
        }
        if let value = dict["Tags"] as? [String] {
            self.tags = value
        }
        if let value = dict["TaskId"] as? String {
            self.taskId = value
        }
        if let value = dict["TaskName"] as? String {
            self.taskName = value
        }
        if let value = dict["TaskTemplateConfig"] as? [String: Any?] {
            var model = TaskDetail.TaskTemplateConfig()
            model.fromMap(value)
            self.taskTemplateConfig = model
        }
        if let value = dict["TaskType"] as? String {
            self.taskType = value
        }
        if let value = dict["TaskWorkflow"] as? [Any?] {
            var tmp : [TaskDetail.TaskWorkflow] = []
            for v in value {
                if v != nil {
                    var model = TaskDetail.TaskWorkflow()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.taskWorkflow = tmp
        }
        if let value = dict["TemplateId"] as? String {
            self.templateId = value
        }
        if let value = dict["TenantId"] as? String {
            self.tenantId = value
        }
        if let value = dict["TenantName"] as? String {
            self.tenantName = value
        }
        if let value = dict["UUID"] as? String {
            self.UUID = value
        }
        if let value = dict["VoteConfigs"] as? [String: Any] {
            self.voteConfigs = value
        }
        if let value = dict["WorkflowNodes"] as? [String] {
            self.workflowNodes = value
        }
        if let value = dict["runMsg"] as? String {
            self.runMsg = value
        }
    }
}

public class TaskStatistic : Tea.TeaModel {
    public var acceptItemCount: Double?

    public var checkAbandon: Double?

    public var checkAccuracy: Double?

    public var checkEfficiency: Double?

    public var checkedAccuracy: Double?

    public var checkedError: Double?

    public var checkedRejectCount: Double?

    public var finalAbandonCount: Double?

    public var finishedItemCount: Int64?

    public var finishedSubtaskCount: Int64?

    public var markEfficiency: Double?

    public var preMarkFixedCount: Double?

    public var sampledAccuracy: Double?

    public var sampledErrorCount: Double?

    public var sampledRejectCount: Double?

    public var samplingAccuracy: Double?

    public var totalCheckCount: Double?

    public var totalCheckTime: Double?

    public var totalCheckedCount: Double?

    public var totalItemCount: Int64?

    public var totalMarkTime: Double?

    public var totalSampledCount: Double?

    public var totalSamplingCount: Double?

    public var totalSubtaskCount: Int64?

    public var totalWorkTime: Double?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.acceptItemCount != nil {
            map["AcceptItemCount"] = self.acceptItemCount!
        }
        if self.checkAbandon != nil {
            map["CheckAbandon"] = self.checkAbandon!
        }
        if self.checkAccuracy != nil {
            map["CheckAccuracy"] = self.checkAccuracy!
        }
        if self.checkEfficiency != nil {
            map["CheckEfficiency"] = self.checkEfficiency!
        }
        if self.checkedAccuracy != nil {
            map["CheckedAccuracy"] = self.checkedAccuracy!
        }
        if self.checkedError != nil {
            map["CheckedError"] = self.checkedError!
        }
        if self.checkedRejectCount != nil {
            map["CheckedRejectCount"] = self.checkedRejectCount!
        }
        if self.finalAbandonCount != nil {
            map["FinalAbandonCount"] = self.finalAbandonCount!
        }
        if self.finishedItemCount != nil {
            map["FinishedItemCount"] = self.finishedItemCount!
        }
        if self.finishedSubtaskCount != nil {
            map["FinishedSubtaskCount"] = self.finishedSubtaskCount!
        }
        if self.markEfficiency != nil {
            map["MarkEfficiency"] = self.markEfficiency!
        }
        if self.preMarkFixedCount != nil {
            map["PreMarkFixedCount"] = self.preMarkFixedCount!
        }
        if self.sampledAccuracy != nil {
            map["SampledAccuracy"] = self.sampledAccuracy!
        }
        if self.sampledErrorCount != nil {
            map["SampledErrorCount"] = self.sampledErrorCount!
        }
        if self.sampledRejectCount != nil {
            map["SampledRejectCount"] = self.sampledRejectCount!
        }
        if self.samplingAccuracy != nil {
            map["SamplingAccuracy"] = self.samplingAccuracy!
        }
        if self.totalCheckCount != nil {
            map["TotalCheckCount"] = self.totalCheckCount!
        }
        if self.totalCheckTime != nil {
            map["TotalCheckTime"] = self.totalCheckTime!
        }
        if self.totalCheckedCount != nil {
            map["TotalCheckedCount"] = self.totalCheckedCount!
        }
        if self.totalItemCount != nil {
            map["TotalItemCount"] = self.totalItemCount!
        }
        if self.totalMarkTime != nil {
            map["TotalMarkTime"] = self.totalMarkTime!
        }
        if self.totalSampledCount != nil {
            map["TotalSampledCount"] = self.totalSampledCount!
        }
        if self.totalSamplingCount != nil {
            map["TotalSamplingCount"] = self.totalSamplingCount!
        }
        if self.totalSubtaskCount != nil {
            map["TotalSubtaskCount"] = self.totalSubtaskCount!
        }
        if self.totalWorkTime != nil {
            map["TotalWorkTime"] = self.totalWorkTime!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AcceptItemCount"] as? Double {
            self.acceptItemCount = value
        }
        if let value = dict["CheckAbandon"] as? Double {
            self.checkAbandon = value
        }
        if let value = dict["CheckAccuracy"] as? Double {
            self.checkAccuracy = value
        }
        if let value = dict["CheckEfficiency"] as? Double {
            self.checkEfficiency = value
        }
        if let value = dict["CheckedAccuracy"] as? Double {
            self.checkedAccuracy = value
        }
        if let value = dict["CheckedError"] as? Double {
            self.checkedError = value
        }
        if let value = dict["CheckedRejectCount"] as? Double {
            self.checkedRejectCount = value
        }
        if let value = dict["FinalAbandonCount"] as? Double {
            self.finalAbandonCount = value
        }
        if let value = dict["FinishedItemCount"] as? Int64 {
            self.finishedItemCount = value
        }
        if let value = dict["FinishedSubtaskCount"] as? Int64 {
            self.finishedSubtaskCount = value
        }
        if let value = dict["MarkEfficiency"] as? Double {
            self.markEfficiency = value
        }
        if let value = dict["PreMarkFixedCount"] as? Double {
            self.preMarkFixedCount = value
        }
        if let value = dict["SampledAccuracy"] as? Double {
            self.sampledAccuracy = value
        }
        if let value = dict["SampledErrorCount"] as? Double {
            self.sampledErrorCount = value
        }
        if let value = dict["SampledRejectCount"] as? Double {
            self.sampledRejectCount = value
        }
        if let value = dict["SamplingAccuracy"] as? Double {
            self.samplingAccuracy = value
        }
        if let value = dict["TotalCheckCount"] as? Double {
            self.totalCheckCount = value
        }
        if let value = dict["TotalCheckTime"] as? Double {
            self.totalCheckTime = value
        }
        if let value = dict["TotalCheckedCount"] as? Double {
            self.totalCheckedCount = value
        }
        if let value = dict["TotalItemCount"] as? Int64 {
            self.totalItemCount = value
        }
        if let value = dict["TotalMarkTime"] as? Double {
            self.totalMarkTime = value
        }
        if let value = dict["TotalSampledCount"] as? Double {
            self.totalSampledCount = value
        }
        if let value = dict["TotalSamplingCount"] as? Double {
            self.totalSamplingCount = value
        }
        if let value = dict["TotalSubtaskCount"] as? Int64 {
            self.totalSubtaskCount = value
        }
        if let value = dict["TotalWorkTime"] as? Double {
            self.totalWorkTime = value
        }
    }
}

public class TaskTemplateConfig : Tea.TeaModel {
    public var exif: [String: String]?

    public var resourceKey: String?

    public var selectQuestions: [String]?

    public var templateOptionMap: [String: TaskTemplateOptionConfig]?

    public var templateRelationId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.exif != nil {
            map["Exif"] = self.exif!
        }
        if self.resourceKey != nil {
            map["ResourceKey"] = self.resourceKey!
        }
        if self.selectQuestions != nil {
            map["SelectQuestions"] = self.selectQuestions!
        }
        if self.templateOptionMap != nil {
            var tmp : [String: Any] = [:]
            for (k, v) in self.templateOptionMap! {
                tmp[k] = v.toMap()
            }
            map["TemplateOptionMap"] = tmp
        }
        if self.templateRelationId != nil {
            map["TemplateRelationId"] = self.templateRelationId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Exif"] as? [String: String] {
            self.exif = value
        }
        if let value = dict["ResourceKey"] as? String {
            self.resourceKey = value
        }
        if let value = dict["SelectQuestions"] as? [String] {
            self.selectQuestions = value
        }
        if let value = dict["TemplateOptionMap"] as? [String: Any?] {
            var tmp : [String: TaskTemplateOptionConfig] = [:]
            for (k, v) in value {
                if v != nil {
                    var model = TaskTemplateOptionConfig()
                    model.fromMap(v as? [String: Any?])
                    tmp[k] = model
                }
            }
            self.templateOptionMap = tmp
        }
        if let value = dict["TemplateRelationId"] as? String {
            self.templateRelationId = value
        }
    }
}

public class TaskTemplateOptionConfig : Tea.TeaModel {
    public var defaultResult: String?

    public var options: [QuestionOption]?

    public var preOptions: [String]?

    public var rule: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.defaultResult != nil {
            map["DefaultResult"] = self.defaultResult!
        }
        if self.options != nil {
            var tmp : [Any] = []
            for k in self.options! {
                tmp.append(k.toMap())
            }
            map["Options"] = tmp
        }
        if self.preOptions != nil {
            map["PreOptions"] = self.preOptions!
        }
        if self.rule != nil {
            map["Rule"] = self.rule!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["DefaultResult"] as? String {
            self.defaultResult = value
        }
        if let value = dict["Options"] as? [Any?] {
            var tmp : [QuestionOption] = []
            for v in value {
                if v != nil {
                    var model = QuestionOption()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.options = tmp
        }
        if let value = dict["PreOptions"] as? [String] {
            self.preOptions = value
        }
        if let value = dict["Rule"] as? String {
            self.rule = value
        }
    }
}

public class TemplateDTO : Tea.TeaModel {
    public class ViewConfigs : Tea.TeaModel {
        public var viewPlugins: [ViewPlugin]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.viewPlugins != nil {
                var tmp : [Any] = []
                for k in self.viewPlugins! {
                    tmp.append(k.toMap())
                }
                map["ViewPlugins"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["ViewPlugins"] as? [Any?] {
                var tmp : [ViewPlugin] = []
                for v in value {
                    if v != nil {
                        var model = ViewPlugin()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.viewPlugins = tmp
            }
        }
    }
    public var classify: String?

    public var description_: String?

    public var exif: [String: Any]?

    public var questionConfigs: [QuestionPlugin]?

    public var robotConfigs: [[String: Any]]?

    public var sharedMode: String?

    public var tags: [String]?

    public var templateId: String?

    public var templateName: String?

    public var viewConfigs: TemplateDTO.ViewConfigs?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.viewConfigs?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.classify != nil {
            map["Classify"] = self.classify!
        }
        if self.description_ != nil {
            map["Description"] = self.description_!
        }
        if self.exif != nil {
            map["Exif"] = self.exif!
        }
        if self.questionConfigs != nil {
            var tmp : [Any] = []
            for k in self.questionConfigs! {
                tmp.append(k.toMap())
            }
            map["QuestionConfigs"] = tmp
        }
        if self.robotConfigs != nil {
            map["RobotConfigs"] = self.robotConfigs!
        }
        if self.sharedMode != nil {
            map["SharedMode"] = self.sharedMode!
        }
        if self.tags != nil {
            map["Tags"] = self.tags!
        }
        if self.templateId != nil {
            map["TemplateId"] = self.templateId!
        }
        if self.templateName != nil {
            map["TemplateName"] = self.templateName!
        }
        if self.viewConfigs != nil {
            map["ViewConfigs"] = self.viewConfigs?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Classify"] as? String {
            self.classify = value
        }
        if let value = dict["Description"] as? String {
            self.description_ = value
        }
        if let value = dict["Exif"] as? [String: Any] {
            self.exif = value
        }
        if let value = dict["QuestionConfigs"] as? [Any?] {
            var tmp : [QuestionPlugin] = []
            for v in value {
                if v != nil {
                    var model = QuestionPlugin()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.questionConfigs = tmp
        }
        if let value = dict["RobotConfigs"] as? [[String: Any]] {
            self.robotConfigs = value
        }
        if let value = dict["SharedMode"] as? String {
            self.sharedMode = value
        }
        if let value = dict["Tags"] as? [String] {
            self.tags = value
        }
        if let value = dict["TemplateId"] as? String {
            self.templateId = value
        }
        if let value = dict["TemplateName"] as? String {
            self.templateName = value
        }
        if let value = dict["ViewConfigs"] as? [String: Any?] {
            var model = TemplateDTO.ViewConfigs()
            model.fromMap(value)
            self.viewConfigs = model
        }
    }
}

public class TemplateDetail : Tea.TeaModel {
    public class ViewConfigs : Tea.TeaModel {
        public var viewPlugins: [ViewPlugin]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.viewPlugins != nil {
                var tmp : [Any] = []
                for k in self.viewPlugins! {
                    tmp.append(k.toMap())
                }
                map["ViewPlugins"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["ViewPlugins"] as? [Any?] {
                var tmp : [ViewPlugin] = []
                for v in value {
                    if v != nil {
                        var model = ViewPlugin()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.viewPlugins = tmp
            }
        }
    }
    public var abandonReasons: [String]?

    public var classify: String?

    public var creator: SimpleUser?

    public var description_: String?

    public var exif: [String: Any]?

    public var gmtCreateTime: String?

    public var gmtModifiedTime: String?

    public var modifier: SimpleUser?

    public var questionConfigs: [QuestionPlugin]?

    public var sharedMode: String?

    public var status: String?

    public var tags: [String]?

    public var templateId: String?

    public var templateName: String?

    public var tenantId: String?

    public var type: String?

    public var viewConfigs: TemplateDetail.ViewConfigs?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.creator?.validate()
        try self.modifier?.validate()
        try self.viewConfigs?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.abandonReasons != nil {
            map["AbandonReasons"] = self.abandonReasons!
        }
        if self.classify != nil {
            map["Classify"] = self.classify!
        }
        if self.creator != nil {
            map["Creator"] = self.creator?.toMap()
        }
        if self.description_ != nil {
            map["Description"] = self.description_!
        }
        if self.exif != nil {
            map["Exif"] = self.exif!
        }
        if self.gmtCreateTime != nil {
            map["GmtCreateTime"] = self.gmtCreateTime!
        }
        if self.gmtModifiedTime != nil {
            map["GmtModifiedTime"] = self.gmtModifiedTime!
        }
        if self.modifier != nil {
            map["Modifier"] = self.modifier?.toMap()
        }
        if self.questionConfigs != nil {
            var tmp : [Any] = []
            for k in self.questionConfigs! {
                tmp.append(k.toMap())
            }
            map["QuestionConfigs"] = tmp
        }
        if self.sharedMode != nil {
            map["SharedMode"] = self.sharedMode!
        }
        if self.status != nil {
            map["Status"] = self.status!
        }
        if self.tags != nil {
            map["Tags"] = self.tags!
        }
        if self.templateId != nil {
            map["TemplateId"] = self.templateId!
        }
        if self.templateName != nil {
            map["TemplateName"] = self.templateName!
        }
        if self.tenantId != nil {
            map["TenantId"] = self.tenantId!
        }
        if self.type != nil {
            map["Type"] = self.type!
        }
        if self.viewConfigs != nil {
            map["ViewConfigs"] = self.viewConfigs?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AbandonReasons"] as? [String] {
            self.abandonReasons = value
        }
        if let value = dict["Classify"] as? String {
            self.classify = value
        }
        if let value = dict["Creator"] as? [String: Any?] {
            var model = SimpleUser()
            model.fromMap(value)
            self.creator = model
        }
        if let value = dict["Description"] as? String {
            self.description_ = value
        }
        if let value = dict["Exif"] as? [String: Any] {
            self.exif = value
        }
        if let value = dict["GmtCreateTime"] as? String {
            self.gmtCreateTime = value
        }
        if let value = dict["GmtModifiedTime"] as? String {
            self.gmtModifiedTime = value
        }
        if let value = dict["Modifier"] as? [String: Any?] {
            var model = SimpleUser()
            model.fromMap(value)
            self.modifier = model
        }
        if let value = dict["QuestionConfigs"] as? [Any?] {
            var tmp : [QuestionPlugin] = []
            for v in value {
                if v != nil {
                    var model = QuestionPlugin()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.questionConfigs = tmp
        }
        if let value = dict["SharedMode"] as? String {
            self.sharedMode = value
        }
        if let value = dict["Status"] as? String {
            self.status = value
        }
        if let value = dict["Tags"] as? [String] {
            self.tags = value
        }
        if let value = dict["TemplateId"] as? String {
            self.templateId = value
        }
        if let value = dict["TemplateName"] as? String {
            self.templateName = value
        }
        if let value = dict["TenantId"] as? String {
            self.tenantId = value
        }
        if let value = dict["Type"] as? String {
            self.type = value
        }
        if let value = dict["ViewConfigs"] as? [String: Any?] {
            var model = TemplateDetail.ViewConfigs()
            model.fromMap(value)
            self.viewConfigs = model
        }
    }
}

public class TemplateQuestion : Tea.TeaModel {
    public var children: [TemplateQuestion]?

    public var exif: [String: Any]?

    public var markTitle: String?

    public var options: [QuestionOption]?

    public var preOptions: [String]?

    public var questionId: Int64?

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
        if self.children != nil {
            var tmp : [Any] = []
            for k in self.children! {
                tmp.append(k.toMap())
            }
            map["Children"] = tmp
        }
        if self.exif != nil {
            map["Exif"] = self.exif!
        }
        if self.markTitle != nil {
            map["MarkTitle"] = self.markTitle!
        }
        if self.options != nil {
            var tmp : [Any] = []
            for k in self.options! {
                tmp.append(k.toMap())
            }
            map["Options"] = tmp
        }
        if self.preOptions != nil {
            map["PreOptions"] = self.preOptions!
        }
        if self.questionId != nil {
            map["QuestionId"] = self.questionId!
        }
        if self.type != nil {
            map["Type"] = self.type!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Children"] as? [Any?] {
            var tmp : [TemplateQuestion] = []
            for v in value {
                if v != nil {
                    var model = TemplateQuestion()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.children = tmp
        }
        if let value = dict["Exif"] as? [String: Any] {
            self.exif = value
        }
        if let value = dict["MarkTitle"] as? String {
            self.markTitle = value
        }
        if let value = dict["Options"] as? [Any?] {
            var tmp : [QuestionOption] = []
            for v in value {
                if v != nil {
                    var model = QuestionOption()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.options = tmp
        }
        if let value = dict["PreOptions"] as? [String] {
            self.preOptions = value
        }
        if let value = dict["QuestionId"] as? Int64 {
            self.questionId = value
        }
        if let value = dict["Type"] as? String {
            self.type = value
        }
    }
}

public class TemplateView : Tea.TeaModel {
    public class Fields : Tea.TeaModel {
        public class VisitInfo : Tea.TeaModel {
            public var aftsConf: [String: Any]?

            public var ossConf: [String: Any]?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.aftsConf != nil {
                    map["AftsConf"] = self.aftsConf!
                }
                if self.ossConf != nil {
                    map["OssConf"] = self.ossConf!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["AftsConf"] as? [String: Any] {
                    self.aftsConf = value
                }
                if let value = dict["OssConf"] as? [String: Any] {
                    self.ossConf = value
                }
            }
        }
        public var displayOriImg: Bool?

        public var fieldName: String?

        public var type: String?

        public var visitInfo: TemplateView.Fields.VisitInfo?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.visitInfo?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.displayOriImg != nil {
                map["DisplayOriImg"] = self.displayOriImg!
            }
            if self.fieldName != nil {
                map["FieldName"] = self.fieldName!
            }
            if self.type != nil {
                map["Type"] = self.type!
            }
            if self.visitInfo != nil {
                map["VisitInfo"] = self.visitInfo?.toMap()
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["DisplayOriImg"] as? Bool {
                self.displayOriImg = value
            }
            if let value = dict["FieldName"] as? String {
                self.fieldName = value
            }
            if let value = dict["Type"] as? String {
                self.type = value
            }
            if let value = dict["VisitInfo"] as? [String: Any?] {
                var model = TemplateView.Fields.VisitInfo()
                model.fromMap(value)
                self.visitInfo = model
            }
        }
    }
    public var fields: [TemplateView.Fields]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.fields != nil {
            var tmp : [Any] = []
            for k in self.fields! {
                tmp.append(k.toMap())
            }
            map["Fields"] = tmp
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Fields"] as? [Any?] {
            var tmp : [TemplateView.Fields] = []
            for v in value {
                if v != nil {
                    var model = TemplateView.Fields()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.fields = tmp
        }
    }
}

public class UpdateTaskDTO : Tea.TeaModel {
    public var exif: [String: String]?

    public var remark: String?

    public var tags: [String]?

    public var taskName: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.exif != nil {
            map["Exif"] = self.exif!
        }
        if self.remark != nil {
            map["Remark"] = self.remark!
        }
        if self.tags != nil {
            map["Tags"] = self.tags!
        }
        if self.taskName != nil {
            map["TaskName"] = self.taskName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Exif"] as? [String: String] {
            self.exif = value
        }
        if let value = dict["Remark"] as? String {
            self.remark = value
        }
        if let value = dict["Tags"] as? [String] {
            self.tags = value
        }
        if let value = dict["TaskName"] as? String {
            self.taskName = value
        }
    }
}

public class UserStatistic : Tea.TeaModel {
    public var acceptedMarkItemsCount: Double?

    public var checkCount: Double?

    public var checkedAcceptedCount: Double?

    public var checkedAccuracy: Double?

    public var markEfficiency: Double?

    public var markTime: Double?

    public var samplingAccuracy: Double?

    public var samplingCount: Double?

    public var samplingErrorCount: Double?

    public var totalMarkItemsCount: Double?

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
        if self.acceptedMarkItemsCount != nil {
            map["AcceptedMarkItemsCount"] = self.acceptedMarkItemsCount!
        }
        if self.checkCount != nil {
            map["CheckCount"] = self.checkCount!
        }
        if self.checkedAcceptedCount != nil {
            map["CheckedAcceptedCount"] = self.checkedAcceptedCount!
        }
        if self.checkedAccuracy != nil {
            map["CheckedAccuracy"] = self.checkedAccuracy!
        }
        if self.markEfficiency != nil {
            map["MarkEfficiency"] = self.markEfficiency!
        }
        if self.markTime != nil {
            map["MarkTime"] = self.markTime!
        }
        if self.samplingAccuracy != nil {
            map["SamplingAccuracy"] = self.samplingAccuracy!
        }
        if self.samplingCount != nil {
            map["SamplingCount"] = self.samplingCount!
        }
        if self.samplingErrorCount != nil {
            map["SamplingErrorCount"] = self.samplingErrorCount!
        }
        if self.totalMarkItemsCount != nil {
            map["TotalMarkItemsCount"] = self.totalMarkItemsCount!
        }
        if self.userId != nil {
            map["UserId"] = self.userId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AcceptedMarkItemsCount"] as? Double {
            self.acceptedMarkItemsCount = value
        }
        if let value = dict["CheckCount"] as? Double {
            self.checkCount = value
        }
        if let value = dict["CheckedAcceptedCount"] as? Double {
            self.checkedAcceptedCount = value
        }
        if let value = dict["CheckedAccuracy"] as? Double {
            self.checkedAccuracy = value
        }
        if let value = dict["MarkEfficiency"] as? Double {
            self.markEfficiency = value
        }
        if let value = dict["MarkTime"] as? Double {
            self.markTime = value
        }
        if let value = dict["SamplingAccuracy"] as? Double {
            self.samplingAccuracy = value
        }
        if let value = dict["SamplingCount"] as? Double {
            self.samplingCount = value
        }
        if let value = dict["SamplingErrorCount"] as? Double {
            self.samplingErrorCount = value
        }
        if let value = dict["TotalMarkItemsCount"] as? Double {
            self.totalMarkItemsCount = value
        }
        if let value = dict["UserId"] as? String {
            self.userId = value
        }
    }
}

public class ViewPlugin : Tea.TeaModel {
    public class VisitInfo : Tea.TeaModel {
        public var aftsConf: [String: Any]?

        public var ossConf: [String: Any]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.aftsConf != nil {
                map["aftsConf"] = self.aftsConf!
            }
            if self.ossConf != nil {
                map["ossConf"] = self.ossConf!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["aftsConf"] as? [String: Any] {
                self.aftsConf = value
            }
            if let value = dict["ossConf"] as? [String: Any] {
                self.ossConf = value
            }
        }
    }
    public var bindField: String?

    public var convertor: String?

    public var corsProxy: Bool?

    public var displayOriImg: Bool?

    public var exif: [String: Any]?

    public var hide: Bool?

    public var plugins: [String: Any]?

    public var relationQuestionIds: [String]?

    public var type: String?

    public var visitInfo: ViewPlugin.VisitInfo?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.visitInfo?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.bindField != nil {
            map["BindField"] = self.bindField!
        }
        if self.convertor != nil {
            map["Convertor"] = self.convertor!
        }
        if self.corsProxy != nil {
            map["CorsProxy"] = self.corsProxy!
        }
        if self.displayOriImg != nil {
            map["DisplayOriImg"] = self.displayOriImg!
        }
        if self.exif != nil {
            map["Exif"] = self.exif!
        }
        if self.hide != nil {
            map["Hide"] = self.hide!
        }
        if self.plugins != nil {
            map["Plugins"] = self.plugins!
        }
        if self.relationQuestionIds != nil {
            map["RelationQuestionIds"] = self.relationQuestionIds!
        }
        if self.type != nil {
            map["Type"] = self.type!
        }
        if self.visitInfo != nil {
            map["VisitInfo"] = self.visitInfo?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["BindField"] as? String {
            self.bindField = value
        }
        if let value = dict["Convertor"] as? String {
            self.convertor = value
        }
        if let value = dict["CorsProxy"] as? Bool {
            self.corsProxy = value
        }
        if let value = dict["DisplayOriImg"] as? Bool {
            self.displayOriImg = value
        }
        if let value = dict["Exif"] as? [String: Any] {
            self.exif = value
        }
        if let value = dict["Hide"] as? Bool {
            self.hide = value
        }
        if let value = dict["Plugins"] as? [String: Any] {
            self.plugins = value
        }
        if let value = dict["RelationQuestionIds"] as? [String] {
            self.relationQuestionIds = value
        }
        if let value = dict["Type"] as? String {
            self.type = value
        }
        if let value = dict["VisitInfo"] as? [String: Any?] {
            var model = ViewPlugin.VisitInfo()
            model.fromMap(value)
            self.visitInfo = model
        }
    }
}

public class Workforce : Tea.TeaModel {
    public var nodeType: String?

    public var users: [SimpleUser]?

    public var workNodeId: Int32?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.nodeType != nil {
            map["NodeType"] = self.nodeType!
        }
        if self.users != nil {
            var tmp : [Any] = []
            for k in self.users! {
                tmp.append(k.toMap())
            }
            map["Users"] = tmp
        }
        if self.workNodeId != nil {
            map["WorkNodeId"] = self.workNodeId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["NodeType"] as? String {
            self.nodeType = value
        }
        if let value = dict["Users"] as? [Any?] {
            var tmp : [SimpleUser] = []
            for v in value {
                if v != nil {
                    var model = SimpleUser()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.users = tmp
        }
        if let value = dict["WorkNodeId"] as? Int32 {
            self.workNodeId = value
        }
    }
}

public class AddWorkNodeWorkforceRequest : Tea.TeaModel {
    public var userIds: [Int64]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.userIds != nil {
            map["UserIds"] = self.userIds!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["UserIds"] as? [Int64] {
            self.userIds = value
        }
    }
}

public class AddWorkNodeWorkforceResponseBody : Tea.TeaModel {
    public var code: Int32?

    public var details: String?

    public var errorCode: String?

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
        if self.details != nil {
            map["Details"] = self.details!
        }
        if self.errorCode != nil {
            map["ErrorCode"] = self.errorCode!
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
        if let value = dict["Code"] as? Int32 {
            self.code = value
        }
        if let value = dict["Details"] as? String {
            self.details = value
        }
        if let value = dict["ErrorCode"] as? String {
            self.errorCode = value
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

public class AddWorkNodeWorkforceResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: AddWorkNodeWorkforceResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = AddWorkNodeWorkforceResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class AppendAllDataToTaskRequest : Tea.TeaModel {
    public var body: OpenDatasetProxyAppendDataRequest?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["body"] as? [String: Any?] {
            var model = OpenDatasetProxyAppendDataRequest()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class AppendAllDataToTaskResponseBody : Tea.TeaModel {
    public var code: Int32?

    public var details: String?

    public var errorCode: String?

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
        if self.details != nil {
            map["Details"] = self.details!
        }
        if self.errorCode != nil {
            map["ErrorCode"] = self.errorCode!
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
        if let value = dict["Code"] as? Int32 {
            self.code = value
        }
        if let value = dict["Details"] as? String {
            self.details = value
        }
        if let value = dict["ErrorCode"] as? String {
            self.errorCode = value
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

public class AppendAllDataToTaskResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: AppendAllDataToTaskResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = AppendAllDataToTaskResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class CreateTaskRequest : Tea.TeaModel {
    public var body: CreateTaskDetail?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["body"] as? [String: Any?] {
            var model = CreateTaskDetail()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class CreateTaskResponseBody : Tea.TeaModel {
    public var code: Int32?

    public var details: String?

    public var errorCode: String?

    public var message: String?

    public var requestId: String?

    public var success: Bool?

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
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.details != nil {
            map["Details"] = self.details!
        }
        if self.errorCode != nil {
            map["ErrorCode"] = self.errorCode!
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
        if self.taskId != nil {
            map["TaskId"] = self.taskId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Code"] as? Int32 {
            self.code = value
        }
        if let value = dict["Details"] as? String {
            self.details = value
        }
        if let value = dict["ErrorCode"] as? String {
            self.errorCode = value
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
        if let value = dict["TaskId"] as? String {
            self.taskId = value
        }
    }
}

public class CreateTaskResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateTaskResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = CreateTaskResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class CreateTemplateRequest : Tea.TeaModel {
    public var body: TemplateDTO?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["body"] as? [String: Any?] {
            var model = TemplateDTO()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class CreateTemplateResponseBody : Tea.TeaModel {
    public var code: Int32?

    public var details: String?

    public var errorCode: String?

    public var message: String?

    public var requestId: String?

    public var success: Bool?

    public var templateId: String?

    public override init() {
        super.init()
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
        if self.details != nil {
            map["Details"] = self.details!
        }
        if self.errorCode != nil {
            map["ErrorCode"] = self.errorCode!
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
        if self.templateId != nil {
            map["TemplateId"] = self.templateId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Code"] as? Int32 {
            self.code = value
        }
        if let value = dict["Details"] as? String {
            self.details = value
        }
        if let value = dict["ErrorCode"] as? String {
            self.errorCode = value
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
        if let value = dict["TemplateId"] as? String {
            self.templateId = value
        }
    }
}

public class CreateTemplateResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateTemplateResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = CreateTemplateResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class CreateUserRequest : Tea.TeaModel {
    public var accountNo: String?

    public var accountType: String?

    public var role: String?

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
        if self.accountNo != nil {
            map["AccountNo"] = self.accountNo!
        }
        if self.accountType != nil {
            map["AccountType"] = self.accountType!
        }
        if self.role != nil {
            map["Role"] = self.role!
        }
        if self.userName != nil {
            map["UserName"] = self.userName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AccountNo"] as? String {
            self.accountNo = value
        }
        if let value = dict["AccountType"] as? String {
            self.accountType = value
        }
        if let value = dict["Role"] as? String {
            self.role = value
        }
        if let value = dict["UserName"] as? String {
            self.userName = value
        }
    }
}

public class CreateUserResponseBody : Tea.TeaModel {
    public var code: Int32?

    public var details: String?

    public var errorCode: String?

    public var message: String?

    public var requestId: String?

    public var success: Bool?

    public var userId: Int64?

    public override init() {
        super.init()
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
        if self.details != nil {
            map["Details"] = self.details!
        }
        if self.errorCode != nil {
            map["ErrorCode"] = self.errorCode!
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
        if self.userId != nil {
            map["UserId"] = self.userId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Code"] as? Int32 {
            self.code = value
        }
        if let value = dict["Details"] as? String {
            self.details = value
        }
        if let value = dict["ErrorCode"] as? String {
            self.errorCode = value
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
        if let value = dict["UserId"] as? Int64 {
            self.userId = value
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
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = CreateUserResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DeleteTaskResponseBody : Tea.TeaModel {
    public var code: Int32?

    public var details: String?

    public var errorCode: String?

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
        if self.details != nil {
            map["Details"] = self.details!
        }
        if self.errorCode != nil {
            map["ErrorCode"] = self.errorCode!
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
        if let value = dict["Code"] as? Int32 {
            self.code = value
        }
        if let value = dict["Details"] as? String {
            self.details = value
        }
        if let value = dict["ErrorCode"] as? String {
            self.errorCode = value
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

public class DeleteTaskResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteTaskResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = DeleteTaskResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DeleteTemplateResponseBody : Tea.TeaModel {
    public var code: Int32?

    public var details: String?

    public var errorCode: String?

    public var message: String?

    public var requestId: String?

    public var success: Bool?

    public var templateId: String?

    public override init() {
        super.init()
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
        if self.details != nil {
            map["Details"] = self.details!
        }
        if self.errorCode != nil {
            map["ErrorCode"] = self.errorCode!
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
        if self.templateId != nil {
            map["TemplateId"] = self.templateId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Code"] as? Int32 {
            self.code = value
        }
        if let value = dict["Details"] as? String {
            self.details = value
        }
        if let value = dict["ErrorCode"] as? String {
            self.errorCode = value
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
        if let value = dict["TemplateId"] as? String {
            self.templateId = value
        }
    }
}

public class DeleteTemplateResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteTemplateResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = DeleteTemplateResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DeleteUserResponseBody : Tea.TeaModel {
    public var code: Int32?

    public var details: String?

    public var errorCode: String?

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
        if self.details != nil {
            map["Details"] = self.details!
        }
        if self.errorCode != nil {
            map["ErrorCode"] = self.errorCode!
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
        if let value = dict["Code"] as? Int32 {
            self.code = value
        }
        if let value = dict["Details"] as? String {
            self.details = value
        }
        if let value = dict["ErrorCode"] as? String {
            self.errorCode = value
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
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = DeleteUserResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ExportAnnotationsRequest : Tea.TeaModel {
    public var ossPath: String?

    public var registerDataset: String?

    public var target: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.ossPath != nil {
            map["OssPath"] = self.ossPath!
        }
        if self.registerDataset != nil {
            map["RegisterDataset"] = self.registerDataset!
        }
        if self.target != nil {
            map["Target"] = self.target!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["OssPath"] as? String {
            self.ossPath = value
        }
        if let value = dict["RegisterDataset"] as? String {
            self.registerDataset = value
        }
        if let value = dict["Target"] as? String {
            self.target = value
        }
    }
}

public class ExportAnnotationsResponseBody : Tea.TeaModel {
    public var code: Int32?

    public var details: String?

    public var errorCode: String?

    public var flowJob: FlowJobInfo?

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
        try self.flowJob?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.details != nil {
            map["Details"] = self.details!
        }
        if self.errorCode != nil {
            map["ErrorCode"] = self.errorCode!
        }
        if self.flowJob != nil {
            map["FlowJob"] = self.flowJob?.toMap()
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
        if let value = dict["Code"] as? Int32 {
            self.code = value
        }
        if let value = dict["Details"] as? String {
            self.details = value
        }
        if let value = dict["ErrorCode"] as? String {
            self.errorCode = value
        }
        if let value = dict["FlowJob"] as? [String: Any?] {
            var model = FlowJobInfo()
            model.fromMap(value)
            self.flowJob = model
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

public class ExportAnnotationsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ExportAnnotationsResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = ExportAnnotationsResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetJobRequest : Tea.TeaModel {
    public var jobType: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.jobType != nil {
            map["JobType"] = self.jobType!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["JobType"] as? String {
            self.jobType = value
        }
    }
}

public class GetJobResponseBody : Tea.TeaModel {
    public var code: Int32?

    public var details: String?

    public var errorCode: String?

    public var job: Job?

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
        try self.job?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.details != nil {
            map["Details"] = self.details!
        }
        if self.errorCode != nil {
            map["ErrorCode"] = self.errorCode!
        }
        if self.job != nil {
            map["Job"] = self.job?.toMap()
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
        if let value = dict["Code"] as? Int32 {
            self.code = value
        }
        if let value = dict["Details"] as? String {
            self.details = value
        }
        if let value = dict["ErrorCode"] as? String {
            self.errorCode = value
        }
        if let value = dict["Job"] as? [String: Any?] {
            var model = Job()
            model.fromMap(value)
            self.job = model
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

public class GetJobResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetJobResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = GetJobResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetSubtaskResponseBody : Tea.TeaModel {
    public var code: Int32?

    public var details: String?

    public var errorCode: String?

    public var message: String?

    public var requestId: String?

    public var subtask: SimpleSubtask?

    public var success: Bool?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.subtask?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.details != nil {
            map["Details"] = self.details!
        }
        if self.errorCode != nil {
            map["ErrorCode"] = self.errorCode!
        }
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.subtask != nil {
            map["Subtask"] = self.subtask?.toMap()
        }
        if self.success != nil {
            map["Success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Code"] as? Int32 {
            self.code = value
        }
        if let value = dict["Details"] as? String {
            self.details = value
        }
        if let value = dict["ErrorCode"] as? String {
            self.errorCode = value
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Subtask"] as? [String: Any?] {
            var model = SimpleSubtask()
            model.fromMap(value)
            self.subtask = model
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
    }
}

public class GetSubtaskResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetSubtaskResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = GetSubtaskResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetSubtaskItemResponseBody : Tea.TeaModel {
    public var code: Int32?

    public var details: String?

    public var errorCode: String?

    public var item: SubtaskItemDetail?

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
        try self.item?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.details != nil {
            map["Details"] = self.details!
        }
        if self.errorCode != nil {
            map["ErrorCode"] = self.errorCode!
        }
        if self.item != nil {
            map["Item"] = self.item?.toMap()
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
        if let value = dict["Code"] as? Int32 {
            self.code = value
        }
        if let value = dict["Details"] as? String {
            self.details = value
        }
        if let value = dict["ErrorCode"] as? String {
            self.errorCode = value
        }
        if let value = dict["Item"] as? [String: Any?] {
            var model = SubtaskItemDetail()
            model.fromMap(value)
            self.item = model
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

public class GetSubtaskItemResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetSubtaskItemResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = GetSubtaskItemResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetTaskResponseBody : Tea.TeaModel {
    public var code: Int32?

    public var details: String?

    public var errorCode: String?

    public var message: String?

    public var requestId: String?

    public var success: Bool?

    public var task: TaskDetail?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.task?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.details != nil {
            map["Details"] = self.details!
        }
        if self.errorCode != nil {
            map["ErrorCode"] = self.errorCode!
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
        if self.task != nil {
            map["Task"] = self.task?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Code"] as? Int32 {
            self.code = value
        }
        if let value = dict["Details"] as? String {
            self.details = value
        }
        if let value = dict["ErrorCode"] as? String {
            self.errorCode = value
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
        if let value = dict["Task"] as? [String: Any?] {
            var model = TaskDetail()
            model.fromMap(value)
            self.task = model
        }
    }
}

public class GetTaskResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetTaskResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = GetTaskResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetTaskStatisticsRequest : Tea.TeaModel {
    public var statType: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.statType != nil {
            map["StatType"] = self.statType!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["StatType"] as? String {
            self.statType = value
        }
    }
}

public class GetTaskStatisticsResponseBody : Tea.TeaModel {
    public var code: Int32?

    public var details: String?

    public var errorCode: String?

    public var message: String?

    public var requestId: String?

    public var success: Bool?

    public var taskStatistics: TaskStatistic?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.taskStatistics?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.details != nil {
            map["Details"] = self.details!
        }
        if self.errorCode != nil {
            map["ErrorCode"] = self.errorCode!
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
        if self.taskStatistics != nil {
            map["TaskStatistics"] = self.taskStatistics?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Code"] as? Int32 {
            self.code = value
        }
        if let value = dict["Details"] as? String {
            self.details = value
        }
        if let value = dict["ErrorCode"] as? String {
            self.errorCode = value
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
        if let value = dict["TaskStatistics"] as? [String: Any?] {
            var model = TaskStatistic()
            model.fromMap(value)
            self.taskStatistics = model
        }
    }
}

public class GetTaskStatisticsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetTaskStatisticsResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = GetTaskStatisticsResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetTaskStatusResponseBody : Tea.TeaModel {
    public var code: Int32?

    public var details: String?

    public var errorCode: String?

    public var message: String?

    public var requestId: String?

    public var success: Bool?

    public var taskStatus: String?

    public override init() {
        super.init()
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
        if self.details != nil {
            map["Details"] = self.details!
        }
        if self.errorCode != nil {
            map["ErrorCode"] = self.errorCode!
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
        if self.taskStatus != nil {
            map["TaskStatus"] = self.taskStatus!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Code"] as? Int32 {
            self.code = value
        }
        if let value = dict["Details"] as? String {
            self.details = value
        }
        if let value = dict["ErrorCode"] as? String {
            self.errorCode = value
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
        if let value = dict["TaskStatus"] as? String {
            self.taskStatus = value
        }
    }
}

public class GetTaskStatusResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetTaskStatusResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = GetTaskStatusResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetTaskTemplateResponseBody : Tea.TeaModel {
    public var code: Int32?

    public var details: String?

    public var errorCode: String?

    public var message: String?

    public var requestId: String?

    public var success: Bool?

    public var template: TemplateDetail?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.template?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.details != nil {
            map["Details"] = self.details!
        }
        if self.errorCode != nil {
            map["ErrorCode"] = self.errorCode!
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
        if self.template != nil {
            map["Template"] = self.template?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Code"] as? Int32 {
            self.code = value
        }
        if let value = dict["Details"] as? String {
            self.details = value
        }
        if let value = dict["ErrorCode"] as? String {
            self.errorCode = value
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
        if let value = dict["Template"] as? [String: Any?] {
            var model = TemplateDetail()
            model.fromMap(value)
            self.template = model
        }
    }
}

public class GetTaskTemplateResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetTaskTemplateResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = GetTaskTemplateResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetTaskTemplateQuestionsResponseBody : Tea.TeaModel {
    public var code: Int32?

    public var details: String?

    public var errorCode: String?

    public var message: String?

    public var questions: [QuestionPlugin]?

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
        if self.details != nil {
            map["Details"] = self.details!
        }
        if self.errorCode != nil {
            map["ErrorCode"] = self.errorCode!
        }
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.questions != nil {
            var tmp : [Any] = []
            for k in self.questions! {
                tmp.append(k.toMap())
            }
            map["Questions"] = tmp
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
        if let value = dict["Code"] as? Int32 {
            self.code = value
        }
        if let value = dict["Details"] as? String {
            self.details = value
        }
        if let value = dict["ErrorCode"] as? String {
            self.errorCode = value
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["Questions"] as? [Any?] {
            var tmp : [QuestionPlugin] = []
            for v in value {
                if v != nil {
                    var model = QuestionPlugin()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.questions = tmp
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
    }
}

public class GetTaskTemplateQuestionsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetTaskTemplateQuestionsResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = GetTaskTemplateQuestionsResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetTaskTemplateViewsResponseBody : Tea.TeaModel {
    public class Views : Tea.TeaModel {
        public var viewPlugins: [ViewPlugin]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.viewPlugins != nil {
                var tmp : [Any] = []
                for k in self.viewPlugins! {
                    tmp.append(k.toMap())
                }
                map["ViewPlugins"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["ViewPlugins"] as? [Any?] {
                var tmp : [ViewPlugin] = []
                for v in value {
                    if v != nil {
                        var model = ViewPlugin()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.viewPlugins = tmp
            }
        }
    }
    public var code: Int32?

    public var details: String?

    public var errorCode: String?

    public var message: String?

    public var requestId: String?

    public var success: Bool?

    public var views: GetTaskTemplateViewsResponseBody.Views?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.views?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.details != nil {
            map["Details"] = self.details!
        }
        if self.errorCode != nil {
            map["ErrorCode"] = self.errorCode!
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
        if self.views != nil {
            map["Views"] = self.views?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Code"] as? Int32 {
            self.code = value
        }
        if let value = dict["Details"] as? String {
            self.details = value
        }
        if let value = dict["ErrorCode"] as? String {
            self.errorCode = value
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
        if let value = dict["Views"] as? [String: Any?] {
            var model = GetTaskTemplateViewsResponseBody.Views()
            model.fromMap(value)
            self.views = model
        }
    }
}

public class GetTaskTemplateViewsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetTaskTemplateViewsResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = GetTaskTemplateViewsResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetTaskWorkforceResponseBody : Tea.TeaModel {
    public var code: Int32?

    public var details: String?

    public var errorCode: String?

    public var message: String?

    public var requestId: String?

    public var success: Bool?

    public var workforce: [Workforce]?

    public override init() {
        super.init()
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
        if self.details != nil {
            map["Details"] = self.details!
        }
        if self.errorCode != nil {
            map["ErrorCode"] = self.errorCode!
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
        if self.workforce != nil {
            var tmp : [Any] = []
            for k in self.workforce! {
                tmp.append(k.toMap())
            }
            map["Workforce"] = tmp
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Code"] as? Int32 {
            self.code = value
        }
        if let value = dict["Details"] as? String {
            self.details = value
        }
        if let value = dict["ErrorCode"] as? String {
            self.errorCode = value
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
        if let value = dict["Workforce"] as? [Any?] {
            var tmp : [Workforce] = []
            for v in value {
                if v != nil {
                    var model = Workforce()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.workforce = tmp
        }
    }
}

public class GetTaskWorkforceResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetTaskWorkforceResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = GetTaskWorkforceResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetTaskWorkforceStatisticRequest : Tea.TeaModel {
    public var pageNumber: Int32?

    public var pageSize: Int32?

    public var statType: String?

    public override init() {
        super.init()
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
        if self.statType != nil {
            map["StatType"] = self.statType!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["PageNumber"] as? Int32 {
            self.pageNumber = value
        }
        if let value = dict["PageSize"] as? Int32 {
            self.pageSize = value
        }
        if let value = dict["StatType"] as? String {
            self.statType = value
        }
    }
}

public class GetTaskWorkforceStatisticResponseBody : Tea.TeaModel {
    public var code: Int32?

    public var details: String?

    public var errorCode: String?

    public var message: String?

    public var pageNumber: Int32?

    public var pageSize: Int32?

    public var requestId: String?

    public var success: Bool?

    public var totalCount: Int32?

    public var totalPage: Int32?

    public var usersStatistic: [UserStatistic]?

    public override init() {
        super.init()
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
        if self.details != nil {
            map["Details"] = self.details!
        }
        if self.errorCode != nil {
            map["ErrorCode"] = self.errorCode!
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
        if self.totalCount != nil {
            map["TotalCount"] = self.totalCount!
        }
        if self.totalPage != nil {
            map["TotalPage"] = self.totalPage!
        }
        if self.usersStatistic != nil {
            var tmp : [Any] = []
            for k in self.usersStatistic! {
                tmp.append(k.toMap())
            }
            map["UsersStatistic"] = tmp
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Code"] as? Int32 {
            self.code = value
        }
        if let value = dict["Details"] as? String {
            self.details = value
        }
        if let value = dict["ErrorCode"] as? String {
            self.errorCode = value
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["PageNumber"] as? Int32 {
            self.pageNumber = value
        }
        if let value = dict["PageSize"] as? Int32 {
            self.pageSize = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
        if let value = dict["TotalCount"] as? Int32 {
            self.totalCount = value
        }
        if let value = dict["TotalPage"] as? Int32 {
            self.totalPage = value
        }
        if let value = dict["UsersStatistic"] as? [Any?] {
            var tmp : [UserStatistic] = []
            for v in value {
                if v != nil {
                    var model = UserStatistic()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.usersStatistic = tmp
        }
    }
}

public class GetTaskWorkforceStatisticResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetTaskWorkforceStatisticResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = GetTaskWorkforceStatisticResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetTemplateResponseBody : Tea.TeaModel {
    public var code: Int32?

    public var details: String?

    public var errorCode: String?

    public var message: String?

    public var requestId: String?

    public var success: Bool?

    public var template: TemplateDetail?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.template?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.details != nil {
            map["Details"] = self.details!
        }
        if self.errorCode != nil {
            map["ErrorCode"] = self.errorCode!
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
        if self.template != nil {
            map["Template"] = self.template?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Code"] as? Int32 {
            self.code = value
        }
        if let value = dict["Details"] as? String {
            self.details = value
        }
        if let value = dict["ErrorCode"] as? String {
            self.errorCode = value
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
        if let value = dict["Template"] as? [String: Any?] {
            var model = TemplateDetail()
            model.fromMap(value)
            self.template = model
        }
    }
}

public class GetTemplateResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetTemplateResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = GetTemplateResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetTemplateQuestionsResponseBody : Tea.TeaModel {
    public var code: Int32?

    public var details: String?

    public var errorCode: String?

    public var message: String?

    public var questionConfigs: [QuestionPlugin]?

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
        if self.details != nil {
            map["Details"] = self.details!
        }
        if self.errorCode != nil {
            map["ErrorCode"] = self.errorCode!
        }
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.questionConfigs != nil {
            var tmp : [Any] = []
            for k in self.questionConfigs! {
                tmp.append(k.toMap())
            }
            map["QuestionConfigs"] = tmp
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
        if let value = dict["Code"] as? Int32 {
            self.code = value
        }
        if let value = dict["Details"] as? String {
            self.details = value
        }
        if let value = dict["ErrorCode"] as? String {
            self.errorCode = value
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["QuestionConfigs"] as? [Any?] {
            var tmp : [QuestionPlugin] = []
            for v in value {
                if v != nil {
                    var model = QuestionPlugin()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.questionConfigs = tmp
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
    }
}

public class GetTemplateQuestionsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetTemplateQuestionsResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = GetTemplateQuestionsResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetTemplateViewResponseBody : Tea.TeaModel {
    public class ViewConfigs : Tea.TeaModel {
        public var viewPlugins: [ViewPlugin]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.viewPlugins != nil {
                var tmp : [Any] = []
                for k in self.viewPlugins! {
                    tmp.append(k.toMap())
                }
                map["ViewPlugins"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["ViewPlugins"] as? [Any?] {
                var tmp : [ViewPlugin] = []
                for v in value {
                    if v != nil {
                        var model = ViewPlugin()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.viewPlugins = tmp
            }
        }
    }
    public var code: Int32?

    public var details: String?

    public var errorCode: String?

    public var message: String?

    public var requestId: String?

    public var success: Bool?

    public var viewConfigs: GetTemplateViewResponseBody.ViewConfigs?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.viewConfigs?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.details != nil {
            map["Details"] = self.details!
        }
        if self.errorCode != nil {
            map["ErrorCode"] = self.errorCode!
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
        if self.viewConfigs != nil {
            map["ViewConfigs"] = self.viewConfigs?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Code"] as? Int32 {
            self.code = value
        }
        if let value = dict["Details"] as? String {
            self.details = value
        }
        if let value = dict["ErrorCode"] as? String {
            self.errorCode = value
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
        if let value = dict["ViewConfigs"] as? [String: Any?] {
            var model = GetTemplateViewResponseBody.ViewConfigs()
            model.fromMap(value)
            self.viewConfigs = model
        }
    }
}

public class GetTemplateViewResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetTemplateViewResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = GetTemplateViewResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetTenantResponseBody : Tea.TeaModel {
    public var code: Int32?

    public var details: String?

    public var errorCode: String?

    public var message: String?

    public var requestId: String?

    public var success: Bool?

    public var tenant: SingleTenant?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.tenant?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.details != nil {
            map["Details"] = self.details!
        }
        if self.errorCode != nil {
            map["ErrorCode"] = self.errorCode!
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
        if self.tenant != nil {
            map["Tenant"] = self.tenant?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Code"] as? Int32 {
            self.code = value
        }
        if let value = dict["Details"] as? String {
            self.details = value
        }
        if let value = dict["ErrorCode"] as? String {
            self.errorCode = value
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
        if let value = dict["Tenant"] as? [String: Any?] {
            var model = SingleTenant()
            model.fromMap(value)
            self.tenant = model
        }
    }
}

public class GetTenantResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetTenantResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = GetTenantResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetUserResponseBody : Tea.TeaModel {
    public var code: Int32?

    public var details: String?

    public var errorCode: String?

    public var message: String?

    public var requestId: String?

    public var success: Bool?

    public var user: SimpleUser?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.user?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.details != nil {
            map["Details"] = self.details!
        }
        if self.errorCode != nil {
            map["ErrorCode"] = self.errorCode!
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
        if self.user != nil {
            map["User"] = self.user?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Code"] as? Int32 {
            self.code = value
        }
        if let value = dict["Details"] as? String {
            self.details = value
        }
        if let value = dict["ErrorCode"] as? String {
            self.errorCode = value
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
        if let value = dict["User"] as? [String: Any?] {
            var model = SimpleUser()
            model.fromMap(value)
            self.user = model
        }
    }
}

public class GetUserResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetUserResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = GetUserResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ListJobsRequest : Tea.TeaModel {
    public var jobType: String?

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
        if self.jobType != nil {
            map["JobType"] = self.jobType!
        }
        if self.pageNumber != nil {
            map["PageNumber"] = self.pageNumber!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["JobType"] as? String {
            self.jobType = value
        }
        if let value = dict["PageNumber"] as? Int32 {
            self.pageNumber = value
        }
        if let value = dict["PageSize"] as? Int32 {
            self.pageSize = value
        }
    }
}

public class ListJobsResponseBody : Tea.TeaModel {
    public var code: Int32?

    public var details: String?

    public var errorCode: String?

    public var jobs: [Job]?

    public var message: String?

    public var pageNumber: Int32?

    public var pageSize: Int32?

    public var requestId: String?

    public var success: Bool?

    public var totalCount: Int32?

    public var totalPage: Int32?

    public override init() {
        super.init()
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
        if self.details != nil {
            map["Details"] = self.details!
        }
        if self.errorCode != nil {
            map["ErrorCode"] = self.errorCode!
        }
        if self.jobs != nil {
            var tmp : [Any] = []
            for k in self.jobs! {
                tmp.append(k.toMap())
            }
            map["Jobs"] = tmp
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
        if self.totalCount != nil {
            map["TotalCount"] = self.totalCount!
        }
        if self.totalPage != nil {
            map["TotalPage"] = self.totalPage!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Code"] as? Int32 {
            self.code = value
        }
        if let value = dict["Details"] as? String {
            self.details = value
        }
        if let value = dict["ErrorCode"] as? String {
            self.errorCode = value
        }
        if let value = dict["Jobs"] as? [Any?] {
            var tmp : [Job] = []
            for v in value {
                if v != nil {
                    var model = Job()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.jobs = tmp
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["PageNumber"] as? Int32 {
            self.pageNumber = value
        }
        if let value = dict["PageSize"] as? Int32 {
            self.pageSize = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
        if let value = dict["TotalCount"] as? Int32 {
            self.totalCount = value
        }
        if let value = dict["TotalPage"] as? Int32 {
            self.totalPage = value
        }
    }
}

public class ListJobsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListJobsResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = ListJobsResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ListSubtaskItemsRequest : Tea.TeaModel {
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["PageNumber"] as? Int32 {
            self.pageNumber = value
        }
        if let value = dict["PageSize"] as? Int32 {
            self.pageSize = value
        }
    }
}

public class ListSubtaskItemsResponseBody : Tea.TeaModel {
    public var code: Int32?

    public var details: String?

    public var errorCode: String?

    public var items: [SubtaskItemDetail]?

    public var message: String?

    public var pageNumber: Int32?

    public var pageSize: Int32?

    public var requestId: String?

    public var success: Bool?

    public var totalCount: Int32?

    public var totalPage: Int32?

    public override init() {
        super.init()
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
        if self.details != nil {
            map["Details"] = self.details!
        }
        if self.errorCode != nil {
            map["ErrorCode"] = self.errorCode!
        }
        if self.items != nil {
            var tmp : [Any] = []
            for k in self.items! {
                tmp.append(k.toMap())
            }
            map["Items"] = tmp
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
        if self.totalCount != nil {
            map["TotalCount"] = self.totalCount!
        }
        if self.totalPage != nil {
            map["TotalPage"] = self.totalPage!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Code"] as? Int32 {
            self.code = value
        }
        if let value = dict["Details"] as? String {
            self.details = value
        }
        if let value = dict["ErrorCode"] as? String {
            self.errorCode = value
        }
        if let value = dict["Items"] as? [Any?] {
            var tmp : [SubtaskItemDetail] = []
            for v in value {
                if v != nil {
                    var model = SubtaskItemDetail()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.items = tmp
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["PageNumber"] as? Int32 {
            self.pageNumber = value
        }
        if let value = dict["PageSize"] as? Int32 {
            self.pageSize = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
        if let value = dict["TotalCount"] as? Int32 {
            self.totalCount = value
        }
        if let value = dict["TotalPage"] as? Int32 {
            self.totalPage = value
        }
    }
}

public class ListSubtaskItemsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListSubtaskItemsResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = ListSubtaskItemsResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ListSubtasksRequest : Tea.TeaModel {
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["PageNumber"] as? Int32 {
            self.pageNumber = value
        }
        if let value = dict["PageSize"] as? Int32 {
            self.pageSize = value
        }
    }
}

public class ListSubtasksResponseBody : Tea.TeaModel {
    public var code: Int32?

    public var details: String?

    public var errorCode: String?

    public var message: String?

    public var pageNumber: Int32?

    public var pageSize: Int32?

    public var requestId: String?

    public var subtasks: [SubtaskDetail]?

    public var success: Bool?

    public var totalCount: Int32?

    public var totalPage: Int32?

    public override init() {
        super.init()
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
        if self.details != nil {
            map["Details"] = self.details!
        }
        if self.errorCode != nil {
            map["ErrorCode"] = self.errorCode!
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
        if self.subtasks != nil {
            var tmp : [Any] = []
            for k in self.subtasks! {
                tmp.append(k.toMap())
            }
            map["Subtasks"] = tmp
        }
        if self.success != nil {
            map["Success"] = self.success!
        }
        if self.totalCount != nil {
            map["TotalCount"] = self.totalCount!
        }
        if self.totalPage != nil {
            map["TotalPage"] = self.totalPage!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Code"] as? Int32 {
            self.code = value
        }
        if let value = dict["Details"] as? String {
            self.details = value
        }
        if let value = dict["ErrorCode"] as? String {
            self.errorCode = value
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["PageNumber"] as? Int32 {
            self.pageNumber = value
        }
        if let value = dict["PageSize"] as? Int32 {
            self.pageSize = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Subtasks"] as? [Any?] {
            var tmp : [SubtaskDetail] = []
            for v in value {
                if v != nil {
                    var model = SubtaskDetail()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.subtasks = tmp
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
        if let value = dict["TotalCount"] as? Int32 {
            self.totalCount = value
        }
        if let value = dict["TotalPage"] as? Int32 {
            self.totalPage = value
        }
    }
}

public class ListSubtasksResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListSubtasksResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = ListSubtasksResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ListTasksRequest : Tea.TeaModel {
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["PageNumber"] as? Int32 {
            self.pageNumber = value
        }
        if let value = dict["PageSize"] as? Int32 {
            self.pageSize = value
        }
    }
}

public class ListTasksResponseBody : Tea.TeaModel {
    public var code: Int32?

    public var details: String?

    public var errorCode: String?

    public var message: String?

    public var pageNumber: Int32?

    public var pageSize: Int32?

    public var requestId: String?

    public var success: Bool?

    public var tasks: [SimpleTask]?

    public var totalCount: Int32?

    public var totalPage: Int32?

    public override init() {
        super.init()
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
        if self.details != nil {
            map["Details"] = self.details!
        }
        if self.errorCode != nil {
            map["ErrorCode"] = self.errorCode!
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
        if self.tasks != nil {
            var tmp : [Any] = []
            for k in self.tasks! {
                tmp.append(k.toMap())
            }
            map["Tasks"] = tmp
        }
        if self.totalCount != nil {
            map["TotalCount"] = self.totalCount!
        }
        if self.totalPage != nil {
            map["TotalPage"] = self.totalPage!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Code"] as? Int32 {
            self.code = value
        }
        if let value = dict["Details"] as? String {
            self.details = value
        }
        if let value = dict["ErrorCode"] as? String {
            self.errorCode = value
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["PageNumber"] as? Int32 {
            self.pageNumber = value
        }
        if let value = dict["PageSize"] as? Int32 {
            self.pageSize = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
        if let value = dict["Tasks"] as? [Any?] {
            var tmp : [SimpleTask] = []
            for v in value {
                if v != nil {
                    var model = SimpleTask()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.tasks = tmp
        }
        if let value = dict["TotalCount"] as? Int32 {
            self.totalCount = value
        }
        if let value = dict["TotalPage"] as? Int32 {
            self.totalPage = value
        }
    }
}

public class ListTasksResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListTasksResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = ListTasksResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ListTemplatesRequest : Tea.TeaModel {
    public var pageNumber: Int32?

    public var pageSize: Int32?

    public var searchKey: String?

    public var types: [String]?

    public override init() {
        super.init()
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
        if self.searchKey != nil {
            map["SearchKey"] = self.searchKey!
        }
        if self.types != nil {
            map["Types"] = self.types!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["PageNumber"] as? Int32 {
            self.pageNumber = value
        }
        if let value = dict["PageSize"] as? Int32 {
            self.pageSize = value
        }
        if let value = dict["SearchKey"] as? String {
            self.searchKey = value
        }
        if let value = dict["Types"] as? [String] {
            self.types = value
        }
    }
}

public class ListTemplatesShrinkRequest : Tea.TeaModel {
    public var pageNumber: Int32?

    public var pageSize: Int32?

    public var searchKey: String?

    public var typesShrink: String?

    public override init() {
        super.init()
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
        if self.searchKey != nil {
            map["SearchKey"] = self.searchKey!
        }
        if self.typesShrink != nil {
            map["Types"] = self.typesShrink!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["PageNumber"] as? Int32 {
            self.pageNumber = value
        }
        if let value = dict["PageSize"] as? Int32 {
            self.pageSize = value
        }
        if let value = dict["SearchKey"] as? String {
            self.searchKey = value
        }
        if let value = dict["Types"] as? String {
            self.typesShrink = value
        }
    }
}

public class ListTemplatesResponseBody : Tea.TeaModel {
    public var code: Int32?

    public var details: String?

    public var errorCode: String?

    public var message: String?

    public var pageNumber: Int32?

    public var pageSize: Int32?

    public var requestId: String?

    public var success: Bool?

    public var templates: [SimpleTemplate]?

    public var totalCount: Int32?

    public var totalPage: Int32?

    public override init() {
        super.init()
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
        if self.details != nil {
            map["Details"] = self.details!
        }
        if self.errorCode != nil {
            map["ErrorCode"] = self.errorCode!
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
        if self.templates != nil {
            var tmp : [Any] = []
            for k in self.templates! {
                tmp.append(k.toMap())
            }
            map["Templates"] = tmp
        }
        if self.totalCount != nil {
            map["TotalCount"] = self.totalCount!
        }
        if self.totalPage != nil {
            map["TotalPage"] = self.totalPage!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Code"] as? Int32 {
            self.code = value
        }
        if let value = dict["Details"] as? String {
            self.details = value
        }
        if let value = dict["ErrorCode"] as? String {
            self.errorCode = value
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["PageNumber"] as? Int32 {
            self.pageNumber = value
        }
        if let value = dict["PageSize"] as? Int32 {
            self.pageSize = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
        if let value = dict["Templates"] as? [Any?] {
            var tmp : [SimpleTemplate] = []
            for v in value {
                if v != nil {
                    var model = SimpleTemplate()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.templates = tmp
        }
        if let value = dict["TotalCount"] as? Int32 {
            self.totalCount = value
        }
        if let value = dict["TotalPage"] as? Int32 {
            self.totalPage = value
        }
    }
}

public class ListTemplatesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListTemplatesResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = ListTemplatesResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ListTenantsRequest : Tea.TeaModel {
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["PageNumber"] as? Int32 {
            self.pageNumber = value
        }
        if let value = dict["PageSize"] as? Int32 {
            self.pageSize = value
        }
    }
}

public class ListTenantsResponseBody : Tea.TeaModel {
    public var code: Int32?

    public var details: String?

    public var errorCode: String?

    public var message: String?

    public var pageNumber: Int32?

    public var pageSize: Int32?

    public var requestId: String?

    public var success: Bool?

    public var tenants: [SimpleTenant]?

    public var totalCount: Int32?

    public var totalPage: Int32?

    public override init() {
        super.init()
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
        if self.details != nil {
            map["Details"] = self.details!
        }
        if self.errorCode != nil {
            map["ErrorCode"] = self.errorCode!
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
        if self.tenants != nil {
            var tmp : [Any] = []
            for k in self.tenants! {
                tmp.append(k.toMap())
            }
            map["Tenants"] = tmp
        }
        if self.totalCount != nil {
            map["TotalCount"] = self.totalCount!
        }
        if self.totalPage != nil {
            map["TotalPage"] = self.totalPage!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Code"] as? Int32 {
            self.code = value
        }
        if let value = dict["Details"] as? String {
            self.details = value
        }
        if let value = dict["ErrorCode"] as? String {
            self.errorCode = value
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["PageNumber"] as? Int32 {
            self.pageNumber = value
        }
        if let value = dict["PageSize"] as? Int32 {
            self.pageSize = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
        if let value = dict["Tenants"] as? [Any?] {
            var tmp : [SimpleTenant] = []
            for v in value {
                if v != nil {
                    var model = SimpleTenant()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.tenants = tmp
        }
        if let value = dict["TotalCount"] as? Int32 {
            self.totalCount = value
        }
        if let value = dict["TotalPage"] as? Int32 {
            self.totalPage = value
        }
    }
}

public class ListTenantsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListTenantsResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = ListTenantsResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ListUsersRequest : Tea.TeaModel {
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["PageNumber"] as? Int32 {
            self.pageNumber = value
        }
        if let value = dict["PageSize"] as? Int32 {
            self.pageSize = value
        }
    }
}

public class ListUsersResponseBody : Tea.TeaModel {
    public var code: Int32?

    public var details: String?

    public var errorCode: String?

    public var message: String?

    public var pageNumber: Int32?

    public var pageSize: Int32?

    public var requestId: String?

    public var success: Bool?

    public var totalCount: Int32?

    public var totalPage: Int32?

    public var users: [SimpleUser]?

    public override init() {
        super.init()
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
        if self.details != nil {
            map["Details"] = self.details!
        }
        if self.errorCode != nil {
            map["ErrorCode"] = self.errorCode!
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
        if self.totalCount != nil {
            map["TotalCount"] = self.totalCount!
        }
        if self.totalPage != nil {
            map["TotalPage"] = self.totalPage!
        }
        if self.users != nil {
            var tmp : [Any] = []
            for k in self.users! {
                tmp.append(k.toMap())
            }
            map["Users"] = tmp
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Code"] as? Int32 {
            self.code = value
        }
        if let value = dict["Details"] as? String {
            self.details = value
        }
        if let value = dict["ErrorCode"] as? String {
            self.errorCode = value
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["PageNumber"] as? Int32 {
            self.pageNumber = value
        }
        if let value = dict["PageSize"] as? Int32 {
            self.pageSize = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
        if let value = dict["TotalCount"] as? Int32 {
            self.totalCount = value
        }
        if let value = dict["TotalPage"] as? Int32 {
            self.totalPage = value
        }
        if let value = dict["Users"] as? [Any?] {
            var tmp : [SimpleUser] = []
            for v in value {
                if v != nil {
                    var model = SimpleUser()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.users = tmp
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
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = ListUsersResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class RemoveWorkNodeWorkforceRequest : Tea.TeaModel {
    public var userIds: [Int64]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.userIds != nil {
            map["UserIds"] = self.userIds!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["UserIds"] as? [Int64] {
            self.userIds = value
        }
    }
}

public class RemoveWorkNodeWorkforceResponseBody : Tea.TeaModel {
    public var code: Int32?

    public var details: String?

    public var errorCode: String?

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
        if self.details != nil {
            map["Details"] = self.details!
        }
        if self.errorCode != nil {
            map["ErrorCode"] = self.errorCode!
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
        if let value = dict["Code"] as? Int32 {
            self.code = value
        }
        if let value = dict["Details"] as? String {
            self.details = value
        }
        if let value = dict["ErrorCode"] as? String {
            self.errorCode = value
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

public class RemoveWorkNodeWorkforceResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: RemoveWorkNodeWorkforceResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = RemoveWorkNodeWorkforceResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class UpdateTaskRequest : Tea.TeaModel {
    public var body: UpdateTaskDTO?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["body"] as? [String: Any?] {
            var model = UpdateTaskDTO()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class UpdateTaskResponseBody : Tea.TeaModel {
    public var code: Int32?

    public var details: String?

    public var errorCode: String?

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
        if self.details != nil {
            map["Details"] = self.details!
        }
        if self.errorCode != nil {
            map["ErrorCode"] = self.errorCode!
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
        if let value = dict["Code"] as? Int32 {
            self.code = value
        }
        if let value = dict["Details"] as? String {
            self.details = value
        }
        if let value = dict["ErrorCode"] as? String {
            self.errorCode = value
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

public class UpdateTaskResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpdateTaskResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = UpdateTaskResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class UpdateTaskWorkforceRequest : Tea.TeaModel {
    public var workforce: [SimpleWorkforce]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.workforce != nil {
            var tmp : [Any] = []
            for k in self.workforce! {
                tmp.append(k.toMap())
            }
            map["Workforce"] = tmp
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Workforce"] as? [Any?] {
            var tmp : [SimpleWorkforce] = []
            for v in value {
                if v != nil {
                    var model = SimpleWorkforce()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.workforce = tmp
        }
    }
}

public class UpdateTaskWorkforceResponseBody : Tea.TeaModel {
    public var code: Int32?

    public var details: String?

    public var errorCode: String?

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
        if self.details != nil {
            map["Details"] = self.details!
        }
        if self.errorCode != nil {
            map["ErrorCode"] = self.errorCode!
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
        if let value = dict["Code"] as? Int32 {
            self.code = value
        }
        if let value = dict["Details"] as? String {
            self.details = value
        }
        if let value = dict["ErrorCode"] as? String {
            self.errorCode = value
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

public class UpdateTaskWorkforceResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpdateTaskWorkforceResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = UpdateTaskWorkforceResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class UpdateTemplateRequest : Tea.TeaModel {
    public var body: TemplateDTO?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["body"] as? [String: Any?] {
            var model = TemplateDTO()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class UpdateTemplateResponseBody : Tea.TeaModel {
    public var code: Int32?

    public var details: String?

    public var errorCode: String?

    public var message: String?

    public var requestId: String?

    public var success: Bool?

    public var templateId: String?

    public override init() {
        super.init()
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
        if self.details != nil {
            map["Details"] = self.details!
        }
        if self.errorCode != nil {
            map["ErrorCode"] = self.errorCode!
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
        if self.templateId != nil {
            map["TemplateId"] = self.templateId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Code"] as? Int32 {
            self.code = value
        }
        if let value = dict["Details"] as? String {
            self.details = value
        }
        if let value = dict["ErrorCode"] as? String {
            self.errorCode = value
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
        if let value = dict["TemplateId"] as? String {
            self.templateId = value
        }
    }
}

public class UpdateTemplateResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpdateTemplateResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = UpdateTemplateResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class UpdateTenantRequest : Tea.TeaModel {
    public var description_: String?

    public var tenantName: String?

    public override init() {
        super.init()
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
        if self.tenantName != nil {
            map["TenantName"] = self.tenantName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Description"] as? String {
            self.description_ = value
        }
        if let value = dict["TenantName"] as? String {
            self.tenantName = value
        }
    }
}

public class UpdateTenantResponseBody : Tea.TeaModel {
    public var code: Int32?

    public var details: String?

    public var errorCode: String?

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
        if self.details != nil {
            map["Details"] = self.details!
        }
        if self.errorCode != nil {
            map["ErrorCode"] = self.errorCode!
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
        if let value = dict["Code"] as? Int32 {
            self.code = value
        }
        if let value = dict["Details"] as? String {
            self.details = value
        }
        if let value = dict["ErrorCode"] as? String {
            self.errorCode = value
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

public class UpdateTenantResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpdateTenantResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = UpdateTenantResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class UpdateUserRequest : Tea.TeaModel {
    public var role: String?

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
        if self.role != nil {
            map["Role"] = self.role!
        }
        if self.userName != nil {
            map["UserName"] = self.userName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Role"] as? String {
            self.role = value
        }
        if let value = dict["UserName"] as? String {
            self.userName = value
        }
    }
}

public class UpdateUserResponseBody : Tea.TeaModel {
    public var code: Int32?

    public var details: String?

    public var errorCode: String?

    public var message: String?

    public var requestId: String?

    public var success: Bool?

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
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.details != nil {
            map["Details"] = self.details!
        }
        if self.errorCode != nil {
            map["ErrorCode"] = self.errorCode!
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
        if self.userId != nil {
            map["UserId"] = self.userId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Code"] as? Int32 {
            self.code = value
        }
        if let value = dict["Details"] as? String {
            self.details = value
        }
        if let value = dict["ErrorCode"] as? String {
            self.errorCode = value
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
        if let value = dict["UserId"] as? String {
            self.userId = value
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
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = UpdateUserResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}
