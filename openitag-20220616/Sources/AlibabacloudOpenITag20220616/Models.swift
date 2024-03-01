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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Users") && dict["Users"] != nil {
                var tmp : [SimpleUser] = []
                for v in dict["Users"] as! [Any] {
                    var model = SimpleUser()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("NodeName") && dict["NodeName"] != nil {
                self.nodeName = dict["NodeName"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Admins") && dict["Admins"] != nil {
            var model = CreateTaskDetail.Admins()
            model.fromMap(dict["Admins"] as! [String: Any])
            self.admins = model
        }
        if dict.keys.contains("AllowAppendData") && dict["AllowAppendData"] != nil {
            self.allowAppendData = dict["AllowAppendData"] as! Bool
        }
        if dict.keys.contains("AssignConfig") && dict["AssignConfig"] != nil {
            var model = TaskAssginConfig()
            model.fromMap(dict["AssignConfig"] as! [String: Any])
            self.assignConfig = model
        }
        if dict.keys.contains("DatasetProxyRelations") && dict["DatasetProxyRelations"] != nil {
            var tmp : [DatasetProxyConfig] = []
            for v in dict["DatasetProxyRelations"] as! [Any] {
                var model = DatasetProxyConfig()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.datasetProxyRelations = tmp
        }
        if dict.keys.contains("Exif") && dict["Exif"] != nil {
            self.exif = dict["Exif"] as! [String: Any]
        }
        if dict.keys.contains("Tags") && dict["Tags"] != nil {
            self.tags = dict["Tags"] as! [String]
        }
        if dict.keys.contains("TaskName") && dict["TaskName"] != nil {
            self.taskName = dict["TaskName"] as! String
        }
        if dict.keys.contains("TaskTemplateConfig") && dict["TaskTemplateConfig"] != nil {
            var model = TaskTemplateConfig()
            model.fromMap(dict["TaskTemplateConfig"] as! [String: Any])
            self.taskTemplateConfig = model
        }
        if dict.keys.contains("TaskWorkflow") && dict["TaskWorkflow"] != nil {
            var tmp : [CreateTaskDetail.TaskWorkflow] = []
            for v in dict["TaskWorkflow"] as! [Any] {
                var model = CreateTaskDetail.TaskWorkflow()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.taskWorkflow = tmp
        }
        if dict.keys.contains("TemplateId") && dict["TemplateId"] != nil {
            self.templateId = dict["TemplateId"] as! String
        }
        if dict.keys.contains("UUID") && dict["UUID"] != nil {
            self.UUID = dict["UUID"] as! String
        }
        if dict.keys.contains("VoteConfigs") && dict["VoteConfigs"] != nil {
            var tmp : [String: CreateTaskDetailVoteInfo] = [:]
            for (k, v) in dict["VoteConfigs"] as! [String: Any] {
                if v != nil {
                    var model = CreateTaskDetailVoteInfo()
                    model.fromMap(v as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("MinVote") && dict["MinVote"] != nil {
            self.minVote = dict["MinVote"] as! Int64
        }
        if dict.keys.contains("VoteNum") && dict["VoteNum"] != nil {
            self.voteNum = dict["VoteNum"] as! Int64
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DatasetType") && dict["DatasetType"] != nil {
            self.datasetType = dict["DatasetType"] as! String
        }
        if dict.keys.contains("Source") && dict["Source"] != nil {
            self.source = dict["Source"] as! String
        }
        if dict.keys.contains("SourceDatasetId") && dict["SourceDatasetId"] != nil {
            self.sourceDatasetId = dict["SourceDatasetId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Display") && dict["Display"] != nil {
            self.display = dict["Display"] as! Bool
        }
        if dict.keys.contains("JobId") && dict["JobId"] != nil {
            self.jobId = dict["JobId"] as! String
        }
        if dict.keys.contains("JobType") && dict["JobType"] != nil {
            self.jobType = dict["JobType"] as! String
        }
        if dict.keys.contains("MessageId") && dict["MessageId"] != nil {
            self.messageId = dict["MessageId"] as! String
        }
        if dict.keys.contains("ProcessType") && dict["ProcessType"] != nil {
            self.processType = dict["ProcessType"] as! String
        }
        if dict.keys.contains("TaskId") && dict["TaskId"] != nil {
            self.taskId = dict["TaskId"] as! String
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("ResultLink") && dict["ResultLink"] != nil {
                self.resultLink = dict["ResultLink"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Creator") && dict["Creator"] != nil {
            var model = SimpleUser()
            model.fromMap(dict["Creator"] as! [String: Any])
            self.creator = model
        }
        if dict.keys.contains("GmtCreateTime") && dict["GmtCreateTime"] != nil {
            self.gmtCreateTime = dict["GmtCreateTime"] as! String
        }
        if dict.keys.contains("GmtModifiedTime") && dict["GmtModifiedTime"] != nil {
            self.gmtModifiedTime = dict["GmtModifiedTime"] as! String
        }
        if dict.keys.contains("JobId") && dict["JobId"] != nil {
            self.jobId = dict["JobId"] as! String
        }
        if dict.keys.contains("JobResult") && dict["JobResult"] != nil {
            var model = Job.JobResult()
            model.fromMap(dict["JobResult"] as! [String: Any])
            self.jobResult = model
        }
        if dict.keys.contains("JobType") && dict["JobType"] != nil {
            self.jobType = dict["JobType"] as! String
        }
        if dict.keys.contains("Status") && dict["Status"] != nil {
            self.status = dict["Status"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("IsNeedVoteJudge") && dict["IsNeedVoteJudge"] != nil {
            self.isNeedVoteJudge = dict["IsNeedVoteJudge"] as! Bool
        }
        if dict.keys.contains("MarkResult") && dict["MarkResult"] != nil {
            self.markResult = dict["MarkResult"] as! String
        }
        if dict.keys.contains("MarkResultId") && dict["MarkResultId"] != nil {
            self.markResultId = dict["MarkResultId"] as! String
        }
        if dict.keys.contains("MarkTime") && dict["MarkTime"] != nil {
            self.markTime = dict["MarkTime"] as! String
        }
        if dict.keys.contains("MarkTitle") && dict["MarkTitle"] != nil {
            self.markTitle = dict["MarkTitle"] as! String
        }
        if dict.keys.contains("Progress") && dict["Progress"] != nil {
            self.progress = dict["Progress"] as! String
        }
        if dict.keys.contains("QuestionId") && dict["QuestionId"] != nil {
            self.questionId = dict["QuestionId"] as! String
        }
        if dict.keys.contains("ResultType") && dict["ResultType"] != nil {
            self.resultType = dict["ResultType"] as! String
        }
        if dict.keys.contains("UserMarkResultId") && dict["UserMarkResultId"] != nil {
            self.userMarkResultId = dict["UserMarkResultId"] as! String
        }
        if dict.keys.contains("Version") && dict["Version"] != nil {
            self.version = dict["Version"] as! String
        }
    }
}

public class OpenDatasetProxyAppendDataRequest : Tea.TeaModel {
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DataMeta") && dict["DataMeta"] != nil {
            self.dataMeta = dict["DataMeta"] as! [[String: String]]
        }
        if dict.keys.contains("TaskId") && dict["TaskId"] != nil {
            self.taskId = dict["TaskId"] as! String
        }
        if dict.keys.contains("TraceId") && dict["TraceId"] != nil {
            self.traceId = dict["TraceId"] as! String
        }
        if dict.keys.contains("UUID") && dict["UUID"] != nil {
            self.UUID = dict["UUID"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Children") && dict["Children"] != nil {
            var tmp : [QuestionOption] = []
            for v in dict["Children"] as! [Any] {
                var model = QuestionOption()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.children = tmp
        }
        if dict.keys.contains("Color") && dict["Color"] != nil {
            self.color = dict["Color"] as! String
        }
        if dict.keys.contains("Key") && dict["Key"] != nil {
            self.key = dict["Key"] as! String
        }
        if dict.keys.contains("Label") && dict["Label"] != nil {
            self.label = dict["Label"] as! String
        }
        if dict.keys.contains("Remark") && dict["Remark"] != nil {
            self.remark = dict["Remark"] as! String
        }
        if dict.keys.contains("Shortcut") && dict["Shortcut"] != nil {
            self.shortcut = dict["Shortcut"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("CanSelect") && dict["CanSelect"] != nil {
            self.canSelect = dict["CanSelect"] as! Bool
        }
        if dict.keys.contains("Children") && dict["Children"] != nil {
            var tmp : [QuestionPlugin] = []
            for v in dict["Children"] as! [Any] {
                var model = QuestionPlugin()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.children = tmp
        }
        if dict.keys.contains("DefaultResult") && dict["DefaultResult"] != nil {
            self.defaultResult = dict["DefaultResult"] as! String
        }
        if dict.keys.contains("Display") && dict["Display"] != nil {
            self.display = dict["Display"] as! Bool
        }
        if dict.keys.contains("Exif") && dict["Exif"] != nil {
            self.exif = dict["Exif"] as! [String: Any]
        }
        if dict.keys.contains("HotKeyMap") && dict["HotKeyMap"] != nil {
            self.hotKeyMap = dict["HotKeyMap"] as! String
        }
        if dict.keys.contains("MarkTitle") && dict["MarkTitle"] != nil {
            self.markTitle = dict["MarkTitle"] as! String
        }
        if dict.keys.contains("MarkTitleAlias") && dict["MarkTitleAlias"] != nil {
            self.markTitleAlias = dict["MarkTitleAlias"] as! String
        }
        if dict.keys.contains("MustFill") && dict["MustFill"] != nil {
            self.mustFill = dict["MustFill"] as! Bool
        }
        if dict.keys.contains("Options") && dict["Options"] != nil {
            var tmp : [QuestionOption] = []
            for v in dict["Options"] as! [Any] {
                var model = QuestionOption()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.options = tmp
        }
        if dict.keys.contains("PreOptions") && dict["PreOptions"] != nil {
            self.preOptions = dict["PreOptions"] as! [String]
        }
        if dict.keys.contains("QuestionId") && dict["QuestionId"] != nil {
            self.questionId = dict["QuestionId"] as! String
        }
        if dict.keys.contains("Rule") && dict["Rule"] != nil {
            self.rule = dict["Rule"] as! String
        }
        if dict.keys.contains("SelectGroup") && dict["SelectGroup"] != nil {
            self.selectGroup = dict["SelectGroup"] as! String
        }
        if dict.keys.contains("Selected") && dict["Selected"] != nil {
            self.selected = dict["Selected"] as! Bool
        }
        if dict.keys.contains("Type") && dict["Type"] != nil {
            self.type = dict["Type"] as! String
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("AbandonFlag") && dict["AbandonFlag"] != nil {
                self.abandonFlag = dict["AbandonFlag"] as! Bool
            }
            if dict.keys.contains("AbandonRemark") && dict["AbandonRemark"] != nil {
                self.abandonRemark = dict["AbandonRemark"] as! String
            }
            if dict.keys.contains("DataId") && dict["DataId"] != nil {
                self.dataId = dict["DataId"] as! String
            }
            if dict.keys.contains("FeedbackFlag") && dict["FeedbackFlag"] != nil {
                self.feedbackFlag = dict["FeedbackFlag"] as! Bool
            }
            if dict.keys.contains("FeedbackRemark") && dict["FeedbackRemark"] != nil {
                self.feedbackRemark = dict["FeedbackRemark"] as! String
            }
            if dict.keys.contains("FixedFlag") && dict["FixedFlag"] != nil {
                self.fixedFlag = dict["FixedFlag"] as! Bool
            }
            if dict.keys.contains("ItemId") && dict["ItemId"] != nil {
                self.itemId = dict["ItemId"] as! Int64
            }
            if dict.keys.contains("Mine") && dict["Mine"] != nil {
                self.mine = dict["Mine"] as! Int64
            }
            if dict.keys.contains("RejectFlag") && dict["RejectFlag"] != nil {
                self.rejectFlag = dict["RejectFlag"] as! Bool
            }
            if dict.keys.contains("State") && dict["State"] != nil {
                self.state = dict["State"] as! String
            }
            if dict.keys.contains("Weight") && dict["Weight"] != nil {
                self.weight = dict["Weight"] as! Int64
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Items") && dict["Items"] != nil {
            var tmp : [SimpleSubtask.Items] = []
            for v in dict["Items"] as! [Any] {
                var model = SimpleSubtask.Items()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.items = tmp
        }
        if dict.keys.contains("Status") && dict["Status"] != nil {
            self.status = dict["Status"] as! String
        }
        if dict.keys.contains("SubtaskId") && dict["SubtaskId"] != nil {
            self.subtaskId = dict["SubtaskId"] as! Int64
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Archived") && dict["Archived"] != nil {
            self.archived = dict["Archived"] as! Bool
        }
        if dict.keys.contains("ArchivedInfos") && dict["ArchivedInfos"] != nil {
            self.archivedInfos = dict["ArchivedInfos"] as! String
        }
        if dict.keys.contains("Creator") && dict["Creator"] != nil {
            var model = SimpleUser()
            model.fromMap(dict["Creator"] as! [String: Any])
            self.creator = model
        }
        if dict.keys.contains("GmtCreateTime") && dict["GmtCreateTime"] != nil {
            self.gmtCreateTime = dict["GmtCreateTime"] as! String
        }
        if dict.keys.contains("GmtModifiedTime") && dict["GmtModifiedTime"] != nil {
            self.gmtModifiedTime = dict["GmtModifiedTime"] as! String
        }
        if dict.keys.contains("LabelStyle") && dict["LabelStyle"] != nil {
            self.labelStyle = dict["LabelStyle"] as! String
        }
        if dict.keys.contains("Modifier") && dict["Modifier"] != nil {
            var model = SimpleUser()
            model.fromMap(dict["Modifier"] as! [String: Any])
            self.modifier = model
        }
        if dict.keys.contains("RefTaskId") && dict["RefTaskId"] != nil {
            self.refTaskId = dict["RefTaskId"] as! String
        }
        if dict.keys.contains("Remark") && dict["Remark"] != nil {
            self.remark = dict["Remark"] as! String
        }
        if dict.keys.contains("Stage") && dict["Stage"] != nil {
            self.stage = dict["Stage"] as! String
        }
        if dict.keys.contains("Status") && dict["Status"] != nil {
            self.status = dict["Status"] as! String
        }
        if dict.keys.contains("Tags") && dict["Tags"] != nil {
            self.tags = dict["Tags"] as! [String]
        }
        if dict.keys.contains("TaskId") && dict["TaskId"] != nil {
            self.taskId = dict["TaskId"] as! String
        }
        if dict.keys.contains("TaskName") && dict["TaskName"] != nil {
            self.taskName = dict["TaskName"] as! String
        }
        if dict.keys.contains("TaskType") && dict["TaskType"] != nil {
            self.taskType = dict["TaskType"] as! String
        }
        if dict.keys.contains("TemplateId") && dict["TemplateId"] != nil {
            self.templateId = dict["TemplateId"] as! String
        }
        if dict.keys.contains("TenantId") && dict["TenantId"] != nil {
            self.tenantId = dict["TenantId"] as! String
        }
        if dict.keys.contains("UUID") && dict["UUID"] != nil {
            self.UUID = dict["UUID"] as! String
        }
        if dict.keys.contains("WorkflowNodes") && dict["WorkflowNodes"] != nil {
            self.workflowNodes = dict["WorkflowNodes"] as! [String]
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AbandonReasons") && dict["AbandonReasons"] != nil {
            self.abandonReasons = dict["AbandonReasons"] as! String
        }
        if dict.keys.contains("Description") && dict["Description"] != nil {
            self.description_ = dict["Description"] as! String
        }
        if dict.keys.contains("GmtCreateTime") && dict["GmtCreateTime"] != nil {
            self.gmtCreateTime = dict["GmtCreateTime"] as! String
        }
        if dict.keys.contains("GmtModifiedTime") && dict["GmtModifiedTime"] != nil {
            self.gmtModifiedTime = dict["GmtModifiedTime"] as! String
        }
        if dict.keys.contains("SharedMode") && dict["SharedMode"] != nil {
            self.sharedMode = dict["SharedMode"] as! String
        }
        if dict.keys.contains("Status") && dict["Status"] != nil {
            self.status = dict["Status"] as! String
        }
        if dict.keys.contains("Tags") && dict["Tags"] != nil {
            self.tags = dict["Tags"] as! [String]
        }
        if dict.keys.contains("TemplateId") && dict["TemplateId"] != nil {
            self.templateId = dict["TemplateId"] as! String
        }
        if dict.keys.contains("TemplateName") && dict["TemplateName"] != nil {
            self.templateName = dict["TemplateName"] as! String
        }
        if dict.keys.contains("TenantId") && dict["TenantId"] != nil {
            self.tenantId = dict["TenantId"] as! String
        }
        if dict.keys.contains("Type") && dict["Type"] != nil {
            self.type = dict["Type"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Creator") && dict["Creator"] != nil {
            var model = SimpleUser()
            model.fromMap(dict["Creator"] as! [String: Any])
            self.creator = model
        }
        if dict.keys.contains("Description") && dict["Description"] != nil {
            self.description_ = dict["Description"] as! String
        }
        if dict.keys.contains("GmtCreateTime") && dict["GmtCreateTime"] != nil {
            self.gmtCreateTime = dict["GmtCreateTime"] as! String
        }
        if dict.keys.contains("GmtModifiedTime") && dict["GmtModifiedTime"] != nil {
            self.gmtModifiedTime = dict["GmtModifiedTime"] as! String
        }
        if dict.keys.contains("Modifier") && dict["Modifier"] != nil {
            var model = SimpleUser()
            model.fromMap(dict["Modifier"] as! [String: Any])
            self.modifier = model
        }
        if dict.keys.contains("Role") && dict["Role"] != nil {
            self.role = dict["Role"] as! String
        }
        if dict.keys.contains("TenantId") && dict["TenantId"] != nil {
            self.tenantId = dict["TenantId"] as! String
        }
        if dict.keys.contains("TenantName") && dict["TenantName"] != nil {
            self.tenantName = dict["TenantName"] as! String
        }
        if dict.keys.contains("UUID") && dict["UUID"] != nil {
            self.UUID = dict["UUID"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AccountNo") && dict["AccountNo"] != nil {
            self.accountNo = dict["AccountNo"] as! String
        }
        if dict.keys.contains("AccountType") && dict["AccountType"] != nil {
            self.accountType = dict["AccountType"] as! String
        }
        if dict.keys.contains("Role") && dict["Role"] != nil {
            self.role = dict["Role"] as! String
        }
        if dict.keys.contains("UserId") && dict["UserId"] != nil {
            self.userId = dict["UserId"] as! Int64
        }
        if dict.keys.contains("UserName") && dict["UserName"] != nil {
            self.userName = dict["UserName"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("UserIds") && dict["UserIds"] != nil {
            self.userIds = dict["UserIds"] as! [Int64]
        }
        if dict.keys.contains("WorkNodeId") && dict["WorkNodeId"] != nil {
            self.workNodeId = dict["WorkNodeId"] as! Int32
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Description") && dict["Description"] != nil {
            self.description_ = dict["Description"] as! String
        }
        if dict.keys.contains("Status") && dict["Status"] != nil {
            self.status = dict["Status"] as! String
        }
        if dict.keys.contains("TenantId") && dict["TenantId"] != nil {
            self.tenantId = dict["TenantId"] as! String
        }
        if dict.keys.contains("TenantName") && dict["TenantName"] != nil {
            self.tenantName = dict["TenantName"] as! String
        }
        if dict.keys.contains("UUID") && dict["UUID"] != nil {
            self.UUID = dict["UUID"] as! String
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("AbandonFlag") && dict["AbandonFlag"] != nil {
                self.abandonFlag = dict["AbandonFlag"] as! Bool
            }
            if dict.keys.contains("AbandonRemark") && dict["AbandonRemark"] != nil {
                self.abandonRemark = dict["AbandonRemark"] as! String
            }
            if dict.keys.contains("DataId") && dict["DataId"] != nil {
                self.dataId = dict["DataId"] as! String
            }
            if dict.keys.contains("FeedbackFlag") && dict["FeedbackFlag"] != nil {
                self.feedbackFlag = dict["FeedbackFlag"] as! Bool
            }
            if dict.keys.contains("FeedbackRemark") && dict["FeedbackRemark"] != nil {
                self.feedbackRemark = dict["FeedbackRemark"] as! String
            }
            if dict.keys.contains("FixedFlag") && dict["FixedFlag"] != nil {
                self.fixedFlag = dict["FixedFlag"] as! Bool
            }
            if dict.keys.contains("Mine") && dict["Mine"] != nil {
                self.mine = dict["Mine"] as! Int64
            }
            if dict.keys.contains("RejectFlag") && dict["RejectFlag"] != nil {
                self.rejectFlag = dict["RejectFlag"] as! Bool
            }
            if dict.keys.contains("State") && dict["State"] != nil {
                self.state = dict["State"] as! String
            }
            if dict.keys.contains("Weight") && dict["Weight"] != nil {
                self.weight = dict["Weight"] as! Int64
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("CanDiscard") && dict["CanDiscard"] != nil {
            self.canDiscard = dict["CanDiscard"] as! Bool
        }
        if dict.keys.contains("CanReassign") && dict["CanReassign"] != nil {
            self.canReassign = dict["CanReassign"] as! Bool
        }
        if dict.keys.contains("CanRelease") && dict["CanRelease"] != nil {
            self.canRelease = dict["CanRelease"] as! Bool
        }
        if dict.keys.contains("CurrentWorkNode") && dict["CurrentWorkNode"] != nil {
            self.currentWorkNode = dict["CurrentWorkNode"] as! String
        }
        if dict.keys.contains("ExtConfigs") && dict["ExtConfigs"] != nil {
            self.extConfigs = dict["ExtConfigs"] as! String
        }
        if dict.keys.contains("Items") && dict["Items"] != nil {
            var tmp : [SubtaskDetail.Items] = []
            for v in dict["Items"] as! [Any] {
                var model = SubtaskDetail.Items()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.items = tmp
        }
        if dict.keys.contains("Status") && dict["Status"] != nil {
            self.status = dict["Status"] as! String
        }
        if dict.keys.contains("SubtaskId") && dict["SubtaskId"] != nil {
            self.subtaskId = dict["SubtaskId"] as! String
        }
        if dict.keys.contains("TaskId") && dict["TaskId"] != nil {
            self.taskId = dict["TaskId"] as! String
        }
        if dict.keys.contains("Weight") && dict["Weight"] != nil {
            self.weight = dict["Weight"] as! Int64
        }
        if dict.keys.contains("WorkNodeState") && dict["WorkNodeState"] != nil {
            self.workNodeState = dict["WorkNodeState"] as! String
        }
        if dict.keys.contains("Workforce") && dict["Workforce"] != nil {
            var tmp : [Workforce] = []
            for v in dict["Workforce"] as! [Any] {
                var model = Workforce()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("AbandonFlag") && dict["AbandonFlag"] != nil {
                self.abandonFlag = dict["AbandonFlag"] as! Bool
            }
            if dict.keys.contains("AbandonRemark") && dict["AbandonRemark"] != nil {
                self.abandonRemark = dict["AbandonRemark"] as! String
            }
            if dict.keys.contains("DataId") && dict["DataId"] != nil {
                self.dataId = dict["DataId"] as! String
            }
            if dict.keys.contains("FeedbackFlag") && dict["FeedbackFlag"] != nil {
                self.feedbackFlag = dict["FeedbackFlag"] as! Bool
            }
            if dict.keys.contains("FeedbackRemark") && dict["FeedbackRemark"] != nil {
                self.feedbackRemark = dict["FeedbackRemark"] as! String
            }
            if dict.keys.contains("FixedFlag") && dict["FixedFlag"] != nil {
                self.fixedFlag = dict["FixedFlag"] as! Bool
            }
            if dict.keys.contains("Mine") && dict["Mine"] != nil {
                self.mine = dict["Mine"] as! Int64
            }
            if dict.keys.contains("RejectFlag") && dict["RejectFlag"] != nil {
                self.rejectFlag = dict["RejectFlag"] as! Bool
            }
            if dict.keys.contains("State") && dict["State"] != nil {
                self.state = dict["State"] as! String
            }
            if dict.keys.contains("Weight") && dict["Weight"] != nil {
                self.weight = dict["Weight"] as! Int64
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Annotations") && dict["Annotations"] != nil {
            var tmp : [SubtaskItemDetail.Annotations] = []
            for v in dict["Annotations"] as! [Any] {
                var model = SubtaskItemDetail.Annotations()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.annotations = tmp
        }
        if dict.keys.contains("DataSource") && dict["DataSource"] != nil {
            self.dataSource = dict["DataSource"] as! [String: Any]
        }
        if dict.keys.contains("ItemId") && dict["ItemId"] != nil {
            self.itemId = dict["ItemId"] as! Int64
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AssignCount") && dict["AssignCount"] != nil {
            self.assignCount = dict["AssignCount"] as! Int64
        }
        if dict.keys.contains("AssignField") && dict["AssignField"] != nil {
            self.assignField = dict["AssignField"] as! String
        }
        if dict.keys.contains("AssignSubTaskCount") && dict["AssignSubTaskCount"] != nil {
            self.assignSubTaskCount = dict["AssignSubTaskCount"] as! String
        }
        if dict.keys.contains("AssignType") && dict["AssignType"] != nil {
            self.assignType = dict["AssignType"] as! String
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("DatasetId") && dict["DatasetId"] != nil {
                self.datasetId = dict["DatasetId"] as! String
            }
            if dict.keys.contains("DatasetType") && dict["DatasetType"] != nil {
                self.datasetType = dict["DatasetType"] as! String
            }
            if dict.keys.contains("Exif") && dict["Exif"] != nil {
                self.exif = dict["Exif"] as! [String: Any]
            }
            if dict.keys.contains("Source") && dict["Source"] != nil {
                self.source = dict["Source"] as! String
            }
            if dict.keys.contains("SourceBizId") && dict["SourceBizId"] != nil {
                self.sourceBizId = dict["SourceBizId"] as! String
            }
            if dict.keys.contains("SourceDatasetId") && dict["SourceDatasetId"] != nil {
                self.sourceDatasetId = dict["SourceDatasetId"] as! String
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Exif") && dict["Exif"] != nil {
                self.exif = dict["Exif"] as! [String: Any]
            }
            if dict.keys.contains("ResourceKey") && dict["ResourceKey"] != nil {
                self.resourceKey = dict["ResourceKey"] as! String
            }
            if dict.keys.contains("RobotConfig") && dict["RobotConfig"] != nil {
                self.robotConfig = dict["RobotConfig"] as! [String: Any]
            }
            if dict.keys.contains("SelectQuestions") && dict["SelectQuestions"] != nil {
                self.selectQuestions = dict["SelectQuestions"] as! [String]
            }
            if dict.keys.contains("TemplateOptionMap") && dict["TemplateOptionMap"] != nil {
                self.templateOptionMap = dict["TemplateOptionMap"] as! [String: Any]
            }
            if dict.keys.contains("TemplateRelationId") && dict["TemplateRelationId"] != nil {
                self.templateRelationId = dict["TemplateRelationId"] as! String
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Exif") && dict["Exif"] != nil {
                self.exif = dict["Exif"] as! [String: Any]
            }
            if dict.keys.contains("Groups") && dict["Groups"] != nil {
                self.groups = dict["Groups"] as! [String]
            }
            if dict.keys.contains("NodeName") && dict["NodeName"] != nil {
                self.nodeName = dict["NodeName"] as! String
            }
            if dict.keys.contains("Users") && dict["Users"] != nil {
                var tmp : [SimpleUser] = []
                for v in dict["Users"] as! [Any] {
                    var model = SimpleUser()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Admins") && dict["Admins"] != nil {
            var tmp : [SimpleUser] = []
            for v in dict["Admins"] as! [Any] {
                var model = SimpleUser()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.admins = tmp
        }
        if dict.keys.contains("AlertTime") && dict["AlertTime"] != nil {
            self.alertTime = dict["AlertTime"] as! Int64
        }
        if dict.keys.contains("AllowAppendData") && dict["AllowAppendData"] != nil {
            self.allowAppendData = dict["AllowAppendData"] as! Bool
        }
        if dict.keys.contains("Archived") && dict["Archived"] != nil {
            self.archived = dict["Archived"] as! Bool
        }
        if dict.keys.contains("ArchivedInfos") && dict["ArchivedInfos"] != nil {
            self.archivedInfos = dict["ArchivedInfos"] as! String
        }
        if dict.keys.contains("AssignConfig") && dict["AssignConfig"] != nil {
            self.assignConfig = dict["AssignConfig"] as! [String: Any]
        }
        if dict.keys.contains("Creator") && dict["Creator"] != nil {
            var model = SimpleUser()
            model.fromMap(dict["Creator"] as! [String: Any])
            self.creator = model
        }
        if dict.keys.contains("DatasetProxyRelations") && dict["DatasetProxyRelations"] != nil {
            var tmp : [TaskDetail.DatasetProxyRelations] = []
            for v in dict["DatasetProxyRelations"] as! [Any] {
                var model = TaskDetail.DatasetProxyRelations()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.datasetProxyRelations = tmp
        }
        if dict.keys.contains("Exif") && dict["Exif"] != nil {
            self.exif = dict["Exif"] as! [String: Any]
        }
        if dict.keys.contains("GmtCreateTime") && dict["GmtCreateTime"] != nil {
            self.gmtCreateTime = dict["GmtCreateTime"] as! String
        }
        if dict.keys.contains("GmtModifiedTime") && dict["GmtModifiedTime"] != nil {
            self.gmtModifiedTime = dict["GmtModifiedTime"] as! String
        }
        if dict.keys.contains("LabelStyle") && dict["LabelStyle"] != nil {
            self.labelStyle = dict["LabelStyle"] as! String
        }
        if dict.keys.contains("MineConfigs") && dict["MineConfigs"] != nil {
            self.mineConfigs = dict["MineConfigs"] as! [String: Any]
        }
        if dict.keys.contains("Modifier") && dict["Modifier"] != nil {
            var model = SimpleUser()
            model.fromMap(dict["Modifier"] as! [String: Any])
            self.modifier = model
        }
        if dict.keys.contains("NoticeConfig") && dict["NoticeConfig"] != nil {
            self.noticeConfig = dict["NoticeConfig"] as! [String: Any]
        }
        if dict.keys.contains("PeriodConfig") && dict["PeriodConfig"] != nil {
            self.periodConfig = dict["PeriodConfig"] as! [String: Any]
        }
        if dict.keys.contains("RefTaskId") && dict["RefTaskId"] != nil {
            self.refTaskId = dict["RefTaskId"] as! String
        }
        if dict.keys.contains("RelateTaskConfig") && dict["RelateTaskConfig"] != nil {
            self.relateTaskConfig = dict["RelateTaskConfig"] as! [String: Any]
        }
        if dict.keys.contains("Remark") && dict["Remark"] != nil {
            self.remark = dict["Remark"] as! String
        }
        if dict.keys.contains("ResultCallbackConfig") && dict["ResultCallbackConfig"] != nil {
            self.resultCallbackConfig = dict["ResultCallbackConfig"] as! [String: Any]
        }
        if dict.keys.contains("Stage") && dict["Stage"] != nil {
            self.stage = dict["Stage"] as! String
        }
        if dict.keys.contains("Status") && dict["Status"] != nil {
            self.status = dict["Status"] as! String
        }
        if dict.keys.contains("Tags") && dict["Tags"] != nil {
            self.tags = dict["Tags"] as! [String]
        }
        if dict.keys.contains("TaskId") && dict["TaskId"] != nil {
            self.taskId = dict["TaskId"] as! String
        }
        if dict.keys.contains("TaskName") && dict["TaskName"] != nil {
            self.taskName = dict["TaskName"] as! String
        }
        if dict.keys.contains("TaskTemplateConfig") && dict["TaskTemplateConfig"] != nil {
            var model = TaskDetail.TaskTemplateConfig()
            model.fromMap(dict["TaskTemplateConfig"] as! [String: Any])
            self.taskTemplateConfig = model
        }
        if dict.keys.contains("TaskType") && dict["TaskType"] != nil {
            self.taskType = dict["TaskType"] as! String
        }
        if dict.keys.contains("TaskWorkflow") && dict["TaskWorkflow"] != nil {
            var tmp : [TaskDetail.TaskWorkflow] = []
            for v in dict["TaskWorkflow"] as! [Any] {
                var model = TaskDetail.TaskWorkflow()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.taskWorkflow = tmp
        }
        if dict.keys.contains("TemplateId") && dict["TemplateId"] != nil {
            self.templateId = dict["TemplateId"] as! String
        }
        if dict.keys.contains("TenantId") && dict["TenantId"] != nil {
            self.tenantId = dict["TenantId"] as! String
        }
        if dict.keys.contains("TenantName") && dict["TenantName"] != nil {
            self.tenantName = dict["TenantName"] as! String
        }
        if dict.keys.contains("UUID") && dict["UUID"] != nil {
            self.UUID = dict["UUID"] as! String
        }
        if dict.keys.contains("VoteConfigs") && dict["VoteConfigs"] != nil {
            self.voteConfigs = dict["VoteConfigs"] as! [String: Any]
        }
        if dict.keys.contains("WorkflowNodes") && dict["WorkflowNodes"] != nil {
            self.workflowNodes = dict["WorkflowNodes"] as! [String]
        }
        if dict.keys.contains("runMsg") && dict["runMsg"] != nil {
            self.runMsg = dict["runMsg"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AcceptItemCount") && dict["AcceptItemCount"] != nil {
            self.acceptItemCount = dict["AcceptItemCount"] as! Double
        }
        if dict.keys.contains("CheckAbandon") && dict["CheckAbandon"] != nil {
            self.checkAbandon = dict["CheckAbandon"] as! Double
        }
        if dict.keys.contains("CheckAccuracy") && dict["CheckAccuracy"] != nil {
            self.checkAccuracy = dict["CheckAccuracy"] as! Double
        }
        if dict.keys.contains("CheckEfficiency") && dict["CheckEfficiency"] != nil {
            self.checkEfficiency = dict["CheckEfficiency"] as! Double
        }
        if dict.keys.contains("CheckedAccuracy") && dict["CheckedAccuracy"] != nil {
            self.checkedAccuracy = dict["CheckedAccuracy"] as! Double
        }
        if dict.keys.contains("CheckedError") && dict["CheckedError"] != nil {
            self.checkedError = dict["CheckedError"] as! Double
        }
        if dict.keys.contains("CheckedRejectCount") && dict["CheckedRejectCount"] != nil {
            self.checkedRejectCount = dict["CheckedRejectCount"] as! Double
        }
        if dict.keys.contains("FinalAbandonCount") && dict["FinalAbandonCount"] != nil {
            self.finalAbandonCount = dict["FinalAbandonCount"] as! Double
        }
        if dict.keys.contains("FinishedItemCount") && dict["FinishedItemCount"] != nil {
            self.finishedItemCount = dict["FinishedItemCount"] as! Int64
        }
        if dict.keys.contains("FinishedSubtaskCount") && dict["FinishedSubtaskCount"] != nil {
            self.finishedSubtaskCount = dict["FinishedSubtaskCount"] as! Int64
        }
        if dict.keys.contains("MarkEfficiency") && dict["MarkEfficiency"] != nil {
            self.markEfficiency = dict["MarkEfficiency"] as! Double
        }
        if dict.keys.contains("PreMarkFixedCount") && dict["PreMarkFixedCount"] != nil {
            self.preMarkFixedCount = dict["PreMarkFixedCount"] as! Double
        }
        if dict.keys.contains("SampledAccuracy") && dict["SampledAccuracy"] != nil {
            self.sampledAccuracy = dict["SampledAccuracy"] as! Double
        }
        if dict.keys.contains("SampledErrorCount") && dict["SampledErrorCount"] != nil {
            self.sampledErrorCount = dict["SampledErrorCount"] as! Double
        }
        if dict.keys.contains("SampledRejectCount") && dict["SampledRejectCount"] != nil {
            self.sampledRejectCount = dict["SampledRejectCount"] as! Double
        }
        if dict.keys.contains("SamplingAccuracy") && dict["SamplingAccuracy"] != nil {
            self.samplingAccuracy = dict["SamplingAccuracy"] as! Double
        }
        if dict.keys.contains("TotalCheckCount") && dict["TotalCheckCount"] != nil {
            self.totalCheckCount = dict["TotalCheckCount"] as! Double
        }
        if dict.keys.contains("TotalCheckTime") && dict["TotalCheckTime"] != nil {
            self.totalCheckTime = dict["TotalCheckTime"] as! Double
        }
        if dict.keys.contains("TotalCheckedCount") && dict["TotalCheckedCount"] != nil {
            self.totalCheckedCount = dict["TotalCheckedCount"] as! Double
        }
        if dict.keys.contains("TotalItemCount") && dict["TotalItemCount"] != nil {
            self.totalItemCount = dict["TotalItemCount"] as! Int64
        }
        if dict.keys.contains("TotalMarkTime") && dict["TotalMarkTime"] != nil {
            self.totalMarkTime = dict["TotalMarkTime"] as! Double
        }
        if dict.keys.contains("TotalSampledCount") && dict["TotalSampledCount"] != nil {
            self.totalSampledCount = dict["TotalSampledCount"] as! Double
        }
        if dict.keys.contains("TotalSamplingCount") && dict["TotalSamplingCount"] != nil {
            self.totalSamplingCount = dict["TotalSamplingCount"] as! Double
        }
        if dict.keys.contains("TotalSubtaskCount") && dict["TotalSubtaskCount"] != nil {
            self.totalSubtaskCount = dict["TotalSubtaskCount"] as! Int64
        }
        if dict.keys.contains("TotalWorkTime") && dict["TotalWorkTime"] != nil {
            self.totalWorkTime = dict["TotalWorkTime"] as! Double
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Exif") && dict["Exif"] != nil {
            self.exif = dict["Exif"] as! [String: String]
        }
        if dict.keys.contains("ResourceKey") && dict["ResourceKey"] != nil {
            self.resourceKey = dict["ResourceKey"] as! String
        }
        if dict.keys.contains("SelectQuestions") && dict["SelectQuestions"] != nil {
            self.selectQuestions = dict["SelectQuestions"] as! [String]
        }
        if dict.keys.contains("TemplateOptionMap") && dict["TemplateOptionMap"] != nil {
            var tmp : [String: TaskTemplateOptionConfig] = [:]
            for (k, v) in dict["TemplateOptionMap"] as! [String: Any] {
                if v != nil {
                    var model = TaskTemplateOptionConfig()
                    model.fromMap(v as! [String: Any])
                    tmp[k] = model
                }
            }
            self.templateOptionMap = tmp
        }
        if dict.keys.contains("TemplateRelationId") && dict["TemplateRelationId"] != nil {
            self.templateRelationId = dict["TemplateRelationId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DefaultResult") && dict["DefaultResult"] != nil {
            self.defaultResult = dict["DefaultResult"] as! String
        }
        if dict.keys.contains("Options") && dict["Options"] != nil {
            var tmp : [QuestionOption] = []
            for v in dict["Options"] as! [Any] {
                var model = QuestionOption()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.options = tmp
        }
        if dict.keys.contains("PreOptions") && dict["PreOptions"] != nil {
            self.preOptions = dict["PreOptions"] as! [String]
        }
        if dict.keys.contains("Rule") && dict["Rule"] != nil {
            self.rule = dict["Rule"] as! String
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("ViewPlugins") && dict["ViewPlugins"] != nil {
                var tmp : [ViewPlugin] = []
                for v in dict["ViewPlugins"] as! [Any] {
                    var model = ViewPlugin()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Classify") && dict["Classify"] != nil {
            self.classify = dict["Classify"] as! String
        }
        if dict.keys.contains("Description") && dict["Description"] != nil {
            self.description_ = dict["Description"] as! String
        }
        if dict.keys.contains("Exif") && dict["Exif"] != nil {
            self.exif = dict["Exif"] as! [String: Any]
        }
        if dict.keys.contains("QuestionConfigs") && dict["QuestionConfigs"] != nil {
            var tmp : [QuestionPlugin] = []
            for v in dict["QuestionConfigs"] as! [Any] {
                var model = QuestionPlugin()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.questionConfigs = tmp
        }
        if dict.keys.contains("RobotConfigs") && dict["RobotConfigs"] != nil {
            self.robotConfigs = dict["RobotConfigs"] as! [[String: Any]]
        }
        if dict.keys.contains("SharedMode") && dict["SharedMode"] != nil {
            self.sharedMode = dict["SharedMode"] as! String
        }
        if dict.keys.contains("Tags") && dict["Tags"] != nil {
            self.tags = dict["Tags"] as! [String]
        }
        if dict.keys.contains("TemplateId") && dict["TemplateId"] != nil {
            self.templateId = dict["TemplateId"] as! String
        }
        if dict.keys.contains("TemplateName") && dict["TemplateName"] != nil {
            self.templateName = dict["TemplateName"] as! String
        }
        if dict.keys.contains("ViewConfigs") && dict["ViewConfigs"] != nil {
            var model = TemplateDTO.ViewConfigs()
            model.fromMap(dict["ViewConfigs"] as! [String: Any])
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("ViewPlugins") && dict["ViewPlugins"] != nil {
                var tmp : [ViewPlugin] = []
                for v in dict["ViewPlugins"] as! [Any] {
                    var model = ViewPlugin()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AbandonReasons") && dict["AbandonReasons"] != nil {
            self.abandonReasons = dict["AbandonReasons"] as! [String]
        }
        if dict.keys.contains("Classify") && dict["Classify"] != nil {
            self.classify = dict["Classify"] as! String
        }
        if dict.keys.contains("Creator") && dict["Creator"] != nil {
            var model = SimpleUser()
            model.fromMap(dict["Creator"] as! [String: Any])
            self.creator = model
        }
        if dict.keys.contains("Description") && dict["Description"] != nil {
            self.description_ = dict["Description"] as! String
        }
        if dict.keys.contains("Exif") && dict["Exif"] != nil {
            self.exif = dict["Exif"] as! [String: Any]
        }
        if dict.keys.contains("GmtCreateTime") && dict["GmtCreateTime"] != nil {
            self.gmtCreateTime = dict["GmtCreateTime"] as! String
        }
        if dict.keys.contains("GmtModifiedTime") && dict["GmtModifiedTime"] != nil {
            self.gmtModifiedTime = dict["GmtModifiedTime"] as! String
        }
        if dict.keys.contains("Modifier") && dict["Modifier"] != nil {
            var model = SimpleUser()
            model.fromMap(dict["Modifier"] as! [String: Any])
            self.modifier = model
        }
        if dict.keys.contains("QuestionConfigs") && dict["QuestionConfigs"] != nil {
            var tmp : [QuestionPlugin] = []
            for v in dict["QuestionConfigs"] as! [Any] {
                var model = QuestionPlugin()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.questionConfigs = tmp
        }
        if dict.keys.contains("SharedMode") && dict["SharedMode"] != nil {
            self.sharedMode = dict["SharedMode"] as! String
        }
        if dict.keys.contains("Status") && dict["Status"] != nil {
            self.status = dict["Status"] as! String
        }
        if dict.keys.contains("Tags") && dict["Tags"] != nil {
            self.tags = dict["Tags"] as! [String]
        }
        if dict.keys.contains("TemplateId") && dict["TemplateId"] != nil {
            self.templateId = dict["TemplateId"] as! String
        }
        if dict.keys.contains("TemplateName") && dict["TemplateName"] != nil {
            self.templateName = dict["TemplateName"] as! String
        }
        if dict.keys.contains("TenantId") && dict["TenantId"] != nil {
            self.tenantId = dict["TenantId"] as! String
        }
        if dict.keys.contains("Type") && dict["Type"] != nil {
            self.type = dict["Type"] as! String
        }
        if dict.keys.contains("ViewConfigs") && dict["ViewConfigs"] != nil {
            var model = TemplateDetail.ViewConfigs()
            model.fromMap(dict["ViewConfigs"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Children") && dict["Children"] != nil {
            var tmp : [TemplateQuestion] = []
            for v in dict["Children"] as! [Any] {
                var model = TemplateQuestion()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.children = tmp
        }
        if dict.keys.contains("Exif") && dict["Exif"] != nil {
            self.exif = dict["Exif"] as! [String: Any]
        }
        if dict.keys.contains("MarkTitle") && dict["MarkTitle"] != nil {
            self.markTitle = dict["MarkTitle"] as! String
        }
        if dict.keys.contains("Options") && dict["Options"] != nil {
            var tmp : [QuestionOption] = []
            for v in dict["Options"] as! [Any] {
                var model = QuestionOption()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.options = tmp
        }
        if dict.keys.contains("PreOptions") && dict["PreOptions"] != nil {
            self.preOptions = dict["PreOptions"] as! [String]
        }
        if dict.keys.contains("QuestionId") && dict["QuestionId"] != nil {
            self.questionId = dict["QuestionId"] as! Int64
        }
        if dict.keys.contains("Type") && dict["Type"] != nil {
            self.type = dict["Type"] as! String
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

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("AftsConf") && dict["AftsConf"] != nil {
                    self.aftsConf = dict["AftsConf"] as! [String: Any]
                }
                if dict.keys.contains("OssConf") && dict["OssConf"] != nil {
                    self.ossConf = dict["OssConf"] as! [String: Any]
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("DisplayOriImg") && dict["DisplayOriImg"] != nil {
                self.displayOriImg = dict["DisplayOriImg"] as! Bool
            }
            if dict.keys.contains("FieldName") && dict["FieldName"] != nil {
                self.fieldName = dict["FieldName"] as! String
            }
            if dict.keys.contains("Type") && dict["Type"] != nil {
                self.type = dict["Type"] as! String
            }
            if dict.keys.contains("VisitInfo") && dict["VisitInfo"] != nil {
                var model = TemplateView.Fields.VisitInfo()
                model.fromMap(dict["VisitInfo"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Fields") && dict["Fields"] != nil {
            var tmp : [TemplateView.Fields] = []
            for v in dict["Fields"] as! [Any] {
                var model = TemplateView.Fields()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Exif") && dict["Exif"] != nil {
            self.exif = dict["Exif"] as! [String: String]
        }
        if dict.keys.contains("Remark") && dict["Remark"] != nil {
            self.remark = dict["Remark"] as! String
        }
        if dict.keys.contains("Tags") && dict["Tags"] != nil {
            self.tags = dict["Tags"] as! [String]
        }
        if dict.keys.contains("TaskName") && dict["TaskName"] != nil {
            self.taskName = dict["TaskName"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AcceptedMarkItemsCount") && dict["AcceptedMarkItemsCount"] != nil {
            self.acceptedMarkItemsCount = dict["AcceptedMarkItemsCount"] as! Double
        }
        if dict.keys.contains("CheckCount") && dict["CheckCount"] != nil {
            self.checkCount = dict["CheckCount"] as! Double
        }
        if dict.keys.contains("CheckedAcceptedCount") && dict["CheckedAcceptedCount"] != nil {
            self.checkedAcceptedCount = dict["CheckedAcceptedCount"] as! Double
        }
        if dict.keys.contains("CheckedAccuracy") && dict["CheckedAccuracy"] != nil {
            self.checkedAccuracy = dict["CheckedAccuracy"] as! Double
        }
        if dict.keys.contains("MarkEfficiency") && dict["MarkEfficiency"] != nil {
            self.markEfficiency = dict["MarkEfficiency"] as! Double
        }
        if dict.keys.contains("MarkTime") && dict["MarkTime"] != nil {
            self.markTime = dict["MarkTime"] as! Double
        }
        if dict.keys.contains("SamplingAccuracy") && dict["SamplingAccuracy"] != nil {
            self.samplingAccuracy = dict["SamplingAccuracy"] as! Double
        }
        if dict.keys.contains("SamplingCount") && dict["SamplingCount"] != nil {
            self.samplingCount = dict["SamplingCount"] as! Double
        }
        if dict.keys.contains("SamplingErrorCount") && dict["SamplingErrorCount"] != nil {
            self.samplingErrorCount = dict["SamplingErrorCount"] as! Double
        }
        if dict.keys.contains("TotalMarkItemsCount") && dict["TotalMarkItemsCount"] != nil {
            self.totalMarkItemsCount = dict["TotalMarkItemsCount"] as! Double
        }
        if dict.keys.contains("UserId") && dict["UserId"] != nil {
            self.userId = dict["UserId"] as! String
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("aftsConf") && dict["aftsConf"] != nil {
                self.aftsConf = dict["aftsConf"] as! [String: Any]
            }
            if dict.keys.contains("ossConf") && dict["ossConf"] != nil {
                self.ossConf = dict["ossConf"] as! [String: Any]
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("BindField") && dict["BindField"] != nil {
            self.bindField = dict["BindField"] as! String
        }
        if dict.keys.contains("Convertor") && dict["Convertor"] != nil {
            self.convertor = dict["Convertor"] as! String
        }
        if dict.keys.contains("CorsProxy") && dict["CorsProxy"] != nil {
            self.corsProxy = dict["CorsProxy"] as! Bool
        }
        if dict.keys.contains("DisplayOriImg") && dict["DisplayOriImg"] != nil {
            self.displayOriImg = dict["DisplayOriImg"] as! Bool
        }
        if dict.keys.contains("Exif") && dict["Exif"] != nil {
            self.exif = dict["Exif"] as! [String: Any]
        }
        if dict.keys.contains("Hide") && dict["Hide"] != nil {
            self.hide = dict["Hide"] as! Bool
        }
        if dict.keys.contains("Plugins") && dict["Plugins"] != nil {
            self.plugins = dict["Plugins"] as! [String: Any]
        }
        if dict.keys.contains("RelationQuestionIds") && dict["RelationQuestionIds"] != nil {
            self.relationQuestionIds = dict["RelationQuestionIds"] as! [String]
        }
        if dict.keys.contains("Type") && dict["Type"] != nil {
            self.type = dict["Type"] as! String
        }
        if dict.keys.contains("VisitInfo") && dict["VisitInfo"] != nil {
            var model = ViewPlugin.VisitInfo()
            model.fromMap(dict["VisitInfo"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("NodeType") && dict["NodeType"] != nil {
            self.nodeType = dict["NodeType"] as! String
        }
        if dict.keys.contains("Users") && dict["Users"] != nil {
            var tmp : [SimpleUser] = []
            for v in dict["Users"] as! [Any] {
                var model = SimpleUser()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.users = tmp
        }
        if dict.keys.contains("WorkNodeId") && dict["WorkNodeId"] != nil {
            self.workNodeId = dict["WorkNodeId"] as! Int32
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("UserIds") && dict["UserIds"] != nil {
            self.userIds = dict["UserIds"] as! [Int64]
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! Int32
        }
        if dict.keys.contains("Details") && dict["Details"] != nil {
            self.details = dict["Details"] as! String
        }
        if dict.keys.contains("ErrorCode") && dict["ErrorCode"] != nil {
            self.errorCode = dict["ErrorCode"] as! String
        }
        if dict.keys.contains("Message") && dict["Message"] != nil {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") && dict["Success"] != nil {
            self.success = dict["Success"] as! Bool
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = AddWorkNodeWorkforceResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = CreateTaskDetail()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! Int32
        }
        if dict.keys.contains("Details") && dict["Details"] != nil {
            self.details = dict["Details"] as! String
        }
        if dict.keys.contains("ErrorCode") && dict["ErrorCode"] != nil {
            self.errorCode = dict["ErrorCode"] as! String
        }
        if dict.keys.contains("Message") && dict["Message"] != nil {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") && dict["Success"] != nil {
            self.success = dict["Success"] as! Bool
        }
        if dict.keys.contains("TaskId") && dict["TaskId"] != nil {
            self.taskId = dict["TaskId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = CreateTaskResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = TemplateDTO()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! Int32
        }
        if dict.keys.contains("Details") && dict["Details"] != nil {
            self.details = dict["Details"] as! String
        }
        if dict.keys.contains("ErrorCode") && dict["ErrorCode"] != nil {
            self.errorCode = dict["ErrorCode"] as! String
        }
        if dict.keys.contains("Message") && dict["Message"] != nil {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") && dict["Success"] != nil {
            self.success = dict["Success"] as! Bool
        }
        if dict.keys.contains("TemplateId") && dict["TemplateId"] != nil {
            self.templateId = dict["TemplateId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = CreateTemplateResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AccountNo") && dict["AccountNo"] != nil {
            self.accountNo = dict["AccountNo"] as! String
        }
        if dict.keys.contains("AccountType") && dict["AccountType"] != nil {
            self.accountType = dict["AccountType"] as! String
        }
        if dict.keys.contains("Role") && dict["Role"] != nil {
            self.role = dict["Role"] as! String
        }
        if dict.keys.contains("UserName") && dict["UserName"] != nil {
            self.userName = dict["UserName"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! Int32
        }
        if dict.keys.contains("Details") && dict["Details"] != nil {
            self.details = dict["Details"] as! String
        }
        if dict.keys.contains("ErrorCode") && dict["ErrorCode"] != nil {
            self.errorCode = dict["ErrorCode"] as! String
        }
        if dict.keys.contains("Message") && dict["Message"] != nil {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") && dict["Success"] != nil {
            self.success = dict["Success"] as! Bool
        }
        if dict.keys.contains("UserId") && dict["UserId"] != nil {
            self.userId = dict["UserId"] as! Int64
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = CreateUserResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! Int32
        }
        if dict.keys.contains("Details") && dict["Details"] != nil {
            self.details = dict["Details"] as! String
        }
        if dict.keys.contains("ErrorCode") && dict["ErrorCode"] != nil {
            self.errorCode = dict["ErrorCode"] as! String
        }
        if dict.keys.contains("Message") && dict["Message"] != nil {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") && dict["Success"] != nil {
            self.success = dict["Success"] as! Bool
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = DeleteTaskResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! Int32
        }
        if dict.keys.contains("Details") && dict["Details"] != nil {
            self.details = dict["Details"] as! String
        }
        if dict.keys.contains("ErrorCode") && dict["ErrorCode"] != nil {
            self.errorCode = dict["ErrorCode"] as! String
        }
        if dict.keys.contains("Message") && dict["Message"] != nil {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") && dict["Success"] != nil {
            self.success = dict["Success"] as! Bool
        }
        if dict.keys.contains("TemplateId") && dict["TemplateId"] != nil {
            self.templateId = dict["TemplateId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = DeleteTemplateResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! Int32
        }
        if dict.keys.contains("Details") && dict["Details"] != nil {
            self.details = dict["Details"] as! String
        }
        if dict.keys.contains("ErrorCode") && dict["ErrorCode"] != nil {
            self.errorCode = dict["ErrorCode"] as! String
        }
        if dict.keys.contains("Message") && dict["Message"] != nil {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") && dict["Success"] != nil {
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
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = DeleteUserResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("OssPath") && dict["OssPath"] != nil {
            self.ossPath = dict["OssPath"] as! String
        }
        if dict.keys.contains("RegisterDataset") && dict["RegisterDataset"] != nil {
            self.registerDataset = dict["RegisterDataset"] as! String
        }
        if dict.keys.contains("Target") && dict["Target"] != nil {
            self.target = dict["Target"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! Int32
        }
        if dict.keys.contains("Details") && dict["Details"] != nil {
            self.details = dict["Details"] as! String
        }
        if dict.keys.contains("ErrorCode") && dict["ErrorCode"] != nil {
            self.errorCode = dict["ErrorCode"] as! String
        }
        if dict.keys.contains("FlowJob") && dict["FlowJob"] != nil {
            var model = FlowJobInfo()
            model.fromMap(dict["FlowJob"] as! [String: Any])
            self.flowJob = model
        }
        if dict.keys.contains("Message") && dict["Message"] != nil {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") && dict["Success"] != nil {
            self.success = dict["Success"] as! Bool
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = ExportAnnotationsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("JobType") && dict["JobType"] != nil {
            self.jobType = dict["JobType"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! Int32
        }
        if dict.keys.contains("Details") && dict["Details"] != nil {
            self.details = dict["Details"] as! String
        }
        if dict.keys.contains("ErrorCode") && dict["ErrorCode"] != nil {
            self.errorCode = dict["ErrorCode"] as! String
        }
        if dict.keys.contains("Job") && dict["Job"] != nil {
            var model = Job()
            model.fromMap(dict["Job"] as! [String: Any])
            self.job = model
        }
        if dict.keys.contains("Message") && dict["Message"] != nil {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") && dict["Success"] != nil {
            self.success = dict["Success"] as! Bool
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = GetJobResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! Int32
        }
        if dict.keys.contains("Details") && dict["Details"] != nil {
            self.details = dict["Details"] as! String
        }
        if dict.keys.contains("ErrorCode") && dict["ErrorCode"] != nil {
            self.errorCode = dict["ErrorCode"] as! String
        }
        if dict.keys.contains("Message") && dict["Message"] != nil {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Subtask") && dict["Subtask"] != nil {
            var model = SimpleSubtask()
            model.fromMap(dict["Subtask"] as! [String: Any])
            self.subtask = model
        }
        if dict.keys.contains("Success") && dict["Success"] != nil {
            self.success = dict["Success"] as! Bool
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = GetSubtaskResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! Int32
        }
        if dict.keys.contains("Details") && dict["Details"] != nil {
            self.details = dict["Details"] as! String
        }
        if dict.keys.contains("ErrorCode") && dict["ErrorCode"] != nil {
            self.errorCode = dict["ErrorCode"] as! String
        }
        if dict.keys.contains("Item") && dict["Item"] != nil {
            var model = SubtaskItemDetail()
            model.fromMap(dict["Item"] as! [String: Any])
            self.item = model
        }
        if dict.keys.contains("Message") && dict["Message"] != nil {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") && dict["Success"] != nil {
            self.success = dict["Success"] as! Bool
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = GetSubtaskItemResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! Int32
        }
        if dict.keys.contains("Details") && dict["Details"] != nil {
            self.details = dict["Details"] as! String
        }
        if dict.keys.contains("ErrorCode") && dict["ErrorCode"] != nil {
            self.errorCode = dict["ErrorCode"] as! String
        }
        if dict.keys.contains("Message") && dict["Message"] != nil {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") && dict["Success"] != nil {
            self.success = dict["Success"] as! Bool
        }
        if dict.keys.contains("Task") && dict["Task"] != nil {
            var model = TaskDetail()
            model.fromMap(dict["Task"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = GetTaskResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("StatType") && dict["StatType"] != nil {
            self.statType = dict["StatType"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! Int32
        }
        if dict.keys.contains("Details") && dict["Details"] != nil {
            self.details = dict["Details"] as! String
        }
        if dict.keys.contains("ErrorCode") && dict["ErrorCode"] != nil {
            self.errorCode = dict["ErrorCode"] as! String
        }
        if dict.keys.contains("Message") && dict["Message"] != nil {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") && dict["Success"] != nil {
            self.success = dict["Success"] as! Bool
        }
        if dict.keys.contains("TaskStatistics") && dict["TaskStatistics"] != nil {
            var model = TaskStatistic()
            model.fromMap(dict["TaskStatistics"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = GetTaskStatisticsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! Int32
        }
        if dict.keys.contains("Details") && dict["Details"] != nil {
            self.details = dict["Details"] as! String
        }
        if dict.keys.contains("ErrorCode") && dict["ErrorCode"] != nil {
            self.errorCode = dict["ErrorCode"] as! String
        }
        if dict.keys.contains("Message") && dict["Message"] != nil {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") && dict["Success"] != nil {
            self.success = dict["Success"] as! Bool
        }
        if dict.keys.contains("TaskStatus") && dict["TaskStatus"] != nil {
            self.taskStatus = dict["TaskStatus"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = GetTaskStatusResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! Int32
        }
        if dict.keys.contains("Details") && dict["Details"] != nil {
            self.details = dict["Details"] as! String
        }
        if dict.keys.contains("ErrorCode") && dict["ErrorCode"] != nil {
            self.errorCode = dict["ErrorCode"] as! String
        }
        if dict.keys.contains("Message") && dict["Message"] != nil {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") && dict["Success"] != nil {
            self.success = dict["Success"] as! Bool
        }
        if dict.keys.contains("Template") && dict["Template"] != nil {
            var model = TemplateDetail()
            model.fromMap(dict["Template"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = GetTaskTemplateResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! Int32
        }
        if dict.keys.contains("Details") && dict["Details"] != nil {
            self.details = dict["Details"] as! String
        }
        if dict.keys.contains("ErrorCode") && dict["ErrorCode"] != nil {
            self.errorCode = dict["ErrorCode"] as! String
        }
        if dict.keys.contains("Message") && dict["Message"] != nil {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("Questions") && dict["Questions"] != nil {
            var tmp : [QuestionPlugin] = []
            for v in dict["Questions"] as! [Any] {
                var model = QuestionPlugin()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.questions = tmp
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") && dict["Success"] != nil {
            self.success = dict["Success"] as! Bool
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = GetTaskTemplateQuestionsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("ViewPlugins") && dict["ViewPlugins"] != nil {
                var tmp : [ViewPlugin] = []
                for v in dict["ViewPlugins"] as! [Any] {
                    var model = ViewPlugin()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! Int32
        }
        if dict.keys.contains("Details") && dict["Details"] != nil {
            self.details = dict["Details"] as! String
        }
        if dict.keys.contains("ErrorCode") && dict["ErrorCode"] != nil {
            self.errorCode = dict["ErrorCode"] as! String
        }
        if dict.keys.contains("Message") && dict["Message"] != nil {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") && dict["Success"] != nil {
            self.success = dict["Success"] as! Bool
        }
        if dict.keys.contains("Views") && dict["Views"] != nil {
            var model = GetTaskTemplateViewsResponseBody.Views()
            model.fromMap(dict["Views"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = GetTaskTemplateViewsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! Int32
        }
        if dict.keys.contains("Details") && dict["Details"] != nil {
            self.details = dict["Details"] as! String
        }
        if dict.keys.contains("ErrorCode") && dict["ErrorCode"] != nil {
            self.errorCode = dict["ErrorCode"] as! String
        }
        if dict.keys.contains("Message") && dict["Message"] != nil {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") && dict["Success"] != nil {
            self.success = dict["Success"] as! Bool
        }
        if dict.keys.contains("Workforce") && dict["Workforce"] != nil {
            var tmp : [Workforce] = []
            for v in dict["Workforce"] as! [Any] {
                var model = Workforce()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = GetTaskWorkforceResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("PageNumber") && dict["PageNumber"] != nil {
            self.pageNumber = dict["PageNumber"] as! Int32
        }
        if dict.keys.contains("PageSize") && dict["PageSize"] != nil {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("StatType") && dict["StatType"] != nil {
            self.statType = dict["StatType"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! Int32
        }
        if dict.keys.contains("Details") && dict["Details"] != nil {
            self.details = dict["Details"] as! String
        }
        if dict.keys.contains("ErrorCode") && dict["ErrorCode"] != nil {
            self.errorCode = dict["ErrorCode"] as! String
        }
        if dict.keys.contains("Message") && dict["Message"] != nil {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("PageNumber") && dict["PageNumber"] != nil {
            self.pageNumber = dict["PageNumber"] as! Int32
        }
        if dict.keys.contains("PageSize") && dict["PageSize"] != nil {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") && dict["Success"] != nil {
            self.success = dict["Success"] as! Bool
        }
        if dict.keys.contains("TotalCount") && dict["TotalCount"] != nil {
            self.totalCount = dict["TotalCount"] as! Int32
        }
        if dict.keys.contains("TotalPage") && dict["TotalPage"] != nil {
            self.totalPage = dict["TotalPage"] as! Int32
        }
        if dict.keys.contains("UsersStatistic") && dict["UsersStatistic"] != nil {
            var tmp : [UserStatistic] = []
            for v in dict["UsersStatistic"] as! [Any] {
                var model = UserStatistic()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = GetTaskWorkforceStatisticResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! Int32
        }
        if dict.keys.contains("Details") && dict["Details"] != nil {
            self.details = dict["Details"] as! String
        }
        if dict.keys.contains("ErrorCode") && dict["ErrorCode"] != nil {
            self.errorCode = dict["ErrorCode"] as! String
        }
        if dict.keys.contains("Message") && dict["Message"] != nil {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") && dict["Success"] != nil {
            self.success = dict["Success"] as! Bool
        }
        if dict.keys.contains("Template") && dict["Template"] != nil {
            var model = TemplateDetail()
            model.fromMap(dict["Template"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = GetTemplateResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! Int32
        }
        if dict.keys.contains("Details") && dict["Details"] != nil {
            self.details = dict["Details"] as! String
        }
        if dict.keys.contains("ErrorCode") && dict["ErrorCode"] != nil {
            self.errorCode = dict["ErrorCode"] as! String
        }
        if dict.keys.contains("Message") && dict["Message"] != nil {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("QuestionConfigs") && dict["QuestionConfigs"] != nil {
            var tmp : [QuestionPlugin] = []
            for v in dict["QuestionConfigs"] as! [Any] {
                var model = QuestionPlugin()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.questionConfigs = tmp
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") && dict["Success"] != nil {
            self.success = dict["Success"] as! Bool
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = GetTemplateQuestionsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("ViewPlugins") && dict["ViewPlugins"] != nil {
                var tmp : [ViewPlugin] = []
                for v in dict["ViewPlugins"] as! [Any] {
                    var model = ViewPlugin()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! Int32
        }
        if dict.keys.contains("Details") && dict["Details"] != nil {
            self.details = dict["Details"] as! String
        }
        if dict.keys.contains("ErrorCode") && dict["ErrorCode"] != nil {
            self.errorCode = dict["ErrorCode"] as! String
        }
        if dict.keys.contains("Message") && dict["Message"] != nil {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") && dict["Success"] != nil {
            self.success = dict["Success"] as! Bool
        }
        if dict.keys.contains("ViewConfigs") && dict["ViewConfigs"] != nil {
            var model = GetTemplateViewResponseBody.ViewConfigs()
            model.fromMap(dict["ViewConfigs"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = GetTemplateViewResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! Int32
        }
        if dict.keys.contains("Details") && dict["Details"] != nil {
            self.details = dict["Details"] as! String
        }
        if dict.keys.contains("ErrorCode") && dict["ErrorCode"] != nil {
            self.errorCode = dict["ErrorCode"] as! String
        }
        if dict.keys.contains("Message") && dict["Message"] != nil {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") && dict["Success"] != nil {
            self.success = dict["Success"] as! Bool
        }
        if dict.keys.contains("Tenant") && dict["Tenant"] != nil {
            var model = SingleTenant()
            model.fromMap(dict["Tenant"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = GetTenantResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! Int32
        }
        if dict.keys.contains("Details") && dict["Details"] != nil {
            self.details = dict["Details"] as! String
        }
        if dict.keys.contains("ErrorCode") && dict["ErrorCode"] != nil {
            self.errorCode = dict["ErrorCode"] as! String
        }
        if dict.keys.contains("Message") && dict["Message"] != nil {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") && dict["Success"] != nil {
            self.success = dict["Success"] as! Bool
        }
        if dict.keys.contains("User") && dict["User"] != nil {
            var model = SimpleUser()
            model.fromMap(dict["User"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = GetUserResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("JobType") && dict["JobType"] != nil {
            self.jobType = dict["JobType"] as! String
        }
        if dict.keys.contains("PageNumber") && dict["PageNumber"] != nil {
            self.pageNumber = dict["PageNumber"] as! Int32
        }
        if dict.keys.contains("PageSize") && dict["PageSize"] != nil {
            self.pageSize = dict["PageSize"] as! Int32
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! Int32
        }
        if dict.keys.contains("Details") && dict["Details"] != nil {
            self.details = dict["Details"] as! String
        }
        if dict.keys.contains("ErrorCode") && dict["ErrorCode"] != nil {
            self.errorCode = dict["ErrorCode"] as! String
        }
        if dict.keys.contains("Jobs") && dict["Jobs"] != nil {
            var tmp : [Job] = []
            for v in dict["Jobs"] as! [Any] {
                var model = Job()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.jobs = tmp
        }
        if dict.keys.contains("Message") && dict["Message"] != nil {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("PageNumber") && dict["PageNumber"] != nil {
            self.pageNumber = dict["PageNumber"] as! Int32
        }
        if dict.keys.contains("PageSize") && dict["PageSize"] != nil {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") && dict["Success"] != nil {
            self.success = dict["Success"] as! Bool
        }
        if dict.keys.contains("TotalCount") && dict["TotalCount"] != nil {
            self.totalCount = dict["TotalCount"] as! Int32
        }
        if dict.keys.contains("TotalPage") && dict["TotalPage"] != nil {
            self.totalPage = dict["TotalPage"] as! Int32
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = ListJobsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("PageNumber") && dict["PageNumber"] != nil {
            self.pageNumber = dict["PageNumber"] as! Int32
        }
        if dict.keys.contains("PageSize") && dict["PageSize"] != nil {
            self.pageSize = dict["PageSize"] as! Int32
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! Int32
        }
        if dict.keys.contains("Details") && dict["Details"] != nil {
            self.details = dict["Details"] as! String
        }
        if dict.keys.contains("ErrorCode") && dict["ErrorCode"] != nil {
            self.errorCode = dict["ErrorCode"] as! String
        }
        if dict.keys.contains("Items") && dict["Items"] != nil {
            var tmp : [SubtaskItemDetail] = []
            for v in dict["Items"] as! [Any] {
                var model = SubtaskItemDetail()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.items = tmp
        }
        if dict.keys.contains("Message") && dict["Message"] != nil {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("PageNumber") && dict["PageNumber"] != nil {
            self.pageNumber = dict["PageNumber"] as! Int32
        }
        if dict.keys.contains("PageSize") && dict["PageSize"] != nil {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") && dict["Success"] != nil {
            self.success = dict["Success"] as! Bool
        }
        if dict.keys.contains("TotalCount") && dict["TotalCount"] != nil {
            self.totalCount = dict["TotalCount"] as! Int32
        }
        if dict.keys.contains("TotalPage") && dict["TotalPage"] != nil {
            self.totalPage = dict["TotalPage"] as! Int32
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = ListSubtaskItemsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("PageNumber") && dict["PageNumber"] != nil {
            self.pageNumber = dict["PageNumber"] as! Int32
        }
        if dict.keys.contains("PageSize") && dict["PageSize"] != nil {
            self.pageSize = dict["PageSize"] as! Int32
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! Int32
        }
        if dict.keys.contains("Details") && dict["Details"] != nil {
            self.details = dict["Details"] as! String
        }
        if dict.keys.contains("ErrorCode") && dict["ErrorCode"] != nil {
            self.errorCode = dict["ErrorCode"] as! String
        }
        if dict.keys.contains("Message") && dict["Message"] != nil {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("PageNumber") && dict["PageNumber"] != nil {
            self.pageNumber = dict["PageNumber"] as! Int32
        }
        if dict.keys.contains("PageSize") && dict["PageSize"] != nil {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Subtasks") && dict["Subtasks"] != nil {
            var tmp : [SubtaskDetail] = []
            for v in dict["Subtasks"] as! [Any] {
                var model = SubtaskDetail()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.subtasks = tmp
        }
        if dict.keys.contains("Success") && dict["Success"] != nil {
            self.success = dict["Success"] as! Bool
        }
        if dict.keys.contains("TotalCount") && dict["TotalCount"] != nil {
            self.totalCount = dict["TotalCount"] as! Int32
        }
        if dict.keys.contains("TotalPage") && dict["TotalPage"] != nil {
            self.totalPage = dict["TotalPage"] as! Int32
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = ListSubtasksResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("PageNumber") && dict["PageNumber"] != nil {
            self.pageNumber = dict["PageNumber"] as! Int32
        }
        if dict.keys.contains("PageSize") && dict["PageSize"] != nil {
            self.pageSize = dict["PageSize"] as! Int32
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! Int32
        }
        if dict.keys.contains("Details") && dict["Details"] != nil {
            self.details = dict["Details"] as! String
        }
        if dict.keys.contains("ErrorCode") && dict["ErrorCode"] != nil {
            self.errorCode = dict["ErrorCode"] as! String
        }
        if dict.keys.contains("Message") && dict["Message"] != nil {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("PageNumber") && dict["PageNumber"] != nil {
            self.pageNumber = dict["PageNumber"] as! Int32
        }
        if dict.keys.contains("PageSize") && dict["PageSize"] != nil {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") && dict["Success"] != nil {
            self.success = dict["Success"] as! Bool
        }
        if dict.keys.contains("Tasks") && dict["Tasks"] != nil {
            var tmp : [SimpleTask] = []
            for v in dict["Tasks"] as! [Any] {
                var model = SimpleTask()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.tasks = tmp
        }
        if dict.keys.contains("TotalCount") && dict["TotalCount"] != nil {
            self.totalCount = dict["TotalCount"] as! Int32
        }
        if dict.keys.contains("TotalPage") && dict["TotalPage"] != nil {
            self.totalPage = dict["TotalPage"] as! Int32
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = ListTasksResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("PageNumber") && dict["PageNumber"] != nil {
            self.pageNumber = dict["PageNumber"] as! Int32
        }
        if dict.keys.contains("PageSize") && dict["PageSize"] != nil {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("SearchKey") && dict["SearchKey"] != nil {
            self.searchKey = dict["SearchKey"] as! String
        }
        if dict.keys.contains("Types") && dict["Types"] != nil {
            self.types = dict["Types"] as! [String]
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("PageNumber") && dict["PageNumber"] != nil {
            self.pageNumber = dict["PageNumber"] as! Int32
        }
        if dict.keys.contains("PageSize") && dict["PageSize"] != nil {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("SearchKey") && dict["SearchKey"] != nil {
            self.searchKey = dict["SearchKey"] as! String
        }
        if dict.keys.contains("Types") && dict["Types"] != nil {
            self.typesShrink = dict["Types"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! Int32
        }
        if dict.keys.contains("Details") && dict["Details"] != nil {
            self.details = dict["Details"] as! String
        }
        if dict.keys.contains("ErrorCode") && dict["ErrorCode"] != nil {
            self.errorCode = dict["ErrorCode"] as! String
        }
        if dict.keys.contains("Message") && dict["Message"] != nil {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("PageNumber") && dict["PageNumber"] != nil {
            self.pageNumber = dict["PageNumber"] as! Int32
        }
        if dict.keys.contains("PageSize") && dict["PageSize"] != nil {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") && dict["Success"] != nil {
            self.success = dict["Success"] as! Bool
        }
        if dict.keys.contains("Templates") && dict["Templates"] != nil {
            var tmp : [SimpleTemplate] = []
            for v in dict["Templates"] as! [Any] {
                var model = SimpleTemplate()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.templates = tmp
        }
        if dict.keys.contains("TotalCount") && dict["TotalCount"] != nil {
            self.totalCount = dict["TotalCount"] as! Int32
        }
        if dict.keys.contains("TotalPage") && dict["TotalPage"] != nil {
            self.totalPage = dict["TotalPage"] as! Int32
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = ListTemplatesResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("PageNumber") && dict["PageNumber"] != nil {
            self.pageNumber = dict["PageNumber"] as! Int32
        }
        if dict.keys.contains("PageSize") && dict["PageSize"] != nil {
            self.pageSize = dict["PageSize"] as! Int32
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! Int32
        }
        if dict.keys.contains("Details") && dict["Details"] != nil {
            self.details = dict["Details"] as! String
        }
        if dict.keys.contains("ErrorCode") && dict["ErrorCode"] != nil {
            self.errorCode = dict["ErrorCode"] as! String
        }
        if dict.keys.contains("Message") && dict["Message"] != nil {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("PageNumber") && dict["PageNumber"] != nil {
            self.pageNumber = dict["PageNumber"] as! Int32
        }
        if dict.keys.contains("PageSize") && dict["PageSize"] != nil {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") && dict["Success"] != nil {
            self.success = dict["Success"] as! Bool
        }
        if dict.keys.contains("Tenants") && dict["Tenants"] != nil {
            var tmp : [SimpleTenant] = []
            for v in dict["Tenants"] as! [Any] {
                var model = SimpleTenant()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.tenants = tmp
        }
        if dict.keys.contains("TotalCount") && dict["TotalCount"] != nil {
            self.totalCount = dict["TotalCount"] as! Int32
        }
        if dict.keys.contains("TotalPage") && dict["TotalPage"] != nil {
            self.totalPage = dict["TotalPage"] as! Int32
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = ListTenantsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("PageNumber") && dict["PageNumber"] != nil {
            self.pageNumber = dict["PageNumber"] as! Int32
        }
        if dict.keys.contains("PageSize") && dict["PageSize"] != nil {
            self.pageSize = dict["PageSize"] as! Int32
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! Int32
        }
        if dict.keys.contains("Details") && dict["Details"] != nil {
            self.details = dict["Details"] as! String
        }
        if dict.keys.contains("ErrorCode") && dict["ErrorCode"] != nil {
            self.errorCode = dict["ErrorCode"] as! String
        }
        if dict.keys.contains("Message") && dict["Message"] != nil {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("PageNumber") && dict["PageNumber"] != nil {
            self.pageNumber = dict["PageNumber"] as! Int32
        }
        if dict.keys.contains("PageSize") && dict["PageSize"] != nil {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") && dict["Success"] != nil {
            self.success = dict["Success"] as! Bool
        }
        if dict.keys.contains("TotalCount") && dict["TotalCount"] != nil {
            self.totalCount = dict["TotalCount"] as! Int32
        }
        if dict.keys.contains("TotalPage") && dict["TotalPage"] != nil {
            self.totalPage = dict["TotalPage"] as! Int32
        }
        if dict.keys.contains("Users") && dict["Users"] != nil {
            var tmp : [SimpleUser] = []
            for v in dict["Users"] as! [Any] {
                var model = SimpleUser()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = ListUsersResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("UserIds") && dict["UserIds"] != nil {
            self.userIds = dict["UserIds"] as! [Int64]
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! Int32
        }
        if dict.keys.contains("Details") && dict["Details"] != nil {
            self.details = dict["Details"] as! String
        }
        if dict.keys.contains("ErrorCode") && dict["ErrorCode"] != nil {
            self.errorCode = dict["ErrorCode"] as! String
        }
        if dict.keys.contains("Message") && dict["Message"] != nil {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") && dict["Success"] != nil {
            self.success = dict["Success"] as! Bool
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = RemoveWorkNodeWorkforceResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = UpdateTaskDTO()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! Int32
        }
        if dict.keys.contains("Details") && dict["Details"] != nil {
            self.details = dict["Details"] as! String
        }
        if dict.keys.contains("ErrorCode") && dict["ErrorCode"] != nil {
            self.errorCode = dict["ErrorCode"] as! String
        }
        if dict.keys.contains("Message") && dict["Message"] != nil {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") && dict["Success"] != nil {
            self.success = dict["Success"] as! Bool
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = UpdateTaskResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Workforce") && dict["Workforce"] != nil {
            var tmp : [SimpleWorkforce] = []
            for v in dict["Workforce"] as! [Any] {
                var model = SimpleWorkforce()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! Int32
        }
        if dict.keys.contains("Details") && dict["Details"] != nil {
            self.details = dict["Details"] as! String
        }
        if dict.keys.contains("ErrorCode") && dict["ErrorCode"] != nil {
            self.errorCode = dict["ErrorCode"] as! String
        }
        if dict.keys.contains("Message") && dict["Message"] != nil {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") && dict["Success"] != nil {
            self.success = dict["Success"] as! Bool
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = UpdateTaskWorkforceResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = TemplateDTO()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! Int32
        }
        if dict.keys.contains("Details") && dict["Details"] != nil {
            self.details = dict["Details"] as! String
        }
        if dict.keys.contains("ErrorCode") && dict["ErrorCode"] != nil {
            self.errorCode = dict["ErrorCode"] as! String
        }
        if dict.keys.contains("Message") && dict["Message"] != nil {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") && dict["Success"] != nil {
            self.success = dict["Success"] as! Bool
        }
        if dict.keys.contains("TemplateId") && dict["TemplateId"] != nil {
            self.templateId = dict["TemplateId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = UpdateTemplateResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Description") && dict["Description"] != nil {
            self.description_ = dict["Description"] as! String
        }
        if dict.keys.contains("TenantName") && dict["TenantName"] != nil {
            self.tenantName = dict["TenantName"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! Int32
        }
        if dict.keys.contains("Details") && dict["Details"] != nil {
            self.details = dict["Details"] as! String
        }
        if dict.keys.contains("ErrorCode") && dict["ErrorCode"] != nil {
            self.errorCode = dict["ErrorCode"] as! String
        }
        if dict.keys.contains("Message") && dict["Message"] != nil {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") && dict["Success"] != nil {
            self.success = dict["Success"] as! Bool
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = UpdateTenantResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Role") && dict["Role"] != nil {
            self.role = dict["Role"] as! String
        }
        if dict.keys.contains("UserName") && dict["UserName"] != nil {
            self.userName = dict["UserName"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! Int32
        }
        if dict.keys.contains("Details") && dict["Details"] != nil {
            self.details = dict["Details"] as! String
        }
        if dict.keys.contains("ErrorCode") && dict["ErrorCode"] != nil {
            self.errorCode = dict["ErrorCode"] as! String
        }
        if dict.keys.contains("Message") && dict["Message"] != nil {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") && dict["Success"] != nil {
            self.success = dict["Success"] as! Bool
        }
        if dict.keys.contains("UserId") && dict["UserId"] != nil {
            self.userId = dict["UserId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = UpdateUserResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}
