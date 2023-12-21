import Foundation
import Tea
import TeaUtils
import AlibabacloudOpenApi
import AlibabaCloudOpenApiUtil
import AlibabacloudEndpointUtil

public class BriefPipelineRun : Tea.TeaModel {
    public var accessibility: String?

    public var duration: Int64?

    public var finishedAt: String?

    public var gmtCreateTime: String?

    public var gmtModifiedTime: String?

    public var message: String?

    public var name: String?

    public var nodeId: String?

    public var parentUserId: String?

    public var pipelineId: String?

    public var pipelineRunId: String?

    public var sourceId: String?

    public var sourceType: String?

    public var startedAt: String?

    public var status: String?

    public var userId: String?

    public var workspaceId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.accessibility != nil {
            map["Accessibility"] = self.accessibility!
        }
        if self.duration != nil {
            map["Duration"] = self.duration!
        }
        if self.finishedAt != nil {
            map["FinishedAt"] = self.finishedAt!
        }
        if self.gmtCreateTime != nil {
            map["GmtCreateTime"] = self.gmtCreateTime!
        }
        if self.gmtModifiedTime != nil {
            map["GmtModifiedTime"] = self.gmtModifiedTime!
        }
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.name != nil {
            map["Name"] = self.name!
        }
        if self.nodeId != nil {
            map["NodeId"] = self.nodeId!
        }
        if self.parentUserId != nil {
            map["ParentUserId"] = self.parentUserId!
        }
        if self.pipelineId != nil {
            map["PipelineId"] = self.pipelineId!
        }
        if self.pipelineRunId != nil {
            map["PipelineRunId"] = self.pipelineRunId!
        }
        if self.sourceId != nil {
            map["SourceId"] = self.sourceId!
        }
        if self.sourceType != nil {
            map["SourceType"] = self.sourceType!
        }
        if self.startedAt != nil {
            map["StartedAt"] = self.startedAt!
        }
        if self.status != nil {
            map["Status"] = self.status!
        }
        if self.userId != nil {
            map["UserId"] = self.userId!
        }
        if self.workspaceId != nil {
            map["WorkspaceId"] = self.workspaceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Accessibility") && dict["Accessibility"] != nil {
            self.accessibility = dict["Accessibility"] as! String
        }
        if dict.keys.contains("Duration") && dict["Duration"] != nil {
            self.duration = dict["Duration"] as! Int64
        }
        if dict.keys.contains("FinishedAt") && dict["FinishedAt"] != nil {
            self.finishedAt = dict["FinishedAt"] as! String
        }
        if dict.keys.contains("GmtCreateTime") && dict["GmtCreateTime"] != nil {
            self.gmtCreateTime = dict["GmtCreateTime"] as! String
        }
        if dict.keys.contains("GmtModifiedTime") && dict["GmtModifiedTime"] != nil {
            self.gmtModifiedTime = dict["GmtModifiedTime"] as! String
        }
        if dict.keys.contains("Message") && dict["Message"] != nil {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("Name") && dict["Name"] != nil {
            self.name = dict["Name"] as! String
        }
        if dict.keys.contains("NodeId") && dict["NodeId"] != nil {
            self.nodeId = dict["NodeId"] as! String
        }
        if dict.keys.contains("ParentUserId") && dict["ParentUserId"] != nil {
            self.parentUserId = dict["ParentUserId"] as! String
        }
        if dict.keys.contains("PipelineId") && dict["PipelineId"] != nil {
            self.pipelineId = dict["PipelineId"] as! String
        }
        if dict.keys.contains("PipelineRunId") && dict["PipelineRunId"] != nil {
            self.pipelineRunId = dict["PipelineRunId"] as! String
        }
        if dict.keys.contains("SourceId") && dict["SourceId"] != nil {
            self.sourceId = dict["SourceId"] as! String
        }
        if dict.keys.contains("SourceType") && dict["SourceType"] != nil {
            self.sourceType = dict["SourceType"] as! String
        }
        if dict.keys.contains("StartedAt") && dict["StartedAt"] != nil {
            self.startedAt = dict["StartedAt"] as! String
        }
        if dict.keys.contains("Status") && dict["Status"] != nil {
            self.status = dict["Status"] as! String
        }
        if dict.keys.contains("UserId") && dict["UserId"] != nil {
            self.userId = dict["UserId"] as! String
        }
        if dict.keys.contains("WorkspaceId") && dict["WorkspaceId"] != nil {
            self.workspaceId = dict["WorkspaceId"] as! String
        }
    }
}

public class FullPipelineRun : Tea.TeaModel {
    public var accessibility: String?

    public var arguments: String?

    public var duration: Int64?

    public var finishedAt: String?

    public var gmtCreateTime: String?

    public var gmtModifiedTime: String?

    public var manifest: String?

    public var message: String?

    public var name: String?

    public var nodeId: String?

    public var options: String?

    public var parentUserId: String?

    public var pipelineId: String?

    public var pipelineRunId: String?

    public var sourceId: String?

    public var sourceType: String?

    public var startedAt: String?

    public var status: String?

    public var userId: String?

    public var workspaceId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.accessibility != nil {
            map["Accessibility"] = self.accessibility!
        }
        if self.arguments != nil {
            map["Arguments"] = self.arguments!
        }
        if self.duration != nil {
            map["Duration"] = self.duration!
        }
        if self.finishedAt != nil {
            map["FinishedAt"] = self.finishedAt!
        }
        if self.gmtCreateTime != nil {
            map["GmtCreateTime"] = self.gmtCreateTime!
        }
        if self.gmtModifiedTime != nil {
            map["GmtModifiedTime"] = self.gmtModifiedTime!
        }
        if self.manifest != nil {
            map["Manifest"] = self.manifest!
        }
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.name != nil {
            map["Name"] = self.name!
        }
        if self.nodeId != nil {
            map["NodeId"] = self.nodeId!
        }
        if self.options != nil {
            map["Options"] = self.options!
        }
        if self.parentUserId != nil {
            map["ParentUserId"] = self.parentUserId!
        }
        if self.pipelineId != nil {
            map["PipelineId"] = self.pipelineId!
        }
        if self.pipelineRunId != nil {
            map["PipelineRunId"] = self.pipelineRunId!
        }
        if self.sourceId != nil {
            map["SourceId"] = self.sourceId!
        }
        if self.sourceType != nil {
            map["SourceType"] = self.sourceType!
        }
        if self.startedAt != nil {
            map["StartedAt"] = self.startedAt!
        }
        if self.status != nil {
            map["Status"] = self.status!
        }
        if self.userId != nil {
            map["UserId"] = self.userId!
        }
        if self.workspaceId != nil {
            map["WorkspaceId"] = self.workspaceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Accessibility") && dict["Accessibility"] != nil {
            self.accessibility = dict["Accessibility"] as! String
        }
        if dict.keys.contains("Arguments") && dict["Arguments"] != nil {
            self.arguments = dict["Arguments"] as! String
        }
        if dict.keys.contains("Duration") && dict["Duration"] != nil {
            self.duration = dict["Duration"] as! Int64
        }
        if dict.keys.contains("FinishedAt") && dict["FinishedAt"] != nil {
            self.finishedAt = dict["FinishedAt"] as! String
        }
        if dict.keys.contains("GmtCreateTime") && dict["GmtCreateTime"] != nil {
            self.gmtCreateTime = dict["GmtCreateTime"] as! String
        }
        if dict.keys.contains("GmtModifiedTime") && dict["GmtModifiedTime"] != nil {
            self.gmtModifiedTime = dict["GmtModifiedTime"] as! String
        }
        if dict.keys.contains("Manifest") && dict["Manifest"] != nil {
            self.manifest = dict["Manifest"] as! String
        }
        if dict.keys.contains("Message") && dict["Message"] != nil {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("Name") && dict["Name"] != nil {
            self.name = dict["Name"] as! String
        }
        if dict.keys.contains("NodeId") && dict["NodeId"] != nil {
            self.nodeId = dict["NodeId"] as! String
        }
        if dict.keys.contains("Options") && dict["Options"] != nil {
            self.options = dict["Options"] as! String
        }
        if dict.keys.contains("ParentUserId") && dict["ParentUserId"] != nil {
            self.parentUserId = dict["ParentUserId"] as! String
        }
        if dict.keys.contains("PipelineId") && dict["PipelineId"] != nil {
            self.pipelineId = dict["PipelineId"] as! String
        }
        if dict.keys.contains("PipelineRunId") && dict["PipelineRunId"] != nil {
            self.pipelineRunId = dict["PipelineRunId"] as! String
        }
        if dict.keys.contains("SourceId") && dict["SourceId"] != nil {
            self.sourceId = dict["SourceId"] as! String
        }
        if dict.keys.contains("SourceType") && dict["SourceType"] != nil {
            self.sourceType = dict["SourceType"] as! String
        }
        if dict.keys.contains("StartedAt") && dict["StartedAt"] != nil {
            self.startedAt = dict["StartedAt"] as! String
        }
        if dict.keys.contains("Status") && dict["Status"] != nil {
            self.status = dict["Status"] as! String
        }
        if dict.keys.contains("UserId") && dict["UserId"] != nil {
            self.userId = dict["UserId"] as! String
        }
        if dict.keys.contains("WorkspaceId") && dict["WorkspaceId"] != nil {
            self.workspaceId = dict["WorkspaceId"] as! String
        }
    }
}

public class Node : Tea.TeaModel {
    public class Metadata : Tea.TeaModel {
        public var displayName: String?

        public var identifier: String?

        public var name: String?

        public var nodeId: String?

        public var nodeType: String?

        public var provider: String?

        public var relatedNodeIds: [String]?

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
            if self.displayName != nil {
                map["DisplayName"] = self.displayName!
            }
            if self.identifier != nil {
                map["Identifier"] = self.identifier!
            }
            if self.name != nil {
                map["Name"] = self.name!
            }
            if self.nodeId != nil {
                map["NodeId"] = self.nodeId!
            }
            if self.nodeType != nil {
                map["NodeType"] = self.nodeType!
            }
            if self.provider != nil {
                map["Provider"] = self.provider!
            }
            if self.relatedNodeIds != nil {
                map["RelatedNodeIds"] = self.relatedNodeIds!
            }
            if self.version != nil {
                map["Version"] = self.version!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("DisplayName") && dict["DisplayName"] != nil {
                self.displayName = dict["DisplayName"] as! String
            }
            if dict.keys.contains("Identifier") && dict["Identifier"] != nil {
                self.identifier = dict["Identifier"] as! String
            }
            if dict.keys.contains("Name") && dict["Name"] != nil {
                self.name = dict["Name"] as! String
            }
            if dict.keys.contains("NodeId") && dict["NodeId"] != nil {
                self.nodeId = dict["NodeId"] as! String
            }
            if dict.keys.contains("NodeType") && dict["NodeType"] != nil {
                self.nodeType = dict["NodeType"] as! String
            }
            if dict.keys.contains("Provider") && dict["Provider"] != nil {
                self.provider = dict["Provider"] as! String
            }
            if dict.keys.contains("RelatedNodeIds") && dict["RelatedNodeIds"] != nil {
                self.relatedNodeIds = dict["RelatedNodeIds"] as! [String]
            }
            if dict.keys.contains("Version") && dict["Version"] != nil {
                self.version = dict["Version"] as! String
            }
        }
    }
    public class Spec : Tea.TeaModel {
        public class WithSequence : Tea.TeaModel {
            public var end: Int64?

            public var format: String?

            public var start: Int64?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.end != nil {
                    map["End"] = self.end!
                }
                if self.format != nil {
                    map["Format"] = self.format!
                }
                if self.start != nil {
                    map["Start"] = self.start!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("End") && dict["End"] != nil {
                    self.end = dict["End"] as! Int64
                }
                if dict.keys.contains("Format") && dict["Format"] != nil {
                    self.format = dict["Format"] as! String
                }
                if dict.keys.contains("Start") && dict["Start"] != nil {
                    self.start = dict["Start"] as! Int64
                }
            }
        }
        public var dependencies: [String]?

        public var hasPipelines: Bool?

        public var inputs: NodeIO?

        public var outputs: NodeIO?

        public var parallelism: Int64?

        public var pipelines: [Node]?

        public var when: String?

        public var withItems: [String]?

        public var withParam: String?

        public var withSequence: Node.Spec.WithSequence?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.inputs?.validate()
            try self.outputs?.validate()
            try self.withSequence?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.dependencies != nil {
                map["Dependencies"] = self.dependencies!
            }
            if self.hasPipelines != nil {
                map["HasPipelines"] = self.hasPipelines!
            }
            if self.inputs != nil {
                map["Inputs"] = self.inputs?.toMap()
            }
            if self.outputs != nil {
                map["Outputs"] = self.outputs?.toMap()
            }
            if self.parallelism != nil {
                map["Parallelism"] = self.parallelism!
            }
            if self.pipelines != nil {
                var tmp : [Any] = []
                for k in self.pipelines! {
                    tmp.append(k.toMap())
                }
                map["Pipelines"] = tmp
            }
            if self.when != nil {
                map["When"] = self.when!
            }
            if self.withItems != nil {
                map["WithItems"] = self.withItems!
            }
            if self.withParam != nil {
                map["WithParam"] = self.withParam!
            }
            if self.withSequence != nil {
                map["WithSequence"] = self.withSequence?.toMap()
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Dependencies") && dict["Dependencies"] != nil {
                self.dependencies = dict["Dependencies"] as! [String]
            }
            if dict.keys.contains("HasPipelines") && dict["HasPipelines"] != nil {
                self.hasPipelines = dict["HasPipelines"] as! Bool
            }
            if dict.keys.contains("Inputs") && dict["Inputs"] != nil {
                var model = NodeIO()
                model.fromMap(dict["Inputs"] as! [String: Any])
                self.inputs = model
            }
            if dict.keys.contains("Outputs") && dict["Outputs"] != nil {
                var model = NodeIO()
                model.fromMap(dict["Outputs"] as! [String: Any])
                self.outputs = model
            }
            if dict.keys.contains("Parallelism") && dict["Parallelism"] != nil {
                self.parallelism = dict["Parallelism"] as! Int64
            }
            if dict.keys.contains("Pipelines") && dict["Pipelines"] != nil {
                var tmp : [Node] = []
                for v in dict["Pipelines"] as! [Any] {
                    var model = Node()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.pipelines = tmp
            }
            if dict.keys.contains("When") && dict["When"] != nil {
                self.when = dict["When"] as! String
            }
            if dict.keys.contains("WithItems") && dict["WithItems"] != nil {
                self.withItems = dict["WithItems"] as! [String]
            }
            if dict.keys.contains("WithParam") && dict["WithParam"] != nil {
                self.withParam = dict["WithParam"] as! String
            }
            if dict.keys.contains("WithSequence") && dict["WithSequence"] != nil {
                var model = Node.Spec.WithSequence()
                model.fromMap(dict["WithSequence"] as! [String: Any])
                self.withSequence = model
            }
        }
    }
    public class StatusInfo : Tea.TeaModel {
        public class Conditions : Tea.TeaModel {
            public var status: String?

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
                if self.status != nil {
                    map["Status"] = self.status!
                }
                if self.type != nil {
                    map["Type"] = self.type!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("Status") && dict["Status"] != nil {
                    self.status = dict["Status"] as! String
                }
                if dict.keys.contains("Type") && dict["Type"] != nil {
                    self.type = dict["Type"] as! String
                }
            }
        }
        public var conditions: [Node.StatusInfo.Conditions]?

        public var finishedAt: String?

        public var progress: String?

        public var startedAt: String?

        public var status: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.conditions != nil {
                var tmp : [Any] = []
                for k in self.conditions! {
                    tmp.append(k.toMap())
                }
                map["Conditions"] = tmp
            }
            if self.finishedAt != nil {
                map["FinishedAt"] = self.finishedAt!
            }
            if self.progress != nil {
                map["Progress"] = self.progress!
            }
            if self.startedAt != nil {
                map["StartedAt"] = self.startedAt!
            }
            if self.status != nil {
                map["Status"] = self.status!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Conditions") && dict["Conditions"] != nil {
                var tmp : [Node.StatusInfo.Conditions] = []
                for v in dict["Conditions"] as! [Any] {
                    var model = Node.StatusInfo.Conditions()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.conditions = tmp
            }
            if dict.keys.contains("FinishedAt") && dict["FinishedAt"] != nil {
                self.finishedAt = dict["FinishedAt"] as! String
            }
            if dict.keys.contains("Progress") && dict["Progress"] != nil {
                self.progress = dict["Progress"] as! String
            }
            if dict.keys.contains("StartedAt") && dict["StartedAt"] != nil {
                self.startedAt = dict["StartedAt"] as! String
            }
            if dict.keys.contains("Status") && dict["Status"] != nil {
                self.status = dict["Status"] as! String
            }
        }
    }
    public var apiVersion: String?

    public var metadata: Node.Metadata?

    public var spec: Node.Spec?

    public var statusInfo: Node.StatusInfo?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.metadata?.validate()
        try self.spec?.validate()
        try self.statusInfo?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.apiVersion != nil {
            map["ApiVersion"] = self.apiVersion!
        }
        if self.metadata != nil {
            map["Metadata"] = self.metadata?.toMap()
        }
        if self.spec != nil {
            map["Spec"] = self.spec?.toMap()
        }
        if self.statusInfo != nil {
            map["StatusInfo"] = self.statusInfo?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ApiVersion") && dict["ApiVersion"] != nil {
            self.apiVersion = dict["ApiVersion"] as! String
        }
        if dict.keys.contains("Metadata") && dict["Metadata"] != nil {
            var model = Node.Metadata()
            model.fromMap(dict["Metadata"] as! [String: Any])
            self.metadata = model
        }
        if dict.keys.contains("Spec") && dict["Spec"] != nil {
            var model = Node.Spec()
            model.fromMap(dict["Spec"] as! [String: Any])
            self.spec = model
        }
        if dict.keys.contains("StatusInfo") && dict["StatusInfo"] != nil {
            var model = Node.StatusInfo()
            model.fromMap(dict["StatusInfo"] as! [String: Any])
            self.statusInfo = model
        }
    }
}

public class NodeIO : Tea.TeaModel {
    public var artifacts: [[String: Any]]?

    public var parameters: [[String: Any]]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.artifacts != nil {
            map["Artifacts"] = self.artifacts!
        }
        if self.parameters != nil {
            map["Parameters"] = self.parameters!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Artifacts") && dict["Artifacts"] != nil {
            self.artifacts = dict["Artifacts"] as! [[String: Any]]
        }
        if dict.keys.contains("Parameters") && dict["Parameters"] != nil {
            self.parameters = dict["Parameters"] as! [[String: Any]]
        }
    }
}

public class Pipeline : Tea.TeaModel {
    public var gmtCreateTime: String?

    public var gmtModifiedTime: String?

    public var identifier: String?

    public var pipelineId: String?

    public var provider: String?

    public var uuid: String?

    public var version: String?

    public var workspaceId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.gmtCreateTime != nil {
            map["GmtCreateTime"] = self.gmtCreateTime!
        }
        if self.gmtModifiedTime != nil {
            map["GmtModifiedTime"] = self.gmtModifiedTime!
        }
        if self.identifier != nil {
            map["Identifier"] = self.identifier!
        }
        if self.pipelineId != nil {
            map["PipelineId"] = self.pipelineId!
        }
        if self.provider != nil {
            map["Provider"] = self.provider!
        }
        if self.uuid != nil {
            map["Uuid"] = self.uuid!
        }
        if self.version != nil {
            map["Version"] = self.version!
        }
        if self.workspaceId != nil {
            map["WorkspaceId"] = self.workspaceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("GmtCreateTime") && dict["GmtCreateTime"] != nil {
            self.gmtCreateTime = dict["GmtCreateTime"] as! String
        }
        if dict.keys.contains("GmtModifiedTime") && dict["GmtModifiedTime"] != nil {
            self.gmtModifiedTime = dict["GmtModifiedTime"] as! String
        }
        if dict.keys.contains("Identifier") && dict["Identifier"] != nil {
            self.identifier = dict["Identifier"] as! String
        }
        if dict.keys.contains("PipelineId") && dict["PipelineId"] != nil {
            self.pipelineId = dict["PipelineId"] as! String
        }
        if dict.keys.contains("Provider") && dict["Provider"] != nil {
            self.provider = dict["Provider"] as! String
        }
        if dict.keys.contains("Uuid") && dict["Uuid"] != nil {
            self.uuid = dict["Uuid"] as! String
        }
        if dict.keys.contains("Version") && dict["Version"] != nil {
            self.version = dict["Version"] as! String
        }
        if dict.keys.contains("WorkspaceId") && dict["WorkspaceId"] != nil {
            self.workspaceId = dict["WorkspaceId"] as! String
        }
    }
}

public class Run : Tea.TeaModel {
    public var accessibility: String?

    public var duration: Int64?

    public var experimentId: String?

    public var finishedAt: Int64?

    public var gmtCreateTime: String?

    public var gmtModifiedTime: String?

    public var message: String?

    public var name: String?

    public var nodeId: String?

    public var parentUserId: String?

    public var runId: String?

    public var source: String?

    public var startedAt: Int64?

    public var status: String?

    public var userId: String?

    public var workspaceId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.accessibility != nil {
            map["Accessibility"] = self.accessibility!
        }
        if self.duration != nil {
            map["Duration"] = self.duration!
        }
        if self.experimentId != nil {
            map["ExperimentId"] = self.experimentId!
        }
        if self.finishedAt != nil {
            map["FinishedAt"] = self.finishedAt!
        }
        if self.gmtCreateTime != nil {
            map["GmtCreateTime"] = self.gmtCreateTime!
        }
        if self.gmtModifiedTime != nil {
            map["GmtModifiedTime"] = self.gmtModifiedTime!
        }
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.name != nil {
            map["Name"] = self.name!
        }
        if self.nodeId != nil {
            map["NodeId"] = self.nodeId!
        }
        if self.parentUserId != nil {
            map["ParentUserId"] = self.parentUserId!
        }
        if self.runId != nil {
            map["RunId"] = self.runId!
        }
        if self.source != nil {
            map["Source"] = self.source!
        }
        if self.startedAt != nil {
            map["StartedAt"] = self.startedAt!
        }
        if self.status != nil {
            map["Status"] = self.status!
        }
        if self.userId != nil {
            map["UserId"] = self.userId!
        }
        if self.workspaceId != nil {
            map["WorkspaceId"] = self.workspaceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Accessibility") && dict["Accessibility"] != nil {
            self.accessibility = dict["Accessibility"] as! String
        }
        if dict.keys.contains("Duration") && dict["Duration"] != nil {
            self.duration = dict["Duration"] as! Int64
        }
        if dict.keys.contains("ExperimentId") && dict["ExperimentId"] != nil {
            self.experimentId = dict["ExperimentId"] as! String
        }
        if dict.keys.contains("FinishedAt") && dict["FinishedAt"] != nil {
            self.finishedAt = dict["FinishedAt"] as! Int64
        }
        if dict.keys.contains("GmtCreateTime") && dict["GmtCreateTime"] != nil {
            self.gmtCreateTime = dict["GmtCreateTime"] as! String
        }
        if dict.keys.contains("GmtModifiedTime") && dict["GmtModifiedTime"] != nil {
            self.gmtModifiedTime = dict["GmtModifiedTime"] as! String
        }
        if dict.keys.contains("Message") && dict["Message"] != nil {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("Name") && dict["Name"] != nil {
            self.name = dict["Name"] as! String
        }
        if dict.keys.contains("NodeId") && dict["NodeId"] != nil {
            self.nodeId = dict["NodeId"] as! String
        }
        if dict.keys.contains("ParentUserId") && dict["ParentUserId"] != nil {
            self.parentUserId = dict["ParentUserId"] as! String
        }
        if dict.keys.contains("RunId") && dict["RunId"] != nil {
            self.runId = dict["RunId"] as! String
        }
        if dict.keys.contains("Source") && dict["Source"] != nil {
            self.source = dict["Source"] as! String
        }
        if dict.keys.contains("StartedAt") && dict["StartedAt"] != nil {
            self.startedAt = dict["StartedAt"] as! Int64
        }
        if dict.keys.contains("Status") && dict["Status"] != nil {
            self.status = dict["Status"] as! String
        }
        if dict.keys.contains("UserId") && dict["UserId"] != nil {
            self.userId = dict["UserId"] as! String
        }
        if dict.keys.contains("WorkspaceId") && dict["WorkspaceId"] != nil {
            self.workspaceId = dict["WorkspaceId"] as! String
        }
    }
}

public class CreatePipelineRequest : Tea.TeaModel {
    public var manifest: String?

    public var workspaceId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.manifest != nil {
            map["Manifest"] = self.manifest!
        }
        if self.workspaceId != nil {
            map["WorkspaceId"] = self.workspaceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Manifest") && dict["Manifest"] != nil {
            self.manifest = dict["Manifest"] as! String
        }
        if dict.keys.contains("WorkspaceId") && dict["WorkspaceId"] != nil {
            self.workspaceId = dict["WorkspaceId"] as! String
        }
    }
}

public class CreatePipelineResponseBody : Tea.TeaModel {
    public var pipelineId: String?

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
        if self.pipelineId != nil {
            map["PipelineId"] = self.pipelineId!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("PipelineId") && dict["PipelineId"] != nil {
            self.pipelineId = dict["PipelineId"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class CreatePipelineResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreatePipelineResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = CreatePipelineResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class CreatePipelineRunRequest : Tea.TeaModel {
    public var accessibility: String?

    public var arguments: String?

    public var name: String?

    public var noConfirmRequired: Bool?

    public var options: String?

    public var pipelineId: String?

    public var pipelineManifest: String?

    public var sourceId: String?

    public var sourceType: String?

    public var workspaceId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.accessibility != nil {
            map["Accessibility"] = self.accessibility!
        }
        if self.arguments != nil {
            map["Arguments"] = self.arguments!
        }
        if self.name != nil {
            map["Name"] = self.name!
        }
        if self.noConfirmRequired != nil {
            map["NoConfirmRequired"] = self.noConfirmRequired!
        }
        if self.options != nil {
            map["Options"] = self.options!
        }
        if self.pipelineId != nil {
            map["PipelineId"] = self.pipelineId!
        }
        if self.pipelineManifest != nil {
            map["PipelineManifest"] = self.pipelineManifest!
        }
        if self.sourceId != nil {
            map["SourceId"] = self.sourceId!
        }
        if self.sourceType != nil {
            map["SourceType"] = self.sourceType!
        }
        if self.workspaceId != nil {
            map["WorkspaceId"] = self.workspaceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Accessibility") && dict["Accessibility"] != nil {
            self.accessibility = dict["Accessibility"] as! String
        }
        if dict.keys.contains("Arguments") && dict["Arguments"] != nil {
            self.arguments = dict["Arguments"] as! String
        }
        if dict.keys.contains("Name") && dict["Name"] != nil {
            self.name = dict["Name"] as! String
        }
        if dict.keys.contains("NoConfirmRequired") && dict["NoConfirmRequired"] != nil {
            self.noConfirmRequired = dict["NoConfirmRequired"] as! Bool
        }
        if dict.keys.contains("Options") && dict["Options"] != nil {
            self.options = dict["Options"] as! String
        }
        if dict.keys.contains("PipelineId") && dict["PipelineId"] != nil {
            self.pipelineId = dict["PipelineId"] as! String
        }
        if dict.keys.contains("PipelineManifest") && dict["PipelineManifest"] != nil {
            self.pipelineManifest = dict["PipelineManifest"] as! String
        }
        if dict.keys.contains("SourceId") && dict["SourceId"] != nil {
            self.sourceId = dict["SourceId"] as! String
        }
        if dict.keys.contains("SourceType") && dict["SourceType"] != nil {
            self.sourceType = dict["SourceType"] as! String
        }
        if dict.keys.contains("WorkspaceId") && dict["WorkspaceId"] != nil {
            self.workspaceId = dict["WorkspaceId"] as! String
        }
    }
}

public class CreatePipelineRunResponseBody : Tea.TeaModel {
    public var pipelineRunId: String?

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
        if self.pipelineRunId != nil {
            map["PipelineRunId"] = self.pipelineRunId!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("PipelineRunId") && dict["PipelineRunId"] != nil {
            self.pipelineRunId = dict["PipelineRunId"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class CreatePipelineRunResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreatePipelineRunResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = CreatePipelineRunResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DeletePipelineResponseBody : Tea.TeaModel {
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

public class DeletePipelineResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeletePipelineResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = DeletePipelineResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DeletePipelineRunResponseBody : Tea.TeaModel {
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

public class DeletePipelineRunResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeletePipelineRunResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = DeletePipelineRunResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetPipelineResponseBody : Tea.TeaModel {
    public var gmtCreateTime: String?

    public var gmtModifiedTime: String?

    public var identifier: String?

    public var manifest: String?

    public var pipelineId: String?

    public var provider: String?

    public var requestId: String?

    public var uuid: String?

    public var version: String?

    public var workspaceId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.gmtCreateTime != nil {
            map["GmtCreateTime"] = self.gmtCreateTime!
        }
        if self.gmtModifiedTime != nil {
            map["GmtModifiedTime"] = self.gmtModifiedTime!
        }
        if self.identifier != nil {
            map["Identifier"] = self.identifier!
        }
        if self.manifest != nil {
            map["Manifest"] = self.manifest!
        }
        if self.pipelineId != nil {
            map["PipelineId"] = self.pipelineId!
        }
        if self.provider != nil {
            map["Provider"] = self.provider!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.uuid != nil {
            map["Uuid"] = self.uuid!
        }
        if self.version != nil {
            map["Version"] = self.version!
        }
        if self.workspaceId != nil {
            map["WorkspaceId"] = self.workspaceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("GmtCreateTime") && dict["GmtCreateTime"] != nil {
            self.gmtCreateTime = dict["GmtCreateTime"] as! String
        }
        if dict.keys.contains("GmtModifiedTime") && dict["GmtModifiedTime"] != nil {
            self.gmtModifiedTime = dict["GmtModifiedTime"] as! String
        }
        if dict.keys.contains("Identifier") && dict["Identifier"] != nil {
            self.identifier = dict["Identifier"] as! String
        }
        if dict.keys.contains("Manifest") && dict["Manifest"] != nil {
            self.manifest = dict["Manifest"] as! String
        }
        if dict.keys.contains("PipelineId") && dict["PipelineId"] != nil {
            self.pipelineId = dict["PipelineId"] as! String
        }
        if dict.keys.contains("Provider") && dict["Provider"] != nil {
            self.provider = dict["Provider"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Uuid") && dict["Uuid"] != nil {
            self.uuid = dict["Uuid"] as! String
        }
        if dict.keys.contains("Version") && dict["Version"] != nil {
            self.version = dict["Version"] as! String
        }
        if dict.keys.contains("WorkspaceId") && dict["WorkspaceId"] != nil {
            self.workspaceId = dict["WorkspaceId"] as! String
        }
    }
}

public class GetPipelineResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetPipelineResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = GetPipelineResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetPipelineRunRequest : Tea.TeaModel {
    public var manifestType: String?

    public var tokenId: String?

    public var verbose: Bool?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.manifestType != nil {
            map["ManifestType"] = self.manifestType!
        }
        if self.tokenId != nil {
            map["TokenId"] = self.tokenId!
        }
        if self.verbose != nil {
            map["Verbose"] = self.verbose!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ManifestType") && dict["ManifestType"] != nil {
            self.manifestType = dict["ManifestType"] as! String
        }
        if dict.keys.contains("TokenId") && dict["TokenId"] != nil {
            self.tokenId = dict["TokenId"] as! String
        }
        if dict.keys.contains("Verbose") && dict["Verbose"] != nil {
            self.verbose = dict["Verbose"] as! Bool
        }
    }
}

public class GetPipelineRunResponseBody : Tea.TeaModel {
    public var accessibility: String?

    public var arguments: String?

    public var duration: Int64?

    public var finishedAt: String?

    public var gmtCreateTime: String?

    public var gmtModifiedTime: String?

    public var manifest: String?

    public var message: String?

    public var name: String?

    public var nodeId: String?

    public var options: String?

    public var parentUserId: String?

    public var pipelineId: String?

    public var pipelineRunId: String?

    public var pipelineRunUri: String?

    public var requestId: String?

    public var sourceId: String?

    public var sourceType: String?

    public var startedAt: String?

    public var status: String?

    public var userId: String?

    public var workspaceId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.accessibility != nil {
            map["Accessibility"] = self.accessibility!
        }
        if self.arguments != nil {
            map["Arguments"] = self.arguments!
        }
        if self.duration != nil {
            map["Duration"] = self.duration!
        }
        if self.finishedAt != nil {
            map["FinishedAt"] = self.finishedAt!
        }
        if self.gmtCreateTime != nil {
            map["GmtCreateTime"] = self.gmtCreateTime!
        }
        if self.gmtModifiedTime != nil {
            map["GmtModifiedTime"] = self.gmtModifiedTime!
        }
        if self.manifest != nil {
            map["Manifest"] = self.manifest!
        }
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.name != nil {
            map["Name"] = self.name!
        }
        if self.nodeId != nil {
            map["NodeId"] = self.nodeId!
        }
        if self.options != nil {
            map["Options"] = self.options!
        }
        if self.parentUserId != nil {
            map["ParentUserId"] = self.parentUserId!
        }
        if self.pipelineId != nil {
            map["PipelineId"] = self.pipelineId!
        }
        if self.pipelineRunId != nil {
            map["PipelineRunId"] = self.pipelineRunId!
        }
        if self.pipelineRunUri != nil {
            map["PipelineRunUri"] = self.pipelineRunUri!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.sourceId != nil {
            map["SourceId"] = self.sourceId!
        }
        if self.sourceType != nil {
            map["SourceType"] = self.sourceType!
        }
        if self.startedAt != nil {
            map["StartedAt"] = self.startedAt!
        }
        if self.status != nil {
            map["Status"] = self.status!
        }
        if self.userId != nil {
            map["UserId"] = self.userId!
        }
        if self.workspaceId != nil {
            map["WorkspaceId"] = self.workspaceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Accessibility") && dict["Accessibility"] != nil {
            self.accessibility = dict["Accessibility"] as! String
        }
        if dict.keys.contains("Arguments") && dict["Arguments"] != nil {
            self.arguments = dict["Arguments"] as! String
        }
        if dict.keys.contains("Duration") && dict["Duration"] != nil {
            self.duration = dict["Duration"] as! Int64
        }
        if dict.keys.contains("FinishedAt") && dict["FinishedAt"] != nil {
            self.finishedAt = dict["FinishedAt"] as! String
        }
        if dict.keys.contains("GmtCreateTime") && dict["GmtCreateTime"] != nil {
            self.gmtCreateTime = dict["GmtCreateTime"] as! String
        }
        if dict.keys.contains("GmtModifiedTime") && dict["GmtModifiedTime"] != nil {
            self.gmtModifiedTime = dict["GmtModifiedTime"] as! String
        }
        if dict.keys.contains("Manifest") && dict["Manifest"] != nil {
            self.manifest = dict["Manifest"] as! String
        }
        if dict.keys.contains("Message") && dict["Message"] != nil {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("Name") && dict["Name"] != nil {
            self.name = dict["Name"] as! String
        }
        if dict.keys.contains("NodeId") && dict["NodeId"] != nil {
            self.nodeId = dict["NodeId"] as! String
        }
        if dict.keys.contains("Options") && dict["Options"] != nil {
            self.options = dict["Options"] as! String
        }
        if dict.keys.contains("ParentUserId") && dict["ParentUserId"] != nil {
            self.parentUserId = dict["ParentUserId"] as! String
        }
        if dict.keys.contains("PipelineId") && dict["PipelineId"] != nil {
            self.pipelineId = dict["PipelineId"] as! String
        }
        if dict.keys.contains("PipelineRunId") && dict["PipelineRunId"] != nil {
            self.pipelineRunId = dict["PipelineRunId"] as! String
        }
        if dict.keys.contains("PipelineRunUri") && dict["PipelineRunUri"] != nil {
            self.pipelineRunUri = dict["PipelineRunUri"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("SourceId") && dict["SourceId"] != nil {
            self.sourceId = dict["SourceId"] as! String
        }
        if dict.keys.contains("SourceType") && dict["SourceType"] != nil {
            self.sourceType = dict["SourceType"] as! String
        }
        if dict.keys.contains("StartedAt") && dict["StartedAt"] != nil {
            self.startedAt = dict["StartedAt"] as! String
        }
        if dict.keys.contains("Status") && dict["Status"] != nil {
            self.status = dict["Status"] as! String
        }
        if dict.keys.contains("UserId") && dict["UserId"] != nil {
            self.userId = dict["UserId"] as! String
        }
        if dict.keys.contains("WorkspaceId") && dict["WorkspaceId"] != nil {
            self.workspaceId = dict["WorkspaceId"] as! String
        }
    }
}

public class GetPipelineRunResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetPipelineRunResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = GetPipelineRunResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetPipelineRunNodeRequest : Tea.TeaModel {
    public var depth: Int32?

    public var tokenId: String?

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
        if self.depth != nil {
            map["Depth"] = self.depth!
        }
        if self.tokenId != nil {
            map["TokenId"] = self.tokenId!
        }
        if self.type != nil {
            map["Type"] = self.type!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Depth") && dict["Depth"] != nil {
            self.depth = dict["Depth"] as! Int32
        }
        if dict.keys.contains("TokenId") && dict["TokenId"] != nil {
            self.tokenId = dict["TokenId"] as! String
        }
        if dict.keys.contains("Type") && dict["Type"] != nil {
            self.type = dict["Type"] as! String
        }
    }
}

public class GetPipelineRunNodeResponseBody : Tea.TeaModel {
    public class Metadata : Tea.TeaModel {
        public var displayName: String?

        public var identifier: String?

        public var name: String?

        public var nodeId: String?

        public var nodeType: String?

        public var provider: String?

        public var relatedNodeIds: [String]?

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
            if self.displayName != nil {
                map["DisplayName"] = self.displayName!
            }
            if self.identifier != nil {
                map["Identifier"] = self.identifier!
            }
            if self.name != nil {
                map["Name"] = self.name!
            }
            if self.nodeId != nil {
                map["NodeId"] = self.nodeId!
            }
            if self.nodeType != nil {
                map["NodeType"] = self.nodeType!
            }
            if self.provider != nil {
                map["Provider"] = self.provider!
            }
            if self.relatedNodeIds != nil {
                map["RelatedNodeIds"] = self.relatedNodeIds!
            }
            if self.version != nil {
                map["Version"] = self.version!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("DisplayName") && dict["DisplayName"] != nil {
                self.displayName = dict["DisplayName"] as! String
            }
            if dict.keys.contains("Identifier") && dict["Identifier"] != nil {
                self.identifier = dict["Identifier"] as! String
            }
            if dict.keys.contains("Name") && dict["Name"] != nil {
                self.name = dict["Name"] as! String
            }
            if dict.keys.contains("NodeId") && dict["NodeId"] != nil {
                self.nodeId = dict["NodeId"] as! String
            }
            if dict.keys.contains("NodeType") && dict["NodeType"] != nil {
                self.nodeType = dict["NodeType"] as! String
            }
            if dict.keys.contains("Provider") && dict["Provider"] != nil {
                self.provider = dict["Provider"] as! String
            }
            if dict.keys.contains("RelatedNodeIds") && dict["RelatedNodeIds"] != nil {
                self.relatedNodeIds = dict["RelatedNodeIds"] as! [String]
            }
            if dict.keys.contains("Version") && dict["Version"] != nil {
                self.version = dict["Version"] as! String
            }
        }
    }
    public class Spec : Tea.TeaModel {
        public class Inputs : Tea.TeaModel {
            public var artifacts: [[String: Any]]?

            public var parameters: [[String: Any]]?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.artifacts != nil {
                    map["Artifacts"] = self.artifacts!
                }
                if self.parameters != nil {
                    map["Parameters"] = self.parameters!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("Artifacts") && dict["Artifacts"] != nil {
                    self.artifacts = dict["Artifacts"] as! [[String: Any]]
                }
                if dict.keys.contains("Parameters") && dict["Parameters"] != nil {
                    self.parameters = dict["Parameters"] as! [[String: Any]]
                }
            }
        }
        public class Outputs : Tea.TeaModel {
            public var artifacts: [[String: Any]]?

            public var parameters: [[String: Any]]?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.artifacts != nil {
                    map["Artifacts"] = self.artifacts!
                }
                if self.parameters != nil {
                    map["Parameters"] = self.parameters!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("Artifacts") && dict["Artifacts"] != nil {
                    self.artifacts = dict["Artifacts"] as! [[String: Any]]
                }
                if dict.keys.contains("Parameters") && dict["Parameters"] != nil {
                    self.parameters = dict["Parameters"] as! [[String: Any]]
                }
            }
        }
        public class WithSequence : Tea.TeaModel {
            public var end: Int32?

            public var format: String?

            public var start: Int32?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.end != nil {
                    map["End"] = self.end!
                }
                if self.format != nil {
                    map["Format"] = self.format!
                }
                if self.start != nil {
                    map["Start"] = self.start!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("End") && dict["End"] != nil {
                    self.end = dict["End"] as! Int32
                }
                if dict.keys.contains("Format") && dict["Format"] != nil {
                    self.format = dict["Format"] as! String
                }
                if dict.keys.contains("Start") && dict["Start"] != nil {
                    self.start = dict["Start"] as! Int32
                }
            }
        }
        public var dependencies: [String]?

        public var hasPipelines: Bool?

        public var inputs: GetPipelineRunNodeResponseBody.Spec.Inputs?

        public var outputs: GetPipelineRunNodeResponseBody.Spec.Outputs?

        public var parallelism: Int32?

        public var pipelines: [[String: Any]]?

        public var when: String?

        public var withItems: [String]?

        public var withParam: String?

        public var withSequence: GetPipelineRunNodeResponseBody.Spec.WithSequence?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.inputs?.validate()
            try self.outputs?.validate()
            try self.withSequence?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.dependencies != nil {
                map["Dependencies"] = self.dependencies!
            }
            if self.hasPipelines != nil {
                map["HasPipelines"] = self.hasPipelines!
            }
            if self.inputs != nil {
                map["Inputs"] = self.inputs?.toMap()
            }
            if self.outputs != nil {
                map["Outputs"] = self.outputs?.toMap()
            }
            if self.parallelism != nil {
                map["Parallelism"] = self.parallelism!
            }
            if self.pipelines != nil {
                map["Pipelines"] = self.pipelines!
            }
            if self.when != nil {
                map["When"] = self.when!
            }
            if self.withItems != nil {
                map["WithItems"] = self.withItems!
            }
            if self.withParam != nil {
                map["WithParam"] = self.withParam!
            }
            if self.withSequence != nil {
                map["WithSequence"] = self.withSequence?.toMap()
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Dependencies") && dict["Dependencies"] != nil {
                self.dependencies = dict["Dependencies"] as! [String]
            }
            if dict.keys.contains("HasPipelines") && dict["HasPipelines"] != nil {
                self.hasPipelines = dict["HasPipelines"] as! Bool
            }
            if dict.keys.contains("Inputs") && dict["Inputs"] != nil {
                var model = GetPipelineRunNodeResponseBody.Spec.Inputs()
                model.fromMap(dict["Inputs"] as! [String: Any])
                self.inputs = model
            }
            if dict.keys.contains("Outputs") && dict["Outputs"] != nil {
                var model = GetPipelineRunNodeResponseBody.Spec.Outputs()
                model.fromMap(dict["Outputs"] as! [String: Any])
                self.outputs = model
            }
            if dict.keys.contains("Parallelism") && dict["Parallelism"] != nil {
                self.parallelism = dict["Parallelism"] as! Int32
            }
            if dict.keys.contains("Pipelines") && dict["Pipelines"] != nil {
                self.pipelines = dict["Pipelines"] as! [[String: Any]]
            }
            if dict.keys.contains("When") && dict["When"] != nil {
                self.when = dict["When"] as! String
            }
            if dict.keys.contains("WithItems") && dict["WithItems"] != nil {
                self.withItems = dict["WithItems"] as! [String]
            }
            if dict.keys.contains("WithParam") && dict["WithParam"] != nil {
                self.withParam = dict["WithParam"] as! String
            }
            if dict.keys.contains("WithSequence") && dict["WithSequence"] != nil {
                var model = GetPipelineRunNodeResponseBody.Spec.WithSequence()
                model.fromMap(dict["WithSequence"] as! [String: Any])
                self.withSequence = model
            }
        }
    }
    public class StatusInfo : Tea.TeaModel {
        public var conditions: [[String: Any]]?

        public var finishedAt: String?

        public var progress: String?

        public var startedAt: String?

        public var status: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.conditions != nil {
                map["Conditions"] = self.conditions!
            }
            if self.finishedAt != nil {
                map["FinishedAt"] = self.finishedAt!
            }
            if self.progress != nil {
                map["Progress"] = self.progress!
            }
            if self.startedAt != nil {
                map["StartedAt"] = self.startedAt!
            }
            if self.status != nil {
                map["Status"] = self.status!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Conditions") && dict["Conditions"] != nil {
                self.conditions = dict["Conditions"] as! [[String: Any]]
            }
            if dict.keys.contains("FinishedAt") && dict["FinishedAt"] != nil {
                self.finishedAt = dict["FinishedAt"] as! String
            }
            if dict.keys.contains("Progress") && dict["Progress"] != nil {
                self.progress = dict["Progress"] as! String
            }
            if dict.keys.contains("StartedAt") && dict["StartedAt"] != nil {
                self.startedAt = dict["StartedAt"] as! String
            }
            if dict.keys.contains("Status") && dict["Status"] != nil {
                self.status = dict["Status"] as! String
            }
        }
    }
    public var apiVersion: String?

    public var metadata: GetPipelineRunNodeResponseBody.Metadata?

    public var requestId: String?

    public var spec: GetPipelineRunNodeResponseBody.Spec?

    public var statusInfo: GetPipelineRunNodeResponseBody.StatusInfo?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.metadata?.validate()
        try self.spec?.validate()
        try self.statusInfo?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.apiVersion != nil {
            map["ApiVersion"] = self.apiVersion!
        }
        if self.metadata != nil {
            map["Metadata"] = self.metadata?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.spec != nil {
            map["Spec"] = self.spec?.toMap()
        }
        if self.statusInfo != nil {
            map["StatusInfo"] = self.statusInfo?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ApiVersion") && dict["ApiVersion"] != nil {
            self.apiVersion = dict["ApiVersion"] as! String
        }
        if dict.keys.contains("Metadata") && dict["Metadata"] != nil {
            var model = GetPipelineRunNodeResponseBody.Metadata()
            model.fromMap(dict["Metadata"] as! [String: Any])
            self.metadata = model
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Spec") && dict["Spec"] != nil {
            var model = GetPipelineRunNodeResponseBody.Spec()
            model.fromMap(dict["Spec"] as! [String: Any])
            self.spec = model
        }
        if dict.keys.contains("StatusInfo") && dict["StatusInfo"] != nil {
            var model = GetPipelineRunNodeResponseBody.StatusInfo()
            model.fromMap(dict["StatusInfo"] as! [String: Any])
            self.statusInfo = model
        }
    }
}

public class GetPipelineRunNodeResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetPipelineRunNodeResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = GetPipelineRunNodeResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListPipelineRunNodeLogsRequest : Tea.TeaModel {
    public var fromTimeInSeconds: Int64?

    public var keyword: String?

    public var offset: Int32?

    public var pageSize: Int32?

    public var reverse: Bool?

    public var toTimeInSeconds: Int64?

    public var tokenId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.fromTimeInSeconds != nil {
            map["FromTimeInSeconds"] = self.fromTimeInSeconds!
        }
        if self.keyword != nil {
            map["Keyword"] = self.keyword!
        }
        if self.offset != nil {
            map["Offset"] = self.offset!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.reverse != nil {
            map["Reverse"] = self.reverse!
        }
        if self.toTimeInSeconds != nil {
            map["ToTimeInSeconds"] = self.toTimeInSeconds!
        }
        if self.tokenId != nil {
            map["TokenId"] = self.tokenId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("FromTimeInSeconds") && dict["FromTimeInSeconds"] != nil {
            self.fromTimeInSeconds = dict["FromTimeInSeconds"] as! Int64
        }
        if dict.keys.contains("Keyword") && dict["Keyword"] != nil {
            self.keyword = dict["Keyword"] as! String
        }
        if dict.keys.contains("Offset") && dict["Offset"] != nil {
            self.offset = dict["Offset"] as! Int32
        }
        if dict.keys.contains("PageSize") && dict["PageSize"] != nil {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("Reverse") && dict["Reverse"] != nil {
            self.reverse = dict["Reverse"] as! Bool
        }
        if dict.keys.contains("ToTimeInSeconds") && dict["ToTimeInSeconds"] != nil {
            self.toTimeInSeconds = dict["ToTimeInSeconds"] as! Int64
        }
        if dict.keys.contains("TokenId") && dict["TokenId"] != nil {
            self.tokenId = dict["TokenId"] as! String
        }
    }
}

public class ListPipelineRunNodeLogsResponseBody : Tea.TeaModel {
    public var logs: [String]?

    public var requestId: String?

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
        if self.logs != nil {
            map["Logs"] = self.logs!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.totalCount != nil {
            map["TotalCount"] = self.totalCount!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Logs") && dict["Logs"] != nil {
            self.logs = dict["Logs"] as! [String]
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("TotalCount") && dict["TotalCount"] != nil {
            self.totalCount = dict["TotalCount"] as! Int64
        }
    }
}

public class ListPipelineRunNodeLogsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListPipelineRunNodeLogsResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = ListPipelineRunNodeLogsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListPipelineRunNodeOutputsRequest : Tea.TeaModel {
    public var depth: Int32?

    public var name: String?

    public var order: String?

    public var pageNumber: Int32?

    public var pageSize: Int32?

    public var sortBy: String?

    public var tokenId: String?

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
        if self.depth != nil {
            map["Depth"] = self.depth!
        }
        if self.name != nil {
            map["Name"] = self.name!
        }
        if self.order != nil {
            map["Order"] = self.order!
        }
        if self.pageNumber != nil {
            map["PageNumber"] = self.pageNumber!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.sortBy != nil {
            map["SortBy"] = self.sortBy!
        }
        if self.tokenId != nil {
            map["TokenId"] = self.tokenId!
        }
        if self.type != nil {
            map["Type"] = self.type!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Depth") && dict["Depth"] != nil {
            self.depth = dict["Depth"] as! Int32
        }
        if dict.keys.contains("Name") && dict["Name"] != nil {
            self.name = dict["Name"] as! String
        }
        if dict.keys.contains("Order") && dict["Order"] != nil {
            self.order = dict["Order"] as! String
        }
        if dict.keys.contains("PageNumber") && dict["PageNumber"] != nil {
            self.pageNumber = dict["PageNumber"] as! Int32
        }
        if dict.keys.contains("PageSize") && dict["PageSize"] != nil {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("SortBy") && dict["SortBy"] != nil {
            self.sortBy = dict["SortBy"] as! String
        }
        if dict.keys.contains("TokenId") && dict["TokenId"] != nil {
            self.tokenId = dict["TokenId"] as! String
        }
        if dict.keys.contains("Type") && dict["Type"] != nil {
            self.type = dict["Type"] as! String
        }
    }
}

public class ListPipelineRunNodeOutputsResponseBody : Tea.TeaModel {
    public class Outputs : Tea.TeaModel {
        public var expandableArtifactName: String?

        public var expandedArtifactIndex: Int64?

        public var gmtCreateTime: String?

        public var id: String?

        public var info: [String: Any]?

        public var name: String?

        public var nodeId: String?

        public var producer: String?

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
            if self.expandableArtifactName != nil {
                map["ExpandableArtifactName"] = self.expandableArtifactName!
            }
            if self.expandedArtifactIndex != nil {
                map["ExpandedArtifactIndex"] = self.expandedArtifactIndex!
            }
            if self.gmtCreateTime != nil {
                map["GmtCreateTime"] = self.gmtCreateTime!
            }
            if self.id != nil {
                map["Id"] = self.id!
            }
            if self.info != nil {
                map["Info"] = self.info!
            }
            if self.name != nil {
                map["Name"] = self.name!
            }
            if self.nodeId != nil {
                map["NodeId"] = self.nodeId!
            }
            if self.producer != nil {
                map["Producer"] = self.producer!
            }
            if self.type != nil {
                map["Type"] = self.type!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("ExpandableArtifactName") && dict["ExpandableArtifactName"] != nil {
                self.expandableArtifactName = dict["ExpandableArtifactName"] as! String
            }
            if dict.keys.contains("ExpandedArtifactIndex") && dict["ExpandedArtifactIndex"] != nil {
                self.expandedArtifactIndex = dict["ExpandedArtifactIndex"] as! Int64
            }
            if dict.keys.contains("GmtCreateTime") && dict["GmtCreateTime"] != nil {
                self.gmtCreateTime = dict["GmtCreateTime"] as! String
            }
            if dict.keys.contains("Id") && dict["Id"] != nil {
                self.id = dict["Id"] as! String
            }
            if dict.keys.contains("Info") && dict["Info"] != nil {
                self.info = dict["Info"] as! [String: Any]
            }
            if dict.keys.contains("Name") && dict["Name"] != nil {
                self.name = dict["Name"] as! String
            }
            if dict.keys.contains("NodeId") && dict["NodeId"] != nil {
                self.nodeId = dict["NodeId"] as! String
            }
            if dict.keys.contains("Producer") && dict["Producer"] != nil {
                self.producer = dict["Producer"] as! String
            }
            if dict.keys.contains("Type") && dict["Type"] != nil {
                self.type = dict["Type"] as! String
            }
        }
    }
    public var outputs: [ListPipelineRunNodeOutputsResponseBody.Outputs]?

    public var requestId: String?

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
        if self.outputs != nil {
            var tmp : [Any] = []
            for k in self.outputs! {
                tmp.append(k.toMap())
            }
            map["Outputs"] = tmp
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.totalCount != nil {
            map["TotalCount"] = self.totalCount!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Outputs") && dict["Outputs"] != nil {
            var tmp : [ListPipelineRunNodeOutputsResponseBody.Outputs] = []
            for v in dict["Outputs"] as! [Any] {
                var model = ListPipelineRunNodeOutputsResponseBody.Outputs()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.outputs = tmp
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("TotalCount") && dict["TotalCount"] != nil {
            self.totalCount = dict["TotalCount"] as! Int64
        }
    }
}

public class ListPipelineRunNodeOutputsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListPipelineRunNodeOutputsResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = ListPipelineRunNodeOutputsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListPipelineRunNodeStatusRequest : Tea.TeaModel {
    public var depth: Int64?

    public var tokenId: String?

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
        if self.depth != nil {
            map["Depth"] = self.depth!
        }
        if self.tokenId != nil {
            map["TokenId"] = self.tokenId!
        }
        if self.type != nil {
            map["Type"] = self.type!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Depth") && dict["Depth"] != nil {
            self.depth = dict["Depth"] as! Int64
        }
        if dict.keys.contains("TokenId") && dict["TokenId"] != nil {
            self.tokenId = dict["TokenId"] as! String
        }
        if dict.keys.contains("Type") && dict["Type"] != nil {
            self.type = dict["Type"] as! String
        }
    }
}

public class ListPipelineRunNodeStatusResponseBody : Tea.TeaModel {
    public class Status : Tea.TeaModel {
        public var finishedAt: String?

        public var nodeId: String?

        public var nodeName: String?

        public var runtimeInfo: String?

        public var startedAt: String?

        public var status: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.finishedAt != nil {
                map["FinishedAt"] = self.finishedAt!
            }
            if self.nodeId != nil {
                map["NodeId"] = self.nodeId!
            }
            if self.nodeName != nil {
                map["NodeName"] = self.nodeName!
            }
            if self.runtimeInfo != nil {
                map["RuntimeInfo"] = self.runtimeInfo!
            }
            if self.startedAt != nil {
                map["StartedAt"] = self.startedAt!
            }
            if self.status != nil {
                map["Status"] = self.status!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("FinishedAt") && dict["FinishedAt"] != nil {
                self.finishedAt = dict["FinishedAt"] as! String
            }
            if dict.keys.contains("NodeId") && dict["NodeId"] != nil {
                self.nodeId = dict["NodeId"] as! String
            }
            if dict.keys.contains("NodeName") && dict["NodeName"] != nil {
                self.nodeName = dict["NodeName"] as! String
            }
            if dict.keys.contains("RuntimeInfo") && dict["RuntimeInfo"] != nil {
                self.runtimeInfo = dict["RuntimeInfo"] as! String
            }
            if dict.keys.contains("StartedAt") && dict["StartedAt"] != nil {
                self.startedAt = dict["StartedAt"] as! String
            }
            if dict.keys.contains("Status") && dict["Status"] != nil {
                self.status = dict["Status"] as! String
            }
        }
    }
    public var requestId: String?

    public var status: [ListPipelineRunNodeStatusResponseBody.Status]?

    public override init() {
        super.init()
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
        if self.status != nil {
            var tmp : [Any] = []
            for k in self.status! {
                tmp.append(k.toMap())
            }
            map["Status"] = tmp
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Status") && dict["Status"] != nil {
            var tmp : [ListPipelineRunNodeStatusResponseBody.Status] = []
            for v in dict["Status"] as! [Any] {
                var model = ListPipelineRunNodeStatusResponseBody.Status()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.status = tmp
        }
    }
}

public class ListPipelineRunNodeStatusResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListPipelineRunNodeStatusResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = ListPipelineRunNodeStatusResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListPipelineRunsRequest : Tea.TeaModel {
    public var name: String?

    public var order: String?

    public var pageNumber: Int32?

    public var pageSize: Int32?

    public var pipelineIds: String?

    public var pipelineRunId: String?

    public var sortBy: String?

    public var sourceId: String?

    public var sourceType: String?

    public var status: String?

    public var userId: String?

    public var workspaceId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.name != nil {
            map["Name"] = self.name!
        }
        if self.order != nil {
            map["Order"] = self.order!
        }
        if self.pageNumber != nil {
            map["PageNumber"] = self.pageNumber!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.pipelineIds != nil {
            map["PipelineIds"] = self.pipelineIds!
        }
        if self.pipelineRunId != nil {
            map["PipelineRunId"] = self.pipelineRunId!
        }
        if self.sortBy != nil {
            map["SortBy"] = self.sortBy!
        }
        if self.sourceId != nil {
            map["SourceId"] = self.sourceId!
        }
        if self.sourceType != nil {
            map["SourceType"] = self.sourceType!
        }
        if self.status != nil {
            map["Status"] = self.status!
        }
        if self.userId != nil {
            map["UserId"] = self.userId!
        }
        if self.workspaceId != nil {
            map["WorkspaceId"] = self.workspaceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Name") && dict["Name"] != nil {
            self.name = dict["Name"] as! String
        }
        if dict.keys.contains("Order") && dict["Order"] != nil {
            self.order = dict["Order"] as! String
        }
        if dict.keys.contains("PageNumber") && dict["PageNumber"] != nil {
            self.pageNumber = dict["PageNumber"] as! Int32
        }
        if dict.keys.contains("PageSize") && dict["PageSize"] != nil {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("PipelineIds") && dict["PipelineIds"] != nil {
            self.pipelineIds = dict["PipelineIds"] as! String
        }
        if dict.keys.contains("PipelineRunId") && dict["PipelineRunId"] != nil {
            self.pipelineRunId = dict["PipelineRunId"] as! String
        }
        if dict.keys.contains("SortBy") && dict["SortBy"] != nil {
            self.sortBy = dict["SortBy"] as! String
        }
        if dict.keys.contains("SourceId") && dict["SourceId"] != nil {
            self.sourceId = dict["SourceId"] as! String
        }
        if dict.keys.contains("SourceType") && dict["SourceType"] != nil {
            self.sourceType = dict["SourceType"] as! String
        }
        if dict.keys.contains("Status") && dict["Status"] != nil {
            self.status = dict["Status"] as! String
        }
        if dict.keys.contains("UserId") && dict["UserId"] != nil {
            self.userId = dict["UserId"] as! String
        }
        if dict.keys.contains("WorkspaceId") && dict["WorkspaceId"] != nil {
            self.workspaceId = dict["WorkspaceId"] as! String
        }
    }
}

public class ListPipelineRunsResponseBody : Tea.TeaModel {
    public class PipelineRuns : Tea.TeaModel {
        public var accessibility: String?

        public var duration: Int32?

        public var finishedAt: String?

        public var gmtCreateTime: String?

        public var gmtModifiedTime: String?

        public var message: String?

        public var name: String?

        public var nodeId: String?

        public var parentUserId: String?

        public var pipelineId: String?

        public var pipelineRunId: String?

        public var pipelineRunUri: String?

        public var sourceId: String?

        public var sourceType: String?

        public var startedAt: String?

        public var status: String?

        public var userId: String?

        public var workspaceId: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.accessibility != nil {
                map["Accessibility"] = self.accessibility!
            }
            if self.duration != nil {
                map["Duration"] = self.duration!
            }
            if self.finishedAt != nil {
                map["FinishedAt"] = self.finishedAt!
            }
            if self.gmtCreateTime != nil {
                map["GmtCreateTime"] = self.gmtCreateTime!
            }
            if self.gmtModifiedTime != nil {
                map["GmtModifiedTime"] = self.gmtModifiedTime!
            }
            if self.message != nil {
                map["Message"] = self.message!
            }
            if self.name != nil {
                map["Name"] = self.name!
            }
            if self.nodeId != nil {
                map["NodeId"] = self.nodeId!
            }
            if self.parentUserId != nil {
                map["ParentUserId"] = self.parentUserId!
            }
            if self.pipelineId != nil {
                map["PipelineId"] = self.pipelineId!
            }
            if self.pipelineRunId != nil {
                map["PipelineRunId"] = self.pipelineRunId!
            }
            if self.pipelineRunUri != nil {
                map["PipelineRunUri"] = self.pipelineRunUri!
            }
            if self.sourceId != nil {
                map["SourceId"] = self.sourceId!
            }
            if self.sourceType != nil {
                map["SourceType"] = self.sourceType!
            }
            if self.startedAt != nil {
                map["StartedAt"] = self.startedAt!
            }
            if self.status != nil {
                map["Status"] = self.status!
            }
            if self.userId != nil {
                map["UserId"] = self.userId!
            }
            if self.workspaceId != nil {
                map["WorkspaceId"] = self.workspaceId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Accessibility") && dict["Accessibility"] != nil {
                self.accessibility = dict["Accessibility"] as! String
            }
            if dict.keys.contains("Duration") && dict["Duration"] != nil {
                self.duration = dict["Duration"] as! Int32
            }
            if dict.keys.contains("FinishedAt") && dict["FinishedAt"] != nil {
                self.finishedAt = dict["FinishedAt"] as! String
            }
            if dict.keys.contains("GmtCreateTime") && dict["GmtCreateTime"] != nil {
                self.gmtCreateTime = dict["GmtCreateTime"] as! String
            }
            if dict.keys.contains("GmtModifiedTime") && dict["GmtModifiedTime"] != nil {
                self.gmtModifiedTime = dict["GmtModifiedTime"] as! String
            }
            if dict.keys.contains("Message") && dict["Message"] != nil {
                self.message = dict["Message"] as! String
            }
            if dict.keys.contains("Name") && dict["Name"] != nil {
                self.name = dict["Name"] as! String
            }
            if dict.keys.contains("NodeId") && dict["NodeId"] != nil {
                self.nodeId = dict["NodeId"] as! String
            }
            if dict.keys.contains("ParentUserId") && dict["ParentUserId"] != nil {
                self.parentUserId = dict["ParentUserId"] as! String
            }
            if dict.keys.contains("PipelineId") && dict["PipelineId"] != nil {
                self.pipelineId = dict["PipelineId"] as! String
            }
            if dict.keys.contains("PipelineRunId") && dict["PipelineRunId"] != nil {
                self.pipelineRunId = dict["PipelineRunId"] as! String
            }
            if dict.keys.contains("PipelineRunUri") && dict["PipelineRunUri"] != nil {
                self.pipelineRunUri = dict["PipelineRunUri"] as! String
            }
            if dict.keys.contains("SourceId") && dict["SourceId"] != nil {
                self.sourceId = dict["SourceId"] as! String
            }
            if dict.keys.contains("SourceType") && dict["SourceType"] != nil {
                self.sourceType = dict["SourceType"] as! String
            }
            if dict.keys.contains("StartedAt") && dict["StartedAt"] != nil {
                self.startedAt = dict["StartedAt"] as! String
            }
            if dict.keys.contains("Status") && dict["Status"] != nil {
                self.status = dict["Status"] as! String
            }
            if dict.keys.contains("UserId") && dict["UserId"] != nil {
                self.userId = dict["UserId"] as! String
            }
            if dict.keys.contains("WorkspaceId") && dict["WorkspaceId"] != nil {
                self.workspaceId = dict["WorkspaceId"] as! String
            }
        }
    }
    public var pipelineRuns: [ListPipelineRunsResponseBody.PipelineRuns]?

    public var requestId: String?

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
        if self.pipelineRuns != nil {
            var tmp : [Any] = []
            for k in self.pipelineRuns! {
                tmp.append(k.toMap())
            }
            map["PipelineRuns"] = tmp
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.totalCount != nil {
            map["TotalCount"] = self.totalCount!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("PipelineRuns") && dict["PipelineRuns"] != nil {
            var tmp : [ListPipelineRunsResponseBody.PipelineRuns] = []
            for v in dict["PipelineRuns"] as! [Any] {
                var model = ListPipelineRunsResponseBody.PipelineRuns()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.pipelineRuns = tmp
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("TotalCount") && dict["TotalCount"] != nil {
            self.totalCount = dict["TotalCount"] as! Int64
        }
    }
}

public class ListPipelineRunsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListPipelineRunsResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = ListPipelineRunsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListPipelineRunsStatusRequest : Tea.TeaModel {
    public class Nodes : Tea.TeaModel {
        public var nodeId: String?

        public var pipelineRunId: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.nodeId != nil {
                map["NodeId"] = self.nodeId!
            }
            if self.pipelineRunId != nil {
                map["PipelineRunId"] = self.pipelineRunId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("NodeId") && dict["NodeId"] != nil {
                self.nodeId = dict["NodeId"] as! String
            }
            if dict.keys.contains("PipelineRunId") && dict["PipelineRunId"] != nil {
                self.pipelineRunId = dict["PipelineRunId"] as! String
            }
        }
    }
    public var nodes: [ListPipelineRunsStatusRequest.Nodes]?

    public var outputType: String?

    public var pipelineRuns: [String]?

    public var workspaceId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.nodes != nil {
            var tmp : [Any] = []
            for k in self.nodes! {
                tmp.append(k.toMap())
            }
            map["Nodes"] = tmp
        }
        if self.outputType != nil {
            map["OutputType"] = self.outputType!
        }
        if self.pipelineRuns != nil {
            map["PipelineRuns"] = self.pipelineRuns!
        }
        if self.workspaceId != nil {
            map["WorkspaceId"] = self.workspaceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Nodes") && dict["Nodes"] != nil {
            var tmp : [ListPipelineRunsStatusRequest.Nodes] = []
            for v in dict["Nodes"] as! [Any] {
                var model = ListPipelineRunsStatusRequest.Nodes()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.nodes = tmp
        }
        if dict.keys.contains("OutputType") && dict["OutputType"] != nil {
            self.outputType = dict["OutputType"] as! String
        }
        if dict.keys.contains("PipelineRuns") && dict["PipelineRuns"] != nil {
            self.pipelineRuns = dict["PipelineRuns"] as! [String]
        }
        if dict.keys.contains("WorkspaceId") && dict["WorkspaceId"] != nil {
            self.workspaceId = dict["WorkspaceId"] as! String
        }
    }
}

public class ListPipelineRunsStatusResponseBody : Tea.TeaModel {
    public class Nodes : Tea.TeaModel {
        public var finishedAt: String?

        public var inputArtifactArchived: Bool?

        public var nodeId: String?

        public var nodeName: String?

        public var outputArtifactArchived: Bool?

        public var pipelineRunId: String?

        public var startedAt: String?

        public var status: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.finishedAt != nil {
                map["FinishedAt"] = self.finishedAt!
            }
            if self.inputArtifactArchived != nil {
                map["InputArtifactArchived"] = self.inputArtifactArchived!
            }
            if self.nodeId != nil {
                map["NodeId"] = self.nodeId!
            }
            if self.nodeName != nil {
                map["NodeName"] = self.nodeName!
            }
            if self.outputArtifactArchived != nil {
                map["OutputArtifactArchived"] = self.outputArtifactArchived!
            }
            if self.pipelineRunId != nil {
                map["PipelineRunId"] = self.pipelineRunId!
            }
            if self.startedAt != nil {
                map["StartedAt"] = self.startedAt!
            }
            if self.status != nil {
                map["Status"] = self.status!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("FinishedAt") && dict["FinishedAt"] != nil {
                self.finishedAt = dict["FinishedAt"] as! String
            }
            if dict.keys.contains("InputArtifactArchived") && dict["InputArtifactArchived"] != nil {
                self.inputArtifactArchived = dict["InputArtifactArchived"] as! Bool
            }
            if dict.keys.contains("NodeId") && dict["NodeId"] != nil {
                self.nodeId = dict["NodeId"] as! String
            }
            if dict.keys.contains("NodeName") && dict["NodeName"] != nil {
                self.nodeName = dict["NodeName"] as! String
            }
            if dict.keys.contains("OutputArtifactArchived") && dict["OutputArtifactArchived"] != nil {
                self.outputArtifactArchived = dict["OutputArtifactArchived"] as! Bool
            }
            if dict.keys.contains("PipelineRunId") && dict["PipelineRunId"] != nil {
                self.pipelineRunId = dict["PipelineRunId"] as! String
            }
            if dict.keys.contains("StartedAt") && dict["StartedAt"] != nil {
                self.startedAt = dict["StartedAt"] as! String
            }
            if dict.keys.contains("Status") && dict["Status"] != nil {
                self.status = dict["Status"] as! String
            }
        }
    }
    public class Outputs : Tea.TeaModel {
        public var expandableArtifactName: String?

        public var expandedArtifactIndex: Int32?

        public var gmtCreateTime: String?

        public var id: String?

        public var metadata: [String: Any]?

        public var name: String?

        public var nodeId: String?

        public var pipelineRunId: String?

        public var producer: String?

        public var type: String?

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
            if self.expandableArtifactName != nil {
                map["ExpandableArtifactName"] = self.expandableArtifactName!
            }
            if self.expandedArtifactIndex != nil {
                map["ExpandedArtifactIndex"] = self.expandedArtifactIndex!
            }
            if self.gmtCreateTime != nil {
                map["GmtCreateTime"] = self.gmtCreateTime!
            }
            if self.id != nil {
                map["Id"] = self.id!
            }
            if self.metadata != nil {
                map["Metadata"] = self.metadata!
            }
            if self.name != nil {
                map["Name"] = self.name!
            }
            if self.nodeId != nil {
                map["NodeId"] = self.nodeId!
            }
            if self.pipelineRunId != nil {
                map["PipelineRunId"] = self.pipelineRunId!
            }
            if self.producer != nil {
                map["Producer"] = self.producer!
            }
            if self.type != nil {
                map["Type"] = self.type!
            }
            if self.value != nil {
                map["Value"] = self.value!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("ExpandableArtifactName") && dict["ExpandableArtifactName"] != nil {
                self.expandableArtifactName = dict["ExpandableArtifactName"] as! String
            }
            if dict.keys.contains("ExpandedArtifactIndex") && dict["ExpandedArtifactIndex"] != nil {
                self.expandedArtifactIndex = dict["ExpandedArtifactIndex"] as! Int32
            }
            if dict.keys.contains("GmtCreateTime") && dict["GmtCreateTime"] != nil {
                self.gmtCreateTime = dict["GmtCreateTime"] as! String
            }
            if dict.keys.contains("Id") && dict["Id"] != nil {
                self.id = dict["Id"] as! String
            }
            if dict.keys.contains("Metadata") && dict["Metadata"] != nil {
                self.metadata = dict["Metadata"] as! [String: Any]
            }
            if dict.keys.contains("Name") && dict["Name"] != nil {
                self.name = dict["Name"] as! String
            }
            if dict.keys.contains("NodeId") && dict["NodeId"] != nil {
                self.nodeId = dict["NodeId"] as! String
            }
            if dict.keys.contains("PipelineRunId") && dict["PipelineRunId"] != nil {
                self.pipelineRunId = dict["PipelineRunId"] as! String
            }
            if dict.keys.contains("Producer") && dict["Producer"] != nil {
                self.producer = dict["Producer"] as! String
            }
            if dict.keys.contains("Type") && dict["Type"] != nil {
                self.type = dict["Type"] as! String
            }
            if dict.keys.contains("Value") && dict["Value"] != nil {
                self.value = dict["Value"] as! String
            }
        }
    }
    public class PipelineRuns : Tea.TeaModel {
        public var isDeleted: Bool?

        public var name: String?

        public var nodeId: String?

        public var parentUserId: String?

        public var pipelineRunId: String?

        public var sourceId: String?

        public var status: String?

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
            if self.isDeleted != nil {
                map["IsDeleted"] = self.isDeleted!
            }
            if self.name != nil {
                map["Name"] = self.name!
            }
            if self.nodeId != nil {
                map["NodeId"] = self.nodeId!
            }
            if self.parentUserId != nil {
                map["ParentUserId"] = self.parentUserId!
            }
            if self.pipelineRunId != nil {
                map["PipelineRunId"] = self.pipelineRunId!
            }
            if self.sourceId != nil {
                map["SourceId"] = self.sourceId!
            }
            if self.status != nil {
                map["Status"] = self.status!
            }
            if self.userId != nil {
                map["UserId"] = self.userId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("IsDeleted") && dict["IsDeleted"] != nil {
                self.isDeleted = dict["IsDeleted"] as! Bool
            }
            if dict.keys.contains("Name") && dict["Name"] != nil {
                self.name = dict["Name"] as! String
            }
            if dict.keys.contains("NodeId") && dict["NodeId"] != nil {
                self.nodeId = dict["NodeId"] as! String
            }
            if dict.keys.contains("ParentUserId") && dict["ParentUserId"] != nil {
                self.parentUserId = dict["ParentUserId"] as! String
            }
            if dict.keys.contains("PipelineRunId") && dict["PipelineRunId"] != nil {
                self.pipelineRunId = dict["PipelineRunId"] as! String
            }
            if dict.keys.contains("SourceId") && dict["SourceId"] != nil {
                self.sourceId = dict["SourceId"] as! String
            }
            if dict.keys.contains("Status") && dict["Status"] != nil {
                self.status = dict["Status"] as! String
            }
            if dict.keys.contains("UserId") && dict["UserId"] != nil {
                self.userId = dict["UserId"] as! String
            }
        }
    }
    public var nodes: [ListPipelineRunsStatusResponseBody.Nodes]?

    public var outputs: [ListPipelineRunsStatusResponseBody.Outputs]?

    public var pipelineRuns: [ListPipelineRunsStatusResponseBody.PipelineRuns]?

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
        if self.nodes != nil {
            var tmp : [Any] = []
            for k in self.nodes! {
                tmp.append(k.toMap())
            }
            map["Nodes"] = tmp
        }
        if self.outputs != nil {
            var tmp : [Any] = []
            for k in self.outputs! {
                tmp.append(k.toMap())
            }
            map["Outputs"] = tmp
        }
        if self.pipelineRuns != nil {
            var tmp : [Any] = []
            for k in self.pipelineRuns! {
                tmp.append(k.toMap())
            }
            map["PipelineRuns"] = tmp
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Nodes") && dict["Nodes"] != nil {
            var tmp : [ListPipelineRunsStatusResponseBody.Nodes] = []
            for v in dict["Nodes"] as! [Any] {
                var model = ListPipelineRunsStatusResponseBody.Nodes()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.nodes = tmp
        }
        if dict.keys.contains("Outputs") && dict["Outputs"] != nil {
            var tmp : [ListPipelineRunsStatusResponseBody.Outputs] = []
            for v in dict["Outputs"] as! [Any] {
                var model = ListPipelineRunsStatusResponseBody.Outputs()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.outputs = tmp
        }
        if dict.keys.contains("PipelineRuns") && dict["PipelineRuns"] != nil {
            var tmp : [ListPipelineRunsStatusResponseBody.PipelineRuns] = []
            for v in dict["PipelineRuns"] as! [Any] {
                var model = ListPipelineRunsStatusResponseBody.PipelineRuns()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.pipelineRuns = tmp
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class ListPipelineRunsStatusResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListPipelineRunsStatusResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = ListPipelineRunsStatusResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListPipelinesRequest : Tea.TeaModel {
    public var fuzzyMatching: Bool?

    public var pageNumber: Int32?

    public var pageSize: Int32?

    public var pipelineIdentifier: String?

    public var pipelineProvider: String?

    public var pipelineVersion: String?

    public var workspaceId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.fuzzyMatching != nil {
            map["FuzzyMatching"] = self.fuzzyMatching!
        }
        if self.pageNumber != nil {
            map["PageNumber"] = self.pageNumber!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.pipelineIdentifier != nil {
            map["PipelineIdentifier"] = self.pipelineIdentifier!
        }
        if self.pipelineProvider != nil {
            map["PipelineProvider"] = self.pipelineProvider!
        }
        if self.pipelineVersion != nil {
            map["PipelineVersion"] = self.pipelineVersion!
        }
        if self.workspaceId != nil {
            map["WorkspaceId"] = self.workspaceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("FuzzyMatching") && dict["FuzzyMatching"] != nil {
            self.fuzzyMatching = dict["FuzzyMatching"] as! Bool
        }
        if dict.keys.contains("PageNumber") && dict["PageNumber"] != nil {
            self.pageNumber = dict["PageNumber"] as! Int32
        }
        if dict.keys.contains("PageSize") && dict["PageSize"] != nil {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("PipelineIdentifier") && dict["PipelineIdentifier"] != nil {
            self.pipelineIdentifier = dict["PipelineIdentifier"] as! String
        }
        if dict.keys.contains("PipelineProvider") && dict["PipelineProvider"] != nil {
            self.pipelineProvider = dict["PipelineProvider"] as! String
        }
        if dict.keys.contains("PipelineVersion") && dict["PipelineVersion"] != nil {
            self.pipelineVersion = dict["PipelineVersion"] as! String
        }
        if dict.keys.contains("WorkspaceId") && dict["WorkspaceId"] != nil {
            self.workspaceId = dict["WorkspaceId"] as! String
        }
    }
}

public class ListPipelinesResponseBody : Tea.TeaModel {
    public class Pipelines : Tea.TeaModel {
        public var gmtCreateTime: String?

        public var gmtModifiedTime: String?

        public var identifier: String?

        public var pipelineId: String?

        public var provider: String?

        public var uuid: String?

        public var version: String?

        public var workspaceId: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.gmtCreateTime != nil {
                map["GmtCreateTime"] = self.gmtCreateTime!
            }
            if self.gmtModifiedTime != nil {
                map["GmtModifiedTime"] = self.gmtModifiedTime!
            }
            if self.identifier != nil {
                map["Identifier"] = self.identifier!
            }
            if self.pipelineId != nil {
                map["PipelineId"] = self.pipelineId!
            }
            if self.provider != nil {
                map["Provider"] = self.provider!
            }
            if self.uuid != nil {
                map["Uuid"] = self.uuid!
            }
            if self.version != nil {
                map["Version"] = self.version!
            }
            if self.workspaceId != nil {
                map["WorkspaceId"] = self.workspaceId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("GmtCreateTime") && dict["GmtCreateTime"] != nil {
                self.gmtCreateTime = dict["GmtCreateTime"] as! String
            }
            if dict.keys.contains("GmtModifiedTime") && dict["GmtModifiedTime"] != nil {
                self.gmtModifiedTime = dict["GmtModifiedTime"] as! String
            }
            if dict.keys.contains("Identifier") && dict["Identifier"] != nil {
                self.identifier = dict["Identifier"] as! String
            }
            if dict.keys.contains("PipelineId") && dict["PipelineId"] != nil {
                self.pipelineId = dict["PipelineId"] as! String
            }
            if dict.keys.contains("Provider") && dict["Provider"] != nil {
                self.provider = dict["Provider"] as! String
            }
            if dict.keys.contains("Uuid") && dict["Uuid"] != nil {
                self.uuid = dict["Uuid"] as! String
            }
            if dict.keys.contains("Version") && dict["Version"] != nil {
                self.version = dict["Version"] as! String
            }
            if dict.keys.contains("WorkspaceId") && dict["WorkspaceId"] != nil {
                self.workspaceId = dict["WorkspaceId"] as! String
            }
        }
    }
    public var pipelines: [ListPipelinesResponseBody.Pipelines]?

    public var requestId: String?

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
        if self.pipelines != nil {
            var tmp : [Any] = []
            for k in self.pipelines! {
                tmp.append(k.toMap())
            }
            map["Pipelines"] = tmp
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.totalCount != nil {
            map["TotalCount"] = self.totalCount!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Pipelines") && dict["Pipelines"] != nil {
            var tmp : [ListPipelinesResponseBody.Pipelines] = []
            for v in dict["Pipelines"] as! [Any] {
                var model = ListPipelinesResponseBody.Pipelines()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.pipelines = tmp
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("TotalCount") && dict["TotalCount"] != nil {
            self.totalCount = dict["TotalCount"] as! Int64
        }
    }
}

public class ListPipelinesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListPipelinesResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = ListPipelinesResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class RerunPipelineRunResponseBody : Tea.TeaModel {
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

public class RerunPipelineRunResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: RerunPipelineRunResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = RerunPipelineRunResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class StartPipelineRunResponseBody : Tea.TeaModel {
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

public class StartPipelineRunResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: StartPipelineRunResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = StartPipelineRunResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class TerminatePipelineRunResponseBody : Tea.TeaModel {
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

public class TerminatePipelineRunResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: TerminatePipelineRunResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = TerminatePipelineRunResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class UpdatePipelineRequest : Tea.TeaModel {
    public var manifest: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.manifest != nil {
            map["Manifest"] = self.manifest!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Manifest") && dict["Manifest"] != nil {
            self.manifest = dict["Manifest"] as! String
        }
    }
}

public class UpdatePipelineResponseBody : Tea.TeaModel {
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

public class UpdatePipelineResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpdatePipelineResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = UpdatePipelineResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class UpdatePipelineRunRequest : Tea.TeaModel {
    public var name: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.name != nil {
            map["Name"] = self.name!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Name") && dict["Name"] != nil {
            self.name = dict["Name"] as! String
        }
    }
}

public class UpdatePipelineRunResponseBody : Tea.TeaModel {
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

public class UpdatePipelineRunResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpdatePipelineRunResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = UpdatePipelineRunResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}
