import Foundation
import Tea
import TeaUtils
import AlibabacloudOpenApi
import AlibabaCloudOpenApiUtil
import AlibabacloudEndpointUtil

public class ErrorResponse : Tea.TeaModel {
    public var code: String?

    public var message: String?

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
        if self.code != nil {
            map["code"] = self.code!
        }
        if self.message != nil {
            map["message"] = self.message!
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("code") {
            self.code = dict["code"] as! String
        }
        if dict.keys.contains("message") {
            self.message = dict["message"] as! String
        }
        if dict.keys.contains("requestId") {
            self.requestId = dict["requestId"] as! String
        }
    }
}

public class ResultClusterValue : Tea.TeaModel {
    public var buildParallelNum: Int32?

    public var mergeParallelNum: Int32?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.buildParallelNum != nil {
            map["buildParallelNum"] = self.buildParallelNum!
        }
        if self.mergeParallelNum != nil {
            map["mergeParallelNum"] = self.mergeParallelNum!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("buildParallelNum") {
            self.buildParallelNum = dict["buildParallelNum"] as! Int32
        }
        if dict.keys.contains("mergeParallelNum") {
            self.mergeParallelNum = dict["mergeParallelNum"] as! Int32
        }
    }
}

public class ResultDatabasesFunctionsValue : Tea.TeaModel {
    public var name: String?

    public var signatures: String?

    public override init() {
        super.init()
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
            map["name"] = self.name!
        }
        if self.signatures != nil {
            map["signatures"] = self.signatures!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("name") {
            self.name = dict["name"] as! String
        }
        if dict.keys.contains("signatures") {
            self.signatures = dict["signatures"] as! String
        }
    }
}

public class ResultValue : Tea.TeaModel {
    public var pauseAll: Bool?

    public var pauseIndex: Bool?

    public var pauseIndexBatch: Bool?

    public var pauseBiz: Bool?

    public var pauseRuntime: Bool?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.pauseAll != nil {
            map["pauseAll"] = self.pauseAll!
        }
        if self.pauseIndex != nil {
            map["pauseIndex"] = self.pauseIndex!
        }
        if self.pauseIndexBatch != nil {
            map["pauseIndexBatch"] = self.pauseIndexBatch!
        }
        if self.pauseBiz != nil {
            map["pauseBiz"] = self.pauseBiz!
        }
        if self.pauseRuntime != nil {
            map["pauseRuntime"] = self.pauseRuntime!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("pauseAll") {
            self.pauseAll = dict["pauseAll"] as! Bool
        }
        if dict.keys.contains("pauseIndex") {
            self.pauseIndex = dict["pauseIndex"] as! Bool
        }
        if dict.keys.contains("pauseIndexBatch") {
            self.pauseIndexBatch = dict["pauseIndexBatch"] as! Bool
        }
        if dict.keys.contains("pauseBiz") {
            self.pauseBiz = dict["pauseBiz"] as! Bool
        }
        if dict.keys.contains("pauseRuntime") {
            self.pauseRuntime = dict["pauseRuntime"] as! Bool
        }
    }
}

public class VariablesValue : Tea.TeaModel {
    public class FuncValue : Tea.TeaModel {
        public var funcClassName: String?

        public var template: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.funcClassName != nil {
                map["funcClassName"] = self.funcClassName!
            }
            if self.template != nil {
                map["template"] = self.template!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("funcClassName") {
                self.funcClassName = dict["funcClassName"] as! String
            }
            if dict.keys.contains("template") {
                self.template = dict["template"] as! String
            }
        }
    }
    public var disableModify: Bool?

    public var isModify: Bool?

    public var value: String?

    public var description_: String?

    public var templateValue: String?

    public var type: String?

    public var funcValue: VariablesValue.FuncValue?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.funcValue?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.disableModify != nil {
            map["disableModify"] = self.disableModify!
        }
        if self.isModify != nil {
            map["isModify"] = self.isModify!
        }
        if self.value != nil {
            map["value"] = self.value!
        }
        if self.description_ != nil {
            map["description"] = self.description_!
        }
        if self.templateValue != nil {
            map["templateValue"] = self.templateValue!
        }
        if self.type != nil {
            map["type"] = self.type!
        }
        if self.funcValue != nil {
            map["funcValue"] = self.funcValue?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("disableModify") {
            self.disableModify = dict["disableModify"] as! Bool
        }
        if dict.keys.contains("isModify") {
            self.isModify = dict["isModify"] as! Bool
        }
        if dict.keys.contains("value") {
            self.value = dict["value"] as! String
        }
        if dict.keys.contains("description") {
            self.description_ = dict["description"] as! String
        }
        if dict.keys.contains("templateValue") {
            self.templateValue = dict["templateValue"] as! String
        }
        if dict.keys.contains("type") {
            self.type = dict["type"] as! String
        }
        if dict.keys.contains("funcValue") {
            var model = VariablesValue.FuncValue()
            model.fromMap(dict["funcValue"] as! [String: Any])
            self.funcValue = model
        }
    }
}

public class ConfigValue : Tea.TeaModel {
    public class Files : Tea.TeaModel {
        public class Config : Tea.TeaModel {
            public var content: String?

            public var variables: [String: ConfigValueFilesConfigVariablesValue]?

            public override init() {
                super.init()
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
                if self.variables != nil {
                    var tmp : [String: Any] = [:]
                    for (k, v) in self.variables! {
                        tmp[k] = v.toMap()
                    }
                    map["variables"] = tmp
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("content") {
                    self.content = dict["content"] as! String
                }
                if dict.keys.contains("variables") {
                    var tmp : [String: ConfigValueFilesConfigVariablesValue] = [:]
                    for (k, v) in dict["variables"] as! [String: Any] {
                        if v != nil {
                            var model = ConfigValueFilesConfigVariablesValue()
                            model.fromMap(v as! [String: Any])
                            tmp[k] = model
                        }
                    }
                    self.variables = tmp
                }
            }
        }
        public var operateType: String?

        public var parentFullPath: String?

        public var fileName: String?

        public var config: ConfigValue.Files.Config?

        public var dirName: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.config?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.operateType != nil {
                map["operateType"] = self.operateType!
            }
            if self.parentFullPath != nil {
                map["parentFullPath"] = self.parentFullPath!
            }
            if self.fileName != nil {
                map["fileName"] = self.fileName!
            }
            if self.config != nil {
                map["config"] = self.config?.toMap()
            }
            if self.dirName != nil {
                map["dirName"] = self.dirName!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("operateType") {
                self.operateType = dict["operateType"] as! String
            }
            if dict.keys.contains("parentFullPath") {
                self.parentFullPath = dict["parentFullPath"] as! String
            }
            if dict.keys.contains("fileName") {
                self.fileName = dict["fileName"] as! String
            }
            if dict.keys.contains("config") {
                var model = ConfigValue.Files.Config()
                model.fromMap(dict["config"] as! [String: Any])
                self.config = model
            }
            if dict.keys.contains("dirName") {
                self.dirName = dict["dirName"] as! String
            }
        }
    }
    public var desc: String?

    public var files: [ConfigValue.Files]?

    public override init() {
        super.init()
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
            map["desc"] = self.desc!
        }
        if self.files != nil {
            var tmp : [Any] = []
            for k in self.files! {
                tmp.append(k.toMap())
            }
            map["files"] = tmp
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("desc") {
            self.desc = dict["desc"] as! String
        }
        if dict.keys.contains("files") {
            var tmp : [ConfigValue.Files] = []
            for v in dict["files"] as! [Any] {
                var model = ConfigValue.Files()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.files = tmp
        }
    }
}

public class BodyValue : Tea.TeaModel {
    public var pauseAll: Bool?

    public var pauseIndex: Bool?

    public var pauseIndexBatch: Bool?

    public var pauseBiz: Bool?

    public var pauseRuntime: Bool?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.pauseAll != nil {
            map["pauseAll"] = self.pauseAll!
        }
        if self.pauseIndex != nil {
            map["pauseIndex"] = self.pauseIndex!
        }
        if self.pauseIndexBatch != nil {
            map["pauseIndexBatch"] = self.pauseIndexBatch!
        }
        if self.pauseBiz != nil {
            map["pauseBiz"] = self.pauseBiz!
        }
        if self.pauseRuntime != nil {
            map["pauseRuntime"] = self.pauseRuntime!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("pauseAll") {
            self.pauseAll = dict["pauseAll"] as! Bool
        }
        if dict.keys.contains("pauseIndex") {
            self.pauseIndex = dict["pauseIndex"] as! Bool
        }
        if dict.keys.contains("pauseIndexBatch") {
            self.pauseIndexBatch = dict["pauseIndexBatch"] as! Bool
        }
        if dict.keys.contains("pauseBiz") {
            self.pauseBiz = dict["pauseBiz"] as! Bool
        }
        if dict.keys.contains("pauseRuntime") {
            self.pauseRuntime = dict["pauseRuntime"] as! Bool
        }
    }
}

public class FilesConfigVariablesValue : Tea.TeaModel {
    public var description_: String?

    public var disableModify: Bool?

    public var isModify: Bool?

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
        if self.description_ != nil {
            map["description"] = self.description_!
        }
        if self.disableModify != nil {
            map["disableModify"] = self.disableModify!
        }
        if self.isModify != nil {
            map["isModify"] = self.isModify!
        }
        if self.type != nil {
            map["type"] = self.type!
        }
        if self.value != nil {
            map["value"] = self.value!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("description") {
            self.description_ = dict["description"] as! String
        }
        if dict.keys.contains("disableModify") {
            self.disableModify = dict["disableModify"] as! Bool
        }
        if dict.keys.contains("isModify") {
            self.isModify = dict["isModify"] as! Bool
        }
        if dict.keys.contains("type") {
            self.type = dict["type"] as! String
        }
        if dict.keys.contains("value") {
            self.value = dict["value"] as! String
        }
    }
}

public class ConfigValueFilesConfigVariablesValue : Tea.TeaModel {
    public var description_: String?

    public var disableModify: Bool?

    public var isModify: Bool?

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
        if self.description_ != nil {
            map["description"] = self.description_!
        }
        if self.disableModify != nil {
            map["disableModify"] = self.disableModify!
        }
        if self.isModify != nil {
            map["isModify"] = self.isModify!
        }
        if self.type != nil {
            map["type"] = self.type!
        }
        if self.value != nil {
            map["value"] = self.value!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("description") {
            self.description_ = dict["description"] as! String
        }
        if dict.keys.contains("disableModify") {
            self.disableModify = dict["disableModify"] as! Bool
        }
        if dict.keys.contains("isModify") {
            self.isModify = dict["isModify"] as! Bool
        }
        if dict.keys.contains("type") {
            self.type = dict["type"] as! String
        }
        if dict.keys.contains("value") {
            self.value = dict["value"] as! String
        }
    }
}

public class BuildIndexRequest : Tea.TeaModel {
    public var buildMode: String?

    public var dataSourceName: String?

    public var dataSourceType: String?

    public var dataTimeSec: Int32?

    public var domain: String?

    public var generation: Int64?

    public var partition: String?

    public var tag: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.buildMode != nil {
            map["buildMode"] = self.buildMode!
        }
        if self.dataSourceName != nil {
            map["dataSourceName"] = self.dataSourceName!
        }
        if self.dataSourceType != nil {
            map["dataSourceType"] = self.dataSourceType!
        }
        if self.dataTimeSec != nil {
            map["dataTimeSec"] = self.dataTimeSec!
        }
        if self.domain != nil {
            map["domain"] = self.domain!
        }
        if self.generation != nil {
            map["generation"] = self.generation!
        }
        if self.partition != nil {
            map["partition"] = self.partition!
        }
        if self.tag != nil {
            map["tag"] = self.tag!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("buildMode") {
            self.buildMode = dict["buildMode"] as! String
        }
        if dict.keys.contains("dataSourceName") {
            self.dataSourceName = dict["dataSourceName"] as! String
        }
        if dict.keys.contains("dataSourceType") {
            self.dataSourceType = dict["dataSourceType"] as! String
        }
        if dict.keys.contains("dataTimeSec") {
            self.dataTimeSec = dict["dataTimeSec"] as! Int32
        }
        if dict.keys.contains("domain") {
            self.domain = dict["domain"] as! String
        }
        if dict.keys.contains("generation") {
            self.generation = dict["generation"] as! Int64
        }
        if dict.keys.contains("partition") {
            self.partition = dict["partition"] as! String
        }
        if dict.keys.contains("tag") {
            self.tag = dict["tag"] as! String
        }
    }
}

public class BuildIndexResponseBody : Tea.TeaModel {
    public var requestId: String?

    public var result: [String: Any]?

    public override init() {
        super.init()
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
            map["requestId"] = self.requestId!
        }
        if self.result != nil {
            map["result"] = self.result!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("requestId") {
            self.requestId = dict["requestId"] as! String
        }
        if dict.keys.contains("result") {
            self.result = dict["result"] as! [String: Any]
        }
    }
}

public class BuildIndexResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: BuildIndexResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = BuildIndexResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ChangeResourceGroupRequest : Tea.TeaModel {
    public var newResourceGroupId: String?

    public var resourceType: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.newResourceGroupId != nil {
            map["newResourceGroupId"] = self.newResourceGroupId!
        }
        if self.resourceType != nil {
            map["resourceType"] = self.resourceType!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("newResourceGroupId") {
            self.newResourceGroupId = dict["newResourceGroupId"] as! String
        }
        if dict.keys.contains("resourceType") {
            self.resourceType = dict["resourceType"] as! String
        }
    }
}

public class ChangeResourceGroupResponseBody : Tea.TeaModel {
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
            map["requestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("requestId") {
            self.requestId = dict["requestId"] as! String
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
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = ChangeResourceGroupResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class CloneSqlInstanceRequest : Tea.TeaModel {
    public var name: String?

    public var targetFolderId: Int64?

    public override init() {
        super.init()
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
            map["name"] = self.name!
        }
        if self.targetFolderId != nil {
            map["targetFolderId"] = self.targetFolderId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("name") {
            self.name = dict["name"] as! String
        }
        if dict.keys.contains("targetFolderId") {
            self.targetFolderId = dict["targetFolderId"] as! Int64
        }
    }
}

public class CloneSqlInstanceResponseBody : Tea.TeaModel {
    public class Result : Tea.TeaModel {
        public var gmtCreate: String?

        public var gmtModified: String?

        public var id: Int64?

        public var instanceId: Int64?

        public var isDir: Int32?

        public var name: String?

        public var parent: Int64?

        public var templateId: Int64?

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
            if self.gmtCreate != nil {
                map["gmtCreate"] = self.gmtCreate!
            }
            if self.gmtModified != nil {
                map["gmtModified"] = self.gmtModified!
            }
            if self.id != nil {
                map["id"] = self.id!
            }
            if self.instanceId != nil {
                map["instanceId"] = self.instanceId!
            }
            if self.isDir != nil {
                map["isDir"] = self.isDir!
            }
            if self.name != nil {
                map["name"] = self.name!
            }
            if self.parent != nil {
                map["parent"] = self.parent!
            }
            if self.templateId != nil {
                map["templateId"] = self.templateId!
            }
            if self.type != nil {
                map["type"] = self.type!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("gmtCreate") {
                self.gmtCreate = dict["gmtCreate"] as! String
            }
            if dict.keys.contains("gmtModified") {
                self.gmtModified = dict["gmtModified"] as! String
            }
            if dict.keys.contains("id") {
                self.id = dict["id"] as! Int64
            }
            if dict.keys.contains("instanceId") {
                self.instanceId = dict["instanceId"] as! Int64
            }
            if dict.keys.contains("isDir") {
                self.isDir = dict["isDir"] as! Int32
            }
            if dict.keys.contains("name") {
                self.name = dict["name"] as! String
            }
            if dict.keys.contains("parent") {
                self.parent = dict["parent"] as! Int64
            }
            if dict.keys.contains("templateId") {
                self.templateId = dict["templateId"] as! Int64
            }
            if dict.keys.contains("type") {
                self.type = dict["type"] as! String
            }
        }
    }
    public var requestId: String?

    public var result: CloneSqlInstanceResponseBody.Result?

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
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        if self.result != nil {
            map["result"] = self.result?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("requestId") {
            self.requestId = dict["requestId"] as! String
        }
        if dict.keys.contains("result") {
            var model = CloneSqlInstanceResponseBody.Result()
            model.fromMap(dict["result"] as! [String: Any])
            self.result = model
        }
    }
}

public class CloneSqlInstanceResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CloneSqlInstanceResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = CloneSqlInstanceResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class CreateAliasRequest : Tea.TeaModel {
    public var alias: String?

    public var index: String?

    public var newMode: Bool?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.alias != nil {
            map["alias"] = self.alias!
        }
        if self.index != nil {
            map["index"] = self.index!
        }
        if self.newMode != nil {
            map["newMode"] = self.newMode!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("alias") {
            self.alias = dict["alias"] as! String
        }
        if dict.keys.contains("index") {
            self.index = dict["index"] as! String
        }
        if dict.keys.contains("newMode") {
            self.newMode = dict["newMode"] as! Bool
        }
    }
}

public class CreateAliasResponseBody : Tea.TeaModel {
    public var requestId: String?

    public var result: [String: Any]?

    public override init() {
        super.init()
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
            map["requestId"] = self.requestId!
        }
        if self.result != nil {
            map["result"] = self.result!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("requestId") {
            self.requestId = dict["requestId"] as! String
        }
        if dict.keys.contains("result") {
            self.result = dict["result"] as! [String: Any]
        }
    }
}

public class CreateAliasResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateAliasResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = CreateAliasResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class CreateClusterRequest : Tea.TeaModel {
    public class DataNode : Tea.TeaModel {
        public var number: Int32?

        public var partition: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.number != nil {
                map["number"] = self.number!
            }
            if self.partition != nil {
                map["partition"] = self.partition!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("number") {
                self.number = dict["number"] as! Int32
            }
            if dict.keys.contains("partition") {
                self.partition = dict["partition"] as! String
            }
        }
    }
    public class QueryNode : Tea.TeaModel {
        public var number: Int32?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.number != nil {
                map["number"] = self.number!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("number") {
                self.number = dict["number"] as! Int32
            }
        }
    }
    public var autoLoad: Bool?

    public var dataNode: CreateClusterRequest.DataNode?

    public var description_: String?

    public var name: String?

    public var queryNode: CreateClusterRequest.QueryNode?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.dataNode?.validate()
        try self.queryNode?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.autoLoad != nil {
            map["autoLoad"] = self.autoLoad!
        }
        if self.dataNode != nil {
            map["dataNode"] = self.dataNode?.toMap()
        }
        if self.description_ != nil {
            map["description"] = self.description_!
        }
        if self.name != nil {
            map["name"] = self.name!
        }
        if self.queryNode != nil {
            map["queryNode"] = self.queryNode?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("autoLoad") {
            self.autoLoad = dict["autoLoad"] as! Bool
        }
        if dict.keys.contains("dataNode") {
            var model = CreateClusterRequest.DataNode()
            model.fromMap(dict["dataNode"] as! [String: Any])
            self.dataNode = model
        }
        if dict.keys.contains("description") {
            self.description_ = dict["description"] as! String
        }
        if dict.keys.contains("name") {
            self.name = dict["name"] as! String
        }
        if dict.keys.contains("queryNode") {
            var model = CreateClusterRequest.QueryNode()
            model.fromMap(dict["queryNode"] as! [String: Any])
            self.queryNode = model
        }
    }
}

public class CreateClusterResponseBody : Tea.TeaModel {
    public var requestId: String?

    public var result: [String: Any]?

    public override init() {
        super.init()
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
            map["requestId"] = self.requestId!
        }
        if self.result != nil {
            map["result"] = self.result!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("requestId") {
            self.requestId = dict["requestId"] as! String
        }
        if dict.keys.contains("result") {
            self.result = dict["result"] as! [String: Any]
        }
    }
}

public class CreateClusterResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateClusterResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = CreateClusterResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class CreateConfigDirRequest : Tea.TeaModel {
    public var dirName: String?

    public var parentFullPath: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.dirName != nil {
            map["dirName"] = self.dirName!
        }
        if self.parentFullPath != nil {
            map["parentFullPath"] = self.parentFullPath!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("dirName") {
            self.dirName = dict["dirName"] as! String
        }
        if dict.keys.contains("parentFullPath") {
            self.parentFullPath = dict["parentFullPath"] as! String
        }
    }
}

public class CreateConfigDirResponseBody : Tea.TeaModel {
    public var requestId: String?

    public var result: [String: Any]?

    public override init() {
        super.init()
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
            map["requestId"] = self.requestId!
        }
        if self.result != nil {
            map["result"] = self.result!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("requestId") {
            self.requestId = dict["requestId"] as! String
        }
        if dict.keys.contains("result") {
            self.result = dict["result"] as! [String: Any]
        }
    }
}

public class CreateConfigDirResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateConfigDirResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = CreateConfigDirResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class CreateConfigFileRequest : Tea.TeaModel {
    public var fileName: String?

    public var ossPath: String?

    public var parentFullPath: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.fileName != nil {
            map["fileName"] = self.fileName!
        }
        if self.ossPath != nil {
            map["ossPath"] = self.ossPath!
        }
        if self.parentFullPath != nil {
            map["parentFullPath"] = self.parentFullPath!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("fileName") {
            self.fileName = dict["fileName"] as! String
        }
        if dict.keys.contains("ossPath") {
            self.ossPath = dict["ossPath"] as! String
        }
        if dict.keys.contains("parentFullPath") {
            self.parentFullPath = dict["parentFullPath"] as! String
        }
    }
}

public class CreateConfigFileResponseBody : Tea.TeaModel {
    public var requestId: String?

    public var result: [String: Any]?

    public override init() {
        super.init()
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
            map["requestId"] = self.requestId!
        }
        if self.result != nil {
            map["result"] = self.result!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("requestId") {
            self.requestId = dict["requestId"] as! String
        }
        if dict.keys.contains("result") {
            self.result = dict["result"] as! [String: Any]
        }
    }
}

public class CreateConfigFileResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateConfigFileResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = CreateConfigFileResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class CreateDataSourceRequest : Tea.TeaModel {
    public class Config : Tea.TeaModel {
        public var accessKey: String?

        public var accessSecret: String?

        public var bucket: String?

        public var catalog: String?

        public var database: String?

        public var endpoint: String?

        public var namespace: String?

        public var ossPath: String?

        public var partition: String?

        public var path: String?

        public var project: String?

        public var table: String?

        public var tag: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.accessKey != nil {
                map["accessKey"] = self.accessKey!
            }
            if self.accessSecret != nil {
                map["accessSecret"] = self.accessSecret!
            }
            if self.bucket != nil {
                map["bucket"] = self.bucket!
            }
            if self.catalog != nil {
                map["catalog"] = self.catalog!
            }
            if self.database != nil {
                map["database"] = self.database!
            }
            if self.endpoint != nil {
                map["endpoint"] = self.endpoint!
            }
            if self.namespace != nil {
                map["namespace"] = self.namespace!
            }
            if self.ossPath != nil {
                map["ossPath"] = self.ossPath!
            }
            if self.partition != nil {
                map["partition"] = self.partition!
            }
            if self.path != nil {
                map["path"] = self.path!
            }
            if self.project != nil {
                map["project"] = self.project!
            }
            if self.table != nil {
                map["table"] = self.table!
            }
            if self.tag != nil {
                map["tag"] = self.tag!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("accessKey") {
                self.accessKey = dict["accessKey"] as! String
            }
            if dict.keys.contains("accessSecret") {
                self.accessSecret = dict["accessSecret"] as! String
            }
            if dict.keys.contains("bucket") {
                self.bucket = dict["bucket"] as! String
            }
            if dict.keys.contains("catalog") {
                self.catalog = dict["catalog"] as! String
            }
            if dict.keys.contains("database") {
                self.database = dict["database"] as! String
            }
            if dict.keys.contains("endpoint") {
                self.endpoint = dict["endpoint"] as! String
            }
            if dict.keys.contains("namespace") {
                self.namespace = dict["namespace"] as! String
            }
            if dict.keys.contains("ossPath") {
                self.ossPath = dict["ossPath"] as! String
            }
            if dict.keys.contains("partition") {
                self.partition = dict["partition"] as! String
            }
            if dict.keys.contains("path") {
                self.path = dict["path"] as! String
            }
            if dict.keys.contains("project") {
                self.project = dict["project"] as! String
            }
            if dict.keys.contains("table") {
                self.table = dict["table"] as! String
            }
            if dict.keys.contains("tag") {
                self.tag = dict["tag"] as! String
            }
        }
    }
    public class SaroConfig : Tea.TeaModel {
        public var namespace: String?

        public var tableName: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.namespace != nil {
                map["namespace"] = self.namespace!
            }
            if self.tableName != nil {
                map["tableName"] = self.tableName!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("namespace") {
                self.namespace = dict["namespace"] as! String
            }
            if dict.keys.contains("tableName") {
                self.tableName = dict["tableName"] as! String
            }
        }
    }
    public var autoBuildIndex: Bool?

    public var config: CreateDataSourceRequest.Config?

    public var domain: String?

    public var name: String?

    public var saroConfig: CreateDataSourceRequest.SaroConfig?

    public var type: String?

    public var dryRun: Bool?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.config?.validate()
        try self.saroConfig?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.autoBuildIndex != nil {
            map["autoBuildIndex"] = self.autoBuildIndex!
        }
        if self.config != nil {
            map["config"] = self.config?.toMap()
        }
        if self.domain != nil {
            map["domain"] = self.domain!
        }
        if self.name != nil {
            map["name"] = self.name!
        }
        if self.saroConfig != nil {
            map["saroConfig"] = self.saroConfig?.toMap()
        }
        if self.type != nil {
            map["type"] = self.type!
        }
        if self.dryRun != nil {
            map["dryRun"] = self.dryRun!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("autoBuildIndex") {
            self.autoBuildIndex = dict["autoBuildIndex"] as! Bool
        }
        if dict.keys.contains("config") {
            var model = CreateDataSourceRequest.Config()
            model.fromMap(dict["config"] as! [String: Any])
            self.config = model
        }
        if dict.keys.contains("domain") {
            self.domain = dict["domain"] as! String
        }
        if dict.keys.contains("name") {
            self.name = dict["name"] as! String
        }
        if dict.keys.contains("saroConfig") {
            var model = CreateDataSourceRequest.SaroConfig()
            model.fromMap(dict["saroConfig"] as! [String: Any])
            self.saroConfig = model
        }
        if dict.keys.contains("type") {
            self.type = dict["type"] as! String
        }
        if dict.keys.contains("dryRun") {
            self.dryRun = dict["dryRun"] as! Bool
        }
    }
}

public class CreateDataSourceResponseBody : Tea.TeaModel {
    public var requestId: String?

    public var result: [String: Any]?

    public override init() {
        super.init()
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
            map["requestId"] = self.requestId!
        }
        if self.result != nil {
            map["result"] = self.result!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("requestId") {
            self.requestId = dict["requestId"] as! String
        }
        if dict.keys.contains("result") {
            self.result = dict["result"] as! [String: Any]
        }
    }
}

public class CreateDataSourceResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateDataSourceResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = CreateDataSourceResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class CreateFolderRequest : Tea.TeaModel {
    public var name: String?

    public var parent: Int64?

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
        if self.name != nil {
            map["name"] = self.name!
        }
        if self.parent != nil {
            map["parent"] = self.parent!
        }
        if self.type != nil {
            map["type"] = self.type!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("name") {
            self.name = dict["name"] as! String
        }
        if dict.keys.contains("parent") {
            self.parent = dict["parent"] as! Int64
        }
        if dict.keys.contains("type") {
            self.type = dict["type"] as! String
        }
    }
}

public class CreateFolderResponseBody : Tea.TeaModel {
    public class Result : Tea.TeaModel {
        public var gmtCreate: String?

        public var gmtModified: String?

        public var id: Int64?

        public var instanceId: Int64?

        public var isDir: Int32?

        public var name: String?

        public var parent: Int64?

        public var templateId: Int64?

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
            if self.gmtCreate != nil {
                map["gmtCreate"] = self.gmtCreate!
            }
            if self.gmtModified != nil {
                map["gmtModified"] = self.gmtModified!
            }
            if self.id != nil {
                map["id"] = self.id!
            }
            if self.instanceId != nil {
                map["instanceId"] = self.instanceId!
            }
            if self.isDir != nil {
                map["isDir"] = self.isDir!
            }
            if self.name != nil {
                map["name"] = self.name!
            }
            if self.parent != nil {
                map["parent"] = self.parent!
            }
            if self.templateId != nil {
                map["templateId"] = self.templateId!
            }
            if self.type != nil {
                map["type"] = self.type!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("gmtCreate") {
                self.gmtCreate = dict["gmtCreate"] as! String
            }
            if dict.keys.contains("gmtModified") {
                self.gmtModified = dict["gmtModified"] as! String
            }
            if dict.keys.contains("id") {
                self.id = dict["id"] as! Int64
            }
            if dict.keys.contains("instanceId") {
                self.instanceId = dict["instanceId"] as! Int64
            }
            if dict.keys.contains("isDir") {
                self.isDir = dict["isDir"] as! Int32
            }
            if dict.keys.contains("name") {
                self.name = dict["name"] as! String
            }
            if dict.keys.contains("parent") {
                self.parent = dict["parent"] as! Int64
            }
            if dict.keys.contains("templateId") {
                self.templateId = dict["templateId"] as! Int64
            }
            if dict.keys.contains("type") {
                self.type = dict["type"] as! String
            }
        }
    }
    public var requestId: String?

    public var result: CreateFolderResponseBody.Result?

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
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        if self.result != nil {
            map["result"] = self.result?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("requestId") {
            self.requestId = dict["requestId"] as! String
        }
        if dict.keys.contains("result") {
            var model = CreateFolderResponseBody.Result()
            model.fromMap(dict["result"] as! [String: Any])
            self.result = model
        }
    }
}

public class CreateFolderResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateFolderResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = CreateFolderResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class CreateIndexRequest : Tea.TeaModel {
    public class DataSourceInfo : Tea.TeaModel {
        public class Config : Tea.TeaModel {
            public var accessKey: String?

            public var accessSecret: String?

            public var bucket: String?

            public var catalog: String?

            public var database: String?

            public var endpoint: String?

            public var format: String?

            public var namespace: String?

            public var ossPath: String?

            public var partition: String?

            public var path: String?

            public var project: String?

            public var table: String?

            public var tag: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.accessKey != nil {
                    map["accessKey"] = self.accessKey!
                }
                if self.accessSecret != nil {
                    map["accessSecret"] = self.accessSecret!
                }
                if self.bucket != nil {
                    map["bucket"] = self.bucket!
                }
                if self.catalog != nil {
                    map["catalog"] = self.catalog!
                }
                if self.database != nil {
                    map["database"] = self.database!
                }
                if self.endpoint != nil {
                    map["endpoint"] = self.endpoint!
                }
                if self.format != nil {
                    map["format"] = self.format!
                }
                if self.namespace != nil {
                    map["namespace"] = self.namespace!
                }
                if self.ossPath != nil {
                    map["ossPath"] = self.ossPath!
                }
                if self.partition != nil {
                    map["partition"] = self.partition!
                }
                if self.path != nil {
                    map["path"] = self.path!
                }
                if self.project != nil {
                    map["project"] = self.project!
                }
                if self.table != nil {
                    map["table"] = self.table!
                }
                if self.tag != nil {
                    map["tag"] = self.tag!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("accessKey") {
                    self.accessKey = dict["accessKey"] as! String
                }
                if dict.keys.contains("accessSecret") {
                    self.accessSecret = dict["accessSecret"] as! String
                }
                if dict.keys.contains("bucket") {
                    self.bucket = dict["bucket"] as! String
                }
                if dict.keys.contains("catalog") {
                    self.catalog = dict["catalog"] as! String
                }
                if dict.keys.contains("database") {
                    self.database = dict["database"] as! String
                }
                if dict.keys.contains("endpoint") {
                    self.endpoint = dict["endpoint"] as! String
                }
                if dict.keys.contains("format") {
                    self.format = dict["format"] as! String
                }
                if dict.keys.contains("namespace") {
                    self.namespace = dict["namespace"] as! String
                }
                if dict.keys.contains("ossPath") {
                    self.ossPath = dict["ossPath"] as! String
                }
                if dict.keys.contains("partition") {
                    self.partition = dict["partition"] as! String
                }
                if dict.keys.contains("path") {
                    self.path = dict["path"] as! String
                }
                if dict.keys.contains("project") {
                    self.project = dict["project"] as! String
                }
                if dict.keys.contains("table") {
                    self.table = dict["table"] as! String
                }
                if dict.keys.contains("tag") {
                    self.tag = dict["tag"] as! String
                }
            }
        }
        public class SaroConfig : Tea.TeaModel {
            public var namespace: String?

            public var tableName: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.namespace != nil {
                    map["namespace"] = self.namespace!
                }
                if self.tableName != nil {
                    map["tableName"] = self.tableName!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("namespace") {
                    self.namespace = dict["namespace"] as! String
                }
                if dict.keys.contains("tableName") {
                    self.tableName = dict["tableName"] as! String
                }
            }
        }
        public var autoBuildIndex: Bool?

        public var config: CreateIndexRequest.DataSourceInfo.Config?

        public var dataTimeSec: Int32?

        public var domain: String?

        public var name: String?

        public var processParallelNum: Int32?

        public var processPartitionCount: Int32?

        public var saroConfig: CreateIndexRequest.DataSourceInfo.SaroConfig?

        public var type: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.config?.validate()
            try self.saroConfig?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.autoBuildIndex != nil {
                map["autoBuildIndex"] = self.autoBuildIndex!
            }
            if self.config != nil {
                map["config"] = self.config?.toMap()
            }
            if self.dataTimeSec != nil {
                map["dataTimeSec"] = self.dataTimeSec!
            }
            if self.domain != nil {
                map["domain"] = self.domain!
            }
            if self.name != nil {
                map["name"] = self.name!
            }
            if self.processParallelNum != nil {
                map["processParallelNum"] = self.processParallelNum!
            }
            if self.processPartitionCount != nil {
                map["processPartitionCount"] = self.processPartitionCount!
            }
            if self.saroConfig != nil {
                map["saroConfig"] = self.saroConfig?.toMap()
            }
            if self.type != nil {
                map["type"] = self.type!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("autoBuildIndex") {
                self.autoBuildIndex = dict["autoBuildIndex"] as! Bool
            }
            if dict.keys.contains("config") {
                var model = CreateIndexRequest.DataSourceInfo.Config()
                model.fromMap(dict["config"] as! [String: Any])
                self.config = model
            }
            if dict.keys.contains("dataTimeSec") {
                self.dataTimeSec = dict["dataTimeSec"] as! Int32
            }
            if dict.keys.contains("domain") {
                self.domain = dict["domain"] as! String
            }
            if dict.keys.contains("name") {
                self.name = dict["name"] as! String
            }
            if dict.keys.contains("processParallelNum") {
                self.processParallelNum = dict["processParallelNum"] as! Int32
            }
            if dict.keys.contains("processPartitionCount") {
                self.processPartitionCount = dict["processPartitionCount"] as! Int32
            }
            if dict.keys.contains("saroConfig") {
                var model = CreateIndexRequest.DataSourceInfo.SaroConfig()
                model.fromMap(dict["saroConfig"] as! [String: Any])
                self.saroConfig = model
            }
            if dict.keys.contains("type") {
                self.type = dict["type"] as! String
            }
        }
    }
    public var buildParallelNum: Int32?

    public var content: String?

    public var dataSource: String?

    public var dataSourceInfo: CreateIndexRequest.DataSourceInfo?

    public var domain: String?

    public var extend: [String: Any]?

    public var mergeParallelNum: Int32?

    public var name: String?

    public var partition: Int32?

    public var dryRun: Bool?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.dataSourceInfo?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.buildParallelNum != nil {
            map["buildParallelNum"] = self.buildParallelNum!
        }
        if self.content != nil {
            map["content"] = self.content!
        }
        if self.dataSource != nil {
            map["dataSource"] = self.dataSource!
        }
        if self.dataSourceInfo != nil {
            map["dataSourceInfo"] = self.dataSourceInfo?.toMap()
        }
        if self.domain != nil {
            map["domain"] = self.domain!
        }
        if self.extend != nil {
            map["extend"] = self.extend!
        }
        if self.mergeParallelNum != nil {
            map["mergeParallelNum"] = self.mergeParallelNum!
        }
        if self.name != nil {
            map["name"] = self.name!
        }
        if self.partition != nil {
            map["partition"] = self.partition!
        }
        if self.dryRun != nil {
            map["dryRun"] = self.dryRun!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("buildParallelNum") {
            self.buildParallelNum = dict["buildParallelNum"] as! Int32
        }
        if dict.keys.contains("content") {
            self.content = dict["content"] as! String
        }
        if dict.keys.contains("dataSource") {
            self.dataSource = dict["dataSource"] as! String
        }
        if dict.keys.contains("dataSourceInfo") {
            var model = CreateIndexRequest.DataSourceInfo()
            model.fromMap(dict["dataSourceInfo"] as! [String: Any])
            self.dataSourceInfo = model
        }
        if dict.keys.contains("domain") {
            self.domain = dict["domain"] as! String
        }
        if dict.keys.contains("extend") {
            self.extend = dict["extend"] as! [String: Any]
        }
        if dict.keys.contains("mergeParallelNum") {
            self.mergeParallelNum = dict["mergeParallelNum"] as! Int32
        }
        if dict.keys.contains("name") {
            self.name = dict["name"] as! String
        }
        if dict.keys.contains("partition") {
            self.partition = dict["partition"] as! Int32
        }
        if dict.keys.contains("dryRun") {
            self.dryRun = dict["dryRun"] as! Bool
        }
    }
}

public class CreateIndexResponseBody : Tea.TeaModel {
    public var requestId: String?

    public var result: [String: Any]?

    public override init() {
        super.init()
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
            map["requestId"] = self.requestId!
        }
        if self.result != nil {
            map["result"] = self.result!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("requestId") {
            self.requestId = dict["requestId"] as! String
        }
        if dict.keys.contains("result") {
            self.result = dict["result"] as! [String: Any]
        }
    }
}

public class CreateIndexResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateIndexResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = CreateIndexResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class CreateInstanceRequest : Tea.TeaModel {
    public class Components : Tea.TeaModel {
        public var code: String?

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
            if self.code != nil {
                map["code"] = self.code!
            }
            if self.value != nil {
                map["value"] = self.value!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("code") {
                self.code = dict["code"] as! String
            }
            if dict.keys.contains("value") {
                self.value = dict["value"] as! String
            }
        }
    }
    public class Order : Tea.TeaModel {
        public var autoRenew: Bool?

        public var duration: Int64?

        public var pricingCycle: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.autoRenew != nil {
                map["autoRenew"] = self.autoRenew!
            }
            if self.duration != nil {
                map["duration"] = self.duration!
            }
            if self.pricingCycle != nil {
                map["pricingCycle"] = self.pricingCycle!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("autoRenew") {
                self.autoRenew = dict["autoRenew"] as! Bool
            }
            if dict.keys.contains("duration") {
                self.duration = dict["duration"] as! Int64
            }
            if dict.keys.contains("pricingCycle") {
                self.pricingCycle = dict["pricingCycle"] as! String
            }
        }
    }
    public class Tags : Tea.TeaModel {
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
                map["key"] = self.key!
            }
            if self.value != nil {
                map["value"] = self.value!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("key") {
                self.key = dict["key"] as! String
            }
            if dict.keys.contains("value") {
                self.value = dict["value"] as! String
            }
        }
    }
    public var chargeType: String?

    public var components: [CreateInstanceRequest.Components]?

    public var order: CreateInstanceRequest.Order?

    public var resourceGroupId: String?

    public var tags: [CreateInstanceRequest.Tags]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.order?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.chargeType != nil {
            map["chargeType"] = self.chargeType!
        }
        if self.components != nil {
            var tmp : [Any] = []
            for k in self.components! {
                tmp.append(k.toMap())
            }
            map["components"] = tmp
        }
        if self.order != nil {
            map["order"] = self.order?.toMap()
        }
        if self.resourceGroupId != nil {
            map["resourceGroupId"] = self.resourceGroupId!
        }
        if self.tags != nil {
            var tmp : [Any] = []
            for k in self.tags! {
                tmp.append(k.toMap())
            }
            map["tags"] = tmp
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("chargeType") {
            self.chargeType = dict["chargeType"] as! String
        }
        if dict.keys.contains("components") {
            var tmp : [CreateInstanceRequest.Components] = []
            for v in dict["components"] as! [Any] {
                var model = CreateInstanceRequest.Components()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.components = tmp
        }
        if dict.keys.contains("order") {
            var model = CreateInstanceRequest.Order()
            model.fromMap(dict["order"] as! [String: Any])
            self.order = model
        }
        if dict.keys.contains("resourceGroupId") {
            self.resourceGroupId = dict["resourceGroupId"] as! String
        }
        if dict.keys.contains("tags") {
            var tmp : [CreateInstanceRequest.Tags] = []
            for v in dict["tags"] as! [Any] {
                var model = CreateInstanceRequest.Tags()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.tags = tmp
        }
    }
}

public class CreateInstanceResponseBody : Tea.TeaModel {
    public class Result : Tea.TeaModel {
        public var instanceId: String?

        public override init() {
            super.init()
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
                map["instanceId"] = self.instanceId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("instanceId") {
                self.instanceId = dict["instanceId"] as! String
            }
        }
    }
    public var requestId: String?

    public var result: CreateInstanceResponseBody.Result?

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
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        if self.result != nil {
            map["result"] = self.result?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("requestId") {
            self.requestId = dict["requestId"] as! String
        }
        if dict.keys.contains("result") {
            var model = CreateInstanceResponseBody.Result()
            model.fromMap(dict["result"] as! [String: Any])
            self.result = model
        }
    }
}

public class CreateInstanceResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateInstanceResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = CreateInstanceResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class CreateModelRequest : Tea.TeaModel {
    public class Content : Tea.TeaModel {
        public class Request : Tea.TeaModel {
            public class Header : Tea.TeaModel {
                public var authorization: String?

                public var contentType: String?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.authorization != nil {
                        map["Authorization"] = self.authorization!
                    }
                    if self.contentType != nil {
                        map["Content-Type"] = self.contentType!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("Authorization") {
                        self.authorization = dict["Authorization"] as! String
                    }
                    if dict.keys.contains("Content-Type") {
                        self.contentType = dict["Content-Type"] as! String
                    }
                }
            }
            public class Parameters : Tea.TeaModel {
                public class Build : Tea.TeaModel {
                    public var inputType: String?

                    public override init() {
                        super.init()
                    }

                    public init(_ dict: [String: Any]) {
                        super.init()
                        self.fromMap(dict)
                    }

                    public override func validate() throws -> Void {
                    }

                    public override func toMap() -> [String : Any] {
                        var map = super.toMap()
                        if self.inputType != nil {
                            map["input_type"] = self.inputType!
                        }
                        return map
                    }

                    public override func fromMap(_ dict: [String: Any]) -> Void {
                        if dict.keys.contains("input_type") {
                            self.inputType = dict["input_type"] as! String
                        }
                    }
                }
                public class Search : Tea.TeaModel {
                    public var inputType: String?

                    public override init() {
                        super.init()
                    }

                    public init(_ dict: [String: Any]) {
                        super.init()
                        self.fromMap(dict)
                    }

                    public override func validate() throws -> Void {
                    }

                    public override func toMap() -> [String : Any] {
                        var map = super.toMap()
                        if self.inputType != nil {
                            map["input_type"] = self.inputType!
                        }
                        return map
                    }

                    public override func fromMap(_ dict: [String: Any]) -> Void {
                        if dict.keys.contains("input_type") {
                            self.inputType = dict["input_type"] as! String
                        }
                    }
                }
                public var build: CreateModelRequest.Content.Request.Parameters.Build?

                public var search: CreateModelRequest.Content.Request.Parameters.Search?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                    try self.build?.validate()
                    try self.search?.validate()
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.build != nil {
                        map["build"] = self.build?.toMap()
                    }
                    if self.search != nil {
                        map["search"] = self.search?.toMap()
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("build") {
                        var model = CreateModelRequest.Content.Request.Parameters.Build()
                        model.fromMap(dict["build"] as! [String: Any])
                        self.build = model
                    }
                    if dict.keys.contains("search") {
                        var model = CreateModelRequest.Content.Request.Parameters.Search()
                        model.fromMap(dict["search"] as! [String: Any])
                        self.search = model
                    }
                }
            }
            public class UrlParams : Tea.TeaModel {
                public var build: [String: Any]?

                public var search: [String: Any]?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.build != nil {
                        map["build"] = self.build!
                    }
                    if self.search != nil {
                        map["search"] = self.search!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("build") {
                        self.build = dict["build"] as! [String: Any]
                    }
                    if dict.keys.contains("search") {
                        self.search = dict["search"] as! [String: Any]
                    }
                }
            }
            public var header: CreateModelRequest.Content.Request.Header?

            public var parameters: CreateModelRequest.Content.Request.Parameters?

            public var requestBody: String?

            public var urlParams: CreateModelRequest.Content.Request.UrlParams?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
                try self.header?.validate()
                try self.parameters?.validate()
                try self.urlParams?.validate()
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.header != nil {
                    map["header"] = self.header?.toMap()
                }
                if self.parameters != nil {
                    map["parameters"] = self.parameters?.toMap()
                }
                if self.requestBody != nil {
                    map["requestBody"] = self.requestBody!
                }
                if self.urlParams != nil {
                    map["urlParams"] = self.urlParams?.toMap()
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("header") {
                    var model = CreateModelRequest.Content.Request.Header()
                    model.fromMap(dict["header"] as! [String: Any])
                    self.header = model
                }
                if dict.keys.contains("parameters") {
                    var model = CreateModelRequest.Content.Request.Parameters()
                    model.fromMap(dict["parameters"] as! [String: Any])
                    self.parameters = model
                }
                if dict.keys.contains("requestBody") {
                    self.requestBody = dict["requestBody"] as! String
                }
                if dict.keys.contains("urlParams") {
                    var model = CreateModelRequest.Content.Request.UrlParams()
                    model.fromMap(dict["urlParams"] as! [String: Any])
                    self.urlParams = model
                }
            }
        }
        public class Response : Tea.TeaModel {
            public var embeddings: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.embeddings != nil {
                    map["embeddings"] = self.embeddings!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("embeddings") {
                    self.embeddings = dict["embeddings"] as! String
                }
            }
        }
        public var dimension: Int32?

        public var method: String?

        public var modelType: String?

        public var request: CreateModelRequest.Content.Request?

        public var response: CreateModelRequest.Content.Response?

        public var url: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.request?.validate()
            try self.response?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.dimension != nil {
                map["dimension"] = self.dimension!
            }
            if self.method != nil {
                map["method"] = self.method!
            }
            if self.modelType != nil {
                map["modelType"] = self.modelType!
            }
            if self.request != nil {
                map["request"] = self.request?.toMap()
            }
            if self.response != nil {
                map["response"] = self.response?.toMap()
            }
            if self.url != nil {
                map["url"] = self.url!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("dimension") {
                self.dimension = dict["dimension"] as! Int32
            }
            if dict.keys.contains("method") {
                self.method = dict["method"] as! String
            }
            if dict.keys.contains("modelType") {
                self.modelType = dict["modelType"] as! String
            }
            if dict.keys.contains("request") {
                var model = CreateModelRequest.Content.Request()
                model.fromMap(dict["request"] as! [String: Any])
                self.request = model
            }
            if dict.keys.contains("response") {
                var model = CreateModelRequest.Content.Response()
                model.fromMap(dict["response"] as! [String: Any])
                self.response = model
            }
            if dict.keys.contains("url") {
                self.url = dict["url"] as! String
            }
        }
    }
    public var content: CreateModelRequest.Content?

    public var name: String?

    public var dryRun: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.content?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.content != nil {
            map["content"] = self.content?.toMap()
        }
        if self.name != nil {
            map["name"] = self.name!
        }
        if self.dryRun != nil {
            map["dryRun"] = self.dryRun!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("content") {
            var model = CreateModelRequest.Content()
            model.fromMap(dict["content"] as! [String: Any])
            self.content = model
        }
        if dict.keys.contains("name") {
            self.name = dict["name"] as! String
        }
        if dict.keys.contains("dryRun") {
            self.dryRun = dict["dryRun"] as! String
        }
    }
}

public class CreateModelResponseBody : Tea.TeaModel {
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
            map["requestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("requestId") {
            self.requestId = dict["requestId"] as! String
        }
    }
}

public class CreateModelResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateModelResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = CreateModelResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class CreatePublicUrlResponseBody : Tea.TeaModel {
    public var requestId: String?

    public var result: [String: Any]?

    public override init() {
        super.init()
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
            map["requestId"] = self.requestId!
        }
        if self.result != nil {
            map["result"] = self.result!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("requestId") {
            self.requestId = dict["requestId"] as! String
        }
        if dict.keys.contains("result") {
            self.result = dict["result"] as! [String: Any]
        }
    }
}

public class CreatePublicUrlResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreatePublicUrlResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = CreatePublicUrlResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class CreateSqlInstanceRequest : Tea.TeaModel {
    public var name: String?

    public var parent: Int64?

    public override init() {
        super.init()
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
            map["name"] = self.name!
        }
        if self.parent != nil {
            map["parent"] = self.parent!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("name") {
            self.name = dict["name"] as! String
        }
        if dict.keys.contains("parent") {
            self.parent = dict["parent"] as! Int64
        }
    }
}

public class CreateSqlInstanceResponseBody : Tea.TeaModel {
    public class Result : Tea.TeaModel {
        public var gmtCreate: String?

        public var gmtModified: String?

        public var id: Int64?

        public var instanceId: Int64?

        public var isDir: Int32?

        public var name: String?

        public var parent: Int64?

        public var templateId: Int64?

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
            if self.gmtCreate != nil {
                map["gmtCreate"] = self.gmtCreate!
            }
            if self.gmtModified != nil {
                map["gmtModified"] = self.gmtModified!
            }
            if self.id != nil {
                map["id"] = self.id!
            }
            if self.instanceId != nil {
                map["instanceId"] = self.instanceId!
            }
            if self.isDir != nil {
                map["isDir"] = self.isDir!
            }
            if self.name != nil {
                map["name"] = self.name!
            }
            if self.parent != nil {
                map["parent"] = self.parent!
            }
            if self.templateId != nil {
                map["templateId"] = self.templateId!
            }
            if self.type != nil {
                map["type"] = self.type!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("gmtCreate") {
                self.gmtCreate = dict["gmtCreate"] as! String
            }
            if dict.keys.contains("gmtModified") {
                self.gmtModified = dict["gmtModified"] as! String
            }
            if dict.keys.contains("id") {
                self.id = dict["id"] as! Int64
            }
            if dict.keys.contains("instanceId") {
                self.instanceId = dict["instanceId"] as! Int64
            }
            if dict.keys.contains("isDir") {
                self.isDir = dict["isDir"] as! Int32
            }
            if dict.keys.contains("name") {
                self.name = dict["name"] as! String
            }
            if dict.keys.contains("parent") {
                self.parent = dict["parent"] as! Int64
            }
            if dict.keys.contains("templateId") {
                self.templateId = dict["templateId"] as! Int64
            }
            if dict.keys.contains("type") {
                self.type = dict["type"] as! String
            }
        }
    }
    public var requestId: String?

    public var result: CreateSqlInstanceResponseBody.Result?

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
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        if self.result != nil {
            map["result"] = self.result?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("requestId") {
            self.requestId = dict["requestId"] as! String
        }
        if dict.keys.contains("result") {
            var model = CreateSqlInstanceResponseBody.Result()
            model.fromMap(dict["result"] as! [String: Any])
            self.result = model
        }
    }
}

public class CreateSqlInstanceResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateSqlInstanceResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = CreateSqlInstanceResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class CreateTableRequest : Tea.TeaModel {
    public class DataProcessConfig : Tea.TeaModel {
        public class Params : Tea.TeaModel {
            public class SrcFieldConfig : Tea.TeaModel {
                public var ossBucket: String?

                public var ossEndpoint: String?

                public var uid: String?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.ossBucket != nil {
                        map["ossBucket"] = self.ossBucket!
                    }
                    if self.ossEndpoint != nil {
                        map["ossEndpoint"] = self.ossEndpoint!
                    }
                    if self.uid != nil {
                        map["uid"] = self.uid!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("ossBucket") {
                        self.ossBucket = dict["ossBucket"] as! String
                    }
                    if dict.keys.contains("ossEndpoint") {
                        self.ossEndpoint = dict["ossEndpoint"] as! String
                    }
                    if dict.keys.contains("uid") {
                        self.uid = dict["uid"] as! String
                    }
                }
            }
            public var srcFieldConfig: CreateTableRequest.DataProcessConfig.Params.SrcFieldConfig?

            public var vectorModal: String?

            public var vectorModel: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
                try self.srcFieldConfig?.validate()
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.srcFieldConfig != nil {
                    map["srcFieldConfig"] = self.srcFieldConfig?.toMap()
                }
                if self.vectorModal != nil {
                    map["vectorModal"] = self.vectorModal!
                }
                if self.vectorModel != nil {
                    map["vectorModel"] = self.vectorModel!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("srcFieldConfig") {
                    var model = CreateTableRequest.DataProcessConfig.Params.SrcFieldConfig()
                    model.fromMap(dict["srcFieldConfig"] as! [String: Any])
                    self.srcFieldConfig = model
                }
                if dict.keys.contains("vectorModal") {
                    self.vectorModal = dict["vectorModal"] as! String
                }
                if dict.keys.contains("vectorModel") {
                    self.vectorModel = dict["vectorModel"] as! String
                }
            }
        }
        public var dstField: String?

        public var operator_: String?

        public var params: CreateTableRequest.DataProcessConfig.Params?

        public var srcField: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.params?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.dstField != nil {
                map["dstField"] = self.dstField!
            }
            if self.operator_ != nil {
                map["operator"] = self.operator_!
            }
            if self.params != nil {
                map["params"] = self.params?.toMap()
            }
            if self.srcField != nil {
                map["srcField"] = self.srcField!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("dstField") {
                self.dstField = dict["dstField"] as! String
            }
            if dict.keys.contains("operator") {
                self.operator_ = dict["operator"] as! String
            }
            if dict.keys.contains("params") {
                var model = CreateTableRequest.DataProcessConfig.Params()
                model.fromMap(dict["params"] as! [String: Any])
                self.params = model
            }
            if dict.keys.contains("srcField") {
                self.srcField = dict["srcField"] as! String
            }
        }
    }
    public class DataSource : Tea.TeaModel {
        public class Config : Tea.TeaModel {
            public var accessKey: String?

            public var accessSecret: String?

            public var bucket: String?

            public var catalog: String?

            public var database: String?

            public var endpoint: String?

            public var ossPath: String?

            public var partition: String?

            public var project: String?

            public var table: String?

            public var tag: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.accessKey != nil {
                    map["accessKey"] = self.accessKey!
                }
                if self.accessSecret != nil {
                    map["accessSecret"] = self.accessSecret!
                }
                if self.bucket != nil {
                    map["bucket"] = self.bucket!
                }
                if self.catalog != nil {
                    map["catalog"] = self.catalog!
                }
                if self.database != nil {
                    map["database"] = self.database!
                }
                if self.endpoint != nil {
                    map["endpoint"] = self.endpoint!
                }
                if self.ossPath != nil {
                    map["ossPath"] = self.ossPath!
                }
                if self.partition != nil {
                    map["partition"] = self.partition!
                }
                if self.project != nil {
                    map["project"] = self.project!
                }
                if self.table != nil {
                    map["table"] = self.table!
                }
                if self.tag != nil {
                    map["tag"] = self.tag!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("accessKey") {
                    self.accessKey = dict["accessKey"] as! String
                }
                if dict.keys.contains("accessSecret") {
                    self.accessSecret = dict["accessSecret"] as! String
                }
                if dict.keys.contains("bucket") {
                    self.bucket = dict["bucket"] as! String
                }
                if dict.keys.contains("catalog") {
                    self.catalog = dict["catalog"] as! String
                }
                if dict.keys.contains("database") {
                    self.database = dict["database"] as! String
                }
                if dict.keys.contains("endpoint") {
                    self.endpoint = dict["endpoint"] as! String
                }
                if dict.keys.contains("ossPath") {
                    self.ossPath = dict["ossPath"] as! String
                }
                if dict.keys.contains("partition") {
                    self.partition = dict["partition"] as! String
                }
                if dict.keys.contains("project") {
                    self.project = dict["project"] as! String
                }
                if dict.keys.contains("table") {
                    self.table = dict["table"] as! String
                }
                if dict.keys.contains("tag") {
                    self.tag = dict["tag"] as! String
                }
            }
        }
        public var autoBuildIndex: Bool?

        public var config: CreateTableRequest.DataSource.Config?

        public var dataTimeSec: Int32?

        public var type: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.config?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.autoBuildIndex != nil {
                map["autoBuildIndex"] = self.autoBuildIndex!
            }
            if self.config != nil {
                map["config"] = self.config?.toMap()
            }
            if self.dataTimeSec != nil {
                map["dataTimeSec"] = self.dataTimeSec!
            }
            if self.type != nil {
                map["type"] = self.type!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("autoBuildIndex") {
                self.autoBuildIndex = dict["autoBuildIndex"] as! Bool
            }
            if dict.keys.contains("config") {
                var model = CreateTableRequest.DataSource.Config()
                model.fromMap(dict["config"] as! [String: Any])
                self.config = model
            }
            if dict.keys.contains("dataTimeSec") {
                self.dataTimeSec = dict["dataTimeSec"] as! Int32
            }
            if dict.keys.contains("type") {
                self.type = dict["type"] as! String
            }
        }
    }
    public class VectorIndex : Tea.TeaModel {
        public class AdvanceParams : Tea.TeaModel {
            public var buildIndexParams: String?

            public var linearBuildThreshold: String?

            public var minScanDocCnt: String?

            public var searchIndexParams: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.buildIndexParams != nil {
                    map["buildIndexParams"] = self.buildIndexParams!
                }
                if self.linearBuildThreshold != nil {
                    map["linearBuildThreshold"] = self.linearBuildThreshold!
                }
                if self.minScanDocCnt != nil {
                    map["minScanDocCnt"] = self.minScanDocCnt!
                }
                if self.searchIndexParams != nil {
                    map["searchIndexParams"] = self.searchIndexParams!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("buildIndexParams") {
                    self.buildIndexParams = dict["buildIndexParams"] as! String
                }
                if dict.keys.contains("linearBuildThreshold") {
                    self.linearBuildThreshold = dict["linearBuildThreshold"] as! String
                }
                if dict.keys.contains("minScanDocCnt") {
                    self.minScanDocCnt = dict["minScanDocCnt"] as! String
                }
                if dict.keys.contains("searchIndexParams") {
                    self.searchIndexParams = dict["searchIndexParams"] as! String
                }
            }
        }
        public var advanceParams: CreateTableRequest.VectorIndex.AdvanceParams?

        public var dimension: String?

        public var distanceType: String?

        public var indexName: String?

        public var namespace: String?

        public var sparseIndexField: String?

        public var sparseValueField: String?

        public var vectorField: String?

        public var vectorIndexType: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.advanceParams?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.advanceParams != nil {
                map["advanceParams"] = self.advanceParams?.toMap()
            }
            if self.dimension != nil {
                map["dimension"] = self.dimension!
            }
            if self.distanceType != nil {
                map["distanceType"] = self.distanceType!
            }
            if self.indexName != nil {
                map["indexName"] = self.indexName!
            }
            if self.namespace != nil {
                map["namespace"] = self.namespace!
            }
            if self.sparseIndexField != nil {
                map["sparseIndexField"] = self.sparseIndexField!
            }
            if self.sparseValueField != nil {
                map["sparseValueField"] = self.sparseValueField!
            }
            if self.vectorField != nil {
                map["vectorField"] = self.vectorField!
            }
            if self.vectorIndexType != nil {
                map["vectorIndexType"] = self.vectorIndexType!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("advanceParams") {
                var model = CreateTableRequest.VectorIndex.AdvanceParams()
                model.fromMap(dict["advanceParams"] as! [String: Any])
                self.advanceParams = model
            }
            if dict.keys.contains("dimension") {
                self.dimension = dict["dimension"] as! String
            }
            if dict.keys.contains("distanceType") {
                self.distanceType = dict["distanceType"] as! String
            }
            if dict.keys.contains("indexName") {
                self.indexName = dict["indexName"] as! String
            }
            if dict.keys.contains("namespace") {
                self.namespace = dict["namespace"] as! String
            }
            if dict.keys.contains("sparseIndexField") {
                self.sparseIndexField = dict["sparseIndexField"] as! String
            }
            if dict.keys.contains("sparseValueField") {
                self.sparseValueField = dict["sparseValueField"] as! String
            }
            if dict.keys.contains("vectorField") {
                self.vectorField = dict["vectorField"] as! String
            }
            if dict.keys.contains("vectorIndexType") {
                self.vectorIndexType = dict["vectorIndexType"] as! String
            }
        }
    }
    public var dataProcessConfig: [CreateTableRequest.DataProcessConfig]?

    public var dataProcessorCount: Int32?

    public var dataSource: CreateTableRequest.DataSource?

    public var fieldSchema: [String: String]?

    public var name: String?

    public var partitionCount: Int32?

    public var primaryKey: String?

    public var rawSchema: String?

    public var vectorIndex: [CreateTableRequest.VectorIndex]?

    public var dryRun: Bool?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.dataSource?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.dataProcessConfig != nil {
            var tmp : [Any] = []
            for k in self.dataProcessConfig! {
                tmp.append(k.toMap())
            }
            map["dataProcessConfig"] = tmp
        }
        if self.dataProcessorCount != nil {
            map["dataProcessorCount"] = self.dataProcessorCount!
        }
        if self.dataSource != nil {
            map["dataSource"] = self.dataSource?.toMap()
        }
        if self.fieldSchema != nil {
            map["fieldSchema"] = self.fieldSchema!
        }
        if self.name != nil {
            map["name"] = self.name!
        }
        if self.partitionCount != nil {
            map["partitionCount"] = self.partitionCount!
        }
        if self.primaryKey != nil {
            map["primaryKey"] = self.primaryKey!
        }
        if self.rawSchema != nil {
            map["rawSchema"] = self.rawSchema!
        }
        if self.vectorIndex != nil {
            var tmp : [Any] = []
            for k in self.vectorIndex! {
                tmp.append(k.toMap())
            }
            map["vectorIndex"] = tmp
        }
        if self.dryRun != nil {
            map["dryRun"] = self.dryRun!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("dataProcessConfig") {
            var tmp : [CreateTableRequest.DataProcessConfig] = []
            for v in dict["dataProcessConfig"] as! [Any] {
                var model = CreateTableRequest.DataProcessConfig()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.dataProcessConfig = tmp
        }
        if dict.keys.contains("dataProcessorCount") {
            self.dataProcessorCount = dict["dataProcessorCount"] as! Int32
        }
        if dict.keys.contains("dataSource") {
            var model = CreateTableRequest.DataSource()
            model.fromMap(dict["dataSource"] as! [String: Any])
            self.dataSource = model
        }
        if dict.keys.contains("fieldSchema") {
            self.fieldSchema = dict["fieldSchema"] as! [String: String]
        }
        if dict.keys.contains("name") {
            self.name = dict["name"] as! String
        }
        if dict.keys.contains("partitionCount") {
            self.partitionCount = dict["partitionCount"] as! Int32
        }
        if dict.keys.contains("primaryKey") {
            self.primaryKey = dict["primaryKey"] as! String
        }
        if dict.keys.contains("rawSchema") {
            self.rawSchema = dict["rawSchema"] as! String
        }
        if dict.keys.contains("vectorIndex") {
            var tmp : [CreateTableRequest.VectorIndex] = []
            for v in dict["vectorIndex"] as! [Any] {
                var model = CreateTableRequest.VectorIndex()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.vectorIndex = tmp
        }
        if dict.keys.contains("dryRun") {
            self.dryRun = dict["dryRun"] as! Bool
        }
    }
}

public class CreateTableResponseBody : Tea.TeaModel {
    public var requestId: String?

    public var result: [String: Any]?

    public override init() {
        super.init()
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
            map["requestId"] = self.requestId!
        }
        if self.result != nil {
            map["result"] = self.result!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("requestId") {
            self.requestId = dict["requestId"] as! String
        }
        if dict.keys.contains("result") {
            self.result = dict["result"] as! [String: Any]
        }
    }
}

public class CreateTableResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateTableResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = CreateTableResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DebugModelRequest : Tea.TeaModel {
    public var input: String?

    public var isOnline: String?

    public override init() {
        super.init()
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
        if self.isOnline != nil {
            map["isOnline"] = self.isOnline!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("input") {
            self.input = dict["input"] as! String
        }
        if dict.keys.contains("isOnline") {
            self.isOnline = dict["isOnline"] as! String
        }
    }
}

public class DebugModelResponseBody : Tea.TeaModel {
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
            map["requestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("requestId") {
            self.requestId = dict["requestId"] as! String
        }
    }
}

public class DebugModelResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DebugModelResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = DebugModelResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DeleteAdvanceConfigResponseBody : Tea.TeaModel {
    public var requestId: String?

    public var result: [String: Any]?

    public override init() {
        super.init()
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
            map["requestId"] = self.requestId!
        }
        if self.result != nil {
            map["result"] = self.result!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("requestId") {
            self.requestId = dict["requestId"] as! String
        }
        if dict.keys.contains("result") {
            self.result = dict["result"] as! [String: Any]
        }
    }
}

public class DeleteAdvanceConfigResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteAdvanceConfigResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = DeleteAdvanceConfigResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DeleteAliasResponseBody : Tea.TeaModel {
    public var requestId: String?

    public var result: [String: Any]?

    public override init() {
        super.init()
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
            map["requestId"] = self.requestId!
        }
        if self.result != nil {
            map["result"] = self.result!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("requestId") {
            self.requestId = dict["requestId"] as! String
        }
        if dict.keys.contains("result") {
            self.result = dict["result"] as! [String: Any]
        }
    }
}

public class DeleteAliasResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteAliasResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = DeleteAliasResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DeleteConfigDirRequest : Tea.TeaModel {
    public var dirName: String?

    public var parentFullPath: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.dirName != nil {
            map["dirName"] = self.dirName!
        }
        if self.parentFullPath != nil {
            map["parentFullPath"] = self.parentFullPath!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("dirName") {
            self.dirName = dict["dirName"] as! String
        }
        if dict.keys.contains("parentFullPath") {
            self.parentFullPath = dict["parentFullPath"] as! String
        }
    }
}

public class DeleteConfigDirResponseBody : Tea.TeaModel {
    public var requestId: String?

    public var result: [String: Any]?

    public override init() {
        super.init()
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
            map["requestId"] = self.requestId!
        }
        if self.result != nil {
            map["result"] = self.result!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("requestId") {
            self.requestId = dict["requestId"] as! String
        }
        if dict.keys.contains("result") {
            self.result = dict["result"] as! [String: Any]
        }
    }
}

public class DeleteConfigDirResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteConfigDirResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = DeleteConfigDirResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DeleteConfigFileRequest : Tea.TeaModel {
    public var fileName: String?

    public var parentFullPath: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.fileName != nil {
            map["fileName"] = self.fileName!
        }
        if self.parentFullPath != nil {
            map["parentFullPath"] = self.parentFullPath!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("fileName") {
            self.fileName = dict["fileName"] as! String
        }
        if dict.keys.contains("parentFullPath") {
            self.parentFullPath = dict["parentFullPath"] as! String
        }
    }
}

public class DeleteConfigFileResponseBody : Tea.TeaModel {
    public var requestId: String?

    public var result: [String: Any]?

    public override init() {
        super.init()
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
            map["requestId"] = self.requestId!
        }
        if self.result != nil {
            map["result"] = self.result!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("requestId") {
            self.requestId = dict["requestId"] as! String
        }
        if dict.keys.contains("result") {
            self.result = dict["result"] as! [String: Any]
        }
    }
}

public class DeleteConfigFileResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteConfigFileResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = DeleteConfigFileResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DeleteDataSourceResponseBody : Tea.TeaModel {
    public var requestId: String?

    public var result: [String: Any]?

    public override init() {
        super.init()
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
            map["requestId"] = self.requestId!
        }
        if self.result != nil {
            map["result"] = self.result!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("requestId") {
            self.requestId = dict["requestId"] as! String
        }
        if dict.keys.contains("result") {
            self.result = dict["result"] as! [String: Any]
        }
    }
}

public class DeleteDataSourceResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteDataSourceResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = DeleteDataSourceResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DeleteFolderResponseBody : Tea.TeaModel {
    public class Result : Tea.TeaModel {
        public var requestId: String?

        public var result: [String: String]?

        public override init() {
            super.init()
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
                map["requestId"] = self.requestId!
            }
            if self.result != nil {
                map["result"] = self.result!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("requestId") {
                self.requestId = dict["requestId"] as! String
            }
            if dict.keys.contains("result") {
                self.result = dict["result"] as! [String: String]
            }
        }
    }
    public var requestId: String?

    public var result: DeleteFolderResponseBody.Result?

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
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        if self.result != nil {
            map["result"] = self.result?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("requestId") {
            self.requestId = dict["requestId"] as! String
        }
        if dict.keys.contains("result") {
            var model = DeleteFolderResponseBody.Result()
            model.fromMap(dict["result"] as! [String: Any])
            self.result = model
        }
    }
}

public class DeleteFolderResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteFolderResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = DeleteFolderResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DeleteIndexRequest : Tea.TeaModel {
    public var dataSource: String?

    public var deleteDataSource: Bool?

    public override init() {
        super.init()
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
            map["dataSource"] = self.dataSource!
        }
        if self.deleteDataSource != nil {
            map["deleteDataSource"] = self.deleteDataSource!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("dataSource") {
            self.dataSource = dict["dataSource"] as! String
        }
        if dict.keys.contains("deleteDataSource") {
            self.deleteDataSource = dict["deleteDataSource"] as! Bool
        }
    }
}

public class DeleteIndexResponseBody : Tea.TeaModel {
    public var requestId: String?

    public var result: [String: Any]?

    public override init() {
        super.init()
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
            map["requestId"] = self.requestId!
        }
        if self.result != nil {
            map["result"] = self.result!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("requestId") {
            self.requestId = dict["requestId"] as! String
        }
        if dict.keys.contains("result") {
            self.result = dict["result"] as! [String: Any]
        }
    }
}

public class DeleteIndexResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteIndexResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = DeleteIndexResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DeleteIndexVersionResponseBody : Tea.TeaModel {
    public var requestId: String?

    public var result: [String: Any]?

    public override init() {
        super.init()
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
            map["requestId"] = self.requestId!
        }
        if self.result != nil {
            map["result"] = self.result!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("requestId") {
            self.requestId = dict["requestId"] as! String
        }
        if dict.keys.contains("result") {
            self.result = dict["result"] as! [String: Any]
        }
    }
}

public class DeleteIndexVersionResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteIndexVersionResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = DeleteIndexVersionResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DeleteInstanceResponseBody : Tea.TeaModel {
    public var requestId: String?

    public var result: [String: Any]?

    public override init() {
        super.init()
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
            map["requestId"] = self.requestId!
        }
        if self.result != nil {
            map["result"] = self.result!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("requestId") {
            self.requestId = dict["requestId"] as! String
        }
        if dict.keys.contains("result") {
            self.result = dict["result"] as! [String: Any]
        }
    }
}

public class DeleteInstanceResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteInstanceResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = DeleteInstanceResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DeleteModelResponseBody : Tea.TeaModel {
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
            map["requestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("requestId") {
            self.requestId = dict["requestId"] as! String
        }
    }
}

public class DeleteModelResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteModelResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = DeleteModelResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DeletePublicUrlResponseBody : Tea.TeaModel {
    public var requestId: String?

    public var result: [String: Any]?

    public override init() {
        super.init()
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
            map["requestId"] = self.requestId!
        }
        if self.result != nil {
            map["result"] = self.result!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("requestId") {
            self.requestId = dict["requestId"] as! String
        }
        if dict.keys.contains("result") {
            self.result = dict["result"] as! [String: Any]
        }
    }
}

public class DeletePublicUrlResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeletePublicUrlResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = DeletePublicUrlResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DeleteSqlInstanceResponseBody : Tea.TeaModel {
    public class Result : Tea.TeaModel {
        public var requestId: String?

        public var result: [String: String]?

        public override init() {
            super.init()
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
                map["requestId"] = self.requestId!
            }
            if self.result != nil {
                map["result"] = self.result!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("requestId") {
                self.requestId = dict["requestId"] as! String
            }
            if dict.keys.contains("result") {
                self.result = dict["result"] as! [String: String]
            }
        }
    }
    public var requestId: String?

    public var result: DeleteSqlInstanceResponseBody.Result?

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
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        if self.result != nil {
            map["result"] = self.result?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("requestId") {
            self.requestId = dict["requestId"] as! String
        }
        if dict.keys.contains("result") {
            var model = DeleteSqlInstanceResponseBody.Result()
            model.fromMap(dict["result"] as! [String: Any])
            self.result = model
        }
    }
}

public class DeleteSqlInstanceResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteSqlInstanceResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = DeleteSqlInstanceResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DeleteTableResponseBody : Tea.TeaModel {
    public var requestId: String?

    public var result: [String: Any]?

    public override init() {
        super.init()
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
            map["requestId"] = self.requestId!
        }
        if self.result != nil {
            map["result"] = self.result!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("requestId") {
            self.requestId = dict["requestId"] as! String
        }
        if dict.keys.contains("result") {
            self.result = dict["result"] as! [String: Any]
        }
    }
}

public class DeleteTableResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteTableResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = DeleteTableResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeRegionsRequest : Tea.TeaModel {
    public var acceptLanguage: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.acceptLanguage != nil {
            map["acceptLanguage"] = self.acceptLanguage!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("acceptLanguage") {
            self.acceptLanguage = dict["acceptLanguage"] as! String
        }
    }
}

public class DescribeRegionsResponseBody : Tea.TeaModel {
    public class Result : Tea.TeaModel {
        public var endpoint: String?

        public var localName: String?

        public var regionId: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.endpoint != nil {
                map["endpoint"] = self.endpoint!
            }
            if self.localName != nil {
                map["localName"] = self.localName!
            }
            if self.regionId != nil {
                map["regionId"] = self.regionId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("endpoint") {
                self.endpoint = dict["endpoint"] as! String
            }
            if dict.keys.contains("localName") {
                self.localName = dict["localName"] as! String
            }
            if dict.keys.contains("regionId") {
                self.regionId = dict["regionId"] as! String
            }
        }
    }
    public var requestId: String?

    public var result: [DescribeRegionsResponseBody.Result]?

    public override init() {
        super.init()
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
            map["requestId"] = self.requestId!
        }
        if self.result != nil {
            var tmp : [Any] = []
            for k in self.result! {
                tmp.append(k.toMap())
            }
            map["result"] = tmp
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("requestId") {
            self.requestId = dict["requestId"] as! String
        }
        if dict.keys.contains("result") {
            var tmp : [DescribeRegionsResponseBody.Result] = []
            for v in dict["result"] as! [Any] {
                var model = DescribeRegionsResponseBody.Result()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.result = tmp
        }
    }
}

public class DescribeRegionsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeRegionsResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = DescribeRegionsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ExecuteSqlInstanceRequest : Tea.TeaModel {
    public var combineParam: [String: Any]?

    public var content: String?

    public var domain: String?

    public var dynamicParam: [String: Any]?

    public var kvpair: [String: Any]?

    public var params: [String: Any]?

    public var staticParam: [String: Any]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.combineParam != nil {
            map["combineParam"] = self.combineParam!
        }
        if self.content != nil {
            map["content"] = self.content!
        }
        if self.domain != nil {
            map["domain"] = self.domain!
        }
        if self.dynamicParam != nil {
            map["dynamicParam"] = self.dynamicParam!
        }
        if self.kvpair != nil {
            map["kvpair"] = self.kvpair!
        }
        if self.params != nil {
            map["params"] = self.params!
        }
        if self.staticParam != nil {
            map["staticParam"] = self.staticParam!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("combineParam") {
            self.combineParam = dict["combineParam"] as! [String: Any]
        }
        if dict.keys.contains("content") {
            self.content = dict["content"] as! String
        }
        if dict.keys.contains("domain") {
            self.domain = dict["domain"] as! String
        }
        if dict.keys.contains("dynamicParam") {
            self.dynamicParam = dict["dynamicParam"] as! [String: Any]
        }
        if dict.keys.contains("kvpair") {
            self.kvpair = dict["kvpair"] as! [String: Any]
        }
        if dict.keys.contains("params") {
            self.params = dict["params"] as! [String: Any]
        }
        if dict.keys.contains("staticParam") {
            self.staticParam = dict["staticParam"] as! [String: Any]
        }
    }
}

public class ExecuteSqlInstanceResponseBody : Tea.TeaModel {
    public class Result : Tea.TeaModel {
        public var gmtCreate: String?

        public var gmtModified: String?

        public var id: Int64?

        public var instanceId: Int64?

        public var isDir: Int32?

        public var name: String?

        public var parent: Int64?

        public var templateId: Int64?

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
            if self.gmtCreate != nil {
                map["gmtCreate"] = self.gmtCreate!
            }
            if self.gmtModified != nil {
                map["gmtModified"] = self.gmtModified!
            }
            if self.id != nil {
                map["id"] = self.id!
            }
            if self.instanceId != nil {
                map["instanceId"] = self.instanceId!
            }
            if self.isDir != nil {
                map["isDir"] = self.isDir!
            }
            if self.name != nil {
                map["name"] = self.name!
            }
            if self.parent != nil {
                map["parent"] = self.parent!
            }
            if self.templateId != nil {
                map["templateId"] = self.templateId!
            }
            if self.type != nil {
                map["type"] = self.type!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("gmtCreate") {
                self.gmtCreate = dict["gmtCreate"] as! String
            }
            if dict.keys.contains("gmtModified") {
                self.gmtModified = dict["gmtModified"] as! String
            }
            if dict.keys.contains("id") {
                self.id = dict["id"] as! Int64
            }
            if dict.keys.contains("instanceId") {
                self.instanceId = dict["instanceId"] as! Int64
            }
            if dict.keys.contains("isDir") {
                self.isDir = dict["isDir"] as! Int32
            }
            if dict.keys.contains("name") {
                self.name = dict["name"] as! String
            }
            if dict.keys.contains("parent") {
                self.parent = dict["parent"] as! Int64
            }
            if dict.keys.contains("templateId") {
                self.templateId = dict["templateId"] as! Int64
            }
            if dict.keys.contains("type") {
                self.type = dict["type"] as! String
            }
        }
    }
    public var requestId: String?

    public var result: ExecuteSqlInstanceResponseBody.Result?

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
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        if self.result != nil {
            map["result"] = self.result?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("requestId") {
            self.requestId = dict["requestId"] as! String
        }
        if dict.keys.contains("result") {
            var model = ExecuteSqlInstanceResponseBody.Result()
            model.fromMap(dict["result"] as! [String: Any])
            self.result = model
        }
    }
}

public class ExecuteSqlInstanceResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ExecuteSqlInstanceResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = ExecuteSqlInstanceResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ForceSwitchResponseBody : Tea.TeaModel {
    public var requestId: String?

    public var result: [String: Any]?

    public override init() {
        super.init()
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
            map["requestId"] = self.requestId!
        }
        if self.result != nil {
            map["result"] = self.result!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("requestId") {
            self.requestId = dict["requestId"] as! String
        }
        if dict.keys.contains("result") {
            self.result = dict["result"] as! [String: Any]
        }
    }
}

public class ForceSwitchResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ForceSwitchResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = ForceSwitchResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetAdvanceConfigRequest : Tea.TeaModel {
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
        if self.type != nil {
            map["type"] = self.type!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("type") {
            self.type = dict["type"] as! String
        }
    }
}

public class GetAdvanceConfigResponseBody : Tea.TeaModel {
    public class Result : Tea.TeaModel {
        public class Files : Tea.TeaModel {
            public var fullPathName: String?

            public var isDir: Bool?

            public var isTemplate: Bool?

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
                if self.fullPathName != nil {
                    map["fullPathName"] = self.fullPathName!
                }
                if self.isDir != nil {
                    map["isDir"] = self.isDir!
                }
                if self.isTemplate != nil {
                    map["isTemplate"] = self.isTemplate!
                }
                if self.name != nil {
                    map["name"] = self.name!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("fullPathName") {
                    self.fullPathName = dict["fullPathName"] as! String
                }
                if dict.keys.contains("isDir") {
                    self.isDir = dict["isDir"] as! Bool
                }
                if dict.keys.contains("isTemplate") {
                    self.isTemplate = dict["isTemplate"] as! Bool
                }
                if dict.keys.contains("name") {
                    self.name = dict["name"] as! String
                }
            }
        }
        public var content: String?

        public var contentType: String?

        public var desc: String?

        public var files: [GetAdvanceConfigResponseBody.Result.Files]?

        public var name: String?

        public var status: String?

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
            if self.content != nil {
                map["content"] = self.content!
            }
            if self.contentType != nil {
                map["contentType"] = self.contentType!
            }
            if self.desc != nil {
                map["desc"] = self.desc!
            }
            if self.files != nil {
                var tmp : [Any] = []
                for k in self.files! {
                    tmp.append(k.toMap())
                }
                map["files"] = tmp
            }
            if self.name != nil {
                map["name"] = self.name!
            }
            if self.status != nil {
                map["status"] = self.status!
            }
            if self.updateTime != nil {
                map["updateTime"] = self.updateTime!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("content") {
                self.content = dict["content"] as! String
            }
            if dict.keys.contains("contentType") {
                self.contentType = dict["contentType"] as! String
            }
            if dict.keys.contains("desc") {
                self.desc = dict["desc"] as! String
            }
            if dict.keys.contains("files") {
                var tmp : [GetAdvanceConfigResponseBody.Result.Files] = []
                for v in dict["files"] as! [Any] {
                    var model = GetAdvanceConfigResponseBody.Result.Files()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.files = tmp
            }
            if dict.keys.contains("name") {
                self.name = dict["name"] as! String
            }
            if dict.keys.contains("status") {
                self.status = dict["status"] as! String
            }
            if dict.keys.contains("updateTime") {
                self.updateTime = dict["updateTime"] as! Int64
            }
        }
    }
    public var requestId: String?

    public var result: GetAdvanceConfigResponseBody.Result?

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
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        if self.result != nil {
            map["result"] = self.result?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("requestId") {
            self.requestId = dict["requestId"] as! String
        }
        if dict.keys.contains("result") {
            var model = GetAdvanceConfigResponseBody.Result()
            model.fromMap(dict["result"] as! [String: Any])
            self.result = model
        }
    }
}

public class GetAdvanceConfigResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetAdvanceConfigResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = GetAdvanceConfigResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetAdvanceConfigFileRequest : Tea.TeaModel {
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
        if self.fileName != nil {
            map["fileName"] = self.fileName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("fileName") {
            self.fileName = dict["fileName"] as! String
        }
    }
}

public class GetAdvanceConfigFileResponseBody : Tea.TeaModel {
    public class Result : Tea.TeaModel {
        public var content: String?

        public override init() {
            super.init()
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
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("content") {
                self.content = dict["content"] as! String
            }
        }
    }
    public var requestId: String?

    public var result: GetAdvanceConfigFileResponseBody.Result?

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
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        if self.result != nil {
            map["result"] = self.result?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("requestId") {
            self.requestId = dict["requestId"] as! String
        }
        if dict.keys.contains("result") {
            var model = GetAdvanceConfigFileResponseBody.Result()
            model.fromMap(dict["result"] as! [String: Any])
            self.result = model
        }
    }
}

public class GetAdvanceConfigFileResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetAdvanceConfigFileResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = GetAdvanceConfigFileResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetClusterResponseBody : Tea.TeaModel {
    public class Result : Tea.TeaModel {
        public class DataNode : Tea.TeaModel {
            public var name: String?

            public var number: Int32?

            public var partition: Int32?

            public override init() {
                super.init()
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
                    map["name"] = self.name!
                }
                if self.number != nil {
                    map["number"] = self.number!
                }
                if self.partition != nil {
                    map["partition"] = self.partition!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("name") {
                    self.name = dict["name"] as! String
                }
                if dict.keys.contains("number") {
                    self.number = dict["number"] as! Int32
                }
                if dict.keys.contains("partition") {
                    self.partition = dict["partition"] as! Int32
                }
            }
        }
        public class QueryNode : Tea.TeaModel {
            public var name: String?

            public var number: Int32?

            public var partition: Int32?

            public override init() {
                super.init()
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
                    map["name"] = self.name!
                }
                if self.number != nil {
                    map["number"] = self.number!
                }
                if self.partition != nil {
                    map["partition"] = self.partition!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("name") {
                    self.name = dict["name"] as! String
                }
                if dict.keys.contains("number") {
                    self.number = dict["number"] as! Int32
                }
                if dict.keys.contains("partition") {
                    self.partition = dict["partition"] as! Int32
                }
            }
        }
        public var config: [String: [String: Any]]?

        public var configUpdateTime: String?

        public var createTime: String?

        public var currentAdvanceConfigVersion: String?

        public var currentOnlineConfigVersion: String?

        public var dataNode: GetClusterResponseBody.Result.DataNode?

        public var description_: String?

        public var latestAdvanceConfigVersion: String?

        public var latestOnlineConfigVersion: String?

        public var name: String?

        public var queryNode: GetClusterResponseBody.Result.QueryNode?

        public var status: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.dataNode?.validate()
            try self.queryNode?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.config != nil {
                map["config"] = self.config!
            }
            if self.configUpdateTime != nil {
                map["configUpdateTime"] = self.configUpdateTime!
            }
            if self.createTime != nil {
                map["createTime"] = self.createTime!
            }
            if self.currentAdvanceConfigVersion != nil {
                map["currentAdvanceConfigVersion"] = self.currentAdvanceConfigVersion!
            }
            if self.currentOnlineConfigVersion != nil {
                map["currentOnlineConfigVersion"] = self.currentOnlineConfigVersion!
            }
            if self.dataNode != nil {
                map["dataNode"] = self.dataNode?.toMap()
            }
            if self.description_ != nil {
                map["description"] = self.description_!
            }
            if self.latestAdvanceConfigVersion != nil {
                map["latestAdvanceConfigVersion"] = self.latestAdvanceConfigVersion!
            }
            if self.latestOnlineConfigVersion != nil {
                map["latestOnlineConfigVersion"] = self.latestOnlineConfigVersion!
            }
            if self.name != nil {
                map["name"] = self.name!
            }
            if self.queryNode != nil {
                map["queryNode"] = self.queryNode?.toMap()
            }
            if self.status != nil {
                map["status"] = self.status!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("config") {
                self.config = dict["config"] as! [String: [String: Any]]
            }
            if dict.keys.contains("configUpdateTime") {
                self.configUpdateTime = dict["configUpdateTime"] as! String
            }
            if dict.keys.contains("createTime") {
                self.createTime = dict["createTime"] as! String
            }
            if dict.keys.contains("currentAdvanceConfigVersion") {
                self.currentAdvanceConfigVersion = dict["currentAdvanceConfigVersion"] as! String
            }
            if dict.keys.contains("currentOnlineConfigVersion") {
                self.currentOnlineConfigVersion = dict["currentOnlineConfigVersion"] as! String
            }
            if dict.keys.contains("dataNode") {
                var model = GetClusterResponseBody.Result.DataNode()
                model.fromMap(dict["dataNode"] as! [String: Any])
                self.dataNode = model
            }
            if dict.keys.contains("description") {
                self.description_ = dict["description"] as! String
            }
            if dict.keys.contains("latestAdvanceConfigVersion") {
                self.latestAdvanceConfigVersion = dict["latestAdvanceConfigVersion"] as! String
            }
            if dict.keys.contains("latestOnlineConfigVersion") {
                self.latestOnlineConfigVersion = dict["latestOnlineConfigVersion"] as! String
            }
            if dict.keys.contains("name") {
                self.name = dict["name"] as! String
            }
            if dict.keys.contains("queryNode") {
                var model = GetClusterResponseBody.Result.QueryNode()
                model.fromMap(dict["queryNode"] as! [String: Any])
                self.queryNode = model
            }
            if dict.keys.contains("status") {
                self.status = dict["status"] as! String
            }
        }
    }
    public var requestId: String?

    public var result: GetClusterResponseBody.Result?

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
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        if self.result != nil {
            map["result"] = self.result?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("requestId") {
            self.requestId = dict["requestId"] as! String
        }
        if dict.keys.contains("result") {
            var model = GetClusterResponseBody.Result()
            model.fromMap(dict["result"] as! [String: Any])
            self.result = model
        }
    }
}

public class GetClusterResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetClusterResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = GetClusterResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetClusterRunTimeInfoResponseBody : Tea.TeaModel {
    public class Result : Tea.TeaModel {
        public class DataNodes : Tea.TeaModel {
            public class ConfigStatusList : Tea.TeaModel {
                public var configUpdateTime: String?

                public var donePercent: Int32?

                public var doneSize: Int32?

                public var name: String?

                public var totalSize: Int32?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.configUpdateTime != nil {
                        map["configUpdateTime"] = self.configUpdateTime!
                    }
                    if self.donePercent != nil {
                        map["donePercent"] = self.donePercent!
                    }
                    if self.doneSize != nil {
                        map["doneSize"] = self.doneSize!
                    }
                    if self.name != nil {
                        map["name"] = self.name!
                    }
                    if self.totalSize != nil {
                        map["totalSize"] = self.totalSize!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("configUpdateTime") {
                        self.configUpdateTime = dict["configUpdateTime"] as! String
                    }
                    if dict.keys.contains("donePercent") {
                        self.donePercent = dict["donePercent"] as! Int32
                    }
                    if dict.keys.contains("doneSize") {
                        self.doneSize = dict["doneSize"] as! Int32
                    }
                    if dict.keys.contains("name") {
                        self.name = dict["name"] as! String
                    }
                    if dict.keys.contains("totalSize") {
                        self.totalSize = dict["totalSize"] as! Int32
                    }
                }
            }
            public class DataStatusList : Tea.TeaModel {
                public class AdvanceConfigInfo : Tea.TeaModel {
                    public var configMetaName: String?

                    public var version: Int64?

                    public override init() {
                        super.init()
                    }

                    public init(_ dict: [String: Any]) {
                        super.init()
                        self.fromMap(dict)
                    }

                    public override func validate() throws -> Void {
                    }

                    public override func toMap() -> [String : Any] {
                        var map = super.toMap()
                        if self.configMetaName != nil {
                            map["configMetaName"] = self.configMetaName!
                        }
                        if self.version != nil {
                            map["version"] = self.version!
                        }
                        return map
                    }

                    public override func fromMap(_ dict: [String: Any]) -> Void {
                        if dict.keys.contains("configMetaName") {
                            self.configMetaName = dict["configMetaName"] as! String
                        }
                        if dict.keys.contains("version") {
                            self.version = dict["version"] as! Int64
                        }
                    }
                }
                public class IndexConfigInfo : Tea.TeaModel {
                    public var configMetaName: String?

                    public var version: Int64?

                    public override init() {
                        super.init()
                    }

                    public init(_ dict: [String: Any]) {
                        super.init()
                        self.fromMap(dict)
                    }

                    public override func validate() throws -> Void {
                    }

                    public override func toMap() -> [String : Any] {
                        var map = super.toMap()
                        if self.configMetaName != nil {
                            map["configMetaName"] = self.configMetaName!
                        }
                        if self.version != nil {
                            map["version"] = self.version!
                        }
                        return map
                    }

                    public override func fromMap(_ dict: [String: Any]) -> Void {
                        if dict.keys.contains("configMetaName") {
                            self.configMetaName = dict["configMetaName"] as! String
                        }
                        if dict.keys.contains("version") {
                            self.version = dict["version"] as! Int64
                        }
                    }
                }
                public var advanceConfigInfo: GetClusterRunTimeInfoResponseBody.Result.DataNodes.DataStatusList.AdvanceConfigInfo?

                public var deployFailedWorker: [String]?

                public var docSize: Int32?

                public var donePercent: Int32?

                public var doneSize: Int32?

                public var errorMsg: String?

                public var fullUpdateTime: String?

                public var fullVersion: Int64?

                public var incUpdateTime: String?

                public var incVersion: Int64?

                public var indexConfigInfo: GetClusterRunTimeInfoResponseBody.Result.DataNodes.DataStatusList.IndexConfigInfo?

                public var indexSize: Int64?

                public var lackDiskWorker: [String]?

                public var lackMemWorker: [String]?

                public var name: String?

                public var totalSize: Int32?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                    try self.advanceConfigInfo?.validate()
                    try self.indexConfigInfo?.validate()
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.advanceConfigInfo != nil {
                        map["advanceConfigInfo"] = self.advanceConfigInfo?.toMap()
                    }
                    if self.deployFailedWorker != nil {
                        map["deployFailedWorker"] = self.deployFailedWorker!
                    }
                    if self.docSize != nil {
                        map["docSize"] = self.docSize!
                    }
                    if self.donePercent != nil {
                        map["donePercent"] = self.donePercent!
                    }
                    if self.doneSize != nil {
                        map["doneSize"] = self.doneSize!
                    }
                    if self.errorMsg != nil {
                        map["errorMsg"] = self.errorMsg!
                    }
                    if self.fullUpdateTime != nil {
                        map["fullUpdateTime"] = self.fullUpdateTime!
                    }
                    if self.fullVersion != nil {
                        map["fullVersion"] = self.fullVersion!
                    }
                    if self.incUpdateTime != nil {
                        map["incUpdateTime"] = self.incUpdateTime!
                    }
                    if self.incVersion != nil {
                        map["incVersion"] = self.incVersion!
                    }
                    if self.indexConfigInfo != nil {
                        map["indexConfigInfo"] = self.indexConfigInfo?.toMap()
                    }
                    if self.indexSize != nil {
                        map["indexSize"] = self.indexSize!
                    }
                    if self.lackDiskWorker != nil {
                        map["lackDiskWorker"] = self.lackDiskWorker!
                    }
                    if self.lackMemWorker != nil {
                        map["lackMemWorker"] = self.lackMemWorker!
                    }
                    if self.name != nil {
                        map["name"] = self.name!
                    }
                    if self.totalSize != nil {
                        map["totalSize"] = self.totalSize!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("advanceConfigInfo") {
                        var model = GetClusterRunTimeInfoResponseBody.Result.DataNodes.DataStatusList.AdvanceConfigInfo()
                        model.fromMap(dict["advanceConfigInfo"] as! [String: Any])
                        self.advanceConfigInfo = model
                    }
                    if dict.keys.contains("deployFailedWorker") {
                        self.deployFailedWorker = dict["deployFailedWorker"] as! [String]
                    }
                    if dict.keys.contains("docSize") {
                        self.docSize = dict["docSize"] as! Int32
                    }
                    if dict.keys.contains("donePercent") {
                        self.donePercent = dict["donePercent"] as! Int32
                    }
                    if dict.keys.contains("doneSize") {
                        self.doneSize = dict["doneSize"] as! Int32
                    }
                    if dict.keys.contains("errorMsg") {
                        self.errorMsg = dict["errorMsg"] as! String
                    }
                    if dict.keys.contains("fullUpdateTime") {
                        self.fullUpdateTime = dict["fullUpdateTime"] as! String
                    }
                    if dict.keys.contains("fullVersion") {
                        self.fullVersion = dict["fullVersion"] as! Int64
                    }
                    if dict.keys.contains("incUpdateTime") {
                        self.incUpdateTime = dict["incUpdateTime"] as! String
                    }
                    if dict.keys.contains("incVersion") {
                        self.incVersion = dict["incVersion"] as! Int64
                    }
                    if dict.keys.contains("indexConfigInfo") {
                        var model = GetClusterRunTimeInfoResponseBody.Result.DataNodes.DataStatusList.IndexConfigInfo()
                        model.fromMap(dict["indexConfigInfo"] as! [String: Any])
                        self.indexConfigInfo = model
                    }
                    if dict.keys.contains("indexSize") {
                        self.indexSize = dict["indexSize"] as! Int64
                    }
                    if dict.keys.contains("lackDiskWorker") {
                        self.lackDiskWorker = dict["lackDiskWorker"] as! [String]
                    }
                    if dict.keys.contains("lackMemWorker") {
                        self.lackMemWorker = dict["lackMemWorker"] as! [String]
                    }
                    if dict.keys.contains("name") {
                        self.name = dict["name"] as! String
                    }
                    if dict.keys.contains("totalSize") {
                        self.totalSize = dict["totalSize"] as! Int32
                    }
                }
            }
            public class ServiceStatus : Tea.TeaModel {
                public var donePercent: Int32?

                public var doneSize: Int32?

                public var name: String?

                public var totalSize: Int32?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.donePercent != nil {
                        map["donePercent"] = self.donePercent!
                    }
                    if self.doneSize != nil {
                        map["doneSize"] = self.doneSize!
                    }
                    if self.name != nil {
                        map["name"] = self.name!
                    }
                    if self.totalSize != nil {
                        map["totalSize"] = self.totalSize!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("donePercent") {
                        self.donePercent = dict["donePercent"] as! Int32
                    }
                    if dict.keys.contains("doneSize") {
                        self.doneSize = dict["doneSize"] as! Int32
                    }
                    if dict.keys.contains("name") {
                        self.name = dict["name"] as! String
                    }
                    if dict.keys.contains("totalSize") {
                        self.totalSize = dict["totalSize"] as! Int32
                    }
                }
            }
            public var configStatusList: [GetClusterRunTimeInfoResponseBody.Result.DataNodes.ConfigStatusList]?

            public var dataStatusList: [GetClusterRunTimeInfoResponseBody.Result.DataNodes.DataStatusList]?

            public var serviceStatus: GetClusterRunTimeInfoResponseBody.Result.DataNodes.ServiceStatus?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
                try self.serviceStatus?.validate()
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.configStatusList != nil {
                    var tmp : [Any] = []
                    for k in self.configStatusList! {
                        tmp.append(k.toMap())
                    }
                    map["configStatusList"] = tmp
                }
                if self.dataStatusList != nil {
                    var tmp : [Any] = []
                    for k in self.dataStatusList! {
                        tmp.append(k.toMap())
                    }
                    map["dataStatusList"] = tmp
                }
                if self.serviceStatus != nil {
                    map["serviceStatus"] = self.serviceStatus?.toMap()
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("configStatusList") {
                    var tmp : [GetClusterRunTimeInfoResponseBody.Result.DataNodes.ConfigStatusList] = []
                    for v in dict["configStatusList"] as! [Any] {
                        var model = GetClusterRunTimeInfoResponseBody.Result.DataNodes.ConfigStatusList()
                        if v != nil {
                            model.fromMap(v as! [String: Any])
                        }
                        tmp.append(model)
                    }
                    self.configStatusList = tmp
                }
                if dict.keys.contains("dataStatusList") {
                    var tmp : [GetClusterRunTimeInfoResponseBody.Result.DataNodes.DataStatusList] = []
                    for v in dict["dataStatusList"] as! [Any] {
                        var model = GetClusterRunTimeInfoResponseBody.Result.DataNodes.DataStatusList()
                        if v != nil {
                            model.fromMap(v as! [String: Any])
                        }
                        tmp.append(model)
                    }
                    self.dataStatusList = tmp
                }
                if dict.keys.contains("serviceStatus") {
                    var model = GetClusterRunTimeInfoResponseBody.Result.DataNodes.ServiceStatus()
                    model.fromMap(dict["serviceStatus"] as! [String: Any])
                    self.serviceStatus = model
                }
            }
        }
        public class QueryNode : Tea.TeaModel {
            public class ConfigStatusList : Tea.TeaModel {
                public var configUpdateTime: String?

                public var donePercent: Int32?

                public var doneSize: Int32?

                public var name: String?

                public var totalSize: Int32?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.configUpdateTime != nil {
                        map["configUpdateTime"] = self.configUpdateTime!
                    }
                    if self.donePercent != nil {
                        map["donePercent"] = self.donePercent!
                    }
                    if self.doneSize != nil {
                        map["doneSize"] = self.doneSize!
                    }
                    if self.name != nil {
                        map["name"] = self.name!
                    }
                    if self.totalSize != nil {
                        map["totalSize"] = self.totalSize!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("configUpdateTime") {
                        self.configUpdateTime = dict["configUpdateTime"] as! String
                    }
                    if dict.keys.contains("donePercent") {
                        self.donePercent = dict["donePercent"] as! Int32
                    }
                    if dict.keys.contains("doneSize") {
                        self.doneSize = dict["doneSize"] as! Int32
                    }
                    if dict.keys.contains("name") {
                        self.name = dict["name"] as! String
                    }
                    if dict.keys.contains("totalSize") {
                        self.totalSize = dict["totalSize"] as! Int32
                    }
                }
            }
            public class ServiceStatus : Tea.TeaModel {
                public var donePercent: Int32?

                public var doneSize: Int32?

                public var name: String?

                public var totalSize: Int32?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.donePercent != nil {
                        map["donePercent"] = self.donePercent!
                    }
                    if self.doneSize != nil {
                        map["doneSize"] = self.doneSize!
                    }
                    if self.name != nil {
                        map["name"] = self.name!
                    }
                    if self.totalSize != nil {
                        map["totalSize"] = self.totalSize!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("donePercent") {
                        self.donePercent = dict["donePercent"] as! Int32
                    }
                    if dict.keys.contains("doneSize") {
                        self.doneSize = dict["doneSize"] as! Int32
                    }
                    if dict.keys.contains("name") {
                        self.name = dict["name"] as! String
                    }
                    if dict.keys.contains("totalSize") {
                        self.totalSize = dict["totalSize"] as! Int32
                    }
                }
            }
            public var configStatusList: [GetClusterRunTimeInfoResponseBody.Result.QueryNode.ConfigStatusList]?

            public var serviceStatus: GetClusterRunTimeInfoResponseBody.Result.QueryNode.ServiceStatus?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
                try self.serviceStatus?.validate()
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.configStatusList != nil {
                    var tmp : [Any] = []
                    for k in self.configStatusList! {
                        tmp.append(k.toMap())
                    }
                    map["configStatusList"] = tmp
                }
                if self.serviceStatus != nil {
                    map["serviceStatus"] = self.serviceStatus?.toMap()
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("configStatusList") {
                    var tmp : [GetClusterRunTimeInfoResponseBody.Result.QueryNode.ConfigStatusList] = []
                    for v in dict["configStatusList"] as! [Any] {
                        var model = GetClusterRunTimeInfoResponseBody.Result.QueryNode.ConfigStatusList()
                        if v != nil {
                            model.fromMap(v as! [String: Any])
                        }
                        tmp.append(model)
                    }
                    self.configStatusList = tmp
                }
                if dict.keys.contains("serviceStatus") {
                    var model = GetClusterRunTimeInfoResponseBody.Result.QueryNode.ServiceStatus()
                    model.fromMap(dict["serviceStatus"] as! [String: Any])
                    self.serviceStatus = model
                }
            }
        }
        public var clusterName: String?

        public var dataNodes: [GetClusterRunTimeInfoResponseBody.Result.DataNodes]?

        public var queryNode: GetClusterRunTimeInfoResponseBody.Result.QueryNode?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.queryNode?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.clusterName != nil {
                map["clusterName"] = self.clusterName!
            }
            if self.dataNodes != nil {
                var tmp : [Any] = []
                for k in self.dataNodes! {
                    tmp.append(k.toMap())
                }
                map["dataNodes"] = tmp
            }
            if self.queryNode != nil {
                map["queryNode"] = self.queryNode?.toMap()
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("clusterName") {
                self.clusterName = dict["clusterName"] as! String
            }
            if dict.keys.contains("dataNodes") {
                var tmp : [GetClusterRunTimeInfoResponseBody.Result.DataNodes] = []
                for v in dict["dataNodes"] as! [Any] {
                    var model = GetClusterRunTimeInfoResponseBody.Result.DataNodes()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.dataNodes = tmp
            }
            if dict.keys.contains("queryNode") {
                var model = GetClusterRunTimeInfoResponseBody.Result.QueryNode()
                model.fromMap(dict["queryNode"] as! [String: Any])
                self.queryNode = model
            }
        }
    }
    public var requestId: String?

    public var result: [GetClusterRunTimeInfoResponseBody.Result]?

    public override init() {
        super.init()
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
            map["requestId"] = self.requestId!
        }
        if self.result != nil {
            var tmp : [Any] = []
            for k in self.result! {
                tmp.append(k.toMap())
            }
            map["result"] = tmp
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("requestId") {
            self.requestId = dict["requestId"] as! String
        }
        if dict.keys.contains("result") {
            var tmp : [GetClusterRunTimeInfoResponseBody.Result] = []
            for v in dict["result"] as! [Any] {
                var model = GetClusterRunTimeInfoResponseBody.Result()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.result = tmp
        }
    }
}

public class GetClusterRunTimeInfoResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetClusterRunTimeInfoResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = GetClusterRunTimeInfoResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetDataSourceResponseBody : Tea.TeaModel {
    public class Result : Tea.TeaModel {
        public var domain: String?

        public var indexes: [String]?

        public var lastFulTime: Int64?

        public var name: String?

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
            if self.domain != nil {
                map["domain"] = self.domain!
            }
            if self.indexes != nil {
                map["indexes"] = self.indexes!
            }
            if self.lastFulTime != nil {
                map["lastFulTime"] = self.lastFulTime!
            }
            if self.name != nil {
                map["name"] = self.name!
            }
            if self.status != nil {
                map["status"] = self.status!
            }
            if self.type != nil {
                map["type"] = self.type!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("domain") {
                self.domain = dict["domain"] as! String
            }
            if dict.keys.contains("indexes") {
                self.indexes = dict["indexes"] as! [String]
            }
            if dict.keys.contains("lastFulTime") {
                self.lastFulTime = dict["lastFulTime"] as! Int64
            }
            if dict.keys.contains("name") {
                self.name = dict["name"] as! String
            }
            if dict.keys.contains("status") {
                self.status = dict["status"] as! String
            }
            if dict.keys.contains("type") {
                self.type = dict["type"] as! String
            }
        }
    }
    public var requestId: String?

    public var result: GetDataSourceResponseBody.Result?

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
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        if self.result != nil {
            map["result"] = self.result?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("requestId") {
            self.requestId = dict["requestId"] as! String
        }
        if dict.keys.contains("result") {
            var model = GetDataSourceResponseBody.Result()
            model.fromMap(dict["result"] as! [String: Any])
            self.result = model
        }
    }
}

public class GetDataSourceResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetDataSourceResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = GetDataSourceResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetDataSourceDeployResponseBody : Tea.TeaModel {
    public class Result : Tea.TeaModel {
        public class Extend : Tea.TeaModel {
            public class Hdfs : Tea.TeaModel {
                public var path: String?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.path != nil {
                        map["path"] = self.path!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("path") {
                        self.path = dict["path"] as! String
                    }
                }
            }
            public class Odps : Tea.TeaModel {
                public var partitions: [String: String]?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.partitions != nil {
                        map["partitions"] = self.partitions!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("partitions") {
                        self.partitions = dict["partitions"] as! [String: String]
                    }
                }
            }
            public class Oss : Tea.TeaModel {
                public var path: String?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.path != nil {
                        map["path"] = self.path!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("path") {
                        self.path = dict["path"] as! String
                    }
                }
            }
            public class Saro : Tea.TeaModel {
                public var path: String?

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
                    if self.path != nil {
                        map["path"] = self.path!
                    }
                    if self.version != nil {
                        map["version"] = self.version!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("path") {
                        self.path = dict["path"] as! String
                    }
                    if dict.keys.contains("version") {
                        self.version = dict["version"] as! String
                    }
                }
            }
            public var hdfs: GetDataSourceDeployResponseBody.Result.Extend.Hdfs?

            public var odps: GetDataSourceDeployResponseBody.Result.Extend.Odps?

            public var oss: GetDataSourceDeployResponseBody.Result.Extend.Oss?

            public var saro: GetDataSourceDeployResponseBody.Result.Extend.Saro?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
                try self.hdfs?.validate()
                try self.odps?.validate()
                try self.oss?.validate()
                try self.saro?.validate()
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.hdfs != nil {
                    map["hdfs"] = self.hdfs?.toMap()
                }
                if self.odps != nil {
                    map["odps"] = self.odps?.toMap()
                }
                if self.oss != nil {
                    map["oss"] = self.oss?.toMap()
                }
                if self.saro != nil {
                    map["saro"] = self.saro?.toMap()
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("hdfs") {
                    var model = GetDataSourceDeployResponseBody.Result.Extend.Hdfs()
                    model.fromMap(dict["hdfs"] as! [String: Any])
                    self.hdfs = model
                }
                if dict.keys.contains("odps") {
                    var model = GetDataSourceDeployResponseBody.Result.Extend.Odps()
                    model.fromMap(dict["odps"] as! [String: Any])
                    self.odps = model
                }
                if dict.keys.contains("oss") {
                    var model = GetDataSourceDeployResponseBody.Result.Extend.Oss()
                    model.fromMap(dict["oss"] as! [String: Any])
                    self.oss = model
                }
                if dict.keys.contains("saro") {
                    var model = GetDataSourceDeployResponseBody.Result.Extend.Saro()
                    model.fromMap(dict["saro"] as! [String: Any])
                    self.saro = model
                }
            }
        }
        public class Processor : Tea.TeaModel {
            public var args: String?

            public var resource: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.args != nil {
                    map["args"] = self.args!
                }
                if self.resource != nil {
                    map["resource"] = self.resource!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("args") {
                    self.args = dict["args"] as! String
                }
                if dict.keys.contains("resource") {
                    self.resource = dict["resource"] as! String
                }
            }
        }
        public class Storage : Tea.TeaModel {
            public var accessKey: String?

            public var accessSecret: String?

            public var bucket: String?

            public var catalog: String?

            public var database: String?

            public var endpoint: String?

            public var namespace: String?

            public var ossPath: String?

            public var partition: String?

            public var path: String?

            public var project: String?

            public var table: String?

            public var tag: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.accessKey != nil {
                    map["accessKey"] = self.accessKey!
                }
                if self.accessSecret != nil {
                    map["accessSecret"] = self.accessSecret!
                }
                if self.bucket != nil {
                    map["bucket"] = self.bucket!
                }
                if self.catalog != nil {
                    map["catalog"] = self.catalog!
                }
                if self.database != nil {
                    map["database"] = self.database!
                }
                if self.endpoint != nil {
                    map["endpoint"] = self.endpoint!
                }
                if self.namespace != nil {
                    map["namespace"] = self.namespace!
                }
                if self.ossPath != nil {
                    map["ossPath"] = self.ossPath!
                }
                if self.partition != nil {
                    map["partition"] = self.partition!
                }
                if self.path != nil {
                    map["path"] = self.path!
                }
                if self.project != nil {
                    map["project"] = self.project!
                }
                if self.table != nil {
                    map["table"] = self.table!
                }
                if self.tag != nil {
                    map["tag"] = self.tag!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("accessKey") {
                    self.accessKey = dict["accessKey"] as! String
                }
                if dict.keys.contains("accessSecret") {
                    self.accessSecret = dict["accessSecret"] as! String
                }
                if dict.keys.contains("bucket") {
                    self.bucket = dict["bucket"] as! String
                }
                if dict.keys.contains("catalog") {
                    self.catalog = dict["catalog"] as! String
                }
                if dict.keys.contains("database") {
                    self.database = dict["database"] as! String
                }
                if dict.keys.contains("endpoint") {
                    self.endpoint = dict["endpoint"] as! String
                }
                if dict.keys.contains("namespace") {
                    self.namespace = dict["namespace"] as! String
                }
                if dict.keys.contains("ossPath") {
                    self.ossPath = dict["ossPath"] as! String
                }
                if dict.keys.contains("partition") {
                    self.partition = dict["partition"] as! String
                }
                if dict.keys.contains("path") {
                    self.path = dict["path"] as! String
                }
                if dict.keys.contains("project") {
                    self.project = dict["project"] as! String
                }
                if dict.keys.contains("table") {
                    self.table = dict["table"] as! String
                }
                if dict.keys.contains("tag") {
                    self.tag = dict["tag"] as! String
                }
            }
        }
        public class Swift : Tea.TeaModel {
            public var topic: String?

            public var zk: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.topic != nil {
                    map["topic"] = self.topic!
                }
                if self.zk != nil {
                    map["zk"] = self.zk!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("topic") {
                    self.topic = dict["topic"] as! String
                }
                if dict.keys.contains("zk") {
                    self.zk = dict["zk"] as! String
                }
            }
        }
        public var autoBuildIndex: Bool?

        public var extend: GetDataSourceDeployResponseBody.Result.Extend?

        public var processor: GetDataSourceDeployResponseBody.Result.Processor?

        public var storage: GetDataSourceDeployResponseBody.Result.Storage?

        public var swift: GetDataSourceDeployResponseBody.Result.Swift?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.extend?.validate()
            try self.processor?.validate()
            try self.storage?.validate()
            try self.swift?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.autoBuildIndex != nil {
                map["autoBuildIndex"] = self.autoBuildIndex!
            }
            if self.extend != nil {
                map["extend"] = self.extend?.toMap()
            }
            if self.processor != nil {
                map["processor"] = self.processor?.toMap()
            }
            if self.storage != nil {
                map["storage"] = self.storage?.toMap()
            }
            if self.swift != nil {
                map["swift"] = self.swift?.toMap()
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("autoBuildIndex") {
                self.autoBuildIndex = dict["autoBuildIndex"] as! Bool
            }
            if dict.keys.contains("extend") {
                var model = GetDataSourceDeployResponseBody.Result.Extend()
                model.fromMap(dict["extend"] as! [String: Any])
                self.extend = model
            }
            if dict.keys.contains("processor") {
                var model = GetDataSourceDeployResponseBody.Result.Processor()
                model.fromMap(dict["processor"] as! [String: Any])
                self.processor = model
            }
            if dict.keys.contains("storage") {
                var model = GetDataSourceDeployResponseBody.Result.Storage()
                model.fromMap(dict["storage"] as! [String: Any])
                self.storage = model
            }
            if dict.keys.contains("swift") {
                var model = GetDataSourceDeployResponseBody.Result.Swift()
                model.fromMap(dict["swift"] as! [String: Any])
                self.swift = model
            }
        }
    }
    public var requestId: String?

    public var result: GetDataSourceDeployResponseBody.Result?

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
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        if self.result != nil {
            map["result"] = self.result?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("requestId") {
            self.requestId = dict["requestId"] as! String
        }
        if dict.keys.contains("result") {
            var model = GetDataSourceDeployResponseBody.Result()
            model.fromMap(dict["result"] as! [String: Any])
            self.result = model
        }
    }
}

public class GetDataSourceDeployResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetDataSourceDeployResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = GetDataSourceDeployResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetDatabaseSchemaResponseBody : Tea.TeaModel {
    public class Result : Tea.TeaModel {
        public var fieldName: String?

        public var fieldType: String?

        public var fieldTypeDetail: [String: Any]?

        public var indexName: String?

        public var indexType: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.fieldName != nil {
                map["fieldName"] = self.fieldName!
            }
            if self.fieldType != nil {
                map["fieldType"] = self.fieldType!
            }
            if self.fieldTypeDetail != nil {
                map["fieldTypeDetail"] = self.fieldTypeDetail!
            }
            if self.indexName != nil {
                map["indexName"] = self.indexName!
            }
            if self.indexType != nil {
                map["indexType"] = self.indexType!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("fieldName") {
                self.fieldName = dict["fieldName"] as! String
            }
            if dict.keys.contains("fieldType") {
                self.fieldType = dict["fieldType"] as! String
            }
            if dict.keys.contains("fieldTypeDetail") {
                self.fieldTypeDetail = dict["fieldTypeDetail"] as! [String: Any]
            }
            if dict.keys.contains("indexName") {
                self.indexName = dict["indexName"] as! String
            }
            if dict.keys.contains("indexType") {
                self.indexType = dict["indexType"] as! String
            }
        }
    }
    public var requestId: String?

    public var result: [GetDatabaseSchemaResponseBody.Result]?

    public override init() {
        super.init()
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
            map["requestId"] = self.requestId!
        }
        if self.result != nil {
            var tmp : [Any] = []
            for k in self.result! {
                tmp.append(k.toMap())
            }
            map["result"] = tmp
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("requestId") {
            self.requestId = dict["requestId"] as! String
        }
        if dict.keys.contains("result") {
            var tmp : [GetDatabaseSchemaResponseBody.Result] = []
            for v in dict["result"] as! [Any] {
                var model = GetDatabaseSchemaResponseBody.Result()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.result = tmp
        }
    }
}

public class GetDatabaseSchemaResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetDatabaseSchemaResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = GetDatabaseSchemaResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetDeployGraphResponseBody : Tea.TeaModel {
    public class Result : Tea.TeaModel {
        public class Graph : Tea.TeaModel {
            public class IndexMetas : Tea.TeaModel {
                public var domainName: String?

                public var name: String?

                public var tableDeployId: Int64?

                public var tableName: String?

                public var tag: String?

                public var zoneName: String?

                public override init() {
                    super.init()
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
                        map["domainName"] = self.domainName!
                    }
                    if self.name != nil {
                        map["name"] = self.name!
                    }
                    if self.tableDeployId != nil {
                        map["tableDeployId"] = self.tableDeployId!
                    }
                    if self.tableName != nil {
                        map["tableName"] = self.tableName!
                    }
                    if self.tag != nil {
                        map["tag"] = self.tag!
                    }
                    if self.zoneName != nil {
                        map["zoneName"] = self.zoneName!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("domainName") {
                        self.domainName = dict["domainName"] as! String
                    }
                    if dict.keys.contains("name") {
                        self.name = dict["name"] as! String
                    }
                    if dict.keys.contains("tableDeployId") {
                        self.tableDeployId = dict["tableDeployId"] as! Int64
                    }
                    if dict.keys.contains("tableName") {
                        self.tableName = dict["tableName"] as! String
                    }
                    if dict.keys.contains("tag") {
                        self.tag = dict["tag"] as! String
                    }
                    if dict.keys.contains("zoneName") {
                        self.zoneName = dict["zoneName"] as! String
                    }
                }
            }
            public class OnlineMaster : Tea.TeaModel {
                public var domainName: String?

                public var hippoId: String?

                public var id: Int64?

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
                    if self.domainName != nil {
                        map["domainName"] = self.domainName!
                    }
                    if self.hippoId != nil {
                        map["hippoId"] = self.hippoId!
                    }
                    if self.id != nil {
                        map["id"] = self.id!
                    }
                    if self.name != nil {
                        map["name"] = self.name!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("domainName") {
                        self.domainName = dict["domainName"] as! String
                    }
                    if dict.keys.contains("hippoId") {
                        self.hippoId = dict["hippoId"] as! String
                    }
                    if dict.keys.contains("id") {
                        self.id = dict["id"] as! Int64
                    }
                    if dict.keys.contains("name") {
                        self.name = dict["name"] as! String
                    }
                }
            }
            public class TableMetas : Tea.TeaModel {
                public var buildDeployId: Int64?

                public var domainName: String?

                public var name: String?

                public var tableDeployId: Int64?

                public var tag: String?

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
                    if self.buildDeployId != nil {
                        map["buildDeployId"] = self.buildDeployId!
                    }
                    if self.domainName != nil {
                        map["domainName"] = self.domainName!
                    }
                    if self.name != nil {
                        map["name"] = self.name!
                    }
                    if self.tableDeployId != nil {
                        map["tableDeployId"] = self.tableDeployId!
                    }
                    if self.tag != nil {
                        map["tag"] = self.tag!
                    }
                    if self.type != nil {
                        map["type"] = self.type!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("buildDeployId") {
                        self.buildDeployId = dict["buildDeployId"] as! Int64
                    }
                    if dict.keys.contains("domainName") {
                        self.domainName = dict["domainName"] as! String
                    }
                    if dict.keys.contains("name") {
                        self.name = dict["name"] as! String
                    }
                    if dict.keys.contains("tableDeployId") {
                        self.tableDeployId = dict["tableDeployId"] as! Int64
                    }
                    if dict.keys.contains("tag") {
                        self.tag = dict["tag"] as! String
                    }
                    if dict.keys.contains("type") {
                        self.type = dict["type"] as! String
                    }
                }
            }
            public class ZoneMetas : Tea.TeaModel {
                public var domainInfo: String?

                public var name: String?

                public var suezAdminName: String?

                public var tag: String?

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
                    if self.domainInfo != nil {
                        map["domainInfo"] = self.domainInfo!
                    }
                    if self.name != nil {
                        map["name"] = self.name!
                    }
                    if self.suezAdminName != nil {
                        map["suezAdminName"] = self.suezAdminName!
                    }
                    if self.tag != nil {
                        map["tag"] = self.tag!
                    }
                    if self.type != nil {
                        map["type"] = self.type!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("domainInfo") {
                        self.domainInfo = dict["domainInfo"] as! String
                    }
                    if dict.keys.contains("name") {
                        self.name = dict["name"] as! String
                    }
                    if dict.keys.contains("suezAdminName") {
                        self.suezAdminName = dict["suezAdminName"] as! String
                    }
                    if dict.keys.contains("tag") {
                        self.tag = dict["tag"] as! String
                    }
                    if dict.keys.contains("type") {
                        self.type = dict["type"] as! String
                    }
                }
            }
            public var indexMetas: [GetDeployGraphResponseBody.Result.Graph.IndexMetas]?

            public var onlineMaster: [GetDeployGraphResponseBody.Result.Graph.OnlineMaster]?

            public var tableIndexRelation: [String: [String]]?

            public var tableMetas: [GetDeployGraphResponseBody.Result.Graph.TableMetas]?

            public var zoneIndexRelation: [String: [String]]?

            public var zoneMetas: [GetDeployGraphResponseBody.Result.Graph.ZoneMetas]?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.indexMetas != nil {
                    var tmp : [Any] = []
                    for k in self.indexMetas! {
                        tmp.append(k.toMap())
                    }
                    map["indexMetas"] = tmp
                }
                if self.onlineMaster != nil {
                    var tmp : [Any] = []
                    for k in self.onlineMaster! {
                        tmp.append(k.toMap())
                    }
                    map["onlineMaster"] = tmp
                }
                if self.tableIndexRelation != nil {
                    map["tableIndexRelation"] = self.tableIndexRelation!
                }
                if self.tableMetas != nil {
                    var tmp : [Any] = []
                    for k in self.tableMetas! {
                        tmp.append(k.toMap())
                    }
                    map["tableMetas"] = tmp
                }
                if self.zoneIndexRelation != nil {
                    map["zoneIndexRelation"] = self.zoneIndexRelation!
                }
                if self.zoneMetas != nil {
                    var tmp : [Any] = []
                    for k in self.zoneMetas! {
                        tmp.append(k.toMap())
                    }
                    map["zoneMetas"] = tmp
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("indexMetas") {
                    var tmp : [GetDeployGraphResponseBody.Result.Graph.IndexMetas] = []
                    for v in dict["indexMetas"] as! [Any] {
                        var model = GetDeployGraphResponseBody.Result.Graph.IndexMetas()
                        if v != nil {
                            model.fromMap(v as! [String: Any])
                        }
                        tmp.append(model)
                    }
                    self.indexMetas = tmp
                }
                if dict.keys.contains("onlineMaster") {
                    var tmp : [GetDeployGraphResponseBody.Result.Graph.OnlineMaster] = []
                    for v in dict["onlineMaster"] as! [Any] {
                        var model = GetDeployGraphResponseBody.Result.Graph.OnlineMaster()
                        if v != nil {
                            model.fromMap(v as! [String: Any])
                        }
                        tmp.append(model)
                    }
                    self.onlineMaster = tmp
                }
                if dict.keys.contains("tableIndexRelation") {
                    self.tableIndexRelation = dict["tableIndexRelation"] as! [String: [String]]
                }
                if dict.keys.contains("tableMetas") {
                    var tmp : [GetDeployGraphResponseBody.Result.Graph.TableMetas] = []
                    for v in dict["tableMetas"] as! [Any] {
                        var model = GetDeployGraphResponseBody.Result.Graph.TableMetas()
                        if v != nil {
                            model.fromMap(v as! [String: Any])
                        }
                        tmp.append(model)
                    }
                    self.tableMetas = tmp
                }
                if dict.keys.contains("zoneIndexRelation") {
                    self.zoneIndexRelation = dict["zoneIndexRelation"] as! [String: [String]]
                }
                if dict.keys.contains("zoneMetas") {
                    var tmp : [GetDeployGraphResponseBody.Result.Graph.ZoneMetas] = []
                    for v in dict["zoneMetas"] as! [Any] {
                        var model = GetDeployGraphResponseBody.Result.Graph.ZoneMetas()
                        if v != nil {
                            model.fromMap(v as! [String: Any])
                        }
                        tmp.append(model)
                    }
                    self.zoneMetas = tmp
                }
            }
        }
        public var graph: GetDeployGraphResponseBody.Result.Graph?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.graph?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.graph != nil {
                map["graph"] = self.graph?.toMap()
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("graph") {
                var model = GetDeployGraphResponseBody.Result.Graph()
                model.fromMap(dict["graph"] as! [String: Any])
                self.graph = model
            }
        }
    }
    public var requestId: String?

    public var result: GetDeployGraphResponseBody.Result?

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
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        if self.result != nil {
            map["result"] = self.result?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("requestId") {
            self.requestId = dict["requestId"] as! String
        }
        if dict.keys.contains("result") {
            var model = GetDeployGraphResponseBody.Result()
            model.fromMap(dict["result"] as! [String: Any])
            self.result = model
        }
    }
}

public class GetDeployGraphResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetDeployGraphResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = GetDeployGraphResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetFileRequest : Tea.TeaModel {
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
        if self.fileName != nil {
            map["fileName"] = self.fileName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("fileName") {
            self.fileName = dict["fileName"] as! String
        }
    }
}

public class GetFileResponseBody : Tea.TeaModel {
    public class Result : Tea.TeaModel {
        public var content: String?

        public var dataSource: String?

        public var extend: [String: [String]]?

        public var fullPathName: String?

        public var isDir: Bool?

        public var name: String?

        public var partition: Int64?

        public override init() {
            super.init()
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
            if self.dataSource != nil {
                map["dataSource"] = self.dataSource!
            }
            if self.extend != nil {
                map["extend"] = self.extend!
            }
            if self.fullPathName != nil {
                map["fullPathName"] = self.fullPathName!
            }
            if self.isDir != nil {
                map["isDir"] = self.isDir!
            }
            if self.name != nil {
                map["name"] = self.name!
            }
            if self.partition != nil {
                map["partition"] = self.partition!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("content") {
                self.content = dict["content"] as! String
            }
            if dict.keys.contains("dataSource") {
                self.dataSource = dict["dataSource"] as! String
            }
            if dict.keys.contains("extend") {
                self.extend = dict["extend"] as! [String: [String]]
            }
            if dict.keys.contains("fullPathName") {
                self.fullPathName = dict["fullPathName"] as! String
            }
            if dict.keys.contains("isDir") {
                self.isDir = dict["isDir"] as! Bool
            }
            if dict.keys.contains("name") {
                self.name = dict["name"] as! String
            }
            if dict.keys.contains("partition") {
                self.partition = dict["partition"] as! Int64
            }
        }
    }
    public var requestId: String?

    public var result: GetFileResponseBody.Result?

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
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        if self.result != nil {
            map["result"] = self.result?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("requestId") {
            self.requestId = dict["requestId"] as! String
        }
        if dict.keys.contains("result") {
            var model = GetFileResponseBody.Result()
            model.fromMap(dict["result"] as! [String: Any])
            self.result = model
        }
    }
}

public class GetFileResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetFileResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = GetFileResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetIndexResponseBody : Tea.TeaModel {
    public class Result : Tea.TeaModel {
        public class DataSourceInfo : Tea.TeaModel {
            public class Config : Tea.TeaModel {
                public var accessKey: String?

                public var accessSecret: String?

                public var bucket: String?

                public var catalog: String?

                public var database: String?

                public var endpoint: String?

                public var format: String?

                public var namespace: String?

                public var ossPath: String?

                public var partition: String?

                public var path: String?

                public var project: String?

                public var table: String?

                public var tag: String?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.accessKey != nil {
                        map["accessKey"] = self.accessKey!
                    }
                    if self.accessSecret != nil {
                        map["accessSecret"] = self.accessSecret!
                    }
                    if self.bucket != nil {
                        map["bucket"] = self.bucket!
                    }
                    if self.catalog != nil {
                        map["catalog"] = self.catalog!
                    }
                    if self.database != nil {
                        map["database"] = self.database!
                    }
                    if self.endpoint != nil {
                        map["endpoint"] = self.endpoint!
                    }
                    if self.format != nil {
                        map["format"] = self.format!
                    }
                    if self.namespace != nil {
                        map["namespace"] = self.namespace!
                    }
                    if self.ossPath != nil {
                        map["ossPath"] = self.ossPath!
                    }
                    if self.partition != nil {
                        map["partition"] = self.partition!
                    }
                    if self.path != nil {
                        map["path"] = self.path!
                    }
                    if self.project != nil {
                        map["project"] = self.project!
                    }
                    if self.table != nil {
                        map["table"] = self.table!
                    }
                    if self.tag != nil {
                        map["tag"] = self.tag!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("accessKey") {
                        self.accessKey = dict["accessKey"] as! String
                    }
                    if dict.keys.contains("accessSecret") {
                        self.accessSecret = dict["accessSecret"] as! String
                    }
                    if dict.keys.contains("bucket") {
                        self.bucket = dict["bucket"] as! String
                    }
                    if dict.keys.contains("catalog") {
                        self.catalog = dict["catalog"] as! String
                    }
                    if dict.keys.contains("database") {
                        self.database = dict["database"] as! String
                    }
                    if dict.keys.contains("endpoint") {
                        self.endpoint = dict["endpoint"] as! String
                    }
                    if dict.keys.contains("format") {
                        self.format = dict["format"] as! String
                    }
                    if dict.keys.contains("namespace") {
                        self.namespace = dict["namespace"] as! String
                    }
                    if dict.keys.contains("ossPath") {
                        self.ossPath = dict["ossPath"] as! String
                    }
                    if dict.keys.contains("partition") {
                        self.partition = dict["partition"] as! String
                    }
                    if dict.keys.contains("path") {
                        self.path = dict["path"] as! String
                    }
                    if dict.keys.contains("project") {
                        self.project = dict["project"] as! String
                    }
                    if dict.keys.contains("table") {
                        self.table = dict["table"] as! String
                    }
                    if dict.keys.contains("tag") {
                        self.tag = dict["tag"] as! String
                    }
                }
            }
            public class SaroConfig : Tea.TeaModel {
                public var namespace: String?

                public var tableName: String?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.namespace != nil {
                        map["namespace"] = self.namespace!
                    }
                    if self.tableName != nil {
                        map["tableName"] = self.tableName!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("namespace") {
                        self.namespace = dict["namespace"] as! String
                    }
                    if dict.keys.contains("tableName") {
                        self.tableName = dict["tableName"] as! String
                    }
                }
            }
            public var autoBuildIndex: Bool?

            public var config: GetIndexResponseBody.Result.DataSourceInfo.Config?

            public var domain: String?

            public var name: String?

            public var processParallelNum: Int32?

            public var processPartitionCount: Int32?

            public var saroConfig: GetIndexResponseBody.Result.DataSourceInfo.SaroConfig?

            public var type: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
                try self.config?.validate()
                try self.saroConfig?.validate()
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.autoBuildIndex != nil {
                    map["autoBuildIndex"] = self.autoBuildIndex!
                }
                if self.config != nil {
                    map["config"] = self.config?.toMap()
                }
                if self.domain != nil {
                    map["domain"] = self.domain!
                }
                if self.name != nil {
                    map["name"] = self.name!
                }
                if self.processParallelNum != nil {
                    map["processParallelNum"] = self.processParallelNum!
                }
                if self.processPartitionCount != nil {
                    map["processPartitionCount"] = self.processPartitionCount!
                }
                if self.saroConfig != nil {
                    map["saroConfig"] = self.saroConfig?.toMap()
                }
                if self.type != nil {
                    map["type"] = self.type!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("autoBuildIndex") {
                    self.autoBuildIndex = dict["autoBuildIndex"] as! Bool
                }
                if dict.keys.contains("config") {
                    var model = GetIndexResponseBody.Result.DataSourceInfo.Config()
                    model.fromMap(dict["config"] as! [String: Any])
                    self.config = model
                }
                if dict.keys.contains("domain") {
                    self.domain = dict["domain"] as! String
                }
                if dict.keys.contains("name") {
                    self.name = dict["name"] as! String
                }
                if dict.keys.contains("processParallelNum") {
                    self.processParallelNum = dict["processParallelNum"] as! Int32
                }
                if dict.keys.contains("processPartitionCount") {
                    self.processPartitionCount = dict["processPartitionCount"] as! Int32
                }
                if dict.keys.contains("saroConfig") {
                    var model = GetIndexResponseBody.Result.DataSourceInfo.SaroConfig()
                    model.fromMap(dict["saroConfig"] as! [String: Any])
                    self.saroConfig = model
                }
                if dict.keys.contains("type") {
                    self.type = dict["type"] as! String
                }
            }
        }
        public class Versions : Tea.TeaModel {
            public class Files : Tea.TeaModel {
                public var fullPathName: String?

                public var isDir: Bool?

                public var isTemplate: Bool?

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
                    if self.fullPathName != nil {
                        map["fullPathName"] = self.fullPathName!
                    }
                    if self.isDir != nil {
                        map["isDir"] = self.isDir!
                    }
                    if self.isTemplate != nil {
                        map["isTemplate"] = self.isTemplate!
                    }
                    if self.name != nil {
                        map["name"] = self.name!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("fullPathName") {
                        self.fullPathName = dict["fullPathName"] as! String
                    }
                    if dict.keys.contains("isDir") {
                        self.isDir = dict["isDir"] as! Bool
                    }
                    if dict.keys.contains("isTemplate") {
                        self.isTemplate = dict["isTemplate"] as! Bool
                    }
                    if dict.keys.contains("name") {
                        self.name = dict["name"] as! String
                    }
                }
            }
            public var desc: String?

            public var files: [GetIndexResponseBody.Result.Versions.Files]?

            public var name: String?

            public var status: String?

            public var updateTime: Int64?

            public var versionId: Int32?

            public override init() {
                super.init()
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
                    map["desc"] = self.desc!
                }
                if self.files != nil {
                    var tmp : [Any] = []
                    for k in self.files! {
                        tmp.append(k.toMap())
                    }
                    map["files"] = tmp
                }
                if self.name != nil {
                    map["name"] = self.name!
                }
                if self.status != nil {
                    map["status"] = self.status!
                }
                if self.updateTime != nil {
                    map["updateTime"] = self.updateTime!
                }
                if self.versionId != nil {
                    map["versionId"] = self.versionId!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("desc") {
                    self.desc = dict["desc"] as! String
                }
                if dict.keys.contains("files") {
                    var tmp : [GetIndexResponseBody.Result.Versions.Files] = []
                    for v in dict["files"] as! [Any] {
                        var model = GetIndexResponseBody.Result.Versions.Files()
                        if v != nil {
                            model.fromMap(v as! [String: Any])
                        }
                        tmp.append(model)
                    }
                    self.files = tmp
                }
                if dict.keys.contains("name") {
                    self.name = dict["name"] as! String
                }
                if dict.keys.contains("status") {
                    self.status = dict["status"] as! String
                }
                if dict.keys.contains("updateTime") {
                    self.updateTime = dict["updateTime"] as! Int64
                }
                if dict.keys.contains("versionId") {
                    self.versionId = dict["versionId"] as! Int32
                }
            }
        }
        public var cluster: [String: ResultClusterValue]?

        public var config: [String: [String: Any]]?

        public var configWhenBuild: [String: [String: Any]]?

        public var content: String?

        public var createTime: String?

        public var dataSource: String?

        public var dataSourceInfo: GetIndexResponseBody.Result.DataSourceInfo?

        public var description_: String?

        public var domain: String?

        public var extend: [String: [String]]?

        public var fullUpdateTime: String?

        public var fullVersion: Int64?

        public var incUpdateTime: String?

        public var indexSize: Int64?

        public var indexStatus: String?

        public var name: String?

        public var partition: Int32?

        public var updateTime: String?

        public var versions: [GetIndexResponseBody.Result.Versions]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.dataSourceInfo?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.cluster != nil {
                var tmp : [String: Any] = [:]
                for (k, v) in self.cluster! {
                    tmp[k] = v.toMap()
                }
                map["cluster"] = tmp
            }
            if self.config != nil {
                map["config"] = self.config!
            }
            if self.configWhenBuild != nil {
                map["configWhenBuild"] = self.configWhenBuild!
            }
            if self.content != nil {
                map["content"] = self.content!
            }
            if self.createTime != nil {
                map["createTime"] = self.createTime!
            }
            if self.dataSource != nil {
                map["dataSource"] = self.dataSource!
            }
            if self.dataSourceInfo != nil {
                map["dataSourceInfo"] = self.dataSourceInfo?.toMap()
            }
            if self.description_ != nil {
                map["description"] = self.description_!
            }
            if self.domain != nil {
                map["domain"] = self.domain!
            }
            if self.extend != nil {
                map["extend"] = self.extend!
            }
            if self.fullUpdateTime != nil {
                map["fullUpdateTime"] = self.fullUpdateTime!
            }
            if self.fullVersion != nil {
                map["fullVersion"] = self.fullVersion!
            }
            if self.incUpdateTime != nil {
                map["incUpdateTime"] = self.incUpdateTime!
            }
            if self.indexSize != nil {
                map["indexSize"] = self.indexSize!
            }
            if self.indexStatus != nil {
                map["indexStatus"] = self.indexStatus!
            }
            if self.name != nil {
                map["name"] = self.name!
            }
            if self.partition != nil {
                map["partition"] = self.partition!
            }
            if self.updateTime != nil {
                map["updateTime"] = self.updateTime!
            }
            if self.versions != nil {
                var tmp : [Any] = []
                for k in self.versions! {
                    tmp.append(k.toMap())
                }
                map["versions"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("cluster") {
                var tmp : [String: ResultClusterValue] = [:]
                for (k, v) in dict["cluster"] as! [String: Any] {
                    if v != nil {
                        var model = ResultClusterValue()
                        model.fromMap(v as! [String: Any])
                        tmp[k] = model
                    }
                }
                self.cluster = tmp
            }
            if dict.keys.contains("config") {
                self.config = dict["config"] as! [String: [String: Any]]
            }
            if dict.keys.contains("configWhenBuild") {
                self.configWhenBuild = dict["configWhenBuild"] as! [String: [String: Any]]
            }
            if dict.keys.contains("content") {
                self.content = dict["content"] as! String
            }
            if dict.keys.contains("createTime") {
                self.createTime = dict["createTime"] as! String
            }
            if dict.keys.contains("dataSource") {
                self.dataSource = dict["dataSource"] as! String
            }
            if dict.keys.contains("dataSourceInfo") {
                var model = GetIndexResponseBody.Result.DataSourceInfo()
                model.fromMap(dict["dataSourceInfo"] as! [String: Any])
                self.dataSourceInfo = model
            }
            if dict.keys.contains("description") {
                self.description_ = dict["description"] as! String
            }
            if dict.keys.contains("domain") {
                self.domain = dict["domain"] as! String
            }
            if dict.keys.contains("extend") {
                self.extend = dict["extend"] as! [String: [String]]
            }
            if dict.keys.contains("fullUpdateTime") {
                self.fullUpdateTime = dict["fullUpdateTime"] as! String
            }
            if dict.keys.contains("fullVersion") {
                self.fullVersion = dict["fullVersion"] as! Int64
            }
            if dict.keys.contains("incUpdateTime") {
                self.incUpdateTime = dict["incUpdateTime"] as! String
            }
            if dict.keys.contains("indexSize") {
                self.indexSize = dict["indexSize"] as! Int64
            }
            if dict.keys.contains("indexStatus") {
                self.indexStatus = dict["indexStatus"] as! String
            }
            if dict.keys.contains("name") {
                self.name = dict["name"] as! String
            }
            if dict.keys.contains("partition") {
                self.partition = dict["partition"] as! Int32
            }
            if dict.keys.contains("updateTime") {
                self.updateTime = dict["updateTime"] as! String
            }
            if dict.keys.contains("versions") {
                var tmp : [GetIndexResponseBody.Result.Versions] = []
                for v in dict["versions"] as! [Any] {
                    var model = GetIndexResponseBody.Result.Versions()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.versions = tmp
            }
        }
    }
    public var requestId: String?

    public var result: GetIndexResponseBody.Result?

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
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        if self.result != nil {
            map["result"] = self.result?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("requestId") {
            self.requestId = dict["requestId"] as! String
        }
        if dict.keys.contains("result") {
            var model = GetIndexResponseBody.Result()
            model.fromMap(dict["result"] as! [String: Any])
            self.result = model
        }
    }
}

public class GetIndexResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetIndexResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = GetIndexResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetIndexOnlineStrategyResponseBody : Tea.TeaModel {
    public class Result : Tea.TeaModel {
        public var changeRate: Int32?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.changeRate != nil {
                map["changeRate"] = self.changeRate!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("changeRate") {
                self.changeRate = dict["changeRate"] as! Int32
            }
        }
    }
    public var requestId: String?

    public var result: GetIndexOnlineStrategyResponseBody.Result?

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
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        if self.result != nil {
            map["result"] = self.result?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("requestId") {
            self.requestId = dict["requestId"] as! String
        }
        if dict.keys.contains("result") {
            var model = GetIndexOnlineStrategyResponseBody.Result()
            model.fromMap(dict["result"] as! [String: Any])
            self.result = model
        }
    }
}

public class GetIndexOnlineStrategyResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetIndexOnlineStrategyResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = GetIndexOnlineStrategyResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetIndexVersionResponseBody : Tea.TeaModel {
    public class Result : Tea.TeaModel {
        public class IndexVersions : Tea.TeaModel {
            public var buildDeployId: String?

            public var currentVersion: Int64?

            public var indexName: String?

            public var versions: [Int64]?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.buildDeployId != nil {
                    map["buildDeployId"] = self.buildDeployId!
                }
                if self.currentVersion != nil {
                    map["currentVersion"] = self.currentVersion!
                }
                if self.indexName != nil {
                    map["indexName"] = self.indexName!
                }
                if self.versions != nil {
                    map["versions"] = self.versions!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("buildDeployId") {
                    self.buildDeployId = dict["buildDeployId"] as! String
                }
                if dict.keys.contains("currentVersion") {
                    self.currentVersion = dict["currentVersion"] as! Int64
                }
                if dict.keys.contains("indexName") {
                    self.indexName = dict["indexName"] as! String
                }
                if dict.keys.contains("versions") {
                    self.versions = dict["versions"] as! [Int64]
                }
            }
        }
        public var cluster: String?

        public var indexVersions: [GetIndexVersionResponseBody.Result.IndexVersions]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.cluster != nil {
                map["cluster"] = self.cluster!
            }
            if self.indexVersions != nil {
                var tmp : [Any] = []
                for k in self.indexVersions! {
                    tmp.append(k.toMap())
                }
                map["indexVersions"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("cluster") {
                self.cluster = dict["cluster"] as! String
            }
            if dict.keys.contains("indexVersions") {
                var tmp : [GetIndexVersionResponseBody.Result.IndexVersions] = []
                for v in dict["indexVersions"] as! [Any] {
                    var model = GetIndexVersionResponseBody.Result.IndexVersions()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.indexVersions = tmp
            }
        }
    }
    public var requestId: String?

    public var result: GetIndexVersionResponseBody.Result?

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
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        if self.result != nil {
            map["result"] = self.result?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("requestId") {
            self.requestId = dict["requestId"] as! String
        }
        if dict.keys.contains("result") {
            var model = GetIndexVersionResponseBody.Result()
            model.fromMap(dict["result"] as! [String: Any])
            self.result = model
        }
    }
}

public class GetIndexVersionResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetIndexVersionResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = GetIndexVersionResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetInstanceResponseBody : Tea.TeaModel {
    public class Result : Tea.TeaModel {
        public class Network : Tea.TeaModel {
            public var allow: String?

            public var endpoint: String?

            public var publicEndpoint: String?

            public var vSwitchId: String?

            public var vpcId: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.allow != nil {
                    map["allow"] = self.allow!
                }
                if self.endpoint != nil {
                    map["endpoint"] = self.endpoint!
                }
                if self.publicEndpoint != nil {
                    map["publicEndpoint"] = self.publicEndpoint!
                }
                if self.vSwitchId != nil {
                    map["vSwitchId"] = self.vSwitchId!
                }
                if self.vpcId != nil {
                    map["vpcId"] = self.vpcId!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("allow") {
                    self.allow = dict["allow"] as! String
                }
                if dict.keys.contains("endpoint") {
                    self.endpoint = dict["endpoint"] as! String
                }
                if dict.keys.contains("publicEndpoint") {
                    self.publicEndpoint = dict["publicEndpoint"] as! String
                }
                if dict.keys.contains("vSwitchId") {
                    self.vSwitchId = dict["vSwitchId"] as! String
                }
                if dict.keys.contains("vpcId") {
                    self.vpcId = dict["vpcId"] as! String
                }
            }
        }
        public class Spec : Tea.TeaModel {
            public class QrsResource : Tea.TeaModel {
                public var category: String?

                public var cpu: Int32?

                public var disk: Int32?

                public var mem: Int32?

                public var nodeCount: Int32?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.category != nil {
                        map["category"] = self.category!
                    }
                    if self.cpu != nil {
                        map["cpu"] = self.cpu!
                    }
                    if self.disk != nil {
                        map["disk"] = self.disk!
                    }
                    if self.mem != nil {
                        map["mem"] = self.mem!
                    }
                    if self.nodeCount != nil {
                        map["nodeCount"] = self.nodeCount!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("category") {
                        self.category = dict["category"] as! String
                    }
                    if dict.keys.contains("cpu") {
                        self.cpu = dict["cpu"] as! Int32
                    }
                    if dict.keys.contains("disk") {
                        self.disk = dict["disk"] as! Int32
                    }
                    if dict.keys.contains("mem") {
                        self.mem = dict["mem"] as! Int32
                    }
                    if dict.keys.contains("nodeCount") {
                        self.nodeCount = dict["nodeCount"] as! Int32
                    }
                }
            }
            public class SearchResource : Tea.TeaModel {
                public var category: String?

                public var cpu: Int32?

                public var disk: Int32?

                public var mem: Int32?

                public var nodeCount: Int32?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.category != nil {
                        map["category"] = self.category!
                    }
                    if self.cpu != nil {
                        map["cpu"] = self.cpu!
                    }
                    if self.disk != nil {
                        map["disk"] = self.disk!
                    }
                    if self.mem != nil {
                        map["mem"] = self.mem!
                    }
                    if self.nodeCount != nil {
                        map["nodeCount"] = self.nodeCount!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("category") {
                        self.category = dict["category"] as! String
                    }
                    if dict.keys.contains("cpu") {
                        self.cpu = dict["cpu"] as! Int32
                    }
                    if dict.keys.contains("disk") {
                        self.disk = dict["disk"] as! Int32
                    }
                    if dict.keys.contains("mem") {
                        self.mem = dict["mem"] as! Int32
                    }
                    if dict.keys.contains("nodeCount") {
                        self.nodeCount = dict["nodeCount"] as! Int32
                    }
                }
            }
            public var qrsResource: GetInstanceResponseBody.Result.Spec.QrsResource?

            public var searchResource: GetInstanceResponseBody.Result.Spec.SearchResource?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
                try self.qrsResource?.validate()
                try self.searchResource?.validate()
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.qrsResource != nil {
                    map["qrsResource"] = self.qrsResource?.toMap()
                }
                if self.searchResource != nil {
                    map["searchResource"] = self.searchResource?.toMap()
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("qrsResource") {
                    var model = GetInstanceResponseBody.Result.Spec.QrsResource()
                    model.fromMap(dict["qrsResource"] as! [String: Any])
                    self.qrsResource = model
                }
                if dict.keys.contains("searchResource") {
                    var model = GetInstanceResponseBody.Result.Spec.SearchResource()
                    model.fromMap(dict["searchResource"] as! [String: Any])
                    self.searchResource = model
                }
            }
        }
        public class Tags : Tea.TeaModel {
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
                    map["key"] = self.key!
                }
                if self.value != nil {
                    map["value"] = self.value!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("key") {
                    self.key = dict["key"] as! String
                }
                if dict.keys.contains("value") {
                    self.value = dict["value"] as! String
                }
            }
        }
        public var bsVersion: String?

        public var chargeType: String?

        public var commodityCode: String?

        public var createTime: String?

        public var description_: String?

        public var edition: String?

        public var expiredTime: String?

        public var inDebt: Bool?

        public var instanceId: String?

        public var lockMode: String?

        public var network: GetInstanceResponseBody.Result.Network?

        public var newMode: Bool?

        public var noQrs: Bool?

        public var resourceGroupId: String?

        public var spec: GetInstanceResponseBody.Result.Spec?

        public var status: String?

        public var tags: [GetInstanceResponseBody.Result.Tags]?

        public var updateTime: String?

        public var userName: String?

        public var version: String?

        public var zoneCount: Int32?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.network?.validate()
            try self.spec?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.bsVersion != nil {
                map["bsVersion"] = self.bsVersion!
            }
            if self.chargeType != nil {
                map["chargeType"] = self.chargeType!
            }
            if self.commodityCode != nil {
                map["commodityCode"] = self.commodityCode!
            }
            if self.createTime != nil {
                map["createTime"] = self.createTime!
            }
            if self.description_ != nil {
                map["description"] = self.description_!
            }
            if self.edition != nil {
                map["edition"] = self.edition!
            }
            if self.expiredTime != nil {
                map["expiredTime"] = self.expiredTime!
            }
            if self.inDebt != nil {
                map["inDebt"] = self.inDebt!
            }
            if self.instanceId != nil {
                map["instanceId"] = self.instanceId!
            }
            if self.lockMode != nil {
                map["lockMode"] = self.lockMode!
            }
            if self.network != nil {
                map["network"] = self.network?.toMap()
            }
            if self.newMode != nil {
                map["newMode"] = self.newMode!
            }
            if self.noQrs != nil {
                map["noQrs"] = self.noQrs!
            }
            if self.resourceGroupId != nil {
                map["resourceGroupId"] = self.resourceGroupId!
            }
            if self.spec != nil {
                map["spec"] = self.spec?.toMap()
            }
            if self.status != nil {
                map["status"] = self.status!
            }
            if self.tags != nil {
                var tmp : [Any] = []
                for k in self.tags! {
                    tmp.append(k.toMap())
                }
                map["tags"] = tmp
            }
            if self.updateTime != nil {
                map["updateTime"] = self.updateTime!
            }
            if self.userName != nil {
                map["userName"] = self.userName!
            }
            if self.version != nil {
                map["version"] = self.version!
            }
            if self.zoneCount != nil {
                map["zoneCount"] = self.zoneCount!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("bsVersion") {
                self.bsVersion = dict["bsVersion"] as! String
            }
            if dict.keys.contains("chargeType") {
                self.chargeType = dict["chargeType"] as! String
            }
            if dict.keys.contains("commodityCode") {
                self.commodityCode = dict["commodityCode"] as! String
            }
            if dict.keys.contains("createTime") {
                self.createTime = dict["createTime"] as! String
            }
            if dict.keys.contains("description") {
                self.description_ = dict["description"] as! String
            }
            if dict.keys.contains("edition") {
                self.edition = dict["edition"] as! String
            }
            if dict.keys.contains("expiredTime") {
                self.expiredTime = dict["expiredTime"] as! String
            }
            if dict.keys.contains("inDebt") {
                self.inDebt = dict["inDebt"] as! Bool
            }
            if dict.keys.contains("instanceId") {
                self.instanceId = dict["instanceId"] as! String
            }
            if dict.keys.contains("lockMode") {
                self.lockMode = dict["lockMode"] as! String
            }
            if dict.keys.contains("network") {
                var model = GetInstanceResponseBody.Result.Network()
                model.fromMap(dict["network"] as! [String: Any])
                self.network = model
            }
            if dict.keys.contains("newMode") {
                self.newMode = dict["newMode"] as! Bool
            }
            if dict.keys.contains("noQrs") {
                self.noQrs = dict["noQrs"] as! Bool
            }
            if dict.keys.contains("resourceGroupId") {
                self.resourceGroupId = dict["resourceGroupId"] as! String
            }
            if dict.keys.contains("spec") {
                var model = GetInstanceResponseBody.Result.Spec()
                model.fromMap(dict["spec"] as! [String: Any])
                self.spec = model
            }
            if dict.keys.contains("status") {
                self.status = dict["status"] as! String
            }
            if dict.keys.contains("tags") {
                var tmp : [GetInstanceResponseBody.Result.Tags] = []
                for v in dict["tags"] as! [Any] {
                    var model = GetInstanceResponseBody.Result.Tags()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.tags = tmp
            }
            if dict.keys.contains("updateTime") {
                self.updateTime = dict["updateTime"] as! String
            }
            if dict.keys.contains("userName") {
                self.userName = dict["userName"] as! String
            }
            if dict.keys.contains("version") {
                self.version = dict["version"] as! String
            }
            if dict.keys.contains("zoneCount") {
                self.zoneCount = dict["zoneCount"] as! Int32
            }
        }
    }
    public var requestId: String?

    public var result: GetInstanceResponseBody.Result?

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
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        if self.result != nil {
            map["result"] = self.result?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("requestId") {
            self.requestId = dict["requestId"] as! String
        }
        if dict.keys.contains("result") {
            var model = GetInstanceResponseBody.Result()
            model.fromMap(dict["result"] as! [String: Any])
            self.result = model
        }
    }
}

public class GetInstanceResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetInstanceResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = GetInstanceResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetModelResponseBody : Tea.TeaModel {
    public class Result : Tea.TeaModel {
        public class Content : Tea.TeaModel {
            public class Request : Tea.TeaModel {
                public class Header : Tea.TeaModel {
                    public var authorization: String?

                    public var contentType: String?

                    public override init() {
                        super.init()
                    }

                    public init(_ dict: [String: Any]) {
                        super.init()
                        self.fromMap(dict)
                    }

                    public override func validate() throws -> Void {
                    }

                    public override func toMap() -> [String : Any] {
                        var map = super.toMap()
                        if self.authorization != nil {
                            map["Authorization"] = self.authorization!
                        }
                        if self.contentType != nil {
                            map["Content-Type"] = self.contentType!
                        }
                        return map
                    }

                    public override func fromMap(_ dict: [String: Any]) -> Void {
                        if dict.keys.contains("Authorization") {
                            self.authorization = dict["Authorization"] as! String
                        }
                        if dict.keys.contains("Content-Type") {
                            self.contentType = dict["Content-Type"] as! String
                        }
                    }
                }
                public class Parameters : Tea.TeaModel {
                    public class Build : Tea.TeaModel {
                        public var inputType: String?

                        public override init() {
                            super.init()
                        }

                        public init(_ dict: [String: Any]) {
                            super.init()
                            self.fromMap(dict)
                        }

                        public override func validate() throws -> Void {
                        }

                        public override func toMap() -> [String : Any] {
                            var map = super.toMap()
                            if self.inputType != nil {
                                map["input_type"] = self.inputType!
                            }
                            return map
                        }

                        public override func fromMap(_ dict: [String: Any]) -> Void {
                            if dict.keys.contains("input_type") {
                                self.inputType = dict["input_type"] as! String
                            }
                        }
                    }
                    public class Search : Tea.TeaModel {
                        public var inputType: String?

                        public override init() {
                            super.init()
                        }

                        public init(_ dict: [String: Any]) {
                            super.init()
                            self.fromMap(dict)
                        }

                        public override func validate() throws -> Void {
                        }

                        public override func toMap() -> [String : Any] {
                            var map = super.toMap()
                            if self.inputType != nil {
                                map["input_type"] = self.inputType!
                            }
                            return map
                        }

                        public override func fromMap(_ dict: [String: Any]) -> Void {
                            if dict.keys.contains("input_type") {
                                self.inputType = dict["input_type"] as! String
                            }
                        }
                    }
                    public var build: GetModelResponseBody.Result.Content.Request.Parameters.Build?

                    public var search: GetModelResponseBody.Result.Content.Request.Parameters.Search?

                    public override init() {
                        super.init()
                    }

                    public init(_ dict: [String: Any]) {
                        super.init()
                        self.fromMap(dict)
                    }

                    public override func validate() throws -> Void {
                        try self.build?.validate()
                        try self.search?.validate()
                    }

                    public override func toMap() -> [String : Any] {
                        var map = super.toMap()
                        if self.build != nil {
                            map["build"] = self.build?.toMap()
                        }
                        if self.search != nil {
                            map["search"] = self.search?.toMap()
                        }
                        return map
                    }

                    public override func fromMap(_ dict: [String: Any]) -> Void {
                        if dict.keys.contains("build") {
                            var model = GetModelResponseBody.Result.Content.Request.Parameters.Build()
                            model.fromMap(dict["build"] as! [String: Any])
                            self.build = model
                        }
                        if dict.keys.contains("search") {
                            var model = GetModelResponseBody.Result.Content.Request.Parameters.Search()
                            model.fromMap(dict["search"] as! [String: Any])
                            self.search = model
                        }
                    }
                }
                public class UrlParams : Tea.TeaModel {
                    public var build: [String: Any]?

                    public var search: [String: Any]?

                    public override init() {
                        super.init()
                    }

                    public init(_ dict: [String: Any]) {
                        super.init()
                        self.fromMap(dict)
                    }

                    public override func validate() throws -> Void {
                    }

                    public override func toMap() -> [String : Any] {
                        var map = super.toMap()
                        if self.build != nil {
                            map["build"] = self.build!
                        }
                        if self.search != nil {
                            map["search"] = self.search!
                        }
                        return map
                    }

                    public override func fromMap(_ dict: [String: Any]) -> Void {
                        if dict.keys.contains("build") {
                            self.build = dict["build"] as! [String: Any]
                        }
                        if dict.keys.contains("search") {
                            self.search = dict["search"] as! [String: Any]
                        }
                    }
                }
                public var header: GetModelResponseBody.Result.Content.Request.Header?

                public var parameters: GetModelResponseBody.Result.Content.Request.Parameters?

                public var requestBody: String?

                public var urlParams: GetModelResponseBody.Result.Content.Request.UrlParams?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                    try self.header?.validate()
                    try self.parameters?.validate()
                    try self.urlParams?.validate()
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.header != nil {
                        map["header"] = self.header?.toMap()
                    }
                    if self.parameters != nil {
                        map["parameters"] = self.parameters?.toMap()
                    }
                    if self.requestBody != nil {
                        map["requestBody"] = self.requestBody!
                    }
                    if self.urlParams != nil {
                        map["urlParams"] = self.urlParams?.toMap()
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("header") {
                        var model = GetModelResponseBody.Result.Content.Request.Header()
                        model.fromMap(dict["header"] as! [String: Any])
                        self.header = model
                    }
                    if dict.keys.contains("parameters") {
                        var model = GetModelResponseBody.Result.Content.Request.Parameters()
                        model.fromMap(dict["parameters"] as! [String: Any])
                        self.parameters = model
                    }
                    if dict.keys.contains("requestBody") {
                        self.requestBody = dict["requestBody"] as! String
                    }
                    if dict.keys.contains("urlParams") {
                        var model = GetModelResponseBody.Result.Content.Request.UrlParams()
                        model.fromMap(dict["urlParams"] as! [String: Any])
                        self.urlParams = model
                    }
                }
            }
            public class Response : Tea.TeaModel {
                public var embeddings: String?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.embeddings != nil {
                        map["embeddings"] = self.embeddings!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("embeddings") {
                        self.embeddings = dict["embeddings"] as! String
                    }
                }
            }
            public var method: String?

            public var modelName: String?

            public var modelType: String?

            public var request: GetModelResponseBody.Result.Content.Request?

            public var response: GetModelResponseBody.Result.Content.Response?

            public var url: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
                try self.request?.validate()
                try self.response?.validate()
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.method != nil {
                    map["method"] = self.method!
                }
                if self.modelName != nil {
                    map["modelName"] = self.modelName!
                }
                if self.modelType != nil {
                    map["modelType"] = self.modelType!
                }
                if self.request != nil {
                    map["request"] = self.request?.toMap()
                }
                if self.response != nil {
                    map["response"] = self.response?.toMap()
                }
                if self.url != nil {
                    map["url"] = self.url!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("method") {
                    self.method = dict["method"] as! String
                }
                if dict.keys.contains("modelName") {
                    self.modelName = dict["modelName"] as! String
                }
                if dict.keys.contains("modelType") {
                    self.modelType = dict["modelType"] as! String
                }
                if dict.keys.contains("request") {
                    var model = GetModelResponseBody.Result.Content.Request()
                    model.fromMap(dict["request"] as! [String: Any])
                    self.request = model
                }
                if dict.keys.contains("response") {
                    var model = GetModelResponseBody.Result.Content.Response()
                    model.fromMap(dict["response"] as! [String: Any])
                    self.response = model
                }
                if dict.keys.contains("url") {
                    self.url = dict["url"] as! String
                }
            }
        }
        public var content: GetModelResponseBody.Result.Content?

        public var createTime: String?

        public var dimension: Int32?

        public var name: String?

        public var status: String?

        public var type: String?

        public var updateTime: String?

        public var url: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.content?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.content != nil {
                map["content"] = self.content?.toMap()
            }
            if self.createTime != nil {
                map["createTime"] = self.createTime!
            }
            if self.dimension != nil {
                map["dimension"] = self.dimension!
            }
            if self.name != nil {
                map["name"] = self.name!
            }
            if self.status != nil {
                map["status"] = self.status!
            }
            if self.type != nil {
                map["type"] = self.type!
            }
            if self.updateTime != nil {
                map["updateTime"] = self.updateTime!
            }
            if self.url != nil {
                map["url"] = self.url!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("content") {
                var model = GetModelResponseBody.Result.Content()
                model.fromMap(dict["content"] as! [String: Any])
                self.content = model
            }
            if dict.keys.contains("createTime") {
                self.createTime = dict["createTime"] as! String
            }
            if dict.keys.contains("dimension") {
                self.dimension = dict["dimension"] as! Int32
            }
            if dict.keys.contains("name") {
                self.name = dict["name"] as! String
            }
            if dict.keys.contains("status") {
                self.status = dict["status"] as! String
            }
            if dict.keys.contains("type") {
                self.type = dict["type"] as! String
            }
            if dict.keys.contains("updateTime") {
                self.updateTime = dict["updateTime"] as! String
            }
            if dict.keys.contains("url") {
                self.url = dict["url"] as! String
            }
        }
    }
    public var requestId: String?

    public var result: GetModelResponseBody.Result?

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
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        if self.result != nil {
            map["result"] = self.result?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("requestId") {
            self.requestId = dict["requestId"] as! String
        }
        if dict.keys.contains("result") {
            var model = GetModelResponseBody.Result()
            model.fromMap(dict["result"] as! [String: Any])
            self.result = model
        }
    }
}

public class GetModelResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetModelResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = GetModelResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetNodeConfigRequest : Tea.TeaModel {
    public var clusterName: String?

    public var name: String?

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
        if self.clusterName != nil {
            map["clusterName"] = self.clusterName!
        }
        if self.name != nil {
            map["name"] = self.name!
        }
        if self.type != nil {
            map["type"] = self.type!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("clusterName") {
            self.clusterName = dict["clusterName"] as! String
        }
        if dict.keys.contains("name") {
            self.name = dict["name"] as! String
        }
        if dict.keys.contains("type") {
            self.type = dict["type"] as! String
        }
    }
}

public class GetNodeConfigResponseBody : Tea.TeaModel {
    public class Result : Tea.TeaModel {
        public var active: Bool?

        public var dataDuplicateNumber: Int32?

        public var dataFragmentNumber: Int32?

        public var flowRatio: Int32?

        public var minServicePercent: Int32?

        public var published: Bool?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.active != nil {
                map["active"] = self.active!
            }
            if self.dataDuplicateNumber != nil {
                map["dataDuplicateNumber"] = self.dataDuplicateNumber!
            }
            if self.dataFragmentNumber != nil {
                map["dataFragmentNumber"] = self.dataFragmentNumber!
            }
            if self.flowRatio != nil {
                map["flowRatio"] = self.flowRatio!
            }
            if self.minServicePercent != nil {
                map["minServicePercent"] = self.minServicePercent!
            }
            if self.published != nil {
                map["published"] = self.published!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("active") {
                self.active = dict["active"] as! Bool
            }
            if dict.keys.contains("dataDuplicateNumber") {
                self.dataDuplicateNumber = dict["dataDuplicateNumber"] as! Int32
            }
            if dict.keys.contains("dataFragmentNumber") {
                self.dataFragmentNumber = dict["dataFragmentNumber"] as! Int32
            }
            if dict.keys.contains("flowRatio") {
                self.flowRatio = dict["flowRatio"] as! Int32
            }
            if dict.keys.contains("minServicePercent") {
                self.minServicePercent = dict["minServicePercent"] as! Int32
            }
            if dict.keys.contains("published") {
                self.published = dict["published"] as! Bool
            }
        }
    }
    public var requestId: String?

    public var result: GetNodeConfigResponseBody.Result?

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
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        if self.result != nil {
            map["result"] = self.result?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("requestId") {
            self.requestId = dict["requestId"] as! String
        }
        if dict.keys.contains("result") {
            var model = GetNodeConfigResponseBody.Result()
            model.fromMap(dict["result"] as! [String: Any])
            self.result = model
        }
    }
}

public class GetNodeConfigResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetNodeConfigResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = GetNodeConfigResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetSqlInstanceRequest : Tea.TeaModel {
    public var version: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.version != nil {
            map["version"] = self.version!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("version") {
            self.version = dict["version"] as! Int64
        }
    }
}

public class GetSqlInstanceResponseBody : Tea.TeaModel {
    public class Result : Tea.TeaModel {
        public var combineParams: String?

        public var comment: String?

        public var content: String?

        public var dynamicParams: String?

        public var gmtCreate: String?

        public var gmtModified: String?

        public var instanceId: Int64?

        public var kvpairs: String?

        public var relatedTemplateId: Int64?

        public var staticParams: String?

        public var templateParams: String?

        public var version: Int64?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.combineParams != nil {
                map["combineParams"] = self.combineParams!
            }
            if self.comment != nil {
                map["comment"] = self.comment!
            }
            if self.content != nil {
                map["content"] = self.content!
            }
            if self.dynamicParams != nil {
                map["dynamicParams"] = self.dynamicParams!
            }
            if self.gmtCreate != nil {
                map["gmtCreate"] = self.gmtCreate!
            }
            if self.gmtModified != nil {
                map["gmtModified"] = self.gmtModified!
            }
            if self.instanceId != nil {
                map["instanceId"] = self.instanceId!
            }
            if self.kvpairs != nil {
                map["kvpairs"] = self.kvpairs!
            }
            if self.relatedTemplateId != nil {
                map["relatedTemplateId"] = self.relatedTemplateId!
            }
            if self.staticParams != nil {
                map["staticParams"] = self.staticParams!
            }
            if self.templateParams != nil {
                map["templateParams"] = self.templateParams!
            }
            if self.version != nil {
                map["version"] = self.version!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("combineParams") {
                self.combineParams = dict["combineParams"] as! String
            }
            if dict.keys.contains("comment") {
                self.comment = dict["comment"] as! String
            }
            if dict.keys.contains("content") {
                self.content = dict["content"] as! String
            }
            if dict.keys.contains("dynamicParams") {
                self.dynamicParams = dict["dynamicParams"] as! String
            }
            if dict.keys.contains("gmtCreate") {
                self.gmtCreate = dict["gmtCreate"] as! String
            }
            if dict.keys.contains("gmtModified") {
                self.gmtModified = dict["gmtModified"] as! String
            }
            if dict.keys.contains("instanceId") {
                self.instanceId = dict["instanceId"] as! Int64
            }
            if dict.keys.contains("kvpairs") {
                self.kvpairs = dict["kvpairs"] as! String
            }
            if dict.keys.contains("relatedTemplateId") {
                self.relatedTemplateId = dict["relatedTemplateId"] as! Int64
            }
            if dict.keys.contains("staticParams") {
                self.staticParams = dict["staticParams"] as! String
            }
            if dict.keys.contains("templateParams") {
                self.templateParams = dict["templateParams"] as! String
            }
            if dict.keys.contains("version") {
                self.version = dict["version"] as! Int64
            }
        }
    }
    public var requestId: String?

    public var result: GetSqlInstanceResponseBody.Result?

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
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        if self.result != nil {
            map["result"] = self.result?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("requestId") {
            self.requestId = dict["requestId"] as! String
        }
        if dict.keys.contains("result") {
            var model = GetSqlInstanceResponseBody.Result()
            model.fromMap(dict["result"] as! [String: Any])
            self.result = model
        }
    }
}

public class GetSqlInstanceResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetSqlInstanceResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = GetSqlInstanceResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetTableResponseBody : Tea.TeaModel {
    public class Result : Tea.TeaModel {
        public class DataProcessConfig : Tea.TeaModel {
            public class Params : Tea.TeaModel {
                public class SrcFieldConfig : Tea.TeaModel {
                    public var ossBucket: String?

                    public var ossEndpoint: String?

                    public var uid: String?

                    public override init() {
                        super.init()
                    }

                    public init(_ dict: [String: Any]) {
                        super.init()
                        self.fromMap(dict)
                    }

                    public override func validate() throws -> Void {
                    }

                    public override func toMap() -> [String : Any] {
                        var map = super.toMap()
                        if self.ossBucket != nil {
                            map["ossBucket"] = self.ossBucket!
                        }
                        if self.ossEndpoint != nil {
                            map["ossEndpoint"] = self.ossEndpoint!
                        }
                        if self.uid != nil {
                            map["uid"] = self.uid!
                        }
                        return map
                    }

                    public override func fromMap(_ dict: [String: Any]) -> Void {
                        if dict.keys.contains("ossBucket") {
                            self.ossBucket = dict["ossBucket"] as! String
                        }
                        if dict.keys.contains("ossEndpoint") {
                            self.ossEndpoint = dict["ossEndpoint"] as! String
                        }
                        if dict.keys.contains("uid") {
                            self.uid = dict["uid"] as! String
                        }
                    }
                }
                public var srcFieldConfig: GetTableResponseBody.Result.DataProcessConfig.Params.SrcFieldConfig?

                public var vectorModal: String?

                public var vectorModel: String?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                    try self.srcFieldConfig?.validate()
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.srcFieldConfig != nil {
                        map["srcFieldConfig"] = self.srcFieldConfig?.toMap()
                    }
                    if self.vectorModal != nil {
                        map["vectorModal"] = self.vectorModal!
                    }
                    if self.vectorModel != nil {
                        map["vectorModel"] = self.vectorModel!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("srcFieldConfig") {
                        var model = GetTableResponseBody.Result.DataProcessConfig.Params.SrcFieldConfig()
                        model.fromMap(dict["srcFieldConfig"] as! [String: Any])
                        self.srcFieldConfig = model
                    }
                    if dict.keys.contains("vectorModal") {
                        self.vectorModal = dict["vectorModal"] as! String
                    }
                    if dict.keys.contains("vectorModel") {
                        self.vectorModel = dict["vectorModel"] as! String
                    }
                }
            }
            public var dstField: String?

            public var operator_: String?

            public var params: GetTableResponseBody.Result.DataProcessConfig.Params?

            public var srcField: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
                try self.params?.validate()
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.dstField != nil {
                    map["dstField"] = self.dstField!
                }
                if self.operator_ != nil {
                    map["operator"] = self.operator_!
                }
                if self.params != nil {
                    map["params"] = self.params?.toMap()
                }
                if self.srcField != nil {
                    map["srcField"] = self.srcField!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("dstField") {
                    self.dstField = dict["dstField"] as! String
                }
                if dict.keys.contains("operator") {
                    self.operator_ = dict["operator"] as! String
                }
                if dict.keys.contains("params") {
                    var model = GetTableResponseBody.Result.DataProcessConfig.Params()
                    model.fromMap(dict["params"] as! [String: Any])
                    self.params = model
                }
                if dict.keys.contains("srcField") {
                    self.srcField = dict["srcField"] as! String
                }
            }
        }
        public class DataSource : Tea.TeaModel {
            public class Config : Tea.TeaModel {
                public var accessKey: String?

                public var accessSecret: String?

                public var bucket: String?

                public var endpoint: String?

                public var namespace: String?

                public var ossPath: String?

                public var partition: String?

                public var path: String?

                public var project: String?

                public var table: String?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.accessKey != nil {
                        map["accessKey"] = self.accessKey!
                    }
                    if self.accessSecret != nil {
                        map["accessSecret"] = self.accessSecret!
                    }
                    if self.bucket != nil {
                        map["bucket"] = self.bucket!
                    }
                    if self.endpoint != nil {
                        map["endpoint"] = self.endpoint!
                    }
                    if self.namespace != nil {
                        map["namespace"] = self.namespace!
                    }
                    if self.ossPath != nil {
                        map["ossPath"] = self.ossPath!
                    }
                    if self.partition != nil {
                        map["partition"] = self.partition!
                    }
                    if self.path != nil {
                        map["path"] = self.path!
                    }
                    if self.project != nil {
                        map["project"] = self.project!
                    }
                    if self.table != nil {
                        map["table"] = self.table!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("accessKey") {
                        self.accessKey = dict["accessKey"] as! String
                    }
                    if dict.keys.contains("accessSecret") {
                        self.accessSecret = dict["accessSecret"] as! String
                    }
                    if dict.keys.contains("bucket") {
                        self.bucket = dict["bucket"] as! String
                    }
                    if dict.keys.contains("endpoint") {
                        self.endpoint = dict["endpoint"] as! String
                    }
                    if dict.keys.contains("namespace") {
                        self.namespace = dict["namespace"] as! String
                    }
                    if dict.keys.contains("ossPath") {
                        self.ossPath = dict["ossPath"] as! String
                    }
                    if dict.keys.contains("partition") {
                        self.partition = dict["partition"] as! String
                    }
                    if dict.keys.contains("path") {
                        self.path = dict["path"] as! String
                    }
                    if dict.keys.contains("project") {
                        self.project = dict["project"] as! String
                    }
                    if dict.keys.contains("table") {
                        self.table = dict["table"] as! String
                    }
                }
            }
            public var autoBuildIndex: Bool?

            public var config: GetTableResponseBody.Result.DataSource.Config?

            public var dataTimeSec: Int32?

            public var type: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
                try self.config?.validate()
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.autoBuildIndex != nil {
                    map["autoBuildIndex"] = self.autoBuildIndex!
                }
                if self.config != nil {
                    map["config"] = self.config?.toMap()
                }
                if self.dataTimeSec != nil {
                    map["dataTimeSec"] = self.dataTimeSec!
                }
                if self.type != nil {
                    map["type"] = self.type!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("autoBuildIndex") {
                    self.autoBuildIndex = dict["autoBuildIndex"] as! Bool
                }
                if dict.keys.contains("config") {
                    var model = GetTableResponseBody.Result.DataSource.Config()
                    model.fromMap(dict["config"] as! [String: Any])
                    self.config = model
                }
                if dict.keys.contains("dataTimeSec") {
                    self.dataTimeSec = dict["dataTimeSec"] as! Int32
                }
                if dict.keys.contains("type") {
                    self.type = dict["type"] as! String
                }
            }
        }
        public class VectorIndex : Tea.TeaModel {
            public class AdvanceParams : Tea.TeaModel {
                public var buildIndexParams: String?

                public var linearBuildThreshold: String?

                public var minScanDocCnt: String?

                public var searchIndexParams: String?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.buildIndexParams != nil {
                        map["buildIndexParams"] = self.buildIndexParams!
                    }
                    if self.linearBuildThreshold != nil {
                        map["linearBuildThreshold"] = self.linearBuildThreshold!
                    }
                    if self.minScanDocCnt != nil {
                        map["minScanDocCnt"] = self.minScanDocCnt!
                    }
                    if self.searchIndexParams != nil {
                        map["searchIndexParams"] = self.searchIndexParams!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("buildIndexParams") {
                        self.buildIndexParams = dict["buildIndexParams"] as! String
                    }
                    if dict.keys.contains("linearBuildThreshold") {
                        self.linearBuildThreshold = dict["linearBuildThreshold"] as! String
                    }
                    if dict.keys.contains("minScanDocCnt") {
                        self.minScanDocCnt = dict["minScanDocCnt"] as! String
                    }
                    if dict.keys.contains("searchIndexParams") {
                        self.searchIndexParams = dict["searchIndexParams"] as! String
                    }
                }
            }
            public var advanceParams: GetTableResponseBody.Result.VectorIndex.AdvanceParams?

            public var dimension: String?

            public var distanceType: String?

            public var indexName: String?

            public var namespace: String?

            public var sparseIndexField: String?

            public var sparseValueField: String?

            public var vectorField: String?

            public var vectorIndexType: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
                try self.advanceParams?.validate()
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.advanceParams != nil {
                    map["advanceParams"] = self.advanceParams?.toMap()
                }
                if self.dimension != nil {
                    map["dimension"] = self.dimension!
                }
                if self.distanceType != nil {
                    map["distanceType"] = self.distanceType!
                }
                if self.indexName != nil {
                    map["indexName"] = self.indexName!
                }
                if self.namespace != nil {
                    map["namespace"] = self.namespace!
                }
                if self.sparseIndexField != nil {
                    map["sparseIndexField"] = self.sparseIndexField!
                }
                if self.sparseValueField != nil {
                    map["sparseValueField"] = self.sparseValueField!
                }
                if self.vectorField != nil {
                    map["vectorField"] = self.vectorField!
                }
                if self.vectorIndexType != nil {
                    map["vectorIndexType"] = self.vectorIndexType!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("advanceParams") {
                    var model = GetTableResponseBody.Result.VectorIndex.AdvanceParams()
                    model.fromMap(dict["advanceParams"] as! [String: Any])
                    self.advanceParams = model
                }
                if dict.keys.contains("dimension") {
                    self.dimension = dict["dimension"] as! String
                }
                if dict.keys.contains("distanceType") {
                    self.distanceType = dict["distanceType"] as! String
                }
                if dict.keys.contains("indexName") {
                    self.indexName = dict["indexName"] as! String
                }
                if dict.keys.contains("namespace") {
                    self.namespace = dict["namespace"] as! String
                }
                if dict.keys.contains("sparseIndexField") {
                    self.sparseIndexField = dict["sparseIndexField"] as! String
                }
                if dict.keys.contains("sparseValueField") {
                    self.sparseValueField = dict["sparseValueField"] as! String
                }
                if dict.keys.contains("vectorField") {
                    self.vectorField = dict["vectorField"] as! String
                }
                if dict.keys.contains("vectorIndexType") {
                    self.vectorIndexType = dict["vectorIndexType"] as! String
                }
            }
        }
        public var dataProcessConfig: [GetTableResponseBody.Result.DataProcessConfig]?

        public var dataProcessorCount: Int32?

        public var dataSource: GetTableResponseBody.Result.DataSource?

        public var fieldSchema: [String: String]?

        public var name: String?

        public var partitionCount: Int32?

        public var primaryKey: String?

        public var rawSchema: String?

        public var status: String?

        public var vectorIndex: [GetTableResponseBody.Result.VectorIndex]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.dataSource?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.dataProcessConfig != nil {
                var tmp : [Any] = []
                for k in self.dataProcessConfig! {
                    tmp.append(k.toMap())
                }
                map["dataProcessConfig"] = tmp
            }
            if self.dataProcessorCount != nil {
                map["dataProcessorCount"] = self.dataProcessorCount!
            }
            if self.dataSource != nil {
                map["dataSource"] = self.dataSource?.toMap()
            }
            if self.fieldSchema != nil {
                map["fieldSchema"] = self.fieldSchema!
            }
            if self.name != nil {
                map["name"] = self.name!
            }
            if self.partitionCount != nil {
                map["partitionCount"] = self.partitionCount!
            }
            if self.primaryKey != nil {
                map["primaryKey"] = self.primaryKey!
            }
            if self.rawSchema != nil {
                map["rawSchema"] = self.rawSchema!
            }
            if self.status != nil {
                map["status"] = self.status!
            }
            if self.vectorIndex != nil {
                var tmp : [Any] = []
                for k in self.vectorIndex! {
                    tmp.append(k.toMap())
                }
                map["vectorIndex"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("dataProcessConfig") {
                var tmp : [GetTableResponseBody.Result.DataProcessConfig] = []
                for v in dict["dataProcessConfig"] as! [Any] {
                    var model = GetTableResponseBody.Result.DataProcessConfig()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.dataProcessConfig = tmp
            }
            if dict.keys.contains("dataProcessorCount") {
                self.dataProcessorCount = dict["dataProcessorCount"] as! Int32
            }
            if dict.keys.contains("dataSource") {
                var model = GetTableResponseBody.Result.DataSource()
                model.fromMap(dict["dataSource"] as! [String: Any])
                self.dataSource = model
            }
            if dict.keys.contains("fieldSchema") {
                self.fieldSchema = dict["fieldSchema"] as! [String: String]
            }
            if dict.keys.contains("name") {
                self.name = dict["name"] as! String
            }
            if dict.keys.contains("partitionCount") {
                self.partitionCount = dict["partitionCount"] as! Int32
            }
            if dict.keys.contains("primaryKey") {
                self.primaryKey = dict["primaryKey"] as! String
            }
            if dict.keys.contains("rawSchema") {
                self.rawSchema = dict["rawSchema"] as! String
            }
            if dict.keys.contains("status") {
                self.status = dict["status"] as! String
            }
            if dict.keys.contains("vectorIndex") {
                var tmp : [GetTableResponseBody.Result.VectorIndex] = []
                for v in dict["vectorIndex"] as! [Any] {
                    var model = GetTableResponseBody.Result.VectorIndex()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.vectorIndex = tmp
            }
        }
    }
    public var requestId: String?

    public var result: GetTableResponseBody.Result?

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
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        if self.result != nil {
            map["result"] = self.result?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("requestId") {
            self.requestId = dict["requestId"] as! String
        }
        if dict.keys.contains("result") {
            var model = GetTableResponseBody.Result()
            model.fromMap(dict["result"] as! [String: Any])
            self.result = model
        }
    }
}

public class GetTableResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetTableResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = GetTableResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetTableGenerationResponseBody : Tea.TeaModel {
    public class Result : Tea.TeaModel {
        public var generationId: Int64?

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
            if self.generationId != nil {
                map["generationId"] = self.generationId!
            }
            if self.status != nil {
                map["status"] = self.status!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("generationId") {
                self.generationId = dict["generationId"] as! Int64
            }
            if dict.keys.contains("status") {
                self.status = dict["status"] as! String
            }
        }
    }
    public var requestId: String?

    public var result: GetTableGenerationResponseBody.Result?

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
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        if self.result != nil {
            map["result"] = self.result?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("requestId") {
            self.requestId = dict["requestId"] as! String
        }
        if dict.keys.contains("result") {
            var model = GetTableGenerationResponseBody.Result()
            model.fromMap(dict["result"] as! [String: Any])
            self.result = model
        }
    }
}

public class GetTableGenerationResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetTableGenerationResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = GetTableGenerationResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListAdvanceConfigDirRequest : Tea.TeaModel {
    public var dirName: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.dirName != nil {
            map["dirName"] = self.dirName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("dirName") {
            self.dirName = dict["dirName"] as! String
        }
    }
}

public class ListAdvanceConfigDirResponseBody : Tea.TeaModel {
    public class Result : Tea.TeaModel {
        public var fullPathName: String?

        public var isDir: Bool?

        public var isTemplate: Bool?

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
            if self.fullPathName != nil {
                map["fullPathName"] = self.fullPathName!
            }
            if self.isDir != nil {
                map["isDir"] = self.isDir!
            }
            if self.isTemplate != nil {
                map["isTemplate"] = self.isTemplate!
            }
            if self.name != nil {
                map["name"] = self.name!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("fullPathName") {
                self.fullPathName = dict["fullPathName"] as! String
            }
            if dict.keys.contains("isDir") {
                self.isDir = dict["isDir"] as! Bool
            }
            if dict.keys.contains("isTemplate") {
                self.isTemplate = dict["isTemplate"] as! Bool
            }
            if dict.keys.contains("name") {
                self.name = dict["name"] as! String
            }
        }
    }
    public var requestId: String?

    public var result: [ListAdvanceConfigDirResponseBody.Result]?

    public override init() {
        super.init()
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
            map["requestId"] = self.requestId!
        }
        if self.result != nil {
            var tmp : [Any] = []
            for k in self.result! {
                tmp.append(k.toMap())
            }
            map["result"] = tmp
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("requestId") {
            self.requestId = dict["requestId"] as! String
        }
        if dict.keys.contains("result") {
            var tmp : [ListAdvanceConfigDirResponseBody.Result] = []
            for v in dict["result"] as! [Any] {
                var model = ListAdvanceConfigDirResponseBody.Result()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.result = tmp
        }
    }
}

public class ListAdvanceConfigDirResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListAdvanceConfigDirResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = ListAdvanceConfigDirResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListAdvanceConfigsRequest : Tea.TeaModel {
    public var dataSourceName: String?

    public var indexName: String?

    public var newMode: Bool?

    public var pageNumber: String?

    public var pageSize: String?

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
        if self.dataSourceName != nil {
            map["dataSourceName"] = self.dataSourceName!
        }
        if self.indexName != nil {
            map["indexName"] = self.indexName!
        }
        if self.newMode != nil {
            map["newMode"] = self.newMode!
        }
        if self.pageNumber != nil {
            map["pageNumber"] = self.pageNumber!
        }
        if self.pageSize != nil {
            map["pageSize"] = self.pageSize!
        }
        if self.type != nil {
            map["type"] = self.type!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("dataSourceName") {
            self.dataSourceName = dict["dataSourceName"] as! String
        }
        if dict.keys.contains("indexName") {
            self.indexName = dict["indexName"] as! String
        }
        if dict.keys.contains("newMode") {
            self.newMode = dict["newMode"] as! Bool
        }
        if dict.keys.contains("pageNumber") {
            self.pageNumber = dict["pageNumber"] as! String
        }
        if dict.keys.contains("pageSize") {
            self.pageSize = dict["pageSize"] as! String
        }
        if dict.keys.contains("type") {
            self.type = dict["type"] as! String
        }
    }
}

public class ListAdvanceConfigsResponseBody : Tea.TeaModel {
    public class Result : Tea.TeaModel {
        public class Files : Tea.TeaModel {
            public var fullPathName: String?

            public var isDir: Bool?

            public var isTemplate: Bool?

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
                if self.fullPathName != nil {
                    map["fullPathName"] = self.fullPathName!
                }
                if self.isDir != nil {
                    map["isDir"] = self.isDir!
                }
                if self.isTemplate != nil {
                    map["isTemplate"] = self.isTemplate!
                }
                if self.name != nil {
                    map["name"] = self.name!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("fullPathName") {
                    self.fullPathName = dict["fullPathName"] as! String
                }
                if dict.keys.contains("isDir") {
                    self.isDir = dict["isDir"] as! Bool
                }
                if dict.keys.contains("isTemplate") {
                    self.isTemplate = dict["isTemplate"] as! Bool
                }
                if dict.keys.contains("name") {
                    self.name = dict["name"] as! String
                }
            }
        }
        public var advanceConfigType: String?

        public var content: String?

        public var contentType: String?

        public var creator: String?

        public var desc: String?

        public var files: [ListAdvanceConfigsResponseBody.Result.Files]?

        public var name: String?

        public var status: String?

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
            if self.advanceConfigType != nil {
                map["advanceConfigType"] = self.advanceConfigType!
            }
            if self.content != nil {
                map["content"] = self.content!
            }
            if self.contentType != nil {
                map["contentType"] = self.contentType!
            }
            if self.creator != nil {
                map["creator"] = self.creator!
            }
            if self.desc != nil {
                map["desc"] = self.desc!
            }
            if self.files != nil {
                var tmp : [Any] = []
                for k in self.files! {
                    tmp.append(k.toMap())
                }
                map["files"] = tmp
            }
            if self.name != nil {
                map["name"] = self.name!
            }
            if self.status != nil {
                map["status"] = self.status!
            }
            if self.updateTime != nil {
                map["updateTime"] = self.updateTime!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("advanceConfigType") {
                self.advanceConfigType = dict["advanceConfigType"] as! String
            }
            if dict.keys.contains("content") {
                self.content = dict["content"] as! String
            }
            if dict.keys.contains("contentType") {
                self.contentType = dict["contentType"] as! String
            }
            if dict.keys.contains("creator") {
                self.creator = dict["creator"] as! String
            }
            if dict.keys.contains("desc") {
                self.desc = dict["desc"] as! String
            }
            if dict.keys.contains("files") {
                var tmp : [ListAdvanceConfigsResponseBody.Result.Files] = []
                for v in dict["files"] as! [Any] {
                    var model = ListAdvanceConfigsResponseBody.Result.Files()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.files = tmp
            }
            if dict.keys.contains("name") {
                self.name = dict["name"] as! String
            }
            if dict.keys.contains("status") {
                self.status = dict["status"] as! String
            }
            if dict.keys.contains("updateTime") {
                self.updateTime = dict["updateTime"] as! Int64
            }
        }
    }
    public var requestId: String?

    public var result: [ListAdvanceConfigsResponseBody.Result]?

    public override init() {
        super.init()
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
            map["requestId"] = self.requestId!
        }
        if self.result != nil {
            var tmp : [Any] = []
            for k in self.result! {
                tmp.append(k.toMap())
            }
            map["result"] = tmp
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("requestId") {
            self.requestId = dict["requestId"] as! String
        }
        if dict.keys.contains("result") {
            var tmp : [ListAdvanceConfigsResponseBody.Result] = []
            for v in dict["result"] as! [Any] {
                var model = ListAdvanceConfigsResponseBody.Result()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.result = tmp
        }
    }
}

public class ListAdvanceConfigsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListAdvanceConfigsResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = ListAdvanceConfigsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListAliasesResponseBody : Tea.TeaModel {
    public class Result : Tea.TeaModel {
        public var alias: String?

        public var index: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.alias != nil {
                map["alias"] = self.alias!
            }
            if self.index != nil {
                map["index"] = self.index!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("alias") {
                self.alias = dict["alias"] as! String
            }
            if dict.keys.contains("index") {
                self.index = dict["index"] as! String
            }
        }
    }
    public var requestId: String?

    public var result: [ListAliasesResponseBody.Result]?

    public override init() {
        super.init()
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
            map["requestId"] = self.requestId!
        }
        if self.result != nil {
            var tmp : [Any] = []
            for k in self.result! {
                tmp.append(k.toMap())
            }
            map["result"] = tmp
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("requestId") {
            self.requestId = dict["requestId"] as! String
        }
        if dict.keys.contains("result") {
            var tmp : [ListAliasesResponseBody.Result] = []
            for v in dict["result"] as! [Any] {
                var model = ListAliasesResponseBody.Result()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.result = tmp
        }
    }
}

public class ListAliasesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListAliasesResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = ListAliasesResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListClusterNamesResponseBody : Tea.TeaModel {
    public class Result : Tea.TeaModel {
        public var description_: String?

        public var id: Int64?

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
            if self.description_ != nil {
                map["description"] = self.description_!
            }
            if self.id != nil {
                map["id"] = self.id!
            }
            if self.name != nil {
                map["name"] = self.name!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("description") {
                self.description_ = dict["description"] as! String
            }
            if dict.keys.contains("id") {
                self.id = dict["id"] as! Int64
            }
            if dict.keys.contains("name") {
                self.name = dict["name"] as! String
            }
        }
    }
    public var requestId: String?

    public var result: ListClusterNamesResponseBody.Result?

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
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        if self.result != nil {
            map["result"] = self.result?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("requestId") {
            self.requestId = dict["requestId"] as! String
        }
        if dict.keys.contains("result") {
            var model = ListClusterNamesResponseBody.Result()
            model.fromMap(dict["result"] as! [String: Any])
            self.result = model
        }
    }
}

public class ListClusterNamesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListClusterNamesResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = ListClusterNamesResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListClusterTasksResponseBody : Tea.TeaModel {
    public class Result : Tea.TeaModel {
        public class Tags : Tea.TeaModel {
            public var msg: String?

            public var tagLevel: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.msg != nil {
                    map["msg"] = self.msg!
                }
                if self.tagLevel != nil {
                    map["tagLevel"] = self.tagLevel!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("msg") {
                    self.msg = dict["msg"] as! String
                }
                if dict.keys.contains("tagLevel") {
                    self.tagLevel = dict["tagLevel"] as! String
                }
            }
        }
        public class TaskNodes : Tea.TeaModel {
            public var finishDate: String?

            public var index: Int64?

            public var name: String?

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
                if self.finishDate != nil {
                    map["finishDate"] = self.finishDate!
                }
                if self.index != nil {
                    map["index"] = self.index!
                }
                if self.name != nil {
                    map["name"] = self.name!
                }
                if self.status != nil {
                    map["status"] = self.status!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("finishDate") {
                    self.finishDate = dict["finishDate"] as! String
                }
                if dict.keys.contains("index") {
                    self.index = dict["index"] as! Int64
                }
                if dict.keys.contains("name") {
                    self.name = dict["name"] as! String
                }
                if dict.keys.contains("status") {
                    self.status = dict["status"] as! String
                }
            }
        }
        public var extraAttribute: String?

        public var field3: String?

        public var fsmId: String?

        public var groupType: String?

        public var name: String?

        public var status: String?

        public var tags: [ListClusterTasksResponseBody.Result.Tags]?

        public var taskNodes: [ListClusterTasksResponseBody.Result.TaskNodes]?

        public var time: String?

        public var type: String?

        public var user: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.extraAttribute != nil {
                map["extraAttribute"] = self.extraAttribute!
            }
            if self.field3 != nil {
                map["field3"] = self.field3!
            }
            if self.fsmId != nil {
                map["fsmId"] = self.fsmId!
            }
            if self.groupType != nil {
                map["groupType"] = self.groupType!
            }
            if self.name != nil {
                map["name"] = self.name!
            }
            if self.status != nil {
                map["status"] = self.status!
            }
            if self.tags != nil {
                var tmp : [Any] = []
                for k in self.tags! {
                    tmp.append(k.toMap())
                }
                map["tags"] = tmp
            }
            if self.taskNodes != nil {
                var tmp : [Any] = []
                for k in self.taskNodes! {
                    tmp.append(k.toMap())
                }
                map["taskNodes"] = tmp
            }
            if self.time != nil {
                map["time"] = self.time!
            }
            if self.type != nil {
                map["type"] = self.type!
            }
            if self.user != nil {
                map["user"] = self.user!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("extraAttribute") {
                self.extraAttribute = dict["extraAttribute"] as! String
            }
            if dict.keys.contains("field3") {
                self.field3 = dict["field3"] as! String
            }
            if dict.keys.contains("fsmId") {
                self.fsmId = dict["fsmId"] as! String
            }
            if dict.keys.contains("groupType") {
                self.groupType = dict["groupType"] as! String
            }
            if dict.keys.contains("name") {
                self.name = dict["name"] as! String
            }
            if dict.keys.contains("status") {
                self.status = dict["status"] as! String
            }
            if dict.keys.contains("tags") {
                var tmp : [ListClusterTasksResponseBody.Result.Tags] = []
                for v in dict["tags"] as! [Any] {
                    var model = ListClusterTasksResponseBody.Result.Tags()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.tags = tmp
            }
            if dict.keys.contains("taskNodes") {
                var tmp : [ListClusterTasksResponseBody.Result.TaskNodes] = []
                for v in dict["taskNodes"] as! [Any] {
                    var model = ListClusterTasksResponseBody.Result.TaskNodes()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.taskNodes = tmp
            }
            if dict.keys.contains("time") {
                self.time = dict["time"] as! String
            }
            if dict.keys.contains("type") {
                self.type = dict["type"] as! String
            }
            if dict.keys.contains("user") {
                self.user = dict["user"] as! String
            }
        }
    }
    public var requestId: String?

    public var result: [ListClusterTasksResponseBody.Result]?

    public override init() {
        super.init()
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
            map["requestId"] = self.requestId!
        }
        if self.result != nil {
            var tmp : [Any] = []
            for k in self.result! {
                tmp.append(k.toMap())
            }
            map["result"] = tmp
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("requestId") {
            self.requestId = dict["requestId"] as! String
        }
        if dict.keys.contains("result") {
            var tmp : [ListClusterTasksResponseBody.Result] = []
            for v in dict["result"] as! [Any] {
                var model = ListClusterTasksResponseBody.Result()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.result = tmp
        }
    }
}

public class ListClusterTasksResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListClusterTasksResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = ListClusterTasksResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListClustersResponseBody : Tea.TeaModel {
    public class Result : Tea.TeaModel {
        public class DataNode : Tea.TeaModel {
            public var name: String?

            public var number: Int32?

            public var partition: Int32?

            public override init() {
                super.init()
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
                    map["name"] = self.name!
                }
                if self.number != nil {
                    map["number"] = self.number!
                }
                if self.partition != nil {
                    map["partition"] = self.partition!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("name") {
                    self.name = dict["name"] as! String
                }
                if dict.keys.contains("number") {
                    self.number = dict["number"] as! Int32
                }
                if dict.keys.contains("partition") {
                    self.partition = dict["partition"] as! Int32
                }
            }
        }
        public class QueryNode : Tea.TeaModel {
            public var name: String?

            public var number: Int32?

            public var partition: Int32?

            public override init() {
                super.init()
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
                    map["name"] = self.name!
                }
                if self.number != nil {
                    map["number"] = self.number!
                }
                if self.partition != nil {
                    map["partition"] = self.partition!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("name") {
                    self.name = dict["name"] as! String
                }
                if dict.keys.contains("number") {
                    self.number = dict["number"] as! Int32
                }
                if dict.keys.contains("partition") {
                    self.partition = dict["partition"] as! Int32
                }
            }
        }
        public var config: [String: [String: Any]]?

        public var configUpdateTime: String?

        public var createTime: String?

        public var currentAdvanceConfigVersion: String?

        public var currentOfflineDictConfigVersion: String?

        public var currentOnlineConfigVersion: String?

        public var currentOnlineQueryConfigVersion: String?

        public var dataNode: ListClustersResponseBody.Result.DataNode?

        public var description_: String?

        public var latestAdvanceConfigVersion: String?

        public var latestOfflineDictConfigVersion: String?

        public var latestOnlineConfigVersion: String?

        public var latestOnlineQueryConfigVersion: String?

        public var name: String?

        public var queryNode: ListClustersResponseBody.Result.QueryNode?

        public var status: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.dataNode?.validate()
            try self.queryNode?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.config != nil {
                map["config"] = self.config!
            }
            if self.configUpdateTime != nil {
                map["configUpdateTime"] = self.configUpdateTime!
            }
            if self.createTime != nil {
                map["createTime"] = self.createTime!
            }
            if self.currentAdvanceConfigVersion != nil {
                map["currentAdvanceConfigVersion"] = self.currentAdvanceConfigVersion!
            }
            if self.currentOfflineDictConfigVersion != nil {
                map["currentOfflineDictConfigVersion"] = self.currentOfflineDictConfigVersion!
            }
            if self.currentOnlineConfigVersion != nil {
                map["currentOnlineConfigVersion"] = self.currentOnlineConfigVersion!
            }
            if self.currentOnlineQueryConfigVersion != nil {
                map["currentOnlineQueryConfigVersion"] = self.currentOnlineQueryConfigVersion!
            }
            if self.dataNode != nil {
                map["dataNode"] = self.dataNode?.toMap()
            }
            if self.description_ != nil {
                map["description"] = self.description_!
            }
            if self.latestAdvanceConfigVersion != nil {
                map["latestAdvanceConfigVersion"] = self.latestAdvanceConfigVersion!
            }
            if self.latestOfflineDictConfigVersion != nil {
                map["latestOfflineDictConfigVersion"] = self.latestOfflineDictConfigVersion!
            }
            if self.latestOnlineConfigVersion != nil {
                map["latestOnlineConfigVersion"] = self.latestOnlineConfigVersion!
            }
            if self.latestOnlineQueryConfigVersion != nil {
                map["latestOnlineQueryConfigVersion"] = self.latestOnlineQueryConfigVersion!
            }
            if self.name != nil {
                map["name"] = self.name!
            }
            if self.queryNode != nil {
                map["queryNode"] = self.queryNode?.toMap()
            }
            if self.status != nil {
                map["status"] = self.status!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("config") {
                self.config = dict["config"] as! [String: [String: Any]]
            }
            if dict.keys.contains("configUpdateTime") {
                self.configUpdateTime = dict["configUpdateTime"] as! String
            }
            if dict.keys.contains("createTime") {
                self.createTime = dict["createTime"] as! String
            }
            if dict.keys.contains("currentAdvanceConfigVersion") {
                self.currentAdvanceConfigVersion = dict["currentAdvanceConfigVersion"] as! String
            }
            if dict.keys.contains("currentOfflineDictConfigVersion") {
                self.currentOfflineDictConfigVersion = dict["currentOfflineDictConfigVersion"] as! String
            }
            if dict.keys.contains("currentOnlineConfigVersion") {
                self.currentOnlineConfigVersion = dict["currentOnlineConfigVersion"] as! String
            }
            if dict.keys.contains("currentOnlineQueryConfigVersion") {
                self.currentOnlineQueryConfigVersion = dict["currentOnlineQueryConfigVersion"] as! String
            }
            if dict.keys.contains("dataNode") {
                var model = ListClustersResponseBody.Result.DataNode()
                model.fromMap(dict["dataNode"] as! [String: Any])
                self.dataNode = model
            }
            if dict.keys.contains("description") {
                self.description_ = dict["description"] as! String
            }
            if dict.keys.contains("latestAdvanceConfigVersion") {
                self.latestAdvanceConfigVersion = dict["latestAdvanceConfigVersion"] as! String
            }
            if dict.keys.contains("latestOfflineDictConfigVersion") {
                self.latestOfflineDictConfigVersion = dict["latestOfflineDictConfigVersion"] as! String
            }
            if dict.keys.contains("latestOnlineConfigVersion") {
                self.latestOnlineConfigVersion = dict["latestOnlineConfigVersion"] as! String
            }
            if dict.keys.contains("latestOnlineQueryConfigVersion") {
                self.latestOnlineQueryConfigVersion = dict["latestOnlineQueryConfigVersion"] as! String
            }
            if dict.keys.contains("name") {
                self.name = dict["name"] as! String
            }
            if dict.keys.contains("queryNode") {
                var model = ListClustersResponseBody.Result.QueryNode()
                model.fromMap(dict["queryNode"] as! [String: Any])
                self.queryNode = model
            }
            if dict.keys.contains("status") {
                self.status = dict["status"] as! String
            }
        }
    }
    public var requestId: String?

    public var result: [ListClustersResponseBody.Result]?

    public override init() {
        super.init()
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
            map["requestId"] = self.requestId!
        }
        if self.result != nil {
            var tmp : [Any] = []
            for k in self.result! {
                tmp.append(k.toMap())
            }
            map["result"] = tmp
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("requestId") {
            self.requestId = dict["requestId"] as! String
        }
        if dict.keys.contains("result") {
            var tmp : [ListClustersResponseBody.Result] = []
            for v in dict["result"] as! [Any] {
                var model = ListClustersResponseBody.Result()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.result = tmp
        }
    }
}

public class ListClustersResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListClustersResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = ListClustersResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListDataSourceSchemasResponseBody : Tea.TeaModel {
    public class Result : Tea.TeaModel {
        public class PrimaryKey : Tea.TeaModel {
            public var hasPrimaryKeyAttribute: Bool?

            public var isPrimaryKey: Bool?

            public var isPrimaryKeySorted: Bool?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.hasPrimaryKeyAttribute != nil {
                    map["hasPrimaryKeyAttribute"] = self.hasPrimaryKeyAttribute!
                }
                if self.isPrimaryKey != nil {
                    map["isPrimaryKey"] = self.isPrimaryKey!
                }
                if self.isPrimaryKeySorted != nil {
                    map["isPrimaryKeySorted"] = self.isPrimaryKeySorted!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("hasPrimaryKeyAttribute") {
                    self.hasPrimaryKeyAttribute = dict["hasPrimaryKeyAttribute"] as! Bool
                }
                if dict.keys.contains("isPrimaryKey") {
                    self.isPrimaryKey = dict["isPrimaryKey"] as! Bool
                }
                if dict.keys.contains("isPrimaryKeySorted") {
                    self.isPrimaryKeySorted = dict["isPrimaryKeySorted"] as! Bool
                }
            }
        }
        public var addIndex: Bool?

        public var attribute: Bool?

        public var custom: Bool?

        public var name: String?

        public var primaryKey: ListDataSourceSchemasResponseBody.Result.PrimaryKey?

        public var summary: Bool?

        public var type: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.primaryKey?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.addIndex != nil {
                map["addIndex"] = self.addIndex!
            }
            if self.attribute != nil {
                map["attribute"] = self.attribute!
            }
            if self.custom != nil {
                map["custom"] = self.custom!
            }
            if self.name != nil {
                map["name"] = self.name!
            }
            if self.primaryKey != nil {
                map["primaryKey"] = self.primaryKey?.toMap()
            }
            if self.summary != nil {
                map["summary"] = self.summary!
            }
            if self.type != nil {
                map["type"] = self.type!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("addIndex") {
                self.addIndex = dict["addIndex"] as! Bool
            }
            if dict.keys.contains("attribute") {
                self.attribute = dict["attribute"] as! Bool
            }
            if dict.keys.contains("custom") {
                self.custom = dict["custom"] as! Bool
            }
            if dict.keys.contains("name") {
                self.name = dict["name"] as! String
            }
            if dict.keys.contains("primaryKey") {
                var model = ListDataSourceSchemasResponseBody.Result.PrimaryKey()
                model.fromMap(dict["primaryKey"] as! [String: Any])
                self.primaryKey = model
            }
            if dict.keys.contains("summary") {
                self.summary = dict["summary"] as! Bool
            }
            if dict.keys.contains("type") {
                self.type = dict["type"] as! String
            }
        }
    }
    public var requestId: String?

    public var result: [ListDataSourceSchemasResponseBody.Result]?

    public override init() {
        super.init()
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
            map["requestId"] = self.requestId!
        }
        if self.result != nil {
            var tmp : [Any] = []
            for k in self.result! {
                tmp.append(k.toMap())
            }
            map["result"] = tmp
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("requestId") {
            self.requestId = dict["requestId"] as! String
        }
        if dict.keys.contains("result") {
            var tmp : [ListDataSourceSchemasResponseBody.Result] = []
            for v in dict["result"] as! [Any] {
                var model = ListDataSourceSchemasResponseBody.Result()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.result = tmp
        }
    }
}

public class ListDataSourceSchemasResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListDataSourceSchemasResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = ListDataSourceSchemasResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListDataSourceTasksResponseBody : Tea.TeaModel {
    public class Result : Tea.TeaModel {
        public class Tags : Tea.TeaModel {
            public var msg: String?

            public var tagLevel: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.msg != nil {
                    map["msg"] = self.msg!
                }
                if self.tagLevel != nil {
                    map["tagLevel"] = self.tagLevel!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("msg") {
                    self.msg = dict["msg"] as! String
                }
                if dict.keys.contains("tagLevel") {
                    self.tagLevel = dict["tagLevel"] as! String
                }
            }
        }
        public class TaskNodes : Tea.TeaModel {
            public var finishDate: String?

            public var index: Int64?

            public var name: String?

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
                if self.finishDate != nil {
                    map["finishDate"] = self.finishDate!
                }
                if self.index != nil {
                    map["index"] = self.index!
                }
                if self.name != nil {
                    map["name"] = self.name!
                }
                if self.status != nil {
                    map["status"] = self.status!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("finishDate") {
                    self.finishDate = dict["finishDate"] as! String
                }
                if dict.keys.contains("index") {
                    self.index = dict["index"] as! Int64
                }
                if dict.keys.contains("name") {
                    self.name = dict["name"] as! String
                }
                if dict.keys.contains("status") {
                    self.status = dict["status"] as! String
                }
            }
        }
        public var extraAttribute: String?

        public var field3: String?

        public var fsmId: String?

        public var groupType: String?

        public var name: String?

        public var status: String?

        public var tags: [ListDataSourceTasksResponseBody.Result.Tags]?

        public var taskNodes: [ListDataSourceTasksResponseBody.Result.TaskNodes]?

        public var time: String?

        public var type: String?

        public var user: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.extraAttribute != nil {
                map["extraAttribute"] = self.extraAttribute!
            }
            if self.field3 != nil {
                map["field3"] = self.field3!
            }
            if self.fsmId != nil {
                map["fsmId"] = self.fsmId!
            }
            if self.groupType != nil {
                map["groupType"] = self.groupType!
            }
            if self.name != nil {
                map["name"] = self.name!
            }
            if self.status != nil {
                map["status"] = self.status!
            }
            if self.tags != nil {
                var tmp : [Any] = []
                for k in self.tags! {
                    tmp.append(k.toMap())
                }
                map["tags"] = tmp
            }
            if self.taskNodes != nil {
                var tmp : [Any] = []
                for k in self.taskNodes! {
                    tmp.append(k.toMap())
                }
                map["taskNodes"] = tmp
            }
            if self.time != nil {
                map["time"] = self.time!
            }
            if self.type != nil {
                map["type"] = self.type!
            }
            if self.user != nil {
                map["user"] = self.user!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("extraAttribute") {
                self.extraAttribute = dict["extraAttribute"] as! String
            }
            if dict.keys.contains("field3") {
                self.field3 = dict["field3"] as! String
            }
            if dict.keys.contains("fsmId") {
                self.fsmId = dict["fsmId"] as! String
            }
            if dict.keys.contains("groupType") {
                self.groupType = dict["groupType"] as! String
            }
            if dict.keys.contains("name") {
                self.name = dict["name"] as! String
            }
            if dict.keys.contains("status") {
                self.status = dict["status"] as! String
            }
            if dict.keys.contains("tags") {
                var tmp : [ListDataSourceTasksResponseBody.Result.Tags] = []
                for v in dict["tags"] as! [Any] {
                    var model = ListDataSourceTasksResponseBody.Result.Tags()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.tags = tmp
            }
            if dict.keys.contains("taskNodes") {
                var tmp : [ListDataSourceTasksResponseBody.Result.TaskNodes] = []
                for v in dict["taskNodes"] as! [Any] {
                    var model = ListDataSourceTasksResponseBody.Result.TaskNodes()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.taskNodes = tmp
            }
            if dict.keys.contains("time") {
                self.time = dict["time"] as! String
            }
            if dict.keys.contains("type") {
                self.type = dict["type"] as! String
            }
            if dict.keys.contains("user") {
                self.user = dict["user"] as! String
            }
        }
    }
    public var requestId: String?

    public var result: [ListDataSourceTasksResponseBody.Result]?

    public override init() {
        super.init()
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
            map["requestId"] = self.requestId!
        }
        if self.result != nil {
            var tmp : [Any] = []
            for k in self.result! {
                tmp.append(k.toMap())
            }
            map["result"] = tmp
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("requestId") {
            self.requestId = dict["requestId"] as! String
        }
        if dict.keys.contains("result") {
            var tmp : [ListDataSourceTasksResponseBody.Result] = []
            for v in dict["result"] as! [Any] {
                var model = ListDataSourceTasksResponseBody.Result()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.result = tmp
        }
    }
}

public class ListDataSourceTasksResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListDataSourceTasksResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = ListDataSourceTasksResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListDataSourcesResponseBody : Tea.TeaModel {
    public class Result : Tea.TeaModel {
        public var domain: String?

        public var indexes: [String]?

        public var lastFulTime: Int64?

        public var name: String?

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
            if self.domain != nil {
                map["domain"] = self.domain!
            }
            if self.indexes != nil {
                map["indexes"] = self.indexes!
            }
            if self.lastFulTime != nil {
                map["lastFulTime"] = self.lastFulTime!
            }
            if self.name != nil {
                map["name"] = self.name!
            }
            if self.status != nil {
                map["status"] = self.status!
            }
            if self.type != nil {
                map["type"] = self.type!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("domain") {
                self.domain = dict["domain"] as! String
            }
            if dict.keys.contains("indexes") {
                self.indexes = dict["indexes"] as! [String]
            }
            if dict.keys.contains("lastFulTime") {
                self.lastFulTime = dict["lastFulTime"] as! Int64
            }
            if dict.keys.contains("name") {
                self.name = dict["name"] as! String
            }
            if dict.keys.contains("status") {
                self.status = dict["status"] as! String
            }
            if dict.keys.contains("type") {
                self.type = dict["type"] as! String
            }
        }
    }
    public var requestId: String?

    public var result: [ListDataSourcesResponseBody.Result]?

    public override init() {
        super.init()
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
            map["requestId"] = self.requestId!
        }
        if self.result != nil {
            var tmp : [Any] = []
            for k in self.result! {
                tmp.append(k.toMap())
            }
            map["result"] = tmp
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("requestId") {
            self.requestId = dict["requestId"] as! String
        }
        if dict.keys.contains("result") {
            var tmp : [ListDataSourcesResponseBody.Result] = []
            for v in dict["result"] as! [Any] {
                var model = ListDataSourcesResponseBody.Result()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.result = tmp
        }
    }
}

public class ListDataSourcesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListDataSourcesResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = ListDataSourcesResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListDatabasesResponseBody : Tea.TeaModel {
    public class Result : Tea.TeaModel {
        public class Databases : Tea.TeaModel {
            public class SqlInstances : Tea.TeaModel {
                public var children: [Any]?

                public var id: Int64?

                public var instanceId: Int64?

                public var isDir: Int32?

                public var name: String?

                public var parent: Int64?

                public var templateId: Int64?

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
                        map["children"] = self.children!
                    }
                    if self.id != nil {
                        map["id"] = self.id!
                    }
                    if self.instanceId != nil {
                        map["instanceId"] = self.instanceId!
                    }
                    if self.isDir != nil {
                        map["isDir"] = self.isDir!
                    }
                    if self.name != nil {
                        map["name"] = self.name!
                    }
                    if self.parent != nil {
                        map["parent"] = self.parent!
                    }
                    if self.templateId != nil {
                        map["templateId"] = self.templateId!
                    }
                    if self.type != nil {
                        map["type"] = self.type!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("children") {
                        self.children = dict["children"] as! [Any]
                    }
                    if dict.keys.contains("id") {
                        self.id = dict["id"] as! Int64
                    }
                    if dict.keys.contains("instanceId") {
                        self.instanceId = dict["instanceId"] as! Int64
                    }
                    if dict.keys.contains("isDir") {
                        self.isDir = dict["isDir"] as! Int32
                    }
                    if dict.keys.contains("name") {
                        self.name = dict["name"] as! String
                    }
                    if dict.keys.contains("parent") {
                        self.parent = dict["parent"] as! Int64
                    }
                    if dict.keys.contains("templateId") {
                        self.templateId = dict["templateId"] as! Int64
                    }
                    if dict.keys.contains("type") {
                        self.type = dict["type"] as! String
                    }
                }
            }
            public class Tables : Tea.TeaModel {
                public var children: [Any]?

                public var id: Int64?

                public var instanceId: Int64?

                public var isDir: Int32?

                public var name: String?

                public var parent: Int64?

                public var templateId: Int64?

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
                        map["children"] = self.children!
                    }
                    if self.id != nil {
                        map["id"] = self.id!
                    }
                    if self.instanceId != nil {
                        map["instanceId"] = self.instanceId!
                    }
                    if self.isDir != nil {
                        map["isDir"] = self.isDir!
                    }
                    if self.name != nil {
                        map["name"] = self.name!
                    }
                    if self.parent != nil {
                        map["parent"] = self.parent!
                    }
                    if self.templateId != nil {
                        map["templateId"] = self.templateId!
                    }
                    if self.type != nil {
                        map["type"] = self.type!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("children") {
                        self.children = dict["children"] as! [Any]
                    }
                    if dict.keys.contains("id") {
                        self.id = dict["id"] as! Int64
                    }
                    if dict.keys.contains("instanceId") {
                        self.instanceId = dict["instanceId"] as! Int64
                    }
                    if dict.keys.contains("isDir") {
                        self.isDir = dict["isDir"] as! Int32
                    }
                    if dict.keys.contains("name") {
                        self.name = dict["name"] as! String
                    }
                    if dict.keys.contains("parent") {
                        self.parent = dict["parent"] as! Int64
                    }
                    if dict.keys.contains("templateId") {
                        self.templateId = dict["templateId"] as! Int64
                    }
                    if dict.keys.contains("type") {
                        self.type = dict["type"] as! String
                    }
                }
            }
            public class Templates : Tea.TeaModel {
                public var children: [Any]?

                public var id: Int64?

                public var instanceId: Int64?

                public var isDir: Int32?

                public var name: String?

                public var parent: Int64?

                public var templateId: Int64?

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
                        map["children"] = self.children!
                    }
                    if self.id != nil {
                        map["id"] = self.id!
                    }
                    if self.instanceId != nil {
                        map["instanceId"] = self.instanceId!
                    }
                    if self.isDir != nil {
                        map["isDir"] = self.isDir!
                    }
                    if self.name != nil {
                        map["name"] = self.name!
                    }
                    if self.parent != nil {
                        map["parent"] = self.parent!
                    }
                    if self.templateId != nil {
                        map["templateId"] = self.templateId!
                    }
                    if self.type != nil {
                        map["type"] = self.type!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("children") {
                        self.children = dict["children"] as! [Any]
                    }
                    if dict.keys.contains("id") {
                        self.id = dict["id"] as! Int64
                    }
                    if dict.keys.contains("instanceId") {
                        self.instanceId = dict["instanceId"] as! Int64
                    }
                    if dict.keys.contains("isDir") {
                        self.isDir = dict["isDir"] as! Int32
                    }
                    if dict.keys.contains("name") {
                        self.name = dict["name"] as! String
                    }
                    if dict.keys.contains("parent") {
                        self.parent = dict["parent"] as! Int64
                    }
                    if dict.keys.contains("templateId") {
                        self.templateId = dict["templateId"] as! Int64
                    }
                    if dict.keys.contains("type") {
                        self.type = dict["type"] as! String
                    }
                }
            }
            public var database: String?

            public var functions: [String: [ResultDatabasesFunctionsValue]]?

            public var sqlInstances: [ListDatabasesResponseBody.Result.Databases.SqlInstances]?

            public var tables: [ListDatabasesResponseBody.Result.Databases.Tables]?

            public var templates: [ListDatabasesResponseBody.Result.Databases.Templates]?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.database != nil {
                    map["database"] = self.database!
                }
                if self.functions != nil {
                    var tmp : [String: Any] = [:]
                    for (k, v) in self.functions! {
                        var l1 : [Any] = []
                        for k1 in v {
                            l1.append(k1.toMap())
                        }
                        tmp[k] = l1
                    }
                    map["functions"] = tmp
                }
                if self.sqlInstances != nil {
                    var tmp : [Any] = []
                    for k in self.sqlInstances! {
                        tmp.append(k.toMap())
                    }
                    map["sqlInstances"] = tmp
                }
                if self.tables != nil {
                    var tmp : [Any] = []
                    for k in self.tables! {
                        tmp.append(k.toMap())
                    }
                    map["tables"] = tmp
                }
                if self.templates != nil {
                    var tmp : [Any] = []
                    for k in self.templates! {
                        tmp.append(k.toMap())
                    }
                    map["templates"] = tmp
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("database") {
                    self.database = dict["database"] as! String
                }
                if dict.keys.contains("functions") {
                    var tmp : [String: [ResultDatabasesFunctionsValue]] = [:]
                    for (k, v) in dict["functions"] as! [String: Any] {
                        var l1 : [ResultDatabasesFunctionsValue] = []
                        for v1 in v as! [Any] {
                            var model = ResultDatabasesFunctionsValue()
                            if v1 != nil {
                                model.fromMap(v1 as! [String: Any])
                            }
                            l1.append(model)
                        }
                        tmp[k] = l1
                    }
                    self.functions = tmp
                }
                if dict.keys.contains("sqlInstances") {
                    var tmp : [ListDatabasesResponseBody.Result.Databases.SqlInstances] = []
                    for v in dict["sqlInstances"] as! [Any] {
                        var model = ListDatabasesResponseBody.Result.Databases.SqlInstances()
                        if v != nil {
                            model.fromMap(v as! [String: Any])
                        }
                        tmp.append(model)
                    }
                    self.sqlInstances = tmp
                }
                if dict.keys.contains("tables") {
                    var tmp : [ListDatabasesResponseBody.Result.Databases.Tables] = []
                    for v in dict["tables"] as! [Any] {
                        var model = ListDatabasesResponseBody.Result.Databases.Tables()
                        if v != nil {
                            model.fromMap(v as! [String: Any])
                        }
                        tmp.append(model)
                    }
                    self.tables = tmp
                }
                if dict.keys.contains("templates") {
                    var tmp : [ListDatabasesResponseBody.Result.Databases.Templates] = []
                    for v in dict["templates"] as! [Any] {
                        var model = ListDatabasesResponseBody.Result.Databases.Templates()
                        if v != nil {
                            model.fromMap(v as! [String: Any])
                        }
                        tmp.append(model)
                    }
                    self.templates = tmp
                }
            }
        }
        public var databases: [ListDatabasesResponseBody.Result.Databases]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.databases != nil {
                var tmp : [Any] = []
                for k in self.databases! {
                    tmp.append(k.toMap())
                }
                map["databases"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("databases") {
                var tmp : [ListDatabasesResponseBody.Result.Databases] = []
                for v in dict["databases"] as! [Any] {
                    var model = ListDatabasesResponseBody.Result.Databases()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.databases = tmp
            }
        }
    }
    public var requestId: String?

    public var result: ListDatabasesResponseBody.Result?

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
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        if self.result != nil {
            map["result"] = self.result?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("requestId") {
            self.requestId = dict["requestId"] as! String
        }
        if dict.keys.contains("result") {
            var model = ListDatabasesResponseBody.Result()
            model.fromMap(dict["result"] as! [String: Any])
            self.result = model
        }
    }
}

public class ListDatabasesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListDatabasesResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = ListDatabasesResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListDateSourceGenerationsRequest : Tea.TeaModel {
    public var domainName: String?

    public var validStatus: Bool?

    public override init() {
        super.init()
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
            map["domainName"] = self.domainName!
        }
        if self.validStatus != nil {
            map["validStatus"] = self.validStatus!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("domainName") {
            self.domainName = dict["domainName"] as! String
        }
        if dict.keys.contains("validStatus") {
            self.validStatus = dict["validStatus"] as! Bool
        }
    }
}

public class ListDateSourceGenerationsResponseBody : Tea.TeaModel {
    public class Result : Tea.TeaModel {
        public var buildDeployId: Int32?

        public var createTime: Int64?

        public var dataDumpRoot: String?

        public var generation: Int64?

        public var partition: [String: Int32]?

        public var status: String?

        public var timestamp: Int64?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.buildDeployId != nil {
                map["buildDeployId"] = self.buildDeployId!
            }
            if self.createTime != nil {
                map["createTime"] = self.createTime!
            }
            if self.dataDumpRoot != nil {
                map["dataDumpRoot"] = self.dataDumpRoot!
            }
            if self.generation != nil {
                map["generation"] = self.generation!
            }
            if self.partition != nil {
                map["partition"] = self.partition!
            }
            if self.status != nil {
                map["status"] = self.status!
            }
            if self.timestamp != nil {
                map["timestamp"] = self.timestamp!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("buildDeployId") {
                self.buildDeployId = dict["buildDeployId"] as! Int32
            }
            if dict.keys.contains("createTime") {
                self.createTime = dict["createTime"] as! Int64
            }
            if dict.keys.contains("dataDumpRoot") {
                self.dataDumpRoot = dict["dataDumpRoot"] as! String
            }
            if dict.keys.contains("generation") {
                self.generation = dict["generation"] as! Int64
            }
            if dict.keys.contains("partition") {
                self.partition = dict["partition"] as! [String: Int32]
            }
            if dict.keys.contains("status") {
                self.status = dict["status"] as! String
            }
            if dict.keys.contains("timestamp") {
                self.timestamp = dict["timestamp"] as! Int64
            }
        }
    }
    public var requestId: String?

    public var result: [ListDateSourceGenerationsResponseBody.Result]?

    public override init() {
        super.init()
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
            map["requestId"] = self.requestId!
        }
        if self.result != nil {
            var tmp : [Any] = []
            for k in self.result! {
                tmp.append(k.toMap())
            }
            map["result"] = tmp
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("requestId") {
            self.requestId = dict["requestId"] as! String
        }
        if dict.keys.contains("result") {
            var tmp : [ListDateSourceGenerationsResponseBody.Result] = []
            for v in dict["result"] as! [Any] {
                var model = ListDateSourceGenerationsResponseBody.Result()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.result = tmp
        }
    }
}

public class ListDateSourceGenerationsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListDateSourceGenerationsResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = ListDateSourceGenerationsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListIndexRecoverRecordsResponseBody : Tea.TeaModel {
    public var desc: String?

    public var finishedTime: String?

    public var generationId: String?

    public override init() {
        super.init()
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
            map["desc"] = self.desc!
        }
        if self.finishedTime != nil {
            map["finishedTime"] = self.finishedTime!
        }
        if self.generationId != nil {
            map["generationId"] = self.generationId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("desc") {
            self.desc = dict["desc"] as! String
        }
        if dict.keys.contains("finishedTime") {
            self.finishedTime = dict["finishedTime"] as! String
        }
        if dict.keys.contains("generationId") {
            self.generationId = dict["generationId"] as! String
        }
    }
}

public class ListIndexRecoverRecordsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListIndexRecoverRecordsResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = ListIndexRecoverRecordsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListIndexesRequest : Tea.TeaModel {
    public var catalog: String?

    public var database: String?

    public var newMode: Bool?

    public var table: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.catalog != nil {
            map["catalog"] = self.catalog!
        }
        if self.database != nil {
            map["database"] = self.database!
        }
        if self.newMode != nil {
            map["newMode"] = self.newMode!
        }
        if self.table != nil {
            map["table"] = self.table!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("catalog") {
            self.catalog = dict["catalog"] as! String
        }
        if dict.keys.contains("database") {
            self.database = dict["database"] as! String
        }
        if dict.keys.contains("newMode") {
            self.newMode = dict["newMode"] as! Bool
        }
        if dict.keys.contains("table") {
            self.table = dict["table"] as! String
        }
    }
}

public class ListIndexesResponseBody : Tea.TeaModel {
    public class Result : Tea.TeaModel {
        public class DataSourceInfo : Tea.TeaModel {
            public class Config : Tea.TeaModel {
                public var accessKey: String?

                public var accessSecret: String?

                public var bucket: String?

                public var catalog: String?

                public var database: String?

                public var endpoint: String?

                public var format: String?

                public var namespace: String?

                public var ossPath: String?

                public var partition: String?

                public var path: String?

                public var project: String?

                public var table: String?

                public var tag: String?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.accessKey != nil {
                        map["accessKey"] = self.accessKey!
                    }
                    if self.accessSecret != nil {
                        map["accessSecret"] = self.accessSecret!
                    }
                    if self.bucket != nil {
                        map["bucket"] = self.bucket!
                    }
                    if self.catalog != nil {
                        map["catalog"] = self.catalog!
                    }
                    if self.database != nil {
                        map["database"] = self.database!
                    }
                    if self.endpoint != nil {
                        map["endpoint"] = self.endpoint!
                    }
                    if self.format != nil {
                        map["format"] = self.format!
                    }
                    if self.namespace != nil {
                        map["namespace"] = self.namespace!
                    }
                    if self.ossPath != nil {
                        map["ossPath"] = self.ossPath!
                    }
                    if self.partition != nil {
                        map["partition"] = self.partition!
                    }
                    if self.path != nil {
                        map["path"] = self.path!
                    }
                    if self.project != nil {
                        map["project"] = self.project!
                    }
                    if self.table != nil {
                        map["table"] = self.table!
                    }
                    if self.tag != nil {
                        map["tag"] = self.tag!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("accessKey") {
                        self.accessKey = dict["accessKey"] as! String
                    }
                    if dict.keys.contains("accessSecret") {
                        self.accessSecret = dict["accessSecret"] as! String
                    }
                    if dict.keys.contains("bucket") {
                        self.bucket = dict["bucket"] as! String
                    }
                    if dict.keys.contains("catalog") {
                        self.catalog = dict["catalog"] as! String
                    }
                    if dict.keys.contains("database") {
                        self.database = dict["database"] as! String
                    }
                    if dict.keys.contains("endpoint") {
                        self.endpoint = dict["endpoint"] as! String
                    }
                    if dict.keys.contains("format") {
                        self.format = dict["format"] as! String
                    }
                    if dict.keys.contains("namespace") {
                        self.namespace = dict["namespace"] as! String
                    }
                    if dict.keys.contains("ossPath") {
                        self.ossPath = dict["ossPath"] as! String
                    }
                    if dict.keys.contains("partition") {
                        self.partition = dict["partition"] as! String
                    }
                    if dict.keys.contains("path") {
                        self.path = dict["path"] as! String
                    }
                    if dict.keys.contains("project") {
                        self.project = dict["project"] as! String
                    }
                    if dict.keys.contains("table") {
                        self.table = dict["table"] as! String
                    }
                    if dict.keys.contains("tag") {
                        self.tag = dict["tag"] as! String
                    }
                }
            }
            public class SaroConfig : Tea.TeaModel {
                public var namespace: String?

                public var tableName: String?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.namespace != nil {
                        map["namespace"] = self.namespace!
                    }
                    if self.tableName != nil {
                        map["tableName"] = self.tableName!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("namespace") {
                        self.namespace = dict["namespace"] as! String
                    }
                    if dict.keys.contains("tableName") {
                        self.tableName = dict["tableName"] as! String
                    }
                }
            }
            public var autoBuildIndex: Bool?

            public var config: ListIndexesResponseBody.Result.DataSourceInfo.Config?

            public var domain: String?

            public var name: String?

            public var processPartitionCount: Int32?

            public var saroConfig: ListIndexesResponseBody.Result.DataSourceInfo.SaroConfig?

            public var type: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
                try self.config?.validate()
                try self.saroConfig?.validate()
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.autoBuildIndex != nil {
                    map["autoBuildIndex"] = self.autoBuildIndex!
                }
                if self.config != nil {
                    map["config"] = self.config?.toMap()
                }
                if self.domain != nil {
                    map["domain"] = self.domain!
                }
                if self.name != nil {
                    map["name"] = self.name!
                }
                if self.processPartitionCount != nil {
                    map["processPartitionCount"] = self.processPartitionCount!
                }
                if self.saroConfig != nil {
                    map["saroConfig"] = self.saroConfig?.toMap()
                }
                if self.type != nil {
                    map["type"] = self.type!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("autoBuildIndex") {
                    self.autoBuildIndex = dict["autoBuildIndex"] as! Bool
                }
                if dict.keys.contains("config") {
                    var model = ListIndexesResponseBody.Result.DataSourceInfo.Config()
                    model.fromMap(dict["config"] as! [String: Any])
                    self.config = model
                }
                if dict.keys.contains("domain") {
                    self.domain = dict["domain"] as! String
                }
                if dict.keys.contains("name") {
                    self.name = dict["name"] as! String
                }
                if dict.keys.contains("processPartitionCount") {
                    self.processPartitionCount = dict["processPartitionCount"] as! Int32
                }
                if dict.keys.contains("saroConfig") {
                    var model = ListIndexesResponseBody.Result.DataSourceInfo.SaroConfig()
                    model.fromMap(dict["saroConfig"] as! [String: Any])
                    self.saroConfig = model
                }
                if dict.keys.contains("type") {
                    self.type = dict["type"] as! String
                }
            }
        }
        public class Versions : Tea.TeaModel {
            public class Files : Tea.TeaModel {
                public var fullPathName: String?

                public var isDir: Bool?

                public var isTemplate: Bool?

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
                    if self.fullPathName != nil {
                        map["fullPathName"] = self.fullPathName!
                    }
                    if self.isDir != nil {
                        map["isDir"] = self.isDir!
                    }
                    if self.isTemplate != nil {
                        map["isTemplate"] = self.isTemplate!
                    }
                    if self.name != nil {
                        map["name"] = self.name!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("fullPathName") {
                        self.fullPathName = dict["fullPathName"] as! String
                    }
                    if dict.keys.contains("isDir") {
                        self.isDir = dict["isDir"] as! Bool
                    }
                    if dict.keys.contains("isTemplate") {
                        self.isTemplate = dict["isTemplate"] as! Bool
                    }
                    if dict.keys.contains("name") {
                        self.name = dict["name"] as! String
                    }
                }
            }
            public var desc: String?

            public var files: [ListIndexesResponseBody.Result.Versions.Files]?

            public var name: String?

            public var status: String?

            public var updateTime: Int64?

            public var versionId: Int32?

            public override init() {
                super.init()
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
                    map["desc"] = self.desc!
                }
                if self.files != nil {
                    var tmp : [Any] = []
                    for k in self.files! {
                        tmp.append(k.toMap())
                    }
                    map["files"] = tmp
                }
                if self.name != nil {
                    map["name"] = self.name!
                }
                if self.status != nil {
                    map["status"] = self.status!
                }
                if self.updateTime != nil {
                    map["updateTime"] = self.updateTime!
                }
                if self.versionId != nil {
                    map["versionId"] = self.versionId!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("desc") {
                    self.desc = dict["desc"] as! String
                }
                if dict.keys.contains("files") {
                    var tmp : [ListIndexesResponseBody.Result.Versions.Files] = []
                    for v in dict["files"] as! [Any] {
                        var model = ListIndexesResponseBody.Result.Versions.Files()
                        if v != nil {
                            model.fromMap(v as! [String: Any])
                        }
                        tmp.append(model)
                    }
                    self.files = tmp
                }
                if dict.keys.contains("name") {
                    self.name = dict["name"] as! String
                }
                if dict.keys.contains("status") {
                    self.status = dict["status"] as! String
                }
                if dict.keys.contains("updateTime") {
                    self.updateTime = dict["updateTime"] as! Int64
                }
                if dict.keys.contains("versionId") {
                    self.versionId = dict["versionId"] as! Int32
                }
            }
        }
        public var content: String?

        public var createTime: String?

        public var dataSource: String?

        public var dataSourceInfo: ListIndexesResponseBody.Result.DataSourceInfo?

        public var description_: String?

        public var domain: String?

        public var fullUpdateTime: String?

        public var fullVersion: Int64?

        public var incUpdateTime: String?

        public var indexSize: Int64?

        public var indexStatus: String?

        public var name: String?

        public var partition: Int32?

        public var updateTime: String?

        public var versions: [ListIndexesResponseBody.Result.Versions]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.dataSourceInfo?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.content != nil {
                map["content"] = self.content!
            }
            if self.createTime != nil {
                map["createTime"] = self.createTime!
            }
            if self.dataSource != nil {
                map["dataSource"] = self.dataSource!
            }
            if self.dataSourceInfo != nil {
                map["dataSourceInfo"] = self.dataSourceInfo?.toMap()
            }
            if self.description_ != nil {
                map["description"] = self.description_!
            }
            if self.domain != nil {
                map["domain"] = self.domain!
            }
            if self.fullUpdateTime != nil {
                map["fullUpdateTime"] = self.fullUpdateTime!
            }
            if self.fullVersion != nil {
                map["fullVersion"] = self.fullVersion!
            }
            if self.incUpdateTime != nil {
                map["incUpdateTime"] = self.incUpdateTime!
            }
            if self.indexSize != nil {
                map["indexSize"] = self.indexSize!
            }
            if self.indexStatus != nil {
                map["indexStatus"] = self.indexStatus!
            }
            if self.name != nil {
                map["name"] = self.name!
            }
            if self.partition != nil {
                map["partition"] = self.partition!
            }
            if self.updateTime != nil {
                map["updateTime"] = self.updateTime!
            }
            if self.versions != nil {
                var tmp : [Any] = []
                for k in self.versions! {
                    tmp.append(k.toMap())
                }
                map["versions"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("content") {
                self.content = dict["content"] as! String
            }
            if dict.keys.contains("createTime") {
                self.createTime = dict["createTime"] as! String
            }
            if dict.keys.contains("dataSource") {
                self.dataSource = dict["dataSource"] as! String
            }
            if dict.keys.contains("dataSourceInfo") {
                var model = ListIndexesResponseBody.Result.DataSourceInfo()
                model.fromMap(dict["dataSourceInfo"] as! [String: Any])
                self.dataSourceInfo = model
            }
            if dict.keys.contains("description") {
                self.description_ = dict["description"] as! String
            }
            if dict.keys.contains("domain") {
                self.domain = dict["domain"] as! String
            }
            if dict.keys.contains("fullUpdateTime") {
                self.fullUpdateTime = dict["fullUpdateTime"] as! String
            }
            if dict.keys.contains("fullVersion") {
                self.fullVersion = dict["fullVersion"] as! Int64
            }
            if dict.keys.contains("incUpdateTime") {
                self.incUpdateTime = dict["incUpdateTime"] as! String
            }
            if dict.keys.contains("indexSize") {
                self.indexSize = dict["indexSize"] as! Int64
            }
            if dict.keys.contains("indexStatus") {
                self.indexStatus = dict["indexStatus"] as! String
            }
            if dict.keys.contains("name") {
                self.name = dict["name"] as! String
            }
            if dict.keys.contains("partition") {
                self.partition = dict["partition"] as! Int32
            }
            if dict.keys.contains("updateTime") {
                self.updateTime = dict["updateTime"] as! String
            }
            if dict.keys.contains("versions") {
                var tmp : [ListIndexesResponseBody.Result.Versions] = []
                for v in dict["versions"] as! [Any] {
                    var model = ListIndexesResponseBody.Result.Versions()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.versions = tmp
            }
        }
    }
    public var requestId: String?

    public var result: [ListIndexesResponseBody.Result]?

    public override init() {
        super.init()
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
            map["requestId"] = self.requestId!
        }
        if self.result != nil {
            var tmp : [Any] = []
            for k in self.result! {
                tmp.append(k.toMap())
            }
            map["result"] = tmp
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("requestId") {
            self.requestId = dict["requestId"] as! String
        }
        if dict.keys.contains("result") {
            var tmp : [ListIndexesResponseBody.Result] = []
            for v in dict["result"] as! [Any] {
                var model = ListIndexesResponseBody.Result()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.result = tmp
        }
    }
}

public class ListIndexesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListIndexesResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = ListIndexesResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListInstanceSpecsRequest : Tea.TeaModel {
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
        if self.type != nil {
            map["type"] = self.type!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("type") {
            self.type = dict["type"] as! String
        }
    }
}

public class ListInstanceSpecsResponseBody : Tea.TeaModel {
    public class Result : Tea.TeaModel {
        public var cpu: Int32?

        public var maxDisk: Int32?

        public var mem: Int32?

        public var minDisk: Int32?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.cpu != nil {
                map["cpu"] = self.cpu!
            }
            if self.maxDisk != nil {
                map["maxDisk"] = self.maxDisk!
            }
            if self.mem != nil {
                map["mem"] = self.mem!
            }
            if self.minDisk != nil {
                map["minDisk"] = self.minDisk!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("cpu") {
                self.cpu = dict["cpu"] as! Int32
            }
            if dict.keys.contains("maxDisk") {
                self.maxDisk = dict["maxDisk"] as! Int32
            }
            if dict.keys.contains("mem") {
                self.mem = dict["mem"] as! Int32
            }
            if dict.keys.contains("minDisk") {
                self.minDisk = dict["minDisk"] as! Int32
            }
        }
    }
    public var requestId: String?

    public var result: [ListInstanceSpecsResponseBody.Result]?

    public override init() {
        super.init()
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
            map["requestId"] = self.requestId!
        }
        if self.result != nil {
            var tmp : [Any] = []
            for k in self.result! {
                tmp.append(k.toMap())
            }
            map["result"] = tmp
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("requestId") {
            self.requestId = dict["requestId"] as! String
        }
        if dict.keys.contains("result") {
            var tmp : [ListInstanceSpecsResponseBody.Result] = []
            for v in dict["result"] as! [Any] {
                var model = ListInstanceSpecsResponseBody.Result()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.result = tmp
        }
    }
}

public class ListInstanceSpecsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListInstanceSpecsResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = ListInstanceSpecsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListInstancesRequest : Tea.TeaModel {
    public class Tags : Tea.TeaModel {
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
                map["key"] = self.key!
            }
            if self.value != nil {
                map["value"] = self.value!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("key") {
                self.key = dict["key"] as! String
            }
            if dict.keys.contains("value") {
                self.value = dict["value"] as! String
            }
        }
    }
    public var catalog: String?

    public var dataSourceType: String?

    public var database: String?

    public var description_: String?

    public var edition: String?

    public var instanceId: String?

    public var pageNumber: Int32?

    public var pageSize: Int32?

    public var resourceGroupId: String?

    public var table: String?

    public var tags: [ListInstancesRequest.Tags]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.catalog != nil {
            map["catalog"] = self.catalog!
        }
        if self.dataSourceType != nil {
            map["dataSourceType"] = self.dataSourceType!
        }
        if self.database != nil {
            map["database"] = self.database!
        }
        if self.description_ != nil {
            map["description"] = self.description_!
        }
        if self.edition != nil {
            map["edition"] = self.edition!
        }
        if self.instanceId != nil {
            map["instanceId"] = self.instanceId!
        }
        if self.pageNumber != nil {
            map["pageNumber"] = self.pageNumber!
        }
        if self.pageSize != nil {
            map["pageSize"] = self.pageSize!
        }
        if self.resourceGroupId != nil {
            map["resourceGroupId"] = self.resourceGroupId!
        }
        if self.table != nil {
            map["table"] = self.table!
        }
        if self.tags != nil {
            var tmp : [Any] = []
            for k in self.tags! {
                tmp.append(k.toMap())
            }
            map["tags"] = tmp
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("catalog") {
            self.catalog = dict["catalog"] as! String
        }
        if dict.keys.contains("dataSourceType") {
            self.dataSourceType = dict["dataSourceType"] as! String
        }
        if dict.keys.contains("database") {
            self.database = dict["database"] as! String
        }
        if dict.keys.contains("description") {
            self.description_ = dict["description"] as! String
        }
        if dict.keys.contains("edition") {
            self.edition = dict["edition"] as! String
        }
        if dict.keys.contains("instanceId") {
            self.instanceId = dict["instanceId"] as! String
        }
        if dict.keys.contains("pageNumber") {
            self.pageNumber = dict["pageNumber"] as! Int32
        }
        if dict.keys.contains("pageSize") {
            self.pageSize = dict["pageSize"] as! Int32
        }
        if dict.keys.contains("resourceGroupId") {
            self.resourceGroupId = dict["resourceGroupId"] as! String
        }
        if dict.keys.contains("table") {
            self.table = dict["table"] as! String
        }
        if dict.keys.contains("tags") {
            var tmp : [ListInstancesRequest.Tags] = []
            for v in dict["tags"] as! [Any] {
                var model = ListInstancesRequest.Tags()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.tags = tmp
        }
    }
}

public class ListInstancesShrinkRequest : Tea.TeaModel {
    public var catalog: String?

    public var dataSourceType: String?

    public var database: String?

    public var description_: String?

    public var edition: String?

    public var instanceId: String?

    public var pageNumber: Int32?

    public var pageSize: Int32?

    public var resourceGroupId: String?

    public var table: String?

    public var tagsShrink: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.catalog != nil {
            map["catalog"] = self.catalog!
        }
        if self.dataSourceType != nil {
            map["dataSourceType"] = self.dataSourceType!
        }
        if self.database != nil {
            map["database"] = self.database!
        }
        if self.description_ != nil {
            map["description"] = self.description_!
        }
        if self.edition != nil {
            map["edition"] = self.edition!
        }
        if self.instanceId != nil {
            map["instanceId"] = self.instanceId!
        }
        if self.pageNumber != nil {
            map["pageNumber"] = self.pageNumber!
        }
        if self.pageSize != nil {
            map["pageSize"] = self.pageSize!
        }
        if self.resourceGroupId != nil {
            map["resourceGroupId"] = self.resourceGroupId!
        }
        if self.table != nil {
            map["table"] = self.table!
        }
        if self.tagsShrink != nil {
            map["tags"] = self.tagsShrink!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("catalog") {
            self.catalog = dict["catalog"] as! String
        }
        if dict.keys.contains("dataSourceType") {
            self.dataSourceType = dict["dataSourceType"] as! String
        }
        if dict.keys.contains("database") {
            self.database = dict["database"] as! String
        }
        if dict.keys.contains("description") {
            self.description_ = dict["description"] as! String
        }
        if dict.keys.contains("edition") {
            self.edition = dict["edition"] as! String
        }
        if dict.keys.contains("instanceId") {
            self.instanceId = dict["instanceId"] as! String
        }
        if dict.keys.contains("pageNumber") {
            self.pageNumber = dict["pageNumber"] as! Int32
        }
        if dict.keys.contains("pageSize") {
            self.pageSize = dict["pageSize"] as! Int32
        }
        if dict.keys.contains("resourceGroupId") {
            self.resourceGroupId = dict["resourceGroupId"] as! String
        }
        if dict.keys.contains("table") {
            self.table = dict["table"] as! String
        }
        if dict.keys.contains("tags") {
            self.tagsShrink = dict["tags"] as! String
        }
    }
}

public class ListInstancesResponseBody : Tea.TeaModel {
    public class Result : Tea.TeaModel {
        public class DataSourceDetails : Tea.TeaModel {
            public class Config : Tea.TeaModel {
                public var accessKey: String?

                public var bucket: String?

                public var catalog: String?

                public var database: String?

                public var endpoint: String?

                public var namespace: String?

                public var ossPath: String?

                public var partition: String?

                public var path: String?

                public var project: String?

                public var table: String?

                public var tag: String?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.accessKey != nil {
                        map["accessKey"] = self.accessKey!
                    }
                    if self.bucket != nil {
                        map["bucket"] = self.bucket!
                    }
                    if self.catalog != nil {
                        map["catalog"] = self.catalog!
                    }
                    if self.database != nil {
                        map["database"] = self.database!
                    }
                    if self.endpoint != nil {
                        map["endpoint"] = self.endpoint!
                    }
                    if self.namespace != nil {
                        map["namespace"] = self.namespace!
                    }
                    if self.ossPath != nil {
                        map["ossPath"] = self.ossPath!
                    }
                    if self.partition != nil {
                        map["partition"] = self.partition!
                    }
                    if self.path != nil {
                        map["path"] = self.path!
                    }
                    if self.project != nil {
                        map["project"] = self.project!
                    }
                    if self.table != nil {
                        map["table"] = self.table!
                    }
                    if self.tag != nil {
                        map["tag"] = self.tag!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("accessKey") {
                        self.accessKey = dict["accessKey"] as! String
                    }
                    if dict.keys.contains("bucket") {
                        self.bucket = dict["bucket"] as! String
                    }
                    if dict.keys.contains("catalog") {
                        self.catalog = dict["catalog"] as! String
                    }
                    if dict.keys.contains("database") {
                        self.database = dict["database"] as! String
                    }
                    if dict.keys.contains("endpoint") {
                        self.endpoint = dict["endpoint"] as! String
                    }
                    if dict.keys.contains("namespace") {
                        self.namespace = dict["namespace"] as! String
                    }
                    if dict.keys.contains("ossPath") {
                        self.ossPath = dict["ossPath"] as! String
                    }
                    if dict.keys.contains("partition") {
                        self.partition = dict["partition"] as! String
                    }
                    if dict.keys.contains("path") {
                        self.path = dict["path"] as! String
                    }
                    if dict.keys.contains("project") {
                        self.project = dict["project"] as! String
                    }
                    if dict.keys.contains("table") {
                        self.table = dict["table"] as! String
                    }
                    if dict.keys.contains("tag") {
                        self.tag = dict["tag"] as! String
                    }
                }
            }
            public var config: ListInstancesResponseBody.Result.DataSourceDetails.Config?

            public var indexName: String?

            public var type: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
                try self.config?.validate()
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.config != nil {
                    map["config"] = self.config?.toMap()
                }
                if self.indexName != nil {
                    map["indexName"] = self.indexName!
                }
                if self.type != nil {
                    map["type"] = self.type!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("config") {
                    var model = ListInstancesResponseBody.Result.DataSourceDetails.Config()
                    model.fromMap(dict["config"] as! [String: Any])
                    self.config = model
                }
                if dict.keys.contains("indexName") {
                    self.indexName = dict["indexName"] as! String
                }
                if dict.keys.contains("type") {
                    self.type = dict["type"] as! String
                }
            }
        }
        public class Network : Tea.TeaModel {
            public var allow: String?

            public var endpoint: String?

            public var publicEndpoint: String?

            public var vSwitchId: String?

            public var vpcId: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.allow != nil {
                    map["allow"] = self.allow!
                }
                if self.endpoint != nil {
                    map["endpoint"] = self.endpoint!
                }
                if self.publicEndpoint != nil {
                    map["publicEndpoint"] = self.publicEndpoint!
                }
                if self.vSwitchId != nil {
                    map["vSwitchId"] = self.vSwitchId!
                }
                if self.vpcId != nil {
                    map["vpcId"] = self.vpcId!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("allow") {
                    self.allow = dict["allow"] as! String
                }
                if dict.keys.contains("endpoint") {
                    self.endpoint = dict["endpoint"] as! String
                }
                if dict.keys.contains("publicEndpoint") {
                    self.publicEndpoint = dict["publicEndpoint"] as! String
                }
                if dict.keys.contains("vSwitchId") {
                    self.vSwitchId = dict["vSwitchId"] as! String
                }
                if dict.keys.contains("vpcId") {
                    self.vpcId = dict["vpcId"] as! String
                }
            }
        }
        public class Spec : Tea.TeaModel {
            public class QrsResource : Tea.TeaModel {
                public var category: String?

                public var cpu: Int32?

                public var disk: Int32?

                public var mem: Int32?

                public var nodeCount: Int32?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.category != nil {
                        map["category"] = self.category!
                    }
                    if self.cpu != nil {
                        map["cpu"] = self.cpu!
                    }
                    if self.disk != nil {
                        map["disk"] = self.disk!
                    }
                    if self.mem != nil {
                        map["mem"] = self.mem!
                    }
                    if self.nodeCount != nil {
                        map["nodeCount"] = self.nodeCount!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("category") {
                        self.category = dict["category"] as! String
                    }
                    if dict.keys.contains("cpu") {
                        self.cpu = dict["cpu"] as! Int32
                    }
                    if dict.keys.contains("disk") {
                        self.disk = dict["disk"] as! Int32
                    }
                    if dict.keys.contains("mem") {
                        self.mem = dict["mem"] as! Int32
                    }
                    if dict.keys.contains("nodeCount") {
                        self.nodeCount = dict["nodeCount"] as! Int32
                    }
                }
            }
            public class SearchResource : Tea.TeaModel {
                public var category: String?

                public var cpu: Int32?

                public var disk: Int32?

                public var mem: Int32?

                public var nodeCount: Int32?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.category != nil {
                        map["category"] = self.category!
                    }
                    if self.cpu != nil {
                        map["cpu"] = self.cpu!
                    }
                    if self.disk != nil {
                        map["disk"] = self.disk!
                    }
                    if self.mem != nil {
                        map["mem"] = self.mem!
                    }
                    if self.nodeCount != nil {
                        map["nodeCount"] = self.nodeCount!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("category") {
                        self.category = dict["category"] as! String
                    }
                    if dict.keys.contains("cpu") {
                        self.cpu = dict["cpu"] as! Int32
                    }
                    if dict.keys.contains("disk") {
                        self.disk = dict["disk"] as! Int32
                    }
                    if dict.keys.contains("mem") {
                        self.mem = dict["mem"] as! Int32
                    }
                    if dict.keys.contains("nodeCount") {
                        self.nodeCount = dict["nodeCount"] as! Int32
                    }
                }
            }
            public var qrsResource: ListInstancesResponseBody.Result.Spec.QrsResource?

            public var searchResource: ListInstancesResponseBody.Result.Spec.SearchResource?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
                try self.qrsResource?.validate()
                try self.searchResource?.validate()
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.qrsResource != nil {
                    map["qrsResource"] = self.qrsResource?.toMap()
                }
                if self.searchResource != nil {
                    map["searchResource"] = self.searchResource?.toMap()
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("qrsResource") {
                    var model = ListInstancesResponseBody.Result.Spec.QrsResource()
                    model.fromMap(dict["qrsResource"] as! [String: Any])
                    self.qrsResource = model
                }
                if dict.keys.contains("searchResource") {
                    var model = ListInstancesResponseBody.Result.Spec.SearchResource()
                    model.fromMap(dict["searchResource"] as! [String: Any])
                    self.searchResource = model
                }
            }
        }
        public class Tags : Tea.TeaModel {
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
                    map["key"] = self.key!
                }
                if self.value != nil {
                    map["value"] = self.value!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("key") {
                    self.key = dict["key"] as! String
                }
                if dict.keys.contains("value") {
                    self.value = dict["value"] as! String
                }
            }
        }
        public var chargeType: String?

        public var commodityCode: String?

        public var createTime: String?

        public var dataSourceDetails: [ListInstancesResponseBody.Result.DataSourceDetails]?

        public var description_: String?

        public var edition: String?

        public var expiredTime: String?

        public var inDebt: Bool?

        public var instanceId: String?

        public var lockMode: String?

        public var network: ListInstancesResponseBody.Result.Network?

        public var noQrs: Bool?

        public var resourceGroupId: String?

        public var spec: ListInstancesResponseBody.Result.Spec?

        public var status: String?

        public var tags: [ListInstancesResponseBody.Result.Tags]?

        public var updateTime: String?

        public var userName: String?

        public var version: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.network?.validate()
            try self.spec?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.chargeType != nil {
                map["chargeType"] = self.chargeType!
            }
            if self.commodityCode != nil {
                map["commodityCode"] = self.commodityCode!
            }
            if self.createTime != nil {
                map["createTime"] = self.createTime!
            }
            if self.dataSourceDetails != nil {
                var tmp : [Any] = []
                for k in self.dataSourceDetails! {
                    tmp.append(k.toMap())
                }
                map["dataSourceDetails"] = tmp
            }
            if self.description_ != nil {
                map["description"] = self.description_!
            }
            if self.edition != nil {
                map["edition"] = self.edition!
            }
            if self.expiredTime != nil {
                map["expiredTime"] = self.expiredTime!
            }
            if self.inDebt != nil {
                map["inDebt"] = self.inDebt!
            }
            if self.instanceId != nil {
                map["instanceId"] = self.instanceId!
            }
            if self.lockMode != nil {
                map["lockMode"] = self.lockMode!
            }
            if self.network != nil {
                map["network"] = self.network?.toMap()
            }
            if self.noQrs != nil {
                map["noQrs"] = self.noQrs!
            }
            if self.resourceGroupId != nil {
                map["resourceGroupId"] = self.resourceGroupId!
            }
            if self.spec != nil {
                map["spec"] = self.spec?.toMap()
            }
            if self.status != nil {
                map["status"] = self.status!
            }
            if self.tags != nil {
                var tmp : [Any] = []
                for k in self.tags! {
                    tmp.append(k.toMap())
                }
                map["tags"] = tmp
            }
            if self.updateTime != nil {
                map["updateTime"] = self.updateTime!
            }
            if self.userName != nil {
                map["userName"] = self.userName!
            }
            if self.version != nil {
                map["version"] = self.version!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("chargeType") {
                self.chargeType = dict["chargeType"] as! String
            }
            if dict.keys.contains("commodityCode") {
                self.commodityCode = dict["commodityCode"] as! String
            }
            if dict.keys.contains("createTime") {
                self.createTime = dict["createTime"] as! String
            }
            if dict.keys.contains("dataSourceDetails") {
                var tmp : [ListInstancesResponseBody.Result.DataSourceDetails] = []
                for v in dict["dataSourceDetails"] as! [Any] {
                    var model = ListInstancesResponseBody.Result.DataSourceDetails()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.dataSourceDetails = tmp
            }
            if dict.keys.contains("description") {
                self.description_ = dict["description"] as! String
            }
            if dict.keys.contains("edition") {
                self.edition = dict["edition"] as! String
            }
            if dict.keys.contains("expiredTime") {
                self.expiredTime = dict["expiredTime"] as! String
            }
            if dict.keys.contains("inDebt") {
                self.inDebt = dict["inDebt"] as! Bool
            }
            if dict.keys.contains("instanceId") {
                self.instanceId = dict["instanceId"] as! String
            }
            if dict.keys.contains("lockMode") {
                self.lockMode = dict["lockMode"] as! String
            }
            if dict.keys.contains("network") {
                var model = ListInstancesResponseBody.Result.Network()
                model.fromMap(dict["network"] as! [String: Any])
                self.network = model
            }
            if dict.keys.contains("noQrs") {
                self.noQrs = dict["noQrs"] as! Bool
            }
            if dict.keys.contains("resourceGroupId") {
                self.resourceGroupId = dict["resourceGroupId"] as! String
            }
            if dict.keys.contains("spec") {
                var model = ListInstancesResponseBody.Result.Spec()
                model.fromMap(dict["spec"] as! [String: Any])
                self.spec = model
            }
            if dict.keys.contains("status") {
                self.status = dict["status"] as! String
            }
            if dict.keys.contains("tags") {
                var tmp : [ListInstancesResponseBody.Result.Tags] = []
                for v in dict["tags"] as! [Any] {
                    var model = ListInstancesResponseBody.Result.Tags()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.tags = tmp
            }
            if dict.keys.contains("updateTime") {
                self.updateTime = dict["updateTime"] as! String
            }
            if dict.keys.contains("userName") {
                self.userName = dict["userName"] as! String
            }
            if dict.keys.contains("version") {
                self.version = dict["version"] as! String
            }
        }
    }
    public var requestId: String?

    public var result: [ListInstancesResponseBody.Result]?

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
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        if self.result != nil {
            var tmp : [Any] = []
            for k in self.result! {
                tmp.append(k.toMap())
            }
            map["result"] = tmp
        }
        if self.totalCount != nil {
            map["totalCount"] = self.totalCount!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("requestId") {
            self.requestId = dict["requestId"] as! String
        }
        if dict.keys.contains("result") {
            var tmp : [ListInstancesResponseBody.Result] = []
            for v in dict["result"] as! [Any] {
                var model = ListInstancesResponseBody.Result()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.result = tmp
        }
        if dict.keys.contains("totalCount") {
            self.totalCount = dict["totalCount"] as! Int32
        }
    }
}

public class ListInstancesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListInstancesResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = ListInstancesResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListLogsRequest : Tea.TeaModel {
    public var endTime: String?

    public var pageNum: String?

    public var pageSize: String?

    public var query: String?

    public var startTime: String?

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
        if self.endTime != nil {
            map["endTime"] = self.endTime!
        }
        if self.pageNum != nil {
            map["pageNum"] = self.pageNum!
        }
        if self.pageSize != nil {
            map["pageSize"] = self.pageSize!
        }
        if self.query != nil {
            map["query"] = self.query!
        }
        if self.startTime != nil {
            map["startTime"] = self.startTime!
        }
        if self.type != nil {
            map["type"] = self.type!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("endTime") {
            self.endTime = dict["endTime"] as! String
        }
        if dict.keys.contains("pageNum") {
            self.pageNum = dict["pageNum"] as! String
        }
        if dict.keys.contains("pageSize") {
            self.pageSize = dict["pageSize"] as! String
        }
        if dict.keys.contains("query") {
            self.query = dict["query"] as! String
        }
        if dict.keys.contains("startTime") {
            self.startTime = dict["startTime"] as! String
        }
        if dict.keys.contains("type") {
            self.type = dict["type"] as! String
        }
    }
}

public class ListLogsResponseBody : Tea.TeaModel {
    public class Result : Tea.TeaModel {
        public var result: [Any]?

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
            if self.result != nil {
                map["result"] = self.result!
            }
            if self.totalCount != nil {
                map["totalCount"] = self.totalCount!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("result") {
                self.result = dict["result"] as! [Any]
            }
            if dict.keys.contains("totalCount") {
                self.totalCount = dict["totalCount"] as! Int32
            }
        }
    }
    public var requestId: String?

    public var result: ListLogsResponseBody.Result?

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
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        if self.result != nil {
            map["result"] = self.result?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("requestId") {
            self.requestId = dict["requestId"] as! String
        }
        if dict.keys.contains("result") {
            var model = ListLogsResponseBody.Result()
            model.fromMap(dict["result"] as! [String: Any])
            self.result = model
        }
    }
}

public class ListLogsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListLogsResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = ListLogsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListModelsRequest : Tea.TeaModel {
    public var name: String?

    public var pageNumber: Int32?

    public var pageSize: Int32?

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
        if self.name != nil {
            map["name"] = self.name!
        }
        if self.pageNumber != nil {
            map["pageNumber"] = self.pageNumber!
        }
        if self.pageSize != nil {
            map["pageSize"] = self.pageSize!
        }
        if self.type != nil {
            map["type"] = self.type!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("name") {
            self.name = dict["name"] as! String
        }
        if dict.keys.contains("pageNumber") {
            self.pageNumber = dict["pageNumber"] as! Int32
        }
        if dict.keys.contains("pageSize") {
            self.pageSize = dict["pageSize"] as! Int32
        }
        if dict.keys.contains("type") {
            self.type = dict["type"] as! String
        }
    }
}

public class ListModelsResponseBody : Tea.TeaModel {
    public class Result : Tea.TeaModel {
        public class Content : Tea.TeaModel {
            public class Request : Tea.TeaModel {
                public class Header : Tea.TeaModel {
                    public var authorization: String?

                    public var contentType: String?

                    public override init() {
                        super.init()
                    }

                    public init(_ dict: [String: Any]) {
                        super.init()
                        self.fromMap(dict)
                    }

                    public override func validate() throws -> Void {
                    }

                    public override func toMap() -> [String : Any] {
                        var map = super.toMap()
                        if self.authorization != nil {
                            map["Authorization"] = self.authorization!
                        }
                        if self.contentType != nil {
                            map["Content-Type"] = self.contentType!
                        }
                        return map
                    }

                    public override func fromMap(_ dict: [String: Any]) -> Void {
                        if dict.keys.contains("Authorization") {
                            self.authorization = dict["Authorization"] as! String
                        }
                        if dict.keys.contains("Content-Type") {
                            self.contentType = dict["Content-Type"] as! String
                        }
                    }
                }
                public class Parameters : Tea.TeaModel {
                    public class Build : Tea.TeaModel {
                        public var inputType: String?

                        public override init() {
                            super.init()
                        }

                        public init(_ dict: [String: Any]) {
                            super.init()
                            self.fromMap(dict)
                        }

                        public override func validate() throws -> Void {
                        }

                        public override func toMap() -> [String : Any] {
                            var map = super.toMap()
                            if self.inputType != nil {
                                map["input_type"] = self.inputType!
                            }
                            return map
                        }

                        public override func fromMap(_ dict: [String: Any]) -> Void {
                            if dict.keys.contains("input_type") {
                                self.inputType = dict["input_type"] as! String
                            }
                        }
                    }
                    public class Search : Tea.TeaModel {
                        public var inputType: String?

                        public override init() {
                            super.init()
                        }

                        public init(_ dict: [String: Any]) {
                            super.init()
                            self.fromMap(dict)
                        }

                        public override func validate() throws -> Void {
                        }

                        public override func toMap() -> [String : Any] {
                            var map = super.toMap()
                            if self.inputType != nil {
                                map["input_type"] = self.inputType!
                            }
                            return map
                        }

                        public override func fromMap(_ dict: [String: Any]) -> Void {
                            if dict.keys.contains("input_type") {
                                self.inputType = dict["input_type"] as! String
                            }
                        }
                    }
                    public var build: ListModelsResponseBody.Result.Content.Request.Parameters.Build?

                    public var search: ListModelsResponseBody.Result.Content.Request.Parameters.Search?

                    public override init() {
                        super.init()
                    }

                    public init(_ dict: [String: Any]) {
                        super.init()
                        self.fromMap(dict)
                    }

                    public override func validate() throws -> Void {
                        try self.build?.validate()
                        try self.search?.validate()
                    }

                    public override func toMap() -> [String : Any] {
                        var map = super.toMap()
                        if self.build != nil {
                            map["build"] = self.build?.toMap()
                        }
                        if self.search != nil {
                            map["search"] = self.search?.toMap()
                        }
                        return map
                    }

                    public override func fromMap(_ dict: [String: Any]) -> Void {
                        if dict.keys.contains("build") {
                            var model = ListModelsResponseBody.Result.Content.Request.Parameters.Build()
                            model.fromMap(dict["build"] as! [String: Any])
                            self.build = model
                        }
                        if dict.keys.contains("search") {
                            var model = ListModelsResponseBody.Result.Content.Request.Parameters.Search()
                            model.fromMap(dict["search"] as! [String: Any])
                            self.search = model
                        }
                    }
                }
                public class UrlParams : Tea.TeaModel {
                    public var build: [String: Any]?

                    public var search: [String: Any]?

                    public override init() {
                        super.init()
                    }

                    public init(_ dict: [String: Any]) {
                        super.init()
                        self.fromMap(dict)
                    }

                    public override func validate() throws -> Void {
                    }

                    public override func toMap() -> [String : Any] {
                        var map = super.toMap()
                        if self.build != nil {
                            map["build"] = self.build!
                        }
                        if self.search != nil {
                            map["search"] = self.search!
                        }
                        return map
                    }

                    public override func fromMap(_ dict: [String: Any]) -> Void {
                        if dict.keys.contains("build") {
                            self.build = dict["build"] as! [String: Any]
                        }
                        if dict.keys.contains("search") {
                            self.search = dict["search"] as! [String: Any]
                        }
                    }
                }
                public var header: ListModelsResponseBody.Result.Content.Request.Header?

                public var parameters: ListModelsResponseBody.Result.Content.Request.Parameters?

                public var requestBody: String?

                public var urlParams: ListModelsResponseBody.Result.Content.Request.UrlParams?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                    try self.header?.validate()
                    try self.parameters?.validate()
                    try self.urlParams?.validate()
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.header != nil {
                        map["header"] = self.header?.toMap()
                    }
                    if self.parameters != nil {
                        map["parameters"] = self.parameters?.toMap()
                    }
                    if self.requestBody != nil {
                        map["requestBody"] = self.requestBody!
                    }
                    if self.urlParams != nil {
                        map["urlParams"] = self.urlParams?.toMap()
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("header") {
                        var model = ListModelsResponseBody.Result.Content.Request.Header()
                        model.fromMap(dict["header"] as! [String: Any])
                        self.header = model
                    }
                    if dict.keys.contains("parameters") {
                        var model = ListModelsResponseBody.Result.Content.Request.Parameters()
                        model.fromMap(dict["parameters"] as! [String: Any])
                        self.parameters = model
                    }
                    if dict.keys.contains("requestBody") {
                        self.requestBody = dict["requestBody"] as! String
                    }
                    if dict.keys.contains("urlParams") {
                        var model = ListModelsResponseBody.Result.Content.Request.UrlParams()
                        model.fromMap(dict["urlParams"] as! [String: Any])
                        self.urlParams = model
                    }
                }
            }
            public class Response : Tea.TeaModel {
                public var embeddings: String?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.embeddings != nil {
                        map["embeddings"] = self.embeddings!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("embeddings") {
                        self.embeddings = dict["embeddings"] as! String
                    }
                }
            }
            public var method: String?

            public var modelName: String?

            public var modelType: String?

            public var request: ListModelsResponseBody.Result.Content.Request?

            public var response: ListModelsResponseBody.Result.Content.Response?

            public var url: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
                try self.request?.validate()
                try self.response?.validate()
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.method != nil {
                    map["method"] = self.method!
                }
                if self.modelName != nil {
                    map["modelName"] = self.modelName!
                }
                if self.modelType != nil {
                    map["modelType"] = self.modelType!
                }
                if self.request != nil {
                    map["request"] = self.request?.toMap()
                }
                if self.response != nil {
                    map["response"] = self.response?.toMap()
                }
                if self.url != nil {
                    map["url"] = self.url!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("method") {
                    self.method = dict["method"] as! String
                }
                if dict.keys.contains("modelName") {
                    self.modelName = dict["modelName"] as! String
                }
                if dict.keys.contains("modelType") {
                    self.modelType = dict["modelType"] as! String
                }
                if dict.keys.contains("request") {
                    var model = ListModelsResponseBody.Result.Content.Request()
                    model.fromMap(dict["request"] as! [String: Any])
                    self.request = model
                }
                if dict.keys.contains("response") {
                    var model = ListModelsResponseBody.Result.Content.Response()
                    model.fromMap(dict["response"] as! [String: Any])
                    self.response = model
                }
                if dict.keys.contains("url") {
                    self.url = dict["url"] as! String
                }
            }
        }
        public var content: ListModelsResponseBody.Result.Content?

        public var createTime: String?

        public var dimension: Int32?

        public var name: String?

        public var status: String?

        public var type: String?

        public var updateTime: String?

        public var url: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.content?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.content != nil {
                map["content"] = self.content?.toMap()
            }
            if self.createTime != nil {
                map["createTime"] = self.createTime!
            }
            if self.dimension != nil {
                map["dimension"] = self.dimension!
            }
            if self.name != nil {
                map["name"] = self.name!
            }
            if self.status != nil {
                map["status"] = self.status!
            }
            if self.type != nil {
                map["type"] = self.type!
            }
            if self.updateTime != nil {
                map["updateTime"] = self.updateTime!
            }
            if self.url != nil {
                map["url"] = self.url!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("content") {
                var model = ListModelsResponseBody.Result.Content()
                model.fromMap(dict["content"] as! [String: Any])
                self.content = model
            }
            if dict.keys.contains("createTime") {
                self.createTime = dict["createTime"] as! String
            }
            if dict.keys.contains("dimension") {
                self.dimension = dict["dimension"] as! Int32
            }
            if dict.keys.contains("name") {
                self.name = dict["name"] as! String
            }
            if dict.keys.contains("status") {
                self.status = dict["status"] as! String
            }
            if dict.keys.contains("type") {
                self.type = dict["type"] as! String
            }
            if dict.keys.contains("updateTime") {
                self.updateTime = dict["updateTime"] as! String
            }
            if dict.keys.contains("url") {
                self.url = dict["url"] as! String
            }
        }
    }
    public var requestId: String?

    public var result: [ListModelsResponseBody.Result]?

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
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        if self.result != nil {
            var tmp : [Any] = []
            for k in self.result! {
                tmp.append(k.toMap())
            }
            map["result"] = tmp
        }
        if self.totalCount != nil {
            map["totalCount"] = self.totalCount!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("requestId") {
            self.requestId = dict["requestId"] as! String
        }
        if dict.keys.contains("result") {
            var tmp : [ListModelsResponseBody.Result] = []
            for v in dict["result"] as! [Any] {
                var model = ListModelsResponseBody.Result()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.result = tmp
        }
        if dict.keys.contains("totalCount") {
            self.totalCount = dict["totalCount"] as! Int32
        }
    }
}

public class ListModelsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListModelsResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = ListModelsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListOnlineConfigsRequest : Tea.TeaModel {
    public var domain: String?

    public override init() {
        super.init()
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
            map["domain"] = self.domain!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("domain") {
            self.domain = dict["domain"] as! String
        }
    }
}

public class ListOnlineConfigsResponseBody : Tea.TeaModel {
    public class Result : Tea.TeaModel {
        public var config: String?

        public var indexName: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.config != nil {
                map["config"] = self.config!
            }
            if self.indexName != nil {
                map["indexName"] = self.indexName!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("config") {
                self.config = dict["config"] as! String
            }
            if dict.keys.contains("indexName") {
                self.indexName = dict["indexName"] as! String
            }
        }
    }
    public var requestId: String?

    public var result: [ListOnlineConfigsResponseBody.Result]?

    public override init() {
        super.init()
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
            map["requestId"] = self.requestId!
        }
        if self.result != nil {
            var tmp : [Any] = []
            for k in self.result! {
                tmp.append(k.toMap())
            }
            map["result"] = tmp
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("requestId") {
            self.requestId = dict["requestId"] as! String
        }
        if dict.keys.contains("result") {
            var tmp : [ListOnlineConfigsResponseBody.Result] = []
            for v in dict["result"] as! [Any] {
                var model = ListOnlineConfigsResponseBody.Result()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.result = tmp
        }
    }
}

public class ListOnlineConfigsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListOnlineConfigsResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = ListOnlineConfigsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListPausePolicysResponseBody : Tea.TeaModel {
    public var requestId: String?

    public var result: [String: ResultValue]?

    public override init() {
        super.init()
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
            map["requestId"] = self.requestId!
        }
        if self.result != nil {
            var tmp : [String: Any] = [:]
            for (k, v) in self.result! {
                tmp[k] = v.toMap()
            }
            map["result"] = tmp
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("requestId") {
            self.requestId = dict["requestId"] as! String
        }
        if dict.keys.contains("result") {
            var tmp : [String: ResultValue] = [:]
            for (k, v) in dict["result"] as! [String: Any] {
                if v != nil {
                    var model = ResultValue()
                    model.fromMap(v as! [String: Any])
                    tmp[k] = model
                }
            }
            self.result = tmp
        }
    }
}

public class ListPausePolicysResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListPausePolicysResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = ListPausePolicysResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListPostQueryResultRequest : Tea.TeaModel {
    public var body: [String: Any]?

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
        if self.body != nil {
            map["body"] = self.body!
        }
        if self.type != nil {
            map["type"] = self.type!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("body") {
            self.body = dict["body"] as! [String: Any]
        }
        if dict.keys.contains("type") {
            self.type = dict["type"] as! String
        }
    }
}

public class ListPostQueryResultResponseBody : Tea.TeaModel {
    public var requestId: String?

    public var result: Any?

    public override init() {
        super.init()
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
            map["requestId"] = self.requestId!
        }
        if self.result != nil {
            map["result"] = self.result!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("requestId") {
            self.requestId = dict["requestId"] as! String
        }
        if dict.keys.contains("result") {
            self.result = dict["result"] as! Any
        }
    }
}

public class ListPostQueryResultResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListPostQueryResultResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = ListPostQueryResultResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListQueryResultRequest : Tea.TeaModel {
    public var query: String?

    public var sql: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.query != nil {
            map["query"] = self.query!
        }
        if self.sql != nil {
            map["sql"] = self.sql!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("query") {
            self.query = dict["query"] as! String
        }
        if dict.keys.contains("sql") {
            self.sql = dict["sql"] as! String
        }
    }
}

public class ListQueryResultResponseBody : Tea.TeaModel {
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
            map["requestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("requestId") {
            self.requestId = dict["requestId"] as! String
        }
    }
}

public class ListQueryResultResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListQueryResultResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = ListQueryResultResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListRestQueryResultRequest : Tea.TeaModel {
    public var indexName: String?

    public var query: [String: Any]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.indexName != nil {
            map["indexName"] = self.indexName!
        }
        if self.query != nil {
            map["query"] = self.query!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("indexName") {
            self.indexName = dict["indexName"] as! String
        }
        if dict.keys.contains("query") {
            self.query = dict["query"] as! [String: Any]
        }
    }
}

public class ListRestQueryResultResponseBody : Tea.TeaModel {
    public var requestId: String?

    public var result: Any?

    public override init() {
        super.init()
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
            map["requestId"] = self.requestId!
        }
        if self.result != nil {
            map["result"] = self.result!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("requestId") {
            self.requestId = dict["requestId"] as! String
        }
        if dict.keys.contains("result") {
            self.result = dict["result"] as! Any
        }
    }
}

public class ListRestQueryResultResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListRestQueryResultResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = ListRestQueryResultResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListSchemasRequest : Tea.TeaModel {
    public var accessKey: String?

    public var accessSecret: String?

    public var endpoint: String?

    public var namespace: String?

    public var partition: String?

    public var project: String?

    public var table: String?

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
        if self.accessKey != nil {
            map["accessKey"] = self.accessKey!
        }
        if self.accessSecret != nil {
            map["accessSecret"] = self.accessSecret!
        }
        if self.endpoint != nil {
            map["endpoint"] = self.endpoint!
        }
        if self.namespace != nil {
            map["namespace"] = self.namespace!
        }
        if self.partition != nil {
            map["partition"] = self.partition!
        }
        if self.project != nil {
            map["project"] = self.project!
        }
        if self.table != nil {
            map["table"] = self.table!
        }
        if self.type != nil {
            map["type"] = self.type!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("accessKey") {
            self.accessKey = dict["accessKey"] as! String
        }
        if dict.keys.contains("accessSecret") {
            self.accessSecret = dict["accessSecret"] as! String
        }
        if dict.keys.contains("endpoint") {
            self.endpoint = dict["endpoint"] as! String
        }
        if dict.keys.contains("namespace") {
            self.namespace = dict["namespace"] as! String
        }
        if dict.keys.contains("partition") {
            self.partition = dict["partition"] as! String
        }
        if dict.keys.contains("project") {
            self.project = dict["project"] as! String
        }
        if dict.keys.contains("table") {
            self.table = dict["table"] as! String
        }
        if dict.keys.contains("type") {
            self.type = dict["type"] as! String
        }
    }
}

public class ListSchemasResponseBody : Tea.TeaModel {
    public var requestId: String?

    public var result: Any?

    public override init() {
        super.init()
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
            map["requestId"] = self.requestId!
        }
        if self.result != nil {
            map["result"] = self.result!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("requestId") {
            self.requestId = dict["requestId"] as! String
        }
        if dict.keys.contains("result") {
            self.result = dict["result"] as! Any
        }
    }
}

public class ListSchemasResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListSchemasResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = ListSchemasResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListTableGenerationsResponseBody : Tea.TeaModel {
    public class Result : Tea.TeaModel {
        public var generationId: Int64?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.generationId != nil {
                map["generationId"] = self.generationId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("generationId") {
                self.generationId = dict["generationId"] as! Int64
            }
        }
    }
    public var requestId: String?

    public var result: [ListTableGenerationsResponseBody.Result]?

    public override init() {
        super.init()
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
            map["requestId"] = self.requestId!
        }
        if self.result != nil {
            var tmp : [Any] = []
            for k in self.result! {
                tmp.append(k.toMap())
            }
            map["result"] = tmp
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("requestId") {
            self.requestId = dict["requestId"] as! String
        }
        if dict.keys.contains("result") {
            var tmp : [ListTableGenerationsResponseBody.Result] = []
            for v in dict["result"] as! [Any] {
                var model = ListTableGenerationsResponseBody.Result()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.result = tmp
        }
    }
}

public class ListTableGenerationsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListTableGenerationsResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = ListTableGenerationsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListTablesRequest : Tea.TeaModel {
    public var newMode: Bool?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.newMode != nil {
            map["newMode"] = self.newMode!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("newMode") {
            self.newMode = dict["newMode"] as! Bool
        }
    }
}

public class ListTablesResponseBody : Tea.TeaModel {
    public class Result : Tea.TeaModel {
        public var indexStatus: String?

        public var name: String?

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
            if self.indexStatus != nil {
                map["indexStatus"] = self.indexStatus!
            }
            if self.name != nil {
                map["name"] = self.name!
            }
            if self.status != nil {
                map["status"] = self.status!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("indexStatus") {
                self.indexStatus = dict["indexStatus"] as! String
            }
            if dict.keys.contains("name") {
                self.name = dict["name"] as! String
            }
            if dict.keys.contains("status") {
                self.status = dict["status"] as! String
            }
        }
    }
    public var requestId: String?

    public var result: [ListTablesResponseBody.Result]?

    public override init() {
        super.init()
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
            map["requestId"] = self.requestId!
        }
        if self.result != nil {
            var tmp : [Any] = []
            for k in self.result! {
                tmp.append(k.toMap())
            }
            map["result"] = tmp
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("requestId") {
            self.requestId = dict["requestId"] as! String
        }
        if dict.keys.contains("result") {
            var tmp : [ListTablesResponseBody.Result] = []
            for v in dict["result"] as! [Any] {
                var model = ListTablesResponseBody.Result()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.result = tmp
        }
    }
}

public class ListTablesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListTablesResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = ListTablesResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListTagResourcesRequest : Tea.TeaModel {
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
                map["key"] = self.key!
            }
            if self.value != nil {
                map["value"] = self.value!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("key") {
                self.key = dict["key"] as! String
            }
            if dict.keys.contains("value") {
                self.value = dict["value"] as! String
            }
        }
    }
    public var nextToken: String?

    public var resourceId: [String]?

    public var resourceType: String?

    public var tag: [ListTagResourcesRequest.Tag]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.nextToken != nil {
            map["nextToken"] = self.nextToken!
        }
        if self.resourceId != nil {
            map["resourceId"] = self.resourceId!
        }
        if self.resourceType != nil {
            map["resourceType"] = self.resourceType!
        }
        if self.tag != nil {
            var tmp : [Any] = []
            for k in self.tag! {
                tmp.append(k.toMap())
            }
            map["tag"] = tmp
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("nextToken") {
            self.nextToken = dict["nextToken"] as! String
        }
        if dict.keys.contains("resourceId") {
            self.resourceId = dict["resourceId"] as! [String]
        }
        if dict.keys.contains("resourceType") {
            self.resourceType = dict["resourceType"] as! String
        }
        if dict.keys.contains("tag") {
            var tmp : [ListTagResourcesRequest.Tag] = []
            for v in dict["tag"] as! [Any] {
                var model = ListTagResourcesRequest.Tag()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.tag = tmp
        }
    }
}

public class ListTagResourcesShrinkRequest : Tea.TeaModel {
    public var nextToken: String?

    public var resourceIdShrink: String?

    public var resourceType: String?

    public var tagShrink: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.nextToken != nil {
            map["nextToken"] = self.nextToken!
        }
        if self.resourceIdShrink != nil {
            map["resourceId"] = self.resourceIdShrink!
        }
        if self.resourceType != nil {
            map["resourceType"] = self.resourceType!
        }
        if self.tagShrink != nil {
            map["tag"] = self.tagShrink!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("nextToken") {
            self.nextToken = dict["nextToken"] as! String
        }
        if dict.keys.contains("resourceId") {
            self.resourceIdShrink = dict["resourceId"] as! String
        }
        if dict.keys.contains("resourceType") {
            self.resourceType = dict["resourceType"] as! String
        }
        if dict.keys.contains("tag") {
            self.tagShrink = dict["tag"] as! String
        }
    }
}

public class ListTagResourcesResponseBody : Tea.TeaModel {
    public class TagResources : Tea.TeaModel {
        public var resourceId: String?

        public var resourceType: String?

        public var tagKey: String?

        public var tagValue: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.resourceId != nil {
                map["resourceId"] = self.resourceId!
            }
            if self.resourceType != nil {
                map["resourceType"] = self.resourceType!
            }
            if self.tagKey != nil {
                map["tagKey"] = self.tagKey!
            }
            if self.tagValue != nil {
                map["tagValue"] = self.tagValue!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("resourceId") {
                self.resourceId = dict["resourceId"] as! String
            }
            if dict.keys.contains("resourceType") {
                self.resourceType = dict["resourceType"] as! String
            }
            if dict.keys.contains("tagKey") {
                self.tagKey = dict["tagKey"] as! String
            }
            if dict.keys.contains("tagValue") {
                self.tagValue = dict["tagValue"] as! String
            }
        }
    }
    public var nextToken: String?

    public var requestId: String?

    public var tagResources: [ListTagResourcesResponseBody.TagResources]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.nextToken != nil {
            map["nextToken"] = self.nextToken!
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        if self.tagResources != nil {
            var tmp : [Any] = []
            for k in self.tagResources! {
                tmp.append(k.toMap())
            }
            map["tagResources"] = tmp
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("nextToken") {
            self.nextToken = dict["nextToken"] as! String
        }
        if dict.keys.contains("requestId") {
            self.requestId = dict["requestId"] as! String
        }
        if dict.keys.contains("tagResources") {
            var tmp : [ListTagResourcesResponseBody.TagResources] = []
            for v in dict["tagResources"] as! [Any] {
                var model = ListTagResourcesResponseBody.TagResources()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.tagResources = tmp
        }
    }
}

public class ListTagResourcesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListTagResourcesResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = ListTagResourcesResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListTasksRequest : Tea.TeaModel {
    public var end: Int64?

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
            map["end"] = self.end!
        }
        if self.start != nil {
            map["start"] = self.start!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("end") {
            self.end = dict["end"] as! Int64
        }
        if dict.keys.contains("start") {
            self.start = dict["start"] as! Int64
        }
    }
}

public class ListTasksResponseBody : Tea.TeaModel {
    public var requestId: String?

    public var result: Any?

    public override init() {
        super.init()
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
            map["requestId"] = self.requestId!
        }
        if self.result != nil {
            map["result"] = self.result!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("requestId") {
            self.requestId = dict["requestId"] as! String
        }
        if dict.keys.contains("result") {
            self.result = dict["result"] as! Any
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
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = ListTasksResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListVectorQueryResultRequest : Tea.TeaModel {
    public var body: [String: Any]?

    public var path: String?

    public var queryType: String?

    public var vectorQueryType: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.body != nil {
            map["body"] = self.body!
        }
        if self.path != nil {
            map["path"] = self.path!
        }
        if self.queryType != nil {
            map["queryType"] = self.queryType!
        }
        if self.vectorQueryType != nil {
            map["vectorQueryType"] = self.vectorQueryType!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("body") {
            self.body = dict["body"] as! [String: Any]
        }
        if dict.keys.contains("path") {
            self.path = dict["path"] as! String
        }
        if dict.keys.contains("queryType") {
            self.queryType = dict["queryType"] as! String
        }
        if dict.keys.contains("vectorQueryType") {
            self.vectorQueryType = dict["vectorQueryType"] as! String
        }
    }
}

public class ListVectorQueryResultResponseBody : Tea.TeaModel {
    public var requestId: String?

    public var result: Any?

    public override init() {
        super.init()
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
            map["requestId"] = self.requestId!
        }
        if self.result != nil {
            map["result"] = self.result!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("requestId") {
            self.requestId = dict["requestId"] as! String
        }
        if dict.keys.contains("result") {
            self.result = dict["result"] as! Any
        }
    }
}

public class ListVectorQueryResultResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListVectorQueryResultResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = ListVectorQueryResultResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ModifyAdvanceConfigRequest : Tea.TeaModel {
    public class Files : Tea.TeaModel {
        public var fullPathName: String?

        public var isDir: Bool?

        public var isTemplate: Bool?

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
            if self.fullPathName != nil {
                map["fullPathName"] = self.fullPathName!
            }
            if self.isDir != nil {
                map["isDir"] = self.isDir!
            }
            if self.isTemplate != nil {
                map["isTemplate"] = self.isTemplate!
            }
            if self.name != nil {
                map["name"] = self.name!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("fullPathName") {
                self.fullPathName = dict["fullPathName"] as! String
            }
            if dict.keys.contains("isDir") {
                self.isDir = dict["isDir"] as! Bool
            }
            if dict.keys.contains("isTemplate") {
                self.isTemplate = dict["isTemplate"] as! Bool
            }
            if dict.keys.contains("name") {
                self.name = dict["name"] as! String
            }
        }
    }
    public var content: String?

    public var contentType: String?

    public var desc: String?

    public var files: [ModifyAdvanceConfigRequest.Files]?

    public var name: String?

    public var status: String?

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
        if self.content != nil {
            map["content"] = self.content!
        }
        if self.contentType != nil {
            map["contentType"] = self.contentType!
        }
        if self.desc != nil {
            map["desc"] = self.desc!
        }
        if self.files != nil {
            var tmp : [Any] = []
            for k in self.files! {
                tmp.append(k.toMap())
            }
            map["files"] = tmp
        }
        if self.name != nil {
            map["name"] = self.name!
        }
        if self.status != nil {
            map["status"] = self.status!
        }
        if self.updateTime != nil {
            map["updateTime"] = self.updateTime!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("content") {
            self.content = dict["content"] as! String
        }
        if dict.keys.contains("contentType") {
            self.contentType = dict["contentType"] as! String
        }
        if dict.keys.contains("desc") {
            self.desc = dict["desc"] as! String
        }
        if dict.keys.contains("files") {
            var tmp : [ModifyAdvanceConfigRequest.Files] = []
            for v in dict["files"] as! [Any] {
                var model = ModifyAdvanceConfigRequest.Files()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.files = tmp
        }
        if dict.keys.contains("name") {
            self.name = dict["name"] as! String
        }
        if dict.keys.contains("status") {
            self.status = dict["status"] as! String
        }
        if dict.keys.contains("updateTime") {
            self.updateTime = dict["updateTime"] as! Int64
        }
    }
}

public class ModifyAdvanceConfigResponseBody : Tea.TeaModel {
    public var requestId: String?

    public var result: [String: Any]?

    public override init() {
        super.init()
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
            map["requestId"] = self.requestId!
        }
        if self.result != nil {
            map["result"] = self.result!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("requestId") {
            self.requestId = dict["requestId"] as! String
        }
        if dict.keys.contains("result") {
            self.result = dict["result"] as! [String: Any]
        }
    }
}

public class ModifyAdvanceConfigResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ModifyAdvanceConfigResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = ModifyAdvanceConfigResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ModifyAdvanceConfigFileRequest : Tea.TeaModel {
    public var content: String?

    public var variables: [String: VariablesValue]?

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
        if self.content != nil {
            map["content"] = self.content!
        }
        if self.variables != nil {
            var tmp : [String: Any] = [:]
            for (k, v) in self.variables! {
                tmp[k] = v.toMap()
            }
            map["variables"] = tmp
        }
        if self.fileName != nil {
            map["fileName"] = self.fileName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("content") {
            self.content = dict["content"] as! String
        }
        if dict.keys.contains("variables") {
            var tmp : [String: VariablesValue] = [:]
            for (k, v) in dict["variables"] as! [String: Any] {
                if v != nil {
                    var model = VariablesValue()
                    model.fromMap(v as! [String: Any])
                    tmp[k] = model
                }
            }
            self.variables = tmp
        }
        if dict.keys.contains("fileName") {
            self.fileName = dict["fileName"] as! String
        }
    }
}

public class ModifyAdvanceConfigFileResponseBody : Tea.TeaModel {
    public var requestId: String?

    public var result: [String: Any]?

    public override init() {
        super.init()
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
            map["requestId"] = self.requestId!
        }
        if self.result != nil {
            map["result"] = self.result!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("requestId") {
            self.requestId = dict["requestId"] as! String
        }
        if dict.keys.contains("result") {
            self.result = dict["result"] as! [String: Any]
        }
    }
}

public class ModifyAdvanceConfigFileResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ModifyAdvanceConfigFileResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = ModifyAdvanceConfigFileResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ModifyAliasRequest : Tea.TeaModel {
    public var alias: String?

    public var index: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.alias != nil {
            map["alias"] = self.alias!
        }
        if self.index != nil {
            map["index"] = self.index!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("alias") {
            self.alias = dict["alias"] as! String
        }
        if dict.keys.contains("index") {
            self.index = dict["index"] as! String
        }
    }
}

public class ModifyAliasResponseBody : Tea.TeaModel {
    public var requestId: String?

    public var result: [String: Any]?

    public override init() {
        super.init()
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
            map["requestId"] = self.requestId!
        }
        if self.result != nil {
            map["result"] = self.result!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("requestId") {
            self.requestId = dict["requestId"] as! String
        }
        if dict.keys.contains("result") {
            self.result = dict["result"] as! [String: Any]
        }
    }
}

public class ModifyAliasResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ModifyAliasResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = ModifyAliasResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ModifyClusterDescRequest : Tea.TeaModel {
    public var body: [String: Any]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.body != nil {
            map["body"] = self.body!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("body") {
            self.body = dict["body"] as! [String: Any]
        }
    }
}

public class ModifyClusterDescResponseBody : Tea.TeaModel {
    public var requestId: String?

    public var result: [String: Any]?

    public override init() {
        super.init()
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
            map["requestId"] = self.requestId!
        }
        if self.result != nil {
            map["result"] = self.result!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("requestId") {
            self.requestId = dict["requestId"] as! String
        }
        if dict.keys.contains("result") {
            self.result = dict["result"] as! [String: Any]
        }
    }
}

public class ModifyClusterDescResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ModifyClusterDescResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = ModifyClusterDescResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ModifyClusterOfflineConfigRequest : Tea.TeaModel {
    public var buildMode: String?

    public var config: [String: Int32]?

    public var dataSourceName: String?

    public var dataSourceType: String?

    public var dataTimeSec: Int32?

    public var domain: String?

    public var generation: Int64?

    public var partition: String?

    public var pushMode: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.buildMode != nil {
            map["buildMode"] = self.buildMode!
        }
        if self.config != nil {
            map["config"] = self.config!
        }
        if self.dataSourceName != nil {
            map["dataSourceName"] = self.dataSourceName!
        }
        if self.dataSourceType != nil {
            map["dataSourceType"] = self.dataSourceType!
        }
        if self.dataTimeSec != nil {
            map["dataTimeSec"] = self.dataTimeSec!
        }
        if self.domain != nil {
            map["domain"] = self.domain!
        }
        if self.generation != nil {
            map["generation"] = self.generation!
        }
        if self.partition != nil {
            map["partition"] = self.partition!
        }
        if self.pushMode != nil {
            map["pushMode"] = self.pushMode!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("buildMode") {
            self.buildMode = dict["buildMode"] as! String
        }
        if dict.keys.contains("config") {
            self.config = dict["config"] as! [String: Int32]
        }
        if dict.keys.contains("dataSourceName") {
            self.dataSourceName = dict["dataSourceName"] as! String
        }
        if dict.keys.contains("dataSourceType") {
            self.dataSourceType = dict["dataSourceType"] as! String
        }
        if dict.keys.contains("dataTimeSec") {
            self.dataTimeSec = dict["dataTimeSec"] as! Int32
        }
        if dict.keys.contains("domain") {
            self.domain = dict["domain"] as! String
        }
        if dict.keys.contains("generation") {
            self.generation = dict["generation"] as! Int64
        }
        if dict.keys.contains("partition") {
            self.partition = dict["partition"] as! String
        }
        if dict.keys.contains("pushMode") {
            self.pushMode = dict["pushMode"] as! String
        }
    }
}

public class ModifyClusterOfflineConfigResponseBody : Tea.TeaModel {
    public var requestId: String?

    public var result: [String: Any]?

    public override init() {
        super.init()
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
            map["requestId"] = self.requestId!
        }
        if self.result != nil {
            map["result"] = self.result!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("requestId") {
            self.requestId = dict["requestId"] as! String
        }
        if dict.keys.contains("result") {
            self.result = dict["result"] as! [String: Any]
        }
    }
}

public class ModifyClusterOfflineConfigResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ModifyClusterOfflineConfigResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = ModifyClusterOfflineConfigResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ModifyClusterOnlineConfigRequest : Tea.TeaModel {
    public var clusters: [String]?

    public var config: [String: Int32]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.clusters != nil {
            map["clusters"] = self.clusters!
        }
        if self.config != nil {
            map["config"] = self.config!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("clusters") {
            self.clusters = dict["clusters"] as! [String]
        }
        if dict.keys.contains("config") {
            self.config = dict["config"] as! [String: Int32]
        }
    }
}

public class ModifyClusterOnlineConfigResponseBody : Tea.TeaModel {
    public var requestId: String?

    public var result: [String: Any]?

    public override init() {
        super.init()
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
            map["requestId"] = self.requestId!
        }
        if self.result != nil {
            map["result"] = self.result!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("requestId") {
            self.requestId = dict["requestId"] as! String
        }
        if dict.keys.contains("result") {
            self.result = dict["result"] as! [String: Any]
        }
    }
}

public class ModifyClusterOnlineConfigResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ModifyClusterOnlineConfigResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = ModifyClusterOnlineConfigResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ModifyDataSourceDeployRequest : Tea.TeaModel {
    public class Extend : Tea.TeaModel {
        public class Hdfs : Tea.TeaModel {
            public var path: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.path != nil {
                    map["path"] = self.path!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("path") {
                    self.path = dict["path"] as! String
                }
            }
        }
        public class Odps : Tea.TeaModel {
            public var partitions: [String: String]?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.partitions != nil {
                    map["partitions"] = self.partitions!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("partitions") {
                    self.partitions = dict["partitions"] as! [String: String]
                }
            }
        }
        public class Oss : Tea.TeaModel {
            public var path: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.path != nil {
                    map["path"] = self.path!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("path") {
                    self.path = dict["path"] as! String
                }
            }
        }
        public class Saro : Tea.TeaModel {
            public var path: String?

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
                if self.path != nil {
                    map["path"] = self.path!
                }
                if self.version != nil {
                    map["version"] = self.version!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("path") {
                    self.path = dict["path"] as! String
                }
                if dict.keys.contains("version") {
                    self.version = dict["version"] as! String
                }
            }
        }
        public var hdfs: ModifyDataSourceDeployRequest.Extend.Hdfs?

        public var odps: ModifyDataSourceDeployRequest.Extend.Odps?

        public var oss: ModifyDataSourceDeployRequest.Extend.Oss?

        public var saro: ModifyDataSourceDeployRequest.Extend.Saro?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.hdfs?.validate()
            try self.odps?.validate()
            try self.oss?.validate()
            try self.saro?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.hdfs != nil {
                map["hdfs"] = self.hdfs?.toMap()
            }
            if self.odps != nil {
                map["odps"] = self.odps?.toMap()
            }
            if self.oss != nil {
                map["oss"] = self.oss?.toMap()
            }
            if self.saro != nil {
                map["saro"] = self.saro?.toMap()
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("hdfs") {
                var model = ModifyDataSourceDeployRequest.Extend.Hdfs()
                model.fromMap(dict["hdfs"] as! [String: Any])
                self.hdfs = model
            }
            if dict.keys.contains("odps") {
                var model = ModifyDataSourceDeployRequest.Extend.Odps()
                model.fromMap(dict["odps"] as! [String: Any])
                self.odps = model
            }
            if dict.keys.contains("oss") {
                var model = ModifyDataSourceDeployRequest.Extend.Oss()
                model.fromMap(dict["oss"] as! [String: Any])
                self.oss = model
            }
            if dict.keys.contains("saro") {
                var model = ModifyDataSourceDeployRequest.Extend.Saro()
                model.fromMap(dict["saro"] as! [String: Any])
                self.saro = model
            }
        }
    }
    public class Processor : Tea.TeaModel {
        public var args: String?

        public var resource: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.args != nil {
                map["args"] = self.args!
            }
            if self.resource != nil {
                map["resource"] = self.resource!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("args") {
                self.args = dict["args"] as! String
            }
            if dict.keys.contains("resource") {
                self.resource = dict["resource"] as! String
            }
        }
    }
    public class Storage : Tea.TeaModel {
        public var accessKey: String?

        public var accessSecret: String?

        public var bucket: String?

        public var catalog: String?

        public var database: String?

        public var endpoint: String?

        public var namespace: String?

        public var ossPath: String?

        public var partition: String?

        public var path: String?

        public var project: String?

        public var table: String?

        public var tag: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.accessKey != nil {
                map["accessKey"] = self.accessKey!
            }
            if self.accessSecret != nil {
                map["accessSecret"] = self.accessSecret!
            }
            if self.bucket != nil {
                map["bucket"] = self.bucket!
            }
            if self.catalog != nil {
                map["catalog"] = self.catalog!
            }
            if self.database != nil {
                map["database"] = self.database!
            }
            if self.endpoint != nil {
                map["endpoint"] = self.endpoint!
            }
            if self.namespace != nil {
                map["namespace"] = self.namespace!
            }
            if self.ossPath != nil {
                map["ossPath"] = self.ossPath!
            }
            if self.partition != nil {
                map["partition"] = self.partition!
            }
            if self.path != nil {
                map["path"] = self.path!
            }
            if self.project != nil {
                map["project"] = self.project!
            }
            if self.table != nil {
                map["table"] = self.table!
            }
            if self.tag != nil {
                map["tag"] = self.tag!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("accessKey") {
                self.accessKey = dict["accessKey"] as! String
            }
            if dict.keys.contains("accessSecret") {
                self.accessSecret = dict["accessSecret"] as! String
            }
            if dict.keys.contains("bucket") {
                self.bucket = dict["bucket"] as! String
            }
            if dict.keys.contains("catalog") {
                self.catalog = dict["catalog"] as! String
            }
            if dict.keys.contains("database") {
                self.database = dict["database"] as! String
            }
            if dict.keys.contains("endpoint") {
                self.endpoint = dict["endpoint"] as! String
            }
            if dict.keys.contains("namespace") {
                self.namespace = dict["namespace"] as! String
            }
            if dict.keys.contains("ossPath") {
                self.ossPath = dict["ossPath"] as! String
            }
            if dict.keys.contains("partition") {
                self.partition = dict["partition"] as! String
            }
            if dict.keys.contains("path") {
                self.path = dict["path"] as! String
            }
            if dict.keys.contains("project") {
                self.project = dict["project"] as! String
            }
            if dict.keys.contains("table") {
                self.table = dict["table"] as! String
            }
            if dict.keys.contains("tag") {
                self.tag = dict["tag"] as! String
            }
        }
    }
    public class Swift : Tea.TeaModel {
        public var topic: String?

        public var zk: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.topic != nil {
                map["topic"] = self.topic!
            }
            if self.zk != nil {
                map["zk"] = self.zk!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("topic") {
                self.topic = dict["topic"] as! String
            }
            if dict.keys.contains("zk") {
                self.zk = dict["zk"] as! String
            }
        }
    }
    public var autoBuildIndex: Bool?

    public var extend: ModifyDataSourceDeployRequest.Extend?

    public var processor: ModifyDataSourceDeployRequest.Processor?

    public var storage: ModifyDataSourceDeployRequest.Storage?

    public var swift: ModifyDataSourceDeployRequest.Swift?

    public var dryRun: Bool?

    public var generationId: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.extend?.validate()
        try self.processor?.validate()
        try self.storage?.validate()
        try self.swift?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.autoBuildIndex != nil {
            map["autoBuildIndex"] = self.autoBuildIndex!
        }
        if self.extend != nil {
            map["extend"] = self.extend?.toMap()
        }
        if self.processor != nil {
            map["processor"] = self.processor?.toMap()
        }
        if self.storage != nil {
            map["storage"] = self.storage?.toMap()
        }
        if self.swift != nil {
            map["swift"] = self.swift?.toMap()
        }
        if self.dryRun != nil {
            map["dryRun"] = self.dryRun!
        }
        if self.generationId != nil {
            map["generationId"] = self.generationId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("autoBuildIndex") {
            self.autoBuildIndex = dict["autoBuildIndex"] as! Bool
        }
        if dict.keys.contains("extend") {
            var model = ModifyDataSourceDeployRequest.Extend()
            model.fromMap(dict["extend"] as! [String: Any])
            self.extend = model
        }
        if dict.keys.contains("processor") {
            var model = ModifyDataSourceDeployRequest.Processor()
            model.fromMap(dict["processor"] as! [String: Any])
            self.processor = model
        }
        if dict.keys.contains("storage") {
            var model = ModifyDataSourceDeployRequest.Storage()
            model.fromMap(dict["storage"] as! [String: Any])
            self.storage = model
        }
        if dict.keys.contains("swift") {
            var model = ModifyDataSourceDeployRequest.Swift()
            model.fromMap(dict["swift"] as! [String: Any])
            self.swift = model
        }
        if dict.keys.contains("dryRun") {
            self.dryRun = dict["dryRun"] as! Bool
        }
        if dict.keys.contains("generationId") {
            self.generationId = dict["generationId"] as! Int64
        }
    }
}

public class ModifyDataSourceDeployResponseBody : Tea.TeaModel {
    public var requestId: String?

    public var result: [String: Any]?

    public override init() {
        super.init()
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
            map["requestId"] = self.requestId!
        }
        if self.result != nil {
            map["result"] = self.result!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("requestId") {
            self.requestId = dict["requestId"] as! String
        }
        if dict.keys.contains("result") {
            self.result = dict["result"] as! [String: Any]
        }
    }
}

public class ModifyDataSourceDeployResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ModifyDataSourceDeployResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = ModifyDataSourceDeployResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ModifyFileRequest : Tea.TeaModel {
    public var content: String?

    public var partition: Int32?

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
        if self.content != nil {
            map["content"] = self.content!
        }
        if self.partition != nil {
            map["partition"] = self.partition!
        }
        if self.fileName != nil {
            map["fileName"] = self.fileName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("content") {
            self.content = dict["content"] as! String
        }
        if dict.keys.contains("partition") {
            self.partition = dict["partition"] as! Int32
        }
        if dict.keys.contains("fileName") {
            self.fileName = dict["fileName"] as! String
        }
    }
}

public class ModifyFileResponseBody : Tea.TeaModel {
    public var requestId: String?

    public var result: [String: Any]?

    public override init() {
        super.init()
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
            map["requestId"] = self.requestId!
        }
        if self.result != nil {
            map["result"] = self.result!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("requestId") {
            self.requestId = dict["requestId"] as! String
        }
        if dict.keys.contains("result") {
            self.result = dict["result"] as! [String: Any]
        }
    }
}

public class ModifyFileResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ModifyFileResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = ModifyFileResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ModifyIndexRequest : Tea.TeaModel {
    public class DataSourceInfo : Tea.TeaModel {
        public class Config : Tea.TeaModel {
            public var accessKey: String?

            public var accessSecret: String?

            public var bucket: String?

            public var catalog: String?

            public var database: String?

            public var endpoint: String?

            public var format: String?

            public var namespace: String?

            public var ossPath: String?

            public var partition: String?

            public var path: String?

            public var project: String?

            public var table: String?

            public var tag: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.accessKey != nil {
                    map["accessKey"] = self.accessKey!
                }
                if self.accessSecret != nil {
                    map["accessSecret"] = self.accessSecret!
                }
                if self.bucket != nil {
                    map["bucket"] = self.bucket!
                }
                if self.catalog != nil {
                    map["catalog"] = self.catalog!
                }
                if self.database != nil {
                    map["database"] = self.database!
                }
                if self.endpoint != nil {
                    map["endpoint"] = self.endpoint!
                }
                if self.format != nil {
                    map["format"] = self.format!
                }
                if self.namespace != nil {
                    map["namespace"] = self.namespace!
                }
                if self.ossPath != nil {
                    map["ossPath"] = self.ossPath!
                }
                if self.partition != nil {
                    map["partition"] = self.partition!
                }
                if self.path != nil {
                    map["path"] = self.path!
                }
                if self.project != nil {
                    map["project"] = self.project!
                }
                if self.table != nil {
                    map["table"] = self.table!
                }
                if self.tag != nil {
                    map["tag"] = self.tag!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("accessKey") {
                    self.accessKey = dict["accessKey"] as! String
                }
                if dict.keys.contains("accessSecret") {
                    self.accessSecret = dict["accessSecret"] as! String
                }
                if dict.keys.contains("bucket") {
                    self.bucket = dict["bucket"] as! String
                }
                if dict.keys.contains("catalog") {
                    self.catalog = dict["catalog"] as! String
                }
                if dict.keys.contains("database") {
                    self.database = dict["database"] as! String
                }
                if dict.keys.contains("endpoint") {
                    self.endpoint = dict["endpoint"] as! String
                }
                if dict.keys.contains("format") {
                    self.format = dict["format"] as! String
                }
                if dict.keys.contains("namespace") {
                    self.namespace = dict["namespace"] as! String
                }
                if dict.keys.contains("ossPath") {
                    self.ossPath = dict["ossPath"] as! String
                }
                if dict.keys.contains("partition") {
                    self.partition = dict["partition"] as! String
                }
                if dict.keys.contains("path") {
                    self.path = dict["path"] as! String
                }
                if dict.keys.contains("project") {
                    self.project = dict["project"] as! String
                }
                if dict.keys.contains("table") {
                    self.table = dict["table"] as! String
                }
                if dict.keys.contains("tag") {
                    self.tag = dict["tag"] as! String
                }
            }
        }
        public class SaroConfig : Tea.TeaModel {
            public var namespace: String?

            public var tableName: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.namespace != nil {
                    map["namespace"] = self.namespace!
                }
                if self.tableName != nil {
                    map["tableName"] = self.tableName!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("namespace") {
                    self.namespace = dict["namespace"] as! String
                }
                if dict.keys.contains("tableName") {
                    self.tableName = dict["tableName"] as! String
                }
            }
        }
        public var autoBuildIndex: Bool?

        public var buildMode: String?

        public var config: ModifyIndexRequest.DataSourceInfo.Config?

        public var dataTimeSec: Int32?

        public var domain: String?

        public var generation: Int64?

        public var name: String?

        public var ossDataPath: String?

        public var partition: String?

        public var processParallelNum: Int32?

        public var processPartitionCount: Int32?

        public var saroConfig: ModifyIndexRequest.DataSourceInfo.SaroConfig?

        public var type: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.config?.validate()
            try self.saroConfig?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.autoBuildIndex != nil {
                map["autoBuildIndex"] = self.autoBuildIndex!
            }
            if self.buildMode != nil {
                map["buildMode"] = self.buildMode!
            }
            if self.config != nil {
                map["config"] = self.config?.toMap()
            }
            if self.dataTimeSec != nil {
                map["dataTimeSec"] = self.dataTimeSec!
            }
            if self.domain != nil {
                map["domain"] = self.domain!
            }
            if self.generation != nil {
                map["generation"] = self.generation!
            }
            if self.name != nil {
                map["name"] = self.name!
            }
            if self.ossDataPath != nil {
                map["ossDataPath"] = self.ossDataPath!
            }
            if self.partition != nil {
                map["partition"] = self.partition!
            }
            if self.processParallelNum != nil {
                map["processParallelNum"] = self.processParallelNum!
            }
            if self.processPartitionCount != nil {
                map["processPartitionCount"] = self.processPartitionCount!
            }
            if self.saroConfig != nil {
                map["saroConfig"] = self.saroConfig?.toMap()
            }
            if self.type != nil {
                map["type"] = self.type!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("autoBuildIndex") {
                self.autoBuildIndex = dict["autoBuildIndex"] as! Bool
            }
            if dict.keys.contains("buildMode") {
                self.buildMode = dict["buildMode"] as! String
            }
            if dict.keys.contains("config") {
                var model = ModifyIndexRequest.DataSourceInfo.Config()
                model.fromMap(dict["config"] as! [String: Any])
                self.config = model
            }
            if dict.keys.contains("dataTimeSec") {
                self.dataTimeSec = dict["dataTimeSec"] as! Int32
            }
            if dict.keys.contains("domain") {
                self.domain = dict["domain"] as! String
            }
            if dict.keys.contains("generation") {
                self.generation = dict["generation"] as! Int64
            }
            if dict.keys.contains("name") {
                self.name = dict["name"] as! String
            }
            if dict.keys.contains("ossDataPath") {
                self.ossDataPath = dict["ossDataPath"] as! String
            }
            if dict.keys.contains("partition") {
                self.partition = dict["partition"] as! String
            }
            if dict.keys.contains("processParallelNum") {
                self.processParallelNum = dict["processParallelNum"] as! Int32
            }
            if dict.keys.contains("processPartitionCount") {
                self.processPartitionCount = dict["processPartitionCount"] as! Int32
            }
            if dict.keys.contains("saroConfig") {
                var model = ModifyIndexRequest.DataSourceInfo.SaroConfig()
                model.fromMap(dict["saroConfig"] as! [String: Any])
                self.saroConfig = model
            }
            if dict.keys.contains("type") {
                self.type = dict["type"] as! String
            }
        }
    }
    public var buildParallelNum: Int32?

    public var cluster: [String: [String: Any]]?

    public var clusterConfigName: String?

    public var config: [String: ConfigValue]?

    public var content: String?

    public var dataSource: String?

    public var dataSourceInfo: ModifyIndexRequest.DataSourceInfo?

    public var description_: String?

    public var domain: String?

    public var extend: [String: Any]?

    public var mergeParallelNum: Int32?

    public var partition: Int32?

    public var pushMode: String?

    public var dryRun: Bool?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.dataSourceInfo?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.buildParallelNum != nil {
            map["buildParallelNum"] = self.buildParallelNum!
        }
        if self.cluster != nil {
            map["cluster"] = self.cluster!
        }
        if self.clusterConfigName != nil {
            map["clusterConfigName"] = self.clusterConfigName!
        }
        if self.config != nil {
            var tmp : [String: Any] = [:]
            for (k, v) in self.config! {
                tmp[k] = v.toMap()
            }
            map["config"] = tmp
        }
        if self.content != nil {
            map["content"] = self.content!
        }
        if self.dataSource != nil {
            map["dataSource"] = self.dataSource!
        }
        if self.dataSourceInfo != nil {
            map["dataSourceInfo"] = self.dataSourceInfo?.toMap()
        }
        if self.description_ != nil {
            map["description"] = self.description_!
        }
        if self.domain != nil {
            map["domain"] = self.domain!
        }
        if self.extend != nil {
            map["extend"] = self.extend!
        }
        if self.mergeParallelNum != nil {
            map["mergeParallelNum"] = self.mergeParallelNum!
        }
        if self.partition != nil {
            map["partition"] = self.partition!
        }
        if self.pushMode != nil {
            map["pushMode"] = self.pushMode!
        }
        if self.dryRun != nil {
            map["dryRun"] = self.dryRun!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("buildParallelNum") {
            self.buildParallelNum = dict["buildParallelNum"] as! Int32
        }
        if dict.keys.contains("cluster") {
            self.cluster = dict["cluster"] as! [String: [String: Any]]
        }
        if dict.keys.contains("clusterConfigName") {
            self.clusterConfigName = dict["clusterConfigName"] as! String
        }
        if dict.keys.contains("config") {
            var tmp : [String: ConfigValue] = [:]
            for (k, v) in dict["config"] as! [String: Any] {
                if v != nil {
                    var model = ConfigValue()
                    model.fromMap(v as! [String: Any])
                    tmp[k] = model
                }
            }
            self.config = tmp
        }
        if dict.keys.contains("content") {
            self.content = dict["content"] as! String
        }
        if dict.keys.contains("dataSource") {
            self.dataSource = dict["dataSource"] as! String
        }
        if dict.keys.contains("dataSourceInfo") {
            var model = ModifyIndexRequest.DataSourceInfo()
            model.fromMap(dict["dataSourceInfo"] as! [String: Any])
            self.dataSourceInfo = model
        }
        if dict.keys.contains("description") {
            self.description_ = dict["description"] as! String
        }
        if dict.keys.contains("domain") {
            self.domain = dict["domain"] as! String
        }
        if dict.keys.contains("extend") {
            self.extend = dict["extend"] as! [String: Any]
        }
        if dict.keys.contains("mergeParallelNum") {
            self.mergeParallelNum = dict["mergeParallelNum"] as! Int32
        }
        if dict.keys.contains("partition") {
            self.partition = dict["partition"] as! Int32
        }
        if dict.keys.contains("pushMode") {
            self.pushMode = dict["pushMode"] as! String
        }
        if dict.keys.contains("dryRun") {
            self.dryRun = dict["dryRun"] as! Bool
        }
    }
}

public class ModifyIndexResponseBody : Tea.TeaModel {
    public var requestId: String?

    public var result: Any?

    public override init() {
        super.init()
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
            map["requestId"] = self.requestId!
        }
        if self.result != nil {
            map["result"] = self.result!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("requestId") {
            self.requestId = dict["requestId"] as! String
        }
        if dict.keys.contains("result") {
            self.result = dict["result"] as! Any
        }
    }
}

public class ModifyIndexResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ModifyIndexResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = ModifyIndexResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ModifyIndexOnlineStrategyRequest : Tea.TeaModel {
    public var changeRate: Int32?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.changeRate != nil {
            map["changeRate"] = self.changeRate!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("changeRate") {
            self.changeRate = dict["changeRate"] as! Int32
        }
    }
}

public class ModifyIndexOnlineStrategyResponseBody : Tea.TeaModel {
    public var requestId: String?

    public var result: [String: Any]?

    public override init() {
        super.init()
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
            map["requestId"] = self.requestId!
        }
        if self.result != nil {
            map["result"] = self.result!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("requestId") {
            self.requestId = dict["requestId"] as! String
        }
        if dict.keys.contains("result") {
            self.result = dict["result"] as! [String: Any]
        }
    }
}

public class ModifyIndexOnlineStrategyResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ModifyIndexOnlineStrategyResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = ModifyIndexOnlineStrategyResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ModifyIndexPartitionRequest : Tea.TeaModel {
    public class IndexInfos : Tea.TeaModel {
        public var indexName: String?

        public var parallelNum: Int32?

        public var partitionCount: Int32?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.indexName != nil {
                map["indexName"] = self.indexName!
            }
            if self.parallelNum != nil {
                map["parallelNum"] = self.parallelNum!
            }
            if self.partitionCount != nil {
                map["partitionCount"] = self.partitionCount!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("indexName") {
                self.indexName = dict["indexName"] as! String
            }
            if dict.keys.contains("parallelNum") {
                self.parallelNum = dict["parallelNum"] as! Int32
            }
            if dict.keys.contains("partitionCount") {
                self.partitionCount = dict["partitionCount"] as! Int32
            }
        }
    }
    public var dataSourceName: String?

    public var domainName: String?

    public var generation: Int64?

    public var indexInfos: [ModifyIndexPartitionRequest.IndexInfos]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.dataSourceName != nil {
            map["dataSourceName"] = self.dataSourceName!
        }
        if self.domainName != nil {
            map["domainName"] = self.domainName!
        }
        if self.generation != nil {
            map["generation"] = self.generation!
        }
        if self.indexInfos != nil {
            var tmp : [Any] = []
            for k in self.indexInfos! {
                tmp.append(k.toMap())
            }
            map["indexInfos"] = tmp
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("dataSourceName") {
            self.dataSourceName = dict["dataSourceName"] as! String
        }
        if dict.keys.contains("domainName") {
            self.domainName = dict["domainName"] as! String
        }
        if dict.keys.contains("generation") {
            self.generation = dict["generation"] as! Int64
        }
        if dict.keys.contains("indexInfos") {
            var tmp : [ModifyIndexPartitionRequest.IndexInfos] = []
            for v in dict["indexInfos"] as! [Any] {
                var model = ModifyIndexPartitionRequest.IndexInfos()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.indexInfos = tmp
        }
    }
}

public class ModifyIndexPartitionResponseBody : Tea.TeaModel {
    public var requestId: String?

    public var result: [String: Any]?

    public override init() {
        super.init()
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
            map["requestId"] = self.requestId!
        }
        if self.result != nil {
            map["result"] = self.result!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("requestId") {
            self.requestId = dict["requestId"] as! String
        }
        if dict.keys.contains("result") {
            self.result = dict["result"] as! [String: Any]
        }
    }
}

public class ModifyIndexPartitionResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ModifyIndexPartitionResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = ModifyIndexPartitionResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ModifyIndexVersionRequest : Tea.TeaModel {
    public class Body : Tea.TeaModel {
        public var buildDeployId: String?

        public var indexName: String?

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
            if self.buildDeployId != nil {
                map["buildDeployId"] = self.buildDeployId!
            }
            if self.indexName != nil {
                map["indexName"] = self.indexName!
            }
            if self.version != nil {
                map["version"] = self.version!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("buildDeployId") {
                self.buildDeployId = dict["buildDeployId"] as! String
            }
            if dict.keys.contains("indexName") {
                self.indexName = dict["indexName"] as! String
            }
            if dict.keys.contains("version") {
                self.version = dict["version"] as! String
            }
        }
    }
    public var body: [ModifyIndexVersionRequest.Body]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.body != nil {
            var tmp : [Any] = []
            for k in self.body! {
                tmp.append(k.toMap())
            }
            map["body"] = tmp
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("body") {
            var tmp : [ModifyIndexVersionRequest.Body] = []
            for v in dict["body"] as! [Any] {
                var model = ModifyIndexVersionRequest.Body()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.body = tmp
        }
    }
}

public class ModifyIndexVersionResponseBody : Tea.TeaModel {
    public var requestId: String?

    public var result: [String: Any]?

    public override init() {
        super.init()
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
            map["requestId"] = self.requestId!
        }
        if self.result != nil {
            map["result"] = self.result!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("requestId") {
            self.requestId = dict["requestId"] as! String
        }
        if dict.keys.contains("result") {
            self.result = dict["result"] as! [String: Any]
        }
    }
}

public class ModifyIndexVersionResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ModifyIndexVersionResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = ModifyIndexVersionResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ModifyModelRequest : Tea.TeaModel {
    public class Content : Tea.TeaModel {
        public class Request : Tea.TeaModel {
            public class Header : Tea.TeaModel {
                public var authorization: String?

                public var contentType: String?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.authorization != nil {
                        map["Authorization"] = self.authorization!
                    }
                    if self.contentType != nil {
                        map["Content-Type"] = self.contentType!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("Authorization") {
                        self.authorization = dict["Authorization"] as! String
                    }
                    if dict.keys.contains("Content-Type") {
                        self.contentType = dict["Content-Type"] as! String
                    }
                }
            }
            public class Parameters : Tea.TeaModel {
                public class Build : Tea.TeaModel {
                    public var inputType: String?

                    public override init() {
                        super.init()
                    }

                    public init(_ dict: [String: Any]) {
                        super.init()
                        self.fromMap(dict)
                    }

                    public override func validate() throws -> Void {
                    }

                    public override func toMap() -> [String : Any] {
                        var map = super.toMap()
                        if self.inputType != nil {
                            map["input_type"] = self.inputType!
                        }
                        return map
                    }

                    public override func fromMap(_ dict: [String: Any]) -> Void {
                        if dict.keys.contains("input_type") {
                            self.inputType = dict["input_type"] as! String
                        }
                    }
                }
                public class Search : Tea.TeaModel {
                    public var inputType: String?

                    public override init() {
                        super.init()
                    }

                    public init(_ dict: [String: Any]) {
                        super.init()
                        self.fromMap(dict)
                    }

                    public override func validate() throws -> Void {
                    }

                    public override func toMap() -> [String : Any] {
                        var map = super.toMap()
                        if self.inputType != nil {
                            map["input_type"] = self.inputType!
                        }
                        return map
                    }

                    public override func fromMap(_ dict: [String: Any]) -> Void {
                        if dict.keys.contains("input_type") {
                            self.inputType = dict["input_type"] as! String
                        }
                    }
                }
                public var build: ModifyModelRequest.Content.Request.Parameters.Build?

                public var search: ModifyModelRequest.Content.Request.Parameters.Search?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                    try self.build?.validate()
                    try self.search?.validate()
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.build != nil {
                        map["build"] = self.build?.toMap()
                    }
                    if self.search != nil {
                        map["search"] = self.search?.toMap()
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("build") {
                        var model = ModifyModelRequest.Content.Request.Parameters.Build()
                        model.fromMap(dict["build"] as! [String: Any])
                        self.build = model
                    }
                    if dict.keys.contains("search") {
                        var model = ModifyModelRequest.Content.Request.Parameters.Search()
                        model.fromMap(dict["search"] as! [String: Any])
                        self.search = model
                    }
                }
            }
            public class UrlParams : Tea.TeaModel {
                public var build: [String: Any]?

                public var search: [String: Any]?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.build != nil {
                        map["build"] = self.build!
                    }
                    if self.search != nil {
                        map["search"] = self.search!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("build") {
                        self.build = dict["build"] as! [String: Any]
                    }
                    if dict.keys.contains("search") {
                        self.search = dict["search"] as! [String: Any]
                    }
                }
            }
            public var header: ModifyModelRequest.Content.Request.Header?

            public var parameters: ModifyModelRequest.Content.Request.Parameters?

            public var requestBody: String?

            public var urlParams: ModifyModelRequest.Content.Request.UrlParams?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
                try self.header?.validate()
                try self.parameters?.validate()
                try self.urlParams?.validate()
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.header != nil {
                    map["header"] = self.header?.toMap()
                }
                if self.parameters != nil {
                    map["parameters"] = self.parameters?.toMap()
                }
                if self.requestBody != nil {
                    map["requestBody"] = self.requestBody!
                }
                if self.urlParams != nil {
                    map["urlParams"] = self.urlParams?.toMap()
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("header") {
                    var model = ModifyModelRequest.Content.Request.Header()
                    model.fromMap(dict["header"] as! [String: Any])
                    self.header = model
                }
                if dict.keys.contains("parameters") {
                    var model = ModifyModelRequest.Content.Request.Parameters()
                    model.fromMap(dict["parameters"] as! [String: Any])
                    self.parameters = model
                }
                if dict.keys.contains("requestBody") {
                    self.requestBody = dict["requestBody"] as! String
                }
                if dict.keys.contains("urlParams") {
                    var model = ModifyModelRequest.Content.Request.UrlParams()
                    model.fromMap(dict["urlParams"] as! [String: Any])
                    self.urlParams = model
                }
            }
        }
        public class Response : Tea.TeaModel {
            public var embeddings: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.embeddings != nil {
                    map["embeddings"] = self.embeddings!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("embeddings") {
                    self.embeddings = dict["embeddings"] as! String
                }
            }
        }
        public var dimension: Int32?

        public var method: String?

        public var modelType: String?

        public var request: ModifyModelRequest.Content.Request?

        public var response: ModifyModelRequest.Content.Response?

        public var url: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.request?.validate()
            try self.response?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.dimension != nil {
                map["dimension"] = self.dimension!
            }
            if self.method != nil {
                map["method"] = self.method!
            }
            if self.modelType != nil {
                map["modelType"] = self.modelType!
            }
            if self.request != nil {
                map["request"] = self.request?.toMap()
            }
            if self.response != nil {
                map["response"] = self.response?.toMap()
            }
            if self.url != nil {
                map["url"] = self.url!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("dimension") {
                self.dimension = dict["dimension"] as! Int32
            }
            if dict.keys.contains("method") {
                self.method = dict["method"] as! String
            }
            if dict.keys.contains("modelType") {
                self.modelType = dict["modelType"] as! String
            }
            if dict.keys.contains("request") {
                var model = ModifyModelRequest.Content.Request()
                model.fromMap(dict["request"] as! [String: Any])
                self.request = model
            }
            if dict.keys.contains("response") {
                var model = ModifyModelRequest.Content.Response()
                model.fromMap(dict["response"] as! [String: Any])
                self.response = model
            }
            if dict.keys.contains("url") {
                self.url = dict["url"] as! String
            }
        }
    }
    public var content: ModifyModelRequest.Content?

    public var status: String?

    public var dryRun: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.content?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.content != nil {
            map["content"] = self.content?.toMap()
        }
        if self.status != nil {
            map["status"] = self.status!
        }
        if self.dryRun != nil {
            map["dryRun"] = self.dryRun!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("content") {
            var model = ModifyModelRequest.Content()
            model.fromMap(dict["content"] as! [String: Any])
            self.content = model
        }
        if dict.keys.contains("status") {
            self.status = dict["status"] as! String
        }
        if dict.keys.contains("dryRun") {
            self.dryRun = dict["dryRun"] as! String
        }
    }
}

public class ModifyModelResponseBody : Tea.TeaModel {
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
            map["requestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("requestId") {
            self.requestId = dict["requestId"] as! String
        }
    }
}

public class ModifyModelResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ModifyModelResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = ModifyModelResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ModifyNodeConfigRequest : Tea.TeaModel {
    public var active: Bool?

    public var dataDuplicateNumber: Int32?

    public var dataFragmentNumber: Int32?

    public var flowRatio: Int32?

    public var minServicePercent: Int32?

    public var published: Bool?

    public var clusterName: String?

    public var dataSourceName: String?

    public var name: String?

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
        if self.active != nil {
            map["active"] = self.active!
        }
        if self.dataDuplicateNumber != nil {
            map["dataDuplicateNumber"] = self.dataDuplicateNumber!
        }
        if self.dataFragmentNumber != nil {
            map["dataFragmentNumber"] = self.dataFragmentNumber!
        }
        if self.flowRatio != nil {
            map["flowRatio"] = self.flowRatio!
        }
        if self.minServicePercent != nil {
            map["minServicePercent"] = self.minServicePercent!
        }
        if self.published != nil {
            map["published"] = self.published!
        }
        if self.clusterName != nil {
            map["clusterName"] = self.clusterName!
        }
        if self.dataSourceName != nil {
            map["dataSourceName"] = self.dataSourceName!
        }
        if self.name != nil {
            map["name"] = self.name!
        }
        if self.type != nil {
            map["type"] = self.type!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("active") {
            self.active = dict["active"] as! Bool
        }
        if dict.keys.contains("dataDuplicateNumber") {
            self.dataDuplicateNumber = dict["dataDuplicateNumber"] as! Int32
        }
        if dict.keys.contains("dataFragmentNumber") {
            self.dataFragmentNumber = dict["dataFragmentNumber"] as! Int32
        }
        if dict.keys.contains("flowRatio") {
            self.flowRatio = dict["flowRatio"] as! Int32
        }
        if dict.keys.contains("minServicePercent") {
            self.minServicePercent = dict["minServicePercent"] as! Int32
        }
        if dict.keys.contains("published") {
            self.published = dict["published"] as! Bool
        }
        if dict.keys.contains("clusterName") {
            self.clusterName = dict["clusterName"] as! String
        }
        if dict.keys.contains("dataSourceName") {
            self.dataSourceName = dict["dataSourceName"] as! String
        }
        if dict.keys.contains("name") {
            self.name = dict["name"] as! String
        }
        if dict.keys.contains("type") {
            self.type = dict["type"] as! String
        }
    }
}

public class ModifyNodeConfigResponseBody : Tea.TeaModel {
    public var requestId: String?

    public var result: [String: Any]?

    public override init() {
        super.init()
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
            map["requestId"] = self.requestId!
        }
        if self.result != nil {
            map["result"] = self.result!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("requestId") {
            self.requestId = dict["requestId"] as! String
        }
        if dict.keys.contains("result") {
            self.result = dict["result"] as! [String: Any]
        }
    }
}

public class ModifyNodeConfigResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ModifyNodeConfigResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = ModifyNodeConfigResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ModifyOnlineConfigRequest : Tea.TeaModel {
    public var body: [String: String]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.body != nil {
            map["body"] = self.body!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("body") {
            self.body = dict["body"] as! [String: String]
        }
    }
}

public class ModifyOnlineConfigResponseBody : Tea.TeaModel {
    public var requestId: String?

    public var result: [String: Any]?

    public override init() {
        super.init()
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
            map["requestId"] = self.requestId!
        }
        if self.result != nil {
            map["result"] = self.result!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("requestId") {
            self.requestId = dict["requestId"] as! String
        }
        if dict.keys.contains("result") {
            self.result = dict["result"] as! [String: Any]
        }
    }
}

public class ModifyOnlineConfigResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ModifyOnlineConfigResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = ModifyOnlineConfigResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ModifyPasswordRequest : Tea.TeaModel {
    public var password: String?

    public var username: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.password != nil {
            map["password"] = self.password!
        }
        if self.username != nil {
            map["username"] = self.username!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("password") {
            self.password = dict["password"] as! String
        }
        if dict.keys.contains("username") {
            self.username = dict["username"] as! String
        }
    }
}

public class ModifyPasswordResponseBody : Tea.TeaModel {
    public var requestId: String?

    public var result: [String: Any]?

    public override init() {
        super.init()
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
            map["requestId"] = self.requestId!
        }
        if self.result != nil {
            map["result"] = self.result!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("requestId") {
            self.requestId = dict["requestId"] as! String
        }
        if dict.keys.contains("result") {
            self.result = dict["result"] as! [String: Any]
        }
    }
}

public class ModifyPasswordResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ModifyPasswordResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = ModifyPasswordResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ModifyPausePolicyRequest : Tea.TeaModel {
    public var body: [String: BodyValue]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.body != nil {
            var tmp : [String: Any] = [:]
            for (k, v) in self.body! {
                tmp[k] = v.toMap()
            }
            map["body"] = tmp
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("body") {
            var tmp : [String: BodyValue] = [:]
            for (k, v) in dict["body"] as! [String: Any] {
                if v != nil {
                    var model = BodyValue()
                    model.fromMap(v as! [String: Any])
                    tmp[k] = model
                }
            }
            self.body = tmp
        }
    }
}

public class ModifyPausePolicyResponseBody : Tea.TeaModel {
    public var requestId: String?

    public var result: [String: Any]?

    public override init() {
        super.init()
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
            map["requestId"] = self.requestId!
        }
        if self.result != nil {
            map["result"] = self.result!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("requestId") {
            self.requestId = dict["requestId"] as! String
        }
        if dict.keys.contains("result") {
            self.result = dict["result"] as! [String: Any]
        }
    }
}

public class ModifyPausePolicyResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ModifyPausePolicyResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = ModifyPausePolicyResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ModifyPublicUrlIpListRequest : Tea.TeaModel {
    public var body: [String: String]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.body != nil {
            map["body"] = self.body!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("body") {
            self.body = dict["body"] as! [String: String]
        }
    }
}

public class ModifyPublicUrlIpListResponseBody : Tea.TeaModel {
    public var requestId: String?

    public var result: [String: Any]?

    public override init() {
        super.init()
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
            map["requestId"] = self.requestId!
        }
        if self.result != nil {
            map["result"] = self.result!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("requestId") {
            self.requestId = dict["requestId"] as! String
        }
        if dict.keys.contains("result") {
            self.result = dict["result"] as! [String: Any]
        }
    }
}

public class ModifyPublicUrlIpListResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ModifyPublicUrlIpListResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = ModifyPublicUrlIpListResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ModifySearcherReplicaRequest : Tea.TeaModel {
    public var partition: Int32?

    public var replica: Int32?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.partition != nil {
            map["partition"] = self.partition!
        }
        if self.replica != nil {
            map["replica"] = self.replica!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("partition") {
            self.partition = dict["partition"] as! Int32
        }
        if dict.keys.contains("replica") {
            self.replica = dict["replica"] as! Int32
        }
    }
}

public class ModifySearcherReplicaResponseBody : Tea.TeaModel {
    public var requestId: String?

    public var result: [String: Any]?

    public override init() {
        super.init()
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
            map["requestId"] = self.requestId!
        }
        if self.result != nil {
            map["result"] = self.result!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("requestId") {
            self.requestId = dict["requestId"] as! String
        }
        if dict.keys.contains("result") {
            self.result = dict["result"] as! [String: Any]
        }
    }
}

public class ModifySearcherReplicaResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ModifySearcherReplicaResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = ModifySearcherReplicaResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ModifyTableRequest : Tea.TeaModel {
    public class DataProcessConfig : Tea.TeaModel {
        public class Params : Tea.TeaModel {
            public class SrcFieldConfig : Tea.TeaModel {
                public var ossBucket: String?

                public var ossEndpoint: String?

                public var uid: String?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.ossBucket != nil {
                        map["ossBucket"] = self.ossBucket!
                    }
                    if self.ossEndpoint != nil {
                        map["ossEndpoint"] = self.ossEndpoint!
                    }
                    if self.uid != nil {
                        map["uid"] = self.uid!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("ossBucket") {
                        self.ossBucket = dict["ossBucket"] as! String
                    }
                    if dict.keys.contains("ossEndpoint") {
                        self.ossEndpoint = dict["ossEndpoint"] as! String
                    }
                    if dict.keys.contains("uid") {
                        self.uid = dict["uid"] as! String
                    }
                }
            }
            public var srcFieldConfig: ModifyTableRequest.DataProcessConfig.Params.SrcFieldConfig?

            public var vectorModal: String?

            public var vectorModel: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
                try self.srcFieldConfig?.validate()
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.srcFieldConfig != nil {
                    map["srcFieldConfig"] = self.srcFieldConfig?.toMap()
                }
                if self.vectorModal != nil {
                    map["vectorModal"] = self.vectorModal!
                }
                if self.vectorModel != nil {
                    map["vectorModel"] = self.vectorModel!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("srcFieldConfig") {
                    var model = ModifyTableRequest.DataProcessConfig.Params.SrcFieldConfig()
                    model.fromMap(dict["srcFieldConfig"] as! [String: Any])
                    self.srcFieldConfig = model
                }
                if dict.keys.contains("vectorModal") {
                    self.vectorModal = dict["vectorModal"] as! String
                }
                if dict.keys.contains("vectorModel") {
                    self.vectorModel = dict["vectorModel"] as! String
                }
            }
        }
        public var dstField: String?

        public var operator_: String?

        public var params: ModifyTableRequest.DataProcessConfig.Params?

        public var srcField: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.params?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.dstField != nil {
                map["dstField"] = self.dstField!
            }
            if self.operator_ != nil {
                map["operator"] = self.operator_!
            }
            if self.params != nil {
                map["params"] = self.params?.toMap()
            }
            if self.srcField != nil {
                map["srcField"] = self.srcField!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("dstField") {
                self.dstField = dict["dstField"] as! String
            }
            if dict.keys.contains("operator") {
                self.operator_ = dict["operator"] as! String
            }
            if dict.keys.contains("params") {
                var model = ModifyTableRequest.DataProcessConfig.Params()
                model.fromMap(dict["params"] as! [String: Any])
                self.params = model
            }
            if dict.keys.contains("srcField") {
                self.srcField = dict["srcField"] as! String
            }
        }
    }
    public class DataSource : Tea.TeaModel {
        public class Config : Tea.TeaModel {
            public var accessKey: String?

            public var accessSecret: String?

            public var bucket: String?

            public var catalog: String?

            public var database: String?

            public var endpoint: String?

            public var ossPath: String?

            public var partition: String?

            public var project: String?

            public var table: String?

            public var tag: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.accessKey != nil {
                    map["accessKey"] = self.accessKey!
                }
                if self.accessSecret != nil {
                    map["accessSecret"] = self.accessSecret!
                }
                if self.bucket != nil {
                    map["bucket"] = self.bucket!
                }
                if self.catalog != nil {
                    map["catalog"] = self.catalog!
                }
                if self.database != nil {
                    map["database"] = self.database!
                }
                if self.endpoint != nil {
                    map["endpoint"] = self.endpoint!
                }
                if self.ossPath != nil {
                    map["ossPath"] = self.ossPath!
                }
                if self.partition != nil {
                    map["partition"] = self.partition!
                }
                if self.project != nil {
                    map["project"] = self.project!
                }
                if self.table != nil {
                    map["table"] = self.table!
                }
                if self.tag != nil {
                    map["tag"] = self.tag!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("accessKey") {
                    self.accessKey = dict["accessKey"] as! String
                }
                if dict.keys.contains("accessSecret") {
                    self.accessSecret = dict["accessSecret"] as! String
                }
                if dict.keys.contains("bucket") {
                    self.bucket = dict["bucket"] as! String
                }
                if dict.keys.contains("catalog") {
                    self.catalog = dict["catalog"] as! String
                }
                if dict.keys.contains("database") {
                    self.database = dict["database"] as! String
                }
                if dict.keys.contains("endpoint") {
                    self.endpoint = dict["endpoint"] as! String
                }
                if dict.keys.contains("ossPath") {
                    self.ossPath = dict["ossPath"] as! String
                }
                if dict.keys.contains("partition") {
                    self.partition = dict["partition"] as! String
                }
                if dict.keys.contains("project") {
                    self.project = dict["project"] as! String
                }
                if dict.keys.contains("table") {
                    self.table = dict["table"] as! String
                }
                if dict.keys.contains("tag") {
                    self.tag = dict["tag"] as! String
                }
            }
        }
        public var autoBuildIndex: Bool?

        public var config: ModifyTableRequest.DataSource.Config?

        public var dataTimeSec: Int32?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.config?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.autoBuildIndex != nil {
                map["autoBuildIndex"] = self.autoBuildIndex!
            }
            if self.config != nil {
                map["config"] = self.config?.toMap()
            }
            if self.dataTimeSec != nil {
                map["dataTimeSec"] = self.dataTimeSec!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("autoBuildIndex") {
                self.autoBuildIndex = dict["autoBuildIndex"] as! Bool
            }
            if dict.keys.contains("config") {
                var model = ModifyTableRequest.DataSource.Config()
                model.fromMap(dict["config"] as! [String: Any])
                self.config = model
            }
            if dict.keys.contains("dataTimeSec") {
                self.dataTimeSec = dict["dataTimeSec"] as! Int32
            }
        }
    }
    public class VectorIndex : Tea.TeaModel {
        public class AdvanceParams : Tea.TeaModel {
            public var buildIndexParams: String?

            public var linearBuildThreshold: String?

            public var minScanDocCnt: String?

            public var searchIndexParams: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.buildIndexParams != nil {
                    map["buildIndexParams"] = self.buildIndexParams!
                }
                if self.linearBuildThreshold != nil {
                    map["linearBuildThreshold"] = self.linearBuildThreshold!
                }
                if self.minScanDocCnt != nil {
                    map["minScanDocCnt"] = self.minScanDocCnt!
                }
                if self.searchIndexParams != nil {
                    map["searchIndexParams"] = self.searchIndexParams!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("buildIndexParams") {
                    self.buildIndexParams = dict["buildIndexParams"] as! String
                }
                if dict.keys.contains("linearBuildThreshold") {
                    self.linearBuildThreshold = dict["linearBuildThreshold"] as! String
                }
                if dict.keys.contains("minScanDocCnt") {
                    self.minScanDocCnt = dict["minScanDocCnt"] as! String
                }
                if dict.keys.contains("searchIndexParams") {
                    self.searchIndexParams = dict["searchIndexParams"] as! String
                }
            }
        }
        public var advanceParams: ModifyTableRequest.VectorIndex.AdvanceParams?

        public var dimension: String?

        public var distanceType: String?

        public var indexName: String?

        public var namespace: String?

        public var sparseIndexField: String?

        public var sparseValueField: String?

        public var vectorField: String?

        public var vectorIndexType: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.advanceParams?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.advanceParams != nil {
                map["advanceParams"] = self.advanceParams?.toMap()
            }
            if self.dimension != nil {
                map["dimension"] = self.dimension!
            }
            if self.distanceType != nil {
                map["distanceType"] = self.distanceType!
            }
            if self.indexName != nil {
                map["indexName"] = self.indexName!
            }
            if self.namespace != nil {
                map["namespace"] = self.namespace!
            }
            if self.sparseIndexField != nil {
                map["sparseIndexField"] = self.sparseIndexField!
            }
            if self.sparseValueField != nil {
                map["sparseValueField"] = self.sparseValueField!
            }
            if self.vectorField != nil {
                map["vectorField"] = self.vectorField!
            }
            if self.vectorIndexType != nil {
                map["vectorIndexType"] = self.vectorIndexType!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("advanceParams") {
                var model = ModifyTableRequest.VectorIndex.AdvanceParams()
                model.fromMap(dict["advanceParams"] as! [String: Any])
                self.advanceParams = model
            }
            if dict.keys.contains("dimension") {
                self.dimension = dict["dimension"] as! String
            }
            if dict.keys.contains("distanceType") {
                self.distanceType = dict["distanceType"] as! String
            }
            if dict.keys.contains("indexName") {
                self.indexName = dict["indexName"] as! String
            }
            if dict.keys.contains("namespace") {
                self.namespace = dict["namespace"] as! String
            }
            if dict.keys.contains("sparseIndexField") {
                self.sparseIndexField = dict["sparseIndexField"] as! String
            }
            if dict.keys.contains("sparseValueField") {
                self.sparseValueField = dict["sparseValueField"] as! String
            }
            if dict.keys.contains("vectorField") {
                self.vectorField = dict["vectorField"] as! String
            }
            if dict.keys.contains("vectorIndexType") {
                self.vectorIndexType = dict["vectorIndexType"] as! String
            }
        }
    }
    public var dataProcessConfig: [ModifyTableRequest.DataProcessConfig]?

    public var dataSource: ModifyTableRequest.DataSource?

    public var fieldSchema: [String: String]?

    public var partitionCount: Int32?

    public var primaryKey: String?

    public var rawSchema: String?

    public var vectorIndex: [ModifyTableRequest.VectorIndex]?

    public var dryRun: Bool?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.dataSource?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.dataProcessConfig != nil {
            var tmp : [Any] = []
            for k in self.dataProcessConfig! {
                tmp.append(k.toMap())
            }
            map["dataProcessConfig"] = tmp
        }
        if self.dataSource != nil {
            map["dataSource"] = self.dataSource?.toMap()
        }
        if self.fieldSchema != nil {
            map["fieldSchema"] = self.fieldSchema!
        }
        if self.partitionCount != nil {
            map["partitionCount"] = self.partitionCount!
        }
        if self.primaryKey != nil {
            map["primaryKey"] = self.primaryKey!
        }
        if self.rawSchema != nil {
            map["rawSchema"] = self.rawSchema!
        }
        if self.vectorIndex != nil {
            var tmp : [Any] = []
            for k in self.vectorIndex! {
                tmp.append(k.toMap())
            }
            map["vectorIndex"] = tmp
        }
        if self.dryRun != nil {
            map["dryRun"] = self.dryRun!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("dataProcessConfig") {
            var tmp : [ModifyTableRequest.DataProcessConfig] = []
            for v in dict["dataProcessConfig"] as! [Any] {
                var model = ModifyTableRequest.DataProcessConfig()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.dataProcessConfig = tmp
        }
        if dict.keys.contains("dataSource") {
            var model = ModifyTableRequest.DataSource()
            model.fromMap(dict["dataSource"] as! [String: Any])
            self.dataSource = model
        }
        if dict.keys.contains("fieldSchema") {
            self.fieldSchema = dict["fieldSchema"] as! [String: String]
        }
        if dict.keys.contains("partitionCount") {
            self.partitionCount = dict["partitionCount"] as! Int32
        }
        if dict.keys.contains("primaryKey") {
            self.primaryKey = dict["primaryKey"] as! String
        }
        if dict.keys.contains("rawSchema") {
            self.rawSchema = dict["rawSchema"] as! String
        }
        if dict.keys.contains("vectorIndex") {
            var tmp : [ModifyTableRequest.VectorIndex] = []
            for v in dict["vectorIndex"] as! [Any] {
                var model = ModifyTableRequest.VectorIndex()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.vectorIndex = tmp
        }
        if dict.keys.contains("dryRun") {
            self.dryRun = dict["dryRun"] as! Bool
        }
    }
}

public class ModifyTableResponseBody : Tea.TeaModel {
    public var requestId: String?

    public var result: [String: Any]?

    public override init() {
        super.init()
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
            map["requestId"] = self.requestId!
        }
        if self.result != nil {
            map["result"] = self.result!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("requestId") {
            self.requestId = dict["requestId"] as! String
        }
        if dict.keys.contains("result") {
            self.result = dict["result"] as! [String: Any]
        }
    }
}

public class ModifyTableResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ModifyTableResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = ModifyTableResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class PublishAdvanceConfigRequest : Tea.TeaModel {
    public class Files : Tea.TeaModel {
        public class Config : Tea.TeaModel {
            public var content: String?

            public var variables: [String: FilesConfigVariablesValue]?

            public override init() {
                super.init()
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
                if self.variables != nil {
                    var tmp : [String: Any] = [:]
                    for (k, v) in self.variables! {
                        tmp[k] = v.toMap()
                    }
                    map["variables"] = tmp
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("content") {
                    self.content = dict["content"] as! String
                }
                if dict.keys.contains("variables") {
                    var tmp : [String: FilesConfigVariablesValue] = [:]
                    for (k, v) in dict["variables"] as! [String: Any] {
                        if v != nil {
                            var model = FilesConfigVariablesValue()
                            model.fromMap(v as! [String: Any])
                            tmp[k] = model
                        }
                    }
                    self.variables = tmp
                }
            }
        }
        public var config: PublishAdvanceConfigRequest.Files.Config?

        public var dirName: String?

        public var fileName: String?

        public var operateType: String?

        public var ossPath: String?

        public var parentFullPath: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.config?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.config != nil {
                map["config"] = self.config?.toMap()
            }
            if self.dirName != nil {
                map["dirName"] = self.dirName!
            }
            if self.fileName != nil {
                map["fileName"] = self.fileName!
            }
            if self.operateType != nil {
                map["operateType"] = self.operateType!
            }
            if self.ossPath != nil {
                map["ossPath"] = self.ossPath!
            }
            if self.parentFullPath != nil {
                map["parentFullPath"] = self.parentFullPath!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("config") {
                var model = PublishAdvanceConfigRequest.Files.Config()
                model.fromMap(dict["config"] as! [String: Any])
                self.config = model
            }
            if dict.keys.contains("dirName") {
                self.dirName = dict["dirName"] as! String
            }
            if dict.keys.contains("fileName") {
                self.fileName = dict["fileName"] as! String
            }
            if dict.keys.contains("operateType") {
                self.operateType = dict["operateType"] as! String
            }
            if dict.keys.contains("ossPath") {
                self.ossPath = dict["ossPath"] as! String
            }
            if dict.keys.contains("parentFullPath") {
                self.parentFullPath = dict["parentFullPath"] as! String
            }
        }
    }
    public var desc: String?

    public var files: [PublishAdvanceConfigRequest.Files]?

    public override init() {
        super.init()
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
            map["desc"] = self.desc!
        }
        if self.files != nil {
            var tmp : [Any] = []
            for k in self.files! {
                tmp.append(k.toMap())
            }
            map["files"] = tmp
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("desc") {
            self.desc = dict["desc"] as! String
        }
        if dict.keys.contains("files") {
            var tmp : [PublishAdvanceConfigRequest.Files] = []
            for v in dict["files"] as! [Any] {
                var model = PublishAdvanceConfigRequest.Files()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.files = tmp
        }
    }
}

public class PublishAdvanceConfigResponseBody : Tea.TeaModel {
    public var requestId: String?

    public var result: [String: Any]?

    public override init() {
        super.init()
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
            map["requestId"] = self.requestId!
        }
        if self.result != nil {
            map["result"] = self.result!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("requestId") {
            self.requestId = dict["requestId"] as! String
        }
        if dict.keys.contains("result") {
            self.result = dict["result"] as! [String: Any]
        }
    }
}

public class PublishAdvanceConfigResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: PublishAdvanceConfigResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = PublishAdvanceConfigResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class PublishIndexVersionRequest : Tea.TeaModel {
    public var body: [String: Any]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.body != nil {
            map["body"] = self.body!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("body") {
            self.body = dict["body"] as! [String: Any]
        }
    }
}

public class PublishIndexVersionResponseBody : Tea.TeaModel {
    public var requestId: String?

    public var result: [String: Any]?

    public override init() {
        super.init()
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
            map["requestId"] = self.requestId!
        }
        if self.result != nil {
            map["result"] = self.result!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("requestId") {
            self.requestId = dict["requestId"] as! String
        }
        if dict.keys.contains("result") {
            self.result = dict["result"] as! [String: Any]
        }
    }
}

public class PublishIndexVersionResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: PublishIndexVersionResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = PublishIndexVersionResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class PushDocumentsRequest : Tea.TeaModel {
    public var body: [Any]?

    public var pkField: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.body != nil {
            map["body"] = self.body!
        }
        if self.pkField != nil {
            map["pkField"] = self.pkField!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("body") {
            self.body = dict["body"] as! [Any]
        }
        if dict.keys.contains("pkField") {
            self.pkField = dict["pkField"] as! String
        }
    }
}

public class PushDocumentsResponseBody : Tea.TeaModel {
    public var requestId: String?

    public var result: [String: Any]?

    public override init() {
        super.init()
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
            map["requestId"] = self.requestId!
        }
        if self.result != nil {
            map["result"] = self.result!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("requestId") {
            self.requestId = dict["requestId"] as! String
        }
        if dict.keys.contains("result") {
            self.result = dict["result"] as! [String: Any]
        }
    }
}

public class PushDocumentsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: PushDocumentsResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = PushDocumentsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class RecoverIndexRequest : Tea.TeaModel {
    public var buildDeployId: Int32?

    public var dataSourceName: String?

    public var generation: String?

    public var indexName: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.buildDeployId != nil {
            map["buildDeployId"] = self.buildDeployId!
        }
        if self.dataSourceName != nil {
            map["dataSourceName"] = self.dataSourceName!
        }
        if self.generation != nil {
            map["generation"] = self.generation!
        }
        if self.indexName != nil {
            map["indexName"] = self.indexName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("buildDeployId") {
            self.buildDeployId = dict["buildDeployId"] as! Int32
        }
        if dict.keys.contains("dataSourceName") {
            self.dataSourceName = dict["dataSourceName"] as! String
        }
        if dict.keys.contains("generation") {
            self.generation = dict["generation"] as! String
        }
        if dict.keys.contains("indexName") {
            self.indexName = dict["indexName"] as! String
        }
    }
}

public class RecoverIndexResponseBody : Tea.TeaModel {
    public var requestId: String?

    public var result: [String: Any]?

    public override init() {
        super.init()
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
            map["requestId"] = self.requestId!
        }
        if self.result != nil {
            map["result"] = self.result!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("requestId") {
            self.requestId = dict["requestId"] as! String
        }
        if dict.keys.contains("result") {
            self.result = dict["result"] as! [String: Any]
        }
    }
}

public class RecoverIndexResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: RecoverIndexResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = RecoverIndexResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ReindexRequest : Tea.TeaModel {
    public var dataTimeSec: Int32?

    public var ossDataPath: String?

    public var partition: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.dataTimeSec != nil {
            map["dataTimeSec"] = self.dataTimeSec!
        }
        if self.ossDataPath != nil {
            map["ossDataPath"] = self.ossDataPath!
        }
        if self.partition != nil {
            map["partition"] = self.partition!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("dataTimeSec") {
            self.dataTimeSec = dict["dataTimeSec"] as! Int32
        }
        if dict.keys.contains("ossDataPath") {
            self.ossDataPath = dict["ossDataPath"] as! String
        }
        if dict.keys.contains("partition") {
            self.partition = dict["partition"] as! String
        }
    }
}

public class ReindexResponseBody : Tea.TeaModel {
    public var requestId: String?

    public var result: [String: Any]?

    public override init() {
        super.init()
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
            map["requestId"] = self.requestId!
        }
        if self.result != nil {
            map["result"] = self.result!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("requestId") {
            self.requestId = dict["requestId"] as! String
        }
        if dict.keys.contains("result") {
            self.result = dict["result"] as! [String: Any]
        }
    }
}

public class ReindexResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ReindexResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = ReindexResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class RemoveClusterResponseBody : Tea.TeaModel {
    public var requestId: String?

    public var result: [String: Any]?

    public override init() {
        super.init()
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
            map["requestId"] = self.requestId!
        }
        if self.result != nil {
            map["result"] = self.result!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("requestId") {
            self.requestId = dict["requestId"] as! String
        }
        if dict.keys.contains("result") {
            self.result = dict["result"] as! [String: Any]
        }
    }
}

public class RemoveClusterResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: RemoveClusterResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = RemoveClusterResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class RenameFolderRequest : Tea.TeaModel {
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
            map["name"] = self.name!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("name") {
            self.name = dict["name"] as! String
        }
    }
}

public class RenameFolderResponseBody : Tea.TeaModel {
    public class Result : Tea.TeaModel {
        public var gmtCreate: String?

        public var gmtModified: String?

        public var id: Int64?

        public var instanceId: Int64?

        public var isDir: Int32?

        public var name: String?

        public var parent: Int64?

        public var templateId: Int64?

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
            if self.gmtCreate != nil {
                map["gmtCreate"] = self.gmtCreate!
            }
            if self.gmtModified != nil {
                map["gmtModified"] = self.gmtModified!
            }
            if self.id != nil {
                map["id"] = self.id!
            }
            if self.instanceId != nil {
                map["instanceId"] = self.instanceId!
            }
            if self.isDir != nil {
                map["isDir"] = self.isDir!
            }
            if self.name != nil {
                map["name"] = self.name!
            }
            if self.parent != nil {
                map["parent"] = self.parent!
            }
            if self.templateId != nil {
                map["templateId"] = self.templateId!
            }
            if self.type != nil {
                map["type"] = self.type!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("gmtCreate") {
                self.gmtCreate = dict["gmtCreate"] as! String
            }
            if dict.keys.contains("gmtModified") {
                self.gmtModified = dict["gmtModified"] as! String
            }
            if dict.keys.contains("id") {
                self.id = dict["id"] as! Int64
            }
            if dict.keys.contains("instanceId") {
                self.instanceId = dict["instanceId"] as! Int64
            }
            if dict.keys.contains("isDir") {
                self.isDir = dict["isDir"] as! Int32
            }
            if dict.keys.contains("name") {
                self.name = dict["name"] as! String
            }
            if dict.keys.contains("parent") {
                self.parent = dict["parent"] as! Int64
            }
            if dict.keys.contains("templateId") {
                self.templateId = dict["templateId"] as! Int64
            }
            if dict.keys.contains("type") {
                self.type = dict["type"] as! String
            }
        }
    }
    public var requestId: String?

    public var result: RenameFolderResponseBody.Result?

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
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        if self.result != nil {
            map["result"] = self.result?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("requestId") {
            self.requestId = dict["requestId"] as! String
        }
        if dict.keys.contains("result") {
            var model = RenameFolderResponseBody.Result()
            model.fromMap(dict["result"] as! [String: Any])
            self.result = model
        }
    }
}

public class RenameFolderResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: RenameFolderResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = RenameFolderResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class StartIndexResponseBody : Tea.TeaModel {
    public var requestId: String?

    public var result: [String: Any]?

    public override init() {
        super.init()
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
            map["requestId"] = self.requestId!
        }
        if self.result != nil {
            map["result"] = self.result!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("requestId") {
            self.requestId = dict["requestId"] as! String
        }
        if dict.keys.contains("result") {
            self.result = dict["result"] as! [String: Any]
        }
    }
}

public class StartIndexResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: StartIndexResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = StartIndexResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class StopIndexResponseBody : Tea.TeaModel {
    public var requestId: String?

    public var result: [String: Any]?

    public override init() {
        super.init()
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
            map["requestId"] = self.requestId!
        }
        if self.result != nil {
            map["result"] = self.result!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("requestId") {
            self.requestId = dict["requestId"] as! String
        }
        if dict.keys.contains("result") {
            self.result = dict["result"] as! [String: Any]
        }
    }
}

public class StopIndexResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: StopIndexResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = StopIndexResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class StopTaskResponseBody : Tea.TeaModel {
    public var requestId: String?

    public var result: [String: Any]?

    public override init() {
        super.init()
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
            map["requestId"] = self.requestId!
        }
        if self.result != nil {
            map["result"] = self.result!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("requestId") {
            self.requestId = dict["requestId"] as! String
        }
        if dict.keys.contains("result") {
            self.result = dict["result"] as! [String: Any]
        }
    }
}

public class StopTaskResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: StopTaskResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = StopTaskResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class TagResourcesRequest : Tea.TeaModel {
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
                map["key"] = self.key!
            }
            if self.value != nil {
                map["value"] = self.value!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("key") {
                self.key = dict["key"] as! String
            }
            if dict.keys.contains("value") {
                self.value = dict["value"] as! String
            }
        }
    }
    public var resourceId: [String]?

    public var resourceType: String?

    public var tag: [TagResourcesRequest.Tag]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.resourceId != nil {
            map["resourceId"] = self.resourceId!
        }
        if self.resourceType != nil {
            map["resourceType"] = self.resourceType!
        }
        if self.tag != nil {
            var tmp : [Any] = []
            for k in self.tag! {
                tmp.append(k.toMap())
            }
            map["tag"] = tmp
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("resourceId") {
            self.resourceId = dict["resourceId"] as! [String]
        }
        if dict.keys.contains("resourceType") {
            self.resourceType = dict["resourceType"] as! String
        }
        if dict.keys.contains("tag") {
            var tmp : [TagResourcesRequest.Tag] = []
            for v in dict["tag"] as! [Any] {
                var model = TagResourcesRequest.Tag()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.tag = tmp
        }
    }
}

public class TagResourcesResponseBody : Tea.TeaModel {
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
            map["requestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("requestId") {
            self.requestId = dict["requestId"] as! String
        }
    }
}

public class TagResourcesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: TagResourcesResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = TagResourcesResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class UntagResourcesRequest : Tea.TeaModel {
    public var all: Bool?

    public var resourceId: [String]?

    public var resourceType: String?

    public var tagKey: [String]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.all != nil {
            map["all"] = self.all!
        }
        if self.resourceId != nil {
            map["resourceId"] = self.resourceId!
        }
        if self.resourceType != nil {
            map["resourceType"] = self.resourceType!
        }
        if self.tagKey != nil {
            map["tagKey"] = self.tagKey!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("all") {
            self.all = dict["all"] as! Bool
        }
        if dict.keys.contains("resourceId") {
            self.resourceId = dict["resourceId"] as! [String]
        }
        if dict.keys.contains("resourceType") {
            self.resourceType = dict["resourceType"] as! String
        }
        if dict.keys.contains("tagKey") {
            self.tagKey = dict["tagKey"] as! [String]
        }
    }
}

public class UntagResourcesShrinkRequest : Tea.TeaModel {
    public var all: Bool?

    public var resourceIdShrink: String?

    public var resourceType: String?

    public var tagKeyShrink: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.all != nil {
            map["all"] = self.all!
        }
        if self.resourceIdShrink != nil {
            map["resourceId"] = self.resourceIdShrink!
        }
        if self.resourceType != nil {
            map["resourceType"] = self.resourceType!
        }
        if self.tagKeyShrink != nil {
            map["tagKey"] = self.tagKeyShrink!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("all") {
            self.all = dict["all"] as! Bool
        }
        if dict.keys.contains("resourceId") {
            self.resourceIdShrink = dict["resourceId"] as! String
        }
        if dict.keys.contains("resourceType") {
            self.resourceType = dict["resourceType"] as! String
        }
        if dict.keys.contains("tagKey") {
            self.tagKeyShrink = dict["tagKey"] as! String
        }
    }
}

public class UntagResourcesResponseBody : Tea.TeaModel {
    public var tequestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.tequestId != nil {
            map["tequestId"] = self.tequestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("tequestId") {
            self.tequestId = dict["tequestId"] as! String
        }
    }
}

public class UntagResourcesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UntagResourcesResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = UntagResourcesResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class UpdateInstanceRequest : Tea.TeaModel {
    public class Components : Tea.TeaModel {
        public var code: String?

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
            if self.code != nil {
                map["code"] = self.code!
            }
            if self.value != nil {
                map["value"] = self.value!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("code") {
                self.code = dict["code"] as! String
            }
            if dict.keys.contains("value") {
                self.value = dict["value"] as! String
            }
        }
    }
    public var components: [UpdateInstanceRequest.Components]?

    public var description_: String?

    public var orderType: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.components != nil {
            var tmp : [Any] = []
            for k in self.components! {
                tmp.append(k.toMap())
            }
            map["components"] = tmp
        }
        if self.description_ != nil {
            map["description"] = self.description_!
        }
        if self.orderType != nil {
            map["orderType"] = self.orderType!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("components") {
            var tmp : [UpdateInstanceRequest.Components] = []
            for v in dict["components"] as! [Any] {
                var model = UpdateInstanceRequest.Components()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.components = tmp
        }
        if dict.keys.contains("description") {
            self.description_ = dict["description"] as! String
        }
        if dict.keys.contains("orderType") {
            self.orderType = dict["orderType"] as! String
        }
    }
}

public class UpdateInstanceResponseBody : Tea.TeaModel {
    public class Result : Tea.TeaModel {
        public var chargeType: String?

        public var commodityCode: String?

        public var createTime: String?

        public var description_: String?

        public var expiredTime: String?

        public var inDebt: Bool?

        public var instanceId: String?

        public var lockMode: String?

        public var resourceGroupId: String?

        public var status: String?

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
            if self.chargeType != nil {
                map["chargeType"] = self.chargeType!
            }
            if self.commodityCode != nil {
                map["commodityCode"] = self.commodityCode!
            }
            if self.createTime != nil {
                map["createTime"] = self.createTime!
            }
            if self.description_ != nil {
                map["description"] = self.description_!
            }
            if self.expiredTime != nil {
                map["expiredTime"] = self.expiredTime!
            }
            if self.inDebt != nil {
                map["inDebt"] = self.inDebt!
            }
            if self.instanceId != nil {
                map["instanceId"] = self.instanceId!
            }
            if self.lockMode != nil {
                map["lockMode"] = self.lockMode!
            }
            if self.resourceGroupId != nil {
                map["resourceGroupId"] = self.resourceGroupId!
            }
            if self.status != nil {
                map["status"] = self.status!
            }
            if self.updateTime != nil {
                map["updateTime"] = self.updateTime!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("chargeType") {
                self.chargeType = dict["chargeType"] as! String
            }
            if dict.keys.contains("commodityCode") {
                self.commodityCode = dict["commodityCode"] as! String
            }
            if dict.keys.contains("createTime") {
                self.createTime = dict["createTime"] as! String
            }
            if dict.keys.contains("description") {
                self.description_ = dict["description"] as! String
            }
            if dict.keys.contains("expiredTime") {
                self.expiredTime = dict["expiredTime"] as! String
            }
            if dict.keys.contains("inDebt") {
                self.inDebt = dict["inDebt"] as! Bool
            }
            if dict.keys.contains("instanceId") {
                self.instanceId = dict["instanceId"] as! String
            }
            if dict.keys.contains("lockMode") {
                self.lockMode = dict["lockMode"] as! String
            }
            if dict.keys.contains("resourceGroupId") {
                self.resourceGroupId = dict["resourceGroupId"] as! String
            }
            if dict.keys.contains("status") {
                self.status = dict["status"] as! String
            }
            if dict.keys.contains("updateTime") {
                self.updateTime = dict["updateTime"] as! String
            }
        }
    }
    public var requestId: String?

    public var result: UpdateInstanceResponseBody.Result?

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
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        if self.result != nil {
            map["result"] = self.result?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("requestId") {
            self.requestId = dict["requestId"] as! String
        }
        if dict.keys.contains("result") {
            var model = UpdateInstanceResponseBody.Result()
            model.fromMap(dict["result"] as! [String: Any])
            self.result = model
        }
    }
}

public class UpdateInstanceResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpdateInstanceResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = UpdateInstanceResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class UpdateSqlInstanceContentRequest : Tea.TeaModel {
    public var content: String?

    public override init() {
        super.init()
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
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("content") {
            self.content = dict["content"] as! String
        }
    }
}

public class UpdateSqlInstanceContentResponseBody : Tea.TeaModel {
    public class Result : Tea.TeaModel {
        public var combineParams: String?

        public var comment: String?

        public var content: String?

        public var dynamicParams: String?

        public var gmtCreate: String?

        public var gmtModified: String?

        public var instanceId: Int64?

        public var kvpairs: String?

        public var relatedTemplateId: Int64?

        public var staticParams: String?

        public var templateParams: String?

        public var version: Int64?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.combineParams != nil {
                map["combineParams"] = self.combineParams!
            }
            if self.comment != nil {
                map["comment"] = self.comment!
            }
            if self.content != nil {
                map["content"] = self.content!
            }
            if self.dynamicParams != nil {
                map["dynamicParams"] = self.dynamicParams!
            }
            if self.gmtCreate != nil {
                map["gmtCreate"] = self.gmtCreate!
            }
            if self.gmtModified != nil {
                map["gmtModified"] = self.gmtModified!
            }
            if self.instanceId != nil {
                map["instanceId"] = self.instanceId!
            }
            if self.kvpairs != nil {
                map["kvpairs"] = self.kvpairs!
            }
            if self.relatedTemplateId != nil {
                map["relatedTemplateId"] = self.relatedTemplateId!
            }
            if self.staticParams != nil {
                map["staticParams"] = self.staticParams!
            }
            if self.templateParams != nil {
                map["templateParams"] = self.templateParams!
            }
            if self.version != nil {
                map["version"] = self.version!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("combineParams") {
                self.combineParams = dict["combineParams"] as! String
            }
            if dict.keys.contains("comment") {
                self.comment = dict["comment"] as! String
            }
            if dict.keys.contains("content") {
                self.content = dict["content"] as! String
            }
            if dict.keys.contains("dynamicParams") {
                self.dynamicParams = dict["dynamicParams"] as! String
            }
            if dict.keys.contains("gmtCreate") {
                self.gmtCreate = dict["gmtCreate"] as! String
            }
            if dict.keys.contains("gmtModified") {
                self.gmtModified = dict["gmtModified"] as! String
            }
            if dict.keys.contains("instanceId") {
                self.instanceId = dict["instanceId"] as! Int64
            }
            if dict.keys.contains("kvpairs") {
                self.kvpairs = dict["kvpairs"] as! String
            }
            if dict.keys.contains("relatedTemplateId") {
                self.relatedTemplateId = dict["relatedTemplateId"] as! Int64
            }
            if dict.keys.contains("staticParams") {
                self.staticParams = dict["staticParams"] as! String
            }
            if dict.keys.contains("templateParams") {
                self.templateParams = dict["templateParams"] as! String
            }
            if dict.keys.contains("version") {
                self.version = dict["version"] as! Int64
            }
        }
    }
    public var requestId: String?

    public var result: UpdateSqlInstanceContentResponseBody.Result?

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
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        if self.result != nil {
            map["result"] = self.result?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("requestId") {
            self.requestId = dict["requestId"] as! String
        }
        if dict.keys.contains("result") {
            var model = UpdateSqlInstanceContentResponseBody.Result()
            model.fromMap(dict["result"] as! [String: Any])
            self.result = model
        }
    }
}

public class UpdateSqlInstanceContentResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpdateSqlInstanceContentResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = UpdateSqlInstanceContentResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class UpdateSqlInstanceNameRequest : Tea.TeaModel {
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
            map["name"] = self.name!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("name") {
            self.name = dict["name"] as! String
        }
    }
}

public class UpdateSqlInstanceNameResponseBody : Tea.TeaModel {
    public class Result : Tea.TeaModel {
        public var gmtCreate: String?

        public var gmtModified: String?

        public var id: Int64?

        public var instanceId: Int64?

        public var isDir: Int32?

        public var name: String?

        public var parent: Int64?

        public var templateId: Int64?

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
            if self.gmtCreate != nil {
                map["gmtCreate"] = self.gmtCreate!
            }
            if self.gmtModified != nil {
                map["gmtModified"] = self.gmtModified!
            }
            if self.id != nil {
                map["id"] = self.id!
            }
            if self.instanceId != nil {
                map["instanceId"] = self.instanceId!
            }
            if self.isDir != nil {
                map["isDir"] = self.isDir!
            }
            if self.name != nil {
                map["name"] = self.name!
            }
            if self.parent != nil {
                map["parent"] = self.parent!
            }
            if self.templateId != nil {
                map["templateId"] = self.templateId!
            }
            if self.type != nil {
                map["type"] = self.type!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("gmtCreate") {
                self.gmtCreate = dict["gmtCreate"] as! String
            }
            if dict.keys.contains("gmtModified") {
                self.gmtModified = dict["gmtModified"] as! String
            }
            if dict.keys.contains("id") {
                self.id = dict["id"] as! Int64
            }
            if dict.keys.contains("instanceId") {
                self.instanceId = dict["instanceId"] as! Int64
            }
            if dict.keys.contains("isDir") {
                self.isDir = dict["isDir"] as! Int32
            }
            if dict.keys.contains("name") {
                self.name = dict["name"] as! String
            }
            if dict.keys.contains("parent") {
                self.parent = dict["parent"] as! Int64
            }
            if dict.keys.contains("templateId") {
                self.templateId = dict["templateId"] as! Int64
            }
            if dict.keys.contains("type") {
                self.type = dict["type"] as! String
            }
        }
    }
    public var requestId: String?

    public var result: UpdateSqlInstanceNameResponseBody.Result?

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
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        if self.result != nil {
            map["result"] = self.result?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("requestId") {
            self.requestId = dict["requestId"] as! String
        }
        if dict.keys.contains("result") {
            var model = UpdateSqlInstanceNameResponseBody.Result()
            model.fromMap(dict["result"] as! [String: Any])
            self.result = model
        }
    }
}

public class UpdateSqlInstanceNameResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpdateSqlInstanceNameResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = UpdateSqlInstanceNameResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class UpdateSqlInstanceParamsRequest : Tea.TeaModel {
    public var combineParam: [String: Any]?

    public var dynamicParam: [String: Any]?

    public var kvpair: [String: Any]?

    public var params: [String: Any]?

    public var staticParam: [String: Any]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.combineParam != nil {
            map["combineParam"] = self.combineParam!
        }
        if self.dynamicParam != nil {
            map["dynamicParam"] = self.dynamicParam!
        }
        if self.kvpair != nil {
            map["kvpair"] = self.kvpair!
        }
        if self.params != nil {
            map["params"] = self.params!
        }
        if self.staticParam != nil {
            map["staticParam"] = self.staticParam!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("combineParam") {
            self.combineParam = dict["combineParam"] as! [String: Any]
        }
        if dict.keys.contains("dynamicParam") {
            self.dynamicParam = dict["dynamicParam"] as! [String: Any]
        }
        if dict.keys.contains("kvpair") {
            self.kvpair = dict["kvpair"] as! [String: Any]
        }
        if dict.keys.contains("params") {
            self.params = dict["params"] as! [String: Any]
        }
        if dict.keys.contains("staticParam") {
            self.staticParam = dict["staticParam"] as! [String: Any]
        }
    }
}

public class UpdateSqlInstanceParamsResponseBody : Tea.TeaModel {
    public class Result : Tea.TeaModel {
        public var combineParams: String?

        public var comment: String?

        public var content: String?

        public var dynamicParams: String?

        public var gmtCreate: String?

        public var gmtModified: String?

        public var instanceId: Int64?

        public var kvpairs: String?

        public var relatedTemplateId: Int64?

        public var staticParams: String?

        public var templateParams: String?

        public var version: Int64?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.combineParams != nil {
                map["combineParams"] = self.combineParams!
            }
            if self.comment != nil {
                map["comment"] = self.comment!
            }
            if self.content != nil {
                map["content"] = self.content!
            }
            if self.dynamicParams != nil {
                map["dynamicParams"] = self.dynamicParams!
            }
            if self.gmtCreate != nil {
                map["gmtCreate"] = self.gmtCreate!
            }
            if self.gmtModified != nil {
                map["gmtModified"] = self.gmtModified!
            }
            if self.instanceId != nil {
                map["instanceId"] = self.instanceId!
            }
            if self.kvpairs != nil {
                map["kvpairs"] = self.kvpairs!
            }
            if self.relatedTemplateId != nil {
                map["relatedTemplateId"] = self.relatedTemplateId!
            }
            if self.staticParams != nil {
                map["staticParams"] = self.staticParams!
            }
            if self.templateParams != nil {
                map["templateParams"] = self.templateParams!
            }
            if self.version != nil {
                map["version"] = self.version!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("combineParams") {
                self.combineParams = dict["combineParams"] as! String
            }
            if dict.keys.contains("comment") {
                self.comment = dict["comment"] as! String
            }
            if dict.keys.contains("content") {
                self.content = dict["content"] as! String
            }
            if dict.keys.contains("dynamicParams") {
                self.dynamicParams = dict["dynamicParams"] as! String
            }
            if dict.keys.contains("gmtCreate") {
                self.gmtCreate = dict["gmtCreate"] as! String
            }
            if dict.keys.contains("gmtModified") {
                self.gmtModified = dict["gmtModified"] as! String
            }
            if dict.keys.contains("instanceId") {
                self.instanceId = dict["instanceId"] as! Int64
            }
            if dict.keys.contains("kvpairs") {
                self.kvpairs = dict["kvpairs"] as! String
            }
            if dict.keys.contains("relatedTemplateId") {
                self.relatedTemplateId = dict["relatedTemplateId"] as! Int64
            }
            if dict.keys.contains("staticParams") {
                self.staticParams = dict["staticParams"] as! String
            }
            if dict.keys.contains("templateParams") {
                self.templateParams = dict["templateParams"] as! String
            }
            if dict.keys.contains("version") {
                self.version = dict["version"] as! Int64
            }
        }
    }
    public var requestId: String?

    public var result: UpdateSqlInstanceParamsResponseBody.Result?

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
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        if self.result != nil {
            map["result"] = self.result?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("requestId") {
            self.requestId = dict["requestId"] as! String
        }
        if dict.keys.contains("result") {
            var model = UpdateSqlInstanceParamsResponseBody.Result()
            model.fromMap(dict["result"] as! [String: Any])
            self.result = model
        }
    }
}

public class UpdateSqlInstanceParamsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpdateSqlInstanceParamsResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = UpdateSqlInstanceParamsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}
