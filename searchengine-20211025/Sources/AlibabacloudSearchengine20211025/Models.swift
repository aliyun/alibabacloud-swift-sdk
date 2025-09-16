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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["code"] as? String {
            self.code = value
        }
        if let value = dict["message"] as? String {
            self.message = value
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["buildParallelNum"] as? Int32 {
            self.buildParallelNum = value
        }
        if let value = dict["mergeParallelNum"] as? Int32 {
            self.mergeParallelNum = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["name"] as? String {
            self.name = value
        }
        if let value = dict["signatures"] as? String {
            self.signatures = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["pauseAll"] as? Bool {
            self.pauseAll = value
        }
        if let value = dict["pauseIndex"] as? Bool {
            self.pauseIndex = value
        }
        if let value = dict["pauseIndexBatch"] as? Bool {
            self.pauseIndexBatch = value
        }
        if let value = dict["pauseBiz"] as? Bool {
            self.pauseBiz = value
        }
        if let value = dict["pauseRuntime"] as? Bool {
            self.pauseRuntime = value
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["funcClassName"] as? String {
                self.funcClassName = value
            }
            if let value = dict["template"] as? String {
                self.template = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["disableModify"] as? Bool {
            self.disableModify = value
        }
        if let value = dict["isModify"] as? Bool {
            self.isModify = value
        }
        if let value = dict["value"] as? String {
            self.value = value
        }
        if let value = dict["description"] as? String {
            self.description_ = value
        }
        if let value = dict["templateValue"] as? String {
            self.templateValue = value
        }
        if let value = dict["type"] as? String {
            self.type = value
        }
        if let value = dict["funcValue"] as? [String: Any?] {
            var model = VariablesValue.FuncValue()
            model.fromMap(value)
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

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["content"] as? String {
                    self.content = value
                }
                if let value = dict["variables"] as? [String: Any?] {
                    var tmp : [String: ConfigValueFilesConfigVariablesValue] = [:]
                    for (k, v) in value {
                        if v != nil {
                            var model = ConfigValueFilesConfigVariablesValue()
                            model.fromMap(v as? [String: Any?])
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["operateType"] as? String {
                self.operateType = value
            }
            if let value = dict["parentFullPath"] as? String {
                self.parentFullPath = value
            }
            if let value = dict["fileName"] as? String {
                self.fileName = value
            }
            if let value = dict["config"] as? [String: Any?] {
                var model = ConfigValue.Files.Config()
                model.fromMap(value)
                self.config = model
            }
            if let value = dict["dirName"] as? String {
                self.dirName = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["desc"] as? String {
            self.desc = value
        }
        if let value = dict["files"] as? [Any?] {
            var tmp : [ConfigValue.Files] = []
            for v in value {
                if v != nil {
                    var model = ConfigValue.Files()
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["pauseAll"] as? Bool {
            self.pauseAll = value
        }
        if let value = dict["pauseIndex"] as? Bool {
            self.pauseIndex = value
        }
        if let value = dict["pauseIndexBatch"] as? Bool {
            self.pauseIndexBatch = value
        }
        if let value = dict["pauseBiz"] as? Bool {
            self.pauseBiz = value
        }
        if let value = dict["pauseRuntime"] as? Bool {
            self.pauseRuntime = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["description"] as? String {
            self.description_ = value
        }
        if let value = dict["disableModify"] as? Bool {
            self.disableModify = value
        }
        if let value = dict["isModify"] as? Bool {
            self.isModify = value
        }
        if let value = dict["type"] as? String {
            self.type = value
        }
        if let value = dict["value"] as? String {
            self.value = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["description"] as? String {
            self.description_ = value
        }
        if let value = dict["disableModify"] as? Bool {
            self.disableModify = value
        }
        if let value = dict["isModify"] as? Bool {
            self.isModify = value
        }
        if let value = dict["type"] as? String {
            self.type = value
        }
        if let value = dict["value"] as? String {
            self.value = value
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

    public var path: String?

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
        if self.path != nil {
            map["path"] = self.path!
        }
        if self.tag != nil {
            map["tag"] = self.tag!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["buildMode"] as? String {
            self.buildMode = value
        }
        if let value = dict["dataSourceName"] as? String {
            self.dataSourceName = value
        }
        if let value = dict["dataSourceType"] as? String {
            self.dataSourceType = value
        }
        if let value = dict["dataTimeSec"] as? Int32 {
            self.dataTimeSec = value
        }
        if let value = dict["domain"] as? String {
            self.domain = value
        }
        if let value = dict["generation"] as? Int64 {
            self.generation = value
        }
        if let value = dict["partition"] as? String {
            self.partition = value
        }
        if let value = dict["path"] as? String {
            self.path = value
        }
        if let value = dict["tag"] as? String {
            self.tag = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
        if let value = dict["result"] as? [String: Any] {
            self.result = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = BuildIndexResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["newResourceGroupId"] as? String {
            self.newResourceGroupId = value
        }
        if let value = dict["resourceType"] as? String {
            self.resourceType = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["requestId"] as? String {
            self.requestId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = ChangeResourceGroupResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["name"] as? String {
            self.name = value
        }
        if let value = dict["targetFolderId"] as? Int64 {
            self.targetFolderId = value
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["gmtCreate"] as? String {
                self.gmtCreate = value
            }
            if let value = dict["gmtModified"] as? String {
                self.gmtModified = value
            }
            if let value = dict["id"] as? Int64 {
                self.id = value
            }
            if let value = dict["instanceId"] as? Int64 {
                self.instanceId = value
            }
            if let value = dict["isDir"] as? Int32 {
                self.isDir = value
            }
            if let value = dict["name"] as? String {
                self.name = value
            }
            if let value = dict["parent"] as? Int64 {
                self.parent = value
            }
            if let value = dict["templateId"] as? Int64 {
                self.templateId = value
            }
            if let value = dict["type"] as? String {
                self.type = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
        if let value = dict["result"] as? [String: Any?] {
            var model = CloneSqlInstanceResponseBody.Result()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = CloneSqlInstanceResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["alias"] as? String {
            self.alias = value
        }
        if let value = dict["index"] as? String {
            self.index = value
        }
        if let value = dict["newMode"] as? Bool {
            self.newMode = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
        if let value = dict["result"] as? [String: Any] {
            self.result = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = CreateAliasResponseBody()
            model.fromMap(value)
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["number"] as? Int32 {
                self.number = value
            }
            if let value = dict["partition"] as? String {
                self.partition = value
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["number"] as? Int32 {
                self.number = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["autoLoad"] as? Bool {
            self.autoLoad = value
        }
        if let value = dict["dataNode"] as? [String: Any?] {
            var model = CreateClusterRequest.DataNode()
            model.fromMap(value)
            self.dataNode = model
        }
        if let value = dict["description"] as? String {
            self.description_ = value
        }
        if let value = dict["name"] as? String {
            self.name = value
        }
        if let value = dict["queryNode"] as? [String: Any?] {
            var model = CreateClusterRequest.QueryNode()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
        if let value = dict["result"] as? [String: Any] {
            self.result = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = CreateClusterResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["dirName"] as? String {
            self.dirName = value
        }
        if let value = dict["parentFullPath"] as? String {
            self.parentFullPath = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
        if let value = dict["result"] as? [String: Any] {
            self.result = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = CreateConfigDirResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["fileName"] as? String {
            self.fileName = value
        }
        if let value = dict["ossPath"] as? String {
            self.ossPath = value
        }
        if let value = dict["parentFullPath"] as? String {
            self.parentFullPath = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
        if let value = dict["result"] as? [String: Any] {
            self.result = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = CreateConfigFileResponseBody()
            model.fromMap(value)
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["accessKey"] as? String {
                self.accessKey = value
            }
            if let value = dict["accessSecret"] as? String {
                self.accessSecret = value
            }
            if let value = dict["bucket"] as? String {
                self.bucket = value
            }
            if let value = dict["catalog"] as? String {
                self.catalog = value
            }
            if let value = dict["database"] as? String {
                self.database = value
            }
            if let value = dict["endpoint"] as? String {
                self.endpoint = value
            }
            if let value = dict["namespace"] as? String {
                self.namespace = value
            }
            if let value = dict["ossPath"] as? String {
                self.ossPath = value
            }
            if let value = dict["partition"] as? String {
                self.partition = value
            }
            if let value = dict["path"] as? String {
                self.path = value
            }
            if let value = dict["project"] as? String {
                self.project = value
            }
            if let value = dict["table"] as? String {
                self.table = value
            }
            if let value = dict["tag"] as? String {
                self.tag = value
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["namespace"] as? String {
                self.namespace = value
            }
            if let value = dict["tableName"] as? String {
                self.tableName = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["autoBuildIndex"] as? Bool {
            self.autoBuildIndex = value
        }
        if let value = dict["config"] as? [String: Any?] {
            var model = CreateDataSourceRequest.Config()
            model.fromMap(value)
            self.config = model
        }
        if let value = dict["domain"] as? String {
            self.domain = value
        }
        if let value = dict["name"] as? String {
            self.name = value
        }
        if let value = dict["saroConfig"] as? [String: Any?] {
            var model = CreateDataSourceRequest.SaroConfig()
            model.fromMap(value)
            self.saroConfig = model
        }
        if let value = dict["type"] as? String {
            self.type = value
        }
        if let value = dict["dryRun"] as? Bool {
            self.dryRun = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
        if let value = dict["result"] as? [String: Any] {
            self.result = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = CreateDataSourceResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["name"] as? String {
            self.name = value
        }
        if let value = dict["parent"] as? Int64 {
            self.parent = value
        }
        if let value = dict["type"] as? String {
            self.type = value
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["gmtCreate"] as? String {
                self.gmtCreate = value
            }
            if let value = dict["gmtModified"] as? String {
                self.gmtModified = value
            }
            if let value = dict["id"] as? Int64 {
                self.id = value
            }
            if let value = dict["instanceId"] as? Int64 {
                self.instanceId = value
            }
            if let value = dict["isDir"] as? Int32 {
                self.isDir = value
            }
            if let value = dict["name"] as? String {
                self.name = value
            }
            if let value = dict["parent"] as? Int64 {
                self.parent = value
            }
            if let value = dict["templateId"] as? Int64 {
                self.templateId = value
            }
            if let value = dict["type"] as? String {
                self.type = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
        if let value = dict["result"] as? [String: Any?] {
            var model = CreateFolderResponseBody.Result()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = CreateFolderResponseBody()
            model.fromMap(value)
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

            public var tableFormat: String?

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
                if self.tableFormat != nil {
                    map["tableFormat"] = self.tableFormat!
                }
                if self.tag != nil {
                    map["tag"] = self.tag!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["accessKey"] as? String {
                    self.accessKey = value
                }
                if let value = dict["accessSecret"] as? String {
                    self.accessSecret = value
                }
                if let value = dict["bucket"] as? String {
                    self.bucket = value
                }
                if let value = dict["catalog"] as? String {
                    self.catalog = value
                }
                if let value = dict["database"] as? String {
                    self.database = value
                }
                if let value = dict["endpoint"] as? String {
                    self.endpoint = value
                }
                if let value = dict["format"] as? String {
                    self.format = value
                }
                if let value = dict["namespace"] as? String {
                    self.namespace = value
                }
                if let value = dict["ossPath"] as? String {
                    self.ossPath = value
                }
                if let value = dict["partition"] as? String {
                    self.partition = value
                }
                if let value = dict["path"] as? String {
                    self.path = value
                }
                if let value = dict["project"] as? String {
                    self.project = value
                }
                if let value = dict["table"] as? String {
                    self.table = value
                }
                if let value = dict["tableFormat"] as? String {
                    self.tableFormat = value
                }
                if let value = dict["tag"] as? String {
                    self.tag = value
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

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["namespace"] as? String {
                    self.namespace = value
                }
                if let value = dict["tableName"] as? String {
                    self.tableName = value
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

        public var scene: String?

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
            if self.scene != nil {
                map["scene"] = self.scene!
            }
            if self.type != nil {
                map["type"] = self.type!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["autoBuildIndex"] as? Bool {
                self.autoBuildIndex = value
            }
            if let value = dict["config"] as? [String: Any?] {
                var model = CreateIndexRequest.DataSourceInfo.Config()
                model.fromMap(value)
                self.config = model
            }
            if let value = dict["dataTimeSec"] as? Int32 {
                self.dataTimeSec = value
            }
            if let value = dict["domain"] as? String {
                self.domain = value
            }
            if let value = dict["name"] as? String {
                self.name = value
            }
            if let value = dict["processParallelNum"] as? Int32 {
                self.processParallelNum = value
            }
            if let value = dict["processPartitionCount"] as? Int32 {
                self.processPartitionCount = value
            }
            if let value = dict["saroConfig"] as? [String: Any?] {
                var model = CreateIndexRequest.DataSourceInfo.SaroConfig()
                model.fromMap(value)
                self.saroConfig = model
            }
            if let value = dict["scene"] as? String {
                self.scene = value
            }
            if let value = dict["type"] as? String {
                self.type = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["buildParallelNum"] as? Int32 {
            self.buildParallelNum = value
        }
        if let value = dict["content"] as? String {
            self.content = value
        }
        if let value = dict["dataSource"] as? String {
            self.dataSource = value
        }
        if let value = dict["dataSourceInfo"] as? [String: Any?] {
            var model = CreateIndexRequest.DataSourceInfo()
            model.fromMap(value)
            self.dataSourceInfo = model
        }
        if let value = dict["domain"] as? String {
            self.domain = value
        }
        if let value = dict["extend"] as? [String: Any] {
            self.extend = value
        }
        if let value = dict["mergeParallelNum"] as? Int32 {
            self.mergeParallelNum = value
        }
        if let value = dict["name"] as? String {
            self.name = value
        }
        if let value = dict["partition"] as? Int32 {
            self.partition = value
        }
        if let value = dict["dryRun"] as? Bool {
            self.dryRun = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
        if let value = dict["result"] as? [String: Any] {
            self.result = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = CreateIndexResponseBody()
            model.fromMap(value)
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["code"] as? String {
                self.code = value
            }
            if let value = dict["value"] as? String {
                self.value = value
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["autoRenew"] as? Bool {
                self.autoRenew = value
            }
            if let value = dict["duration"] as? Int64 {
                self.duration = value
            }
            if let value = dict["pricingCycle"] as? String {
                self.pricingCycle = value
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["key"] as? String {
                self.key = value
            }
            if let value = dict["value"] as? String {
                self.value = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["chargeType"] as? String {
            self.chargeType = value
        }
        if let value = dict["components"] as? [Any?] {
            var tmp : [CreateInstanceRequest.Components] = []
            for v in value {
                if v != nil {
                    var model = CreateInstanceRequest.Components()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.components = tmp
        }
        if let value = dict["order"] as? [String: Any?] {
            var model = CreateInstanceRequest.Order()
            model.fromMap(value)
            self.order = model
        }
        if let value = dict["resourceGroupId"] as? String {
            self.resourceGroupId = value
        }
        if let value = dict["tags"] as? [Any?] {
            var tmp : [CreateInstanceRequest.Tags] = []
            for v in value {
                if v != nil {
                    var model = CreateInstanceRequest.Tags()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["instanceId"] as? String {
                self.instanceId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
        if let value = dict["result"] as? [String: Any?] {
            var model = CreateInstanceResponseBody.Result()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = CreateInstanceResponseBody()
            model.fromMap(value)
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

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["Authorization"] as? String {
                        self.authorization = value
                    }
                    if let value = dict["Content-Type"] as? String {
                        self.contentType = value
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

                    public override func fromMap(_ dict: [String: Any?]?) -> Void {
                        guard let dict else { return }
                        if let value = dict["input_type"] as? String {
                            self.inputType = value
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

                    public override func fromMap(_ dict: [String: Any?]?) -> Void {
                        guard let dict else { return }
                        if let value = dict["input_type"] as? String {
                            self.inputType = value
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

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["build"] as? [String: Any?] {
                        var model = CreateModelRequest.Content.Request.Parameters.Build()
                        model.fromMap(value)
                        self.build = model
                    }
                    if let value = dict["search"] as? [String: Any?] {
                        var model = CreateModelRequest.Content.Request.Parameters.Search()
                        model.fromMap(value)
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

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["build"] as? [String: Any] {
                        self.build = value
                    }
                    if let value = dict["search"] as? [String: Any] {
                        self.search = value
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

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["header"] as? [String: Any?] {
                    var model = CreateModelRequest.Content.Request.Header()
                    model.fromMap(value)
                    self.header = model
                }
                if let value = dict["parameters"] as? [String: Any?] {
                    var model = CreateModelRequest.Content.Request.Parameters()
                    model.fromMap(value)
                    self.parameters = model
                }
                if let value = dict["requestBody"] as? String {
                    self.requestBody = value
                }
                if let value = dict["urlParams"] as? [String: Any?] {
                    var model = CreateModelRequest.Content.Request.UrlParams()
                    model.fromMap(value)
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

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["embeddings"] as? String {
                    self.embeddings = value
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["dimension"] as? Int32 {
                self.dimension = value
            }
            if let value = dict["method"] as? String {
                self.method = value
            }
            if let value = dict["modelType"] as? String {
                self.modelType = value
            }
            if let value = dict["request"] as? [String: Any?] {
                var model = CreateModelRequest.Content.Request()
                model.fromMap(value)
                self.request = model
            }
            if let value = dict["response"] as? [String: Any?] {
                var model = CreateModelRequest.Content.Response()
                model.fromMap(value)
                self.response = model
            }
            if let value = dict["url"] as? String {
                self.url = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["content"] as? [String: Any?] {
            var model = CreateModelRequest.Content()
            model.fromMap(value)
            self.content = model
        }
        if let value = dict["name"] as? String {
            self.name = value
        }
        if let value = dict["dryRun"] as? String {
            self.dryRun = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["requestId"] as? String {
            self.requestId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = CreateModelResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
        if let value = dict["result"] as? [String: Any] {
            self.result = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = CreatePublicUrlResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["name"] as? String {
            self.name = value
        }
        if let value = dict["parent"] as? Int64 {
            self.parent = value
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["gmtCreate"] as? String {
                self.gmtCreate = value
            }
            if let value = dict["gmtModified"] as? String {
                self.gmtModified = value
            }
            if let value = dict["id"] as? Int64 {
                self.id = value
            }
            if let value = dict["instanceId"] as? Int64 {
                self.instanceId = value
            }
            if let value = dict["isDir"] as? Int32 {
                self.isDir = value
            }
            if let value = dict["name"] as? String {
                self.name = value
            }
            if let value = dict["parent"] as? Int64 {
                self.parent = value
            }
            if let value = dict["templateId"] as? Int64 {
                self.templateId = value
            }
            if let value = dict["type"] as? String {
                self.type = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
        if let value = dict["result"] as? [String: Any?] {
            var model = CreateSqlInstanceResponseBody.Result()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = CreateSqlInstanceResponseBody()
            model.fromMap(value)
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

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["ossBucket"] as? String {
                        self.ossBucket = value
                    }
                    if let value = dict["ossEndpoint"] as? String {
                        self.ossEndpoint = value
                    }
                    if let value = dict["uid"] as? String {
                        self.uid = value
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

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["srcFieldConfig"] as? [String: Any?] {
                    var model = CreateTableRequest.DataProcessConfig.Params.SrcFieldConfig()
                    model.fromMap(value)
                    self.srcFieldConfig = model
                }
                if let value = dict["vectorModal"] as? String {
                    self.vectorModal = value
                }
                if let value = dict["vectorModel"] as? String {
                    self.vectorModel = value
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["dstField"] as? String {
                self.dstField = value
            }
            if let value = dict["operator"] as? String {
                self.operator_ = value
            }
            if let value = dict["params"] as? [String: Any?] {
                var model = CreateTableRequest.DataProcessConfig.Params()
                model.fromMap(value)
                self.params = model
            }
            if let value = dict["srcField"] as? String {
                self.srcField = value
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

            public var tableFormat: String?

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
                if self.tableFormat != nil {
                    map["tableFormat"] = self.tableFormat!
                }
                if self.tag != nil {
                    map["tag"] = self.tag!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["accessKey"] as? String {
                    self.accessKey = value
                }
                if let value = dict["accessSecret"] as? String {
                    self.accessSecret = value
                }
                if let value = dict["bucket"] as? String {
                    self.bucket = value
                }
                if let value = dict["catalog"] as? String {
                    self.catalog = value
                }
                if let value = dict["database"] as? String {
                    self.database = value
                }
                if let value = dict["endpoint"] as? String {
                    self.endpoint = value
                }
                if let value = dict["ossPath"] as? String {
                    self.ossPath = value
                }
                if let value = dict["partition"] as? String {
                    self.partition = value
                }
                if let value = dict["project"] as? String {
                    self.project = value
                }
                if let value = dict["table"] as? String {
                    self.table = value
                }
                if let value = dict["tableFormat"] as? String {
                    self.tableFormat = value
                }
                if let value = dict["tag"] as? String {
                    self.tag = value
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["autoBuildIndex"] as? Bool {
                self.autoBuildIndex = value
            }
            if let value = dict["config"] as? [String: Any?] {
                var model = CreateTableRequest.DataSource.Config()
                model.fromMap(value)
                self.config = model
            }
            if let value = dict["dataTimeSec"] as? Int32 {
                self.dataTimeSec = value
            }
            if let value = dict["type"] as? String {
                self.type = value
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

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["buildIndexParams"] as? String {
                    self.buildIndexParams = value
                }
                if let value = dict["linearBuildThreshold"] as? String {
                    self.linearBuildThreshold = value
                }
                if let value = dict["minScanDocCnt"] as? String {
                    self.minScanDocCnt = value
                }
                if let value = dict["searchIndexParams"] as? String {
                    self.searchIndexParams = value
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["advanceParams"] as? [String: Any?] {
                var model = CreateTableRequest.VectorIndex.AdvanceParams()
                model.fromMap(value)
                self.advanceParams = model
            }
            if let value = dict["dimension"] as? String {
                self.dimension = value
            }
            if let value = dict["distanceType"] as? String {
                self.distanceType = value
            }
            if let value = dict["indexName"] as? String {
                self.indexName = value
            }
            if let value = dict["namespace"] as? String {
                self.namespace = value
            }
            if let value = dict["sparseIndexField"] as? String {
                self.sparseIndexField = value
            }
            if let value = dict["sparseValueField"] as? String {
                self.sparseValueField = value
            }
            if let value = dict["vectorField"] as? String {
                self.vectorField = value
            }
            if let value = dict["vectorIndexType"] as? String {
                self.vectorIndexType = value
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

    public var scene: String?

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
        if self.scene != nil {
            map["scene"] = self.scene!
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["dataProcessConfig"] as? [Any?] {
            var tmp : [CreateTableRequest.DataProcessConfig] = []
            for v in value {
                if v != nil {
                    var model = CreateTableRequest.DataProcessConfig()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.dataProcessConfig = tmp
        }
        if let value = dict["dataProcessorCount"] as? Int32 {
            self.dataProcessorCount = value
        }
        if let value = dict["dataSource"] as? [String: Any?] {
            var model = CreateTableRequest.DataSource()
            model.fromMap(value)
            self.dataSource = model
        }
        if let value = dict["fieldSchema"] as? [String: String] {
            self.fieldSchema = value
        }
        if let value = dict["name"] as? String {
            self.name = value
        }
        if let value = dict["partitionCount"] as? Int32 {
            self.partitionCount = value
        }
        if let value = dict["primaryKey"] as? String {
            self.primaryKey = value
        }
        if let value = dict["rawSchema"] as? String {
            self.rawSchema = value
        }
        if let value = dict["scene"] as? String {
            self.scene = value
        }
        if let value = dict["vectorIndex"] as? [Any?] {
            var tmp : [CreateTableRequest.VectorIndex] = []
            for v in value {
                if v != nil {
                    var model = CreateTableRequest.VectorIndex()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.vectorIndex = tmp
        }
        if let value = dict["dryRun"] as? Bool {
            self.dryRun = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
        if let value = dict["result"] as? [String: Any] {
            self.result = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = CreateTableResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["input"] as? String {
            self.input = value
        }
        if let value = dict["isOnline"] as? String {
            self.isOnline = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["requestId"] as? String {
            self.requestId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = DebugModelResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
        if let value = dict["result"] as? [String: Any] {
            self.result = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = DeleteAdvanceConfigResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
        if let value = dict["result"] as? [String: Any] {
            self.result = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = DeleteAliasResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["dirName"] as? String {
            self.dirName = value
        }
        if let value = dict["parentFullPath"] as? String {
            self.parentFullPath = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
        if let value = dict["result"] as? [String: Any] {
            self.result = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = DeleteConfigDirResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["fileName"] as? String {
            self.fileName = value
        }
        if let value = dict["parentFullPath"] as? String {
            self.parentFullPath = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
        if let value = dict["result"] as? [String: Any] {
            self.result = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = DeleteConfigFileResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
        if let value = dict["result"] as? [String: Any] {
            self.result = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = DeleteDataSourceResponseBody()
            model.fromMap(value)
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["requestId"] as? String {
                self.requestId = value
            }
            if let value = dict["result"] as? [String: String] {
                self.result = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
        if let value = dict["result"] as? [String: Any?] {
            var model = DeleteFolderResponseBody.Result()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = DeleteFolderResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["dataSource"] as? String {
            self.dataSource = value
        }
        if let value = dict["deleteDataSource"] as? Bool {
            self.deleteDataSource = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
        if let value = dict["result"] as? [String: Any] {
            self.result = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = DeleteIndexResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
        if let value = dict["result"] as? [String: Any] {
            self.result = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = DeleteIndexVersionResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
        if let value = dict["result"] as? [String: Any] {
            self.result = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = DeleteInstanceResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["requestId"] as? String {
            self.requestId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = DeleteModelResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
        if let value = dict["result"] as? [String: Any] {
            self.result = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = DeletePublicUrlResponseBody()
            model.fromMap(value)
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["requestId"] as? String {
                self.requestId = value
            }
            if let value = dict["result"] as? [String: String] {
                self.result = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
        if let value = dict["result"] as? [String: Any?] {
            var model = DeleteSqlInstanceResponseBody.Result()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = DeleteSqlInstanceResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
        if let value = dict["result"] as? [String: Any] {
            self.result = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = DeleteTableResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["acceptLanguage"] as? String {
            self.acceptLanguage = value
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["endpoint"] as? String {
                self.endpoint = value
            }
            if let value = dict["localName"] as? String {
                self.localName = value
            }
            if let value = dict["regionId"] as? String {
                self.regionId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
        if let value = dict["result"] as? [Any?] {
            var tmp : [DescribeRegionsResponseBody.Result] = []
            for v in value {
                if v != nil {
                    var model = DescribeRegionsResponseBody.Result()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = DescribeRegionsResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["combineParam"] as? [String: Any] {
            self.combineParam = value
        }
        if let value = dict["content"] as? String {
            self.content = value
        }
        if let value = dict["domain"] as? String {
            self.domain = value
        }
        if let value = dict["dynamicParam"] as? [String: Any] {
            self.dynamicParam = value
        }
        if let value = dict["kvpair"] as? [String: Any] {
            self.kvpair = value
        }
        if let value = dict["params"] as? [String: Any] {
            self.params = value
        }
        if let value = dict["staticParam"] as? [String: Any] {
            self.staticParam = value
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["gmtCreate"] as? String {
                self.gmtCreate = value
            }
            if let value = dict["gmtModified"] as? String {
                self.gmtModified = value
            }
            if let value = dict["id"] as? Int64 {
                self.id = value
            }
            if let value = dict["instanceId"] as? Int64 {
                self.instanceId = value
            }
            if let value = dict["isDir"] as? Int32 {
                self.isDir = value
            }
            if let value = dict["name"] as? String {
                self.name = value
            }
            if let value = dict["parent"] as? Int64 {
                self.parent = value
            }
            if let value = dict["templateId"] as? Int64 {
                self.templateId = value
            }
            if let value = dict["type"] as? String {
                self.type = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
        if let value = dict["result"] as? [String: Any?] {
            var model = ExecuteSqlInstanceResponseBody.Result()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = ExecuteSqlInstanceResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
        if let value = dict["result"] as? [String: Any] {
            self.result = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = ForceSwitchResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["type"] as? String {
            self.type = value
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

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["fullPathName"] as? String {
                    self.fullPathName = value
                }
                if let value = dict["isDir"] as? Bool {
                    self.isDir = value
                }
                if let value = dict["isTemplate"] as? Bool {
                    self.isTemplate = value
                }
                if let value = dict["name"] as? String {
                    self.name = value
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["content"] as? String {
                self.content = value
            }
            if let value = dict["contentType"] as? String {
                self.contentType = value
            }
            if let value = dict["desc"] as? String {
                self.desc = value
            }
            if let value = dict["files"] as? [Any?] {
                var tmp : [GetAdvanceConfigResponseBody.Result.Files] = []
                for v in value {
                    if v != nil {
                        var model = GetAdvanceConfigResponseBody.Result.Files()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.files = tmp
            }
            if let value = dict["name"] as? String {
                self.name = value
            }
            if let value = dict["status"] as? String {
                self.status = value
            }
            if let value = dict["updateTime"] as? Int64 {
                self.updateTime = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
        if let value = dict["result"] as? [String: Any?] {
            var model = GetAdvanceConfigResponseBody.Result()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = GetAdvanceConfigResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["fileName"] as? String {
            self.fileName = value
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["content"] as? String {
                self.content = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
        if let value = dict["result"] as? [String: Any?] {
            var model = GetAdvanceConfigFileResponseBody.Result()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = GetAdvanceConfigFileResponseBody()
            model.fromMap(value)
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

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["name"] as? String {
                    self.name = value
                }
                if let value = dict["number"] as? Int32 {
                    self.number = value
                }
                if let value = dict["partition"] as? Int32 {
                    self.partition = value
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

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["name"] as? String {
                    self.name = value
                }
                if let value = dict["number"] as? Int32 {
                    self.number = value
                }
                if let value = dict["partition"] as? Int32 {
                    self.partition = value
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["config"] as? [String: [String: Any]] {
                self.config = value
            }
            if let value = dict["configUpdateTime"] as? String {
                self.configUpdateTime = value
            }
            if let value = dict["createTime"] as? String {
                self.createTime = value
            }
            if let value = dict["currentAdvanceConfigVersion"] as? String {
                self.currentAdvanceConfigVersion = value
            }
            if let value = dict["currentOnlineConfigVersion"] as? String {
                self.currentOnlineConfigVersion = value
            }
            if let value = dict["dataNode"] as? [String: Any?] {
                var model = GetClusterResponseBody.Result.DataNode()
                model.fromMap(value)
                self.dataNode = model
            }
            if let value = dict["description"] as? String {
                self.description_ = value
            }
            if let value = dict["latestAdvanceConfigVersion"] as? String {
                self.latestAdvanceConfigVersion = value
            }
            if let value = dict["latestOnlineConfigVersion"] as? String {
                self.latestOnlineConfigVersion = value
            }
            if let value = dict["name"] as? String {
                self.name = value
            }
            if let value = dict["queryNode"] as? [String: Any?] {
                var model = GetClusterResponseBody.Result.QueryNode()
                model.fromMap(value)
                self.queryNode = model
            }
            if let value = dict["status"] as? String {
                self.status = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
        if let value = dict["result"] as? [String: Any?] {
            var model = GetClusterResponseBody.Result()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = GetClusterResponseBody()
            model.fromMap(value)
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

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["configUpdateTime"] as? String {
                        self.configUpdateTime = value
                    }
                    if let value = dict["donePercent"] as? Int32 {
                        self.donePercent = value
                    }
                    if let value = dict["doneSize"] as? Int32 {
                        self.doneSize = value
                    }
                    if let value = dict["name"] as? String {
                        self.name = value
                    }
                    if let value = dict["totalSize"] as? Int32 {
                        self.totalSize = value
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

                    public override func fromMap(_ dict: [String: Any?]?) -> Void {
                        guard let dict else { return }
                        if let value = dict["configMetaName"] as? String {
                            self.configMetaName = value
                        }
                        if let value = dict["version"] as? Int64 {
                            self.version = value
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

                    public override func fromMap(_ dict: [String: Any?]?) -> Void {
                        guard let dict else { return }
                        if let value = dict["configMetaName"] as? String {
                            self.configMetaName = value
                        }
                        if let value = dict["version"] as? Int64 {
                            self.version = value
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

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["advanceConfigInfo"] as? [String: Any?] {
                        var model = GetClusterRunTimeInfoResponseBody.Result.DataNodes.DataStatusList.AdvanceConfigInfo()
                        model.fromMap(value)
                        self.advanceConfigInfo = model
                    }
                    if let value = dict["deployFailedWorker"] as? [String] {
                        self.deployFailedWorker = value
                    }
                    if let value = dict["docSize"] as? Int32 {
                        self.docSize = value
                    }
                    if let value = dict["donePercent"] as? Int32 {
                        self.donePercent = value
                    }
                    if let value = dict["doneSize"] as? Int32 {
                        self.doneSize = value
                    }
                    if let value = dict["errorMsg"] as? String {
                        self.errorMsg = value
                    }
                    if let value = dict["fullUpdateTime"] as? String {
                        self.fullUpdateTime = value
                    }
                    if let value = dict["fullVersion"] as? Int64 {
                        self.fullVersion = value
                    }
                    if let value = dict["incUpdateTime"] as? String {
                        self.incUpdateTime = value
                    }
                    if let value = dict["incVersion"] as? Int64 {
                        self.incVersion = value
                    }
                    if let value = dict["indexConfigInfo"] as? [String: Any?] {
                        var model = GetClusterRunTimeInfoResponseBody.Result.DataNodes.DataStatusList.IndexConfigInfo()
                        model.fromMap(value)
                        self.indexConfigInfo = model
                    }
                    if let value = dict["indexSize"] as? Int64 {
                        self.indexSize = value
                    }
                    if let value = dict["lackDiskWorker"] as? [String] {
                        self.lackDiskWorker = value
                    }
                    if let value = dict["lackMemWorker"] as? [String] {
                        self.lackMemWorker = value
                    }
                    if let value = dict["name"] as? String {
                        self.name = value
                    }
                    if let value = dict["totalSize"] as? Int32 {
                        self.totalSize = value
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

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["donePercent"] as? Int32 {
                        self.donePercent = value
                    }
                    if let value = dict["doneSize"] as? Int32 {
                        self.doneSize = value
                    }
                    if let value = dict["name"] as? String {
                        self.name = value
                    }
                    if let value = dict["totalSize"] as? Int32 {
                        self.totalSize = value
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

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["configStatusList"] as? [Any?] {
                    var tmp : [GetClusterRunTimeInfoResponseBody.Result.DataNodes.ConfigStatusList] = []
                    for v in value {
                        if v != nil {
                            var model = GetClusterRunTimeInfoResponseBody.Result.DataNodes.ConfigStatusList()
                            if v != nil {
                                model.fromMap(v as? [String: Any?])
                            }
                            tmp.append(model)
                        }
                    }
                    self.configStatusList = tmp
                }
                if let value = dict["dataStatusList"] as? [Any?] {
                    var tmp : [GetClusterRunTimeInfoResponseBody.Result.DataNodes.DataStatusList] = []
                    for v in value {
                        if v != nil {
                            var model = GetClusterRunTimeInfoResponseBody.Result.DataNodes.DataStatusList()
                            if v != nil {
                                model.fromMap(v as? [String: Any?])
                            }
                            tmp.append(model)
                        }
                    }
                    self.dataStatusList = tmp
                }
                if let value = dict["serviceStatus"] as? [String: Any?] {
                    var model = GetClusterRunTimeInfoResponseBody.Result.DataNodes.ServiceStatus()
                    model.fromMap(value)
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

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["configUpdateTime"] as? String {
                        self.configUpdateTime = value
                    }
                    if let value = dict["donePercent"] as? Int32 {
                        self.donePercent = value
                    }
                    if let value = dict["doneSize"] as? Int32 {
                        self.doneSize = value
                    }
                    if let value = dict["name"] as? String {
                        self.name = value
                    }
                    if let value = dict["totalSize"] as? Int32 {
                        self.totalSize = value
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

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["donePercent"] as? Int32 {
                        self.donePercent = value
                    }
                    if let value = dict["doneSize"] as? Int32 {
                        self.doneSize = value
                    }
                    if let value = dict["name"] as? String {
                        self.name = value
                    }
                    if let value = dict["totalSize"] as? Int32 {
                        self.totalSize = value
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

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["configStatusList"] as? [Any?] {
                    var tmp : [GetClusterRunTimeInfoResponseBody.Result.QueryNode.ConfigStatusList] = []
                    for v in value {
                        if v != nil {
                            var model = GetClusterRunTimeInfoResponseBody.Result.QueryNode.ConfigStatusList()
                            if v != nil {
                                model.fromMap(v as? [String: Any?])
                            }
                            tmp.append(model)
                        }
                    }
                    self.configStatusList = tmp
                }
                if let value = dict["serviceStatus"] as? [String: Any?] {
                    var model = GetClusterRunTimeInfoResponseBody.Result.QueryNode.ServiceStatus()
                    model.fromMap(value)
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["clusterName"] as? String {
                self.clusterName = value
            }
            if let value = dict["dataNodes"] as? [Any?] {
                var tmp : [GetClusterRunTimeInfoResponseBody.Result.DataNodes] = []
                for v in value {
                    if v != nil {
                        var model = GetClusterRunTimeInfoResponseBody.Result.DataNodes()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.dataNodes = tmp
            }
            if let value = dict["queryNode"] as? [String: Any?] {
                var model = GetClusterRunTimeInfoResponseBody.Result.QueryNode()
                model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
        if let value = dict["result"] as? [Any?] {
            var tmp : [GetClusterRunTimeInfoResponseBody.Result] = []
            for v in value {
                if v != nil {
                    var model = GetClusterRunTimeInfoResponseBody.Result()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = GetClusterRunTimeInfoResponseBody()
            model.fromMap(value)
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["domain"] as? String {
                self.domain = value
            }
            if let value = dict["indexes"] as? [String] {
                self.indexes = value
            }
            if let value = dict["lastFulTime"] as? Int64 {
                self.lastFulTime = value
            }
            if let value = dict["name"] as? String {
                self.name = value
            }
            if let value = dict["status"] as? String {
                self.status = value
            }
            if let value = dict["type"] as? String {
                self.type = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
        if let value = dict["result"] as? [String: Any?] {
            var model = GetDataSourceResponseBody.Result()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = GetDataSourceResponseBody()
            model.fromMap(value)
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

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["path"] as? String {
                        self.path = value
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

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["partitions"] as? [String: String] {
                        self.partitions = value
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

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["path"] as? String {
                        self.path = value
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

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["path"] as? String {
                        self.path = value
                    }
                    if let value = dict["version"] as? String {
                        self.version = value
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

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["hdfs"] as? [String: Any?] {
                    var model = GetDataSourceDeployResponseBody.Result.Extend.Hdfs()
                    model.fromMap(value)
                    self.hdfs = model
                }
                if let value = dict["odps"] as? [String: Any?] {
                    var model = GetDataSourceDeployResponseBody.Result.Extend.Odps()
                    model.fromMap(value)
                    self.odps = model
                }
                if let value = dict["oss"] as? [String: Any?] {
                    var model = GetDataSourceDeployResponseBody.Result.Extend.Oss()
                    model.fromMap(value)
                    self.oss = model
                }
                if let value = dict["saro"] as? [String: Any?] {
                    var model = GetDataSourceDeployResponseBody.Result.Extend.Saro()
                    model.fromMap(value)
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

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["args"] as? String {
                    self.args = value
                }
                if let value = dict["resource"] as? String {
                    self.resource = value
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

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["accessKey"] as? String {
                    self.accessKey = value
                }
                if let value = dict["accessSecret"] as? String {
                    self.accessSecret = value
                }
                if let value = dict["bucket"] as? String {
                    self.bucket = value
                }
                if let value = dict["catalog"] as? String {
                    self.catalog = value
                }
                if let value = dict["database"] as? String {
                    self.database = value
                }
                if let value = dict["endpoint"] as? String {
                    self.endpoint = value
                }
                if let value = dict["namespace"] as? String {
                    self.namespace = value
                }
                if let value = dict["ossPath"] as? String {
                    self.ossPath = value
                }
                if let value = dict["partition"] as? String {
                    self.partition = value
                }
                if let value = dict["path"] as? String {
                    self.path = value
                }
                if let value = dict["project"] as? String {
                    self.project = value
                }
                if let value = dict["table"] as? String {
                    self.table = value
                }
                if let value = dict["tag"] as? String {
                    self.tag = value
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

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["topic"] as? String {
                    self.topic = value
                }
                if let value = dict["zk"] as? String {
                    self.zk = value
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["autoBuildIndex"] as? Bool {
                self.autoBuildIndex = value
            }
            if let value = dict["extend"] as? [String: Any?] {
                var model = GetDataSourceDeployResponseBody.Result.Extend()
                model.fromMap(value)
                self.extend = model
            }
            if let value = dict["processor"] as? [String: Any?] {
                var model = GetDataSourceDeployResponseBody.Result.Processor()
                model.fromMap(value)
                self.processor = model
            }
            if let value = dict["storage"] as? [String: Any?] {
                var model = GetDataSourceDeployResponseBody.Result.Storage()
                model.fromMap(value)
                self.storage = model
            }
            if let value = dict["swift"] as? [String: Any?] {
                var model = GetDataSourceDeployResponseBody.Result.Swift()
                model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
        if let value = dict["result"] as? [String: Any?] {
            var model = GetDataSourceDeployResponseBody.Result()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = GetDataSourceDeployResponseBody()
            model.fromMap(value)
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["fieldName"] as? String {
                self.fieldName = value
            }
            if let value = dict["fieldType"] as? String {
                self.fieldType = value
            }
            if let value = dict["fieldTypeDetail"] as? [String: Any] {
                self.fieldTypeDetail = value
            }
            if let value = dict["indexName"] as? String {
                self.indexName = value
            }
            if let value = dict["indexType"] as? String {
                self.indexType = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
        if let value = dict["result"] as? [Any?] {
            var tmp : [GetDatabaseSchemaResponseBody.Result] = []
            for v in value {
                if v != nil {
                    var model = GetDatabaseSchemaResponseBody.Result()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = GetDatabaseSchemaResponseBody()
            model.fromMap(value)
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

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["domainName"] as? String {
                        self.domainName = value
                    }
                    if let value = dict["name"] as? String {
                        self.name = value
                    }
                    if let value = dict["tableDeployId"] as? Int64 {
                        self.tableDeployId = value
                    }
                    if let value = dict["tableName"] as? String {
                        self.tableName = value
                    }
                    if let value = dict["tag"] as? String {
                        self.tag = value
                    }
                    if let value = dict["zoneName"] as? String {
                        self.zoneName = value
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

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["domainName"] as? String {
                        self.domainName = value
                    }
                    if let value = dict["hippoId"] as? String {
                        self.hippoId = value
                    }
                    if let value = dict["id"] as? Int64 {
                        self.id = value
                    }
                    if let value = dict["name"] as? String {
                        self.name = value
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

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["buildDeployId"] as? Int64 {
                        self.buildDeployId = value
                    }
                    if let value = dict["domainName"] as? String {
                        self.domainName = value
                    }
                    if let value = dict["name"] as? String {
                        self.name = value
                    }
                    if let value = dict["tableDeployId"] as? Int64 {
                        self.tableDeployId = value
                    }
                    if let value = dict["tag"] as? String {
                        self.tag = value
                    }
                    if let value = dict["type"] as? String {
                        self.type = value
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

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["domainInfo"] as? String {
                        self.domainInfo = value
                    }
                    if let value = dict["name"] as? String {
                        self.name = value
                    }
                    if let value = dict["suezAdminName"] as? String {
                        self.suezAdminName = value
                    }
                    if let value = dict["tag"] as? String {
                        self.tag = value
                    }
                    if let value = dict["type"] as? String {
                        self.type = value
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

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["indexMetas"] as? [Any?] {
                    var tmp : [GetDeployGraphResponseBody.Result.Graph.IndexMetas] = []
                    for v in value {
                        if v != nil {
                            var model = GetDeployGraphResponseBody.Result.Graph.IndexMetas()
                            if v != nil {
                                model.fromMap(v as? [String: Any?])
                            }
                            tmp.append(model)
                        }
                    }
                    self.indexMetas = tmp
                }
                if let value = dict["onlineMaster"] as? [Any?] {
                    var tmp : [GetDeployGraphResponseBody.Result.Graph.OnlineMaster] = []
                    for v in value {
                        if v != nil {
                            var model = GetDeployGraphResponseBody.Result.Graph.OnlineMaster()
                            if v != nil {
                                model.fromMap(v as? [String: Any?])
                            }
                            tmp.append(model)
                        }
                    }
                    self.onlineMaster = tmp
                }
                if let value = dict["tableIndexRelation"] as? [String: [String]] {
                    self.tableIndexRelation = value
                }
                if let value = dict["tableMetas"] as? [Any?] {
                    var tmp : [GetDeployGraphResponseBody.Result.Graph.TableMetas] = []
                    for v in value {
                        if v != nil {
                            var model = GetDeployGraphResponseBody.Result.Graph.TableMetas()
                            if v != nil {
                                model.fromMap(v as? [String: Any?])
                            }
                            tmp.append(model)
                        }
                    }
                    self.tableMetas = tmp
                }
                if let value = dict["zoneIndexRelation"] as? [String: [String]] {
                    self.zoneIndexRelation = value
                }
                if let value = dict["zoneMetas"] as? [Any?] {
                    var tmp : [GetDeployGraphResponseBody.Result.Graph.ZoneMetas] = []
                    for v in value {
                        if v != nil {
                            var model = GetDeployGraphResponseBody.Result.Graph.ZoneMetas()
                            if v != nil {
                                model.fromMap(v as? [String: Any?])
                            }
                            tmp.append(model)
                        }
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["graph"] as? [String: Any?] {
                var model = GetDeployGraphResponseBody.Result.Graph()
                model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
        if let value = dict["result"] as? [String: Any?] {
            var model = GetDeployGraphResponseBody.Result()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = GetDeployGraphResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["fileName"] as? String {
            self.fileName = value
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["content"] as? String {
                self.content = value
            }
            if let value = dict["dataSource"] as? String {
                self.dataSource = value
            }
            if let value = dict["extend"] as? [String: [String]] {
                self.extend = value
            }
            if let value = dict["fullPathName"] as? String {
                self.fullPathName = value
            }
            if let value = dict["isDir"] as? Bool {
                self.isDir = value
            }
            if let value = dict["name"] as? String {
                self.name = value
            }
            if let value = dict["partition"] as? Int64 {
                self.partition = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
        if let value = dict["result"] as? [String: Any?] {
            var model = GetFileResponseBody.Result()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = GetFileResponseBody()
            model.fromMap(value)
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

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["accessKey"] as? String {
                        self.accessKey = value
                    }
                    if let value = dict["accessSecret"] as? String {
                        self.accessSecret = value
                    }
                    if let value = dict["bucket"] as? String {
                        self.bucket = value
                    }
                    if let value = dict["catalog"] as? String {
                        self.catalog = value
                    }
                    if let value = dict["database"] as? String {
                        self.database = value
                    }
                    if let value = dict["endpoint"] as? String {
                        self.endpoint = value
                    }
                    if let value = dict["format"] as? String {
                        self.format = value
                    }
                    if let value = dict["namespace"] as? String {
                        self.namespace = value
                    }
                    if let value = dict["ossPath"] as? String {
                        self.ossPath = value
                    }
                    if let value = dict["partition"] as? String {
                        self.partition = value
                    }
                    if let value = dict["path"] as? String {
                        self.path = value
                    }
                    if let value = dict["project"] as? String {
                        self.project = value
                    }
                    if let value = dict["table"] as? String {
                        self.table = value
                    }
                    if let value = dict["tag"] as? String {
                        self.tag = value
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

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["namespace"] as? String {
                        self.namespace = value
                    }
                    if let value = dict["tableName"] as? String {
                        self.tableName = value
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

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["autoBuildIndex"] as? Bool {
                    self.autoBuildIndex = value
                }
                if let value = dict["config"] as? [String: Any?] {
                    var model = GetIndexResponseBody.Result.DataSourceInfo.Config()
                    model.fromMap(value)
                    self.config = model
                }
                if let value = dict["domain"] as? String {
                    self.domain = value
                }
                if let value = dict["name"] as? String {
                    self.name = value
                }
                if let value = dict["processParallelNum"] as? Int32 {
                    self.processParallelNum = value
                }
                if let value = dict["processPartitionCount"] as? Int32 {
                    self.processPartitionCount = value
                }
                if let value = dict["saroConfig"] as? [String: Any?] {
                    var model = GetIndexResponseBody.Result.DataSourceInfo.SaroConfig()
                    model.fromMap(value)
                    self.saroConfig = model
                }
                if let value = dict["type"] as? String {
                    self.type = value
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

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["fullPathName"] as? String {
                        self.fullPathName = value
                    }
                    if let value = dict["isDir"] as? Bool {
                        self.isDir = value
                    }
                    if let value = dict["isTemplate"] as? Bool {
                        self.isTemplate = value
                    }
                    if let value = dict["name"] as? String {
                        self.name = value
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

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["desc"] as? String {
                    self.desc = value
                }
                if let value = dict["files"] as? [Any?] {
                    var tmp : [GetIndexResponseBody.Result.Versions.Files] = []
                    for v in value {
                        if v != nil {
                            var model = GetIndexResponseBody.Result.Versions.Files()
                            if v != nil {
                                model.fromMap(v as? [String: Any?])
                            }
                            tmp.append(model)
                        }
                    }
                    self.files = tmp
                }
                if let value = dict["name"] as? String {
                    self.name = value
                }
                if let value = dict["status"] as? String {
                    self.status = value
                }
                if let value = dict["updateTime"] as? Int64 {
                    self.updateTime = value
                }
                if let value = dict["versionId"] as? Int32 {
                    self.versionId = value
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["cluster"] as? [String: Any?] {
                var tmp : [String: ResultClusterValue] = [:]
                for (k, v) in value {
                    if v != nil {
                        var model = ResultClusterValue()
                        model.fromMap(v as? [String: Any?])
                        tmp[k] = model
                    }
                }
                self.cluster = tmp
            }
            if let value = dict["config"] as? [String: [String: Any]] {
                self.config = value
            }
            if let value = dict["configWhenBuild"] as? [String: [String: Any]] {
                self.configWhenBuild = value
            }
            if let value = dict["content"] as? String {
                self.content = value
            }
            if let value = dict["createTime"] as? String {
                self.createTime = value
            }
            if let value = dict["dataSource"] as? String {
                self.dataSource = value
            }
            if let value = dict["dataSourceInfo"] as? [String: Any?] {
                var model = GetIndexResponseBody.Result.DataSourceInfo()
                model.fromMap(value)
                self.dataSourceInfo = model
            }
            if let value = dict["description"] as? String {
                self.description_ = value
            }
            if let value = dict["domain"] as? String {
                self.domain = value
            }
            if let value = dict["extend"] as? [String: [String]] {
                self.extend = value
            }
            if let value = dict["fullUpdateTime"] as? String {
                self.fullUpdateTime = value
            }
            if let value = dict["fullVersion"] as? Int64 {
                self.fullVersion = value
            }
            if let value = dict["incUpdateTime"] as? String {
                self.incUpdateTime = value
            }
            if let value = dict["indexSize"] as? Int64 {
                self.indexSize = value
            }
            if let value = dict["indexStatus"] as? String {
                self.indexStatus = value
            }
            if let value = dict["name"] as? String {
                self.name = value
            }
            if let value = dict["partition"] as? Int32 {
                self.partition = value
            }
            if let value = dict["updateTime"] as? String {
                self.updateTime = value
            }
            if let value = dict["versions"] as? [Any?] {
                var tmp : [GetIndexResponseBody.Result.Versions] = []
                for v in value {
                    if v != nil {
                        var model = GetIndexResponseBody.Result.Versions()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
        if let value = dict["result"] as? [String: Any?] {
            var model = GetIndexResponseBody.Result()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = GetIndexResponseBody()
            model.fromMap(value)
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["changeRate"] as? Int32 {
                self.changeRate = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
        if let value = dict["result"] as? [String: Any?] {
            var model = GetIndexOnlineStrategyResponseBody.Result()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = GetIndexOnlineStrategyResponseBody()
            model.fromMap(value)
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

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["buildDeployId"] as? String {
                    self.buildDeployId = value
                }
                if let value = dict["currentVersion"] as? Int64 {
                    self.currentVersion = value
                }
                if let value = dict["indexName"] as? String {
                    self.indexName = value
                }
                if let value = dict["versions"] as? [Int64] {
                    self.versions = value
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["cluster"] as? String {
                self.cluster = value
            }
            if let value = dict["indexVersions"] as? [Any?] {
                var tmp : [GetIndexVersionResponseBody.Result.IndexVersions] = []
                for v in value {
                    if v != nil {
                        var model = GetIndexVersionResponseBody.Result.IndexVersions()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
        if let value = dict["result"] as? [String: Any?] {
            var model = GetIndexVersionResponseBody.Result()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = GetIndexVersionResponseBody()
            model.fromMap(value)
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

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["allow"] as? String {
                    self.allow = value
                }
                if let value = dict["endpoint"] as? String {
                    self.endpoint = value
                }
                if let value = dict["publicEndpoint"] as? String {
                    self.publicEndpoint = value
                }
                if let value = dict["vSwitchId"] as? String {
                    self.vSwitchId = value
                }
                if let value = dict["vpcId"] as? String {
                    self.vpcId = value
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

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["category"] as? String {
                        self.category = value
                    }
                    if let value = dict["cpu"] as? Int32 {
                        self.cpu = value
                    }
                    if let value = dict["disk"] as? Int32 {
                        self.disk = value
                    }
                    if let value = dict["mem"] as? Int32 {
                        self.mem = value
                    }
                    if let value = dict["nodeCount"] as? Int32 {
                        self.nodeCount = value
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

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["category"] as? String {
                        self.category = value
                    }
                    if let value = dict["cpu"] as? Int32 {
                        self.cpu = value
                    }
                    if let value = dict["disk"] as? Int32 {
                        self.disk = value
                    }
                    if let value = dict["mem"] as? Int32 {
                        self.mem = value
                    }
                    if let value = dict["nodeCount"] as? Int32 {
                        self.nodeCount = value
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

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["qrsResource"] as? [String: Any?] {
                    var model = GetInstanceResponseBody.Result.Spec.QrsResource()
                    model.fromMap(value)
                    self.qrsResource = model
                }
                if let value = dict["searchResource"] as? [String: Any?] {
                    var model = GetInstanceResponseBody.Result.Spec.SearchResource()
                    model.fromMap(value)
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

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["key"] as? String {
                    self.key = value
                }
                if let value = dict["value"] as? String {
                    self.value = value
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["bsVersion"] as? String {
                self.bsVersion = value
            }
            if let value = dict["chargeType"] as? String {
                self.chargeType = value
            }
            if let value = dict["commodityCode"] as? String {
                self.commodityCode = value
            }
            if let value = dict["createTime"] as? String {
                self.createTime = value
            }
            if let value = dict["description"] as? String {
                self.description_ = value
            }
            if let value = dict["edition"] as? String {
                self.edition = value
            }
            if let value = dict["expiredTime"] as? String {
                self.expiredTime = value
            }
            if let value = dict["inDebt"] as? Bool {
                self.inDebt = value
            }
            if let value = dict["instanceId"] as? String {
                self.instanceId = value
            }
            if let value = dict["lockMode"] as? String {
                self.lockMode = value
            }
            if let value = dict["network"] as? [String: Any?] {
                var model = GetInstanceResponseBody.Result.Network()
                model.fromMap(value)
                self.network = model
            }
            if let value = dict["newMode"] as? Bool {
                self.newMode = value
            }
            if let value = dict["noQrs"] as? Bool {
                self.noQrs = value
            }
            if let value = dict["resourceGroupId"] as? String {
                self.resourceGroupId = value
            }
            if let value = dict["spec"] as? [String: Any?] {
                var model = GetInstanceResponseBody.Result.Spec()
                model.fromMap(value)
                self.spec = model
            }
            if let value = dict["status"] as? String {
                self.status = value
            }
            if let value = dict["tags"] as? [Any?] {
                var tmp : [GetInstanceResponseBody.Result.Tags] = []
                for v in value {
                    if v != nil {
                        var model = GetInstanceResponseBody.Result.Tags()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.tags = tmp
            }
            if let value = dict["updateTime"] as? String {
                self.updateTime = value
            }
            if let value = dict["userName"] as? String {
                self.userName = value
            }
            if let value = dict["version"] as? String {
                self.version = value
            }
            if let value = dict["zoneCount"] as? Int32 {
                self.zoneCount = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
        if let value = dict["result"] as? [String: Any?] {
            var model = GetInstanceResponseBody.Result()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = GetInstanceResponseBody()
            model.fromMap(value)
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

                    public override func fromMap(_ dict: [String: Any?]?) -> Void {
                        guard let dict else { return }
                        if let value = dict["Authorization"] as? String {
                            self.authorization = value
                        }
                        if let value = dict["Content-Type"] as? String {
                            self.contentType = value
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

                        public override func fromMap(_ dict: [String: Any?]?) -> Void {
                            guard let dict else { return }
                            if let value = dict["input_type"] as? String {
                                self.inputType = value
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

                        public override func fromMap(_ dict: [String: Any?]?) -> Void {
                            guard let dict else { return }
                            if let value = dict["input_type"] as? String {
                                self.inputType = value
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

                    public override func fromMap(_ dict: [String: Any?]?) -> Void {
                        guard let dict else { return }
                        if let value = dict["build"] as? [String: Any?] {
                            var model = GetModelResponseBody.Result.Content.Request.Parameters.Build()
                            model.fromMap(value)
                            self.build = model
                        }
                        if let value = dict["search"] as? [String: Any?] {
                            var model = GetModelResponseBody.Result.Content.Request.Parameters.Search()
                            model.fromMap(value)
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

                    public override func fromMap(_ dict: [String: Any?]?) -> Void {
                        guard let dict else { return }
                        if let value = dict["build"] as? [String: Any] {
                            self.build = value
                        }
                        if let value = dict["search"] as? [String: Any] {
                            self.search = value
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

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["header"] as? [String: Any?] {
                        var model = GetModelResponseBody.Result.Content.Request.Header()
                        model.fromMap(value)
                        self.header = model
                    }
                    if let value = dict["parameters"] as? [String: Any?] {
                        var model = GetModelResponseBody.Result.Content.Request.Parameters()
                        model.fromMap(value)
                        self.parameters = model
                    }
                    if let value = dict["requestBody"] as? String {
                        self.requestBody = value
                    }
                    if let value = dict["urlParams"] as? [String: Any?] {
                        var model = GetModelResponseBody.Result.Content.Request.UrlParams()
                        model.fromMap(value)
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

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["embeddings"] as? String {
                        self.embeddings = value
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

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["method"] as? String {
                    self.method = value
                }
                if let value = dict["modelName"] as? String {
                    self.modelName = value
                }
                if let value = dict["modelType"] as? String {
                    self.modelType = value
                }
                if let value = dict["request"] as? [String: Any?] {
                    var model = GetModelResponseBody.Result.Content.Request()
                    model.fromMap(value)
                    self.request = model
                }
                if let value = dict["response"] as? [String: Any?] {
                    var model = GetModelResponseBody.Result.Content.Response()
                    model.fromMap(value)
                    self.response = model
                }
                if let value = dict["url"] as? String {
                    self.url = value
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["content"] as? [String: Any?] {
                var model = GetModelResponseBody.Result.Content()
                model.fromMap(value)
                self.content = model
            }
            if let value = dict["createTime"] as? String {
                self.createTime = value
            }
            if let value = dict["dimension"] as? Int32 {
                self.dimension = value
            }
            if let value = dict["name"] as? String {
                self.name = value
            }
            if let value = dict["status"] as? String {
                self.status = value
            }
            if let value = dict["type"] as? String {
                self.type = value
            }
            if let value = dict["updateTime"] as? String {
                self.updateTime = value
            }
            if let value = dict["url"] as? String {
                self.url = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
        if let value = dict["result"] as? [String: Any?] {
            var model = GetModelResponseBody.Result()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = GetModelResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["clusterName"] as? String {
            self.clusterName = value
        }
        if let value = dict["name"] as? String {
            self.name = value
        }
        if let value = dict["type"] as? String {
            self.type = value
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["active"] as? Bool {
                self.active = value
            }
            if let value = dict["dataDuplicateNumber"] as? Int32 {
                self.dataDuplicateNumber = value
            }
            if let value = dict["dataFragmentNumber"] as? Int32 {
                self.dataFragmentNumber = value
            }
            if let value = dict["flowRatio"] as? Int32 {
                self.flowRatio = value
            }
            if let value = dict["minServicePercent"] as? Int32 {
                self.minServicePercent = value
            }
            if let value = dict["published"] as? Bool {
                self.published = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
        if let value = dict["result"] as? [String: Any?] {
            var model = GetNodeConfigResponseBody.Result()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = GetNodeConfigResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["version"] as? Int64 {
            self.version = value
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["combineParams"] as? String {
                self.combineParams = value
            }
            if let value = dict["comment"] as? String {
                self.comment = value
            }
            if let value = dict["content"] as? String {
                self.content = value
            }
            if let value = dict["dynamicParams"] as? String {
                self.dynamicParams = value
            }
            if let value = dict["gmtCreate"] as? String {
                self.gmtCreate = value
            }
            if let value = dict["gmtModified"] as? String {
                self.gmtModified = value
            }
            if let value = dict["instanceId"] as? Int64 {
                self.instanceId = value
            }
            if let value = dict["kvpairs"] as? String {
                self.kvpairs = value
            }
            if let value = dict["relatedTemplateId"] as? Int64 {
                self.relatedTemplateId = value
            }
            if let value = dict["staticParams"] as? String {
                self.staticParams = value
            }
            if let value = dict["templateParams"] as? String {
                self.templateParams = value
            }
            if let value = dict["version"] as? Int64 {
                self.version = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
        if let value = dict["result"] as? [String: Any?] {
            var model = GetSqlInstanceResponseBody.Result()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = GetSqlInstanceResponseBody()
            model.fromMap(value)
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

                    public override func fromMap(_ dict: [String: Any?]?) -> Void {
                        guard let dict else { return }
                        if let value = dict["ossBucket"] as? String {
                            self.ossBucket = value
                        }
                        if let value = dict["ossEndpoint"] as? String {
                            self.ossEndpoint = value
                        }
                        if let value = dict["uid"] as? String {
                            self.uid = value
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

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["srcFieldConfig"] as? [String: Any?] {
                        var model = GetTableResponseBody.Result.DataProcessConfig.Params.SrcFieldConfig()
                        model.fromMap(value)
                        self.srcFieldConfig = model
                    }
                    if let value = dict["vectorModal"] as? String {
                        self.vectorModal = value
                    }
                    if let value = dict["vectorModel"] as? String {
                        self.vectorModel = value
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

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["dstField"] as? String {
                    self.dstField = value
                }
                if let value = dict["operator"] as? String {
                    self.operator_ = value
                }
                if let value = dict["params"] as? [String: Any?] {
                    var model = GetTableResponseBody.Result.DataProcessConfig.Params()
                    model.fromMap(value)
                    self.params = model
                }
                if let value = dict["srcField"] as? String {
                    self.srcField = value
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

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["accessKey"] as? String {
                        self.accessKey = value
                    }
                    if let value = dict["accessSecret"] as? String {
                        self.accessSecret = value
                    }
                    if let value = dict["bucket"] as? String {
                        self.bucket = value
                    }
                    if let value = dict["endpoint"] as? String {
                        self.endpoint = value
                    }
                    if let value = dict["namespace"] as? String {
                        self.namespace = value
                    }
                    if let value = dict["ossPath"] as? String {
                        self.ossPath = value
                    }
                    if let value = dict["partition"] as? String {
                        self.partition = value
                    }
                    if let value = dict["path"] as? String {
                        self.path = value
                    }
                    if let value = dict["project"] as? String {
                        self.project = value
                    }
                    if let value = dict["table"] as? String {
                        self.table = value
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

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["autoBuildIndex"] as? Bool {
                    self.autoBuildIndex = value
                }
                if let value = dict["config"] as? [String: Any?] {
                    var model = GetTableResponseBody.Result.DataSource.Config()
                    model.fromMap(value)
                    self.config = model
                }
                if let value = dict["dataTimeSec"] as? Int32 {
                    self.dataTimeSec = value
                }
                if let value = dict["type"] as? String {
                    self.type = value
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

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["buildIndexParams"] as? String {
                        self.buildIndexParams = value
                    }
                    if let value = dict["linearBuildThreshold"] as? String {
                        self.linearBuildThreshold = value
                    }
                    if let value = dict["minScanDocCnt"] as? String {
                        self.minScanDocCnt = value
                    }
                    if let value = dict["searchIndexParams"] as? String {
                        self.searchIndexParams = value
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

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["advanceParams"] as? [String: Any?] {
                    var model = GetTableResponseBody.Result.VectorIndex.AdvanceParams()
                    model.fromMap(value)
                    self.advanceParams = model
                }
                if let value = dict["dimension"] as? String {
                    self.dimension = value
                }
                if let value = dict["distanceType"] as? String {
                    self.distanceType = value
                }
                if let value = dict["indexName"] as? String {
                    self.indexName = value
                }
                if let value = dict["namespace"] as? String {
                    self.namespace = value
                }
                if let value = dict["sparseIndexField"] as? String {
                    self.sparseIndexField = value
                }
                if let value = dict["sparseValueField"] as? String {
                    self.sparseValueField = value
                }
                if let value = dict["vectorField"] as? String {
                    self.vectorField = value
                }
                if let value = dict["vectorIndexType"] as? String {
                    self.vectorIndexType = value
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["dataProcessConfig"] as? [Any?] {
                var tmp : [GetTableResponseBody.Result.DataProcessConfig] = []
                for v in value {
                    if v != nil {
                        var model = GetTableResponseBody.Result.DataProcessConfig()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.dataProcessConfig = tmp
            }
            if let value = dict["dataProcessorCount"] as? Int32 {
                self.dataProcessorCount = value
            }
            if let value = dict["dataSource"] as? [String: Any?] {
                var model = GetTableResponseBody.Result.DataSource()
                model.fromMap(value)
                self.dataSource = model
            }
            if let value = dict["fieldSchema"] as? [String: String] {
                self.fieldSchema = value
            }
            if let value = dict["name"] as? String {
                self.name = value
            }
            if let value = dict["partitionCount"] as? Int32 {
                self.partitionCount = value
            }
            if let value = dict["primaryKey"] as? String {
                self.primaryKey = value
            }
            if let value = dict["rawSchema"] as? String {
                self.rawSchema = value
            }
            if let value = dict["status"] as? String {
                self.status = value
            }
            if let value = dict["vectorIndex"] as? [Any?] {
                var tmp : [GetTableResponseBody.Result.VectorIndex] = []
                for v in value {
                    if v != nil {
                        var model = GetTableResponseBody.Result.VectorIndex()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
        if let value = dict["result"] as? [String: Any?] {
            var model = GetTableResponseBody.Result()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = GetTableResponseBody()
            model.fromMap(value)
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["generationId"] as? Int64 {
                self.generationId = value
            }
            if let value = dict["status"] as? String {
                self.status = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
        if let value = dict["result"] as? [String: Any?] {
            var model = GetTableGenerationResponseBody.Result()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = GetTableGenerationResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["dirName"] as? String {
            self.dirName = value
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["fullPathName"] as? String {
                self.fullPathName = value
            }
            if let value = dict["isDir"] as? Bool {
                self.isDir = value
            }
            if let value = dict["isTemplate"] as? Bool {
                self.isTemplate = value
            }
            if let value = dict["name"] as? String {
                self.name = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
        if let value = dict["result"] as? [Any?] {
            var tmp : [ListAdvanceConfigDirResponseBody.Result] = []
            for v in value {
                if v != nil {
                    var model = ListAdvanceConfigDirResponseBody.Result()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = ListAdvanceConfigDirResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["dataSourceName"] as? String {
            self.dataSourceName = value
        }
        if let value = dict["indexName"] as? String {
            self.indexName = value
        }
        if let value = dict["newMode"] as? Bool {
            self.newMode = value
        }
        if let value = dict["pageNumber"] as? String {
            self.pageNumber = value
        }
        if let value = dict["pageSize"] as? String {
            self.pageSize = value
        }
        if let value = dict["type"] as? String {
            self.type = value
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

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["fullPathName"] as? String {
                    self.fullPathName = value
                }
                if let value = dict["isDir"] as? Bool {
                    self.isDir = value
                }
                if let value = dict["isTemplate"] as? Bool {
                    self.isTemplate = value
                }
                if let value = dict["name"] as? String {
                    self.name = value
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["advanceConfigType"] as? String {
                self.advanceConfigType = value
            }
            if let value = dict["content"] as? String {
                self.content = value
            }
            if let value = dict["contentType"] as? String {
                self.contentType = value
            }
            if let value = dict["creator"] as? String {
                self.creator = value
            }
            if let value = dict["desc"] as? String {
                self.desc = value
            }
            if let value = dict["files"] as? [Any?] {
                var tmp : [ListAdvanceConfigsResponseBody.Result.Files] = []
                for v in value {
                    if v != nil {
                        var model = ListAdvanceConfigsResponseBody.Result.Files()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.files = tmp
            }
            if let value = dict["name"] as? String {
                self.name = value
            }
            if let value = dict["status"] as? String {
                self.status = value
            }
            if let value = dict["updateTime"] as? Int64 {
                self.updateTime = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
        if let value = dict["result"] as? [Any?] {
            var tmp : [ListAdvanceConfigsResponseBody.Result] = []
            for v in value {
                if v != nil {
                    var model = ListAdvanceConfigsResponseBody.Result()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = ListAdvanceConfigsResponseBody()
            model.fromMap(value)
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["alias"] as? String {
                self.alias = value
            }
            if let value = dict["index"] as? String {
                self.index = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
        if let value = dict["result"] as? [Any?] {
            var tmp : [ListAliasesResponseBody.Result] = []
            for v in value {
                if v != nil {
                    var model = ListAliasesResponseBody.Result()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = ListAliasesResponseBody()
            model.fromMap(value)
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["description"] as? String {
                self.description_ = value
            }
            if let value = dict["id"] as? Int64 {
                self.id = value
            }
            if let value = dict["name"] as? String {
                self.name = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
        if let value = dict["result"] as? [String: Any?] {
            var model = ListClusterNamesResponseBody.Result()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = ListClusterNamesResponseBody()
            model.fromMap(value)
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

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["msg"] as? String {
                    self.msg = value
                }
                if let value = dict["tagLevel"] as? String {
                    self.tagLevel = value
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

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["finishDate"] as? String {
                    self.finishDate = value
                }
                if let value = dict["index"] as? Int64 {
                    self.index = value
                }
                if let value = dict["name"] as? String {
                    self.name = value
                }
                if let value = dict["status"] as? String {
                    self.status = value
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["extraAttribute"] as? String {
                self.extraAttribute = value
            }
            if let value = dict["field3"] as? String {
                self.field3 = value
            }
            if let value = dict["fsmId"] as? String {
                self.fsmId = value
            }
            if let value = dict["groupType"] as? String {
                self.groupType = value
            }
            if let value = dict["name"] as? String {
                self.name = value
            }
            if let value = dict["status"] as? String {
                self.status = value
            }
            if let value = dict["tags"] as? [Any?] {
                var tmp : [ListClusterTasksResponseBody.Result.Tags] = []
                for v in value {
                    if v != nil {
                        var model = ListClusterTasksResponseBody.Result.Tags()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.tags = tmp
            }
            if let value = dict["taskNodes"] as? [Any?] {
                var tmp : [ListClusterTasksResponseBody.Result.TaskNodes] = []
                for v in value {
                    if v != nil {
                        var model = ListClusterTasksResponseBody.Result.TaskNodes()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.taskNodes = tmp
            }
            if let value = dict["time"] as? String {
                self.time = value
            }
            if let value = dict["type"] as? String {
                self.type = value
            }
            if let value = dict["user"] as? String {
                self.user = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
        if let value = dict["result"] as? [Any?] {
            var tmp : [ListClusterTasksResponseBody.Result] = []
            for v in value {
                if v != nil {
                    var model = ListClusterTasksResponseBody.Result()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = ListClusterTasksResponseBody()
            model.fromMap(value)
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

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["name"] as? String {
                    self.name = value
                }
                if let value = dict["number"] as? Int32 {
                    self.number = value
                }
                if let value = dict["partition"] as? Int32 {
                    self.partition = value
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

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["name"] as? String {
                    self.name = value
                }
                if let value = dict["number"] as? Int32 {
                    self.number = value
                }
                if let value = dict["partition"] as? Int32 {
                    self.partition = value
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["config"] as? [String: [String: Any]] {
                self.config = value
            }
            if let value = dict["configUpdateTime"] as? String {
                self.configUpdateTime = value
            }
            if let value = dict["createTime"] as? String {
                self.createTime = value
            }
            if let value = dict["currentAdvanceConfigVersion"] as? String {
                self.currentAdvanceConfigVersion = value
            }
            if let value = dict["currentOfflineDictConfigVersion"] as? String {
                self.currentOfflineDictConfigVersion = value
            }
            if let value = dict["currentOnlineConfigVersion"] as? String {
                self.currentOnlineConfigVersion = value
            }
            if let value = dict["currentOnlineQueryConfigVersion"] as? String {
                self.currentOnlineQueryConfigVersion = value
            }
            if let value = dict["dataNode"] as? [String: Any?] {
                var model = ListClustersResponseBody.Result.DataNode()
                model.fromMap(value)
                self.dataNode = model
            }
            if let value = dict["description"] as? String {
                self.description_ = value
            }
            if let value = dict["latestAdvanceConfigVersion"] as? String {
                self.latestAdvanceConfigVersion = value
            }
            if let value = dict["latestOfflineDictConfigVersion"] as? String {
                self.latestOfflineDictConfigVersion = value
            }
            if let value = dict["latestOnlineConfigVersion"] as? String {
                self.latestOnlineConfigVersion = value
            }
            if let value = dict["latestOnlineQueryConfigVersion"] as? String {
                self.latestOnlineQueryConfigVersion = value
            }
            if let value = dict["name"] as? String {
                self.name = value
            }
            if let value = dict["queryNode"] as? [String: Any?] {
                var model = ListClustersResponseBody.Result.QueryNode()
                model.fromMap(value)
                self.queryNode = model
            }
            if let value = dict["status"] as? String {
                self.status = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
        if let value = dict["result"] as? [Any?] {
            var tmp : [ListClustersResponseBody.Result] = []
            for v in value {
                if v != nil {
                    var model = ListClustersResponseBody.Result()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = ListClustersResponseBody()
            model.fromMap(value)
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

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["hasPrimaryKeyAttribute"] as? Bool {
                    self.hasPrimaryKeyAttribute = value
                }
                if let value = dict["isPrimaryKey"] as? Bool {
                    self.isPrimaryKey = value
                }
                if let value = dict["isPrimaryKeySorted"] as? Bool {
                    self.isPrimaryKeySorted = value
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["addIndex"] as? Bool {
                self.addIndex = value
            }
            if let value = dict["attribute"] as? Bool {
                self.attribute = value
            }
            if let value = dict["custom"] as? Bool {
                self.custom = value
            }
            if let value = dict["name"] as? String {
                self.name = value
            }
            if let value = dict["primaryKey"] as? [String: Any?] {
                var model = ListDataSourceSchemasResponseBody.Result.PrimaryKey()
                model.fromMap(value)
                self.primaryKey = model
            }
            if let value = dict["summary"] as? Bool {
                self.summary = value
            }
            if let value = dict["type"] as? String {
                self.type = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
        if let value = dict["result"] as? [Any?] {
            var tmp : [ListDataSourceSchemasResponseBody.Result] = []
            for v in value {
                if v != nil {
                    var model = ListDataSourceSchemasResponseBody.Result()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = ListDataSourceSchemasResponseBody()
            model.fromMap(value)
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

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["msg"] as? String {
                    self.msg = value
                }
                if let value = dict["tagLevel"] as? String {
                    self.tagLevel = value
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

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["finishDate"] as? String {
                    self.finishDate = value
                }
                if let value = dict["index"] as? Int64 {
                    self.index = value
                }
                if let value = dict["name"] as? String {
                    self.name = value
                }
                if let value = dict["status"] as? String {
                    self.status = value
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["extraAttribute"] as? String {
                self.extraAttribute = value
            }
            if let value = dict["field3"] as? String {
                self.field3 = value
            }
            if let value = dict["fsmId"] as? String {
                self.fsmId = value
            }
            if let value = dict["groupType"] as? String {
                self.groupType = value
            }
            if let value = dict["name"] as? String {
                self.name = value
            }
            if let value = dict["status"] as? String {
                self.status = value
            }
            if let value = dict["tags"] as? [Any?] {
                var tmp : [ListDataSourceTasksResponseBody.Result.Tags] = []
                for v in value {
                    if v != nil {
                        var model = ListDataSourceTasksResponseBody.Result.Tags()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.tags = tmp
            }
            if let value = dict["taskNodes"] as? [Any?] {
                var tmp : [ListDataSourceTasksResponseBody.Result.TaskNodes] = []
                for v in value {
                    if v != nil {
                        var model = ListDataSourceTasksResponseBody.Result.TaskNodes()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.taskNodes = tmp
            }
            if let value = dict["time"] as? String {
                self.time = value
            }
            if let value = dict["type"] as? String {
                self.type = value
            }
            if let value = dict["user"] as? String {
                self.user = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
        if let value = dict["result"] as? [Any?] {
            var tmp : [ListDataSourceTasksResponseBody.Result] = []
            for v in value {
                if v != nil {
                    var model = ListDataSourceTasksResponseBody.Result()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = ListDataSourceTasksResponseBody()
            model.fromMap(value)
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["domain"] as? String {
                self.domain = value
            }
            if let value = dict["indexes"] as? [String] {
                self.indexes = value
            }
            if let value = dict["lastFulTime"] as? Int64 {
                self.lastFulTime = value
            }
            if let value = dict["name"] as? String {
                self.name = value
            }
            if let value = dict["status"] as? String {
                self.status = value
            }
            if let value = dict["type"] as? String {
                self.type = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
        if let value = dict["result"] as? [Any?] {
            var tmp : [ListDataSourcesResponseBody.Result] = []
            for v in value {
                if v != nil {
                    var model = ListDataSourcesResponseBody.Result()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = ListDataSourcesResponseBody()
            model.fromMap(value)
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

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["children"] as? [Any] {
                        self.children = value
                    }
                    if let value = dict["id"] as? Int64 {
                        self.id = value
                    }
                    if let value = dict["instanceId"] as? Int64 {
                        self.instanceId = value
                    }
                    if let value = dict["isDir"] as? Int32 {
                        self.isDir = value
                    }
                    if let value = dict["name"] as? String {
                        self.name = value
                    }
                    if let value = dict["parent"] as? Int64 {
                        self.parent = value
                    }
                    if let value = dict["templateId"] as? Int64 {
                        self.templateId = value
                    }
                    if let value = dict["type"] as? String {
                        self.type = value
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

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["children"] as? [Any] {
                        self.children = value
                    }
                    if let value = dict["id"] as? Int64 {
                        self.id = value
                    }
                    if let value = dict["instanceId"] as? Int64 {
                        self.instanceId = value
                    }
                    if let value = dict["isDir"] as? Int32 {
                        self.isDir = value
                    }
                    if let value = dict["name"] as? String {
                        self.name = value
                    }
                    if let value = dict["parent"] as? Int64 {
                        self.parent = value
                    }
                    if let value = dict["templateId"] as? Int64 {
                        self.templateId = value
                    }
                    if let value = dict["type"] as? String {
                        self.type = value
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

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["children"] as? [Any] {
                        self.children = value
                    }
                    if let value = dict["id"] as? Int64 {
                        self.id = value
                    }
                    if let value = dict["instanceId"] as? Int64 {
                        self.instanceId = value
                    }
                    if let value = dict["isDir"] as? Int32 {
                        self.isDir = value
                    }
                    if let value = dict["name"] as? String {
                        self.name = value
                    }
                    if let value = dict["parent"] as? Int64 {
                        self.parent = value
                    }
                    if let value = dict["templateId"] as? Int64 {
                        self.templateId = value
                    }
                    if let value = dict["type"] as? String {
                        self.type = value
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

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["database"] as? String {
                    self.database = value
                }
                if let value = dict["functions"] as? [String: Any?] {
                    var tmp : [String: [ResultDatabasesFunctionsValue]] = [:]
                    for (k, v) in value {
                        var l1 : [ResultDatabasesFunctionsValue] = []
                        for v1 in v as! [Any?] {
                            if v1 != nil {
                                var model = ResultDatabasesFunctionsValue()
                                if v1 != nil {
                                    model.fromMap(v1 as? [String: Any?])
                                }
                                l1.append(model)
                            }
                        }
                        tmp[k] = l1
                    }
                    self.functions = tmp
                }
                if let value = dict["sqlInstances"] as? [Any?] {
                    var tmp : [ListDatabasesResponseBody.Result.Databases.SqlInstances] = []
                    for v in value {
                        if v != nil {
                            var model = ListDatabasesResponseBody.Result.Databases.SqlInstances()
                            if v != nil {
                                model.fromMap(v as? [String: Any?])
                            }
                            tmp.append(model)
                        }
                    }
                    self.sqlInstances = tmp
                }
                if let value = dict["tables"] as? [Any?] {
                    var tmp : [ListDatabasesResponseBody.Result.Databases.Tables] = []
                    for v in value {
                        if v != nil {
                            var model = ListDatabasesResponseBody.Result.Databases.Tables()
                            if v != nil {
                                model.fromMap(v as? [String: Any?])
                            }
                            tmp.append(model)
                        }
                    }
                    self.tables = tmp
                }
                if let value = dict["templates"] as? [Any?] {
                    var tmp : [ListDatabasesResponseBody.Result.Databases.Templates] = []
                    for v in value {
                        if v != nil {
                            var model = ListDatabasesResponseBody.Result.Databases.Templates()
                            if v != nil {
                                model.fromMap(v as? [String: Any?])
                            }
                            tmp.append(model)
                        }
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["databases"] as? [Any?] {
                var tmp : [ListDatabasesResponseBody.Result.Databases] = []
                for v in value {
                    if v != nil {
                        var model = ListDatabasesResponseBody.Result.Databases()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
        if let value = dict["result"] as? [String: Any?] {
            var model = ListDatabasesResponseBody.Result()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = ListDatabasesResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["domainName"] as? String {
            self.domainName = value
        }
        if let value = dict["validStatus"] as? Bool {
            self.validStatus = value
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["buildDeployId"] as? Int32 {
                self.buildDeployId = value
            }
            if let value = dict["createTime"] as? Int64 {
                self.createTime = value
            }
            if let value = dict["dataDumpRoot"] as? String {
                self.dataDumpRoot = value
            }
            if let value = dict["generation"] as? Int64 {
                self.generation = value
            }
            if let value = dict["partition"] as? [String: Int32] {
                self.partition = value
            }
            if let value = dict["status"] as? String {
                self.status = value
            }
            if let value = dict["timestamp"] as? Int64 {
                self.timestamp = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
        if let value = dict["result"] as? [Any?] {
            var tmp : [ListDateSourceGenerationsResponseBody.Result] = []
            for v in value {
                if v != nil {
                    var model = ListDateSourceGenerationsResponseBody.Result()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = ListDateSourceGenerationsResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["desc"] as? String {
            self.desc = value
        }
        if let value = dict["finishedTime"] as? String {
            self.finishedTime = value
        }
        if let value = dict["generationId"] as? String {
            self.generationId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = ListIndexRecoverRecordsResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["catalog"] as? String {
            self.catalog = value
        }
        if let value = dict["database"] as? String {
            self.database = value
        }
        if let value = dict["newMode"] as? Bool {
            self.newMode = value
        }
        if let value = dict["table"] as? String {
            self.table = value
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

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["accessKey"] as? String {
                        self.accessKey = value
                    }
                    if let value = dict["accessSecret"] as? String {
                        self.accessSecret = value
                    }
                    if let value = dict["bucket"] as? String {
                        self.bucket = value
                    }
                    if let value = dict["catalog"] as? String {
                        self.catalog = value
                    }
                    if let value = dict["database"] as? String {
                        self.database = value
                    }
                    if let value = dict["endpoint"] as? String {
                        self.endpoint = value
                    }
                    if let value = dict["format"] as? String {
                        self.format = value
                    }
                    if let value = dict["namespace"] as? String {
                        self.namespace = value
                    }
                    if let value = dict["ossPath"] as? String {
                        self.ossPath = value
                    }
                    if let value = dict["partition"] as? String {
                        self.partition = value
                    }
                    if let value = dict["path"] as? String {
                        self.path = value
                    }
                    if let value = dict["project"] as? String {
                        self.project = value
                    }
                    if let value = dict["table"] as? String {
                        self.table = value
                    }
                    if let value = dict["tag"] as? String {
                        self.tag = value
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

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["namespace"] as? String {
                        self.namespace = value
                    }
                    if let value = dict["tableName"] as? String {
                        self.tableName = value
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

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["autoBuildIndex"] as? Bool {
                    self.autoBuildIndex = value
                }
                if let value = dict["config"] as? [String: Any?] {
                    var model = ListIndexesResponseBody.Result.DataSourceInfo.Config()
                    model.fromMap(value)
                    self.config = model
                }
                if let value = dict["domain"] as? String {
                    self.domain = value
                }
                if let value = dict["name"] as? String {
                    self.name = value
                }
                if let value = dict["processPartitionCount"] as? Int32 {
                    self.processPartitionCount = value
                }
                if let value = dict["saroConfig"] as? [String: Any?] {
                    var model = ListIndexesResponseBody.Result.DataSourceInfo.SaroConfig()
                    model.fromMap(value)
                    self.saroConfig = model
                }
                if let value = dict["type"] as? String {
                    self.type = value
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

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["fullPathName"] as? String {
                        self.fullPathName = value
                    }
                    if let value = dict["isDir"] as? Bool {
                        self.isDir = value
                    }
                    if let value = dict["isTemplate"] as? Bool {
                        self.isTemplate = value
                    }
                    if let value = dict["name"] as? String {
                        self.name = value
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

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["desc"] as? String {
                    self.desc = value
                }
                if let value = dict["files"] as? [Any?] {
                    var tmp : [ListIndexesResponseBody.Result.Versions.Files] = []
                    for v in value {
                        if v != nil {
                            var model = ListIndexesResponseBody.Result.Versions.Files()
                            if v != nil {
                                model.fromMap(v as? [String: Any?])
                            }
                            tmp.append(model)
                        }
                    }
                    self.files = tmp
                }
                if let value = dict["name"] as? String {
                    self.name = value
                }
                if let value = dict["status"] as? String {
                    self.status = value
                }
                if let value = dict["updateTime"] as? Int64 {
                    self.updateTime = value
                }
                if let value = dict["versionId"] as? Int32 {
                    self.versionId = value
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["content"] as? String {
                self.content = value
            }
            if let value = dict["createTime"] as? String {
                self.createTime = value
            }
            if let value = dict["dataSource"] as? String {
                self.dataSource = value
            }
            if let value = dict["dataSourceInfo"] as? [String: Any?] {
                var model = ListIndexesResponseBody.Result.DataSourceInfo()
                model.fromMap(value)
                self.dataSourceInfo = model
            }
            if let value = dict["description"] as? String {
                self.description_ = value
            }
            if let value = dict["domain"] as? String {
                self.domain = value
            }
            if let value = dict["fullUpdateTime"] as? String {
                self.fullUpdateTime = value
            }
            if let value = dict["fullVersion"] as? Int64 {
                self.fullVersion = value
            }
            if let value = dict["incUpdateTime"] as? String {
                self.incUpdateTime = value
            }
            if let value = dict["indexSize"] as? Int64 {
                self.indexSize = value
            }
            if let value = dict["indexStatus"] as? String {
                self.indexStatus = value
            }
            if let value = dict["name"] as? String {
                self.name = value
            }
            if let value = dict["partition"] as? Int32 {
                self.partition = value
            }
            if let value = dict["updateTime"] as? String {
                self.updateTime = value
            }
            if let value = dict["versions"] as? [Any?] {
                var tmp : [ListIndexesResponseBody.Result.Versions] = []
                for v in value {
                    if v != nil {
                        var model = ListIndexesResponseBody.Result.Versions()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
        if let value = dict["result"] as? [Any?] {
            var tmp : [ListIndexesResponseBody.Result] = []
            for v in value {
                if v != nil {
                    var model = ListIndexesResponseBody.Result()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = ListIndexesResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["type"] as? String {
            self.type = value
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["cpu"] as? Int32 {
                self.cpu = value
            }
            if let value = dict["maxDisk"] as? Int32 {
                self.maxDisk = value
            }
            if let value = dict["mem"] as? Int32 {
                self.mem = value
            }
            if let value = dict["minDisk"] as? Int32 {
                self.minDisk = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
        if let value = dict["result"] as? [Any?] {
            var tmp : [ListInstanceSpecsResponseBody.Result] = []
            for v in value {
                if v != nil {
                    var model = ListInstanceSpecsResponseBody.Result()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = ListInstanceSpecsResponseBody()
            model.fromMap(value)
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["key"] as? String {
                self.key = value
            }
            if let value = dict["value"] as? String {
                self.value = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["catalog"] as? String {
            self.catalog = value
        }
        if let value = dict["dataSourceType"] as? String {
            self.dataSourceType = value
        }
        if let value = dict["database"] as? String {
            self.database = value
        }
        if let value = dict["description"] as? String {
            self.description_ = value
        }
        if let value = dict["edition"] as? String {
            self.edition = value
        }
        if let value = dict["instanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["pageNumber"] as? Int32 {
            self.pageNumber = value
        }
        if let value = dict["pageSize"] as? Int32 {
            self.pageSize = value
        }
        if let value = dict["resourceGroupId"] as? String {
            self.resourceGroupId = value
        }
        if let value = dict["table"] as? String {
            self.table = value
        }
        if let value = dict["tags"] as? [Any?] {
            var tmp : [ListInstancesRequest.Tags] = []
            for v in value {
                if v != nil {
                    var model = ListInstancesRequest.Tags()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["catalog"] as? String {
            self.catalog = value
        }
        if let value = dict["dataSourceType"] as? String {
            self.dataSourceType = value
        }
        if let value = dict["database"] as? String {
            self.database = value
        }
        if let value = dict["description"] as? String {
            self.description_ = value
        }
        if let value = dict["edition"] as? String {
            self.edition = value
        }
        if let value = dict["instanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["pageNumber"] as? Int32 {
            self.pageNumber = value
        }
        if let value = dict["pageSize"] as? Int32 {
            self.pageSize = value
        }
        if let value = dict["resourceGroupId"] as? String {
            self.resourceGroupId = value
        }
        if let value = dict["table"] as? String {
            self.table = value
        }
        if let value = dict["tags"] as? String {
            self.tagsShrink = value
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

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["accessKey"] as? String {
                        self.accessKey = value
                    }
                    if let value = dict["bucket"] as? String {
                        self.bucket = value
                    }
                    if let value = dict["catalog"] as? String {
                        self.catalog = value
                    }
                    if let value = dict["database"] as? String {
                        self.database = value
                    }
                    if let value = dict["endpoint"] as? String {
                        self.endpoint = value
                    }
                    if let value = dict["namespace"] as? String {
                        self.namespace = value
                    }
                    if let value = dict["ossPath"] as? String {
                        self.ossPath = value
                    }
                    if let value = dict["partition"] as? String {
                        self.partition = value
                    }
                    if let value = dict["path"] as? String {
                        self.path = value
                    }
                    if let value = dict["project"] as? String {
                        self.project = value
                    }
                    if let value = dict["table"] as? String {
                        self.table = value
                    }
                    if let value = dict["tag"] as? String {
                        self.tag = value
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

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["config"] as? [String: Any?] {
                    var model = ListInstancesResponseBody.Result.DataSourceDetails.Config()
                    model.fromMap(value)
                    self.config = model
                }
                if let value = dict["indexName"] as? String {
                    self.indexName = value
                }
                if let value = dict["type"] as? String {
                    self.type = value
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

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["allow"] as? String {
                    self.allow = value
                }
                if let value = dict["endpoint"] as? String {
                    self.endpoint = value
                }
                if let value = dict["publicEndpoint"] as? String {
                    self.publicEndpoint = value
                }
                if let value = dict["vSwitchId"] as? String {
                    self.vSwitchId = value
                }
                if let value = dict["vpcId"] as? String {
                    self.vpcId = value
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

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["category"] as? String {
                        self.category = value
                    }
                    if let value = dict["cpu"] as? Int32 {
                        self.cpu = value
                    }
                    if let value = dict["disk"] as? Int32 {
                        self.disk = value
                    }
                    if let value = dict["mem"] as? Int32 {
                        self.mem = value
                    }
                    if let value = dict["nodeCount"] as? Int32 {
                        self.nodeCount = value
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

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["category"] as? String {
                        self.category = value
                    }
                    if let value = dict["cpu"] as? Int32 {
                        self.cpu = value
                    }
                    if let value = dict["disk"] as? Int32 {
                        self.disk = value
                    }
                    if let value = dict["mem"] as? Int32 {
                        self.mem = value
                    }
                    if let value = dict["nodeCount"] as? Int32 {
                        self.nodeCount = value
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

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["qrsResource"] as? [String: Any?] {
                    var model = ListInstancesResponseBody.Result.Spec.QrsResource()
                    model.fromMap(value)
                    self.qrsResource = model
                }
                if let value = dict["searchResource"] as? [String: Any?] {
                    var model = ListInstancesResponseBody.Result.Spec.SearchResource()
                    model.fromMap(value)
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

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["key"] as? String {
                    self.key = value
                }
                if let value = dict["value"] as? String {
                    self.value = value
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["chargeType"] as? String {
                self.chargeType = value
            }
            if let value = dict["commodityCode"] as? String {
                self.commodityCode = value
            }
            if let value = dict["createTime"] as? String {
                self.createTime = value
            }
            if let value = dict["dataSourceDetails"] as? [Any?] {
                var tmp : [ListInstancesResponseBody.Result.DataSourceDetails] = []
                for v in value {
                    if v != nil {
                        var model = ListInstancesResponseBody.Result.DataSourceDetails()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.dataSourceDetails = tmp
            }
            if let value = dict["description"] as? String {
                self.description_ = value
            }
            if let value = dict["edition"] as? String {
                self.edition = value
            }
            if let value = dict["expiredTime"] as? String {
                self.expiredTime = value
            }
            if let value = dict["inDebt"] as? Bool {
                self.inDebt = value
            }
            if let value = dict["instanceId"] as? String {
                self.instanceId = value
            }
            if let value = dict["lockMode"] as? String {
                self.lockMode = value
            }
            if let value = dict["network"] as? [String: Any?] {
                var model = ListInstancesResponseBody.Result.Network()
                model.fromMap(value)
                self.network = model
            }
            if let value = dict["noQrs"] as? Bool {
                self.noQrs = value
            }
            if let value = dict["resourceGroupId"] as? String {
                self.resourceGroupId = value
            }
            if let value = dict["spec"] as? [String: Any?] {
                var model = ListInstancesResponseBody.Result.Spec()
                model.fromMap(value)
                self.spec = model
            }
            if let value = dict["status"] as? String {
                self.status = value
            }
            if let value = dict["tags"] as? [Any?] {
                var tmp : [ListInstancesResponseBody.Result.Tags] = []
                for v in value {
                    if v != nil {
                        var model = ListInstancesResponseBody.Result.Tags()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.tags = tmp
            }
            if let value = dict["updateTime"] as? String {
                self.updateTime = value
            }
            if let value = dict["userName"] as? String {
                self.userName = value
            }
            if let value = dict["version"] as? String {
                self.version = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
        if let value = dict["result"] as? [Any?] {
            var tmp : [ListInstancesResponseBody.Result] = []
            for v in value {
                if v != nil {
                    var model = ListInstancesResponseBody.Result()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.result = tmp
        }
        if let value = dict["totalCount"] as? Int32 {
            self.totalCount = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = ListInstancesResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["endTime"] as? String {
            self.endTime = value
        }
        if let value = dict["pageNum"] as? String {
            self.pageNum = value
        }
        if let value = dict["pageSize"] as? String {
            self.pageSize = value
        }
        if let value = dict["query"] as? String {
            self.query = value
        }
        if let value = dict["startTime"] as? String {
            self.startTime = value
        }
        if let value = dict["type"] as? String {
            self.type = value
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["result"] as? [Any] {
                self.result = value
            }
            if let value = dict["totalCount"] as? Int32 {
                self.totalCount = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
        if let value = dict["result"] as? [String: Any?] {
            var model = ListLogsResponseBody.Result()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = ListLogsResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["name"] as? String {
            self.name = value
        }
        if let value = dict["pageNumber"] as? Int32 {
            self.pageNumber = value
        }
        if let value = dict["pageSize"] as? Int32 {
            self.pageSize = value
        }
        if let value = dict["type"] as? String {
            self.type = value
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

                    public override func fromMap(_ dict: [String: Any?]?) -> Void {
                        guard let dict else { return }
                        if let value = dict["Authorization"] as? String {
                            self.authorization = value
                        }
                        if let value = dict["Content-Type"] as? String {
                            self.contentType = value
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

                        public override func fromMap(_ dict: [String: Any?]?) -> Void {
                            guard let dict else { return }
                            if let value = dict["input_type"] as? String {
                                self.inputType = value
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

                        public override func fromMap(_ dict: [String: Any?]?) -> Void {
                            guard let dict else { return }
                            if let value = dict["input_type"] as? String {
                                self.inputType = value
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

                    public override func fromMap(_ dict: [String: Any?]?) -> Void {
                        guard let dict else { return }
                        if let value = dict["build"] as? [String: Any?] {
                            var model = ListModelsResponseBody.Result.Content.Request.Parameters.Build()
                            model.fromMap(value)
                            self.build = model
                        }
                        if let value = dict["search"] as? [String: Any?] {
                            var model = ListModelsResponseBody.Result.Content.Request.Parameters.Search()
                            model.fromMap(value)
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

                    public override func fromMap(_ dict: [String: Any?]?) -> Void {
                        guard let dict else { return }
                        if let value = dict["build"] as? [String: Any] {
                            self.build = value
                        }
                        if let value = dict["search"] as? [String: Any] {
                            self.search = value
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

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["header"] as? [String: Any?] {
                        var model = ListModelsResponseBody.Result.Content.Request.Header()
                        model.fromMap(value)
                        self.header = model
                    }
                    if let value = dict["parameters"] as? [String: Any?] {
                        var model = ListModelsResponseBody.Result.Content.Request.Parameters()
                        model.fromMap(value)
                        self.parameters = model
                    }
                    if let value = dict["requestBody"] as? String {
                        self.requestBody = value
                    }
                    if let value = dict["urlParams"] as? [String: Any?] {
                        var model = ListModelsResponseBody.Result.Content.Request.UrlParams()
                        model.fromMap(value)
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

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["embeddings"] as? String {
                        self.embeddings = value
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

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["method"] as? String {
                    self.method = value
                }
                if let value = dict["modelName"] as? String {
                    self.modelName = value
                }
                if let value = dict["modelType"] as? String {
                    self.modelType = value
                }
                if let value = dict["request"] as? [String: Any?] {
                    var model = ListModelsResponseBody.Result.Content.Request()
                    model.fromMap(value)
                    self.request = model
                }
                if let value = dict["response"] as? [String: Any?] {
                    var model = ListModelsResponseBody.Result.Content.Response()
                    model.fromMap(value)
                    self.response = model
                }
                if let value = dict["url"] as? String {
                    self.url = value
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["content"] as? [String: Any?] {
                var model = ListModelsResponseBody.Result.Content()
                model.fromMap(value)
                self.content = model
            }
            if let value = dict["createTime"] as? String {
                self.createTime = value
            }
            if let value = dict["dimension"] as? Int32 {
                self.dimension = value
            }
            if let value = dict["name"] as? String {
                self.name = value
            }
            if let value = dict["status"] as? String {
                self.status = value
            }
            if let value = dict["type"] as? String {
                self.type = value
            }
            if let value = dict["updateTime"] as? String {
                self.updateTime = value
            }
            if let value = dict["url"] as? String {
                self.url = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
        if let value = dict["result"] as? [Any?] {
            var tmp : [ListModelsResponseBody.Result] = []
            for v in value {
                if v != nil {
                    var model = ListModelsResponseBody.Result()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.result = tmp
        }
        if let value = dict["totalCount"] as? Int32 {
            self.totalCount = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = ListModelsResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["domain"] as? String {
            self.domain = value
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["config"] as? String {
                self.config = value
            }
            if let value = dict["indexName"] as? String {
                self.indexName = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
        if let value = dict["result"] as? [Any?] {
            var tmp : [ListOnlineConfigsResponseBody.Result] = []
            for v in value {
                if v != nil {
                    var model = ListOnlineConfigsResponseBody.Result()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = ListOnlineConfigsResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
        if let value = dict["result"] as? [String: Any?] {
            var tmp : [String: ResultValue] = [:]
            for (k, v) in value {
                if v != nil {
                    var model = ResultValue()
                    model.fromMap(v as? [String: Any?])
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = ListPausePolicysResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["body"] as? [String: Any] {
            self.body = value
        }
        if let value = dict["type"] as? String {
            self.type = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
        if let value = dict["result"] as? Any {
            self.result = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = ListPostQueryResultResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["query"] as? String {
            self.query = value
        }
        if let value = dict["sql"] as? String {
            self.sql = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["requestId"] as? String {
            self.requestId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = ListQueryResultResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["indexName"] as? String {
            self.indexName = value
        }
        if let value = dict["query"] as? [String: Any] {
            self.query = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
        if let value = dict["result"] as? Any {
            self.result = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = ListRestQueryResultResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["accessKey"] as? String {
            self.accessKey = value
        }
        if let value = dict["accessSecret"] as? String {
            self.accessSecret = value
        }
        if let value = dict["endpoint"] as? String {
            self.endpoint = value
        }
        if let value = dict["namespace"] as? String {
            self.namespace = value
        }
        if let value = dict["partition"] as? String {
            self.partition = value
        }
        if let value = dict["project"] as? String {
            self.project = value
        }
        if let value = dict["table"] as? String {
            self.table = value
        }
        if let value = dict["type"] as? String {
            self.type = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
        if let value = dict["result"] as? Any {
            self.result = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = ListSchemasResponseBody()
            model.fromMap(value)
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["generationId"] as? Int64 {
                self.generationId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
        if let value = dict["result"] as? [Any?] {
            var tmp : [ListTableGenerationsResponseBody.Result] = []
            for v in value {
                if v != nil {
                    var model = ListTableGenerationsResponseBody.Result()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = ListTableGenerationsResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["newMode"] as? Bool {
            self.newMode = value
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["indexStatus"] as? String {
                self.indexStatus = value
            }
            if let value = dict["name"] as? String {
                self.name = value
            }
            if let value = dict["status"] as? String {
                self.status = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
        if let value = dict["result"] as? [Any?] {
            var tmp : [ListTablesResponseBody.Result] = []
            for v in value {
                if v != nil {
                    var model = ListTablesResponseBody.Result()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = ListTablesResponseBody()
            model.fromMap(value)
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["key"] as? String {
                self.key = value
            }
            if let value = dict["value"] as? String {
                self.value = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["nextToken"] as? String {
            self.nextToken = value
        }
        if let value = dict["resourceId"] as? [String] {
            self.resourceId = value
        }
        if let value = dict["resourceType"] as? String {
            self.resourceType = value
        }
        if let value = dict["tag"] as? [Any?] {
            var tmp : [ListTagResourcesRequest.Tag] = []
            for v in value {
                if v != nil {
                    var model = ListTagResourcesRequest.Tag()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["nextToken"] as? String {
            self.nextToken = value
        }
        if let value = dict["resourceId"] as? String {
            self.resourceIdShrink = value
        }
        if let value = dict["resourceType"] as? String {
            self.resourceType = value
        }
        if let value = dict["tag"] as? String {
            self.tagShrink = value
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["resourceId"] as? String {
                self.resourceId = value
            }
            if let value = dict["resourceType"] as? String {
                self.resourceType = value
            }
            if let value = dict["tagKey"] as? String {
                self.tagKey = value
            }
            if let value = dict["tagValue"] as? String {
                self.tagValue = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["nextToken"] as? String {
            self.nextToken = value
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
        if let value = dict["tagResources"] as? [Any?] {
            var tmp : [ListTagResourcesResponseBody.TagResources] = []
            for v in value {
                if v != nil {
                    var model = ListTagResourcesResponseBody.TagResources()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = ListTagResourcesResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["end"] as? Int64 {
            self.end = value
        }
        if let value = dict["start"] as? Int64 {
            self.start = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
        if let value = dict["result"] as? Any {
            self.result = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["body"] as? [String: Any] {
            self.body = value
        }
        if let value = dict["path"] as? String {
            self.path = value
        }
        if let value = dict["queryType"] as? String {
            self.queryType = value
        }
        if let value = dict["vectorQueryType"] as? String {
            self.vectorQueryType = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
        if let value = dict["result"] as? Any {
            self.result = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = ListVectorQueryResultResponseBody()
            model.fromMap(value)
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["fullPathName"] as? String {
                self.fullPathName = value
            }
            if let value = dict["isDir"] as? Bool {
                self.isDir = value
            }
            if let value = dict["isTemplate"] as? Bool {
                self.isTemplate = value
            }
            if let value = dict["name"] as? String {
                self.name = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["content"] as? String {
            self.content = value
        }
        if let value = dict["contentType"] as? String {
            self.contentType = value
        }
        if let value = dict["desc"] as? String {
            self.desc = value
        }
        if let value = dict["files"] as? [Any?] {
            var tmp : [ModifyAdvanceConfigRequest.Files] = []
            for v in value {
                if v != nil {
                    var model = ModifyAdvanceConfigRequest.Files()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.files = tmp
        }
        if let value = dict["name"] as? String {
            self.name = value
        }
        if let value = dict["status"] as? String {
            self.status = value
        }
        if let value = dict["updateTime"] as? Int64 {
            self.updateTime = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
        if let value = dict["result"] as? [String: Any] {
            self.result = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = ModifyAdvanceConfigResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["content"] as? String {
            self.content = value
        }
        if let value = dict["variables"] as? [String: Any?] {
            var tmp : [String: VariablesValue] = [:]
            for (k, v) in value {
                if v != nil {
                    var model = VariablesValue()
                    model.fromMap(v as? [String: Any?])
                    tmp[k] = model
                }
            }
            self.variables = tmp
        }
        if let value = dict["fileName"] as? String {
            self.fileName = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
        if let value = dict["result"] as? [String: Any] {
            self.result = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = ModifyAdvanceConfigFileResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["alias"] as? String {
            self.alias = value
        }
        if let value = dict["index"] as? String {
            self.index = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
        if let value = dict["result"] as? [String: Any] {
            self.result = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = ModifyAliasResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["body"] as? [String: Any] {
            self.body = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
        if let value = dict["result"] as? [String: Any] {
            self.result = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = ModifyClusterDescResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["buildMode"] as? String {
            self.buildMode = value
        }
        if let value = dict["config"] as? [String: Int32] {
            self.config = value
        }
        if let value = dict["dataSourceName"] as? String {
            self.dataSourceName = value
        }
        if let value = dict["dataSourceType"] as? String {
            self.dataSourceType = value
        }
        if let value = dict["dataTimeSec"] as? Int32 {
            self.dataTimeSec = value
        }
        if let value = dict["domain"] as? String {
            self.domain = value
        }
        if let value = dict["generation"] as? Int64 {
            self.generation = value
        }
        if let value = dict["partition"] as? String {
            self.partition = value
        }
        if let value = dict["pushMode"] as? String {
            self.pushMode = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
        if let value = dict["result"] as? [String: Any] {
            self.result = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = ModifyClusterOfflineConfigResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["clusters"] as? [String] {
            self.clusters = value
        }
        if let value = dict["config"] as? [String: Int32] {
            self.config = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
        if let value = dict["result"] as? [String: Any] {
            self.result = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = ModifyClusterOnlineConfigResponseBody()
            model.fromMap(value)
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

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["path"] as? String {
                    self.path = value
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

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["partitions"] as? [String: String] {
                    self.partitions = value
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

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["path"] as? String {
                    self.path = value
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

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["path"] as? String {
                    self.path = value
                }
                if let value = dict["version"] as? String {
                    self.version = value
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["hdfs"] as? [String: Any?] {
                var model = ModifyDataSourceDeployRequest.Extend.Hdfs()
                model.fromMap(value)
                self.hdfs = model
            }
            if let value = dict["odps"] as? [String: Any?] {
                var model = ModifyDataSourceDeployRequest.Extend.Odps()
                model.fromMap(value)
                self.odps = model
            }
            if let value = dict["oss"] as? [String: Any?] {
                var model = ModifyDataSourceDeployRequest.Extend.Oss()
                model.fromMap(value)
                self.oss = model
            }
            if let value = dict["saro"] as? [String: Any?] {
                var model = ModifyDataSourceDeployRequest.Extend.Saro()
                model.fromMap(value)
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["args"] as? String {
                self.args = value
            }
            if let value = dict["resource"] as? String {
                self.resource = value
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

        public var tableFormat: String?

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
            if self.tableFormat != nil {
                map["tableFormat"] = self.tableFormat!
            }
            if self.tag != nil {
                map["tag"] = self.tag!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["accessKey"] as? String {
                self.accessKey = value
            }
            if let value = dict["accessSecret"] as? String {
                self.accessSecret = value
            }
            if let value = dict["bucket"] as? String {
                self.bucket = value
            }
            if let value = dict["catalog"] as? String {
                self.catalog = value
            }
            if let value = dict["database"] as? String {
                self.database = value
            }
            if let value = dict["endpoint"] as? String {
                self.endpoint = value
            }
            if let value = dict["namespace"] as? String {
                self.namespace = value
            }
            if let value = dict["ossPath"] as? String {
                self.ossPath = value
            }
            if let value = dict["partition"] as? String {
                self.partition = value
            }
            if let value = dict["path"] as? String {
                self.path = value
            }
            if let value = dict["project"] as? String {
                self.project = value
            }
            if let value = dict["table"] as? String {
                self.table = value
            }
            if let value = dict["tableFormat"] as? String {
                self.tableFormat = value
            }
            if let value = dict["tag"] as? String {
                self.tag = value
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["topic"] as? String {
                self.topic = value
            }
            if let value = dict["zk"] as? String {
                self.zk = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["autoBuildIndex"] as? Bool {
            self.autoBuildIndex = value
        }
        if let value = dict["extend"] as? [String: Any?] {
            var model = ModifyDataSourceDeployRequest.Extend()
            model.fromMap(value)
            self.extend = model
        }
        if let value = dict["processor"] as? [String: Any?] {
            var model = ModifyDataSourceDeployRequest.Processor()
            model.fromMap(value)
            self.processor = model
        }
        if let value = dict["storage"] as? [String: Any?] {
            var model = ModifyDataSourceDeployRequest.Storage()
            model.fromMap(value)
            self.storage = model
        }
        if let value = dict["swift"] as? [String: Any?] {
            var model = ModifyDataSourceDeployRequest.Swift()
            model.fromMap(value)
            self.swift = model
        }
        if let value = dict["dryRun"] as? Bool {
            self.dryRun = value
        }
        if let value = dict["generationId"] as? Int64 {
            self.generationId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
        if let value = dict["result"] as? [String: Any] {
            self.result = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = ModifyDataSourceDeployResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["content"] as? String {
            self.content = value
        }
        if let value = dict["partition"] as? Int32 {
            self.partition = value
        }
        if let value = dict["fileName"] as? String {
            self.fileName = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
        if let value = dict["result"] as? [String: Any] {
            self.result = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = ModifyFileResponseBody()
            model.fromMap(value)
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

            public var tableFormat: String?

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
                if self.tableFormat != nil {
                    map["tableFormat"] = self.tableFormat!
                }
                if self.tag != nil {
                    map["tag"] = self.tag!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["accessKey"] as? String {
                    self.accessKey = value
                }
                if let value = dict["accessSecret"] as? String {
                    self.accessSecret = value
                }
                if let value = dict["bucket"] as? String {
                    self.bucket = value
                }
                if let value = dict["catalog"] as? String {
                    self.catalog = value
                }
                if let value = dict["database"] as? String {
                    self.database = value
                }
                if let value = dict["endpoint"] as? String {
                    self.endpoint = value
                }
                if let value = dict["format"] as? String {
                    self.format = value
                }
                if let value = dict["namespace"] as? String {
                    self.namespace = value
                }
                if let value = dict["ossPath"] as? String {
                    self.ossPath = value
                }
                if let value = dict["partition"] as? String {
                    self.partition = value
                }
                if let value = dict["path"] as? String {
                    self.path = value
                }
                if let value = dict["project"] as? String {
                    self.project = value
                }
                if let value = dict["table"] as? String {
                    self.table = value
                }
                if let value = dict["tableFormat"] as? String {
                    self.tableFormat = value
                }
                if let value = dict["tag"] as? String {
                    self.tag = value
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

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["namespace"] as? String {
                    self.namespace = value
                }
                if let value = dict["tableName"] as? String {
                    self.tableName = value
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["autoBuildIndex"] as? Bool {
                self.autoBuildIndex = value
            }
            if let value = dict["buildMode"] as? String {
                self.buildMode = value
            }
            if let value = dict["config"] as? [String: Any?] {
                var model = ModifyIndexRequest.DataSourceInfo.Config()
                model.fromMap(value)
                self.config = model
            }
            if let value = dict["dataTimeSec"] as? Int32 {
                self.dataTimeSec = value
            }
            if let value = dict["domain"] as? String {
                self.domain = value
            }
            if let value = dict["generation"] as? Int64 {
                self.generation = value
            }
            if let value = dict["name"] as? String {
                self.name = value
            }
            if let value = dict["ossDataPath"] as? String {
                self.ossDataPath = value
            }
            if let value = dict["partition"] as? String {
                self.partition = value
            }
            if let value = dict["processParallelNum"] as? Int32 {
                self.processParallelNum = value
            }
            if let value = dict["processPartitionCount"] as? Int32 {
                self.processPartitionCount = value
            }
            if let value = dict["saroConfig"] as? [String: Any?] {
                var model = ModifyIndexRequest.DataSourceInfo.SaroConfig()
                model.fromMap(value)
                self.saroConfig = model
            }
            if let value = dict["type"] as? String {
                self.type = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["buildParallelNum"] as? Int32 {
            self.buildParallelNum = value
        }
        if let value = dict["cluster"] as? [String: [String: Any]] {
            self.cluster = value
        }
        if let value = dict["clusterConfigName"] as? String {
            self.clusterConfigName = value
        }
        if let value = dict["config"] as? [String: Any?] {
            var tmp : [String: ConfigValue] = [:]
            for (k, v) in value {
                if v != nil {
                    var model = ConfigValue()
                    model.fromMap(v as? [String: Any?])
                    tmp[k] = model
                }
            }
            self.config = tmp
        }
        if let value = dict["content"] as? String {
            self.content = value
        }
        if let value = dict["dataSource"] as? String {
            self.dataSource = value
        }
        if let value = dict["dataSourceInfo"] as? [String: Any?] {
            var model = ModifyIndexRequest.DataSourceInfo()
            model.fromMap(value)
            self.dataSourceInfo = model
        }
        if let value = dict["description"] as? String {
            self.description_ = value
        }
        if let value = dict["domain"] as? String {
            self.domain = value
        }
        if let value = dict["extend"] as? [String: Any] {
            self.extend = value
        }
        if let value = dict["mergeParallelNum"] as? Int32 {
            self.mergeParallelNum = value
        }
        if let value = dict["partition"] as? Int32 {
            self.partition = value
        }
        if let value = dict["pushMode"] as? String {
            self.pushMode = value
        }
        if let value = dict["dryRun"] as? Bool {
            self.dryRun = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
        if let value = dict["result"] as? Any {
            self.result = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = ModifyIndexResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["changeRate"] as? Int32 {
            self.changeRate = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
        if let value = dict["result"] as? [String: Any] {
            self.result = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = ModifyIndexOnlineStrategyResponseBody()
            model.fromMap(value)
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["indexName"] as? String {
                self.indexName = value
            }
            if let value = dict["parallelNum"] as? Int32 {
                self.parallelNum = value
            }
            if let value = dict["partitionCount"] as? Int32 {
                self.partitionCount = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["dataSourceName"] as? String {
            self.dataSourceName = value
        }
        if let value = dict["domainName"] as? String {
            self.domainName = value
        }
        if let value = dict["generation"] as? Int64 {
            self.generation = value
        }
        if let value = dict["indexInfos"] as? [Any?] {
            var tmp : [ModifyIndexPartitionRequest.IndexInfos] = []
            for v in value {
                if v != nil {
                    var model = ModifyIndexPartitionRequest.IndexInfos()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
        if let value = dict["result"] as? [String: Any] {
            self.result = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = ModifyIndexPartitionResponseBody()
            model.fromMap(value)
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["buildDeployId"] as? String {
                self.buildDeployId = value
            }
            if let value = dict["indexName"] as? String {
                self.indexName = value
            }
            if let value = dict["version"] as? String {
                self.version = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["body"] as? [Any?] {
            var tmp : [ModifyIndexVersionRequest.Body] = []
            for v in value {
                if v != nil {
                    var model = ModifyIndexVersionRequest.Body()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
        if let value = dict["result"] as? [String: Any] {
            self.result = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = ModifyIndexVersionResponseBody()
            model.fromMap(value)
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

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["Authorization"] as? String {
                        self.authorization = value
                    }
                    if let value = dict["Content-Type"] as? String {
                        self.contentType = value
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

                    public override func fromMap(_ dict: [String: Any?]?) -> Void {
                        guard let dict else { return }
                        if let value = dict["input_type"] as? String {
                            self.inputType = value
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

                    public override func fromMap(_ dict: [String: Any?]?) -> Void {
                        guard let dict else { return }
                        if let value = dict["input_type"] as? String {
                            self.inputType = value
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

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["build"] as? [String: Any?] {
                        var model = ModifyModelRequest.Content.Request.Parameters.Build()
                        model.fromMap(value)
                        self.build = model
                    }
                    if let value = dict["search"] as? [String: Any?] {
                        var model = ModifyModelRequest.Content.Request.Parameters.Search()
                        model.fromMap(value)
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

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["build"] as? [String: Any] {
                        self.build = value
                    }
                    if let value = dict["search"] as? [String: Any] {
                        self.search = value
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

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["header"] as? [String: Any?] {
                    var model = ModifyModelRequest.Content.Request.Header()
                    model.fromMap(value)
                    self.header = model
                }
                if let value = dict["parameters"] as? [String: Any?] {
                    var model = ModifyModelRequest.Content.Request.Parameters()
                    model.fromMap(value)
                    self.parameters = model
                }
                if let value = dict["requestBody"] as? String {
                    self.requestBody = value
                }
                if let value = dict["urlParams"] as? [String: Any?] {
                    var model = ModifyModelRequest.Content.Request.UrlParams()
                    model.fromMap(value)
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

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["embeddings"] as? String {
                    self.embeddings = value
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["dimension"] as? Int32 {
                self.dimension = value
            }
            if let value = dict["method"] as? String {
                self.method = value
            }
            if let value = dict["modelType"] as? String {
                self.modelType = value
            }
            if let value = dict["request"] as? [String: Any?] {
                var model = ModifyModelRequest.Content.Request()
                model.fromMap(value)
                self.request = model
            }
            if let value = dict["response"] as? [String: Any?] {
                var model = ModifyModelRequest.Content.Response()
                model.fromMap(value)
                self.response = model
            }
            if let value = dict["url"] as? String {
                self.url = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["content"] as? [String: Any?] {
            var model = ModifyModelRequest.Content()
            model.fromMap(value)
            self.content = model
        }
        if let value = dict["status"] as? String {
            self.status = value
        }
        if let value = dict["dryRun"] as? String {
            self.dryRun = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["requestId"] as? String {
            self.requestId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = ModifyModelResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["active"] as? Bool {
            self.active = value
        }
        if let value = dict["dataDuplicateNumber"] as? Int32 {
            self.dataDuplicateNumber = value
        }
        if let value = dict["dataFragmentNumber"] as? Int32 {
            self.dataFragmentNumber = value
        }
        if let value = dict["flowRatio"] as? Int32 {
            self.flowRatio = value
        }
        if let value = dict["minServicePercent"] as? Int32 {
            self.minServicePercent = value
        }
        if let value = dict["published"] as? Bool {
            self.published = value
        }
        if let value = dict["clusterName"] as? String {
            self.clusterName = value
        }
        if let value = dict["dataSourceName"] as? String {
            self.dataSourceName = value
        }
        if let value = dict["name"] as? String {
            self.name = value
        }
        if let value = dict["type"] as? String {
            self.type = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
        if let value = dict["result"] as? [String: Any] {
            self.result = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = ModifyNodeConfigResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["body"] as? [String: String] {
            self.body = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
        if let value = dict["result"] as? [String: Any] {
            self.result = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = ModifyOnlineConfigResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["password"] as? String {
            self.password = value
        }
        if let value = dict["username"] as? String {
            self.username = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
        if let value = dict["result"] as? [String: Any] {
            self.result = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = ModifyPasswordResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["body"] as? [String: Any?] {
            var tmp : [String: BodyValue] = [:]
            for (k, v) in value {
                if v != nil {
                    var model = BodyValue()
                    model.fromMap(v as? [String: Any?])
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
        if let value = dict["result"] as? [String: Any] {
            self.result = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = ModifyPausePolicyResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["body"] as? [String: String] {
            self.body = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
        if let value = dict["result"] as? [String: Any] {
            self.result = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = ModifyPublicUrlIpListResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["partition"] as? Int32 {
            self.partition = value
        }
        if let value = dict["replica"] as? Int32 {
            self.replica = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
        if let value = dict["result"] as? [String: Any] {
            self.result = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = ModifySearcherReplicaResponseBody()
            model.fromMap(value)
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

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["ossBucket"] as? String {
                        self.ossBucket = value
                    }
                    if let value = dict["ossEndpoint"] as? String {
                        self.ossEndpoint = value
                    }
                    if let value = dict["uid"] as? String {
                        self.uid = value
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

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["srcFieldConfig"] as? [String: Any?] {
                    var model = ModifyTableRequest.DataProcessConfig.Params.SrcFieldConfig()
                    model.fromMap(value)
                    self.srcFieldConfig = model
                }
                if let value = dict["vectorModal"] as? String {
                    self.vectorModal = value
                }
                if let value = dict["vectorModel"] as? String {
                    self.vectorModel = value
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["dstField"] as? String {
                self.dstField = value
            }
            if let value = dict["operator"] as? String {
                self.operator_ = value
            }
            if let value = dict["params"] as? [String: Any?] {
                var model = ModifyTableRequest.DataProcessConfig.Params()
                model.fromMap(value)
                self.params = model
            }
            if let value = dict["srcField"] as? String {
                self.srcField = value
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

            public var tableFormat: String?

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
                if self.tableFormat != nil {
                    map["tableFormat"] = self.tableFormat!
                }
                if self.tag != nil {
                    map["tag"] = self.tag!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["accessKey"] as? String {
                    self.accessKey = value
                }
                if let value = dict["accessSecret"] as? String {
                    self.accessSecret = value
                }
                if let value = dict["bucket"] as? String {
                    self.bucket = value
                }
                if let value = dict["catalog"] as? String {
                    self.catalog = value
                }
                if let value = dict["database"] as? String {
                    self.database = value
                }
                if let value = dict["endpoint"] as? String {
                    self.endpoint = value
                }
                if let value = dict["ossPath"] as? String {
                    self.ossPath = value
                }
                if let value = dict["partition"] as? String {
                    self.partition = value
                }
                if let value = dict["project"] as? String {
                    self.project = value
                }
                if let value = dict["table"] as? String {
                    self.table = value
                }
                if let value = dict["tableFormat"] as? String {
                    self.tableFormat = value
                }
                if let value = dict["tag"] as? String {
                    self.tag = value
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["autoBuildIndex"] as? Bool {
                self.autoBuildIndex = value
            }
            if let value = dict["config"] as? [String: Any?] {
                var model = ModifyTableRequest.DataSource.Config()
                model.fromMap(value)
                self.config = model
            }
            if let value = dict["dataTimeSec"] as? Int32 {
                self.dataTimeSec = value
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

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["buildIndexParams"] as? String {
                    self.buildIndexParams = value
                }
                if let value = dict["linearBuildThreshold"] as? String {
                    self.linearBuildThreshold = value
                }
                if let value = dict["minScanDocCnt"] as? String {
                    self.minScanDocCnt = value
                }
                if let value = dict["searchIndexParams"] as? String {
                    self.searchIndexParams = value
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["advanceParams"] as? [String: Any?] {
                var model = ModifyTableRequest.VectorIndex.AdvanceParams()
                model.fromMap(value)
                self.advanceParams = model
            }
            if let value = dict["dimension"] as? String {
                self.dimension = value
            }
            if let value = dict["distanceType"] as? String {
                self.distanceType = value
            }
            if let value = dict["indexName"] as? String {
                self.indexName = value
            }
            if let value = dict["namespace"] as? String {
                self.namespace = value
            }
            if let value = dict["sparseIndexField"] as? String {
                self.sparseIndexField = value
            }
            if let value = dict["sparseValueField"] as? String {
                self.sparseValueField = value
            }
            if let value = dict["vectorField"] as? String {
                self.vectorField = value
            }
            if let value = dict["vectorIndexType"] as? String {
                self.vectorIndexType = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["dataProcessConfig"] as? [Any?] {
            var tmp : [ModifyTableRequest.DataProcessConfig] = []
            for v in value {
                if v != nil {
                    var model = ModifyTableRequest.DataProcessConfig()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.dataProcessConfig = tmp
        }
        if let value = dict["dataSource"] as? [String: Any?] {
            var model = ModifyTableRequest.DataSource()
            model.fromMap(value)
            self.dataSource = model
        }
        if let value = dict["fieldSchema"] as? [String: String] {
            self.fieldSchema = value
        }
        if let value = dict["partitionCount"] as? Int32 {
            self.partitionCount = value
        }
        if let value = dict["primaryKey"] as? String {
            self.primaryKey = value
        }
        if let value = dict["rawSchema"] as? String {
            self.rawSchema = value
        }
        if let value = dict["vectorIndex"] as? [Any?] {
            var tmp : [ModifyTableRequest.VectorIndex] = []
            for v in value {
                if v != nil {
                    var model = ModifyTableRequest.VectorIndex()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.vectorIndex = tmp
        }
        if let value = dict["dryRun"] as? Bool {
            self.dryRun = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
        if let value = dict["result"] as? [String: Any] {
            self.result = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = ModifyTableResponseBody()
            model.fromMap(value)
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

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["content"] as? String {
                    self.content = value
                }
                if let value = dict["variables"] as? [String: Any?] {
                    var tmp : [String: FilesConfigVariablesValue] = [:]
                    for (k, v) in value {
                        if v != nil {
                            var model = FilesConfigVariablesValue()
                            model.fromMap(v as? [String: Any?])
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["config"] as? [String: Any?] {
                var model = PublishAdvanceConfigRequest.Files.Config()
                model.fromMap(value)
                self.config = model
            }
            if let value = dict["dirName"] as? String {
                self.dirName = value
            }
            if let value = dict["fileName"] as? String {
                self.fileName = value
            }
            if let value = dict["operateType"] as? String {
                self.operateType = value
            }
            if let value = dict["ossPath"] as? String {
                self.ossPath = value
            }
            if let value = dict["parentFullPath"] as? String {
                self.parentFullPath = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["desc"] as? String {
            self.desc = value
        }
        if let value = dict["files"] as? [Any?] {
            var tmp : [PublishAdvanceConfigRequest.Files] = []
            for v in value {
                if v != nil {
                    var model = PublishAdvanceConfigRequest.Files()
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
        if let value = dict["result"] as? [String: Any] {
            self.result = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = PublishAdvanceConfigResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["body"] as? [String: Any] {
            self.body = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
        if let value = dict["result"] as? [String: Any] {
            self.result = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = PublishIndexVersionResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["body"] as? [Any] {
            self.body = value
        }
        if let value = dict["pkField"] as? String {
            self.pkField = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
        if let value = dict["result"] as? [String: Any] {
            self.result = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = PushDocumentsResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["buildDeployId"] as? Int32 {
            self.buildDeployId = value
        }
        if let value = dict["dataSourceName"] as? String {
            self.dataSourceName = value
        }
        if let value = dict["generation"] as? String {
            self.generation = value
        }
        if let value = dict["indexName"] as? String {
            self.indexName = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
        if let value = dict["result"] as? [String: Any] {
            self.result = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = RecoverIndexResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["dataTimeSec"] as? Int32 {
            self.dataTimeSec = value
        }
        if let value = dict["ossDataPath"] as? String {
            self.ossDataPath = value
        }
        if let value = dict["partition"] as? String {
            self.partition = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
        if let value = dict["result"] as? [String: Any] {
            self.result = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = ReindexResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
        if let value = dict["result"] as? [String: Any] {
            self.result = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = RemoveClusterResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["name"] as? String {
            self.name = value
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["gmtCreate"] as? String {
                self.gmtCreate = value
            }
            if let value = dict["gmtModified"] as? String {
                self.gmtModified = value
            }
            if let value = dict["id"] as? Int64 {
                self.id = value
            }
            if let value = dict["instanceId"] as? Int64 {
                self.instanceId = value
            }
            if let value = dict["isDir"] as? Int32 {
                self.isDir = value
            }
            if let value = dict["name"] as? String {
                self.name = value
            }
            if let value = dict["parent"] as? Int64 {
                self.parent = value
            }
            if let value = dict["templateId"] as? Int64 {
                self.templateId = value
            }
            if let value = dict["type"] as? String {
                self.type = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
        if let value = dict["result"] as? [String: Any?] {
            var model = RenameFolderResponseBody.Result()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = RenameFolderResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
        if let value = dict["result"] as? [String: Any] {
            self.result = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = StartIndexResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
        if let value = dict["result"] as? [String: Any] {
            self.result = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = StopIndexResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
        if let value = dict["result"] as? [String: Any] {
            self.result = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = StopTaskResponseBody()
            model.fromMap(value)
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["key"] as? String {
                self.key = value
            }
            if let value = dict["value"] as? String {
                self.value = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["resourceId"] as? [String] {
            self.resourceId = value
        }
        if let value = dict["resourceType"] as? String {
            self.resourceType = value
        }
        if let value = dict["tag"] as? [Any?] {
            var tmp : [TagResourcesRequest.Tag] = []
            for v in value {
                if v != nil {
                    var model = TagResourcesRequest.Tag()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["requestId"] as? String {
            self.requestId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = TagResourcesResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["all"] as? Bool {
            self.all = value
        }
        if let value = dict["resourceId"] as? [String] {
            self.resourceId = value
        }
        if let value = dict["resourceType"] as? String {
            self.resourceType = value
        }
        if let value = dict["tagKey"] as? [String] {
            self.tagKey = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["all"] as? Bool {
            self.all = value
        }
        if let value = dict["resourceId"] as? String {
            self.resourceIdShrink = value
        }
        if let value = dict["resourceType"] as? String {
            self.resourceType = value
        }
        if let value = dict["tagKey"] as? String {
            self.tagKeyShrink = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["tequestId"] as? String {
            self.tequestId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = UntagResourcesResponseBody()
            model.fromMap(value)
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["code"] as? String {
                self.code = value
            }
            if let value = dict["value"] as? String {
                self.value = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["components"] as? [Any?] {
            var tmp : [UpdateInstanceRequest.Components] = []
            for v in value {
                if v != nil {
                    var model = UpdateInstanceRequest.Components()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.components = tmp
        }
        if let value = dict["description"] as? String {
            self.description_ = value
        }
        if let value = dict["orderType"] as? String {
            self.orderType = value
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["chargeType"] as? String {
                self.chargeType = value
            }
            if let value = dict["commodityCode"] as? String {
                self.commodityCode = value
            }
            if let value = dict["createTime"] as? String {
                self.createTime = value
            }
            if let value = dict["description"] as? String {
                self.description_ = value
            }
            if let value = dict["expiredTime"] as? String {
                self.expiredTime = value
            }
            if let value = dict["inDebt"] as? Bool {
                self.inDebt = value
            }
            if let value = dict["instanceId"] as? String {
                self.instanceId = value
            }
            if let value = dict["lockMode"] as? String {
                self.lockMode = value
            }
            if let value = dict["resourceGroupId"] as? String {
                self.resourceGroupId = value
            }
            if let value = dict["status"] as? String {
                self.status = value
            }
            if let value = dict["updateTime"] as? String {
                self.updateTime = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
        if let value = dict["result"] as? [String: Any?] {
            var model = UpdateInstanceResponseBody.Result()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = UpdateInstanceResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["content"] as? String {
            self.content = value
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["combineParams"] as? String {
                self.combineParams = value
            }
            if let value = dict["comment"] as? String {
                self.comment = value
            }
            if let value = dict["content"] as? String {
                self.content = value
            }
            if let value = dict["dynamicParams"] as? String {
                self.dynamicParams = value
            }
            if let value = dict["gmtCreate"] as? String {
                self.gmtCreate = value
            }
            if let value = dict["gmtModified"] as? String {
                self.gmtModified = value
            }
            if let value = dict["instanceId"] as? Int64 {
                self.instanceId = value
            }
            if let value = dict["kvpairs"] as? String {
                self.kvpairs = value
            }
            if let value = dict["relatedTemplateId"] as? Int64 {
                self.relatedTemplateId = value
            }
            if let value = dict["staticParams"] as? String {
                self.staticParams = value
            }
            if let value = dict["templateParams"] as? String {
                self.templateParams = value
            }
            if let value = dict["version"] as? Int64 {
                self.version = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
        if let value = dict["result"] as? [String: Any?] {
            var model = UpdateSqlInstanceContentResponseBody.Result()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = UpdateSqlInstanceContentResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["name"] as? String {
            self.name = value
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["gmtCreate"] as? String {
                self.gmtCreate = value
            }
            if let value = dict["gmtModified"] as? String {
                self.gmtModified = value
            }
            if let value = dict["id"] as? Int64 {
                self.id = value
            }
            if let value = dict["instanceId"] as? Int64 {
                self.instanceId = value
            }
            if let value = dict["isDir"] as? Int32 {
                self.isDir = value
            }
            if let value = dict["name"] as? String {
                self.name = value
            }
            if let value = dict["parent"] as? Int64 {
                self.parent = value
            }
            if let value = dict["templateId"] as? Int64 {
                self.templateId = value
            }
            if let value = dict["type"] as? String {
                self.type = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
        if let value = dict["result"] as? [String: Any?] {
            var model = UpdateSqlInstanceNameResponseBody.Result()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = UpdateSqlInstanceNameResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["combineParam"] as? [String: Any] {
            self.combineParam = value
        }
        if let value = dict["dynamicParam"] as? [String: Any] {
            self.dynamicParam = value
        }
        if let value = dict["kvpair"] as? [String: Any] {
            self.kvpair = value
        }
        if let value = dict["params"] as? [String: Any] {
            self.params = value
        }
        if let value = dict["staticParam"] as? [String: Any] {
            self.staticParam = value
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["combineParams"] as? String {
                self.combineParams = value
            }
            if let value = dict["comment"] as? String {
                self.comment = value
            }
            if let value = dict["content"] as? String {
                self.content = value
            }
            if let value = dict["dynamicParams"] as? String {
                self.dynamicParams = value
            }
            if let value = dict["gmtCreate"] as? String {
                self.gmtCreate = value
            }
            if let value = dict["gmtModified"] as? String {
                self.gmtModified = value
            }
            if let value = dict["instanceId"] as? Int64 {
                self.instanceId = value
            }
            if let value = dict["kvpairs"] as? String {
                self.kvpairs = value
            }
            if let value = dict["relatedTemplateId"] as? Int64 {
                self.relatedTemplateId = value
            }
            if let value = dict["staticParams"] as? String {
                self.staticParams = value
            }
            if let value = dict["templateParams"] as? String {
                self.templateParams = value
            }
            if let value = dict["version"] as? Int64 {
                self.version = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
        if let value = dict["result"] as? [String: Any?] {
            var model = UpdateSqlInstanceParamsResponseBody.Result()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = UpdateSqlInstanceParamsResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}
